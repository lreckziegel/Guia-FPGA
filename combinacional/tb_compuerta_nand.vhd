architecture comportamiento of tb_compuerta_nand is
	component compuerta_nand
		port (
			sw1, sw2 : in std_logic;
			LED : out std_logic );
	end component;
	
	--Entradas
	signal sw1, sw2 : std_logic := '0';
	
	--Salidas
	signal LED : std_logic;
	
begin
	uut : compuerta_nand port map (
		sw1 => sw1,
		sw2 => sw2,
		LED => LED );
		
	estimulo : process
	begin
		sw1, sw2 <= '0'; wait for 10ns;
		sw2 <= '1'; wait for 10ns;
		sw1 <= '1', sw2 <= '0'; wait for 10ns;
		sw2 <= '1'; wait for 10ns;
		wait;
	end process;
end comportamiento;
		