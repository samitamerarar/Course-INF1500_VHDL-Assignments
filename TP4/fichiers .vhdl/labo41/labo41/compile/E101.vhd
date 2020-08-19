-------------------------------------------------------------------------------
--
-- Title       : No Title
-- Design      : labo41
-- Author      : bencharbonneau@outlook.com
-- Company     : Polytechnique
--
-------------------------------------------------------------------------------
--
-- File        : Y:\documents\inf1500c\eric\labo41\labo41\compile\E101.vhd
-- Generated   : Fri Mar 25 19:29:20 2016
-- From        : Y:\documents\inf1500c\eric\labo41\labo41\src\E101.bde
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


entity E101 is
  port(
       b : out STD_LOGIC_VECTOR(15 downto 0)
  );
end E101;

architecture E101 of E101 is

----     Constants     -----
constant VCC_CONSTANT   : STD_LOGIC := '1';
constant GND_CONSTANT   : STD_LOGIC := '0';

---- Signal declarations used on the diagram ----

signal GND : STD_LOGIC;
signal VCC : STD_LOGIC;

begin

---- Power , ground assignment ----

VCC <= VCC_CONSTANT;
GND <= GND_CONSTANT;
b(8) <= VCC;
b(13) <= VCC;
b(14) <= VCC;
b(15) <= VCC;
b(0) <= VCC;
b(11) <= GND;
b(12) <= GND;
b(10) <= GND;
b(9) <= GND;
b(7) <= GND;
b(6) <= GND;
b(5) <= GND;
b(4) <= GND;
b(3) <= GND;
b(2) <= GND;
b(1) <= GND;

end E101;
