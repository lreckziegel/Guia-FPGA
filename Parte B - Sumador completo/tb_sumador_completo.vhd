library ieee;
use ieee.std_logic_1164.all;

entity tb_sumador_completo is
end tb_sumador_completo;

architecture comportamiento of tb_sumador_completo is
	
	component sumador_completo
		port(
			in_a, in_b, in_c, clk : in std_logic;
			out_f, out_c : out std_logic);
	end component;
	
	--Entradas
	signal in_a : std_logic := '0';
	signal in_b : std_logic := '0';
	signal in_c : std_logic := '0';
	signal clk : std_logic := '0';
	
	--Salidas
	signal out_f : std_logic;
	signal out_c : std_logic;
	
	constant T_clock : time := 30ns;
	
begin
	uut : sumador_completo port map(in_a, in_b, in_c, clk, out_f, out_c);
	
	--Clock
	process
	begin
		clk <= '0';
		wait for T_clock/2;
		clk <= '1';
		wait for T_clock/2;
	end process;
	
	--Estimulos
	process
	begin
		in_a <= '0'; in_b <= '0'; in_c <= '0'; wait for 30ns;
		in_a <= '0'; in_b <= '0'; in_c <= '1'; wait for 30ns;
		in_a <= '0'; in_b <= '1'; in_c <= '0'; wait for 30ns;
		in_a <= '0'; in_b <= '1'; in_c <= '1'; wait for 30ns;
		in_a <= '1'; in_b <= '0'; in_c <= '0'; wait for 30ns;
		in_a <= '1'; in_b <= '0'; in_c <= '1'; wait for 30ns;
		in_a <= '1'; in_b <= '1'; in_c <= '0'; wait for 30ns;
		in_a <= '1'; in_b <= '1'; in_c <= '1'; wait for 30ns;
		wait;
	end process;
end comportamiento;
			