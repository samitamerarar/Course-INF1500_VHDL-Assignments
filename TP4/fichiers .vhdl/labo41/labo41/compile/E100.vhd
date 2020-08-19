-------------------------------------------------------------------------------
--
-- Title       : No Title
-- Design      : labo41
-- Author      : bencharbonneau@outlook.com
-- Company     : Polytechnique
--
-------------------------------------------------------------------------------
--
-- File        : Y:\documents\inf1500c\eric\labo41\labo41\compile\E100.vhd
-- Generated   : Fri Mar 25 19:31:46 2016
-- From        : Y:\documents\inf1500c\eric\labo41\labo41\src\E100.bde
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


entity E100 is
  port(
       b : out STD_LOGIC_VECTOR(15 downto 0)
  );
end E100;

architecture E100 of E100 is

----     Constants     -----
constant VCC_CONSTANT   : STD_LOGIC := '1';
constant GND_CONSTANT   : STD_LOGIC := '0';

---- Signal declarations used on the diagram ----

signal GND : STD_LOGIC;
signal VCC : STD_LOGIC;

begin

---- Power , ground assignment ----

GND <= GND_CONSTANT;
VCC <= VCC_CONSTANT;
b(0) <= GND;
b(1) <= GND;
b(2) <= GND;
b(3) <= GND;
b(4) <= GND;
b(5) <= GND;
b(6) <= GND;
b(7) <= GND;
b(9) <= GND;
b(10) <= GND;
b(11) <= GND;
b(12) <= GND;
b(14) <= VCC;
b(8) <= VCC;
b(15) <= VCC;
b(13) <= VCC;

end E100;
