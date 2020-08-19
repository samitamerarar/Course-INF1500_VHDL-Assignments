library ieee;
use ieee.std_logic_1164.all;

entity oventimetimerfsm is
	port(
		rst : in std_logic;
		clk : in std_logic;
		pulse_settime : in std_logic;
		pulse_settimer : in std_logic;
		pulse_canceltimer : in std_logic;
		cur_timer_m : in std_logic_vector(6 downto 0);
		cur_timer_s : in std_logic_vector(6 downto 0);
		set_timer : out std_logic;
		set_time : out std_logic;
		reset_timer : out std_logic;
		reset_time : out std_logic;
		buzz : out std_logic;
		oven : out std_logic
	);
end entity;

architecture a of oventimetimerfsm is	
	type state_t is (
		-- liste des noms d'etats ici
		S_INIT,
		S_SETTIME,
		S_SETTIMER,
		S_OVEN,
		S_BUZZ
	);
begin
	process(clk)
		-- variable contenant l'etat en cours et l'etat initial
		variable cur_state : state_t := S_INIT;
	begin
		if rst = '1' then
			-- reinitialisation : retour a l'etat initial
			cur_state := S_INIT;

			-- sorties initiales
			--set_timer <= '0';
			--set_time <= '0';
			reset_timer <= '1';
			reset_time <= '1';
			--buzz <= '0';
			--oven <= '0';
			
		elsif rising_edge(clk) then
			case cur_state is
				when S_INIT =>
					set_timer <= '0';
					set_time <= '0';
					reset_timer <= '1';
					reset_time <= '0';
					buzz <= '0';
					oven <= '1';
					if pulse_settime = '1' then
						cur_state := S_SETTIME;
					elsif pulse_settimer = '1' then
						cur_state := S_SETTIMER;
					end if; 
					
				when S_SETTIME => 
					set_timer <= '0';
					set_time <= '1';
					reset_timer <= '0';
					reset_time <= '0';
					buzz <= '0';
					oven <= '1';
					if pulse_settime = '1' then
						cur_state := S_INIT;
					elsif pulse_settime = '0' then
						cur_state := S_SETTIME;
					end if;    
				
				when S_SETTIMER =>
					set_timer <= '1';
					set_time <= '0';
					reset_timer <= '0';
					reset_time <= '0';
					buzz <= '0';
					oven <= '1';
					if pulse_settimer = '1' then
						cur_state := S_OVEN;
					elsif pulse_canceltimer = '1' then
						cur_state := S_INIT;  
					end if; 
					
				when S_OVEN =>
					set_timer <= '0';
					set_time <= '0';
					reset_timer <= '0';
					reset_time <= '0';
					buzz <= '0';
					oven <= '1';
					if cur_timer_m = "0000000" and cur_timer_s = "0000000" then
						cur_state := S_BUZZ;
					elsif pulse_canceltimer = '1' then
						cur_state := S_INIT;
					end if; 
					
				when S_BUZZ =>
					set_timer <= '0';
					set_time <= '0';
					reset_timer <= '0';
					reset_time <= '0';
					buzz <= '1';
					oven <= '0';
					if pulse_canceltimer = '1' then
						cur_state := S_INIT;
					end if;
			end case;
		end if;
	end process;
end architecture;
