library ieee;
use ieee.std_logic_1164.all;

entity pulsegen is
	port(
		clk : in std_logic;
		btn : in std_logic;
		pulse : out std_logic := '0'
	);
end entity;

architecture a of pulsegen is	 
	type state_t is (			 -- liste des noms d'états ici							  
		s0,
		s1
	);
	
begin
	process(clk)
		variable state : state_t := s0;		-- variable contenant l'état en cours et l'état initial
	
	begin		 
		if rising_edge(clk) then
			
			case state is					-- vérification de l'état à chaque cycle
				
				when s0=>					-- état spécifique
					if btn = '1' then
						pulse <= '1';
						state := s1;		-- change d'état au prochain cycle
					else
						state := s0;
					end if;
				
				when s1=>
					if btn = '1' then
						pulse <= '0';
						state := s1;
					else
						state := s0;
					end if;
			end case;
		end if;
	end process;
		
end architecture;
