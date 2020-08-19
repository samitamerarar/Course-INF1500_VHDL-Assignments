-------------------------------------------------------------------------------
--
-- Title       : No Title
-- Design      : tp5final
-- Author      : Microsoft
-- Company     : Microsoft
--
-------------------------------------------------------------------------------
--
-- File        : C:\Users\taara\tp5final\tp5final\compile\top.vhd
-- Generated   : Fri Apr  8 18:59:47 2016
-- From        : C:\Users\taara\tp5final\tp5final\src\top.bde
-- By          : Bde2Vhdl ver. 2.6
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------
-- Design unit header --
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_signed.all;
use IEEE.std_logic_unsigned.all;


entity top is
  port(
       clk : in STD_LOGIC;
       pb_canceltimer : in STD_LOGIC;
       pb_hour : in STD_LOGIC;
       pb_min : in STD_LOGIC;
       pb_settime : in STD_LOGIC;
       pb_settimer : in STD_LOGIC;
       rst : in STD_LOGIC;
       hd44780_en : out STD_LOGIC;
       hd44780_rs : out STD_LOGIC;
       hd44780_rw : out STD_LOGIC;
       ovenout : out STD_LOGIC;
       settingtimeout : out STD_LOGIC;
       settingtimerout : out STD_LOGIC;
       buzzerleds : out STD_LOGIC_VECTOR(3 downto 0);
       hd44780_db : out STD_LOGIC_VECTOR(7 downto 0)
  );
end top;

architecture top of top is

---- Component declarations -----

component asciizero2space
  port (
       ai : in STD_LOGIC_VECTOR(7 downto 0);
       ao : out STD_LOGIC_VECTOR(7 downto 0)
  );
end component;
component bcd2ascii
  port (
       bcd : in STD_LOGIC_VECTOR(3 downto 0);
       ascii : out STD_LOGIC_VECTOR(7 downto 0)
  );
end component;
component bin2bcd2d
  port (
       bin : in STD_LOGIC_VECTOR(6 downto 0);
       bcd1 : out STD_LOGIC_VECTOR(3 downto 0);
       bcd10 : out STD_LOGIC_VECTOR(3 downto 0)
  );
end component;
component buzzer
  port (
       buzz : in STD_LOGIC;
       clk : in STD_LOGIC;
       leds : out STD_LOGIC_VECTOR(3 downto 0) := (others => '0')
  );
end component;
component clk1hz
  port (
       clk_100mhz : in STD_LOGIC;
       clk_1hz : out STD_LOGIC := '0'
  );
end component;
component colongen
  port (
       colon : out STD_LOGIC_VECTOR(7 downto 0)
  );
end component;
component deb
  port (
       clk : in STD_LOGIC;
       pb : in STD_LOGIC;
       rst : in STD_LOGIC;
       pb_deb : out STD_LOGIC
  );
end component;
component hd44780_8chars_2lines
  port (
       ch_line1_0 : in STD_LOGIC_VECTOR(7 downto 0);
       ch_line1_1 : in STD_LOGIC_VECTOR(7 downto 0);
       ch_line1_2 : in STD_LOGIC_VECTOR(7 downto 0);
       ch_line1_3 : in STD_LOGIC_VECTOR(7 downto 0);
       ch_line1_4 : in STD_LOGIC_VECTOR(7 downto 0);
       ch_line1_5 : in STD_LOGIC_VECTOR(7 downto 0);
       ch_line1_6 : in STD_LOGIC_VECTOR(7 downto 0);
       ch_line1_7 : in STD_LOGIC_VECTOR(7 downto 0);
       ch_line2_0 : in STD_LOGIC_VECTOR(7 downto 0);
       ch_line2_1 : in STD_LOGIC_VECTOR(7 downto 0);
       ch_line2_2 : in STD_LOGIC_VECTOR(7 downto 0);
       ch_line2_3 : in STD_LOGIC_VECTOR(7 downto 0);
       ch_line2_4 : in STD_LOGIC_VECTOR(7 downto 0);
       ch_line2_5 : in STD_LOGIC_VECTOR(7 downto 0);
       ch_line2_6 : in STD_LOGIC_VECTOR(7 downto 0);
       ch_line2_7 : in STD_LOGIC_VECTOR(7 downto 0);
       clk : in STD_LOGIC;
       reset : in STD_LOGIC;
       hd44780_db : out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
       hd44780_en : out STD_LOGIC := '0';
       hd44780_rs : out STD_LOGIC := '0';
       hd44780_rw : out STD_LOGIC := '0'
  );
end component;
component oventimetimerfsm
  port (
       clk : in STD_LOGIC;
       cur_timer_m : in STD_LOGIC_VECTOR(6 downto 0);
       cur_timer_s : in STD_LOGIC_VECTOR(6 downto 0);
       pulse_canceltimer : in STD_LOGIC;
       pulse_settime : in STD_LOGIC;
       pulse_settimer : in STD_LOGIC;
       rst : in STD_LOGIC;
       buzz : out STD_LOGIC;
       oven : out STD_LOGIC;
       reset_time : out STD_LOGIC;
       reset_timer : out STD_LOGIC;
       set_time : out STD_LOGIC;
       set_timer : out STD_LOGIC
  );
end component;
component pulsegen
  port (
       btn : in STD_LOGIC;
       clk : in STD_LOGIC;
       pulse : out STD_LOGIC := '0'
  );
end component;
component spacegen
  port (
       space : out STD_LOGIC_VECTOR(7 downto 0)
  );
end component;
component timekeeper
  port (
       clk_100mhz : in STD_LOGIC;
       clk_1hz : in STD_LOGIC;
       pulse_h : in STD_LOGIC;
       pulse_m : in STD_LOGIC;
       rst : in STD_LOGIC;
       set : in STD_LOGIC;
       th : out STD_LOGIC_VECTOR(6 downto 0);
       tm : out STD_LOGIC_VECTOR(6 downto 0);
       ts : out STD_LOGIC_VECTOR(6 downto 0)
  );
end component;
component timer
  port (
       clk_100mhz : in STD_LOGIC;
       clk_1hz : in STD_LOGIC;
       pulse_m : in STD_LOGIC;
       rst : in STD_LOGIC;
       set : in STD_LOGIC;
       tm : out STD_LOGIC_VECTOR(6 downto 0);
       ts : out STD_LOGIC_VECTOR(6 downto 0)
  );
end component;

---- Signal declarations used on the diagram ----

signal clk_1hz : STD_LOGIC;
signal fsm_buzz : STD_LOGIC;
signal fsm_oven : STD_LOGIC;
signal fsm_resettime : STD_LOGIC;
signal fsm_resettimer : STD_LOGIC;
signal fsm_settime : STD_LOGIC;
signal fsm_settimer : STD_LOGIC;
signal NET1397 : STD_LOGIC;
signal NET1460 : STD_LOGIC;
signal NET1565 : STD_LOGIC;
signal NET898 : STD_LOGIC;
signal NET972 : STD_LOGIC;
signal pulse_canceltimer : STD_LOGIC;
signal pulse_hour : STD_LOGIC;
signal pulse_min : STD_LOGIC;
signal pulse_settime : STD_LOGIC;
signal pulse_settimer : STD_LOGIC;
signal ascii_colon : STD_LOGIC_VECTOR (7 downto 0);
signal ascii_space : STD_LOGIC_VECTOR (7 downto 0);
signal BUS1985 : STD_LOGIC_VECTOR (3 downto 0);
signal BUS1989 : STD_LOGIC_VECTOR (3 downto 0);
signal BUS2042 : STD_LOGIC_VECTOR (3 downto 0);
signal BUS2046 : STD_LOGIC_VECTOR (3 downto 0);
signal BUS2432 : STD_LOGIC_VECTOR (7 downto 0);
signal BUS2440 : STD_LOGIC_VECTOR (7 downto 0);
signal BUS2448 : STD_LOGIC_VECTOR (7 downto 0);
signal BUS2456 : STD_LOGIC_VECTOR (7 downto 0);
signal BUS2460 : STD_LOGIC_VECTOR (7 downto 0);
signal BUS2468 : STD_LOGIC_VECTOR (7 downto 0);
signal BUS2543 : STD_LOGIC_VECTOR (7 downto 0);
signal BUS2551 : STD_LOGIC_VECTOR (7 downto 0);
signal BUS2559 : STD_LOGIC_VECTOR (7 downto 0);
signal BUS260 : STD_LOGIC_VECTOR (3 downto 0);
signal BUS269 : STD_LOGIC_VECTOR (3 downto 0);
signal BUS279 : STD_LOGIC_VECTOR (3 downto 0);
signal BUS288 : STD_LOGIC_VECTOR (3 downto 0);
signal BUS297 : STD_LOGIC_VECTOR (3 downto 0);
signal BUS306 : STD_LOGIC_VECTOR (3 downto 0);
signal BUS320 : STD_LOGIC_VECTOR (7 downto 0);
signal BUS5450 : STD_LOGIC_VECTOR (7 downto 0);
signal BUS5453 : STD_LOGIC_VECTOR (7 downto 0);
signal timer_m : STD_LOGIC_VECTOR (6 downto 0);
signal timer_s : STD_LOGIC_VECTOR (6 downto 0);
signal time_h : STD_LOGIC_VECTOR (6 downto 0);
signal time_m : STD_LOGIC_VECTOR (6 downto 0);
signal time_s : STD_LOGIC_VECTOR (6 downto 0);

begin

----  Component instantiations  ----

U1 : clk1hz
  port map(
       clk_100mhz => clk,
       clk_1hz => clk_1hz
  );

U10 : bcd2ascii
  port map(
       ascii => BUS2456,
       bcd => BUS279
  );

U11 : bcd2ascii
  port map(
       ascii => BUS2460,
       bcd => BUS269
  );

U12 : bcd2ascii
  port map(
       ascii => BUS2468,
       bcd => BUS260
  );

U13 : asciizero2space
  port map(
       ai => BUS320,
       ao => BUS2432
  );

U14 : bin2bcd2d
  port map(
       bcd1 => BUS1985,
       bcd10 => BUS1989,
       bin => timer_m
  );

U15 : pulsegen
  port map(
       btn => NET898,
       clk => clk,
       pulse => pulse_hour
  );

U16 : deb
  port map(
       clk => clk,
       pb => pb_hour,
       pb_deb => NET898,
       rst => rst
  );

U17 : pulsegen
  port map(
       btn => NET972,
       clk => clk,
       pulse => pulse_min
  );

U18 : deb
  port map(
       clk => clk,
       pb => pb_min,
       pb_deb => NET972,
       rst => rst
  );

U19 : pulsegen
  port map(
       btn => NET1397,
       clk => clk,
       pulse => pulse_settime
  );

U2 : timekeeper
  port map(
       clk_100mhz => clk,
       clk_1hz => clk_1hz,
       pulse_h => pulse_hour,
       pulse_m => pulse_min,
       rst => fsm_resettime,
       set => fsm_settime,
       th => time_h,
       tm => time_m,
       ts => time_s
  );

U20 : deb
  port map(
       clk => clk,
       pb => pb_settime,
       pb_deb => NET1397,
       rst => rst
  );

U21 : pulsegen
  port map(
       btn => NET1460,
       clk => clk,
       pulse => pulse_settimer
  );

U22 : deb
  port map(
       clk => clk,
       pb => pb_settimer,
       pb_deb => NET1460,
       rst => rst
  );

U23 : pulsegen
  port map(
       btn => NET1565,
       clk => clk,
       pulse => pulse_canceltimer
  );

U24 : deb
  port map(
       clk => clk,
       pb => pb_canceltimer,
       pb_deb => NET1565,
       rst => rst
  );

U25 : bcd2ascii
  port map(
       ascii => BUS5450,
       bcd => BUS1989
  );

U26 : bcd2ascii
  port map(
       ascii => BUS2559,
       bcd => BUS1985
  );

U27 : bin2bcd2d
  port map(
       bcd1 => BUS2042,
       bcd10 => BUS2046,
       bin => timer_s
  );

U28 : bcd2ascii
  port map(
       ascii => BUS2551,
       bcd => BUS2046
  );

U29 : bcd2ascii
  port map(
       ascii => BUS2543,
       bcd => BUS2042
  );

U3 : bin2bcd2d
  port map(
       bcd1 => BUS297,
       bcd10 => BUS306,
       bin => time_h
  );

U30 : hd44780_8chars_2lines
  port map(
       ch_line1_0 => BUS2432,
       ch_line1_1 => BUS2440,
       ch_line1_2 => ascii_colon,
       ch_line1_3 => BUS2448,
       ch_line1_4 => BUS2456,
       ch_line1_5 => ascii_colon,
       ch_line1_6 => BUS2460,
       ch_line1_7 => BUS2468,
       ch_line2_0 => ascii_space,
       ch_line2_1 => ascii_space,
       ch_line2_2 => ascii_space,
       ch_line2_3 => BUS5453,
       ch_line2_4 => BUS2559,
       ch_line2_5 => ascii_colon,
       ch_line2_6 => BUS2551,
       ch_line2_7 => BUS2543,
       clk => clk,
       hd44780_db => hd44780_db,
       hd44780_en => hd44780_en,
       hd44780_rs => hd44780_rs,
       hd44780_rw => hd44780_rw,
       reset => rst
  );

U31 : spacegen
  port map(
       space => ascii_space
  );

settingtimeout <= fsm_settime;

settingtimerout <= fsm_settimer;

U34 : buzzer
  port map(
       buzz => fsm_buzz,
       clk => clk,
       leds => buzzerleds
  );

ovenout <= fsm_oven;

U36 : timer
  port map(
       clk_100mhz => clk,
       clk_1hz => clk_1hz,
       pulse_m => pulse_min,
       rst => fsm_resettimer,
       set => fsm_settimer,
       tm => timer_m,
       ts => timer_s
  );

U37 : oventimetimerfsm
  port map(
       buzz => fsm_buzz,
       clk => clk,
       cur_timer_m => timer_m,
       cur_timer_s => timer_s,
       oven => fsm_oven,
       pulse_canceltimer => pulse_canceltimer,
       pulse_settime => pulse_settime,
       pulse_settimer => pulse_settimer,
       reset_time => fsm_resettime,
       reset_timer => fsm_resettimer,
       rst => rst,
       set_time => fsm_settime,
       set_timer => fsm_settimer
  );

U38 : asciizero2space
  port map(
       ai => BUS5450,
       ao => BUS5453
  );

U4 : colongen
  port map(
       colon => ascii_colon
  );

U5 : bin2bcd2d
  port map(
       bcd1 => BUS279,
       bcd10 => BUS288,
       bin => time_m
  );

U6 : bin2bcd2d
  port map(
       bcd1 => BUS260,
       bcd10 => BUS269,
       bin => time_s
  );

U7 : bcd2ascii
  port map(
       ascii => BUS320,
       bcd => BUS306
  );

U8 : bcd2ascii
  port map(
       ascii => BUS2440,
       bcd => BUS297
  );

U9 : bcd2ascii
  port map(
       ascii => BUS2448,
       bcd => BUS288
  );


end top;
