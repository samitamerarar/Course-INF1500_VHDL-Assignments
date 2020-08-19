-- ASCII colon (':') generator
-- Copyright (c) 2013  Philippe Proulx <eepp.ca>
library ieee;
use ieee.std_logic_1164.all;

entity colongen is
	port( 
		colon : out std_logic_vector(7 downto 0)
	);
end entity;

architecture a of colongen is
begin
	colon <= x"3a";
end architecture;
