-- ASCII space (' ') generator
-- Copyright (c) 2013  Philippe Proulx <eepp.ca>
library ieee;
use ieee.std_logic_1164.all;

entity spacegen is
	port( 
		space : out std_logic_vector(7 downto 0)
	);
end entity;

architecture a of spacegen is
begin
	space <= x"20";
end architecture;
