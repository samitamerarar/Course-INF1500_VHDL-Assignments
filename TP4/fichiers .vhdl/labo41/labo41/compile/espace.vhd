-------------------------------------------------------------------------------
--
-- Title       : No Title
-- Design      : labo41
-- Author      : bencharbonneau@outlook.com
-- Company     : Polytechnique
--
-------------------------------------------------------------------------------
--
-- File        : Y:\documents\inf1500c\eric\labo41\labo41\compile\espace.vhd
-- Generated   : Fri Mar 25 19:31:59 2016
-- From        : Y:\documents\inf1500c\eric\labo41\labo41\src\espace.bde
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


entity espace is
  port(
       w : out STD_LOGIC_VECTOR(7 downto 0)
  );
end espace;

architecture espace of espace is

----     Constants     -----
constant GND_CONSTANT   : STD_LOGIC := '0';

---- Signal declarations used on the diagram ----

signal GND : STD_LOGIC;

begin

---- Power , ground assignment ----

GND <= GND_CONSTANT;
w(0) <= GND;
w(1) <= GND;
w(2) <= GND;
w(3) <= GND;
w(4) <= GND;
w(5) <= GND;
w(6) <= GND;
w(7) <= GND;

end espace;
