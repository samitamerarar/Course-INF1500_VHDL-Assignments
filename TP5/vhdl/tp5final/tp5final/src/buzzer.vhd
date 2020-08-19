-- LED buzzer
-- Copyright (c) 2013  Philippe Proulx <eepp.ca>
library ieee;
use ieee.std_logic_1164.all;

entity buzzer is
	port( 
		clk : in std_logic;
		buzz : in std_logic;
		leds : out std_logic_vector(3 downto 0) := (others => '0')
	);
end entity;

architecture a of buzzer is
	signal o : std_logic_vector(3 downto 0) := "0011";
begin
	process(clk)
		variable cnt : integer := 0;
	begin
		if rising_edge(clk) then
			if buzz = '1' then
				cnt := cnt + 1;
				leds <= o;
				if cnt = 10000000 then
					cnt := 0;
					o(3 downto 1) <= o(2 downto 0);
					o(0) <= o(3);
				end if;
			else
				leds <= (others => '0');
				o <= "0011";
				cnt := 0;
			end if;
		end if;
	end process;
end architecture;
