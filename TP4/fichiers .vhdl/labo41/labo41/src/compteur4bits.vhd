library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity compteur4bits is
	port (
        CEO : out STD_LOGIC;
        Q   : out STD_LOGIC_VECTOR(3 downto 0);
        CLR : in STD_LOGIC;
        CE  : in STD_LOGIC;
        C   : in STD_LOGIC
	);
end compteur4bits;

architecture Behavioral of compteur4bits is

  signal COUNT : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
  constant TERMINAL_COUNT : STD_LOGIC_VECTOR(3 downto 0) := (others => '1');

begin

process(C, CLR)
begin
  if (CLR='1') then
    COUNT <= (others => '0');
  elsif (C'event and C = '1') then
    if (CE='1') then 
      COUNT <= COUNT+1;
    end if;
  end if;
end process;

CEO <= '1' when ((COUNT = TERMINAL_COUNT) and CE='1') else '0';
Q<=COUNT;

end Behavioral;