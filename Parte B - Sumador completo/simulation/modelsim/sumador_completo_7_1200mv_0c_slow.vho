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

-- DATE "11/09/2023 17:51:22"

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

ENTITY 	sumador_completo IS
    PORT (
	in_a : IN std_logic;
	in_b : IN std_logic;
	in_c : IN std_logic;
	clk : IN std_logic;
	out_f : OUT std_logic;
	out_c : OUT std_logic
	);
END sumador_completo;

-- Design Ports Information
-- out_f	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_c	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_a	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_b	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_c	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sumador_completo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_in_a : std_logic;
SIGNAL ww_in_b : std_logic;
SIGNAL ww_in_c : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_out_f : std_logic;
SIGNAL ww_out_c : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \out_f~output_o\ : std_logic;
SIGNAL \out_c~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \in_a~input_o\ : std_logic;
SIGNAL \D_a|Q~feeder_combout\ : std_logic;
SIGNAL \D_a|Q~q\ : std_logic;
SIGNAL \in_b~input_o\ : std_logic;
SIGNAL \D_b|Q~feeder_combout\ : std_logic;
SIGNAL \D_b|Q~q\ : std_logic;
SIGNAL \in_c~input_o\ : std_logic;
SIGNAL \D_cin|Q~q\ : std_logic;
SIGNAL \f~0_combout\ : std_logic;
SIGNAL \D_f|Q~q\ : std_logic;
SIGNAL \c_out~0_combout\ : std_logic;
SIGNAL \D_cout|Q~q\ : std_logic;

BEGIN

ww_in_a <= in_a;
ww_in_b <= in_b;
ww_in_c <= in_c;
ww_clk <= clk;
out_f <= ww_out_f;
out_c <= ww_out_c;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X0_Y24_N23
\out_f~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_f|Q~q\,
	devoe => ww_devoe,
	o => \out_f~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\out_c~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_cout|Q~q\,
	devoe => ww_devoe,
	o => \out_c~output_o\);

-- Location: IOIBUF_X56_Y73_N15
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G14
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X5_Y73_N8
\in_a~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_a,
	o => \in_a~input_o\);

-- Location: LCCOMB_X4_Y69_N8
\D_a|Q~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D_a|Q~feeder_combout\ = \in_a~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_a~input_o\,
	combout => \D_a|Q~feeder_combout\);

-- Location: FF_X4_Y69_N9
\D_a|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \D_a|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D_a|Q~q\);

-- Location: IOIBUF_X7_Y73_N15
\in_b~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_b,
	o => \in_b~input_o\);

-- Location: LCCOMB_X4_Y69_N22
\D_b|Q~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D_b|Q~feeder_combout\ = \in_b~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_b~input_o\,
	combout => \D_b|Q~feeder_combout\);

-- Location: FF_X4_Y69_N23
\D_b|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \D_b|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D_b|Q~q\);

-- Location: IOIBUF_X29_Y73_N1
\in_c~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_c,
	o => \in_c~input_o\);

-- Location: FF_X4_Y69_N25
\D_cin|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_c~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D_cin|Q~q\);

-- Location: LCCOMB_X4_Y69_N28
\f~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \f~0_combout\ = \D_a|Q~q\ $ (\D_b|Q~q\ $ (\D_cin|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D_a|Q~q\,
	datac => \D_b|Q~q\,
	datad => \D_cin|Q~q\,
	combout => \f~0_combout\);

-- Location: FF_X4_Y69_N29
\D_f|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D_f|Q~q\);

-- Location: LCCOMB_X4_Y69_N2
\c_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \c_out~0_combout\ = (\D_b|Q~q\ & ((\D_a|Q~q\) # (\D_cin|Q~q\))) # (!\D_b|Q~q\ & (\D_a|Q~q\ & \D_cin|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_b|Q~q\,
	datac => \D_a|Q~q\,
	datad => \D_cin|Q~q\,
	combout => \c_out~0_combout\);

-- Location: FF_X4_Y69_N3
\D_cout|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \c_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D_cout|Q~q\);

ww_out_f <= \out_f~output_o\;

ww_out_c <= \out_c~output_o\;
END structure;


