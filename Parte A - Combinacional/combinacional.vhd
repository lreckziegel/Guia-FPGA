library ieee;
use ieee.std_logic_1164.all;

entity combinacional is
	port(
		SW1, SW2 : in std_logic;
		LED : out std_logic );
end combinacional;

architecture comportamiento of combinacional is
begin
	LED <= not(SW1 and SW2);
end comportamiento;