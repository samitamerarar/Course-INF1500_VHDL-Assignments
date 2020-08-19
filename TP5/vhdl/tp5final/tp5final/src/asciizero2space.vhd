-- Replaces ASCII '0' by space (0x20).
-- Copyright (c) 2013  Philippe Proulx <eepp.ca>
library ieee;
use ieee.std_logic_1164.all;

entity asciizero2space is
	port( 
		ai : in std_logic_vector(7 downto 0);
		ao : out std_logic_vector(7 downto 0)
	);
end entity;

architecture a of asciizero2space is
begin
	ao <= x"20" when ai = x"30" else ai;
end architecture;
