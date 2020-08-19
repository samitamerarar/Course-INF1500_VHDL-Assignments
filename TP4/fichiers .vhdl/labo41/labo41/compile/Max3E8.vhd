-------------------------------------------------------------------------------
--
-- Title       : No Title
-- Design      : labo41
-- Author      : bencharbonneau@outlook.com
-- Company     : Polytechnique
--
-------------------------------------------------------------------------------
--
-- File        : Y:\documents\inf1500c\eric\labo41\labo41\compile\Max3E8.vhd
-- Generated   : Fri Mar 25 18:51:39 2016
-- From        : Y:\documents\inf1500c\eric\labo41\labo41\src\Max3E8.bde
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


-- other libraries declarations
-- synthesis translate_off 
library VIRTEX5;
library IEEE;
use IEEE.vital_timing.all;
-- synthesis translate_on 

entity Max3E8 is
  port(
       e : out STD_LOGIC_VECTOR(15 downto 0)
  );
end Max3E8;

architecture Max3E8 of Max3E8 is

---- Component declarations -----

component GND
  port (
       G : out std_ulogic := '0'
  );
end component;
component VCC
  port (
       P : out std_ulogic := '1'
  );
end component;

begin

----  Component instantiations  ----

U1 : VCC
  port map(
       P => e(4)
  );

U10 : GND
  port map(
       G => e(1)
  );

U11 : GND
  port map(
       G => e(5)
  );

U12 : GND
  port map(
       G => e(11)
  );

U13 : GND
  port map(
       G => e(13)
  );

U14 : GND
  port map(
       G => e(12)
  );

U15 : GND
  port map(
       G => e(15)
  );

U16 : GND
  port map(
       G => e(14)
  );

U2 : VCC
  port map(
       P => e(6)
  );

U3 : VCC
  port map(
       P => e(7)
  );

U4 : VCC
  port map(
       P => e(8)
  );

U5 : VCC
  port map(
       P => e(9)
  );

U6 : VCC
  port map(
       P => e(10)
  );

U7 : GND
  port map(
       G => e(3)
  );

U8 : GND
  port map(
       G => e(2)
  );

U9 : GND
  port map(
       G => e(0)
  );


end Max3E8;
