-- 100 Hz to 1 Hz clock generator
-- Copyright (c) 2013  Philippe Proulx <eepp.ca>
library ieee;
use ieee.std_logic_1164.all;

entity clk1hz is
	port( 
		clk_100mhz : in std_logic;
		clk_1hz : out std_logic := '0'
	);
end entity;

architecture a of clk1hz is	
begin
	process(clk_100mhz)
		variable count : integer := 0;
	begin
		if rising_edge(clk_100mhz) then
			count := count + 1;
			if count = 99999999 then
				clk_1hz <= '1';
			elsif count = 100000000 then
				clk_1hz <= '0';
				count := 0;
			end if;
		end if;
	end process;
end architecture;
