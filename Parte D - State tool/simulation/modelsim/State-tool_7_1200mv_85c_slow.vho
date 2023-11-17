-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/17/2023 17:41:14"

-- 
-- Device: Altera EP3C120F780C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	State_tool IS
    PORT (
	reset : IN std_logic;
	clock : IN std_logic;
	x : IN std_logic;
	LEDs : OUT std_logic_vector(3 DOWNTO 0)
	);
END State_tool;

-- Design Ports Information
-- LEDs[0]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[1]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[2]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[3]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF State_tool IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_x : std_logic;
SIGNAL ww_LEDs : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \x~input_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \LEDs[0]~output_o\ : std_logic;
SIGNAL \LEDs[1]~output_o\ : std_logic;
SIGNAL \LEDs[2]~output_o\ : std_logic;
SIGNAL \LEDs[3]~output_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \fstate.state_bit_0~0_combout\ : std_logic;
SIGNAL \fstate.state_bit_0~1_combout\ : std_logic;
SIGNAL \fstate.state_bit_0~q\ : std_logic;
SIGNAL \fstate.state_bit_2~0_combout\ : std_logic;
SIGNAL \fstate.state_bit_2~1_combout\ : std_logic;
SIGNAL \fstate.state_bit_2~q\ : std_logic;
SIGNAL \fstate.state_bit_1~0_combout\ : std_logic;
SIGNAL \fstate.state_bit_1~1_combout\ : std_logic;
SIGNAL \fstate.state_bit_1~q\ : std_logic;
SIGNAL \LEDs~0_combout\ : std_logic;
SIGNAL \LEDs~1_combout\ : std_logic;
SIGNAL \LEDs~2_combout\ : std_logic;
SIGNAL \LEDs~3_combout\ : std_logic;
SIGNAL \ALT_INV_LEDs~3_combout\ : std_logic;

BEGIN

ww_reset <= reset;
ww_clock <= clock;
ww_x <= x;
LEDs <= ww_LEDs;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_LEDs~3_combout\ <= NOT \LEDs~3_combout\;

-- Location: IOIBUF_X0_Y46_N22
\x~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x,
	o => \x~input_o\);

-- Location: IOIBUF_X0_Y36_N1
\clock~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G4
\clock~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOOBUF_X0_Y48_N2
\LEDs[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDs~0_combout\,
	devoe => ww_devoe,
	o => \LEDs[0]~output_o\);

-- Location: IOOBUF_X0_Y46_N16
\LEDs[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDs~1_combout\,
	devoe => ww_devoe,
	o => \LEDs[1]~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\LEDs[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDs~2_combout\,
	devoe => ww_devoe,
	o => \LEDs[2]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\LEDs[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_LEDs~3_combout\,
	devoe => ww_devoe,
	o => \LEDs[3]~output_o\);

-- Location: IOIBUF_X0_Y47_N15
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X1_Y47_N2
\fstate.state_bit_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fstate.state_bit_0~0_combout\ = (!\fstate.state_bit_2~q\ & ((\x~input_o\ & (!\fstate.state_bit_0~q\)) # (!\x~input_o\ & ((\fstate.state_bit_1~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~input_o\,
	datab => \fstate.state_bit_0~q\,
	datac => \fstate.state_bit_1~q\,
	datad => \fstate.state_bit_2~q\,
	combout => \fstate.state_bit_0~0_combout\);

-- Location: LCCOMB_X1_Y47_N18
\fstate.state_bit_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fstate.state_bit_0~1_combout\ = (!\reset~input_o\ & (!\fstate.state_bit_0~0_combout\ & ((\fstate.state_bit_1~q\) # (!\fstate.state_bit_2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.state_bit_1~q\,
	datab => \fstate.state_bit_2~q\,
	datac => \reset~input_o\,
	datad => \fstate.state_bit_0~0_combout\,
	combout => \fstate.state_bit_0~1_combout\);

-- Location: FF_X1_Y47_N19
\fstate.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fstate.state_bit_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.state_bit_0~q\);

-- Location: LCCOMB_X1_Y47_N28
\fstate.state_bit_2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fstate.state_bit_2~0_combout\ = \fstate.state_bit_0~q\ $ (((\fstate.state_bit_1~q\ & !\fstate.state_bit_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fstate.state_bit_1~q\,
	datac => \fstate.state_bit_2~q\,
	datad => \fstate.state_bit_0~q\,
	combout => \fstate.state_bit_2~0_combout\);

-- Location: LCCOMB_X1_Y47_N30
\fstate.state_bit_2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fstate.state_bit_2~1_combout\ = (!\reset~input_o\ & (!\fstate.state_bit_2~0_combout\ & ((\x~input_o\) # (\fstate.state_bit_2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~input_o\,
	datab => \reset~input_o\,
	datac => \fstate.state_bit_2~q\,
	datad => \fstate.state_bit_2~0_combout\,
	combout => \fstate.state_bit_2~1_combout\);

-- Location: FF_X1_Y47_N31
\fstate.state_bit_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fstate.state_bit_2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.state_bit_2~q\);

-- Location: LCCOMB_X1_Y47_N6
\fstate.state_bit_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fstate.state_bit_1~0_combout\ = (!\fstate.state_bit_2~q\ & ((\x~input_o\ & ((\fstate.state_bit_1~q\))) # (!\x~input_o\ & (!\fstate.state_bit_0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~input_o\,
	datab => \fstate.state_bit_0~q\,
	datac => \fstate.state_bit_1~q\,
	datad => \fstate.state_bit_2~q\,
	combout => \fstate.state_bit_1~0_combout\);

-- Location: LCCOMB_X1_Y47_N20
\fstate.state_bit_1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fstate.state_bit_1~1_combout\ = (!\reset~input_o\ & (!\fstate.state_bit_1~0_combout\ & ((\fstate.state_bit_1~q\) # (!\fstate.state_bit_2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \fstate.state_bit_2~q\,
	datac => \fstate.state_bit_1~q\,
	datad => \fstate.state_bit_1~0_combout\,
	combout => \fstate.state_bit_1~1_combout\);

-- Location: FF_X1_Y47_N21
\fstate.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fstate.state_bit_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.state_bit_1~q\);

-- Location: LCCOMB_X1_Y47_N12
\LEDs~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LEDs~0_combout\ = (\fstate.state_bit_1~q\ & (!\fstate.state_bit_2~q\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.state_bit_1~q\,
	datab => \fstate.state_bit_2~q\,
	datac => \reset~input_o\,
	combout => \LEDs~0_combout\);

-- Location: LCCOMB_X1_Y47_N24
\LEDs~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LEDs~1_combout\ = (!\reset~input_o\ & ((\fstate.state_bit_2~q\ & ((!\fstate.state_bit_1~q\))) # (!\fstate.state_bit_2~q\ & (\fstate.state_bit_0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.state_bit_0~q\,
	datab => \fstate.state_bit_2~q\,
	datac => \reset~input_o\,
	datad => \fstate.state_bit_1~q\,
	combout => \LEDs~1_combout\);

-- Location: LCCOMB_X1_Y47_N22
\LEDs~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LEDs~2_combout\ = (!\reset~input_o\ & \fstate.state_bit_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \fstate.state_bit_0~q\,
	combout => \LEDs~2_combout\);

-- Location: LCCOMB_X1_Y47_N8
\LEDs~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LEDs~3_combout\ = (\reset~input_o\) # ((!\fstate.state_bit_1~q\ & ((!\fstate.state_bit_2~q\) # (!\fstate.state_bit_0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.state_bit_0~q\,
	datab => \fstate.state_bit_2~q\,
	datac => \reset~input_o\,
	datad => \fstate.state_bit_1~q\,
	combout => \LEDs~3_combout\);

ww_LEDs(0) <= \LEDs[0]~output_o\;

ww_LEDs(1) <= \LEDs[1]~output_o\;

ww_LEDs(2) <= \LEDs[2]~output_o\;

ww_LEDs(3) <= \LEDs[3]~output_o\;
END structure;


