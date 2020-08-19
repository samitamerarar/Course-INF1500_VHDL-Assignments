-------------------------------------------------------------------------------
--
-- Title       : No Title
-- Design      : labo41
-- Author      : bencharbonneau@outlook.com
-- Company     : Polytechnique
--
-------------------------------------------------------------------------------
--
-- File        : Y:\documents\inf1500c\eric\labo41\labo41\compile\Max05F5.vhd
-- Generated   : Fri Mar 25 19:30:29 2016
-- From        : Y:\documents\inf1500c\eric\labo41\labo41\src\Max05F5.bde
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


entity Max05F5 is
  port(
       b : out STD_LOGIC_VECTOR(15 downto 0)
  );
end Max05F5;

architecture Max05F5 of Max05F5 is

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
b(1) <= GND;
b(3) <= GND;
b(9) <= GND;
b(11) <= GND;
b(12) <= GND;
b(13) <= GND;
b(14) <= GND;
b(15) <= GND;
b(8) <= VCC;
b(0) <= VCC;
b(2) <= VCC;
b(4) <= VCC;
b(5) <= VCC;
b(6) <= VCC;
b(7) <= VCC;
b(10) <= VCC;

end Max05F5;
