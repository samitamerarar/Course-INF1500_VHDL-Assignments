-------------------------------------------------------------------------------
--
-- Title       : No Title
-- Design      : labo41
-- Author      : bencharbonneau@outlook.com
-- Company     : Polytechnique
--
-------------------------------------------------------------------------------
--
-- File        : Y:\documents\inf1500c\eric\labo41\labo41\compile\module_parite.vhd
-- Generated   : Fri Mar 25 20:25:08 2016
-- From        : Y:\documents\inf1500c\eric\labo41\labo41\src\module_parite.bde
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


entity module_parite is
  port(
       CLK : in STD_LOGIC;
       Sel : in STD_LOGIC;
       entree : in STD_LOGIC_VECTOR(3 downto 0);
       cout : out STD_LOGIC_VECTOR(3 downto 0)
  );
end module_parite;

architecture module_parite of module_parite is

---- Component declarations -----

component COMP4
  port (
       A : in STD_LOGIC_VECTOR(3 downto 0);
       B : in STD_LOGIC_VECTOR(3 downto 0);
       EQ : out STD_LOGIC
  );
end component;
component compteur4bits
  port (
       C : in STD_LOGIC;
       CE : in STD_LOGIC;
       CLR : in STD_LOGIC;
       CEO : out STD_LOGIC;
       Q : out STD_LOGIC_VECTOR(3 downto 0)
  );
end component;
component diviseur
  port (
       CLK : in STD_LOGIC;
       s : out STD_LOGIC
  );
end component;
component verificationparite
  port (
       Sel : in STD_LOGIC;
       a : in STD_LOGIC_VECTOR(3 downto 0);
       cout : out STD_LOGIC_VECTOR(3 downto 0)
  );
end component;

----     Constants     -----
constant VCC_CONSTANT   : STD_LOGIC := '1';

---- Signal declarations used on the diagram ----

signal NET68 : STD_LOGIC;
signal NET734 : STD_LOGIC;
signal VCC : STD_LOGIC;
signal BUS50 : STD_LOGIC_VECTOR (3 downto 0);

begin

----  Component instantiations  ----

U1 : verificationparite
  port map(
       Sel => Sel,
       a => BUS50,
       cout => cout
  );

U2 : COMP4
  port map(
       A => BUS50,
       B => entree,
       EQ => NET68
  );

U3 : compteur4bits
  port map(
       C => NET734,
       CE => VCC,
       CLR => NET68,
       Q => BUS50
  );

U4 : diviseur
  port map(
       CLK => CLK,
       s => NET734
  );


---- Power , ground assignment ----

VCC <= VCC_CONSTANT;

end module_parite;
