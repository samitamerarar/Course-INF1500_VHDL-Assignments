-- VHDL module for easily driving an HD44780-compatible LCD display (8-bit mode, 2 lines).
-- Copyright (C) 2011  Philippe Proulx <philippe.proulx@polymtl.ca>
--                     École Polytechnique de Montréal, Montréal (QC)
-- 
-- This module is free software: you can redistribute it and/or modify
-- it under the terms of the GNU Lesser General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This module is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU Lesser General Public License for more details.
--
-- You should have received a copy of the GNU Lesser General Public License
-- along with this module.  If not, see <http://www.gnu.org/licenses/>.
--
-- This file is best viewed with tabs set at 8 columns.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- notes:
-- 	* map the same signals to chars_line1 and chars_line2, and set the same value
--	  to LINE1_ADDR_OFFSET and LINE2_ADDR_OFFSET for a 1-line display
--	* the first character is read from the low byte in chars_line1/chars_line2 and
--	  so on (chars_line1(7 downto 0) is the first, chars_line1(15 downto 8) is the second, ...)
entity hd44780_simple is
	generic (
		CLK_FREQ : positive := 100000000;			-- clock frequency (Hz)
		CHARS_PER_LINE : integer range 0 to 63 := 16;		-- characters/line
		LINE1_ADDR_OFFSET : integer range 0 to 127 := 0;	-- DDRAM address offset (line 1)
		LINE2_ADDR_OFFSET : integer range 0 to 127 := 40	-- DDRAM address offset (line 2)
	);
	port (
		chars_line1 : in std_logic_vector((CHARS_PER_LINE * 8) - 1 downto 0);	-- first line
		chars_line2 : in std_logic_vector((CHARS_PER_LINE * 8) - 1 downto 0);	-- second line
		clk : in std_logic;				-- clock
		reset : in std_logic;				-- asynchronous reset
		
		hd44780_db : out std_logic_vector(7 downto 0) := (others => '0'); -- HD44780 data bus
		hd44780_rw : out std_logic := '0';		-- HD44780 R/W signal
		hd44780_rs : out std_logic := '0';		-- HD44780 RS signal
		hd44780_en : out std_logic := '0'		-- HD44780 EN signal
	);
end hd44780_simple;

architecture arch of hd44780_simple is
	-- states:
	type state is (
		S_RESET,
		S_WAIT,
		S_EN_AND_WAIT,
		S_INIT_FS0,
		S_INIT_FS1,
		S_INIT_DISP,
		S_INIT_DC,
		S_INIT_EMS,
		S_SET_DDRAM_ADDR,
		S_WR
	);
	
	-- constants:
	constant CLK_US_MAX : positive := CLK_FREQ / 1000000;		-- maximum value for µs clock
	constant TIMER_US_WIDTH : integer := 16;			-- 16 will be enough here
	constant EN_CLOCKS : integer := 30;	-- at least more than 80 ns
	
	-- signals:
	signal clk_us : std_logic := '0';			-- µs clock
	signal state2timer_go : std_logic := '0';		-- timer's go signal
	signal timer2state_done : std_logic := '0';		-- timer's done signal
	signal timer_us_value : integer range 0 to ((2 ** TIMER_US_WIDTH) - 1) := 0; -- initial timer value (before starting it)
begin
	-- only write to HD44780:
	hd44780_rw <= '0';
	
	-- µs clock generator:
	clk_us_gen : process (clk, reset)
		variable count : integer range 0 to (CLK_US_MAX - 1) := 0;
	begin
		if (reset = '1') then
			count := 0;
			clk_us <= '0';
		elsif (rising_edge(clk)) then
			if (count = (CLK_US_MAX - 1)) then
				clk_us <= '1';
				count := 0;
			else
				clk_us <= '0';
				count := count + 1;
			end if;
		end if;
	end process;
	
	-- µs timer:
	timer_us : process (clk, clk_us, reset)
		variable valuez : integer range 0 to ((2 ** TIMER_US_WIDTH) - 1) := 0;
		variable running : boolean := false;
	begin
		if (reset = '1') then
			timer2state_done <= '0';
			valuez := 0;
			running := false;
		elsif (rising_edge(clk)) then
			if (state2timer_go = '1') then
				timer2state_done <= '0';
				valuez := timer_us_value;
				running := true;
			elsif (clk_us = '1' and running = true) then
				if (valuez > 0) then
					valuez := valuez - 1;
				else
					timer2state_done <= '1';
					running := false;
				end if;
			end if;
		end if;
	end process;
	
	-- state machine:
	sm : process (clk, reset)
		variable cur_state : state := S_RESET;				-- current state
		variable next_state : state;					-- next state (after waiting)
		variable timer_called_cnt : integer range 0 to 3 := 0;		-- S_WAIT internal FSM states
		variable en_started : boolean := false;				-- EN trigger
		variable en_count : integer range 0 to EN_CLOCKS := EN_CLOCKS;	-- internal counter for S_EN_AND_WAIT
		variable cur_ddram_addr : integer range 0 to CHARS_PER_LINE := 0; -- current DDRAM address (without offset)
		variable cur_line : integer range 0 to 1 := 0;			-- current line (0 or 1)
		variable addr : integer range 0 to 255;
		variable char : std_logic_vector(7 downto 0);
	begin
		if (reset = '1') then
			cur_state := S_RESET; -- asynchronous reset
		elsif (rising_edge(clk)) then
			case cur_state is
				-- EN signal for a few clocks (minimum 80 ns)
				when S_EN_AND_WAIT =>
				if (en_started = false) then
					en_count := EN_CLOCKS;
					en_started := true;
					hd44780_en <= '1';
				else
					if (en_count > 0) then
						en_count := en_count - 1;
					else
						en_started := false;
						hd44780_en <= '0';
						cur_state := S_WAIT;
					end if;
				end if;
				
				-- programmable wait time (place value in timer_us_value (µs) and
				-- next state in next_state)
				when S_WAIT =>
				case timer_called_cnt is
					when 0 =>
					timer_called_cnt := 1;
					state2timer_go <= '1';
					
					when 1 =>
					timer_called_cnt := 2;
					state2timer_go <= '0';
					
					when 2 =>
					if (timer2state_done = '1') then
						cur_state := next_state;
						timer_called_cnt := 0;
					end if;
					
					when others =>
				end case;
				
				-- reset state (reset everything and wait 40 ms until Vcc rises)
				when S_RESET =>
				hd44780_db <= (others => '0');
				hd44780_rs <= '0';
				hd44780_en <= '0';
				cur_state := S_WAIT;
				next_state := S_INIT_FS0;
				timer_us_value <= 40000;
				timer_called_cnt := 0;
				state2timer_go <= '0';
				en_started := false;
				en_count := EN_CLOCKS;
				cur_ddram_addr := 0;
				cur_line := 0;
				
				-- Function Set state
				when S_INIT_FS0 =>
				hd44780_db <= "00111000";
				hd44780_rs <= '0';
				cur_state := S_EN_AND_WAIT;
				next_state := S_INIT_FS1;
				timer_us_value <= 40;
				
				-- another Function Set (just in case)
				when S_INIT_FS1 =>
				hd44780_db <= "00111000";
				hd44780_rs <= '0';
				cur_state := S_EN_AND_WAIT;
				next_state := S_INIT_DISP;
				timer_us_value <= 40;
				
				-- Display ON/OFF Control state
				when S_INIT_DISP =>
				hd44780_db <= "00001100";
				hd44780_rs <= '0';
				cur_state := S_EN_AND_WAIT;
				next_state := S_INIT_DC;
				timer_us_value <= 40;
				
				-- Display Clear state
				when S_INIT_DC =>
				hd44780_db <= "00000001";
				hd44780_rs <= '0';
				cur_state := S_EN_AND_WAIT;
				next_state := S_INIT_EMS;
				timer_us_value <= 1520;
				
				-- Entry Mode Set state
				when S_INIT_EMS =>
				hd44780_db <= "00000110";
				hd44780_rs <= '0';
				cur_state := S_EN_AND_WAIT;
				next_state := S_SET_DDRAM_ADDR;
				timer_us_value <= 40;
				
				-- Set DDRAM address state (from 0 to 7)
				when S_SET_DDRAM_ADDR =>
				case cur_line is
					when 0 =>
					addr := cur_ddram_addr + LINE1_ADDR_OFFSET;
					
					when 1 =>
					addr := cur_ddram_addr + LINE2_ADDR_OFFSET;
					
					when others =>
				end case;
				hd44780_db <= "1" & std_logic_vector(to_unsigned(addr, 7));
				hd44780_rs <= '0';
				timer_us_value <= 40;
				cur_state := S_EN_AND_WAIT;
				next_state := S_WR;
				
				-- write state (according to DDRAM address)
				when S_WR =>
				case cur_line is
					when 0 =>
					char := chars_line1((cur_ddram_addr * 8) + 7 downto (cur_ddram_addr * 8));
					
					when 1 =>
					char := chars_line2((cur_ddram_addr * 8) + 7 downto (cur_ddram_addr * 8));
					
					when others =>
				end case;
				hd44780_db <= char;
				hd44780_rs <= '1';
				timer_us_value <= 40;
				cur_state := S_EN_AND_WAIT;
				next_state := S_SET_DDRAM_ADDR;
				if (cur_ddram_addr = (CHARS_PER_LINE - 1)) then
					cur_ddram_addr := 0;	-- reset current DDRAM address
					case cur_line is	-- current line logic
						when 0 =>
						cur_line := 1;
						
						when 1 =>
						cur_line := 0;
						
						when others =>
					end case;
				else
					cur_ddram_addr := cur_ddram_addr + 1;	-- increment address
				end if;
				
				when others =>
			end case;
		end if;
	end process;
end arch;
