-- Binary to BCD for 2 digits (uses double dabble)
-- Copyright (c) 2013  Philippe Proulx <eepp.ca>
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bin2bcd2d is
	port(
		bin : in std_logic_vector(6 downto 0);
		bcd10 : out std_logic_vector(3 downto 0);
		bcd1 : out std_logic_vector(3 downto 0)
	);
end entity;

architecture a of bin2bcd2d is
begin
	process(bin)
		variable i : integer;
		variable scratch : unsigned(14 downto 0);
	begin
		-- reset variables
		i := 0;
		scratch(14 downto 7) := (others => '0');
		scratch(6 downto 0) := unsigned(bin);
		
		-- double dabble
		for i in 0 to 6 loop
			-- verify any BCD digit > 4
			if (scratch(14 downto 11) > x"4") then
				scratch(14 downto 11) := scratch(14 downto 11) + 3;
			end if;
			if (scratch(10 downto 7) > x"4") then
				scratch(10 downto 7) := scratch(10 downto 7) + 3;
			end if;
			
			-- left shift
			scratch(14 downto 1) := scratch(13 downto 0);
			scratch(0) := '0';
		end loop;
		
		-- assign to outputs
		bcd10 <= std_logic_vector(scratch(14 downto 11));
		bcd1 <= std_logic_vector(scratch(10 downto 7));
	end process;
end architecture;
