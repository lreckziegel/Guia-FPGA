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

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
-- CREATED		"Tue Nov 14 00:01:58 2023"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Sumador_restador IS 
	PORT
	(
		b0 :  IN  STD_LOGIC;
		suma/resta :  IN  STD_LOGIC;
		a0 :  IN  STD_LOGIC;
		b1 :  IN  STD_LOGIC;
		a1 :  IN  STD_LOGIC;
		b2 :  IN  STD_LOGIC;
		a2 :  IN  STD_LOGIC;
		b3 :  IN  STD_LOGIC;
		a3 :  IN  STD_LOGIC;
		clock :  IN  STD_LOGIC;
		f0 :  OUT  STD_LOGIC;
		f1 :  OUT  STD_LOGIC;
		f2 :  OUT  STD_LOGIC;
		f3 :  OUT  STD_LOGIC;
		C :  OUT  STD_LOGIC;
		V :  OUT  STD_LOGIC;
		Z :  OUT  STD_LOGIC;
		N :  OUT  STD_LOGIC
	);
END Sumador_restador;

ARCHITECTURE bdf_type OF Sumador_restador IS 

COMPONENT sumador_completo
	PORT(a : IN STD_LOGIC;
		 b : IN STD_LOGIC;
		 c_in : IN STD_LOGIC;
		 f : OUT STD_LOGIC;
		 c_out : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_22 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_23 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_24 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_25 :  STD_LOGIC;
SIGNAL	DFF_inst8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_26 :  STD_LOGIC;
SIGNAL	DFF_inst11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	DFF_inst14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;
SIGNAL	DFF_inst17 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_27 :  STD_LOGIC;
SIGNAL	DFF_inst7 :  STD_LOGIC;
SIGNAL	DFF_inst10 :  STD_LOGIC;
SIGNAL	DFF_inst12 :  STD_LOGIC;
SIGNAL	DFF_inst16 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_28 :  STD_LOGIC;


BEGIN 



PROCESS(clock)
BEGIN
IF (RISING_EDGE(clock)) THEN
	SYNTHESIZED_WIRE_26 <= suma/resta;
END IF;
END PROCESS;


PROCESS(clock)
BEGIN
IF (RISING_EDGE(clock)) THEN
	DFF_inst10 <= b1;
END IF;
END PROCESS;


PROCESS(clock)
BEGIN
IF (RISING_EDGE(clock)) THEN
	DFF_inst11 <= a1;
END IF;
END PROCESS;


PROCESS(clock)
BEGIN
IF (RISING_EDGE(clock)) THEN
	DFF_inst12 <= b2;
END IF;
END PROCESS;


PROCESS(clock)
BEGIN
IF (RISING_EDGE(clock)) THEN
	f1 <= SYNTHESIZED_WIRE_22;
END IF;
END PROCESS;


PROCESS(clock)
BEGIN
IF (RISING_EDGE(clock)) THEN
	DFF_inst14 <= a2;
END IF;
END PROCESS;


PROCESS(clock)
BEGIN
IF (RISING_EDGE(clock)) THEN
	f2 <= SYNTHESIZED_WIRE_23;
END IF;
END PROCESS;


PROCESS(clock)
BEGIN
IF (RISING_EDGE(clock)) THEN
	DFF_inst16 <= b3;
END IF;
END PROCESS;


PROCESS(clock)
BEGIN
IF (RISING_EDGE(clock)) THEN
	DFF_inst17 <= a3;
END IF;
END PROCESS;


PROCESS(clock)
BEGIN
IF (RISING_EDGE(clock)) THEN
	f3 <= SYNTHESIZED_WIRE_24;
END IF;
END PROCESS;


PROCESS(clock)
BEGIN
IF (RISING_EDGE(clock)) THEN
	N <= SYNTHESIZED_WIRE_24;
END IF;
END PROCESS;


PROCESS(clock)
BEGIN
IF (RISING_EDGE(clock)) THEN
	Z <= SYNTHESIZED_WIRE_4;
END IF;
END PROCESS;


PROCESS(clock)
BEGIN
IF (RISING_EDGE(clock)) THEN
	V <= SYNTHESIZED_WIRE_5;
END IF;
END PROCESS;


PROCESS(clock)
BEGIN
IF (RISING_EDGE(clock)) THEN
	C <= SYNTHESIZED_WIRE_6;
END IF;
END PROCESS;


PROCESS(clock)
BEGIN
IF (RISING_EDGE(clock)) THEN
	DFF_inst7 <= b0;
END IF;
END PROCESS;


PROCESS(clock)
BEGIN
IF (RISING_EDGE(clock)) THEN
	DFF_inst8 <= a0;
END IF;
END PROCESS;


PROCESS(clock)
BEGIN
IF (RISING_EDGE(clock)) THEN
	f0 <= SYNTHESIZED_WIRE_25;
END IF;
END PROCESS;


SYNTHESIZED_WIRE_4 <= NOT(SYNTHESIZED_WIRE_25 OR SYNTHESIZED_WIRE_23 OR SYNTHESIZED_WIRE_22 OR SYNTHESIZED_WIRE_24);


b2v_sum0 : sumador_completo
PORT MAP(a => DFF_inst8,
		 b => SYNTHESIZED_WIRE_12,
		 c_in => SYNTHESIZED_WIRE_26,
		 f => SYNTHESIZED_WIRE_25,
		 c_out => SYNTHESIZED_WIRE_14);


b2v_sum1 : sumador_completo
PORT MAP(a => DFF_inst11,
		 b => SYNTHESIZED_WIRE_13,
		 c_in => SYNTHESIZED_WIRE_14,
		 f => SYNTHESIZED_WIRE_22,
		 c_out => SYNTHESIZED_WIRE_16);


b2v_sum2 : sumador_completo
PORT MAP(a => DFF_inst14,
		 b => SYNTHESIZED_WIRE_15,
		 c_in => SYNTHESIZED_WIRE_16,
		 f => SYNTHESIZED_WIRE_23,
		 c_out => SYNTHESIZED_WIRE_27);


b2v_sum3 : sumador_completo
PORT MAP(a => DFF_inst17,
		 b => SYNTHESIZED_WIRE_17,
		 c_in => SYNTHESIZED_WIRE_27,
		 f => SYNTHESIZED_WIRE_24,
		 c_out => SYNTHESIZED_WIRE_28);


SYNTHESIZED_WIRE_12 <= DFF_inst7 XOR SYNTHESIZED_WIRE_26;


SYNTHESIZED_WIRE_13 <= DFF_inst10 XOR SYNTHESIZED_WIRE_26;


SYNTHESIZED_WIRE_15 <= DFF_inst12 XOR SYNTHESIZED_WIRE_26;


SYNTHESIZED_WIRE_17 <= DFF_inst16 XOR SYNTHESIZED_WIRE_26;


SYNTHESIZED_WIRE_6 <= SYNTHESIZED_WIRE_26 XOR SYNTHESIZED_WIRE_28;


SYNTHESIZED_WIRE_5 <= SYNTHESIZED_WIRE_28 XOR SYNTHESIZED_WIRE_27;


END bdf_type;