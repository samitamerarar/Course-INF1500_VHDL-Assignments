-- HD44780-compatible LCD driver with 2 lines of 8 characters (hd44780_simple wrapper)
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

entity hd44780_8chars_2lines is
	port (
		ch_line1_0 : in std_logic_vector(7 downto 0);	-- character 0, line 1
		ch_line1_1 : in std_logic_vector(7 downto 0);	-- character 1, line 1
		ch_line1_2 : in std_logic_vector(7 downto 0);	-- character 2, line 1
		ch_line1_3 : in std_logic_vector(7 downto 0);	-- character 3, line 1
		ch_line1_4 : in std_logic_vector(7 downto 0);	-- character 4, line 1
		ch_line1_5 : in std_logic_vector(7 downto 0);	-- character 5, line 1
		ch_line1_6 : in std_logic_vector(7 downto 0);	-- character 6, line 1
		ch_line1_7 : in std_logic_vector(7 downto 0);	-- character 7, line 1
		ch_line2_0 : in std_logic_vector(7 downto 0);	-- character 0, line 2
		ch_line2_1 : in std_logic_vector(7 downto 0);	-- character 1, line 2
		ch_line2_2 : in std_logic_vector(7 downto 0);	-- character 2, line 2
		ch_line2_3 : in std_logic_vector(7 downto 0);	-- character 3, line 2
		ch_line2_4 : in std_logic_vector(7 downto 0);	-- character 4, line 2
		ch_line2_5 : in std_logic_vector(7 downto 0);	-- character 5, line 2
		ch_line2_6 : in std_logic_vector(7 downto 0);	-- character 6, line 2
		ch_line2_7 : in std_logic_vector(7 downto 0);	-- character 7, line 2
		
		clk : in std_logic;				-- clock
		reset : in std_logic;				-- asynchronous reset
		
		hd44780_db : out std_logic_vector(7 downto 0) := (others => '0'); -- HD44780 data bus
		hd44780_rw : out std_logic := '0';		-- HD44780 R/W signal
		hd44780_rs : out std_logic := '0';		-- HD44780 RS signal
		hd44780_en : out std_logic := '0'		-- HD44780 EN signal
	);
end hd44780_8chars_2lines;

architecture arch of hd44780_8chars_2lines is
	-- components:
	component hd44780_simple is
		generic (
			CLK_FREQ : positive;
			CHARS_PER_LINE : integer range 0 to 63;
			LINE1_ADDR_OFFSET : integer range 0 to 127;
			LINE2_ADDR_OFFSET : integer range 0 to 127
		);
		port (
			chars_line1 : in std_logic_vector((CHARS_PER_LINE * 8) - 1 downto 0);
			chars_line2 : in std_logic_vector((CHARS_PER_LINE * 8) - 1 downto 0);
			
			clk : in std_logic;
			reset : in std_logic;
			hd44780_db : out std_logic_vector(7 downto 0);
			hd44780_rw : out std_logic;
			hd44780_rs : out std_logic;
			hd44780_en : out std_logic
		);
	end component hd44780_simple;
	
	-- signals:
	signal ch_line1 : std_logic_vector((8 * 8) - 1 downto 0);
	signal ch_line2 : std_logic_vector((8 * 8) - 1 downto 0);
begin
	-- lines:
	ch_line1 <= ch_line1_7 & ch_line1_6 & ch_line1_5 & ch_line1_4 & ch_line1_3 & ch_line1_2 & ch_line1_1 & ch_line1_0;
	ch_line2 <= ch_line2_7 & ch_line2_6 & ch_line2_5 & ch_line2_4 & ch_line2_3 & ch_line2_2 & ch_line2_1 & ch_line2_0;
	
	my_hd44780_simple : hd44780_simple
		generic map(
			CLK_FREQ => 100000000,
			CHARS_PER_LINE => 8,
			LINE1_ADDR_OFFSET => 0 + 4,
			LINE2_ADDR_OFFSET => 40 + 4
		)
		port map(
			chars_line1 => ch_line1,
			chars_line2 => ch_line2,
			clk => clk,
			reset => reset,
			hd44780_db => hd44780_db,
			hd44780_rw => hd44780_rw,
			hd44780_rs => hd44780_rs,
			hd44780_en => hd44780_en
		);
end arch;
