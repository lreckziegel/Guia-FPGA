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

-- DATE "11/02/2023 16:46:18"

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

ENTITY 	maq_estados IS
    PORT (
	reset : IN std_logic;
	clock : IN std_logic;
	x : IN std_logic;
	LED3 : OUT std_logic;
	LED2 : OUT std_logic;
	LED1 : OUT std_logic;
	LED0 : OUT std_logic
	);
END maq_estados;

-- Design Ports Information
-- LED3	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED2	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED1	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED0	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF maq_estados IS
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
SIGNAL ww_LED3 : std_logic;
SIGNAL ww_LED2 : std_logic;
SIGNAL ww_LED1 : std_logic;
SIGNAL ww_LED0 : std_logic;
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \x~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \LED3~output_o\ : std_logic;
SIGNAL \LED2~output_o\ : std_logic;
SIGNAL \LED1~output_o\ : std_logic;
SIGNAL \LED0~output_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \fstate.state_bit_0~0_combout\ : std_logic;
SIGNAL \fstate.state_bit_0~1_combout\ : std_logic;
SIGNAL \fstate.state_bit_0~q\ : std_logic;
SIGNAL \fstate.state_bit_1~0_combout\ : std_logic;
SIGNAL \fstate.state_bit_1~q\ : std_logic;
SIGNAL \fstate.state_bit_2~0_combout\ : std_logic;
SIGNAL \fstate.state_bit_2~q\ : std_logic;
SIGNAL \LED3~0_combout\ : std_logic;
SIGNAL \LED2~0_combout\ : std_logic;
SIGNAL \LED1~0_combout\ : std_logic;
SIGNAL \LED0~0_combout\ : std_logic;
SIGNAL \ALT_INV_LED3~0_combout\ : std_logic;

BEGIN

ww_reset <= reset;
ww_clock <= clock;
ww_x <= x;
LED3 <= ww_LED3;
LED2 <= ww_LED2;
LED1 <= ww_LED1;
LED0 <= ww_LED0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_LED3~0_combout\ <= NOT \LED3~0_combout\;

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

-- Location: IOOBUF_X0_Y47_N23
\LED3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_LED3~0_combout\,
	devoe => ww_devoe,
	o => \LED3~output_o\);

-- Location: IOOBUF_X0_Y48_N2
\LED2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED2~0_combout\,
	devoe => ww_devoe,
	o => \LED2~output_o\);

-- Location: IOOBUF_X0_Y46_N16
\LED1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED1~0_combout\,
	devoe => ww_devoe,
	o => \LED1~output_o\);

-- Location: IOOBUF_X0_Y47_N16
\LED0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED0~0_combout\,
	devoe => ww_devoe,
	o => \LED0~output_o\);

-- Location: IOIBUF_X0_Y47_N1
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X1_Y47_N18
\fstate.state_bit_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fstate.state_bit_0~0_combout\ = (!\reset~input_o\ & !\fstate.state_bit_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \fstate.state_bit_0~q\,
	combout => \fstate.state_bit_0~0_combout\);

-- Location: LCCOMB_X1_Y47_N10
\fstate.state_bit_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fstate.state_bit_0~1_combout\ = (\fstate.state_bit_0~0_combout\ & ((\fstate.state_bit_2~q\ & ((!\fstate.state_bit_1~q\))) # (!\fstate.state_bit_2~q\ & (!\x~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~input_o\,
	datab => \fstate.state_bit_1~q\,
	datac => \fstate.state_bit_2~q\,
	datad => \fstate.state_bit_0~0_combout\,
	combout => \fstate.state_bit_0~1_combout\);

-- Location: FF_X1_Y47_N11
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

-- Location: LCCOMB_X1_Y47_N24
\fstate.state_bit_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fstate.state_bit_1~0_combout\ = (!\reset~input_o\ & (\fstate.state_bit_0~q\ $ (((!\fstate.state_bit_2~q\ & \fstate.state_bit_1~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.state_bit_2~q\,
	datab => \reset~input_o\,
	datac => \fstate.state_bit_1~q\,
	datad => \fstate.state_bit_0~q\,
	combout => \fstate.state_bit_1~0_combout\);

-- Location: FF_X1_Y47_N25
\fstate.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fstate.state_bit_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.state_bit_1~q\);

-- Location: LCCOMB_X1_Y47_N22
\fstate.state_bit_2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fstate.state_bit_2~0_combout\ = (\fstate.state_bit_0~0_combout\ & ((\fstate.state_bit_2~q\ & ((!\fstate.state_bit_1~q\))) # (!\fstate.state_bit_2~q\ & (\x~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~input_o\,
	datab => \fstate.state_bit_1~q\,
	datac => \fstate.state_bit_2~q\,
	datad => \fstate.state_bit_0~0_combout\,
	combout => \fstate.state_bit_2~0_combout\);

-- Location: FF_X1_Y47_N23
\fstate.state_bit_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fstate.state_bit_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.state_bit_2~q\);

-- Location: LCCOMB_X1_Y47_N28
\LED3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED3~0_combout\ = (\reset~input_o\) # ((!\fstate.state_bit_2~q\ & !\fstate.state_bit_1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.state_bit_2~q\,
	datac => \reset~input_o\,
	datad => \fstate.state_bit_1~q\,
	combout => \LED3~0_combout\);

-- Location: LCCOMB_X1_Y47_N12
\LED2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED2~0_combout\ = (!\reset~input_o\ & (\fstate.state_bit_0~q\ $ (\fstate.state_bit_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fstate.state_bit_0~q\,
	datac => \reset~input_o\,
	datad => \fstate.state_bit_1~q\,
	combout => \LED2~0_combout\);

-- Location: LCCOMB_X1_Y47_N30
\LED1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED1~0_combout\ = (!\reset~input_o\ & (\fstate.state_bit_1~q\ $ (((\fstate.state_bit_0~q\ & !\fstate.state_bit_2~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \fstate.state_bit_0~q\,
	datac => \fstate.state_bit_2~q\,
	datad => \fstate.state_bit_1~q\,
	combout => \LED1~0_combout\);

-- Location: LCCOMB_X1_Y47_N20
\LED0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED0~0_combout\ = (!\reset~input_o\ & (\fstate.state_bit_1~q\ & ((\fstate.state_bit_0~q\) # (!\fstate.state_bit_2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \fstate.state_bit_0~q\,
	datac => \fstate.state_bit_2~q\,
	datad => \fstate.state_bit_1~q\,
	combout => \LED0~0_combout\);

ww_LED3 <= \LED3~output_o\;

ww_LED2 <= \LED2~output_o\;

ww_LED1 <= \LED1~output_o\;

ww_LED0 <= \LED0~output_o\;
END structure;


