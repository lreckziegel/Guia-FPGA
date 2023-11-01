library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity FF_D is
	port(
		D,clock : in std_logic;
		Q : out std_logic);
end FF_D;

architecture comportamiento of FF_D is
begin
	process(clock)
		begin
		if rising_edge(clock) then
			Q <= D;
		end if;
	end process;
end comportamiento;