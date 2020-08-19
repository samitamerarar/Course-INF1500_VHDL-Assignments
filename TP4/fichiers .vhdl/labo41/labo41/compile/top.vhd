-------------------------------------------------------------------------------
--
-- Title       : No Title
-- Design      : labo41
-- Author      : bencharbonneau@outlook.com
-- Company     : Polytechnique
--
-------------------------------------------------------------------------------
--
-- File        : Y:\documents\inf1500c\eric\labo41\labo41\compile\top.vhd
-- Generated   : Fri Mar 25 20:54:26 2016
-- From        : Y:\documents\inf1500c\eric\labo41\labo41\src\top.bde
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
       entree : in STD_LOGIC_VECTOR(3 downto 0);
       reset : in STD_LOGIC;
       sel : in STD_LOGIC;
       hd44780_en : out STD_LOGIC;
       hd44780_rs : out STD_LOGIC;
       hd44780_rw : out STD_LOGIC;
       hd44780_db : out STD_LOGIC_VECTOR(7 downto 0)
  );
end top;

architecture top of top is

---- Component declarations -----

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
component hex_to_ascii
  port (
       hex_val : in STD_LOGIC_VECTOR(3 downto 0);
       ascii : out STD_LOGIC_VECTOR(7 downto 0)
  );
end component;
component module_parite
  port (
       CLK : in STD_LOGIC;
       Sel : in STD_LOGIC;
       entree : in STD_LOGIC_VECTOR(3 downto 0);
       cout : out STD_LOGIC_VECTOR
  );
end component;

----     Constants     -----
constant DANGLING_INPUT_CONSTANT : STD_LOGIC := 'Z';

---- Signal declarations used on the diagram ----

signal BUS1216 : STD_LOGIC_VECTOR (3 downto 0);
signal BUS1253 : STD_LOGIC_VECTOR (7 downto 0);

---- Declaration for Dangling input ----
signal Dangling_Input_Signal : STD_LOGIC;

begin

----  Component instantiations  ----

U1 : hd44780_8chars_2lines
  port map(
       ch_line1_0(0) => Dangling_Input_Signal,
       ch_line1_0(1) => Dangling_Input_Signal,
       ch_line1_0(2) => Dangling_Input_Signal,
       ch_line1_0(3) => Dangling_Input_Signal,
       ch_line1_0(4) => Dangling_Input_Signal,
       ch_line1_0(5) => Dangling_Input_Signal,
       ch_line1_0(6) => Dangling_Input_Signal,
       ch_line1_0(7) => Dangling_Input_Signal,
       ch_line1_1(0) => Dangling_Input_Signal,
       ch_line1_1(1) => Dangling_Input_Signal,
       ch_line1_1(2) => Dangling_Input_Signal,
       ch_line1_1(3) => Dangling_Input_Signal,
       ch_line1_1(4) => Dangling_Input_Signal,
       ch_line1_1(5) => Dangling_Input_Signal,
       ch_line1_1(6) => Dangling_Input_Signal,
       ch_line1_1(7) => Dangling_Input_Signal,
       ch_line1_2(0) => Dangling_Input_Signal,
       ch_line1_2(1) => Dangling_Input_Signal,
       ch_line1_2(2) => Dangling_Input_Signal,
       ch_line1_2(3) => Dangling_Input_Signal,
       ch_line1_2(4) => Dangling_Input_Signal,
       ch_line1_2(5) => Dangling_Input_Signal,
       ch_line1_2(6) => Dangling_Input_Signal,
       ch_line1_2(7) => Dangling_Input_Signal,
       ch_line1_4(0) => Dangling_Input_Signal,
       ch_line1_4(1) => Dangling_Input_Signal,
       ch_line1_4(2) => Dangling_Input_Signal,
       ch_line1_4(3) => Dangling_Input_Signal,
       ch_line1_4(4) => Dangling_Input_Signal,
       ch_line1_4(5) => Dangling_Input_Signal,
       ch_line1_4(6) => Dangling_Input_Signal,
       ch_line1_4(7) => Dangling_Input_Signal,
       ch_line1_5(0) => Dangling_Input_Signal,
       ch_line1_5(1) => Dangling_Input_Signal,
       ch_line1_5(2) => Dangling_Input_Signal,
       ch_line1_5(3) => Dangling_Input_Signal,
       ch_line1_5(4) => Dangling_Input_Signal,
       ch_line1_5(5) => Dangling_Input_Signal,
       ch_line1_5(6) => Dangling_Input_Signal,
       ch_line1_5(7) => Dangling_Input_Signal,
       ch_line1_6(0) => Dangling_Input_Signal,
       ch_line1_6(1) => Dangling_Input_Signal,
       ch_line1_6(2) => Dangling_Input_Signal,
       ch_line1_6(3) => Dangling_Input_Signal,
       ch_line1_6(4) => Dangling_Input_Signal,
       ch_line1_6(5) => Dangling_Input_Signal,
       ch_line1_6(6) => Dangling_Input_Signal,
       ch_line1_6(7) => Dangling_Input_Signal,
       ch_line1_7(0) => Dangling_Input_Signal,
       ch_line1_7(1) => Dangling_Input_Signal,
       ch_line1_7(2) => Dangling_Input_Signal,
       ch_line1_7(3) => Dangling_Input_Signal,
       ch_line1_7(4) => Dangling_Input_Signal,
       ch_line1_7(5) => Dangling_Input_Signal,
       ch_line1_7(6) => Dangling_Input_Signal,
       ch_line1_7(7) => Dangling_Input_Signal,
       ch_line2_0(0) => Dangling_Input_Signal,
       ch_line2_0(1) => Dangling_Input_Signal,
       ch_line2_0(2) => Dangling_Input_Signal,
       ch_line2_0(3) => Dangling_Input_Signal,
       ch_line2_0(4) => Dangling_Input_Signal,
       ch_line2_0(5) => Dangling_Input_Signal,
       ch_line2_0(6) => Dangling_Input_Signal,
       ch_line2_0(7) => Dangling_Input_Signal,
       ch_line2_1(0) => Dangling_Input_Signal,
       ch_line2_1(1) => Dangling_Input_Signal,
       ch_line2_1(2) => Dangling_Input_Signal,
       ch_line2_1(3) => Dangling_Input_Signal,
       ch_line2_1(4) => Dangling_Input_Signal,
       ch_line2_1(5) => Dangling_Input_Signal,
       ch_line2_1(6) => Dangling_Input_Signal,
       ch_line2_1(7) => Dangling_Input_Signal,
       ch_line2_2(0) => Dangling_Input_Signal,
       ch_line2_2(1) => Dangling_Input_Signal,
       ch_line2_2(2) => Dangling_Input_Signal,
       ch_line2_2(3) => Dangling_Input_Signal,
       ch_line2_2(4) => Dangling_Input_Signal,
       ch_line2_2(5) => Dangling_Input_Signal,
       ch_line2_2(6) => Dangling_Input_Signal,
       ch_line2_2(7) => Dangling_Input_Signal,
       ch_line2_3(0) => Dangling_Input_Signal,
       ch_line2_3(1) => Dangling_Input_Signal,
       ch_line2_3(2) => Dangling_Input_Signal,
       ch_line2_3(3) => Dangling_Input_Signal,
       ch_line2_3(4) => Dangling_Input_Signal,
       ch_line2_3(5) => Dangling_Input_Signal,
       ch_line2_3(6) => Dangling_Input_Signal,
       ch_line2_3(7) => Dangling_Input_Signal,
       ch_line2_4(0) => Dangling_Input_Signal,
       ch_line2_4(1) => Dangling_Input_Signal,
       ch_line2_4(2) => Dangling_Input_Signal,
       ch_line2_4(3) => Dangling_Input_Signal,
       ch_line2_4(4) => Dangling_Input_Signal,
       ch_line2_4(5) => Dangling_Input_Signal,
       ch_line2_4(6) => Dangling_Input_Signal,
       ch_line2_4(7) => Dangling_Input_Signal,
       ch_line2_5(0) => Dangling_Input_Signal,
       ch_line2_5(1) => Dangling_Input_Signal,
       ch_line2_5(2) => Dangling_Input_Signal,
       ch_line2_5(3) => Dangling_Input_Signal,
       ch_line2_5(4) => Dangling_Input_Signal,
       ch_line2_5(5) => Dangling_Input_Signal,
       ch_line2_5(6) => Dangling_Input_Signal,
       ch_line2_5(7) => Dangling_Input_Signal,
       ch_line2_6(0) => Dangling_Input_Signal,
       ch_line2_6(1) => Dangling_Input_Signal,
       ch_line2_6(2) => Dangling_Input_Signal,
       ch_line2_6(3) => Dangling_Input_Signal,
       ch_line2_6(4) => Dangling_Input_Signal,
       ch_line2_6(5) => Dangling_Input_Signal,
       ch_line2_6(6) => Dangling_Input_Signal,
       ch_line2_6(7) => Dangling_Input_Signal,
       ch_line2_7(0) => Dangling_Input_Signal,
       ch_line2_7(1) => Dangling_Input_Signal,
       ch_line2_7(2) => Dangling_Input_Signal,
       ch_line2_7(3) => Dangling_Input_Signal,
       ch_line2_7(4) => Dangling_Input_Signal,
       ch_line2_7(5) => Dangling_Input_Signal,
       ch_line2_7(6) => Dangling_Input_Signal,
       ch_line2_7(7) => Dangling_Input_Signal,
       ch_line1_3 => BUS1253,
       clk => clk,
       hd44780_db => hd44780_db,
       hd44780_en => hd44780_en,
       hd44780_rs => hd44780_rs,
       hd44780_rw => hd44780_rw,
       reset => reset
  );

U2 : module_parite
  port map(
       CLK => clk,
       Sel => sel,
       cout => BUS1216,
       entree => entree
  );

U4 : hex_to_ascii
  port map(
       ascii => BUS1253,
       hex_val => BUS1216
  );


---- Dangling input signal assignment ----

Dangling_Input_Signal <= DANGLING_INPUT_CONSTANT;

end top;
