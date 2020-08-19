library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity timekeeper is
	port(
		clk_100mhz : in std_logic;
		clk_1hz : in std_logic;
		rst : in std_logic;
		pulse_h : in std_logic;
		pulse_m : in std_logic;
		set : in std_logic;
		th : out std_logic_vector(6 downto 0);
		tm : out std_logic_vector(6 downto 0);
		ts : out std_logic_vector(6 downto 0)
	);
end entity;

architecture a of timekeeper is
	signal ch : unsigned(6 downto 0) := (others => '0');
	signal cm : unsigned(6 downto 0) := (others => '0');
	signal cs : unsigned(6 downto 0) := (others => '0');
begin
	th <= std_logic_vector(ch);
	tm <= std_logic_vector(cm);
	ts <= std_logic_vector(cs);
	
	process(clk_100mhz)
	begin
		if rst = '1' then
			-- reinitialisation asynchrone
			ch <= (others => '0');
			cm <= (others => '0');
			cs <= (others => '0');
		elsif rising_edge(clk_100mhz) then
			-- voir "timer.vhd" pour avoir une idee de la structure ici
			if set = '1' then
				if pulse_h = '1' then
					ch <= ch + 1 ;
					if ch = "0010111" then
						ch <= "0000000";
						end if;
				end if;
				if pulse_m = '1' then
					cm <= cm + 1;
					if cm = "0111011" then
						cm <= "0000000";
						ch <= ch + 1;
						end if;
				end if;
			elsif clk_1hz = '1' and set = '0' then
				cs <= cs + 1;
				if cs = "0111011" then
					cs <= "0000000";
					cm <= cm + 1;
					if cm = "0111011" then
						cm <= "0000000";
						ch <= ch + 1;
						if ch = "0010111" then
							ch <= "0000000";
						end if;
					end if;
				end if;
				end if;
		end if;
	end process;
end architecture;
