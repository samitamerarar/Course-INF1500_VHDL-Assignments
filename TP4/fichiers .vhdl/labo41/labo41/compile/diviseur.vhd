-------------------------------------------------------------------------------
--
-- Title       : No Title
-- Design      : labo41
-- Author      : bencharbonneau@outlook.com
-- Company     : Polytechnique
--
-------------------------------------------------------------------------------
--
-- File        : Y:\documents\inf1500c\eric\labo41\labo41\compile\diviseur.vhd
-- Generated   : Fri Mar 25 20:43:13 2016
-- From        : Y:\documents\inf1500c\eric\labo41\labo41\src\diviseur.bde
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


entity diviseur is
  port(
       CLK : in STD_LOGIC;
       s : out STD_LOGIC
  );
end diviseur;

architecture diviseur of diviseur is

---- Component declarations -----

component CC16CLE
  port (
       C : in STD_LOGIC;
       CE : in STD_LOGIC;
       CLR : in STD_LOGIC;
       D : in STD_LOGIC_VECTOR(15 downto 0);
       L : in STD_LOGIC;
       CEO : out STD_LOGIC;
       Q : out STD_LOGIC_VECTOR(15 downto 0);
       TC : out STD_LOGIC
  );
end component;
component COMP16
  port (
       A : in STD_LOGIC_VECTOR(15 downto 0);
       B : in STD_LOGIC_VECTOR(15 downto 0);
       EQ : out STD_LOGIC
  );
end component;
component E100
  port (
       b : out STD_LOGIC_VECTOR(15 downto 0)
  );
end component;
component E101
  port (
       b : out STD_LOGIC_VECTOR(15 downto 0)
  );
end component;
component Max05F5
  port (
       b : out STD_LOGIC_VECTOR(15 downto 0)
  );
end component;

----     Constants     -----
constant DANGLING_INPUT_CONSTANT : STD_LOGIC := 'Z';
constant VCC_CONSTANT   : STD_LOGIC := '1';
constant GND_CONSTANT   : STD_LOGIC := '0';

---- Signal declarations used on the diagram ----

signal GND : STD_LOGIC;
signal NET150 : STD_LOGIC;
signal NET1584 : STD_LOGIC;
signal NET1653 : STD_LOGIC;
signal NET1773 : STD_LOGIC;
signal NET1780 : STD_LOGIC;
signal VCC : STD_LOGIC;
signal BUS1561 : STD_LOGIC_VECTOR (15 downto 0);
signal BUS1580 : STD_LOGIC_VECTOR (15 downto 0);
signal BUS46 : STD_LOGIC_VECTOR (15 downto 0);
signal BUS85 : STD_LOGIC_VECTOR (15 downto 0);
signal BUS918 : STD_LOGIC_VECTOR (15 downto 0);

---- Declaration for Dangling input ----
signal Dangling_Input_Signal : STD_LOGIC;

begin

----  Component instantiations  ----

U1 : CC16CLE
  port map(
       C => CLK,
       CE => VCC,
       CEO => NET1584,
       CLR => NET1653,
       D(0) => Dangling_Input_Signal,
       D(1) => Dangling_Input_Signal,
       D(2) => Dangling_Input_Signal,
       D(3) => Dangling_Input_Signal,
       D(4) => Dangling_Input_Signal,
       D(5) => Dangling_Input_Signal,
       D(6) => Dangling_Input_Signal,
       D(7) => Dangling_Input_Signal,
       D(8) => Dangling_Input_Signal,
       D(9) => Dangling_Input_Signal,
       D(10) => Dangling_Input_Signal,
       D(11) => Dangling_Input_Signal,
       D(12) => Dangling_Input_Signal,
       D(13) => Dangling_Input_Signal,
       D(14) => Dangling_Input_Signal,
       D(15) => Dangling_Input_Signal,
       L => GND,
       Q => BUS85
  );

U13 : Max05F5
  port map(
       b => BUS46
  );

NET1653 <= NET150 and NET1780;

U15 : COMP16
  port map(
       A => BUS85,
       B => BUS1580,
       EQ => NET150
  );

U2 : CC16CLE
  port map(
       C => NET1584,
       CE => VCC,
       CLR => NET1653,
       D(0) => Dangling_Input_Signal,
       D(1) => Dangling_Input_Signal,
       D(2) => Dangling_Input_Signal,
       D(3) => Dangling_Input_Signal,
       D(4) => Dangling_Input_Signal,
       D(5) => Dangling_Input_Signal,
       D(6) => Dangling_Input_Signal,
       D(7) => Dangling_Input_Signal,
       D(8) => Dangling_Input_Signal,
       D(9) => Dangling_Input_Signal,
       D(10) => Dangling_Input_Signal,
       D(11) => Dangling_Input_Signal,
       D(12) => Dangling_Input_Signal,
       D(13) => Dangling_Input_Signal,
       D(14) => Dangling_Input_Signal,
       D(15) => Dangling_Input_Signal,
       L => GND,
       Q => BUS918
  );

U4 : COMP16
  port map(
       A => BUS85,
       B => BUS1561,
       EQ => NET1773
  );

U5 : COMP16
  port map(
       A => BUS918,
       B => BUS46,
       EQ => NET1780
  );

U6 : E101
  port map(
       b => BUS1580
  );

U7 : E100
  port map(
       b => BUS1561
  );

s <= NET1780 and NET1773;


---- Power , ground assignment ----

VCC <= VCC_CONSTANT;
GND <= GND_CONSTANT;

---- Dangling input signal assignment ----

Dangling_Input_Signal <= DANGLING_INPUT_CONSTANT;

end diviseur;
