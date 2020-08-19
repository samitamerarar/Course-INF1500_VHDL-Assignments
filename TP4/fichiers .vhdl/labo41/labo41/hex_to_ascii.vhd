-- VHDL module for converting a 4-bit (range 0 to 15) value to its ASCII representation.
-- Copyright (C) 2011  Philippe Proulx <philippe.proulx@polymtl.ca>
--                     École Polytechnique de Montréal, Montréal (QC)
-- 
-- This module is free software: you can redistribute it and/or modify
-- it under the terms of the GNU Lesser General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This module is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU Lesser General Public License for more details.
--
-- You should have received a copy of the GNU Lesser General Public License
-- along with this module.  If not, see <http://www.gnu.org/licenses/>.
--
-- This file is best viewed with tabs set at 8 columns.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity hex_to_ascii is
	port (
		hex_val : in std_logic_vector(3 downto 0);
		ascii : out std_logic_vector(7 downto 0)
	);
end hex_to_ascii;

architecture arch of hex_to_ascii is
begin
	process (hex_val)
	begin
		if (unsigned(hex_val) < to_unsigned(10, 4)) then
			ascii <= std_logic_vector(unsigned("0000" & hex_val) + to_unsigned(48, 8));
		else
			ascii <= std_logic_vector(unsigned("0000" & hex_val) + to_unsigned(97 - 10, 8));
		end if;
	end process;
end arch;
