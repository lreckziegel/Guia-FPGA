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

-- DATE "10/26/2023 15:44:54"

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
	clock : IN std_logic;
	out_z : OUT std_logic;
	out_c : OUT std_logic
	);
END sumador_completo;

-- Design Ports Information
-- out_z	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_c	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_a	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_b	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_c	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_clock : std_logic;
SIGNAL ww_out_z : std_logic;
SIGNAL ww_out_c : std_logic;
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \out_z~output_o\ : std_logic;
SIGNAL \out_c~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \in_a~input_o\ : std_logic;
SIGNAL \Da|Q~feeder_combout\ : std_logic;
SIGNAL \Da|Q~q\ : std_logic;
SIGNAL \in_b~input_o\ : std_logic;
SIGNAL \Db|Q~feeder_combout\ : std_logic;
SIGNAL \Db|Q~q\ : std_logic;
SIGNAL \in_c~input_o\ : std_logic;
SIGNAL \Dcin|Q~q\ : std_logic;
SIGNAL \z~0_combout\ : std_logic;
SIGNAL \Dz|Q~q\ : std_logic;
SIGNAL \c_out~0_combout\ : std_logic;
SIGNAL \Dcout|Q~q\ : std_logic;

BEGIN

ww_in_a <= in_a;
ww_in_b <= in_b;
ww_in_c <= in_c;
ww_clock <= clock;
out_z <= ww_out_z;
out_c <= ww_out_c;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

-- Location: IOOBUF_X0_Y23_N23
\out_z~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dz|Q~q\,
	devoe => ww_devoe,
	o => \out_z~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\out_c~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dcout|Q~q\,
	devoe => ww_devoe,
	o => \out_c~output_o\);

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

-- Location: IOIBUF_X18_Y0_N8
\in_a~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_a,
	o => \in_a~input_o\);

-- Location: LCCOMB_X18_Y23_N4
\Da|Q~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Da|Q~feeder_combout\ = \in_a~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_a~input_o\,
	combout => \Da|Q~feeder_combout\);

-- Location: FF_X18_Y23_N5
\Da|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Da|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Da|Q~q\);

-- Location: IOIBUF_X52_Y0_N15
\in_b~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_b,
	o => \in_b~input_o\);

-- Location: LCCOMB_X18_Y23_N22
\Db|Q~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Db|Q~feeder_combout\ = \in_b~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_b~input_o\,
	combout => \Db|Q~feeder_combout\);

-- Location: FF_X18_Y23_N23
\Db|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Db|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Db|Q~q\);

-- Location: IOIBUF_X81_Y73_N15
\in_c~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_c,
	o => \in_c~input_o\);

-- Location: FF_X18_Y23_N13
\Dcin|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_c~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dcin|Q~q\);

-- Location: LCCOMB_X18_Y23_N24
\z~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \z~0_combout\ = \Da|Q~q\ $ (\Db|Q~q\ $ (\Dcin|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Da|Q~q\,
	datac => \Db|Q~q\,
	datad => \Dcin|Q~q\,
	combout => \z~0_combout\);

-- Location: FF_X18_Y23_N25
\Dz|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \z~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dz|Q~q\);

-- Location: LCCOMB_X18_Y23_N30
\c_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \c_out~0_combout\ = (\Db|Q~q\ & ((\Da|Q~q\) # (\Dcin|Q~q\))) # (!\Db|Q~q\ & (\Da|Q~q\ & \Dcin|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Db|Q~q\,
	datac => \Da|Q~q\,
	datad => \Dcin|Q~q\,
	combout => \c_out~0_combout\);

-- Location: FF_X18_Y23_N31
\Dcout|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \c_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dcout|Q~q\);

ww_out_z <= \out_z~output_o\;

ww_out_c <= \out_c~output_o\;
END structure;


