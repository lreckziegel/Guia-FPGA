library ieee;
use ieee.std_logic_1164.all;

entity tb_FF_D is
end tb_FF_D;

architecture comportamiento of tb_FF_D is
	component FF_D port(
		D,clock : in std_logic;
		Q : out std_logic);
	end component;
	
	--Entradas
	signal D : std_logic := '0';
	signal clock : std_logic := '0';
	
	--Salidas
	signal Q : std_logic;
	
	constant periodo_clock : time := 30ns;
	
	begin
		uut : FF_D port map (
			D => D,
			clock => clock,
			Q => Q );
		
		--Clock
		process begin
			clock <= '0';
			wait for periodo_clock/2;
			clock <= '1';
			wait for periodo_clock/2;
		end process;
		
		--Estimulos
		process begin
			D <= '0';
			wait for 50ns;
			D <= '1';
			wait for 50ns;
		end process;
	end comportamiento;
			