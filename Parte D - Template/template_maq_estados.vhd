-- Quartus II VHDL Template
-- Four-State Moore State Machine

-- A Moore machine's outputs are dependent only on the current state.
-- The output is written only when the state changes.  (State
-- transitions are synchronous.)

library ieee;
use ieee.std_logic_1164.all;

entity template_maq_estados is

	port(
		clk		 : in	std_logic;
		x	 : in	std_logic;
		reset	 : in	std_logic;
		LEDs	 : out	std_logic_vector(3 downto 0)
	);

end entity;

architecture rtl of template_maq_estados is

	-- Build an enumerated type for the state machine
	type state_type is (OOOO,OIIO,IIII,IOOI,IOOO,IIOO,IIIO);

	-- Register to hold the current state
	signal state   : state_type;

begin

	-- Logic to advance to the next state
	process (clk, reset)
	begin
		if reset = '1' then
			state <= OOOO;
		elsif (rising_edge(clk)) then
			case state is
				when OOOO=>
					if x = '1' then
						state <= IOOO;
					else
						state <= OIIO;
					end if;
				when OIIO=>
					state <= IIII;
				when IIII=>
					if x = '1' then
						state <= IIIO;
					else
						state <= IOOI;
					end if;
				when IOOI=>
					state <= OOOO;
				when IOOO=>
					state <= IIOO;
				when IIOO=>
					state <= IIII;
				when IIIO=>
					state <= OOOO;
			end case;
		end if;
	end process;

	-- Output depends solely on the current state
	process (state)
	begin
		case state is
			when OOOO =>
				LEDs <= "0000";
			when OIIO =>
				LEDs <= "0110";
			when IIII =>
				LEDs <= "1111";
			when IOOI =>
				LEDs <= "1001";
			when IOOO =>
				LEDs <= "1000";
			when IIOO =>
				LEDs <= "1100";
			when IIIO =>
				LEDs <= "1110";
		end case;
	end process;

end rtl;
