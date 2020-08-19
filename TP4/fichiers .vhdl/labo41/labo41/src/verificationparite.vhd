library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity verificationparite is
	port(
	a: in std_logic_vector(3 downto 0);
	sel: in std_logic;
	cout: out std_logic_vector(3 downto 0)
	);
end verificationparite;
architecture parite_arch of verificationparite is
begin
	process(a, sel)
begin	
	if (sel ='0') then
		if (a(0)='0') then
		cout <= a; 
		end if;	
	end if;
	if (sel = '1') then
		if (a(0)='1') then
		cout <= a;
		end if;
	end if;
end process;
end parite_arch;	