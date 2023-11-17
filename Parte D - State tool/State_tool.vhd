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

-- Generated by Quartus II Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition
-- Created on Fri Nov 17 17:26:26 2023

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY State_tool IS
    PORT (
        reset : IN STD_LOGIC := '0';
        clock : IN STD_LOGIC;
        x : IN STD_LOGIC := '0';
        LEDs : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
END State_tool;

ARCHITECTURE BEHAVIOR OF State_tool IS
    TYPE type_fstate IS (OOOO,OIIO,IIII,IOOI,IOOO,IIOO,IIIO);
    SIGNAL fstate : type_fstate;
    SIGNAL reg_fstate : type_fstate;
BEGIN
    PROCESS (clock,reg_fstate)
    BEGIN
        IF (clock='1' AND clock'event) THEN
            fstate <= reg_fstate;
        END IF;
    END PROCESS;

    PROCESS (fstate,reset,x)
    BEGIN
        IF (reset='1') THEN
            reg_fstate <= OOOO;
            LEDs <= "0000";
        ELSE
            LEDs <= "0000";
            CASE fstate IS
                WHEN OOOO =>
                    IF ((x = '0')) THEN
                        reg_fstate <= OIIO;
                    ELSIF ((x = '1')) THEN
                        reg_fstate <= IOOO;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= OOOO;
                    END IF;

                    LEDs <= "0000";
                WHEN OIIO =>
                    reg_fstate <= IIII;

                    LEDs <= "0110";
                WHEN IIII =>
                    IF ((x = '0')) THEN
                        reg_fstate <= IOOI;
                    ELSIF ((x = '1')) THEN
                        reg_fstate <= IIIO;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= IIII;
                    END IF;

                    LEDs <= "1111";
                WHEN IOOI =>
                    reg_fstate <= OOOO;

                    LEDs <= "1001";
                WHEN IOOO =>
                    reg_fstate <= IIOO;

                    LEDs <= "1000";
                WHEN IIOO =>
                    reg_fstate <= IIII;

                    LEDs <= "1100";
                WHEN IIIO =>
                    reg_fstate <= OOOO;

                    LEDs <= "1110";
                WHEN OTHERS => 
                    LEDs <= "XXXX";
                    report "Reach undefined state";
            END CASE;
        END IF;
    END PROCESS;
END BEHAVIOR;
