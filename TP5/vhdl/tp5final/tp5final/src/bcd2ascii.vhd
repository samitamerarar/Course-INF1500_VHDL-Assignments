-- BCD value to ASCII character code
-- Copyright (c) 2013  Philippe Proulx <eepp.ca>
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bcd2ascii is
	port( 
		bcd : in std_logic_vector(3 downto 0);
		ascii : out std_logic_vector(7 downto 0)
	);
end entity;

architecture a of bcd2ascii is
begin
	ascii <= std_logic_vector(x"30" + unsigned(bcd));
end architecture;
