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

-- DATE "11/14/2023 00:06:05"

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

ENTITY 	Sumador_restador IS
    PORT (
	f0 : OUT std_logic;
	clock : IN std_logic;
	a0 : IN std_logic;
	b0 : IN std_logic;
	suma_resta : IN std_logic;
	f1 : OUT std_logic;
	a1 : IN std_logic;
	b1 : IN std_logic;
	f2 : OUT std_logic;
	a2 : IN std_logic;
	b2 : IN std_logic;
	f3 : OUT std_logic;
	a3 : IN std_logic;
	b3 : IN std_logic;
	C : OUT std_logic;
	V : OUT std_logic;
	Z : OUT std_logic;
	N : OUT std_logic
	);
END Sumador_restador;

-- Design Ports Information
-- f0	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f1	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f2	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f3	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b0	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a1	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- suma_resta	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b1	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a2	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b2	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a3	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b3	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Sumador_restador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_f0 : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_a0 : std_logic;
SIGNAL ww_b0 : std_logic;
SIGNAL ww_suma_resta : std_logic;
SIGNAL ww_f1 : std_logic;
SIGNAL ww_a1 : std_logic;
SIGNAL ww_b1 : std_logic;
SIGNAL ww_f2 : std_logic;
SIGNAL ww_a2 : std_logic;
SIGNAL ww_b2 : std_logic;
SIGNAL ww_f3 : std_logic;
SIGNAL ww_a3 : std_logic;
SIGNAL ww_b3 : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_V : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL ww_N : std_logic;
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \f0~output_o\ : std_logic;
SIGNAL \f1~output_o\ : std_logic;
SIGNAL \f2~output_o\ : std_logic;
SIGNAL \f3~output_o\ : std_logic;
SIGNAL \C~output_o\ : std_logic;
SIGNAL \V~output_o\ : std_logic;
SIGNAL \Z~output_o\ : std_logic;
SIGNAL \N~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \a0~input_o\ : std_logic;
SIGNAL \inst8~feeder_combout\ : std_logic;
SIGNAL \inst8~q\ : std_logic;
SIGNAL \sum0|f~0_combout\ : std_logic;
SIGNAL \inst9~q\ : std_logic;
SIGNAL \a1~input_o\ : std_logic;
SIGNAL \inst11~q\ : std_logic;
SIGNAL \b0~input_o\ : std_logic;
SIGNAL \inst7~feeder_combout\ : std_logic;
SIGNAL \inst7~q\ : std_logic;
SIGNAL \suma_resta~input_o\ : std_logic;
SIGNAL \inst~feeder_combout\ : std_logic;
SIGNAL \inst~q\ : std_logic;
SIGNAL \sum0|c_out~1_combout\ : std_logic;
SIGNAL \b1~input_o\ : std_logic;
SIGNAL \inst10~q\ : std_logic;
SIGNAL \xor1~combout\ : std_logic;
SIGNAL \sum1|f~combout\ : std_logic;
SIGNAL \inst13~q\ : std_logic;
SIGNAL \b2~input_o\ : std_logic;
SIGNAL \inst12~feeder_combout\ : std_logic;
SIGNAL \inst12~q\ : std_logic;
SIGNAL \a2~input_o\ : std_logic;
SIGNAL \inst14~q\ : std_logic;
SIGNAL \sum0|c_out~0_combout\ : std_logic;
SIGNAL \sum1|c_out~0_combout\ : std_logic;
SIGNAL \sum2|f~0_combout\ : std_logic;
SIGNAL \inst15~q\ : std_logic;
SIGNAL \b3~input_o\ : std_logic;
SIGNAL \inst16~feeder_combout\ : std_logic;
SIGNAL \inst16~q\ : std_logic;
SIGNAL \sum2|c_out~0_combout\ : std_logic;
SIGNAL \sum3|f~0_combout\ : std_logic;
SIGNAL \inst18~q\ : std_logic;
SIGNAL \a3~input_o\ : std_logic;
SIGNAL \inst17~feeder_combout\ : std_logic;
SIGNAL \inst17~q\ : std_logic;
SIGNAL \xorC~combout\ : std_logic;
SIGNAL \inst22~q\ : std_logic;
SIGNAL \xorV~combout\ : std_logic;
SIGNAL \inst21~q\ : std_logic;
SIGNAL \norZ~combout\ : std_logic;
SIGNAL \inst20~q\ : std_logic;
SIGNAL \inst19~q\ : std_logic;

BEGIN

f0 <= ww_f0;
ww_clock <= clock;
ww_a0 <= a0;
ww_b0 <= b0;
ww_suma_resta <= suma_resta;
f1 <= ww_f1;
ww_a1 <= a1;
ww_b1 <= b1;
f2 <= ww_f2;
ww_a2 <= a2;
ww_b2 <= b2;
f3 <= ww_f3;
ww_a3 <= a3;
ww_b3 <= b3;
C <= ww_C;
V <= ww_V;
Z <= ww_Z;
N <= ww_N;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

-- Location: IOOBUF_X0_Y35_N9
\f0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9~q\,
	devoe => ww_devoe,
	o => \f0~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\f1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13~q\,
	devoe => ww_devoe,
	o => \f1~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\f2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15~q\,
	devoe => ww_devoe,
	o => \f2~output_o\);

-- Location: IOOBUF_X0_Y33_N16
\f3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst18~q\,
	devoe => ww_devoe,
	o => \f3~output_o\);

-- Location: IOOBUF_X0_Y59_N16
\C~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22~q\,
	devoe => ww_devoe,
	o => \C~output_o\);

-- Location: IOOBUF_X0_Y66_N23
\V~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21~q\,
	devoe => ww_devoe,
	o => \V~output_o\);

-- Location: IOOBUF_X0_Y65_N16
\Z~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst20~q\,
	devoe => ww_devoe,
	o => \Z~output_o\);

-- Location: IOOBUF_X0_Y60_N16
\N~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst19~q\,
	devoe => ww_devoe,
	o => \N~output_o\);

-- Location: IOIBUF_X56_Y73_N15
\clock~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G14
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

-- Location: IOIBUF_X5_Y73_N8
\a0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0,
	o => \a0~input_o\);

-- Location: LCCOMB_X1_Y69_N12
\inst8~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8~feeder_combout\ = \a0~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a0~input_o\,
	combout => \inst8~feeder_combout\);

-- Location: FF_X1_Y69_N13
inst8 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8~q\);

-- Location: LCCOMB_X1_Y69_N20
\sum0|f~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum0|f~0_combout\ = \inst7~q\ $ (\inst8~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7~q\,
	datab => \inst8~q\,
	combout => \sum0|f~0_combout\);

-- Location: FF_X1_Y69_N5
inst9 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \sum0|f~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9~q\);

-- Location: IOIBUF_X7_Y73_N15
\a1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a1,
	o => \a1~input_o\);

-- Location: FF_X1_Y69_N21
inst11 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \a1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11~q\);

-- Location: IOIBUF_X27_Y73_N22
\b0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b0,
	o => \b0~input_o\);

-- Location: LCCOMB_X1_Y69_N2
\inst7~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7~feeder_combout\ = \b0~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b0~input_o\,
	combout => \inst7~feeder_combout\);

-- Location: FF_X1_Y69_N3
inst7 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7~q\);

-- Location: IOIBUF_X0_Y69_N8
\suma_resta~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_suma_resta,
	o => \suma_resta~input_o\);

-- Location: LCCOMB_X1_Y69_N18
\inst~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst~feeder_combout\ = \suma_resta~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \suma_resta~input_o\,
	combout => \inst~feeder_combout\);

-- Location: FF_X1_Y69_N19
inst : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst~q\);

-- Location: LCCOMB_X1_Y69_N30
\sum0|c_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum0|c_out~1_combout\ = (\inst~q\ & (\inst8~q\ $ (!\inst7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8~q\,
	datab => \inst7~q\,
	datad => \inst~q\,
	combout => \sum0|c_out~1_combout\);

-- Location: IOIBUF_X29_Y73_N8
\b1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b1,
	o => \b1~input_o\);

-- Location: FF_X1_Y69_N1
inst10 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \b1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10~q\);

-- Location: LCCOMB_X1_Y69_N0
xor1 : cycloneiii_lcell_comb
-- Equation(s):
-- \xor1~combout\ = \inst10~q\ $ (\inst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10~q\,
	datad => \inst~q\,
	combout => \xor1~combout\);

-- Location: LCCOMB_X1_Y69_N26
\sum1|f\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum1|f~combout\ = \inst11~q\ $ (\xor1~combout\ $ (((\sum0|c_out~0_combout\) # (\sum0|c_out~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum0|c_out~0_combout\,
	datab => \inst11~q\,
	datac => \sum0|c_out~1_combout\,
	datad => \xor1~combout\,
	combout => \sum1|f~combout\);

-- Location: FF_X1_Y69_N27
inst13 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \sum1|f~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13~q\);

-- Location: IOIBUF_X38_Y73_N8
\b2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b2,
	o => \b2~input_o\);

-- Location: LCCOMB_X1_Y69_N24
\inst12~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12~feeder_combout\ = \b2~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2~input_o\,
	combout => \inst12~feeder_combout\);

-- Location: FF_X1_Y69_N25
inst12 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst12~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12~q\);

-- Location: IOIBUF_X29_Y73_N1
\a2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a2,
	o => \a2~input_o\);

-- Location: FF_X1_Y69_N7
inst14 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \a2~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14~q\);

-- Location: LCCOMB_X1_Y69_N4
\sum0|c_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum0|c_out~0_combout\ = (\inst8~q\ & (\inst7~q\ $ (\inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8~q\,
	datab => \inst7~q\,
	datad => \inst~q\,
	combout => \sum0|c_out~0_combout\);

-- Location: LCCOMB_X1_Y69_N10
\sum1|c_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum1|c_out~0_combout\ = (\inst11~q\ & ((\sum0|c_out~0_combout\) # ((\sum0|c_out~1_combout\) # (\xor1~combout\)))) # (!\inst11~q\ & (\xor1~combout\ & ((\sum0|c_out~0_combout\) # (\sum0|c_out~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11~q\,
	datab => \sum0|c_out~0_combout\,
	datac => \sum0|c_out~1_combout\,
	datad => \xor1~combout\,
	combout => \sum1|c_out~0_combout\);

-- Location: LCCOMB_X1_Y69_N16
\sum2|f~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum2|f~0_combout\ = \inst~q\ $ (\inst12~q\ $ (\inst14~q\ $ (\sum1|c_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst~q\,
	datab => \inst12~q\,
	datac => \inst14~q\,
	datad => \sum1|c_out~0_combout\,
	combout => \sum2|f~0_combout\);

-- Location: FF_X1_Y69_N17
inst15 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \sum2|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15~q\);

-- Location: IOIBUF_X42_Y73_N8
\b3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b3,
	o => \b3~input_o\);

-- Location: LCCOMB_X2_Y69_N30
\inst16~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16~feeder_combout\ = \b3~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b3~input_o\,
	combout => \inst16~feeder_combout\);

-- Location: FF_X2_Y69_N31
inst16 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst16~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16~q\);

-- Location: LCCOMB_X1_Y69_N6
\sum2|c_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum2|c_out~0_combout\ = (\inst14~q\ & ((\sum1|c_out~0_combout\) # (\inst~q\ $ (\inst12~q\)))) # (!\inst14~q\ & (\sum1|c_out~0_combout\ & (\inst~q\ $ (\inst12~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst~q\,
	datab => \inst12~q\,
	datac => \inst14~q\,
	datad => \sum1|c_out~0_combout\,
	combout => \sum2|c_out~0_combout\);

-- Location: LCCOMB_X1_Y69_N22
\sum3|f~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum3|f~0_combout\ = \inst17~q\ $ (\inst~q\ $ (\inst16~q\ $ (\sum2|c_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17~q\,
	datab => \inst~q\,
	datac => \inst16~q\,
	datad => \sum2|c_out~0_combout\,
	combout => \sum3|f~0_combout\);

-- Location: FF_X1_Y69_N23
inst18 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \sum3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18~q\);

-- Location: IOIBUF_X18_Y73_N22
\a3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a3,
	o => \a3~input_o\);

-- Location: LCCOMB_X2_Y69_N4
\inst17~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17~feeder_combout\ = \a3~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a3~input_o\,
	combout => \inst17~feeder_combout\);

-- Location: FF_X2_Y69_N5
inst17 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst17~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17~q\);

-- Location: LCCOMB_X1_Y69_N8
xorC : cycloneiii_lcell_comb
-- Equation(s):
-- \xorC~combout\ = (\sum2|c_out~0_combout\ & ((\inst17~q\ & ((!\inst~q\))) # (!\inst17~q\ & (\inst16~q\)))) # (!\sum2|c_out~0_combout\ & ((\inst17~q\ & (\inst16~q\)) # (!\inst17~q\ & ((\inst~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16~q\,
	datab => \inst~q\,
	datac => \sum2|c_out~0_combout\,
	datad => \inst17~q\,
	combout => \xorC~combout\);

-- Location: FF_X1_Y69_N9
inst22 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \xorC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22~q\);

-- Location: LCCOMB_X1_Y69_N14
xorV : cycloneiii_lcell_comb
-- Equation(s):
-- \xorV~combout\ = (\inst17~q\ & (!\sum2|c_out~0_combout\ & (\inst~q\ $ (\inst16~q\)))) # (!\inst17~q\ & (\sum2|c_out~0_combout\ & (\inst~q\ $ (!\inst16~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17~q\,
	datab => \inst~q\,
	datac => \inst16~q\,
	datad => \sum2|c_out~0_combout\,
	combout => \xorV~combout\);

-- Location: FF_X1_Y69_N15
inst21 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \xorV~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21~q\);

-- Location: LCCOMB_X1_Y69_N28
norZ : cycloneiii_lcell_comb
-- Equation(s):
-- \norZ~combout\ = (!\sum1|f~combout\ & (!\sum0|f~0_combout\ & (!\sum3|f~0_combout\ & !\sum2|f~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum1|f~combout\,
	datab => \sum0|f~0_combout\,
	datac => \sum3|f~0_combout\,
	datad => \sum2|f~0_combout\,
	combout => \norZ~combout\);

-- Location: FF_X1_Y69_N29
inst20 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \norZ~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20~q\);

-- Location: FF_X1_Y69_N31
inst19 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \sum3|f~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19~q\);

ww_f0 <= \f0~output_o\;

ww_f1 <= \f1~output_o\;

ww_f2 <= \f2~output_o\;

ww_f3 <= \f3~output_o\;

ww_C <= \C~output_o\;

ww_V <= \V~output_o\;

ww_Z <= \Z~output_o\;

ww_N <= \N~output_o\;
END structure;


