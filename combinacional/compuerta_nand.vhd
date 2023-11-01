library ieee;
use ieee.std_logic_1164.all;

entity compuerta_nand is
	port (
		sw1, sw2 : in std_logic;
		LED : out std_logic );
end compuerta_nand;

architecture comportamiento of compuerta_nand is
	begin
		LED <= not (sw1 and sw2);
	end comportamiento;