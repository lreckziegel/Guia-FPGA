library ieee;
use ieee.std_logic_1164.all;

entity sumador_completo is
	port(
		in_a, in_b, in_c, clk : in std_logic;
		out_f, out_c : out std_logic );
end sumador_completo;

architecture comportamiento of sumador_completo is
	component FF_D
		port(
			D, clock : in std_logic;
			Q : out std_logic );
	end component;
	
	signal a, b, c_in, f, c_out : std_logic;
	
	begin
		f <= a xor b xor c_in;
		c_out <= (a and b) or (c_in and (a xor b));
		
		D_a: FF_D port map(in_a, clk, a);
		D_b: FF_D port map(in_b, clk, b);
		D_cin: FF_D port map(in_c, clk, c_in);
		D_cout: FF_D port map(c_out, clk, out_c);
		D_f: FF_D port map(f, clk, out_f);
	end comportamiento;