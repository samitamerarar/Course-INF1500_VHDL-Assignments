-------------------------------------------------------------------------------
-- Copyright (c) 2006 Xilinx, Inc.
-- All Right Reserved.
-------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor      : Xilinx
-- \   \   \/     Version     : J.20
--  \   \         Description : Xilinx HDL Macro Library
--  /   /                       16-Bit Cascadable Binary Counter with Clock Enable and Asynchronous Clear
-- /___/   /\     Filename    : CC16CLE.vhd
-- \   \  /  \    Timestamp   : Tues May 09 2006
--  \___\/\___\
--
-- Revision:
-- 05/09/06 - Initial version.
-- CR# 234574 - 07/25/06 - Modified pin order, logic.
-- CR# 232733 - 07/25/06 - Modified to fix the error 'Unsupported Clock format'.
-- End Revision

----- CELL CC16CLE -----

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CC16CLE is
port (
        CEO : out STD_LOGIC;
        Q   : out STD_LOGIC_VECTOR(15 downto 0);
        TC  : out STD_LOGIC;
        CLR : in STD_LOGIC;
        CE  : in STD_LOGIC;
        C   : in STD_LOGIC;
        D   : in STD_LOGIC_VECTOR (15 downto 0);
        L   : in STD_LOGIC );
end CC16CLE;

architecture Behavioral of CC16CLE is

  signal COUNT : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
  constant TERMINAL_COUNT : STD_LOGIC_VECTOR(15 downto 0) := (others => '1');

begin

process(C, CLR)
begin
  if (CLR='1') then
    COUNT <= (others => '0');
  elsif (C'event and C = '1') then
    if (L = '1') then
      COUNT <= D;
    elsif (CE='1') then 
      COUNT <= COUNT+1;
    end if;
  end if;
end process;

TC <=  '0' when (CLR = '1') else
       '1' when (COUNT = TERMINAL_COUNT) else '0';
CEO <= '1' when ((COUNT = TERMINAL_COUNT) and CE='1') else '0';
Q<=COUNT;

end Behavioral;
