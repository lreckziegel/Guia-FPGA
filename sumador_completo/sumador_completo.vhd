library ieee;
use ieee.std_logic_1164.all;

entity sumador_completo is
	port (
		in_a, in_b, in_c, clock : in std_logic;
		out_z, out_c : out std_logic );
end sumador_completo;

architecture comportamiento of sumador_completo is
	component FF_D
		port (
			D, clock : in std_logic;
			Q : out std_logic );
	end component;
	
	signal a, b, c_in, z, c_out : std_logic;
	
	begin
		z <= a xor b xor c_in;
		c_out <= (a and b) or (c_in and (a xor b));
		
		Da: FF_D port map (in_a,clock,a);
		Db: FF_D port map (in_b,clock,b);
		Dcin: FF_D port map (in_c,clock,c_in);
		Dcout: FF_D port map (c_out,clock,out_c);
		Dz: FF_D port map (z,clock,out_z);
	end comportamiento;