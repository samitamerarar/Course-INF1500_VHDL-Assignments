library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity COMP4 is
port(
    EQ  : out std_logic;

    A   : in std_logic_vector(3 downto 0);
    B   : in std_logic_vector(3 downto 0)
  );
end COMP4;

architecture COMP4_V of COMP4 is
begin
  EQ <= '1' when (A>B) else '0';
end COMP4_V;