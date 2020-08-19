library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity COMP16 is
port(
    EQ  : out std_logic;

    A   : in std_logic_vector(15 downto 0);
    B   : in std_logic_vector(15 downto 0)
  );
end COMP16;

architecture COMP16_V of COMP16 is
begin
  EQ <= '1' when (A=B) else '0';
end COMP16_V;