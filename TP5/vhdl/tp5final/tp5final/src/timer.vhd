library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity timer is
	port(
		clk_100mhz : in std_logic;
		clk_1hz : in std_logic;
		rst : in std_logic;
		pulse_m : in std_logic;
		set : in std_logic;
		tm : out std_logic_vector(6 downto 0);
		ts : out std_logic_vector(6 downto 0)
	);
end entity;

architecture a of timer is
	signal cm : unsigned(6 downto 0) := (others => '0');
	signal cs : unsigned(6 downto 0) := (others => '0');
begin
	tm <= std_logic_vector(cm);
	ts <= std_logic_vector(cs);
	
	process(clk_100mhz)
	begin
		if rst = '1' then					  -- réinitialisation asynchrone
			cm <= (others => '0');			  
			cs <= (others => '0');
		
		elsif rising_edge(clk_100mhz) then
			if set = '1' then				  -- ajustement de la minuterie
				if pulse_m = '1' then		  
					cm <= cm + 1;
					if cm = "1011010" then 
						cm <= "0000000";
						end if;
				end if;
								
			elsif clk_1hz = '1' and set = '0' then
				cs <= cs - 1;				  -- décrémenter les secondes à chaque seconde
				if cs = "0000000" then
					cs <= "0111011";
					cm <= cm-1;
					if cm = "0000000" then
						cs <= "0000000";
						cm <= "0000000";
					
					end if;	
						
				end if;
			end if;
		end if;
	end process;
end architecture;
