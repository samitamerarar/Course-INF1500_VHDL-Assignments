-- Push button debouncer
-- Copyright (c) 2013  Philippe Proulx <eepp.ca>
library ieee;
use ieee.std_logic_1164.all;

entity deb is
	port (
		clk, rst : in std_logic;
		pb : in std_logic;
		pb_deb : out std_logic
	);
end entity;

architecture a of deb is
	signal clk_deb : std_logic := '0';
	signal pb_sampled : std_logic := '0';
begin
	div_deb : process(clk, rst) is
		variable count_per : integer range 0 to 999999 := 0;
	begin
		if rst = '1' then
			clk_deb <= '0';
			count_per := 0;
		elsif rising_edge(clk) then
			if count_per = 999999 then
				count_per := 0;
				clk_deb <= '1';
			else
				count_per := count_per + 1;
				clk_deb <='0';
			end if;
		end if;
	end process div_deb;

	debounce_pb : process(clk, clk_deb) is
	begin
		if rising_edge(clk) then
			if clk_deb = '1' then
				if pb = pb_sampled then
					pb_deb <= pb;
				end if;
				pb_sampled <= pb;
			end if;
		end if;
	end process debounce_pb;
end architecture;