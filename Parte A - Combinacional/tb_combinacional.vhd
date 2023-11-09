library ieee;
use ieee.std_logic_1164.all;

entity tb_combinacional is
end tb_combinacional;

architecture comportamiento of tb_combinacional is
	
	component combinacional
		port(
			SW1, SW2: in std_logic;
			LED : out std_logic);
	end component;
	
	--Inputs
	signal SW1 : std_logic := '0';
	signal SW2 : std_logic := '0';
	
	--Outputs
	signal LED : std_logic;

begin
	uut : combinacional port map(
		SW1 => SW1,
		SW2 => SW2,
		LED => LED);
		
	estimulo : process
	begin
		SW1<= '0'; SW2 <= '0'; wait for 10ns;
		SW2 <= '1'; wait for 10ns;
		SW1 <= '1'; SW2 <= '0'; wait for 10ns;
		SW2 <= '1'; wait for 10ns;
		wait;
	end process;
end comportamiento;