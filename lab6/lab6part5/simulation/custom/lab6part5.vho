-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition"

-- DATE "09/22/2022 12:07:02"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for Custom VHDL only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab6part5 IS
    PORT (
	sw : IN std_logic_vector(9 DOWNTO 0);
	key0 : IN std_logic;
	key1 : IN std_logic;
	ledr : BUFFER std_logic_vector(7 DOWNTO 0);
	hex3 : BUFFER std_logic_vector(0 TO 6);
	hex2 : BUFFER std_logic_vector(0 TO 6);
	hex1 : BUFFER std_logic_vector(0 TO 6);
	hex0 : BUFFER std_logic_vector(0 TO 6)
	);
END lab6part5;

-- Design Ports Information
-- key0	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key1	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[0]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[1]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[2]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[3]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[4]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[5]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[6]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[7]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[6]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[5]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[4]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[3]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[2]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[0]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[6]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[5]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[4]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[3]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[2]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[1]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[0]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[6]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[5]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[4]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[3]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[2]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[1]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[0]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[6]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[5]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[4]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[3]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[2]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[1]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[0]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[9]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[8]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab6part5 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sw : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_key0 : std_logic;
SIGNAL ww_key1 : std_logic;
SIGNAL ww_ledr : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_hex3 : std_logic_vector(0 TO 6);
SIGNAL ww_hex2 : std_logic_vector(0 TO 6);
SIGNAL ww_hex1 : std_logic_vector(0 TO 6);
SIGNAL ww_hex0 : std_logic_vector(0 TO 6);
SIGNAL \key0~input_o\ : std_logic;
SIGNAL \key1~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \sw[8]~input_o\ : std_logic;
SIGNAL \r1|d6|Q~combout\ : std_logic;
SIGNAL \sw[9]~input_o\ : std_logic;
SIGNAL \r0|d7|Q~combout\ : std_logic;
SIGNAL \r1|d7|Q~combout\ : std_logic;
SIGNAL \r0|d6|Q~combout\ : std_logic;
SIGNAL \r0|d5|Q~combout\ : std_logic;
SIGNAL \r0|d4|Q~combout\ : std_logic;
SIGNAL \r0|d3|Q~combout\ : std_logic;
SIGNAL \r0|d2|Q~combout\ : std_logic;
SIGNAL \r0|d0|Q~combout\ : std_logic;
SIGNAL \r0|d1|Q~combout\ : std_logic;
SIGNAL \f4|u0:9:cell_i|c_out~0_combout\ : std_logic;
SIGNAL \f4|u0:11:cell_i|c_out~0_combout\ : std_logic;
SIGNAL \f4|u0:13:cell_i|s~combout\ : std_logic;
SIGNAL \r1|d5|Q~combout\ : std_logic;
SIGNAL \r1|d4|Q~combout\ : std_logic;
SIGNAL \f3|u0:7:cell_i|c_out~0_combout\ : std_logic;
SIGNAL \f3|u0:9:cell_i|s~combout\ : std_logic;
SIGNAL \f3|u0:10:cell_i|s~0_combout\ : std_logic;
SIGNAL \f4|u0:9:cell_i|s~combout\ : std_logic;
SIGNAL \f4|u0:10:cell_i|s~combout\ : std_logic;
SIGNAL \f3|u0:9:cell_i|c_out~0_combout\ : std_logic;
SIGNAL \f4|u0:8:cell_i|s~combout\ : std_logic;
SIGNAL \f3|u0:7:cell_i|s~combout\ : std_logic;
SIGNAL \f3|u0:8:cell_i|s~0_combout\ : std_logic;
SIGNAL \f6|u0:6:cell_i|c_out~0_combout\ : std_logic;
SIGNAL \f4|u0:7:cell_i|s~0_combout\ : std_logic;
SIGNAL \f6|u0:8:cell_i|c_out~0_combout\ : std_logic;
SIGNAL \f6|u0:10:cell_i|c_out~0_combout\ : std_logic;
SIGNAL \f3|u0:11:cell_i|s~combout\ : std_logic;
SIGNAL \f4|u0:11:cell_i|s~combout\ : std_logic;
SIGNAL \f4|u0:12:cell_i|s~0_combout\ : std_logic;
SIGNAL \f3|u0:12:cell_i|s~combout\ : std_logic;
SIGNAL \f6|u0:12:cell_i|c_out~0_combout\ : std_logic;
SIGNAL \f3|u0:12:cell_i|c_out~0_combout\ : std_logic;
SIGNAL \f6|u0:13:cell_i|s~combout\ : std_logic;
SIGNAL \f6|u0:12:cell_i|s~combout\ : std_logic;
SIGNAL \f6|u0:13:cell_i|c_out~0_combout\ : std_logic;
SIGNAL \r1|d0|Q~combout\ : std_logic;
SIGNAL \r1|d1|Q~combout\ : std_logic;
SIGNAL \f1|u0:3:cell_i|c_out~combout\ : std_logic;
SIGNAL \f1|u0:5:cell_i|c_out~0_combout\ : std_logic;
SIGNAL \f1|u0:8:cell_i|c_out~0_combout\ : std_logic;
SIGNAL \r1|d3|Q~combout\ : std_logic;
SIGNAL \r1|d2|Q~combout\ : std_logic;
SIGNAL \f2|u0:5:cell_i|c_out~combout\ : std_logic;
SIGNAL \f2|u0:7:cell_i|c_out~0_combout\ : std_logic;
SIGNAL \f2|u0:9:cell_i|c_out~0_combout\ : std_logic;
SIGNAL \f2|u0:9:cell_i|s~combout\ : std_logic;
SIGNAL \f2|u0:6:cell_i|s~combout\ : std_logic;
SIGNAL \f1|u0:6:cell_i|s~0_combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \f1|u0:5:cell_i|s~0_combout\ : std_logic;
SIGNAL \f1|u0:5:cell_i|s~combout\ : std_logic;
SIGNAL \f2|u0:4:cell_i|s~combout\ : std_logic;
SIGNAL \f5|u0:2:cell_i|c_out~0_combout\ : std_logic;
SIGNAL \f2|u0:3:cell_i|s~0_combout\ : std_logic;
SIGNAL \f1|u0:4:cell_i|s~0_combout\ : std_logic;
SIGNAL \f1|u0:3:cell_i|s~combout\ : std_logic;
SIGNAL \f5|u0:4:cell_i|c_out~0_combout\ : std_logic;
SIGNAL \f2|u0:5:cell_i|s~combout\ : std_logic;
SIGNAL \f5|u0:6:cell_i|c_out~0_combout\ : std_logic;
SIGNAL \f1|u0:7:cell_i|s~0_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \f1|u0:7:cell_i|s~combout\ : std_logic;
SIGNAL \f2|u0:7:cell_i|s~combout\ : std_logic;
SIGNAL \f2|u0:8:cell_i|s~0_combout\ : std_logic;
SIGNAL \f1|u0:8:cell_i|s~combout\ : std_logic;
SIGNAL \f5|u0:8:cell_i|c_out~0_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \f5|u0:11:cell_i|s~combout\ : std_logic;
SIGNAL \f6|u0:10:cell_i|s~combout\ : std_logic;
SIGNAL \f5|u0:10:cell_i|s~combout\ : std_logic;
SIGNAL \f5|u0:9:cell_i|s~0_combout\ : std_logic;
SIGNAL \f6|u0:8:cell_i|s~combout\ : std_logic;
SIGNAL \f6|u0:9:cell_i|s~combout\ : std_logic;
SIGNAL \f5|u0:8:cell_i|s~combout\ : std_logic;
SIGNAL \f6|u0:7:cell_i|s~combout\ : std_logic;
SIGNAL \f5|u0:7:cell_i|s~0_combout\ : std_logic;
SIGNAL \f5|u0:6:cell_i|s~combout\ : std_logic;
SIGNAL \f6|u0:6:cell_i|s~0_combout\ : std_logic;
SIGNAL \f3|u0:5:cell_i|s~0_combout\ : std_logic;
SIGNAL \f5|u0:5:cell_i|s~0_combout\ : std_logic;
SIGNAL \f1|u0:4:cell_i|s~combout\ : std_logic;
SIGNAL \f5|u0:3:cell_i|c_out~combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \f7|u0:5:cell_i|c_out~0_combout\ : std_logic;
SIGNAL \f7|u0:7:cell_i|c_out~0_combout\ : std_logic;
SIGNAL \f7|u0:9:cell_i|c_out~0_combout\ : std_logic;
SIGNAL \f6|u0:11:cell_i|s~combout\ : std_logic;
SIGNAL \f7|u0:11:cell_i|c_out~0_combout\ : std_logic;
SIGNAL \f4|u0:13:cell_i|c_out~0_combout\ : std_logic;
SIGNAL \comb~4_combout\ : std_logic;
SIGNAL \h3|hex[6]~0_combout\ : std_logic;
SIGNAL \h3|hex[5]~1_combout\ : std_logic;
SIGNAL \h3|hex[4]~2_combout\ : std_logic;
SIGNAL \h3|hex[3]~3_combout\ : std_logic;
SIGNAL \h3|hex[2]~4_combout\ : std_logic;
SIGNAL \h3|hex[1]~5_combout\ : std_logic;
SIGNAL \h3|hex[0]~6_combout\ : std_logic;
SIGNAL \f7|u0:9:cell_i|s~combout\ : std_logic;
SIGNAL \f7|u0:11:cell_i|s~0_combout\ : std_logic;
SIGNAL \f7|u0:8:cell_i|s~combout\ : std_logic;
SIGNAL \h2|hex[6]~0_combout\ : std_logic;
SIGNAL \h2|hex[5]~1_combout\ : std_logic;
SIGNAL \h2|hex[4]~2_combout\ : std_logic;
SIGNAL \h2|hex[3]~3_combout\ : std_logic;
SIGNAL \h2|hex[2]~4_combout\ : std_logic;
SIGNAL \h2|hex[1]~5_combout\ : std_logic;
SIGNAL \h2|hex[0]~6_combout\ : std_logic;
SIGNAL \f7|u0:6:cell_i|s~combout\ : std_logic;
SIGNAL \f7|u0:7:cell_i|s~combout\ : std_logic;
SIGNAL \f7|u0:4:cell_i|s~0_combout\ : std_logic;
SIGNAL \f7|u0:5:cell_i|s~combout\ : std_logic;
SIGNAL \h1|hex[6]~0_combout\ : std_logic;
SIGNAL \h1|hex[5]~1_combout\ : std_logic;
SIGNAL \h1|hex[4]~2_combout\ : std_logic;
SIGNAL \h1|hex[3]~3_combout\ : std_logic;
SIGNAL \h1|hex[2]~4_combout\ : std_logic;
SIGNAL \h1|hex[1]~5_combout\ : std_logic;
SIGNAL \h1|hex[0]~6_combout\ : std_logic;
SIGNAL \f1|u0:1:cell_i|s~0_combout\ : std_logic;
SIGNAL \comb~5_combout\ : std_logic;
SIGNAL \f5|u0:3:cell_i|s~combout\ : std_logic;
SIGNAL \f5|u0:2:cell_i|s~0_combout\ : std_logic;
SIGNAL \h0|hex[6]~0_combout\ : std_logic;
SIGNAL \h0|hex[5]~1_combout\ : std_logic;
SIGNAL \h0|hex[4]~2_combout\ : std_logic;
SIGNAL \h0|hex[3]~3_combout\ : std_logic;
SIGNAL \h0|hex[2]~4_combout\ : std_logic;
SIGNAL \h0|hex[1]~5_combout\ : std_logic;
SIGNAL \h0|hex[0]~6_combout\ : std_logic;
SIGNAL \f7|u0:11:cell_i|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \f7|u0:8:cell_i|ALT_INV_s~combout\ : std_logic;
SIGNAL \f7|u0:9:cell_i|ALT_INV_s~combout\ : std_logic;
SIGNAL \f6|u0:13:cell_i|ALT_INV_c_out~0_combout\ : std_logic;
SIGNAL \f4|u0:13:cell_i|ALT_INV_c_out~0_combout\ : std_logic;
SIGNAL \ALT_INV_comb~4_combout\ : std_logic;
SIGNAL \f6|u0:13:cell_i|ALT_INV_s~combout\ : std_logic;
SIGNAL \f4|u0:13:cell_i|ALT_INV_s~combout\ : std_logic;
SIGNAL \f6|u0:12:cell_i|ALT_INV_c_out~0_combout\ : std_logic;
SIGNAL \f3|u0:12:cell_i|ALT_INV_c_out~0_combout\ : std_logic;
SIGNAL \f6|u0:12:cell_i|ALT_INV_s~combout\ : std_logic;
SIGNAL \f4|u0:12:cell_i|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \f3|u0:12:cell_i|ALT_INV_s~combout\ : std_logic;
SIGNAL \f4|u0:11:cell_i|ALT_INV_c_out~0_combout\ : std_logic;
SIGNAL \f7|u0:11:cell_i|ALT_INV_c_out~0_combout\ : std_logic;
SIGNAL \f7|u0:9:cell_i|ALT_INV_c_out~0_combout\ : std_logic;
SIGNAL \f7|u0:7:cell_i|ALT_INV_c_out~0_combout\ : std_logic;
SIGNAL \f5|u0:6:cell_i|ALT_INV_s~combout\ : std_logic;
SIGNAL \f7|u0:5:cell_i|ALT_INV_c_out~0_combout\ : std_logic;
SIGNAL \f5|u0:5:cell_i|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \ALT_INV_comb~3_combout\ : std_logic;
SIGNAL \f3|u0:5:cell_i|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \f5|u0:3:cell_i|ALT_INV_c_out~combout\ : std_logic;
SIGNAL \f1|u0:4:cell_i|ALT_INV_s~combout\ : std_logic;
SIGNAL \f6|u0:6:cell_i|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \f6|u0:7:cell_i|ALT_INV_s~combout\ : std_logic;
SIGNAL \f5|u0:7:cell_i|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \f6|u0:8:cell_i|ALT_INV_s~combout\ : std_logic;
SIGNAL \f5|u0:8:cell_i|ALT_INV_s~combout\ : std_logic;
SIGNAL \f6|u0:9:cell_i|ALT_INV_s~combout\ : std_logic;
SIGNAL \f5|u0:9:cell_i|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \f6|u0:10:cell_i|ALT_INV_s~combout\ : std_logic;
SIGNAL \f5|u0:10:cell_i|ALT_INV_s~combout\ : std_logic;
SIGNAL \f6|u0:11:cell_i|ALT_INV_s~combout\ : std_logic;
SIGNAL \f6|u0:10:cell_i|ALT_INV_c_out~0_combout\ : std_logic;
SIGNAL \f6|u0:8:cell_i|ALT_INV_c_out~0_combout\ : std_logic;
SIGNAL \f4|u0:8:cell_i|ALT_INV_s~combout\ : std_logic;
SIGNAL \f3|u0:8:cell_i|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \f4|u0:7:cell_i|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \f3|u0:7:cell_i|ALT_INV_s~combout\ : std_logic;
SIGNAL \f6|u0:6:cell_i|ALT_INV_c_out~0_combout\ : std_logic;
SIGNAL \f4|u0:9:cell_i|ALT_INV_s~combout\ : std_logic;
SIGNAL \f3|u0:9:cell_i|ALT_INV_s~combout\ : std_logic;
SIGNAL \f4|u0:10:cell_i|ALT_INV_s~combout\ : std_logic;
SIGNAL \f3|u0:10:cell_i|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \f4|u0:11:cell_i|ALT_INV_s~combout\ : std_logic;
SIGNAL \f4|u0:9:cell_i|ALT_INV_c_out~0_combout\ : std_logic;
SIGNAL \f3|u0:11:cell_i|ALT_INV_s~combout\ : std_logic;
SIGNAL \f3|u0:9:cell_i|ALT_INV_c_out~0_combout\ : std_logic;
SIGNAL \f3|u0:7:cell_i|ALT_INV_c_out~0_combout\ : std_logic;
SIGNAL \f5|u0:11:cell_i|ALT_INV_s~combout\ : std_logic;
SIGNAL \f5|u0:8:cell_i|ALT_INV_c_out~0_combout\ : std_logic;
SIGNAL \f5|u0:6:cell_i|ALT_INV_c_out~0_combout\ : std_logic;
SIGNAL \f5|u0:4:cell_i|ALT_INV_c_out~0_combout\ : std_logic;
SIGNAL \f1|u0:3:cell_i|ALT_INV_s~combout\ : std_logic;
SIGNAL \f5|u0:2:cell_i|ALT_INV_c_out~0_combout\ : std_logic;
SIGNAL \f2|u0:3:cell_i|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \f2|u0:4:cell_i|ALT_INV_s~combout\ : std_logic;
SIGNAL \f1|u0:4:cell_i|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \f2|u0:5:cell_i|ALT_INV_s~combout\ : std_logic;
SIGNAL \f1|u0:5:cell_i|ALT_INV_s~combout\ : std_logic;
SIGNAL \f1|u0:5:cell_i|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \ALT_INV_comb~2_combout\ : std_logic;
SIGNAL \f2|u0:6:cell_i|ALT_INV_s~combout\ : std_logic;
SIGNAL \f1|u0:6:cell_i|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \f2|u0:7:cell_i|ALT_INV_s~combout\ : std_logic;
SIGNAL \f1|u0:7:cell_i|ALT_INV_s~combout\ : std_logic;
SIGNAL \f1|u0:7:cell_i|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \f2|u0:8:cell_i|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \f1|u0:8:cell_i|ALT_INV_s~combout\ : std_logic;
SIGNAL \f2|u0:9:cell_i|ALT_INV_s~combout\ : std_logic;
SIGNAL \f1|u0:8:cell_i|ALT_INV_c_out~0_combout\ : std_logic;
SIGNAL \f1|u0:5:cell_i|ALT_INV_c_out~0_combout\ : std_logic;
SIGNAL \f1|u0:3:cell_i|ALT_INV_c_out~combout\ : std_logic;
SIGNAL \f2|u0:9:cell_i|ALT_INV_c_out~0_combout\ : std_logic;
SIGNAL \f2|u0:7:cell_i|ALT_INV_c_out~0_combout\ : std_logic;
SIGNAL \f2|u0:5:cell_i|ALT_INV_c_out~combout\ : std_logic;
SIGNAL \ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \ALT_INV_sw[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[0]~input_o\ : std_logic;
SIGNAL \r1|d7|ALT_INV_Q~combout\ : std_logic;
SIGNAL \r1|d6|ALT_INV_Q~combout\ : std_logic;
SIGNAL \r1|d4|ALT_INV_Q~combout\ : std_logic;
SIGNAL \r1|d5|ALT_INV_Q~combout\ : std_logic;
SIGNAL \r1|d0|ALT_INV_Q~combout\ : std_logic;
SIGNAL \r1|d1|ALT_INV_Q~combout\ : std_logic;
SIGNAL \r0|d0|ALT_INV_Q~combout\ : std_logic;
SIGNAL \r0|d2|ALT_INV_Q~combout\ : std_logic;
SIGNAL \r0|d1|ALT_INV_Q~combout\ : std_logic;
SIGNAL \r0|d3|ALT_INV_Q~combout\ : std_logic;
SIGNAL \r0|d4|ALT_INV_Q~combout\ : std_logic;
SIGNAL \r1|d2|ALT_INV_Q~combout\ : std_logic;
SIGNAL \r0|d5|ALT_INV_Q~combout\ : std_logic;
SIGNAL \r0|d6|ALT_INV_Q~combout\ : std_logic;
SIGNAL \r1|d3|ALT_INV_Q~combout\ : std_logic;
SIGNAL \r0|d7|ALT_INV_Q~combout\ : std_logic;
SIGNAL \f5|u0:3:cell_i|ALT_INV_s~combout\ : std_logic;
SIGNAL \ALT_INV_comb~5_combout\ : std_logic;
SIGNAL \f5|u0:2:cell_i|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \f1|u0:1:cell_i|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \f7|u0:7:cell_i|ALT_INV_s~combout\ : std_logic;
SIGNAL \f7|u0:4:cell_i|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \f7|u0:6:cell_i|ALT_INV_s~combout\ : std_logic;
SIGNAL \f7|u0:5:cell_i|ALT_INV_s~combout\ : std_logic;

BEGIN

ww_sw <= sw;
ww_key0 <= key0;
ww_key1 <= key1;
ledr <= ww_ledr;
hex3 <= ww_hex3;
hex2 <= ww_hex2;
hex1 <= ww_hex1;
hex0 <= ww_hex0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\f7|u0:11:cell_i|ALT_INV_s~0_combout\ <= NOT \f7|u0:11:cell_i|s~0_combout\;
\f7|u0:8:cell_i|ALT_INV_s~combout\ <= NOT \f7|u0:8:cell_i|s~combout\;
\f7|u0:9:cell_i|ALT_INV_s~combout\ <= NOT \f7|u0:9:cell_i|s~combout\;
\f6|u0:13:cell_i|ALT_INV_c_out~0_combout\ <= NOT \f6|u0:13:cell_i|c_out~0_combout\;
\f4|u0:13:cell_i|ALT_INV_c_out~0_combout\ <= NOT \f4|u0:13:cell_i|c_out~0_combout\;
\ALT_INV_comb~4_combout\ <= NOT \comb~4_combout\;
\f6|u0:13:cell_i|ALT_INV_s~combout\ <= NOT \f6|u0:13:cell_i|s~combout\;
\f4|u0:13:cell_i|ALT_INV_s~combout\ <= NOT \f4|u0:13:cell_i|s~combout\;
\f6|u0:12:cell_i|ALT_INV_c_out~0_combout\ <= NOT \f6|u0:12:cell_i|c_out~0_combout\;
\f3|u0:12:cell_i|ALT_INV_c_out~0_combout\ <= NOT \f3|u0:12:cell_i|c_out~0_combout\;
\f6|u0:12:cell_i|ALT_INV_s~combout\ <= NOT \f6|u0:12:cell_i|s~combout\;
\f4|u0:12:cell_i|ALT_INV_s~0_combout\ <= NOT \f4|u0:12:cell_i|s~0_combout\;
\f3|u0:12:cell_i|ALT_INV_s~combout\ <= NOT \f3|u0:12:cell_i|s~combout\;
\f4|u0:11:cell_i|ALT_INV_c_out~0_combout\ <= NOT \f4|u0:11:cell_i|c_out~0_combout\;
\f7|u0:11:cell_i|ALT_INV_c_out~0_combout\ <= NOT \f7|u0:11:cell_i|c_out~0_combout\;
\f7|u0:9:cell_i|ALT_INV_c_out~0_combout\ <= NOT \f7|u0:9:cell_i|c_out~0_combout\;
\f7|u0:7:cell_i|ALT_INV_c_out~0_combout\ <= NOT \f7|u0:7:cell_i|c_out~0_combout\;
\f5|u0:6:cell_i|ALT_INV_s~combout\ <= NOT \f5|u0:6:cell_i|s~combout\;
\f7|u0:5:cell_i|ALT_INV_c_out~0_combout\ <= NOT \f7|u0:5:cell_i|c_out~0_combout\;
\f5|u0:5:cell_i|ALT_INV_s~0_combout\ <= NOT \f5|u0:5:cell_i|s~0_combout\;
\ALT_INV_comb~3_combout\ <= NOT \comb~3_combout\;
\f3|u0:5:cell_i|ALT_INV_s~0_combout\ <= NOT \f3|u0:5:cell_i|s~0_combout\;
\f5|u0:3:cell_i|ALT_INV_c_out~combout\ <= NOT \f5|u0:3:cell_i|c_out~combout\;
\f1|u0:4:cell_i|ALT_INV_s~combout\ <= NOT \f1|u0:4:cell_i|s~combout\;
\f6|u0:6:cell_i|ALT_INV_s~0_combout\ <= NOT \f6|u0:6:cell_i|s~0_combout\;
\f6|u0:7:cell_i|ALT_INV_s~combout\ <= NOT \f6|u0:7:cell_i|s~combout\;
\f5|u0:7:cell_i|ALT_INV_s~0_combout\ <= NOT \f5|u0:7:cell_i|s~0_combout\;
\f6|u0:8:cell_i|ALT_INV_s~combout\ <= NOT \f6|u0:8:cell_i|s~combout\;
\f5|u0:8:cell_i|ALT_INV_s~combout\ <= NOT \f5|u0:8:cell_i|s~combout\;
\f6|u0:9:cell_i|ALT_INV_s~combout\ <= NOT \f6|u0:9:cell_i|s~combout\;
\f5|u0:9:cell_i|ALT_INV_s~0_combout\ <= NOT \f5|u0:9:cell_i|s~0_combout\;
\f6|u0:10:cell_i|ALT_INV_s~combout\ <= NOT \f6|u0:10:cell_i|s~combout\;
\f5|u0:10:cell_i|ALT_INV_s~combout\ <= NOT \f5|u0:10:cell_i|s~combout\;
\f6|u0:11:cell_i|ALT_INV_s~combout\ <= NOT \f6|u0:11:cell_i|s~combout\;
\f6|u0:10:cell_i|ALT_INV_c_out~0_combout\ <= NOT \f6|u0:10:cell_i|c_out~0_combout\;
\f6|u0:8:cell_i|ALT_INV_c_out~0_combout\ <= NOT \f6|u0:8:cell_i|c_out~0_combout\;
\f4|u0:8:cell_i|ALT_INV_s~combout\ <= NOT \f4|u0:8:cell_i|s~combout\;
\f3|u0:8:cell_i|ALT_INV_s~0_combout\ <= NOT \f3|u0:8:cell_i|s~0_combout\;
\f4|u0:7:cell_i|ALT_INV_s~0_combout\ <= NOT \f4|u0:7:cell_i|s~0_combout\;
\f3|u0:7:cell_i|ALT_INV_s~combout\ <= NOT \f3|u0:7:cell_i|s~combout\;
\f6|u0:6:cell_i|ALT_INV_c_out~0_combout\ <= NOT \f6|u0:6:cell_i|c_out~0_combout\;
\f4|u0:9:cell_i|ALT_INV_s~combout\ <= NOT \f4|u0:9:cell_i|s~combout\;
\f3|u0:9:cell_i|ALT_INV_s~combout\ <= NOT \f3|u0:9:cell_i|s~combout\;
\f4|u0:10:cell_i|ALT_INV_s~combout\ <= NOT \f4|u0:10:cell_i|s~combout\;
\f3|u0:10:cell_i|ALT_INV_s~0_combout\ <= NOT \f3|u0:10:cell_i|s~0_combout\;
\f4|u0:11:cell_i|ALT_INV_s~combout\ <= NOT \f4|u0:11:cell_i|s~combout\;
\f4|u0:9:cell_i|ALT_INV_c_out~0_combout\ <= NOT \f4|u0:9:cell_i|c_out~0_combout\;
\f3|u0:11:cell_i|ALT_INV_s~combout\ <= NOT \f3|u0:11:cell_i|s~combout\;
\f3|u0:9:cell_i|ALT_INV_c_out~0_combout\ <= NOT \f3|u0:9:cell_i|c_out~0_combout\;
\f3|u0:7:cell_i|ALT_INV_c_out~0_combout\ <= NOT \f3|u0:7:cell_i|c_out~0_combout\;
\f5|u0:11:cell_i|ALT_INV_s~combout\ <= NOT \f5|u0:11:cell_i|s~combout\;
\f5|u0:8:cell_i|ALT_INV_c_out~0_combout\ <= NOT \f5|u0:8:cell_i|c_out~0_combout\;
\f5|u0:6:cell_i|ALT_INV_c_out~0_combout\ <= NOT \f5|u0:6:cell_i|c_out~0_combout\;
\f5|u0:4:cell_i|ALT_INV_c_out~0_combout\ <= NOT \f5|u0:4:cell_i|c_out~0_combout\;
\f1|u0:3:cell_i|ALT_INV_s~combout\ <= NOT \f1|u0:3:cell_i|s~combout\;
\f5|u0:2:cell_i|ALT_INV_c_out~0_combout\ <= NOT \f5|u0:2:cell_i|c_out~0_combout\;
\f2|u0:3:cell_i|ALT_INV_s~0_combout\ <= NOT \f2|u0:3:cell_i|s~0_combout\;
\f2|u0:4:cell_i|ALT_INV_s~combout\ <= NOT \f2|u0:4:cell_i|s~combout\;
\f1|u0:4:cell_i|ALT_INV_s~0_combout\ <= NOT \f1|u0:4:cell_i|s~0_combout\;
\f2|u0:5:cell_i|ALT_INV_s~combout\ <= NOT \f2|u0:5:cell_i|s~combout\;
\f1|u0:5:cell_i|ALT_INV_s~combout\ <= NOT \f1|u0:5:cell_i|s~combout\;
\f1|u0:5:cell_i|ALT_INV_s~0_combout\ <= NOT \f1|u0:5:cell_i|s~0_combout\;
\ALT_INV_comb~2_combout\ <= NOT \comb~2_combout\;
\f2|u0:6:cell_i|ALT_INV_s~combout\ <= NOT \f2|u0:6:cell_i|s~combout\;
\f1|u0:6:cell_i|ALT_INV_s~0_combout\ <= NOT \f1|u0:6:cell_i|s~0_combout\;
\f2|u0:7:cell_i|ALT_INV_s~combout\ <= NOT \f2|u0:7:cell_i|s~combout\;
\f1|u0:7:cell_i|ALT_INV_s~combout\ <= NOT \f1|u0:7:cell_i|s~combout\;
\f1|u0:7:cell_i|ALT_INV_s~0_combout\ <= NOT \f1|u0:7:cell_i|s~0_combout\;
\ALT_INV_comb~1_combout\ <= NOT \comb~1_combout\;
\f2|u0:8:cell_i|ALT_INV_s~0_combout\ <= NOT \f2|u0:8:cell_i|s~0_combout\;
\f1|u0:8:cell_i|ALT_INV_s~combout\ <= NOT \f1|u0:8:cell_i|s~combout\;
\f2|u0:9:cell_i|ALT_INV_s~combout\ <= NOT \f2|u0:9:cell_i|s~combout\;
\f1|u0:8:cell_i|ALT_INV_c_out~0_combout\ <= NOT \f1|u0:8:cell_i|c_out~0_combout\;
\f1|u0:5:cell_i|ALT_INV_c_out~0_combout\ <= NOT \f1|u0:5:cell_i|c_out~0_combout\;
\f1|u0:3:cell_i|ALT_INV_c_out~combout\ <= NOT \f1|u0:3:cell_i|c_out~combout\;
\f2|u0:9:cell_i|ALT_INV_c_out~0_combout\ <= NOT \f2|u0:9:cell_i|c_out~0_combout\;
\f2|u0:7:cell_i|ALT_INV_c_out~0_combout\ <= NOT \f2|u0:7:cell_i|c_out~0_combout\;
\f2|u0:5:cell_i|ALT_INV_c_out~combout\ <= NOT \f2|u0:5:cell_i|c_out~combout\;
\ALT_INV_comb~0_combout\ <= NOT \comb~0_combout\;
\ALT_INV_sw[8]~input_o\ <= NOT \sw[8]~input_o\;
\ALT_INV_sw[9]~input_o\ <= NOT \sw[9]~input_o\;
\ALT_INV_sw[7]~input_o\ <= NOT \sw[7]~input_o\;
\ALT_INV_sw[6]~input_o\ <= NOT \sw[6]~input_o\;
\ALT_INV_sw[5]~input_o\ <= NOT \sw[5]~input_o\;
\ALT_INV_sw[4]~input_o\ <= NOT \sw[4]~input_o\;
\ALT_INV_sw[3]~input_o\ <= NOT \sw[3]~input_o\;
\ALT_INV_sw[2]~input_o\ <= NOT \sw[2]~input_o\;
\ALT_INV_sw[1]~input_o\ <= NOT \sw[1]~input_o\;
\ALT_INV_sw[0]~input_o\ <= NOT \sw[0]~input_o\;
\r1|d7|ALT_INV_Q~combout\ <= NOT \r1|d7|Q~combout\;
\r1|d6|ALT_INV_Q~combout\ <= NOT \r1|d6|Q~combout\;
\r1|d4|ALT_INV_Q~combout\ <= NOT \r1|d4|Q~combout\;
\r1|d5|ALT_INV_Q~combout\ <= NOT \r1|d5|Q~combout\;
\r1|d0|ALT_INV_Q~combout\ <= NOT \r1|d0|Q~combout\;
\r1|d1|ALT_INV_Q~combout\ <= NOT \r1|d1|Q~combout\;
\r0|d0|ALT_INV_Q~combout\ <= NOT \r0|d0|Q~combout\;
\r0|d2|ALT_INV_Q~combout\ <= NOT \r0|d2|Q~combout\;
\r0|d1|ALT_INV_Q~combout\ <= NOT \r0|d1|Q~combout\;
\r0|d3|ALT_INV_Q~combout\ <= NOT \r0|d3|Q~combout\;
\r0|d4|ALT_INV_Q~combout\ <= NOT \r0|d4|Q~combout\;
\r1|d2|ALT_INV_Q~combout\ <= NOT \r1|d2|Q~combout\;
\r0|d5|ALT_INV_Q~combout\ <= NOT \r0|d5|Q~combout\;
\r0|d6|ALT_INV_Q~combout\ <= NOT \r0|d6|Q~combout\;
\r1|d3|ALT_INV_Q~combout\ <= NOT \r1|d3|Q~combout\;
\r0|d7|ALT_INV_Q~combout\ <= NOT \r0|d7|Q~combout\;
\f5|u0:3:cell_i|ALT_INV_s~combout\ <= NOT \f5|u0:3:cell_i|s~combout\;
\ALT_INV_comb~5_combout\ <= NOT \comb~5_combout\;
\f5|u0:2:cell_i|ALT_INV_s~0_combout\ <= NOT \f5|u0:2:cell_i|s~0_combout\;
\f1|u0:1:cell_i|ALT_INV_s~0_combout\ <= NOT \f1|u0:1:cell_i|s~0_combout\;
\f7|u0:7:cell_i|ALT_INV_s~combout\ <= NOT \f7|u0:7:cell_i|s~combout\;
\f7|u0:4:cell_i|ALT_INV_s~0_combout\ <= NOT \f7|u0:4:cell_i|s~0_combout\;
\f7|u0:6:cell_i|ALT_INV_s~combout\ <= NOT \f7|u0:6:cell_i|s~combout\;
\f7|u0:5:cell_i|ALT_INV_s~combout\ <= NOT \f7|u0:5:cell_i|s~combout\;

-- Location: IOOBUF_X0_Y18_N79
\ledr[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sw[0]~input_o\,
	devoe => ww_devoe,
	o => ww_ledr(0));

-- Location: IOOBUF_X0_Y18_N96
\ledr[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sw[1]~input_o\,
	devoe => ww_devoe,
	o => ww_ledr(1));

-- Location: IOOBUF_X0_Y18_N62
\ledr[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sw[2]~input_o\,
	devoe => ww_devoe,
	o => ww_ledr(2));

-- Location: IOOBUF_X0_Y18_N45
\ledr[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sw[3]~input_o\,
	devoe => ww_devoe,
	o => ww_ledr(3));

-- Location: IOOBUF_X0_Y19_N39
\ledr[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sw[4]~input_o\,
	devoe => ww_devoe,
	o => ww_ledr(4));

-- Location: IOOBUF_X0_Y19_N56
\ledr[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sw[5]~input_o\,
	devoe => ww_devoe,
	o => ww_ledr(5));

-- Location: IOOBUF_X0_Y19_N5
\ledr[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sw[6]~input_o\,
	devoe => ww_devoe,
	o => ww_ledr(6));

-- Location: IOOBUF_X0_Y19_N22
\ledr[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sw[7]~input_o\,
	devoe => ww_devoe,
	o => ww_ledr(7));

-- Location: IOOBUF_X51_Y0_N19
\hex3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h3|hex[6]~0_combout\,
	devoe => ww_devoe,
	o => ww_hex3(6));

-- Location: IOOBUF_X51_Y0_N2
\hex3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h3|hex[5]~1_combout\,
	devoe => ww_devoe,
	o => ww_hex3(5));

-- Location: IOOBUF_X52_Y0_N2
\hex3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h3|hex[4]~2_combout\,
	devoe => ww_devoe,
	o => ww_hex3(4));

-- Location: IOOBUF_X46_Y0_N19
\hex3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h3|hex[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_hex3(3));

-- Location: IOOBUF_X40_Y0_N42
\hex3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h3|hex[2]~4_combout\,
	devoe => ww_devoe,
	o => ww_hex3(2));

-- Location: IOOBUF_X46_Y0_N2
\hex3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h3|hex[1]~5_combout\,
	devoe => ww_devoe,
	o => ww_hex3(1));

-- Location: IOOBUF_X40_Y0_N59
\hex3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h3|hex[0]~6_combout\,
	devoe => ww_devoe,
	o => ww_hex3(0));

-- Location: IOOBUF_X40_Y0_N76
\hex2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h2|hex[6]~0_combout\,
	devoe => ww_devoe,
	o => ww_hex2(6));

-- Location: IOOBUF_X46_Y0_N53
\hex2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h2|hex[5]~1_combout\,
	devoe => ww_devoe,
	o => ww_hex2(5));

-- Location: IOOBUF_X38_Y0_N19
\hex2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h2|hex[4]~2_combout\,
	devoe => ww_devoe,
	o => ww_hex2(4));

-- Location: IOOBUF_X36_Y0_N19
\hex2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h2|hex[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_hex2(3));

-- Location: IOOBUF_X22_Y0_N53
\hex2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h2|hex[2]~4_combout\,
	devoe => ww_devoe,
	o => ww_hex2(2));

-- Location: IOOBUF_X38_Y0_N53
\hex2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h2|hex[1]~5_combout\,
	devoe => ww_devoe,
	o => ww_hex2(1));

-- Location: IOOBUF_X48_Y0_N42
\hex2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h2|hex[0]~6_combout\,
	devoe => ww_devoe,
	o => ww_hex2(0));

-- Location: IOOBUF_X51_Y0_N53
\hex1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h1|hex[6]~0_combout\,
	devoe => ww_devoe,
	o => ww_hex1(6));

-- Location: IOOBUF_X43_Y0_N53
\hex1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h1|hex[5]~1_combout\,
	devoe => ww_devoe,
	o => ww_hex1(5));

-- Location: IOOBUF_X38_Y0_N36
\hex1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h1|hex[4]~2_combout\,
	devoe => ww_devoe,
	o => ww_hex1(4));

-- Location: IOOBUF_X43_Y0_N36
\hex1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h1|hex[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_hex1(3));

-- Location: IOOBUF_X44_Y0_N53
\hex1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h1|hex[2]~4_combout\,
	devoe => ww_devoe,
	o => ww_hex1(2));

-- Location: IOOBUF_X40_Y0_N93
\hex1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h1|hex[1]~5_combout\,
	devoe => ww_devoe,
	o => ww_hex1(1));

-- Location: IOOBUF_X44_Y0_N36
\hex1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h1|hex[0]~6_combout\,
	devoe => ww_devoe,
	o => ww_hex1(0));

-- Location: IOOBUF_X46_Y0_N36
\hex0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h0|hex[6]~0_combout\,
	devoe => ww_devoe,
	o => ww_hex0(6));

-- Location: IOOBUF_X50_Y0_N53
\hex0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h0|hex[5]~1_combout\,
	devoe => ww_devoe,
	o => ww_hex0(5));

-- Location: IOOBUF_X48_Y0_N93
\hex0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h0|hex[4]~2_combout\,
	devoe => ww_devoe,
	o => ww_hex0(4));

-- Location: IOOBUF_X50_Y0_N36
\hex0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h0|hex[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_hex0(3));

-- Location: IOOBUF_X48_Y0_N76
\hex0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h0|hex[2]~4_combout\,
	devoe => ww_devoe,
	o => ww_hex0(2));

-- Location: IOOBUF_X51_Y0_N36
\hex0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h0|hex[1]~5_combout\,
	devoe => ww_devoe,
	o => ww_hex0(1));

-- Location: IOOBUF_X52_Y0_N53
\hex0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h0|hex[0]~6_combout\,
	devoe => ww_devoe,
	o => ww_hex0(0));

-- Location: IOIBUF_X33_Y0_N41
\sw[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: IOIBUF_X33_Y0_N58
\sw[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\sw[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: IOIBUF_X34_Y0_N18
\sw[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: IOIBUF_X36_Y0_N35
\sw[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\sw[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

-- Location: IOIBUF_X34_Y0_N52
\sw[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

-- Location: IOIBUF_X34_Y0_N35
\sw[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

-- Location: IOIBUF_X33_Y0_N92
\sw[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(8),
	o => \sw[8]~input_o\);

-- Location: LABCELL_X32_Y1_N51
\r1|d6|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \r1|d6|Q~combout\ = ( \sw[8]~input_o\ & ( \r1|d6|Q~combout\ & ( \sw[6]~input_o\ ) ) ) # ( !\sw[8]~input_o\ & ( \r1|d6|Q~combout\ ) ) # ( \sw[8]~input_o\ & ( !\r1|d6|Q~combout\ & ( \sw[6]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sw[6]~input_o\,
	datae => \ALT_INV_sw[8]~input_o\,
	dataf => \r1|d6|ALT_INV_Q~combout\,
	combout => \r1|d6|Q~combout\);

-- Location: IOIBUF_X33_Y0_N75
\sw[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(9),
	o => \sw[9]~input_o\);

-- Location: LABCELL_X32_Y1_N6
\r0|d7|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \r0|d7|Q~combout\ = ( \r0|d7|Q~combout\ & ( (!\sw[9]~input_o\) # (\sw[7]~input_o\) ) ) # ( !\r0|d7|Q~combout\ & ( (\sw[7]~input_o\ & \sw[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sw[7]~input_o\,
	datad => \ALT_INV_sw[9]~input_o\,
	dataf => \r0|d7|ALT_INV_Q~combout\,
	combout => \r0|d7|Q~combout\);

-- Location: LABCELL_X32_Y1_N24
\r1|d7|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \r1|d7|Q~combout\ = ( \sw[8]~input_o\ & ( \r1|d7|Q~combout\ & ( \sw[7]~input_o\ ) ) ) # ( !\sw[8]~input_o\ & ( \r1|d7|Q~combout\ ) ) # ( \sw[8]~input_o\ & ( !\r1|d7|Q~combout\ & ( \sw[7]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sw[7]~input_o\,
	datae => \ALT_INV_sw[8]~input_o\,
	dataf => \r1|d7|ALT_INV_Q~combout\,
	combout => \r1|d7|Q~combout\);

-- Location: LABCELL_X32_Y1_N9
\r0|d6|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \r0|d6|Q~combout\ = ( \r0|d6|Q~combout\ & ( (!\sw[9]~input_o\) # (\sw[6]~input_o\) ) ) # ( !\r0|d6|Q~combout\ & ( (\sw[6]~input_o\ & \sw[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sw[6]~input_o\,
	datad => \ALT_INV_sw[9]~input_o\,
	dataf => \r0|d6|ALT_INV_Q~combout\,
	combout => \r0|d6|Q~combout\);

-- Location: MLABCELL_X34_Y3_N18
\r0|d5|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \r0|d5|Q~combout\ = ( \r0|d5|Q~combout\ & ( (!\sw[9]~input_o\) # (\sw[5]~input_o\) ) ) # ( !\r0|d5|Q~combout\ & ( (\sw[5]~input_o\ & \sw[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sw[5]~input_o\,
	datad => \ALT_INV_sw[9]~input_o\,
	dataf => \r0|d5|ALT_INV_Q~combout\,
	combout => \r0|d5|Q~combout\);

-- Location: MLABCELL_X34_Y1_N30
\r0|d4|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \r0|d4|Q~combout\ = ( \sw[9]~input_o\ & ( \sw[4]~input_o\ ) ) # ( !\sw[9]~input_o\ & ( \r0|d4|Q~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \r0|d4|ALT_INV_Q~combout\,
	datac => \ALT_INV_sw[4]~input_o\,
	dataf => \ALT_INV_sw[9]~input_o\,
	combout => \r0|d4|Q~combout\);

-- Location: LABCELL_X32_Y2_N48
\r0|d3|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \r0|d3|Q~combout\ = ( \sw[9]~input_o\ & ( \r0|d3|Q~combout\ & ( \sw[3]~input_o\ ) ) ) # ( !\sw[9]~input_o\ & ( \r0|d3|Q~combout\ ) ) # ( \sw[9]~input_o\ & ( !\r0|d3|Q~combout\ & ( \sw[3]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sw[3]~input_o\,
	datae => \ALT_INV_sw[9]~input_o\,
	dataf => \r0|d3|ALT_INV_Q~combout\,
	combout => \r0|d3|Q~combout\);

-- Location: LABCELL_X32_Y1_N15
\r0|d2|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \r0|d2|Q~combout\ = ( \sw[9]~input_o\ & ( \r0|d2|Q~combout\ & ( \sw[2]~input_o\ ) ) ) # ( !\sw[9]~input_o\ & ( \r0|d2|Q~combout\ ) ) # ( \sw[9]~input_o\ & ( !\r0|d2|Q~combout\ & ( \sw[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sw[2]~input_o\,
	datae => \ALT_INV_sw[9]~input_o\,
	dataf => \r0|d2|ALT_INV_Q~combout\,
	combout => \r0|d2|Q~combout\);

-- Location: LABCELL_X32_Y2_N6
\r0|d0|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \r0|d0|Q~combout\ = ( \sw[9]~input_o\ & ( \sw[0]~input_o\ ) ) # ( !\sw[9]~input_o\ & ( \r0|d0|Q~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \r0|d0|ALT_INV_Q~combout\,
	datac => \ALT_INV_sw[0]~input_o\,
	dataf => \ALT_INV_sw[9]~input_o\,
	combout => \r0|d0|Q~combout\);

-- Location: LABCELL_X32_Y2_N12
\r0|d1|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \r0|d1|Q~combout\ = ( \r0|d1|Q~combout\ & ( (!\sw[9]~input_o\) # (\sw[1]~input_o\) ) ) # ( !\r0|d1|Q~combout\ & ( (\sw[1]~input_o\ & \sw[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sw[1]~input_o\,
	datad => \ALT_INV_sw[9]~input_o\,
	dataf => \r0|d1|ALT_INV_Q~combout\,
	combout => \r0|d1|Q~combout\);

-- Location: LABCELL_X32_Y1_N30
\f4|u0:9:cell_i|c_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f4|u0:9:cell_i|c_out~0_combout\ = ( \r0|d3|Q~combout\ & ( \r0|d1|Q~combout\ & ( (\r1|d6|Q~combout\ & (\r1|d7|Q~combout\ & ((\r0|d0|Q~combout\) # (\r0|d2|Q~combout\)))) ) ) ) # ( !\r0|d3|Q~combout\ & ( \r0|d1|Q~combout\ & ( (\r1|d6|Q~combout\ & 
-- (\r0|d2|Q~combout\ & \r1|d7|Q~combout\)) ) ) ) # ( \r0|d3|Q~combout\ & ( !\r0|d1|Q~combout\ & ( (\r1|d6|Q~combout\ & (\r0|d2|Q~combout\ & \r1|d7|Q~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000100000001000000010000000100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r1|d6|ALT_INV_Q~combout\,
	datab => \r0|d2|ALT_INV_Q~combout\,
	datac => \r1|d7|ALT_INV_Q~combout\,
	datad => \r0|d0|ALT_INV_Q~combout\,
	datae => \r0|d3|ALT_INV_Q~combout\,
	dataf => \r0|d1|ALT_INV_Q~combout\,
	combout => \f4|u0:9:cell_i|c_out~0_combout\);

-- Location: LABCELL_X32_Y1_N18
\f4|u0:11:cell_i|c_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f4|u0:11:cell_i|c_out~0_combout\ = ( \r0|d3|Q~combout\ & ( \f4|u0:9:cell_i|c_out~0_combout\ & ( (!\r0|d4|Q~combout\ & (\r1|d6|Q~combout\ & (\r1|d7|Q~combout\ & \r0|d5|Q~combout\))) # (\r0|d4|Q~combout\ & (((\r1|d6|Q~combout\ & \r0|d5|Q~combout\)) # 
-- (\r1|d7|Q~combout\))) ) ) ) # ( !\r0|d3|Q~combout\ & ( \f4|u0:9:cell_i|c_out~0_combout\ & ( (\r1|d6|Q~combout\ & (\r0|d4|Q~combout\ & ((\r0|d5|Q~combout\) # (\r1|d7|Q~combout\)))) ) ) ) # ( \r0|d3|Q~combout\ & ( !\f4|u0:9:cell_i|c_out~0_combout\ & ( 
-- (\r1|d6|Q~combout\ & (\r0|d4|Q~combout\ & \r1|d7|Q~combout\)) ) ) ) # ( !\r0|d3|Q~combout\ & ( !\f4|u0:9:cell_i|c_out~0_combout\ & ( (\r1|d6|Q~combout\ & (\r0|d4|Q~combout\ & (\r1|d7|Q~combout\ & \r0|d5|Q~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000010000000100000001000100010000001100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r1|d6|ALT_INV_Q~combout\,
	datab => \r0|d4|ALT_INV_Q~combout\,
	datac => \r1|d7|ALT_INV_Q~combout\,
	datad => \r0|d5|ALT_INV_Q~combout\,
	datae => \r0|d3|ALT_INV_Q~combout\,
	dataf => \f4|u0:9:cell_i|ALT_INV_c_out~0_combout\,
	combout => \f4|u0:11:cell_i|c_out~0_combout\);

-- Location: LABCELL_X32_Y1_N54
\f4|u0:13:cell_i|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \f4|u0:13:cell_i|s~combout\ = ( \r0|d5|Q~combout\ & ( \f4|u0:11:cell_i|c_out~0_combout\ & ( (!\r1|d6|Q~combout\ & (((\r1|d7|Q~combout\ & !\r0|d6|Q~combout\)))) # (\r1|d6|Q~combout\ & (!\r0|d7|Q~combout\ $ (!\r1|d7|Q~combout\ $ (\r0|d6|Q~combout\)))) ) ) ) 
-- # ( !\r0|d5|Q~combout\ & ( \f4|u0:11:cell_i|c_out~0_combout\ & ( (!\r1|d6|Q~combout\ & (((\r1|d7|Q~combout\ & \r0|d6|Q~combout\)))) # (\r1|d6|Q~combout\ & (!\r0|d7|Q~combout\ $ (((!\r0|d6|Q~combout\) # (\r1|d7|Q~combout\))))) ) ) ) # ( \r0|d5|Q~combout\ & 
-- ( !\f4|u0:11:cell_i|c_out~0_combout\ & ( (!\r1|d6|Q~combout\ & (((\r1|d7|Q~combout\ & \r0|d6|Q~combout\)))) # (\r1|d6|Q~combout\ & (\r0|d7|Q~combout\)) ) ) ) # ( !\r0|d5|Q~combout\ & ( !\f4|u0:11:cell_i|c_out~0_combout\ & ( (!\r1|d6|Q~combout\ & 
-- (((\r1|d7|Q~combout\ & \r0|d6|Q~combout\)))) # (\r1|d6|Q~combout\ & (!\r0|d7|Q~combout\ $ (((!\r1|d7|Q~combout\) # (!\r0|d6|Q~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011110000100010001101100010001010010110001111001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r1|d6|ALT_INV_Q~combout\,
	datab => \r0|d7|ALT_INV_Q~combout\,
	datac => \r1|d7|ALT_INV_Q~combout\,
	datad => \r0|d6|ALT_INV_Q~combout\,
	datae => \r0|d5|ALT_INV_Q~combout\,
	dataf => \f4|u0:11:cell_i|ALT_INV_c_out~0_combout\,
	combout => \f4|u0:13:cell_i|s~combout\);

-- Location: LABCELL_X32_Y1_N42
\r1|d5|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \r1|d5|Q~combout\ = ( \r1|d5|Q~combout\ & ( (!\sw[8]~input_o\) # (\sw[5]~input_o\) ) ) # ( !\r1|d5|Q~combout\ & ( (\sw[5]~input_o\ & \sw[8]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sw[5]~input_o\,
	datad => \ALT_INV_sw[8]~input_o\,
	dataf => \r1|d5|ALT_INV_Q~combout\,
	combout => \r1|d5|Q~combout\);

-- Location: MLABCELL_X34_Y1_N27
\r1|d4|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \r1|d4|Q~combout\ = ( \r1|d4|Q~combout\ & ( \sw[8]~input_o\ & ( \sw[4]~input_o\ ) ) ) # ( !\r1|d4|Q~combout\ & ( \sw[8]~input_o\ & ( \sw[4]~input_o\ ) ) ) # ( \r1|d4|Q~combout\ & ( !\sw[8]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sw[4]~input_o\,
	datae => \r1|d4|ALT_INV_Q~combout\,
	dataf => \ALT_INV_sw[8]~input_o\,
	combout => \r1|d4|Q~combout\);

-- Location: MLABCELL_X34_Y1_N0
\f3|u0:7:cell_i|c_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f3|u0:7:cell_i|c_out~0_combout\ = ( \r1|d5|Q~combout\ & ( \r1|d4|Q~combout\ & ( (!\r0|d3|Q~combout\ & (\r0|d2|Q~combout\ & (\r0|d1|Q~combout\))) # (\r0|d3|Q~combout\ & (((\r0|d1|Q~combout\ & \r0|d0|Q~combout\)) # (\r0|d2|Q~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001001100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r0|d3|ALT_INV_Q~combout\,
	datab => \r0|d2|ALT_INV_Q~combout\,
	datac => \r0|d1|ALT_INV_Q~combout\,
	datad => \r0|d0|ALT_INV_Q~combout\,
	datae => \r1|d5|ALT_INV_Q~combout\,
	dataf => \r1|d4|ALT_INV_Q~combout\,
	combout => \f3|u0:7:cell_i|c_out~0_combout\);

-- Location: MLABCELL_X34_Y1_N18
\f3|u0:9:cell_i|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \f3|u0:9:cell_i|s~combout\ = ( \r1|d5|Q~combout\ & ( \r0|d5|Q~combout\ & ( (!\r0|d4|Q~combout\ & (!\r1|d4|Q~combout\ $ (((!\f3|u0:7:cell_i|c_out~0_combout\) # (!\r0|d3|Q~combout\))))) # (\r0|d4|Q~combout\ & ((!\f3|u0:7:cell_i|c_out~0_combout\ & 
-- ((!\r1|d4|Q~combout\) # (\r0|d3|Q~combout\))) # (\f3|u0:7:cell_i|c_out~0_combout\ & ((!\r0|d3|Q~combout\) # (\r1|d4|Q~combout\))))) ) ) ) # ( !\r1|d5|Q~combout\ & ( \r0|d5|Q~combout\ & ( (\r1|d4|Q~combout\ & ((!\f3|u0:7:cell_i|c_out~0_combout\) # 
-- (!\r0|d4|Q~combout\))) ) ) ) # ( \r1|d5|Q~combout\ & ( !\r0|d5|Q~combout\ & ( (!\f3|u0:7:cell_i|c_out~0_combout\ & (\r0|d4|Q~combout\ & ((!\r0|d3|Q~combout\) # (!\r1|d4|Q~combout\)))) # (\f3|u0:7:cell_i|c_out~0_combout\ & ((!\r0|d4|Q~combout\ & 
-- (\r0|d3|Q~combout\)) # (\r0|d4|Q~combout\ & (!\r0|d3|Q~combout\ & !\r1|d4|Q~combout\)))) ) ) ) # ( !\r1|d5|Q~combout\ & ( !\r0|d5|Q~combout\ & ( (\f3|u0:7:cell_i|c_out~0_combout\ & (\r0|d4|Q~combout\ & \r1|d4|Q~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001001101100010010000000000111011100011011011011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f3|u0:7:cell_i|ALT_INV_c_out~0_combout\,
	datab => \r0|d4|ALT_INV_Q~combout\,
	datac => \r0|d3|ALT_INV_Q~combout\,
	datad => \r1|d4|ALT_INV_Q~combout\,
	datae => \r1|d5|ALT_INV_Q~combout\,
	dataf => \r0|d5|ALT_INV_Q~combout\,
	combout => \f3|u0:9:cell_i|s~combout\);

-- Location: MLABCELL_X34_Y1_N12
\f3|u0:10:cell_i|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f3|u0:10:cell_i|s~0_combout\ = ( \r0|d5|Q~combout\ & ( !\r1|d5|Q~combout\ $ (((!\r1|d4|Q~combout\) # (!\r0|d6|Q~combout\))) ) ) # ( !\r0|d5|Q~combout\ & ( (\r1|d4|Q~combout\ & \r0|d6|Q~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011111111000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \r1|d4|ALT_INV_Q~combout\,
	datac => \r0|d6|ALT_INV_Q~combout\,
	datad => \r1|d5|ALT_INV_Q~combout\,
	dataf => \r0|d5|ALT_INV_Q~combout\,
	combout => \f3|u0:10:cell_i|s~0_combout\);

-- Location: MLABCELL_X34_Y1_N57
\f4|u0:9:cell_i|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \f4|u0:9:cell_i|s~combout\ = ( \r1|d7|Q~combout\ & ( \r1|d6|Q~combout\ & ( !\r0|d3|Q~combout\ $ (((!\r0|d2|Q~combout\ & ((!\r0|d0|Q~combout\) # (!\r0|d1|Q~combout\))) # (\r0|d2|Q~combout\ & ((\r0|d1|Q~combout\))))) ) ) ) # ( !\r1|d7|Q~combout\ & ( 
-- \r1|d6|Q~combout\ & ( \r0|d3|Q~combout\ ) ) ) # ( \r1|d7|Q~combout\ & ( !\r1|d6|Q~combout\ & ( \r0|d2|Q~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001101010101010101010110011001011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r0|d3|ALT_INV_Q~combout\,
	datab => \r0|d2|ALT_INV_Q~combout\,
	datac => \r0|d0|ALT_INV_Q~combout\,
	datad => \r0|d1|ALT_INV_Q~combout\,
	datae => \r1|d7|ALT_INV_Q~combout\,
	dataf => \r1|d6|ALT_INV_Q~combout\,
	combout => \f4|u0:9:cell_i|s~combout\);

-- Location: LABCELL_X32_Y1_N45
\f4|u0:10:cell_i|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \f4|u0:10:cell_i|s~combout\ = ( \r1|d7|Q~combout\ & ( !\f4|u0:9:cell_i|c_out~0_combout\ $ (!\r0|d3|Q~combout\ $ (((\r1|d6|Q~combout\ & \r0|d4|Q~combout\)))) ) ) # ( !\r1|d7|Q~combout\ & ( !\f4|u0:9:cell_i|c_out~0_combout\ $ (((!\r1|d6|Q~combout\) # 
-- (!\r0|d4|Q~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111000011110000111100001111000011110111000010001111011100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r1|d6|ALT_INV_Q~combout\,
	datab => \r0|d4|ALT_INV_Q~combout\,
	datac => \f4|u0:9:cell_i|ALT_INV_c_out~0_combout\,
	datad => \r0|d3|ALT_INV_Q~combout\,
	dataf => \r1|d7|ALT_INV_Q~combout\,
	combout => \f4|u0:10:cell_i|s~combout\);

-- Location: MLABCELL_X34_Y1_N36
\f3|u0:9:cell_i|c_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f3|u0:9:cell_i|c_out~0_combout\ = ( \r1|d5|Q~combout\ & ( \r0|d5|Q~combout\ & ( (!\r0|d4|Q~combout\ & (\f3|u0:7:cell_i|c_out~0_combout\ & (\r0|d3|Q~combout\ & \r1|d4|Q~combout\))) # (\r0|d4|Q~combout\ & (((\f3|u0:7:cell_i|c_out~0_combout\ & 
-- \r0|d3|Q~combout\)) # (\r1|d4|Q~combout\))) ) ) ) # ( !\r1|d5|Q~combout\ & ( \r0|d5|Q~combout\ & ( (\f3|u0:7:cell_i|c_out~0_combout\ & (\r0|d4|Q~combout\ & \r1|d4|Q~combout\)) ) ) ) # ( \r1|d5|Q~combout\ & ( !\r0|d5|Q~combout\ & ( (\r0|d4|Q~combout\ & 
-- ((!\f3|u0:7:cell_i|c_out~0_combout\ & (\r0|d3|Q~combout\ & \r1|d4|Q~combout\)) # (\f3|u0:7:cell_i|c_out~0_combout\ & ((\r1|d4|Q~combout\) # (\r0|d3|Q~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010001001100000000000100010000000100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f3|u0:7:cell_i|ALT_INV_c_out~0_combout\,
	datab => \r0|d4|ALT_INV_Q~combout\,
	datac => \r0|d3|ALT_INV_Q~combout\,
	datad => \r1|d4|ALT_INV_Q~combout\,
	datae => \r1|d5|ALT_INV_Q~combout\,
	dataf => \r0|d5|ALT_INV_Q~combout\,
	combout => \f3|u0:9:cell_i|c_out~0_combout\);

-- Location: MLABCELL_X34_Y1_N6
\f4|u0:8:cell_i|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \f4|u0:8:cell_i|s~combout\ = ( \r0|d2|Q~combout\ & ( (!\r0|d1|Q~combout\ & (((\r1|d6|Q~combout\)))) # (\r0|d1|Q~combout\ & ((!\r1|d6|Q~combout\ & ((\r1|d7|Q~combout\))) # (\r1|d6|Q~combout\ & ((!\r1|d7|Q~combout\) # (\r0|d0|Q~combout\))))) ) ) # ( 
-- !\r0|d2|Q~combout\ & ( (\r0|d1|Q~combout\ & (\r1|d7|Q~combout\ & ((!\r0|d0|Q~combout\) # (!\r1|d6|Q~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010100000000000101010000001111010110110000111101011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r0|d1|ALT_INV_Q~combout\,
	datab => \r0|d0|ALT_INV_Q~combout\,
	datac => \r1|d6|ALT_INV_Q~combout\,
	datad => \r1|d7|ALT_INV_Q~combout\,
	dataf => \r0|d2|ALT_INV_Q~combout\,
	combout => \f4|u0:8:cell_i|s~combout\);

-- Location: MLABCELL_X34_Y1_N54
\f3|u0:7:cell_i|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \f3|u0:7:cell_i|s~combout\ = ( \r1|d5|Q~combout\ & ( \r1|d4|Q~combout\ & ( !\r0|d3|Q~combout\ $ (((!\r0|d2|Q~combout\ & ((!\r0|d1|Q~combout\) # (!\r0|d0|Q~combout\))) # (\r0|d2|Q~combout\ & (\r0|d1|Q~combout\)))) ) ) ) # ( !\r1|d5|Q~combout\ & ( 
-- \r1|d4|Q~combout\ & ( \r0|d3|Q~combout\ ) ) ) # ( \r1|d5|Q~combout\ & ( !\r1|d4|Q~combout\ & ( \r0|d2|Q~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001101010101010101010110010101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r0|d3|ALT_INV_Q~combout\,
	datab => \r0|d2|ALT_INV_Q~combout\,
	datac => \r0|d1|ALT_INV_Q~combout\,
	datad => \r0|d0|ALT_INV_Q~combout\,
	datae => \r1|d5|ALT_INV_Q~combout\,
	dataf => \r1|d4|ALT_INV_Q~combout\,
	combout => \f3|u0:7:cell_i|s~combout\);

-- Location: MLABCELL_X34_Y1_N33
\f3|u0:8:cell_i|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f3|u0:8:cell_i|s~0_combout\ = ( \r1|d4|Q~combout\ & ( !\r0|d4|Q~combout\ $ (((!\r0|d3|Q~combout\) # (!\r1|d5|Q~combout\))) ) ) # ( !\r1|d4|Q~combout\ & ( (\r0|d3|Q~combout\ & \r1|d5|Q~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100110110001101100011011000110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r0|d3|ALT_INV_Q~combout\,
	datab => \r0|d4|ALT_INV_Q~combout\,
	datac => \r1|d5|ALT_INV_Q~combout\,
	dataf => \r1|d4|ALT_INV_Q~combout\,
	combout => \f3|u0:8:cell_i|s~0_combout\);

-- Location: LABCELL_X35_Y2_N36
\f6|u0:6:cell_i|c_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f6|u0:6:cell_i|c_out~0_combout\ = ( \r0|d0|Q~combout\ & ( \r1|d4|Q~combout\ & ( (\r0|d2|Q~combout\ & \r1|d6|Q~combout\) ) ) ) # ( \r0|d0|Q~combout\ & ( !\r1|d4|Q~combout\ & ( (\r0|d1|Q~combout\ & (\r1|d5|Q~combout\ & \r1|d6|Q~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001100000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r0|d2|ALT_INV_Q~combout\,
	datab => \r0|d1|ALT_INV_Q~combout\,
	datac => \r1|d5|ALT_INV_Q~combout\,
	datad => \r1|d6|ALT_INV_Q~combout\,
	datae => \r0|d0|ALT_INV_Q~combout\,
	dataf => \r1|d4|ALT_INV_Q~combout\,
	combout => \f6|u0:6:cell_i|c_out~0_combout\);

-- Location: MLABCELL_X34_Y1_N15
\f4|u0:7:cell_i|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f4|u0:7:cell_i|s~0_combout\ = ( \r0|d1|Q~combout\ & ( !\r1|d6|Q~combout\ $ (((!\r0|d0|Q~combout\) # (!\r1|d7|Q~combout\))) ) ) # ( !\r0|d1|Q~combout\ & ( (\r0|d0|Q~combout\ & \r1|d7|Q~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101111110100000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r0|d0|ALT_INV_Q~combout\,
	datac => \r1|d7|ALT_INV_Q~combout\,
	datad => \r1|d6|ALT_INV_Q~combout\,
	dataf => \r0|d1|ALT_INV_Q~combout\,
	combout => \f4|u0:7:cell_i|s~0_combout\);

-- Location: LABCELL_X35_Y2_N12
\f6|u0:8:cell_i|c_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f6|u0:8:cell_i|c_out~0_combout\ = ( \f6|u0:6:cell_i|c_out~0_combout\ & ( \f4|u0:7:cell_i|s~0_combout\ & ( (!\f3|u0:7:cell_i|c_out~0_combout\ $ (!\f3|u0:8:cell_i|s~0_combout\)) # (\f4|u0:8:cell_i|s~combout\) ) ) ) # ( !\f6|u0:6:cell_i|c_out~0_combout\ & ( 
-- \f4|u0:7:cell_i|s~0_combout\ & ( (!\f4|u0:8:cell_i|s~combout\ & (\f3|u0:7:cell_i|s~combout\ & (!\f3|u0:7:cell_i|c_out~0_combout\ $ (!\f3|u0:8:cell_i|s~0_combout\)))) # (\f4|u0:8:cell_i|s~combout\ & ((!\f3|u0:7:cell_i|c_out~0_combout\ $ 
-- (!\f3|u0:8:cell_i|s~0_combout\)) # (\f3|u0:7:cell_i|s~combout\))) ) ) ) # ( \f6|u0:6:cell_i|c_out~0_combout\ & ( !\f4|u0:7:cell_i|s~0_combout\ & ( (!\f4|u0:8:cell_i|s~combout\ & (\f3|u0:7:cell_i|s~combout\ & (!\f3|u0:7:cell_i|c_out~0_combout\ $ 
-- (!\f3|u0:8:cell_i|s~0_combout\)))) # (\f4|u0:8:cell_i|s~combout\ & ((!\f3|u0:7:cell_i|c_out~0_combout\ $ (!\f3|u0:8:cell_i|s~0_combout\)) # (\f3|u0:7:cell_i|s~combout\))) ) ) ) # ( !\f6|u0:6:cell_i|c_out~0_combout\ & ( !\f4|u0:7:cell_i|s~0_combout\ & ( 
-- (\f4|u0:8:cell_i|s~combout\ & (!\f3|u0:7:cell_i|c_out~0_combout\ $ (!\f3|u0:8:cell_i|s~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000101110111000100010111011100010101111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f4|u0:8:cell_i|ALT_INV_s~combout\,
	datab => \f3|u0:7:cell_i|ALT_INV_s~combout\,
	datac => \f3|u0:7:cell_i|ALT_INV_c_out~0_combout\,
	datad => \f3|u0:8:cell_i|ALT_INV_s~0_combout\,
	datae => \f6|u0:6:cell_i|ALT_INV_c_out~0_combout\,
	dataf => \f4|u0:7:cell_i|ALT_INV_s~0_combout\,
	combout => \f6|u0:8:cell_i|c_out~0_combout\);

-- Location: MLABCELL_X34_Y1_N42
\f6|u0:10:cell_i|c_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f6|u0:10:cell_i|c_out~0_combout\ = ( \f3|u0:9:cell_i|c_out~0_combout\ & ( \f6|u0:8:cell_i|c_out~0_combout\ & ( (!\f3|u0:10:cell_i|s~0_combout\ & (((\f4|u0:10:cell_i|s~combout\) # (\f4|u0:9:cell_i|s~combout\)) # (\f3|u0:9:cell_i|s~combout\))) # 
-- (\f3|u0:10:cell_i|s~0_combout\ & (\f4|u0:10:cell_i|s~combout\ & ((\f4|u0:9:cell_i|s~combout\) # (\f3|u0:9:cell_i|s~combout\)))) ) ) ) # ( !\f3|u0:9:cell_i|c_out~0_combout\ & ( \f6|u0:8:cell_i|c_out~0_combout\ & ( (!\f3|u0:10:cell_i|s~0_combout\ & 
-- (\f4|u0:10:cell_i|s~combout\ & ((\f4|u0:9:cell_i|s~combout\) # (\f3|u0:9:cell_i|s~combout\)))) # (\f3|u0:10:cell_i|s~0_combout\ & (((\f4|u0:10:cell_i|s~combout\) # (\f4|u0:9:cell_i|s~combout\)) # (\f3|u0:9:cell_i|s~combout\))) ) ) ) # ( 
-- \f3|u0:9:cell_i|c_out~0_combout\ & ( !\f6|u0:8:cell_i|c_out~0_combout\ & ( (!\f3|u0:10:cell_i|s~0_combout\ & (((\f3|u0:9:cell_i|s~combout\ & \f4|u0:9:cell_i|s~combout\)) # (\f4|u0:10:cell_i|s~combout\))) # (\f3|u0:10:cell_i|s~0_combout\ & 
-- (\f3|u0:9:cell_i|s~combout\ & (\f4|u0:9:cell_i|s~combout\ & \f4|u0:10:cell_i|s~combout\))) ) ) ) # ( !\f3|u0:9:cell_i|c_out~0_combout\ & ( !\f6|u0:8:cell_i|c_out~0_combout\ & ( (!\f3|u0:10:cell_i|s~0_combout\ & (\f3|u0:9:cell_i|s~combout\ & 
-- (\f4|u0:9:cell_i|s~combout\ & \f4|u0:10:cell_i|s~combout\))) # (\f3|u0:10:cell_i|s~0_combout\ & (((\f3|u0:9:cell_i|s~combout\ & \f4|u0:9:cell_i|s~combout\)) # (\f4|u0:10:cell_i|s~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110111000001001100110100010011011111110100110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f3|u0:9:cell_i|ALT_INV_s~combout\,
	datab => \f3|u0:10:cell_i|ALT_INV_s~0_combout\,
	datac => \f4|u0:9:cell_i|ALT_INV_s~combout\,
	datad => \f4|u0:10:cell_i|ALT_INV_s~combout\,
	datae => \f3|u0:9:cell_i|ALT_INV_c_out~0_combout\,
	dataf => \f6|u0:8:cell_i|ALT_INV_c_out~0_combout\,
	combout => \f6|u0:10:cell_i|c_out~0_combout\);

-- Location: LABCELL_X35_Y1_N3
\f3|u0:11:cell_i|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \f3|u0:11:cell_i|s~combout\ = ( \f3|u0:9:cell_i|c_out~0_combout\ & ( \r0|d7|Q~combout\ & ( (!\r0|d6|Q~combout\ & (!\r1|d4|Q~combout\ $ (((!\r1|d5|Q~combout\) # (!\r0|d5|Q~combout\))))) # (\r0|d6|Q~combout\ & (\r1|d5|Q~combout\ & ((!\r0|d5|Q~combout\) # 
-- (\r1|d4|Q~combout\)))) ) ) ) # ( !\f3|u0:9:cell_i|c_out~0_combout\ & ( \r0|d7|Q~combout\ & ( (!\r0|d6|Q~combout\ & (\r1|d4|Q~combout\)) # (\r0|d6|Q~combout\ & ((!\r1|d4|Q~combout\ & (\r1|d5|Q~combout\)) # (\r1|d4|Q~combout\ & ((!\r1|d5|Q~combout\) # 
-- (\r0|d5|Q~combout\))))) ) ) ) # ( \f3|u0:9:cell_i|c_out~0_combout\ & ( !\r0|d7|Q~combout\ & ( (!\r0|d6|Q~combout\ & (((\r1|d5|Q~combout\ & \r0|d5|Q~combout\)))) # (\r0|d6|Q~combout\ & ((!\r1|d4|Q~combout\ & (\r1|d5|Q~combout\ & !\r0|d5|Q~combout\)) # 
-- (\r1|d4|Q~combout\ & (!\r1|d5|Q~combout\)))) ) ) ) # ( !\f3|u0:9:cell_i|c_out~0_combout\ & ( !\r0|d7|Q~combout\ & ( (\r0|d6|Q~combout\ & (\r1|d5|Q~combout\ & ((!\r1|d4|Q~combout\) # (!\r0|d5|Q~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000100000101000001101000110110001101110010011100101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r0|d6|ALT_INV_Q~combout\,
	datab => \r1|d4|ALT_INV_Q~combout\,
	datac => \r1|d5|ALT_INV_Q~combout\,
	datad => \r0|d5|ALT_INV_Q~combout\,
	datae => \f3|u0:9:cell_i|ALT_INV_c_out~0_combout\,
	dataf => \r0|d7|ALT_INV_Q~combout\,
	combout => \f3|u0:11:cell_i|s~combout\);

-- Location: LABCELL_X32_Y1_N36
\f4|u0:11:cell_i|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \f4|u0:11:cell_i|s~combout\ = ( \r0|d3|Q~combout\ & ( \f4|u0:9:cell_i|c_out~0_combout\ & ( (!\r1|d6|Q~combout\ & (!\r0|d4|Q~combout\ & (\r1|d7|Q~combout\))) # (\r1|d6|Q~combout\ & (!\r0|d4|Q~combout\ $ (!\r1|d7|Q~combout\ $ (\r0|d5|Q~combout\)))) ) ) ) # 
-- ( !\r0|d3|Q~combout\ & ( \f4|u0:9:cell_i|c_out~0_combout\ & ( (!\r1|d6|Q~combout\ & (\r0|d4|Q~combout\ & (\r1|d7|Q~combout\))) # (\r1|d6|Q~combout\ & (!\r0|d5|Q~combout\ $ (((!\r0|d4|Q~combout\) # (\r1|d7|Q~combout\))))) ) ) ) # ( \r0|d3|Q~combout\ & ( 
-- !\f4|u0:9:cell_i|c_out~0_combout\ & ( (!\r1|d6|Q~combout\ & (\r0|d4|Q~combout\ & (\r1|d7|Q~combout\))) # (\r1|d6|Q~combout\ & (((\r0|d5|Q~combout\)))) ) ) ) # ( !\r0|d3|Q~combout\ & ( !\f4|u0:9:cell_i|c_out~0_combout\ & ( (!\r1|d6|Q~combout\ & 
-- (\r0|d4|Q~combout\ & (\r1|d7|Q~combout\))) # (\r1|d6|Q~combout\ & (!\r0|d5|Q~combout\ $ (((!\r0|d4|Q~combout\) # (!\r1|d7|Q~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010110000000100101011100010010010001110001110001001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r1|d6|ALT_INV_Q~combout\,
	datab => \r0|d4|ALT_INV_Q~combout\,
	datac => \r1|d7|ALT_INV_Q~combout\,
	datad => \r0|d5|ALT_INV_Q~combout\,
	datae => \r0|d3|ALT_INV_Q~combout\,
	dataf => \f4|u0:9:cell_i|ALT_INV_c_out~0_combout\,
	combout => \f4|u0:11:cell_i|s~combout\);

-- Location: LABCELL_X36_Y1_N54
\f4|u0:12:cell_i|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f4|u0:12:cell_i|s~0_combout\ = ( \r0|d6|Q~combout\ & ( \r0|d5|Q~combout\ & ( !\r1|d6|Q~combout\ $ (!\r1|d7|Q~combout\) ) ) ) # ( !\r0|d6|Q~combout\ & ( \r0|d5|Q~combout\ & ( \r1|d7|Q~combout\ ) ) ) # ( \r0|d6|Q~combout\ & ( !\r0|d5|Q~combout\ & ( 
-- \r1|d6|Q~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100001111000011110101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r1|d6|ALT_INV_Q~combout\,
	datac => \r1|d7|ALT_INV_Q~combout\,
	datae => \r0|d6|ALT_INV_Q~combout\,
	dataf => \r0|d5|ALT_INV_Q~combout\,
	combout => \f4|u0:12:cell_i|s~0_combout\);

-- Location: LABCELL_X36_Y1_N18
\f3|u0:12:cell_i|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \f3|u0:12:cell_i|s~combout\ = ( \r0|d6|Q~combout\ & ( \f3|u0:9:cell_i|c_out~0_combout\ & ( (!\r1|d4|Q~combout\ & (\r1|d5|Q~combout\ & (!\r0|d7|Q~combout\ $ (!\r0|d5|Q~combout\)))) # (\r1|d4|Q~combout\ & (!\r1|d5|Q~combout\ $ ((!\r0|d7|Q~combout\)))) ) ) ) 
-- # ( !\r0|d6|Q~combout\ & ( \f3|u0:9:cell_i|c_out~0_combout\ & ( (\r1|d5|Q~combout\ & (\r0|d7|Q~combout\ & ((!\r1|d4|Q~combout\) # (!\r0|d5|Q~combout\)))) ) ) ) # ( \r0|d6|Q~combout\ & ( !\f3|u0:9:cell_i|c_out~0_combout\ & ( (\r1|d5|Q~combout\ & 
-- ((!\r1|d4|Q~combout\ & (\r0|d7|Q~combout\)) # (\r1|d4|Q~combout\ & (!\r0|d7|Q~combout\ & \r0|d5|Q~combout\)))) ) ) ) # ( !\r0|d6|Q~combout\ & ( !\f3|u0:9:cell_i|c_out~0_combout\ & ( (\r1|d5|Q~combout\ & \r0|d7|Q~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000100001001000000011000000100001011000110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r1|d4|ALT_INV_Q~combout\,
	datab => \r1|d5|ALT_INV_Q~combout\,
	datac => \r0|d7|ALT_INV_Q~combout\,
	datad => \r0|d5|ALT_INV_Q~combout\,
	datae => \r0|d6|ALT_INV_Q~combout\,
	dataf => \f3|u0:9:cell_i|ALT_INV_c_out~0_combout\,
	combout => \f3|u0:12:cell_i|s~combout\);

-- Location: LABCELL_X36_Y1_N12
\f6|u0:12:cell_i|c_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f6|u0:12:cell_i|c_out~0_combout\ = ( \f4|u0:12:cell_i|s~0_combout\ & ( \f3|u0:12:cell_i|s~combout\ & ( (!\f4|u0:11:cell_i|c_out~0_combout\) # ((!\f6|u0:10:cell_i|c_out~0_combout\ & (\f3|u0:11:cell_i|s~combout\ & \f4|u0:11:cell_i|s~combout\)) # 
-- (\f6|u0:10:cell_i|c_out~0_combout\ & ((\f4|u0:11:cell_i|s~combout\) # (\f3|u0:11:cell_i|s~combout\)))) ) ) ) # ( !\f4|u0:12:cell_i|s~0_combout\ & ( \f3|u0:12:cell_i|s~combout\ & ( ((!\f6|u0:10:cell_i|c_out~0_combout\ & (\f3|u0:11:cell_i|s~combout\ & 
-- \f4|u0:11:cell_i|s~combout\)) # (\f6|u0:10:cell_i|c_out~0_combout\ & ((\f4|u0:11:cell_i|s~combout\) # (\f3|u0:11:cell_i|s~combout\)))) # (\f4|u0:11:cell_i|c_out~0_combout\) ) ) ) # ( \f4|u0:12:cell_i|s~0_combout\ & ( !\f3|u0:12:cell_i|s~combout\ & ( 
-- (!\f4|u0:11:cell_i|c_out~0_combout\ & ((!\f6|u0:10:cell_i|c_out~0_combout\ & (\f3|u0:11:cell_i|s~combout\ & \f4|u0:11:cell_i|s~combout\)) # (\f6|u0:10:cell_i|c_out~0_combout\ & ((\f4|u0:11:cell_i|s~combout\) # (\f3|u0:11:cell_i|s~combout\))))) ) ) ) # ( 
-- !\f4|u0:12:cell_i|s~0_combout\ & ( !\f3|u0:12:cell_i|s~combout\ & ( (\f4|u0:11:cell_i|c_out~0_combout\ & ((!\f6|u0:10:cell_i|c_out~0_combout\ & (\f3|u0:11:cell_i|s~combout\ & \f4|u0:11:cell_i|s~combout\)) # (\f6|u0:10:cell_i|c_out~0_combout\ & 
-- ((\f4|u0:11:cell_i|s~combout\) # (\f3|u0:11:cell_i|s~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000111000100000111000000011111011111111111000111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f6|u0:10:cell_i|ALT_INV_c_out~0_combout\,
	datab => \f3|u0:11:cell_i|ALT_INV_s~combout\,
	datac => \f4|u0:11:cell_i|ALT_INV_c_out~0_combout\,
	datad => \f4|u0:11:cell_i|ALT_INV_s~combout\,
	datae => \f4|u0:12:cell_i|ALT_INV_s~0_combout\,
	dataf => \f3|u0:12:cell_i|ALT_INV_s~combout\,
	combout => \f6|u0:12:cell_i|c_out~0_combout\);

-- Location: LABCELL_X36_Y1_N6
\f3|u0:12:cell_i|c_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f3|u0:12:cell_i|c_out~0_combout\ = ( \r0|d6|Q~combout\ & ( \f3|u0:9:cell_i|c_out~0_combout\ & ( (\r1|d5|Q~combout\ & (\r0|d7|Q~combout\ & ((\r0|d5|Q~combout\) # (\r1|d4|Q~combout\)))) ) ) ) # ( !\r0|d6|Q~combout\ & ( \f3|u0:9:cell_i|c_out~0_combout\ & ( 
-- (\r1|d4|Q~combout\ & (\r1|d5|Q~combout\ & (\r0|d7|Q~combout\ & \r0|d5|Q~combout\))) ) ) ) # ( \r0|d6|Q~combout\ & ( !\f3|u0:9:cell_i|c_out~0_combout\ & ( (\r1|d4|Q~combout\ & (\r1|d5|Q~combout\ & \r0|d7|Q~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000100000000000000010000000100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r1|d4|ALT_INV_Q~combout\,
	datab => \r1|d5|ALT_INV_Q~combout\,
	datac => \r0|d7|ALT_INV_Q~combout\,
	datad => \r0|d5|ALT_INV_Q~combout\,
	datae => \r0|d6|ALT_INV_Q~combout\,
	dataf => \f3|u0:9:cell_i|ALT_INV_c_out~0_combout\,
	combout => \f3|u0:12:cell_i|c_out~0_combout\);

-- Location: LABCELL_X36_Y1_N3
\f6|u0:13:cell_i|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \f6|u0:13:cell_i|s~combout\ = ( \f3|u0:12:cell_i|c_out~0_combout\ & ( !\f4|u0:13:cell_i|s~combout\ $ (\f6|u0:12:cell_i|c_out~0_combout\) ) ) # ( !\f3|u0:12:cell_i|c_out~0_combout\ & ( !\f4|u0:13:cell_i|s~combout\ $ (!\f6|u0:12:cell_i|c_out~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f4|u0:13:cell_i|ALT_INV_s~combout\,
	datac => \f6|u0:12:cell_i|ALT_INV_c_out~0_combout\,
	dataf => \f3|u0:12:cell_i|ALT_INV_c_out~0_combout\,
	combout => \f6|u0:13:cell_i|s~combout\);

-- Location: LABCELL_X36_Y1_N30
\f6|u0:12:cell_i|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \f6|u0:12:cell_i|s~combout\ = ( \f4|u0:12:cell_i|s~0_combout\ & ( \f3|u0:12:cell_i|s~combout\ & ( !\f4|u0:11:cell_i|c_out~0_combout\ $ (((!\f6|u0:10:cell_i|c_out~0_combout\ & ((!\f3|u0:11:cell_i|s~combout\) # (!\f4|u0:11:cell_i|s~combout\))) # 
-- (\f6|u0:10:cell_i|c_out~0_combout\ & (!\f3|u0:11:cell_i|s~combout\ & !\f4|u0:11:cell_i|s~combout\)))) ) ) ) # ( !\f4|u0:12:cell_i|s~0_combout\ & ( \f3|u0:12:cell_i|s~combout\ & ( !\f4|u0:11:cell_i|c_out~0_combout\ $ (((!\f6|u0:10:cell_i|c_out~0_combout\ & 
-- (\f3|u0:11:cell_i|s~combout\ & \f4|u0:11:cell_i|s~combout\)) # (\f6|u0:10:cell_i|c_out~0_combout\ & ((\f4|u0:11:cell_i|s~combout\) # (\f3|u0:11:cell_i|s~combout\))))) ) ) ) # ( \f4|u0:12:cell_i|s~0_combout\ & ( !\f3|u0:12:cell_i|s~combout\ & ( 
-- !\f4|u0:11:cell_i|c_out~0_combout\ $ (((!\f6|u0:10:cell_i|c_out~0_combout\ & (\f3|u0:11:cell_i|s~combout\ & \f4|u0:11:cell_i|s~combout\)) # (\f6|u0:10:cell_i|c_out~0_combout\ & ((\f4|u0:11:cell_i|s~combout\) # (\f3|u0:11:cell_i|s~combout\))))) ) ) ) # ( 
-- !\f4|u0:12:cell_i|s~0_combout\ & ( !\f3|u0:12:cell_i|s~combout\ & ( !\f4|u0:11:cell_i|c_out~0_combout\ $ (((!\f6|u0:10:cell_i|c_out~0_combout\ & ((!\f3|u0:11:cell_i|s~combout\) # (!\f4|u0:11:cell_i|s~combout\))) # (\f6|u0:10:cell_i|c_out~0_combout\ & 
-- (!\f3|u0:11:cell_i|s~combout\ & !\f4|u0:11:cell_i|s~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111001111000111000011000011111100001100001110001111001111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f6|u0:10:cell_i|ALT_INV_c_out~0_combout\,
	datab => \f3|u0:11:cell_i|ALT_INV_s~combout\,
	datac => \f4|u0:11:cell_i|ALT_INV_c_out~0_combout\,
	datad => \f4|u0:11:cell_i|ALT_INV_s~combout\,
	datae => \f4|u0:12:cell_i|ALT_INV_s~0_combout\,
	dataf => \f3|u0:12:cell_i|ALT_INV_s~combout\,
	combout => \f6|u0:12:cell_i|s~combout\);

-- Location: LABCELL_X36_Y1_N48
\f6|u0:13:cell_i|c_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f6|u0:13:cell_i|c_out~0_combout\ = ( \f3|u0:12:cell_i|c_out~0_combout\ & ( (\f4|u0:13:cell_i|s~combout\) # (\f6|u0:12:cell_i|c_out~0_combout\) ) ) # ( !\f3|u0:12:cell_i|c_out~0_combout\ & ( (\f6|u0:12:cell_i|c_out~0_combout\ & 
-- \f4|u0:13:cell_i|s~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \f6|u0:12:cell_i|ALT_INV_c_out~0_combout\,
	datac => \f4|u0:13:cell_i|ALT_INV_s~combout\,
	dataf => \f3|u0:12:cell_i|ALT_INV_c_out~0_combout\,
	combout => \f6|u0:13:cell_i|c_out~0_combout\);

-- Location: LABCELL_X32_Y2_N30
\r1|d0|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \r1|d0|Q~combout\ = ( \sw[8]~input_o\ & ( \sw[0]~input_o\ ) ) # ( !\sw[8]~input_o\ & ( \r1|d0|Q~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \r1|d0|ALT_INV_Q~combout\,
	datac => \ALT_INV_sw[0]~input_o\,
	dataf => \ALT_INV_sw[8]~input_o\,
	combout => \r1|d0|Q~combout\);

-- Location: LABCELL_X32_Y2_N39
\r1|d1|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \r1|d1|Q~combout\ = ( \sw[8]~input_o\ & ( \sw[1]~input_o\ ) ) # ( !\sw[8]~input_o\ & ( \r1|d1|Q~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \r1|d1|ALT_INV_Q~combout\,
	datad => \ALT_INV_sw[1]~input_o\,
	dataf => \ALT_INV_sw[8]~input_o\,
	combout => \r1|d1|Q~combout\);

-- Location: MLABCELL_X34_Y1_N3
\f1|u0:3:cell_i|c_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|u0:3:cell_i|c_out~combout\ = ( \r1|d0|Q~combout\ & ( \r1|d1|Q~combout\ & ( (!\r0|d3|Q~combout\ & (\r0|d2|Q~combout\ & ((\r0|d1|Q~combout\)))) # (\r0|d3|Q~combout\ & (((\r0|d0|Q~combout\ & \r0|d1|Q~combout\)) # (\r0|d2|Q~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r0|d3|ALT_INV_Q~combout\,
	datab => \r0|d2|ALT_INV_Q~combout\,
	datac => \r0|d0|ALT_INV_Q~combout\,
	datad => \r0|d1|ALT_INV_Q~combout\,
	datae => \r1|d0|ALT_INV_Q~combout\,
	dataf => \r1|d1|ALT_INV_Q~combout\,
	combout => \f1|u0:3:cell_i|c_out~combout\);

-- Location: MLABCELL_X34_Y3_N30
\f1|u0:5:cell_i|c_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|u0:5:cell_i|c_out~0_combout\ = ( \f1|u0:3:cell_i|c_out~combout\ & ( \r0|d5|Q~combout\ & ( (!\r0|d4|Q~combout\ & (\r1|d0|Q~combout\ & (\r0|d3|Q~combout\ & \r1|d1|Q~combout\))) # (\r0|d4|Q~combout\ & (((\r0|d3|Q~combout\ & \r1|d1|Q~combout\)) # 
-- (\r1|d0|Q~combout\))) ) ) ) # ( !\f1|u0:3:cell_i|c_out~combout\ & ( \r0|d5|Q~combout\ & ( (\r0|d4|Q~combout\ & (\r1|d0|Q~combout\ & \r1|d1|Q~combout\)) ) ) ) # ( \f1|u0:3:cell_i|c_out~combout\ & ( !\r0|d5|Q~combout\ & ( (\r0|d4|Q~combout\ & 
-- (\r1|d1|Q~combout\ & ((\r0|d3|Q~combout\) # (\r1|d0|Q~combout\)))) ) ) ) # ( !\f1|u0:3:cell_i|c_out~combout\ & ( !\r0|d5|Q~combout\ & ( (\r0|d4|Q~combout\ & (\r1|d0|Q~combout\ & (\r0|d3|Q~combout\ & \r1|d1|Q~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000001010100000000000100010001000100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r0|d4|ALT_INV_Q~combout\,
	datab => \r1|d0|ALT_INV_Q~combout\,
	datac => \r0|d3|ALT_INV_Q~combout\,
	datad => \r1|d1|ALT_INV_Q~combout\,
	datae => \f1|u0:3:cell_i|ALT_INV_c_out~combout\,
	dataf => \r0|d5|ALT_INV_Q~combout\,
	combout => \f1|u0:5:cell_i|c_out~0_combout\);

-- Location: MLABCELL_X34_Y3_N36
\f1|u0:8:cell_i|c_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|u0:8:cell_i|c_out~0_combout\ = ( \r0|d6|Q~combout\ & ( \f1|u0:5:cell_i|c_out~0_combout\ & ( (\r0|d7|Q~combout\ & (\r1|d1|Q~combout\ & ((\r1|d0|Q~combout\) # (\r0|d5|Q~combout\)))) ) ) ) # ( !\r0|d6|Q~combout\ & ( \f1|u0:5:cell_i|c_out~0_combout\ & ( 
-- (\r0|d5|Q~combout\ & (\r1|d0|Q~combout\ & (\r0|d7|Q~combout\ & \r1|d1|Q~combout\))) ) ) ) # ( \r0|d6|Q~combout\ & ( !\f1|u0:5:cell_i|c_out~0_combout\ & ( (\r1|d0|Q~combout\ & (\r0|d7|Q~combout\ & \r1|d1|Q~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001100000000000000010000000000000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r0|d5|ALT_INV_Q~combout\,
	datab => \r1|d0|ALT_INV_Q~combout\,
	datac => \r0|d7|ALT_INV_Q~combout\,
	datad => \r1|d1|ALT_INV_Q~combout\,
	datae => \r0|d6|ALT_INV_Q~combout\,
	dataf => \f1|u0:5:cell_i|ALT_INV_c_out~0_combout\,
	combout => \f1|u0:8:cell_i|c_out~0_combout\);

-- Location: LABCELL_X32_Y2_N3
\r1|d3|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \r1|d3|Q~combout\ = ( \sw[8]~input_o\ & ( \sw[3]~input_o\ ) ) # ( !\sw[8]~input_o\ & ( \r1|d3|Q~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sw[3]~input_o\,
	datad => \r1|d3|ALT_INV_Q~combout\,
	dataf => \ALT_INV_sw[8]~input_o\,
	combout => \r1|d3|Q~combout\);

-- Location: MLABCELL_X34_Y2_N3
\r1|d2|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \r1|d2|Q~combout\ = ( \sw[8]~input_o\ & ( \sw[2]~input_o\ ) ) # ( !\sw[8]~input_o\ & ( \r1|d2|Q~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sw[2]~input_o\,
	datad => \r1|d2|ALT_INV_Q~combout\,
	dataf => \ALT_INV_sw[8]~input_o\,
	combout => \r1|d2|Q~combout\);

-- Location: LABCELL_X36_Y2_N33
\f2|u0:5:cell_i|c_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \f2|u0:5:cell_i|c_out~combout\ = ( \r0|d2|Q~combout\ & ( \r1|d2|Q~combout\ & ( (\r1|d3|Q~combout\ & ((\r0|d1|Q~combout\) # (\r0|d3|Q~combout\))) ) ) ) # ( !\r0|d2|Q~combout\ & ( \r1|d2|Q~combout\ & ( (\r1|d3|Q~combout\ & (\r0|d3|Q~combout\ & 
-- (\r0|d0|Q~combout\ & \r0|d1|Q~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010001000101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r1|d3|ALT_INV_Q~combout\,
	datab => \r0|d3|ALT_INV_Q~combout\,
	datac => \r0|d0|ALT_INV_Q~combout\,
	datad => \r0|d1|ALT_INV_Q~combout\,
	datae => \r0|d2|ALT_INV_Q~combout\,
	dataf => \r1|d2|ALT_INV_Q~combout\,
	combout => \f2|u0:5:cell_i|c_out~combout\);

-- Location: MLABCELL_X34_Y2_N6
\f2|u0:7:cell_i|c_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f2|u0:7:cell_i|c_out~0_combout\ = ( \r0|d3|Q~combout\ & ( \f2|u0:5:cell_i|c_out~combout\ & ( (!\r0|d4|Q~combout\ & (\r1|d2|Q~combout\ & (\r1|d3|Q~combout\ & \r0|d5|Q~combout\))) # (\r0|d4|Q~combout\ & (((\r1|d2|Q~combout\ & \r0|d5|Q~combout\)) # 
-- (\r1|d3|Q~combout\))) ) ) ) # ( !\r0|d3|Q~combout\ & ( \f2|u0:5:cell_i|c_out~combout\ & ( (\r1|d2|Q~combout\ & (\r0|d4|Q~combout\ & ((\r0|d5|Q~combout\) # (\r1|d3|Q~combout\)))) ) ) ) # ( \r0|d3|Q~combout\ & ( !\f2|u0:5:cell_i|c_out~combout\ & ( 
-- (\r1|d2|Q~combout\ & (\r0|d4|Q~combout\ & \r1|d3|Q~combout\)) ) ) ) # ( !\r0|d3|Q~combout\ & ( !\f2|u0:5:cell_i|c_out~combout\ & ( (\r1|d2|Q~combout\ & (\r0|d4|Q~combout\ & (\r1|d3|Q~combout\ & \r0|d5|Q~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000010000000100000001000100010000001100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r1|d2|ALT_INV_Q~combout\,
	datab => \r0|d4|ALT_INV_Q~combout\,
	datac => \r1|d3|ALT_INV_Q~combout\,
	datad => \r0|d5|ALT_INV_Q~combout\,
	datae => \r0|d3|ALT_INV_Q~combout\,
	dataf => \f2|u0:5:cell_i|ALT_INV_c_out~combout\,
	combout => \f2|u0:7:cell_i|c_out~0_combout\);

-- Location: MLABCELL_X34_Y2_N42
\f2|u0:9:cell_i|c_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f2|u0:9:cell_i|c_out~0_combout\ = ( \r0|d6|Q~combout\ & ( \f2|u0:7:cell_i|c_out~0_combout\ & ( (!\r1|d3|Q~combout\ & (((\r1|d2|Q~combout\ & \r0|d7|Q~combout\)))) # (\r1|d3|Q~combout\ & (((\r1|d2|Q~combout\)) # (\r0|d5|Q~combout\))) ) ) ) # ( 
-- !\r0|d6|Q~combout\ & ( \f2|u0:7:cell_i|c_out~0_combout\ & ( (\r1|d3|Q~combout\ & (\r0|d5|Q~combout\ & (\r1|d2|Q~combout\ & \r0|d7|Q~combout\))) ) ) ) # ( \r0|d6|Q~combout\ & ( !\f2|u0:7:cell_i|c_out~0_combout\ & ( (\r1|d3|Q~combout\ & (\r1|d2|Q~combout\ & 
-- ((\r0|d7|Q~combout\) # (\r0|d5|Q~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000010100000000000000010001010100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r1|d3|ALT_INV_Q~combout\,
	datab => \r0|d5|ALT_INV_Q~combout\,
	datac => \r1|d2|ALT_INV_Q~combout\,
	datad => \r0|d7|ALT_INV_Q~combout\,
	datae => \r0|d6|ALT_INV_Q~combout\,
	dataf => \f2|u0:7:cell_i|ALT_INV_c_out~0_combout\,
	combout => \f2|u0:9:cell_i|c_out~0_combout\);

-- Location: MLABCELL_X34_Y2_N18
\f2|u0:9:cell_i|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \f2|u0:9:cell_i|s~combout\ = ( \r0|d6|Q~combout\ & ( \f2|u0:7:cell_i|c_out~0_combout\ & ( (!\r1|d2|Q~combout\ & (\r1|d3|Q~combout\ & (!\r0|d5|Q~combout\))) # (\r1|d2|Q~combout\ & (!\r1|d3|Q~combout\ $ (((\r0|d7|Q~combout\))))) ) ) ) # ( !\r0|d6|Q~combout\ 
-- & ( \f2|u0:7:cell_i|c_out~0_combout\ & ( (!\r1|d3|Q~combout\ & (((\r1|d2|Q~combout\ & \r0|d7|Q~combout\)))) # (\r1|d3|Q~combout\ & (!\r0|d5|Q~combout\ $ (((!\r1|d2|Q~combout\) # (!\r0|d7|Q~combout\))))) ) ) ) # ( \r0|d6|Q~combout\ & ( 
-- !\f2|u0:7:cell_i|c_out~0_combout\ & ( (!\r1|d2|Q~combout\ & (\r1|d3|Q~combout\)) # (\r1|d2|Q~combout\ & (!\r0|d7|Q~combout\ $ (((!\r1|d3|Q~combout\) # (\r0|d5|Q~combout\))))) ) ) ) # ( !\r0|d6|Q~combout\ & ( !\f2|u0:7:cell_i|c_out~0_combout\ & ( 
-- (\r1|d2|Q~combout\ & \r0|d7|Q~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010101000101101100010001000111100100101001000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r1|d3|ALT_INV_Q~combout\,
	datab => \r0|d5|ALT_INV_Q~combout\,
	datac => \r1|d2|ALT_INV_Q~combout\,
	datad => \r0|d7|ALT_INV_Q~combout\,
	datae => \r0|d6|ALT_INV_Q~combout\,
	dataf => \f2|u0:7:cell_i|ALT_INV_c_out~0_combout\,
	combout => \f2|u0:9:cell_i|s~combout\);

-- Location: MLABCELL_X34_Y2_N54
\f2|u0:6:cell_i|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \f2|u0:6:cell_i|s~combout\ = ( \f2|u0:5:cell_i|c_out~combout\ & ( (!\r1|d3|Q~combout\ & ((!\r0|d4|Q~combout\) # ((!\r1|d2|Q~combout\)))) # (\r1|d3|Q~combout\ & (!\r0|d3|Q~combout\ $ (((\r0|d4|Q~combout\ & \r1|d2|Q~combout\))))) ) ) # ( 
-- !\f2|u0:5:cell_i|c_out~combout\ & ( (!\r1|d3|Q~combout\ & (\r0|d4|Q~combout\ & (\r1|d2|Q~combout\))) # (\r1|d3|Q~combout\ & (!\r0|d3|Q~combout\ $ (((!\r0|d4|Q~combout\) # (!\r1|d2|Q~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010110000000110101011011111100101010011111110010101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r1|d3|ALT_INV_Q~combout\,
	datab => \r0|d4|ALT_INV_Q~combout\,
	datac => \r1|d2|ALT_INV_Q~combout\,
	datad => \r0|d3|ALT_INV_Q~combout\,
	dataf => \f2|u0:5:cell_i|ALT_INV_c_out~combout\,
	combout => \f2|u0:6:cell_i|s~combout\);

-- Location: MLABCELL_X34_Y3_N27
\f1|u0:6:cell_i|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|u0:6:cell_i|s~0_combout\ = ( \r0|d5|Q~combout\ & ( !\r1|d1|Q~combout\ $ (((!\r1|d0|Q~combout\) # (!\r0|d6|Q~combout\))) ) ) # ( !\r0|d5|Q~combout\ & ( (\r1|d0|Q~combout\ & \r0|d6|Q~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100110011001111000011001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \r1|d1|ALT_INV_Q~combout\,
	datac => \r1|d0|ALT_INV_Q~combout\,
	datad => \r0|d6|ALT_INV_Q~combout\,
	dataf => \r0|d5|ALT_INV_Q~combout\,
	combout => \f1|u0:6:cell_i|s~0_combout\);

-- Location: MLABCELL_X34_Y3_N3
\comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = (\r0|d4|Q~combout\ & \r1|d0|Q~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r0|d4|ALT_INV_Q~combout\,
	datab => \r1|d0|ALT_INV_Q~combout\,
	combout => \comb~2_combout\);

-- Location: MLABCELL_X34_Y3_N9
\f1|u0:5:cell_i|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|u0:5:cell_i|s~0_combout\ = ( \r0|d5|Q~combout\ & ( !\r1|d0|Q~combout\ $ (((!\r1|d1|Q~combout\) # (!\r0|d4|Q~combout\))) ) ) # ( !\r0|d5|Q~combout\ & ( (\r1|d1|Q~combout\ & \r0|d4|Q~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100001111001111000000111100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \r1|d1|ALT_INV_Q~combout\,
	datac => \r1|d0|ALT_INV_Q~combout\,
	datad => \r0|d4|ALT_INV_Q~combout\,
	dataf => \r0|d5|ALT_INV_Q~combout\,
	combout => \f1|u0:5:cell_i|s~0_combout\);

-- Location: MLABCELL_X34_Y3_N6
\f1|u0:5:cell_i|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|u0:5:cell_i|s~combout\ = ( \f1|u0:5:cell_i|s~0_combout\ & ( (!\comb~2_combout\ & ((!\r0|d3|Q~combout\) # ((!\r1|d1|Q~combout\) # (!\f1|u0:3:cell_i|c_out~combout\)))) # (\comb~2_combout\ & (!\f1|u0:3:cell_i|c_out~combout\ & ((!\r0|d3|Q~combout\) # 
-- (!\r1|d1|Q~combout\)))) ) ) # ( !\f1|u0:5:cell_i|s~0_combout\ & ( (!\comb~2_combout\ & (\r0|d3|Q~combout\ & (\r1|d1|Q~combout\ & \f1|u0:3:cell_i|c_out~combout\))) # (\comb~2_combout\ & (((\r0|d3|Q~combout\ & \r1|d1|Q~combout\)) # 
-- (\f1|u0:3:cell_i|c_out~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111000000010001111111111110111000001111111011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r0|d3|ALT_INV_Q~combout\,
	datab => \r1|d1|ALT_INV_Q~combout\,
	datac => \ALT_INV_comb~2_combout\,
	datad => \f1|u0:3:cell_i|ALT_INV_c_out~combout\,
	dataf => \f1|u0:5:cell_i|ALT_INV_s~0_combout\,
	combout => \f1|u0:5:cell_i|s~combout\);

-- Location: LABCELL_X32_Y2_N0
\f2|u0:4:cell_i|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \f2|u0:4:cell_i|s~combout\ = ( \r1|d2|Q~combout\ & ( !\r0|d2|Q~combout\ $ (((!\r1|d3|Q~combout\) # ((!\r0|d1|Q~combout\) # (\r0|d0|Q~combout\)))) ) ) # ( !\r1|d2|Q~combout\ & ( (\r1|d3|Q~combout\ & \r0|d1|Q~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100011110000011110001111000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r1|d3|ALT_INV_Q~combout\,
	datab => \r0|d1|ALT_INV_Q~combout\,
	datac => \r0|d2|ALT_INV_Q~combout\,
	datad => \r0|d0|ALT_INV_Q~combout\,
	dataf => \r1|d2|ALT_INV_Q~combout\,
	combout => \f2|u0:4:cell_i|s~combout\);

-- Location: LABCELL_X32_Y2_N42
\f5|u0:2:cell_i|c_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f5|u0:2:cell_i|c_out~0_combout\ = ( \r0|d1|Q~combout\ & ( \r1|d1|Q~combout\ & ( (\r1|d2|Q~combout\ & (\r0|d0|Q~combout\ & ((!\r1|d0|Q~combout\) # (\r0|d2|Q~combout\)))) ) ) ) # ( !\r0|d1|Q~combout\ & ( \r1|d1|Q~combout\ & ( (\r1|d2|Q~combout\ & 
-- (\r1|d0|Q~combout\ & (\r0|d2|Q~combout\ & \r0|d0|Q~combout\))) ) ) ) # ( \r0|d1|Q~combout\ & ( !\r1|d1|Q~combout\ & ( (\r1|d2|Q~combout\ & (\r1|d0|Q~combout\ & (\r0|d2|Q~combout\ & \r0|d0|Q~combout\))) ) ) ) # ( !\r0|d1|Q~combout\ & ( !\r1|d1|Q~combout\ & 
-- ( (\r1|d2|Q~combout\ & (\r1|d0|Q~combout\ & (\r0|d2|Q~combout\ & \r0|d0|Q~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000001000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r1|d2|ALT_INV_Q~combout\,
	datab => \r1|d0|ALT_INV_Q~combout\,
	datac => \r0|d2|ALT_INV_Q~combout\,
	datad => \r0|d0|ALT_INV_Q~combout\,
	datae => \r0|d1|ALT_INV_Q~combout\,
	dataf => \r1|d1|ALT_INV_Q~combout\,
	combout => \f5|u0:2:cell_i|c_out~0_combout\);

-- Location: LABCELL_X32_Y2_N36
\f2|u0:3:cell_i|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f2|u0:3:cell_i|s~0_combout\ = ( \r0|d0|Q~combout\ & ( !\r1|d3|Q~combout\ $ (((!\r1|d2|Q~combout\) # (!\r0|d1|Q~combout\))) ) ) # ( !\r0|d0|Q~combout\ & ( (\r1|d2|Q~combout\ & \r0|d1|Q~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100011110000111100001111000011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r1|d2|ALT_INV_Q~combout\,
	datab => \r0|d1|ALT_INV_Q~combout\,
	datac => \r1|d3|ALT_INV_Q~combout\,
	dataf => \r0|d0|ALT_INV_Q~combout\,
	combout => \f2|u0:3:cell_i|s~0_combout\);

-- Location: MLABCELL_X34_Y3_N0
\f1|u0:4:cell_i|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|u0:4:cell_i|s~0_combout\ = ( \r1|d1|Q~combout\ & ( !\r0|d3|Q~combout\ $ (((!\r0|d4|Q~combout\) # (!\r1|d0|Q~combout\))) ) ) # ( !\r1|d1|Q~combout\ & ( (\r0|d4|Q~combout\ & \r1|d0|Q~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100011110000111100001111000011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r0|d4|ALT_INV_Q~combout\,
	datab => \r1|d0|ALT_INV_Q~combout\,
	datac => \r0|d3|ALT_INV_Q~combout\,
	dataf => \r1|d1|ALT_INV_Q~combout\,
	combout => \f1|u0:4:cell_i|s~0_combout\);

-- Location: LABCELL_X32_Y2_N18
\f1|u0:3:cell_i|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|u0:3:cell_i|s~combout\ = ( \r0|d1|Q~combout\ & ( \r1|d1|Q~combout\ & ( (!\r1|d0|Q~combout\ & (((\r0|d2|Q~combout\)))) # (\r1|d0|Q~combout\ & (!\r0|d3|Q~combout\ $ (((!\r0|d0|Q~combout\) # (\r0|d2|Q~combout\))))) ) ) ) # ( !\r0|d1|Q~combout\ & ( 
-- \r1|d1|Q~combout\ & ( !\r0|d2|Q~combout\ $ (((!\r0|d3|Q~combout\) # (!\r1|d0|Q~combout\))) ) ) ) # ( \r0|d1|Q~combout\ & ( !\r1|d1|Q~combout\ & ( (\r0|d3|Q~combout\ & \r1|d0|Q~combout\) ) ) ) # ( !\r0|d1|Q~combout\ & ( !\r1|d1|Q~combout\ & ( 
-- (\r0|d3|Q~combout\ & \r1|d0|Q~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100011110000111100001110100101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r0|d3|ALT_INV_Q~combout\,
	datab => \r1|d0|ALT_INV_Q~combout\,
	datac => \r0|d2|ALT_INV_Q~combout\,
	datad => \r0|d0|ALT_INV_Q~combout\,
	datae => \r0|d1|ALT_INV_Q~combout\,
	dataf => \r1|d1|ALT_INV_Q~combout\,
	combout => \f1|u0:3:cell_i|s~combout\);

-- Location: LABCELL_X32_Y2_N54
\f5|u0:4:cell_i|c_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f5|u0:4:cell_i|c_out~0_combout\ = ( \f1|u0:4:cell_i|s~0_combout\ & ( \f1|u0:3:cell_i|s~combout\ & ( (!\f2|u0:4:cell_i|s~combout\ & (!\f1|u0:3:cell_i|c_out~combout\ & ((\f2|u0:3:cell_i|s~0_combout\) # (\f5|u0:2:cell_i|c_out~0_combout\)))) # 
-- (\f2|u0:4:cell_i|s~combout\ & (((!\f1|u0:3:cell_i|c_out~combout\) # (\f2|u0:3:cell_i|s~0_combout\)) # (\f5|u0:2:cell_i|c_out~0_combout\))) ) ) ) # ( !\f1|u0:4:cell_i|s~0_combout\ & ( \f1|u0:3:cell_i|s~combout\ & ( (!\f2|u0:4:cell_i|s~combout\ & 
-- (\f1|u0:3:cell_i|c_out~combout\ & ((\f2|u0:3:cell_i|s~0_combout\) # (\f5|u0:2:cell_i|c_out~0_combout\)))) # (\f2|u0:4:cell_i|s~combout\ & (((\f1|u0:3:cell_i|c_out~combout\) # (\f2|u0:3:cell_i|s~0_combout\)) # (\f5|u0:2:cell_i|c_out~0_combout\))) ) ) ) # ( 
-- \f1|u0:4:cell_i|s~0_combout\ & ( !\f1|u0:3:cell_i|s~combout\ & ( (!\f2|u0:4:cell_i|s~combout\ & (\f5|u0:2:cell_i|c_out~0_combout\ & (\f2|u0:3:cell_i|s~0_combout\ & !\f1|u0:3:cell_i|c_out~combout\))) # (\f2|u0:4:cell_i|s~combout\ & 
-- ((!\f1|u0:3:cell_i|c_out~combout\) # ((\f5|u0:2:cell_i|c_out~0_combout\ & \f2|u0:3:cell_i|s~0_combout\)))) ) ) ) # ( !\f1|u0:4:cell_i|s~0_combout\ & ( !\f1|u0:3:cell_i|s~combout\ & ( (!\f2|u0:4:cell_i|s~combout\ & (\f5|u0:2:cell_i|c_out~0_combout\ & 
-- (\f2|u0:3:cell_i|s~0_combout\ & \f1|u0:3:cell_i|c_out~combout\))) # (\f2|u0:4:cell_i|s~combout\ & (((\f5|u0:2:cell_i|c_out~0_combout\ & \f2|u0:3:cell_i|s~0_combout\)) # (\f1|u0:3:cell_i|c_out~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010111010101110000000100010101011111110111111100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f2|u0:4:cell_i|ALT_INV_s~combout\,
	datab => \f5|u0:2:cell_i|ALT_INV_c_out~0_combout\,
	datac => \f2|u0:3:cell_i|ALT_INV_s~0_combout\,
	datad => \f1|u0:3:cell_i|ALT_INV_c_out~combout\,
	datae => \f1|u0:4:cell_i|ALT_INV_s~0_combout\,
	dataf => \f1|u0:3:cell_i|ALT_INV_s~combout\,
	combout => \f5|u0:4:cell_i|c_out~0_combout\);

-- Location: LABCELL_X36_Y2_N39
\f2|u0:5:cell_i|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \f2|u0:5:cell_i|s~combout\ = ( \r0|d2|Q~combout\ & ( \r1|d2|Q~combout\ & ( !\r0|d3|Q~combout\ $ (((!\r1|d3|Q~combout\) # (\r0|d1|Q~combout\))) ) ) ) # ( !\r0|d2|Q~combout\ & ( \r1|d2|Q~combout\ & ( !\r0|d3|Q~combout\ $ (((!\r1|d3|Q~combout\) # 
-- ((!\r0|d0|Q~combout\) # (!\r0|d1|Q~combout\)))) ) ) ) # ( \r0|d2|Q~combout\ & ( !\r1|d2|Q~combout\ & ( \r1|d3|Q~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100110011001101100110011000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r1|d3|ALT_INV_Q~combout\,
	datab => \r0|d3|ALT_INV_Q~combout\,
	datac => \r0|d0|ALT_INV_Q~combout\,
	datad => \r0|d1|ALT_INV_Q~combout\,
	datae => \r0|d2|ALT_INV_Q~combout\,
	dataf => \r1|d2|ALT_INV_Q~combout\,
	combout => \f2|u0:5:cell_i|s~combout\);

-- Location: MLABCELL_X34_Y3_N42
\f5|u0:6:cell_i|c_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f5|u0:6:cell_i|c_out~0_combout\ = ( \f5|u0:4:cell_i|c_out~0_combout\ & ( \f2|u0:5:cell_i|s~combout\ & ( (!\f1|u0:5:cell_i|c_out~0_combout\ $ (!\f1|u0:6:cell_i|s~0_combout\)) # (\f2|u0:6:cell_i|s~combout\) ) ) ) # ( !\f5|u0:4:cell_i|c_out~0_combout\ & ( 
-- \f2|u0:5:cell_i|s~combout\ & ( (!\f2|u0:6:cell_i|s~combout\ & (\f1|u0:5:cell_i|s~combout\ & (!\f1|u0:5:cell_i|c_out~0_combout\ $ (!\f1|u0:6:cell_i|s~0_combout\)))) # (\f2|u0:6:cell_i|s~combout\ & ((!\f1|u0:5:cell_i|c_out~0_combout\ $ 
-- (!\f1|u0:6:cell_i|s~0_combout\)) # (\f1|u0:5:cell_i|s~combout\))) ) ) ) # ( \f5|u0:4:cell_i|c_out~0_combout\ & ( !\f2|u0:5:cell_i|s~combout\ & ( (!\f2|u0:6:cell_i|s~combout\ & (\f1|u0:5:cell_i|s~combout\ & (!\f1|u0:5:cell_i|c_out~0_combout\ $ 
-- (!\f1|u0:6:cell_i|s~0_combout\)))) # (\f2|u0:6:cell_i|s~combout\ & ((!\f1|u0:5:cell_i|c_out~0_combout\ $ (!\f1|u0:6:cell_i|s~0_combout\)) # (\f1|u0:5:cell_i|s~combout\))) ) ) ) # ( !\f5|u0:4:cell_i|c_out~0_combout\ & ( !\f2|u0:5:cell_i|s~combout\ & ( 
-- (\f2|u0:6:cell_i|s~combout\ & (!\f1|u0:5:cell_i|c_out~0_combout\ $ (!\f1|u0:6:cell_i|s~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100111101100010010011110110111101101111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|u0:5:cell_i|ALT_INV_c_out~0_combout\,
	datab => \f2|u0:6:cell_i|ALT_INV_s~combout\,
	datac => \f1|u0:6:cell_i|ALT_INV_s~0_combout\,
	datad => \f1|u0:5:cell_i|ALT_INV_s~combout\,
	datae => \f5|u0:4:cell_i|ALT_INV_c_out~0_combout\,
	dataf => \f2|u0:5:cell_i|ALT_INV_s~combout\,
	combout => \f5|u0:6:cell_i|c_out~0_combout\);

-- Location: MLABCELL_X34_Y2_N0
\f1|u0:7:cell_i|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|u0:7:cell_i|s~0_combout\ = ( \r0|d7|Q~combout\ & ( !\r1|d0|Q~combout\ $ (((!\r0|d6|Q~combout\) # (!\r1|d1|Q~combout\))) ) ) # ( !\r0|d7|Q~combout\ & ( (\r0|d6|Q~combout\ & \r1|d1|Q~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100110011001111000011001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \r1|d0|ALT_INV_Q~combout\,
	datac => \r0|d6|ALT_INV_Q~combout\,
	datad => \r1|d1|ALT_INV_Q~combout\,
	dataf => \r0|d7|ALT_INV_Q~combout\,
	combout => \f1|u0:7:cell_i|s~0_combout\);

-- Location: MLABCELL_X34_Y3_N21
\comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = ( \r1|d0|Q~combout\ & ( \r0|d6|Q~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r0|d6|ALT_INV_Q~combout\,
	dataf => \r1|d0|ALT_INV_Q~combout\,
	combout => \comb~1_combout\);

-- Location: MLABCELL_X34_Y2_N30
\f1|u0:7:cell_i|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|u0:7:cell_i|s~combout\ = ( \comb~1_combout\ & ( !\f1|u0:7:cell_i|s~0_combout\ $ (((!\f1|u0:5:cell_i|c_out~0_combout\ & ((!\r1|d1|Q~combout\) # (!\r0|d5|Q~combout\))))) ) ) # ( !\comb~1_combout\ & ( !\f1|u0:7:cell_i|s~0_combout\ $ 
-- (((!\r1|d1|Q~combout\) # ((!\r0|d5|Q~combout\) # (!\f1|u0:5:cell_i|c_out~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010110010101010101011001010110101010100101011010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|u0:7:cell_i|ALT_INV_s~0_combout\,
	datab => \r1|d1|ALT_INV_Q~combout\,
	datac => \r0|d5|ALT_INV_Q~combout\,
	datad => \f1|u0:5:cell_i|ALT_INV_c_out~0_combout\,
	dataf => \ALT_INV_comb~1_combout\,
	combout => \f1|u0:7:cell_i|s~combout\);

-- Location: MLABCELL_X34_Y2_N36
\f2|u0:7:cell_i|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \f2|u0:7:cell_i|s~combout\ = ( \r0|d3|Q~combout\ & ( \f2|u0:5:cell_i|c_out~combout\ & ( (!\r1|d2|Q~combout\ & (!\r0|d4|Q~combout\ & (\r1|d3|Q~combout\))) # (\r1|d2|Q~combout\ & (!\r0|d4|Q~combout\ $ (!\r1|d3|Q~combout\ $ (\r0|d5|Q~combout\)))) ) ) ) # ( 
-- !\r0|d3|Q~combout\ & ( \f2|u0:5:cell_i|c_out~combout\ & ( (!\r1|d2|Q~combout\ & (\r0|d4|Q~combout\ & (\r1|d3|Q~combout\))) # (\r1|d2|Q~combout\ & (!\r0|d5|Q~combout\ $ (((!\r0|d4|Q~combout\) # (\r1|d3|Q~combout\))))) ) ) ) # ( \r0|d3|Q~combout\ & ( 
-- !\f2|u0:5:cell_i|c_out~combout\ & ( (!\r1|d2|Q~combout\ & (\r0|d4|Q~combout\ & (\r1|d3|Q~combout\))) # (\r1|d2|Q~combout\ & (((\r0|d5|Q~combout\)))) ) ) ) # ( !\r0|d3|Q~combout\ & ( !\f2|u0:5:cell_i|c_out~combout\ & ( (!\r1|d2|Q~combout\ & 
-- (\r0|d4|Q~combout\ & (\r1|d3|Q~combout\))) # (\r1|d2|Q~combout\ & (!\r0|d5|Q~combout\ $ (((!\r0|d4|Q~combout\) # (!\r1|d3|Q~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010110000000100101011100010010010001110001110001001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r1|d2|ALT_INV_Q~combout\,
	datab => \r0|d4|ALT_INV_Q~combout\,
	datac => \r1|d3|ALT_INV_Q~combout\,
	datad => \r0|d5|ALT_INV_Q~combout\,
	datae => \r0|d3|ALT_INV_Q~combout\,
	dataf => \f2|u0:5:cell_i|ALT_INV_c_out~combout\,
	combout => \f2|u0:7:cell_i|s~combout\);

-- Location: MLABCELL_X34_Y2_N57
\f2|u0:8:cell_i|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f2|u0:8:cell_i|s~0_combout\ = ( \r1|d2|Q~combout\ & ( !\r0|d6|Q~combout\ $ (((!\r1|d3|Q~combout\) # (!\r0|d5|Q~combout\))) ) ) # ( !\r1|d2|Q~combout\ & ( (\r1|d3|Q~combout\ & \r0|d5|Q~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101111110100000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r1|d3|ALT_INV_Q~combout\,
	datac => \r0|d5|ALT_INV_Q~combout\,
	datad => \r0|d6|ALT_INV_Q~combout\,
	dataf => \r1|d2|ALT_INV_Q~combout\,
	combout => \f2|u0:8:cell_i|s~0_combout\);

-- Location: MLABCELL_X34_Y3_N12
\f1|u0:8:cell_i|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|u0:8:cell_i|s~combout\ = ( \r0|d6|Q~combout\ & ( \f1|u0:5:cell_i|c_out~0_combout\ & ( (!\r1|d0|Q~combout\ & (\r1|d1|Q~combout\ & (!\r0|d5|Q~combout\ $ (!\r0|d7|Q~combout\)))) # (\r1|d0|Q~combout\ & ((!\r0|d7|Q~combout\ $ (!\r1|d1|Q~combout\)))) ) ) ) 
-- # ( !\r0|d6|Q~combout\ & ( \f1|u0:5:cell_i|c_out~0_combout\ & ( (\r0|d7|Q~combout\ & (\r1|d1|Q~combout\ & ((!\r0|d5|Q~combout\) # (!\r1|d0|Q~combout\)))) ) ) ) # ( \r0|d6|Q~combout\ & ( !\f1|u0:5:cell_i|c_out~0_combout\ & ( (\r1|d1|Q~combout\ & 
-- ((!\r1|d0|Q~combout\ & ((\r0|d7|Q~combout\))) # (\r1|d0|Q~combout\ & (\r0|d5|Q~combout\ & !\r0|d7|Q~combout\)))) ) ) ) # ( !\r0|d6|Q~combout\ & ( !\f1|u0:5:cell_i|c_out~0_combout\ & ( (\r0|d7|Q~combout\ & \r1|d1|Q~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000001110000000000000011100000001101111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r0|d5|ALT_INV_Q~combout\,
	datab => \r1|d0|ALT_INV_Q~combout\,
	datac => \r0|d7|ALT_INV_Q~combout\,
	datad => \r1|d1|ALT_INV_Q~combout\,
	datae => \r0|d6|ALT_INV_Q~combout\,
	dataf => \f1|u0:5:cell_i|ALT_INV_c_out~0_combout\,
	combout => \f1|u0:8:cell_i|s~combout\);

-- Location: MLABCELL_X34_Y2_N12
\f5|u0:8:cell_i|c_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f5|u0:8:cell_i|c_out~0_combout\ = ( \f2|u0:8:cell_i|s~0_combout\ & ( \f1|u0:8:cell_i|s~combout\ & ( (!\f2|u0:7:cell_i|c_out~0_combout\) # ((!\f5|u0:6:cell_i|c_out~0_combout\ & (\f1|u0:7:cell_i|s~combout\ & \f2|u0:7:cell_i|s~combout\)) # 
-- (\f5|u0:6:cell_i|c_out~0_combout\ & ((\f2|u0:7:cell_i|s~combout\) # (\f1|u0:7:cell_i|s~combout\)))) ) ) ) # ( !\f2|u0:8:cell_i|s~0_combout\ & ( \f1|u0:8:cell_i|s~combout\ & ( ((!\f5|u0:6:cell_i|c_out~0_combout\ & (\f1|u0:7:cell_i|s~combout\ & 
-- \f2|u0:7:cell_i|s~combout\)) # (\f5|u0:6:cell_i|c_out~0_combout\ & ((\f2|u0:7:cell_i|s~combout\) # (\f1|u0:7:cell_i|s~combout\)))) # (\f2|u0:7:cell_i|c_out~0_combout\) ) ) ) # ( \f2|u0:8:cell_i|s~0_combout\ & ( !\f1|u0:8:cell_i|s~combout\ & ( 
-- (!\f2|u0:7:cell_i|c_out~0_combout\ & ((!\f5|u0:6:cell_i|c_out~0_combout\ & (\f1|u0:7:cell_i|s~combout\ & \f2|u0:7:cell_i|s~combout\)) # (\f5|u0:6:cell_i|c_out~0_combout\ & ((\f2|u0:7:cell_i|s~combout\) # (\f1|u0:7:cell_i|s~combout\))))) ) ) ) # ( 
-- !\f2|u0:8:cell_i|s~0_combout\ & ( !\f1|u0:8:cell_i|s~combout\ & ( (\f2|u0:7:cell_i|c_out~0_combout\ & ((!\f5|u0:6:cell_i|c_out~0_combout\ & (\f1|u0:7:cell_i|s~combout\ & \f2|u0:7:cell_i|s~combout\)) # (\f5|u0:6:cell_i|c_out~0_combout\ & 
-- ((\f2|u0:7:cell_i|s~combout\) # (\f1|u0:7:cell_i|s~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010111000101110000000000010111111111111111111100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f5|u0:6:cell_i|ALT_INV_c_out~0_combout\,
	datab => \f1|u0:7:cell_i|ALT_INV_s~combout\,
	datac => \f2|u0:7:cell_i|ALT_INV_s~combout\,
	datad => \f2|u0:7:cell_i|ALT_INV_c_out~0_combout\,
	datae => \f2|u0:8:cell_i|ALT_INV_s~0_combout\,
	dataf => \f1|u0:8:cell_i|ALT_INV_s~combout\,
	combout => \f5|u0:8:cell_i|c_out~0_combout\);

-- Location: MLABCELL_X34_Y2_N33
\comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (\r0|d7|Q~combout\ & \r1|d3|Q~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \r0|d7|ALT_INV_Q~combout\,
	datad => \r1|d3|ALT_INV_Q~combout\,
	combout => \comb~0_combout\);

-- Location: LABCELL_X35_Y2_N3
\f5|u0:11:cell_i|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \f5|u0:11:cell_i|s~combout\ = ( \comb~0_combout\ & ( ((!\f1|u0:8:cell_i|c_out~0_combout\ & (\f2|u0:9:cell_i|s~combout\ & \f5|u0:8:cell_i|c_out~0_combout\)) # (\f1|u0:8:cell_i|c_out~0_combout\ & ((\f5|u0:8:cell_i|c_out~0_combout\) # 
-- (\f2|u0:9:cell_i|s~combout\)))) # (\f2|u0:9:cell_i|c_out~0_combout\) ) ) # ( !\comb~0_combout\ & ( (\f2|u0:9:cell_i|c_out~0_combout\ & ((!\f1|u0:8:cell_i|c_out~0_combout\ & (\f2|u0:9:cell_i|s~combout\ & \f5|u0:8:cell_i|c_out~0_combout\)) # 
-- (\f1|u0:8:cell_i|c_out~0_combout\ & ((\f5|u0:8:cell_i|c_out~0_combout\) # (\f2|u0:9:cell_i|s~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010011001101110111111100000001000100110011011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|u0:8:cell_i|ALT_INV_c_out~0_combout\,
	datab => \f2|u0:9:cell_i|ALT_INV_c_out~0_combout\,
	datac => \f2|u0:9:cell_i|ALT_INV_s~combout\,
	datad => \f5|u0:8:cell_i|ALT_INV_c_out~0_combout\,
	datae => \ALT_INV_comb~0_combout\,
	combout => \f5|u0:11:cell_i|s~combout\);

-- Location: MLABCELL_X34_Y1_N48
\f6|u0:10:cell_i|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \f6|u0:10:cell_i|s~combout\ = ( \f3|u0:9:cell_i|c_out~0_combout\ & ( \f6|u0:8:cell_i|c_out~0_combout\ & ( !\f3|u0:10:cell_i|s~0_combout\ $ (!\f4|u0:10:cell_i|s~combout\ $ (((!\f3|u0:9:cell_i|s~combout\ & !\f4|u0:9:cell_i|s~combout\)))) ) ) ) # ( 
-- !\f3|u0:9:cell_i|c_out~0_combout\ & ( \f6|u0:8:cell_i|c_out~0_combout\ & ( !\f3|u0:10:cell_i|s~0_combout\ $ (!\f4|u0:10:cell_i|s~combout\ $ (((\f4|u0:9:cell_i|s~combout\) # (\f3|u0:9:cell_i|s~combout\)))) ) ) ) # ( \f3|u0:9:cell_i|c_out~0_combout\ & ( 
-- !\f6|u0:8:cell_i|c_out~0_combout\ & ( !\f3|u0:10:cell_i|s~0_combout\ $ (!\f4|u0:10:cell_i|s~combout\ $ (((!\f3|u0:9:cell_i|s~combout\) # (!\f4|u0:9:cell_i|s~combout\)))) ) ) ) # ( !\f3|u0:9:cell_i|c_out~0_combout\ & ( !\f6|u0:8:cell_i|c_out~0_combout\ & ( 
-- !\f3|u0:10:cell_i|s~0_combout\ $ (!\f4|u0:10:cell_i|s~combout\ $ (((\f3|u0:9:cell_i|s~combout\ & \f4|u0:9:cell_i|s~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011011001001110010010011011001101100100100111001001101101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f3|u0:9:cell_i|ALT_INV_s~combout\,
	datab => \f3|u0:10:cell_i|ALT_INV_s~0_combout\,
	datac => \f4|u0:9:cell_i|ALT_INV_s~combout\,
	datad => \f4|u0:10:cell_i|ALT_INV_s~combout\,
	datae => \f3|u0:9:cell_i|ALT_INV_c_out~0_combout\,
	dataf => \f6|u0:8:cell_i|ALT_INV_c_out~0_combout\,
	combout => \f6|u0:10:cell_i|s~combout\);

-- Location: LABCELL_X35_Y2_N51
\f5|u0:10:cell_i|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \f5|u0:10:cell_i|s~combout\ = ( \f1|u0:8:cell_i|c_out~0_combout\ & ( !\comb~0_combout\ $ (!\f2|u0:9:cell_i|c_out~0_combout\ $ (((\f2|u0:9:cell_i|s~combout\) # (\f5|u0:8:cell_i|c_out~0_combout\)))) ) ) # ( !\f1|u0:8:cell_i|c_out~0_combout\ & ( 
-- !\comb~0_combout\ $ (!\f2|u0:9:cell_i|c_out~0_combout\ $ (((\f5|u0:8:cell_i|c_out~0_combout\ & \f2|u0:9:cell_i|s~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111011100001000111101110000101111000100001110111100010000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f5|u0:8:cell_i|ALT_INV_c_out~0_combout\,
	datab => \f2|u0:9:cell_i|ALT_INV_s~combout\,
	datac => \ALT_INV_comb~0_combout\,
	datad => \f2|u0:9:cell_i|ALT_INV_c_out~0_combout\,
	dataf => \f1|u0:8:cell_i|ALT_INV_c_out~0_combout\,
	combout => \f5|u0:10:cell_i|s~combout\);

-- Location: LABCELL_X35_Y2_N27
\f5|u0:9:cell_i|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f5|u0:9:cell_i|s~0_combout\ = ( \f1|u0:8:cell_i|c_out~0_combout\ & ( !\f2|u0:9:cell_i|s~combout\ ) ) # ( !\f1|u0:8:cell_i|c_out~0_combout\ & ( \f2|u0:9:cell_i|s~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \f2|u0:9:cell_i|ALT_INV_s~combout\,
	dataf => \f1|u0:8:cell_i|ALT_INV_c_out~0_combout\,
	combout => \f5|u0:9:cell_i|s~0_combout\);

-- Location: LABCELL_X35_Y2_N30
\f6|u0:8:cell_i|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \f6|u0:8:cell_i|s~combout\ = ( \f6|u0:6:cell_i|c_out~0_combout\ & ( \f4|u0:7:cell_i|s~0_combout\ & ( !\f4|u0:8:cell_i|s~combout\ $ (!\f3|u0:7:cell_i|c_out~0_combout\ $ (!\f3|u0:8:cell_i|s~0_combout\)) ) ) ) # ( !\f6|u0:6:cell_i|c_out~0_combout\ & ( 
-- \f4|u0:7:cell_i|s~0_combout\ & ( !\f4|u0:8:cell_i|s~combout\ $ (!\f3|u0:7:cell_i|s~combout\ $ (!\f3|u0:7:cell_i|c_out~0_combout\ $ (!\f3|u0:8:cell_i|s~0_combout\))) ) ) ) # ( \f6|u0:6:cell_i|c_out~0_combout\ & ( !\f4|u0:7:cell_i|s~0_combout\ & ( 
-- !\f4|u0:8:cell_i|s~combout\ $ (!\f3|u0:7:cell_i|s~combout\ $ (!\f3|u0:7:cell_i|c_out~0_combout\ $ (!\f3|u0:8:cell_i|s~0_combout\))) ) ) ) # ( !\f6|u0:6:cell_i|c_out~0_combout\ & ( !\f4|u0:7:cell_i|s~0_combout\ & ( !\f4|u0:8:cell_i|s~combout\ $ 
-- (!\f3|u0:7:cell_i|c_out~0_combout\ $ (\f3|u0:8:cell_i|s~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101011010011001011001101001100101101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f4|u0:8:cell_i|ALT_INV_s~combout\,
	datab => \f3|u0:7:cell_i|ALT_INV_s~combout\,
	datac => \f3|u0:7:cell_i|ALT_INV_c_out~0_combout\,
	datad => \f3|u0:8:cell_i|ALT_INV_s~0_combout\,
	datae => \f6|u0:6:cell_i|ALT_INV_c_out~0_combout\,
	dataf => \f4|u0:7:cell_i|ALT_INV_s~0_combout\,
	combout => \f6|u0:8:cell_i|s~combout\);

-- Location: LABCELL_X35_Y2_N24
\f6|u0:9:cell_i|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \f6|u0:9:cell_i|s~combout\ = ( \f6|u0:8:cell_i|c_out~0_combout\ & ( !\f3|u0:9:cell_i|s~combout\ $ (\f4|u0:9:cell_i|s~combout\) ) ) # ( !\f6|u0:8:cell_i|c_out~0_combout\ & ( !\f3|u0:9:cell_i|s~combout\ $ (!\f4|u0:9:cell_i|s~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f3|u0:9:cell_i|ALT_INV_s~combout\,
	datac => \f4|u0:9:cell_i|ALT_INV_s~combout\,
	dataf => \f6|u0:8:cell_i|ALT_INV_c_out~0_combout\,
	combout => \f6|u0:9:cell_i|s~combout\);

-- Location: MLABCELL_X34_Y2_N48
\f5|u0:8:cell_i|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \f5|u0:8:cell_i|s~combout\ = ( \f2|u0:8:cell_i|s~0_combout\ & ( \f1|u0:8:cell_i|s~combout\ & ( !\f2|u0:7:cell_i|c_out~0_combout\ $ (((!\f5|u0:6:cell_i|c_out~0_combout\ & ((!\f1|u0:7:cell_i|s~combout\) # (!\f2|u0:7:cell_i|s~combout\))) # 
-- (\f5|u0:6:cell_i|c_out~0_combout\ & (!\f1|u0:7:cell_i|s~combout\ & !\f2|u0:7:cell_i|s~combout\)))) ) ) ) # ( !\f2|u0:8:cell_i|s~0_combout\ & ( \f1|u0:8:cell_i|s~combout\ & ( !\f2|u0:7:cell_i|c_out~0_combout\ $ (((!\f5|u0:6:cell_i|c_out~0_combout\ & 
-- (\f1|u0:7:cell_i|s~combout\ & \f2|u0:7:cell_i|s~combout\)) # (\f5|u0:6:cell_i|c_out~0_combout\ & ((\f2|u0:7:cell_i|s~combout\) # (\f1|u0:7:cell_i|s~combout\))))) ) ) ) # ( \f2|u0:8:cell_i|s~0_combout\ & ( !\f1|u0:8:cell_i|s~combout\ & ( 
-- !\f2|u0:7:cell_i|c_out~0_combout\ $ (((!\f5|u0:6:cell_i|c_out~0_combout\ & (\f1|u0:7:cell_i|s~combout\ & \f2|u0:7:cell_i|s~combout\)) # (\f5|u0:6:cell_i|c_out~0_combout\ & ((\f2|u0:7:cell_i|s~combout\) # (\f1|u0:7:cell_i|s~combout\))))) ) ) ) # ( 
-- !\f2|u0:8:cell_i|s~0_combout\ & ( !\f1|u0:8:cell_i|s~combout\ & ( !\f2|u0:7:cell_i|c_out~0_combout\ $ (((!\f5|u0:6:cell_i|c_out~0_combout\ & ((!\f1|u0:7:cell_i|s~combout\) # (!\f2|u0:7:cell_i|s~combout\))) # (\f5|u0:6:cell_i|c_out~0_combout\ & 
-- (!\f1|u0:7:cell_i|s~combout\ & !\f2|u0:7:cell_i|s~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011111101000111010000001011111101000000101110001011111101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f5|u0:6:cell_i|ALT_INV_c_out~0_combout\,
	datab => \f1|u0:7:cell_i|ALT_INV_s~combout\,
	datac => \f2|u0:7:cell_i|ALT_INV_s~combout\,
	datad => \f2|u0:7:cell_i|ALT_INV_c_out~0_combout\,
	datae => \f2|u0:8:cell_i|ALT_INV_s~0_combout\,
	dataf => \f1|u0:8:cell_i|ALT_INV_s~combout\,
	combout => \f5|u0:8:cell_i|s~combout\);

-- Location: LABCELL_X35_Y2_N6
\f6|u0:7:cell_i|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \f6|u0:7:cell_i|s~combout\ = ( \f4|u0:7:cell_i|s~0_combout\ & ( !\f6|u0:6:cell_i|c_out~0_combout\ $ (\f3|u0:7:cell_i|s~combout\) ) ) # ( !\f4|u0:7:cell_i|s~0_combout\ & ( !\f6|u0:6:cell_i|c_out~0_combout\ $ (!\f3|u0:7:cell_i|s~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f6|u0:6:cell_i|ALT_INV_c_out~0_combout\,
	datac => \f3|u0:7:cell_i|ALT_INV_s~combout\,
	dataf => \f4|u0:7:cell_i|ALT_INV_s~0_combout\,
	combout => \f6|u0:7:cell_i|s~combout\);

-- Location: MLABCELL_X34_Y2_N24
\f5|u0:7:cell_i|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f5|u0:7:cell_i|s~0_combout\ = ( \r1|d1|Q~combout\ & ( \f1|u0:5:cell_i|c_out~0_combout\ & ( !\f1|u0:7:cell_i|s~0_combout\ $ (!\f2|u0:7:cell_i|s~combout\ $ (((\comb~1_combout\) # (\r0|d5|Q~combout\)))) ) ) ) # ( !\r1|d1|Q~combout\ & ( 
-- \f1|u0:5:cell_i|c_out~0_combout\ & ( !\f1|u0:7:cell_i|s~0_combout\ $ (!\f2|u0:7:cell_i|s~combout\ $ (\comb~1_combout\)) ) ) ) # ( \r1|d1|Q~combout\ & ( !\f1|u0:5:cell_i|c_out~0_combout\ & ( !\f1|u0:7:cell_i|s~0_combout\ $ (!\f2|u0:7:cell_i|s~combout\ $ 
-- (((\r0|d5|Q~combout\ & \comb~1_combout\)))) ) ) ) # ( !\r1|d1|Q~combout\ & ( !\f1|u0:5:cell_i|c_out~0_combout\ & ( !\f1|u0:7:cell_i|s~0_combout\ $ (!\f2|u0:7:cell_i|s~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100110100101011010101001010110100110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|u0:7:cell_i|ALT_INV_s~0_combout\,
	datab => \r0|d5|ALT_INV_Q~combout\,
	datac => \f2|u0:7:cell_i|ALT_INV_s~combout\,
	datad => \ALT_INV_comb~1_combout\,
	datae => \r1|d1|ALT_INV_Q~combout\,
	dataf => \f1|u0:5:cell_i|ALT_INV_c_out~0_combout\,
	combout => \f5|u0:7:cell_i|s~0_combout\);

-- Location: MLABCELL_X34_Y3_N54
\f5|u0:6:cell_i|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \f5|u0:6:cell_i|s~combout\ = ( \f5|u0:4:cell_i|c_out~0_combout\ & ( \f2|u0:5:cell_i|s~combout\ & ( !\f1|u0:5:cell_i|c_out~0_combout\ $ (!\f2|u0:6:cell_i|s~combout\ $ (!\f1|u0:6:cell_i|s~0_combout\)) ) ) ) # ( !\f5|u0:4:cell_i|c_out~0_combout\ & ( 
-- \f2|u0:5:cell_i|s~combout\ & ( !\f1|u0:5:cell_i|c_out~0_combout\ $ (!\f2|u0:6:cell_i|s~combout\ $ (!\f1|u0:6:cell_i|s~0_combout\ $ (!\f1|u0:5:cell_i|s~combout\))) ) ) ) # ( \f5|u0:4:cell_i|c_out~0_combout\ & ( !\f2|u0:5:cell_i|s~combout\ & ( 
-- !\f1|u0:5:cell_i|c_out~0_combout\ $ (!\f2|u0:6:cell_i|s~combout\ $ (!\f1|u0:6:cell_i|s~0_combout\ $ (!\f1|u0:5:cell_i|s~combout\))) ) ) ) # ( !\f5|u0:4:cell_i|c_out~0_combout\ & ( !\f2|u0:5:cell_i|s~combout\ & ( !\f1|u0:5:cell_i|c_out~0_combout\ $ 
-- (!\f2|u0:6:cell_i|s~combout\ $ (\f1|u0:6:cell_i|s~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010011001011001101001100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|u0:5:cell_i|ALT_INV_c_out~0_combout\,
	datab => \f2|u0:6:cell_i|ALT_INV_s~combout\,
	datac => \f1|u0:6:cell_i|ALT_INV_s~0_combout\,
	datad => \f1|u0:5:cell_i|ALT_INV_s~combout\,
	datae => \f5|u0:4:cell_i|ALT_INV_c_out~0_combout\,
	dataf => \f2|u0:5:cell_i|ALT_INV_s~combout\,
	combout => \f5|u0:6:cell_i|s~combout\);

-- Location: LABCELL_X36_Y1_N36
\f6|u0:6:cell_i|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f6|u0:6:cell_i|s~0_combout\ = ( \r1|d5|Q~combout\ & ( \r1|d4|Q~combout\ & ( !\r0|d2|Q~combout\ $ (((!\r0|d0|Q~combout\ & (!\r0|d1|Q~combout\)) # (\r0|d0|Q~combout\ & ((!\r1|d6|Q~combout\))))) ) ) ) # ( !\r1|d5|Q~combout\ & ( \r1|d4|Q~combout\ & ( 
-- !\r0|d2|Q~combout\ $ (((!\r1|d6|Q~combout\) # (!\r0|d0|Q~combout\))) ) ) ) # ( \r1|d5|Q~combout\ & ( !\r1|d4|Q~combout\ & ( !\r0|d1|Q~combout\ $ (((!\r1|d6|Q~combout\) # (!\r0|d0|Q~combout\))) ) ) ) # ( !\r1|d5|Q~combout\ & ( !\r1|d4|Q~combout\ & ( 
-- (\r1|d6|Q~combout\ & \r0|d0|Q~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010101010101101000110011001111000110011000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r0|d1|ALT_INV_Q~combout\,
	datab => \r0|d2|ALT_INV_Q~combout\,
	datac => \r1|d6|ALT_INV_Q~combout\,
	datad => \r0|d0|ALT_INV_Q~combout\,
	datae => \r1|d5|ALT_INV_Q~combout\,
	dataf => \r1|d4|ALT_INV_Q~combout\,
	combout => \f6|u0:6:cell_i|s~0_combout\);

-- Location: MLABCELL_X34_Y1_N9
\f3|u0:5:cell_i|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f3|u0:5:cell_i|s~0_combout\ = ( \r1|d4|Q~combout\ & ( !\r0|d1|Q~combout\ $ (((!\r0|d0|Q~combout\) # (!\r1|d5|Q~combout\))) ) ) # ( !\r1|d4|Q~combout\ & ( (\r0|d0|Q~combout\ & \r1|d5|Q~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001101010110010101100101011001010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r0|d1|ALT_INV_Q~combout\,
	datab => \r0|d0|ALT_INV_Q~combout\,
	datac => \r1|d5|ALT_INV_Q~combout\,
	dataf => \r1|d4|ALT_INV_Q~combout\,
	combout => \f3|u0:5:cell_i|s~0_combout\);

-- Location: MLABCELL_X34_Y3_N48
\f5|u0:5:cell_i|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f5|u0:5:cell_i|s~0_combout\ = ( \f1|u0:3:cell_i|c_out~combout\ & ( \f2|u0:5:cell_i|s~combout\ & ( !\f1|u0:5:cell_i|s~0_combout\ $ ((((\r1|d1|Q~combout\ & \r0|d3|Q~combout\)) # (\comb~2_combout\))) ) ) ) # ( !\f1|u0:3:cell_i|c_out~combout\ & ( 
-- \f2|u0:5:cell_i|s~combout\ & ( !\f1|u0:5:cell_i|s~0_combout\ $ (((\comb~2_combout\ & (\r1|d1|Q~combout\ & \r0|d3|Q~combout\)))) ) ) ) # ( \f1|u0:3:cell_i|c_out~combout\ & ( !\f2|u0:5:cell_i|s~combout\ & ( !\f1|u0:5:cell_i|s~0_combout\ $ 
-- (((!\comb~2_combout\ & ((!\r1|d1|Q~combout\) # (!\r0|d3|Q~combout\))))) ) ) ) # ( !\f1|u0:3:cell_i|c_out~combout\ & ( !\f2|u0:5:cell_i|s~combout\ & ( !\f1|u0:5:cell_i|s~0_combout\ $ (((!\comb~2_combout\) # ((!\r1|d1|Q~combout\) # (!\r0|d3|Q~combout\)))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111110010101111010100011111110000000011010100001010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~2_combout\,
	datab => \r1|d1|ALT_INV_Q~combout\,
	datac => \r0|d3|ALT_INV_Q~combout\,
	datad => \f1|u0:5:cell_i|ALT_INV_s~0_combout\,
	datae => \f1|u0:3:cell_i|ALT_INV_c_out~combout\,
	dataf => \f2|u0:5:cell_i|ALT_INV_s~combout\,
	combout => \f5|u0:5:cell_i|s~0_combout\);

-- Location: MLABCELL_X37_Y1_N30
\f1|u0:4:cell_i|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|u0:4:cell_i|s~combout\ = ( \f1|u0:4:cell_i|s~0_combout\ & ( !\f1|u0:3:cell_i|c_out~combout\ ) ) # ( !\f1|u0:4:cell_i|s~0_combout\ & ( \f1|u0:3:cell_i|c_out~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000000001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \f1|u0:3:cell_i|ALT_INV_c_out~combout\,
	datae => \f1|u0:4:cell_i|ALT_INV_s~0_combout\,
	combout => \f1|u0:4:cell_i|s~combout\);

-- Location: LABCELL_X32_Y2_N33
\f5|u0:3:cell_i|c_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \f5|u0:3:cell_i|c_out~combout\ = (!\f1|u0:3:cell_i|s~combout\ & (\f5|u0:2:cell_i|c_out~0_combout\ & \f2|u0:3:cell_i|s~0_combout\)) # (\f1|u0:3:cell_i|s~combout\ & ((\f2|u0:3:cell_i|s~0_combout\) # (\f5|u0:2:cell_i|c_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|u0:3:cell_i|ALT_INV_s~combout\,
	datac => \f5|u0:2:cell_i|ALT_INV_c_out~0_combout\,
	datad => \f2|u0:3:cell_i|ALT_INV_s~0_combout\,
	combout => \f5|u0:3:cell_i|c_out~combout\);

-- Location: MLABCELL_X37_Y1_N6
\comb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = ( \r1|d4|Q~combout\ & ( \r0|d0|Q~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \r0|d0|ALT_INV_Q~combout\,
	dataf => \r1|d4|ALT_INV_Q~combout\,
	combout => \comb~3_combout\);

-- Location: MLABCELL_X37_Y1_N12
\f7|u0:5:cell_i|c_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f7|u0:5:cell_i|c_out~0_combout\ = ( \f5|u0:3:cell_i|c_out~combout\ & ( \comb~3_combout\ & ( (!\f5|u0:5:cell_i|s~0_combout\ & (((\f2|u0:4:cell_i|s~combout\ & \f1|u0:4:cell_i|s~combout\)) # (\f3|u0:5:cell_i|s~0_combout\))) # (\f5|u0:5:cell_i|s~0_combout\ & 
-- ((!\f2|u0:4:cell_i|s~combout\ & ((!\f1|u0:4:cell_i|s~combout\))) # (\f2|u0:4:cell_i|s~combout\ & (\f3|u0:5:cell_i|s~0_combout\ & \f1|u0:4:cell_i|s~combout\)))) ) ) ) # ( !\f5|u0:3:cell_i|c_out~combout\ & ( \comb~3_combout\ & ( 
-- (!\f5|u0:5:cell_i|s~0_combout\ & (\f3|u0:5:cell_i|s~0_combout\ & ((\f1|u0:4:cell_i|s~combout\) # (\f2|u0:4:cell_i|s~combout\)))) # (\f5|u0:5:cell_i|s~0_combout\ & ((!\f2|u0:4:cell_i|s~combout\ & ((\f1|u0:4:cell_i|s~combout\) # 
-- (\f3|u0:5:cell_i|s~0_combout\))) # (\f2|u0:4:cell_i|s~combout\ & ((!\f1|u0:4:cell_i|s~combout\))))) ) ) ) # ( \f5|u0:3:cell_i|c_out~combout\ & ( !\comb~3_combout\ & ( (\f3|u0:5:cell_i|s~0_combout\ & (!\f5|u0:5:cell_i|s~0_combout\ $ 
-- (((!\f2|u0:4:cell_i|s~combout\ & !\f1|u0:4:cell_i|s~combout\))))) ) ) ) # ( !\f5|u0:3:cell_i|c_out~combout\ & ( !\comb~3_combout\ & ( (\f3|u0:5:cell_i|s~0_combout\ & (!\f5|u0:5:cell_i|s~0_combout\ $ (((!\f2|u0:4:cell_i|s~combout\) # 
-- (!\f1|u0:4:cell_i|s~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010100000101000100010000010111011101000111010001001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f3|u0:5:cell_i|ALT_INV_s~0_combout\,
	datab => \f5|u0:5:cell_i|ALT_INV_s~0_combout\,
	datac => \f2|u0:4:cell_i|ALT_INV_s~combout\,
	datad => \f1|u0:4:cell_i|ALT_INV_s~combout\,
	datae => \f5|u0:3:cell_i|ALT_INV_c_out~combout\,
	dataf => \ALT_INV_comb~3_combout\,
	combout => \f7|u0:5:cell_i|c_out~0_combout\);

-- Location: LABCELL_X36_Y1_N42
\f7|u0:7:cell_i|c_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f7|u0:7:cell_i|c_out~0_combout\ = ( \f6|u0:6:cell_i|s~0_combout\ & ( \f7|u0:5:cell_i|c_out~0_combout\ & ( (!\f5|u0:7:cell_i|s~0_combout\ $ (!\f5|u0:6:cell_i|c_out~0_combout\)) # (\f6|u0:7:cell_i|s~combout\) ) ) ) # ( !\f6|u0:6:cell_i|s~0_combout\ & ( 
-- \f7|u0:5:cell_i|c_out~0_combout\ & ( (!\f6|u0:7:cell_i|s~combout\ & (\f5|u0:6:cell_i|s~combout\ & (!\f5|u0:7:cell_i|s~0_combout\ $ (!\f5|u0:6:cell_i|c_out~0_combout\)))) # (\f6|u0:7:cell_i|s~combout\ & ((!\f5|u0:7:cell_i|s~0_combout\ $ 
-- (!\f5|u0:6:cell_i|c_out~0_combout\)) # (\f5|u0:6:cell_i|s~combout\))) ) ) ) # ( \f6|u0:6:cell_i|s~0_combout\ & ( !\f7|u0:5:cell_i|c_out~0_combout\ & ( (!\f6|u0:7:cell_i|s~combout\ & (\f5|u0:6:cell_i|s~combout\ & (!\f5|u0:7:cell_i|s~0_combout\ $ 
-- (!\f5|u0:6:cell_i|c_out~0_combout\)))) # (\f6|u0:7:cell_i|s~combout\ & ((!\f5|u0:7:cell_i|s~0_combout\ $ (!\f5|u0:6:cell_i|c_out~0_combout\)) # (\f5|u0:6:cell_i|s~combout\))) ) ) ) # ( !\f6|u0:6:cell_i|s~0_combout\ & ( !\f7|u0:5:cell_i|c_out~0_combout\ & 
-- ( (\f6|u0:7:cell_i|s~combout\ & (!\f5|u0:7:cell_i|s~0_combout\ $ (!\f5|u0:6:cell_i|c_out~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100000101000111110100010100011111010111110101111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f6|u0:7:cell_i|ALT_INV_s~combout\,
	datab => \f5|u0:7:cell_i|ALT_INV_s~0_combout\,
	datac => \f5|u0:6:cell_i|ALT_INV_c_out~0_combout\,
	datad => \f5|u0:6:cell_i|ALT_INV_s~combout\,
	datae => \f6|u0:6:cell_i|ALT_INV_s~0_combout\,
	dataf => \f7|u0:5:cell_i|ALT_INV_c_out~0_combout\,
	combout => \f7|u0:7:cell_i|c_out~0_combout\);

-- Location: LABCELL_X35_Y2_N42
\f7|u0:9:cell_i|c_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f7|u0:9:cell_i|c_out~0_combout\ = ( \f5|u0:8:cell_i|c_out~0_combout\ & ( \f7|u0:7:cell_i|c_out~0_combout\ & ( (!\f5|u0:9:cell_i|s~0_combout\ & (((\f5|u0:8:cell_i|s~combout\) # (\f6|u0:9:cell_i|s~combout\)) # (\f6|u0:8:cell_i|s~combout\))) # 
-- (\f5|u0:9:cell_i|s~0_combout\ & (\f6|u0:9:cell_i|s~combout\ & ((\f5|u0:8:cell_i|s~combout\) # (\f6|u0:8:cell_i|s~combout\)))) ) ) ) # ( !\f5|u0:8:cell_i|c_out~0_combout\ & ( \f7|u0:7:cell_i|c_out~0_combout\ & ( (!\f5|u0:9:cell_i|s~0_combout\ & 
-- (\f6|u0:9:cell_i|s~combout\ & ((\f5|u0:8:cell_i|s~combout\) # (\f6|u0:8:cell_i|s~combout\)))) # (\f5|u0:9:cell_i|s~0_combout\ & (((\f5|u0:8:cell_i|s~combout\) # (\f6|u0:9:cell_i|s~combout\)) # (\f6|u0:8:cell_i|s~combout\))) ) ) ) # ( 
-- \f5|u0:8:cell_i|c_out~0_combout\ & ( !\f7|u0:7:cell_i|c_out~0_combout\ & ( (!\f5|u0:9:cell_i|s~0_combout\ & (((\f6|u0:8:cell_i|s~combout\ & \f5|u0:8:cell_i|s~combout\)) # (\f6|u0:9:cell_i|s~combout\))) # (\f5|u0:9:cell_i|s~0_combout\ & 
-- (\f6|u0:8:cell_i|s~combout\ & (\f6|u0:9:cell_i|s~combout\ & \f5|u0:8:cell_i|s~combout\))) ) ) ) # ( !\f5|u0:8:cell_i|c_out~0_combout\ & ( !\f7|u0:7:cell_i|c_out~0_combout\ & ( (!\f5|u0:9:cell_i|s~0_combout\ & (\f6|u0:8:cell_i|s~combout\ & 
-- (\f6|u0:9:cell_i|s~combout\ & \f5|u0:8:cell_i|s~combout\))) # (\f5|u0:9:cell_i|s~0_combout\ & (((\f6|u0:8:cell_i|s~combout\ & \f5|u0:8:cell_i|s~combout\)) # (\f6|u0:9:cell_i|s~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010111000010100010101100010111010111110010101110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f5|u0:9:cell_i|ALT_INV_s~0_combout\,
	datab => \f6|u0:8:cell_i|ALT_INV_s~combout\,
	datac => \f6|u0:9:cell_i|ALT_INV_s~combout\,
	datad => \f5|u0:8:cell_i|ALT_INV_s~combout\,
	datae => \f5|u0:8:cell_i|ALT_INV_c_out~0_combout\,
	dataf => \f7|u0:7:cell_i|ALT_INV_c_out~0_combout\,
	combout => \f7|u0:9:cell_i|c_out~0_combout\);

-- Location: LABCELL_X36_Y1_N0
\f6|u0:11:cell_i|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \f6|u0:11:cell_i|s~combout\ = ( \f3|u0:11:cell_i|s~combout\ & ( !\f4|u0:11:cell_i|s~combout\ $ (\f6|u0:10:cell_i|c_out~0_combout\) ) ) # ( !\f3|u0:11:cell_i|s~combout\ & ( !\f4|u0:11:cell_i|s~combout\ $ (!\f6|u0:10:cell_i|c_out~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110011000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \f4|u0:11:cell_i|ALT_INV_s~combout\,
	datac => \f6|u0:10:cell_i|ALT_INV_c_out~0_combout\,
	dataf => \f3|u0:11:cell_i|ALT_INV_s~combout\,
	combout => \f6|u0:11:cell_i|s~combout\);

-- Location: LABCELL_X41_Y1_N30
\f7|u0:11:cell_i|c_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f7|u0:11:cell_i|c_out~0_combout\ = ( \f6|u0:11:cell_i|s~combout\ & ( ((!\f6|u0:10:cell_i|s~combout\ & (\f5|u0:10:cell_i|s~combout\ & \f7|u0:9:cell_i|c_out~0_combout\)) # (\f6|u0:10:cell_i|s~combout\ & ((\f7|u0:9:cell_i|c_out~0_combout\) # 
-- (\f5|u0:10:cell_i|s~combout\)))) # (\f5|u0:11:cell_i|s~combout\) ) ) # ( !\f6|u0:11:cell_i|s~combout\ & ( (\f5|u0:11:cell_i|s~combout\ & ((!\f6|u0:10:cell_i|s~combout\ & (\f5|u0:10:cell_i|s~combout\ & \f7|u0:9:cell_i|c_out~0_combout\)) # 
-- (\f6|u0:10:cell_i|s~combout\ & ((\f7|u0:9:cell_i|c_out~0_combout\) # (\f5|u0:10:cell_i|s~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010101010101110111111100000001000101010101011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f5|u0:11:cell_i|ALT_INV_s~combout\,
	datab => \f6|u0:10:cell_i|ALT_INV_s~combout\,
	datac => \f5|u0:10:cell_i|ALT_INV_s~combout\,
	datad => \f7|u0:9:cell_i|ALT_INV_c_out~0_combout\,
	datae => \f6|u0:11:cell_i|ALT_INV_s~combout\,
	combout => \f7|u0:11:cell_i|c_out~0_combout\);

-- Location: LABCELL_X32_Y1_N0
\f4|u0:13:cell_i|c_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f4|u0:13:cell_i|c_out~0_combout\ = ( \r0|d5|Q~combout\ & ( \f4|u0:11:cell_i|c_out~0_combout\ & ( (!\r1|d7|Q~combout\ & (\r1|d6|Q~combout\ & (\r0|d7|Q~combout\ & \r0|d6|Q~combout\))) # (\r1|d7|Q~combout\ & (((\r1|d6|Q~combout\ & \r0|d7|Q~combout\)) # 
-- (\r0|d6|Q~combout\))) ) ) ) # ( !\r0|d5|Q~combout\ & ( \f4|u0:11:cell_i|c_out~0_combout\ & ( (\r1|d6|Q~combout\ & (\r0|d6|Q~combout\ & ((\r1|d7|Q~combout\) # (\r0|d7|Q~combout\)))) ) ) ) # ( \r0|d5|Q~combout\ & ( !\f4|u0:11:cell_i|c_out~0_combout\ & ( 
-- (\r1|d6|Q~combout\ & (\r1|d7|Q~combout\ & \r0|d6|Q~combout\)) ) ) ) # ( !\r0|d5|Q~combout\ & ( !\f4|u0:11:cell_i|c_out~0_combout\ & ( (\r1|d6|Q~combout\ & (\r0|d7|Q~combout\ & (\r1|d7|Q~combout\ & \r0|d6|Q~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000010100000000000101010000000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r1|d6|ALT_INV_Q~combout\,
	datab => \r0|d7|ALT_INV_Q~combout\,
	datac => \r1|d7|ALT_INV_Q~combout\,
	datad => \r0|d6|ALT_INV_Q~combout\,
	datae => \r0|d5|ALT_INV_Q~combout\,
	dataf => \f4|u0:11:cell_i|ALT_INV_c_out~0_combout\,
	combout => \f4|u0:13:cell_i|c_out~0_combout\);

-- Location: LABCELL_X44_Y1_N33
\comb~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~4_combout\ = ( \r0|d7|Q~combout\ & ( \r1|d7|Q~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \r1|d7|ALT_INV_Q~combout\,
	datae => \r0|d7|ALT_INV_Q~combout\,
	combout => \comb~4_combout\);

-- Location: LABCELL_X47_Y1_N0
\h3|hex[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \h3|hex[6]~0_combout\ = ( \f4|u0:13:cell_i|c_out~0_combout\ & ( \comb~4_combout\ & ( (!\f6|u0:13:cell_i|s~combout\ & (!\f6|u0:12:cell_i|s~combout\ & (\f6|u0:13:cell_i|c_out~0_combout\ & !\f7|u0:11:cell_i|c_out~0_combout\))) # (\f6|u0:13:cell_i|s~combout\ 
-- & (\f6|u0:12:cell_i|s~combout\ & ((\f7|u0:11:cell_i|c_out~0_combout\)))) ) ) ) # ( !\f4|u0:13:cell_i|c_out~0_combout\ & ( \comb~4_combout\ & ( (\f6|u0:13:cell_i|s~combout\ & ((!\f6|u0:12:cell_i|s~combout\ & (!\f6|u0:13:cell_i|c_out~0_combout\ & 
-- \f7|u0:11:cell_i|c_out~0_combout\)) # (\f6|u0:12:cell_i|s~combout\ & (!\f6|u0:13:cell_i|c_out~0_combout\ $ (\f7|u0:11:cell_i|c_out~0_combout\))))) ) ) ) # ( \f4|u0:13:cell_i|c_out~0_combout\ & ( !\comb~4_combout\ & ( (\f6|u0:13:cell_i|s~combout\ & 
-- ((!\f6|u0:12:cell_i|s~combout\ & (!\f6|u0:13:cell_i|c_out~0_combout\ & \f7|u0:11:cell_i|c_out~0_combout\)) # (\f6|u0:12:cell_i|s~combout\ & (!\f6|u0:13:cell_i|c_out~0_combout\ $ (\f7|u0:11:cell_i|c_out~0_combout\))))) ) ) ) # ( 
-- !\f4|u0:13:cell_i|c_out~0_combout\ & ( !\comb~4_combout\ & ( (!\f6|u0:13:cell_i|s~combout\ & (!\f6|u0:13:cell_i|c_out~0_combout\ & ((!\f6|u0:12:cell_i|s~combout\) # (!\f7|u0:11:cell_i|c_out~0_combout\)))) # (\f6|u0:13:cell_i|s~combout\ & 
-- (\f6|u0:13:cell_i|c_out~0_combout\ & (!\f6|u0:12:cell_i|s~combout\ $ (!\f7|u0:11:cell_i|c_out~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000110000100000100000100000100010000010000010000100000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f6|u0:13:cell_i|ALT_INV_s~combout\,
	datab => \f6|u0:12:cell_i|ALT_INV_s~combout\,
	datac => \f6|u0:13:cell_i|ALT_INV_c_out~0_combout\,
	datad => \f7|u0:11:cell_i|ALT_INV_c_out~0_combout\,
	datae => \f4|u0:13:cell_i|ALT_INV_c_out~0_combout\,
	dataf => \ALT_INV_comb~4_combout\,
	combout => \h3|hex[6]~0_combout\);

-- Location: LABCELL_X47_Y1_N6
\h3|hex[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \h3|hex[5]~1_combout\ = ( \f4|u0:13:cell_i|c_out~0_combout\ & ( \comb~4_combout\ & ( (!\f6|u0:13:cell_i|s~combout\ & (\f6|u0:13:cell_i|c_out~0_combout\ & (!\f6|u0:12:cell_i|s~combout\ $ (!\f7|u0:11:cell_i|c_out~0_combout\)))) ) ) ) # ( 
-- !\f4|u0:13:cell_i|c_out~0_combout\ & ( \comb~4_combout\ & ( (\f6|u0:13:cell_i|s~combout\ & (!\f6|u0:13:cell_i|c_out~0_combout\ & (!\f6|u0:12:cell_i|s~combout\ $ (!\f7|u0:11:cell_i|c_out~0_combout\)))) ) ) ) # ( \f4|u0:13:cell_i|c_out~0_combout\ & ( 
-- !\comb~4_combout\ & ( (\f6|u0:13:cell_i|s~combout\ & (!\f6|u0:13:cell_i|c_out~0_combout\ & (!\f6|u0:12:cell_i|s~combout\ $ (!\f7|u0:11:cell_i|c_out~0_combout\)))) ) ) ) # ( !\f4|u0:13:cell_i|c_out~0_combout\ & ( !\comb~4_combout\ & ( 
-- (!\f6|u0:13:cell_i|s~combout\ & (!\f6|u0:13:cell_i|c_out~0_combout\ & ((\f7|u0:11:cell_i|c_out~0_combout\) # (\f6|u0:12:cell_i|s~combout\)))) # (\f6|u0:13:cell_i|s~combout\ & ((!\f6|u0:12:cell_i|s~combout\ & ((!\f6|u0:13:cell_i|c_out~0_combout\) # 
-- (\f7|u0:11:cell_i|c_out~0_combout\))) # (\f6|u0:12:cell_i|s~combout\ & ((!\f7|u0:11:cell_i|c_out~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000111100100000100000100000000010000010000000000001000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f6|u0:13:cell_i|ALT_INV_s~combout\,
	datab => \f6|u0:12:cell_i|ALT_INV_s~combout\,
	datac => \f6|u0:13:cell_i|ALT_INV_c_out~0_combout\,
	datad => \f7|u0:11:cell_i|ALT_INV_c_out~0_combout\,
	datae => \f4|u0:13:cell_i|ALT_INV_c_out~0_combout\,
	dataf => \ALT_INV_comb~4_combout\,
	combout => \h3|hex[5]~1_combout\);

-- Location: LABCELL_X47_Y1_N12
\h3|hex[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \h3|hex[4]~2_combout\ = ( \f4|u0:13:cell_i|c_out~0_combout\ & ( \comb~4_combout\ & ( (!\f6|u0:13:cell_i|s~combout\ & (!\f6|u0:13:cell_i|c_out~0_combout\ & (!\f6|u0:12:cell_i|s~combout\ $ (!\f7|u0:11:cell_i|c_out~0_combout\)))) ) ) ) # ( 
-- !\f4|u0:13:cell_i|c_out~0_combout\ & ( \comb~4_combout\ & ( (!\f6|u0:13:cell_i|s~combout\ & ((!\f6|u0:12:cell_i|s~combout\ & ((!\f6|u0:13:cell_i|c_out~0_combout\) # (\f7|u0:11:cell_i|c_out~0_combout\))) # (\f6|u0:12:cell_i|s~combout\ & 
-- ((!\f7|u0:11:cell_i|c_out~0_combout\))))) # (\f6|u0:13:cell_i|s~combout\ & (!\f6|u0:13:cell_i|c_out~0_combout\ & (!\f6|u0:12:cell_i|s~combout\ $ (!\f7|u0:11:cell_i|c_out~0_combout\)))) ) ) ) # ( \f4|u0:13:cell_i|c_out~0_combout\ & ( !\comb~4_combout\ & ( 
-- (!\f6|u0:13:cell_i|s~combout\ & ((!\f6|u0:12:cell_i|s~combout\ & ((!\f6|u0:13:cell_i|c_out~0_combout\) # (\f7|u0:11:cell_i|c_out~0_combout\))) # (\f6|u0:12:cell_i|s~combout\ & ((!\f7|u0:11:cell_i|c_out~0_combout\))))) # (\f6|u0:13:cell_i|s~combout\ & 
-- (!\f6|u0:13:cell_i|c_out~0_combout\ & (!\f6|u0:12:cell_i|s~combout\ $ (!\f7|u0:11:cell_i|c_out~0_combout\)))) ) ) ) # ( !\f4|u0:13:cell_i|c_out~0_combout\ & ( !\comb~4_combout\ & ( (!\f6|u0:12:cell_i|s~combout\ & (((!\f6|u0:13:cell_i|s~combout\ & 
-- \f6|u0:13:cell_i|c_out~0_combout\)) # (\f7|u0:11:cell_i|c_out~0_combout\))) # (\f6|u0:12:cell_i|s~combout\ & ((!\f7|u0:11:cell_i|c_out~0_combout\) # ((\f6|u0:13:cell_i|s~combout\ & !\f6|u0:13:cell_i|c_out~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101111011100101100101100100010110010110010000010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f6|u0:13:cell_i|ALT_INV_s~combout\,
	datab => \f6|u0:12:cell_i|ALT_INV_s~combout\,
	datac => \f6|u0:13:cell_i|ALT_INV_c_out~0_combout\,
	datad => \f7|u0:11:cell_i|ALT_INV_c_out~0_combout\,
	datae => \f4|u0:13:cell_i|ALT_INV_c_out~0_combout\,
	dataf => \ALT_INV_comb~4_combout\,
	combout => \h3|hex[4]~2_combout\);

-- Location: LABCELL_X47_Y1_N18
\h3|hex[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \h3|hex[3]~3_combout\ = ( \f4|u0:13:cell_i|c_out~0_combout\ & ( \comb~4_combout\ & ( (!\f6|u0:13:cell_i|s~combout\ & (\f6|u0:12:cell_i|s~combout\ & (!\f6|u0:13:cell_i|c_out~0_combout\ & \f7|u0:11:cell_i|c_out~0_combout\))) # (\f6|u0:13:cell_i|s~combout\ & 
-- ((!\f6|u0:12:cell_i|s~combout\ & (!\f6|u0:13:cell_i|c_out~0_combout\ $ (\f7|u0:11:cell_i|c_out~0_combout\))) # (\f6|u0:12:cell_i|s~combout\ & (\f6|u0:13:cell_i|c_out~0_combout\ & !\f7|u0:11:cell_i|c_out~0_combout\)))) ) ) ) # ( 
-- !\f4|u0:13:cell_i|c_out~0_combout\ & ( \comb~4_combout\ & ( (!\f6|u0:13:cell_i|s~combout\ & ((!\f6|u0:12:cell_i|s~combout\ & (!\f6|u0:13:cell_i|c_out~0_combout\ & !\f7|u0:11:cell_i|c_out~0_combout\)) # (\f6|u0:12:cell_i|s~combout\ & 
-- (\f6|u0:13:cell_i|c_out~0_combout\ & \f7|u0:11:cell_i|c_out~0_combout\)))) # (\f6|u0:13:cell_i|s~combout\ & ((!\f6|u0:12:cell_i|s~combout\ & (!\f6|u0:13:cell_i|c_out~0_combout\ $ (!\f7|u0:11:cell_i|c_out~0_combout\))) # (\f6|u0:12:cell_i|s~combout\ & 
-- (!\f6|u0:13:cell_i|c_out~0_combout\ & !\f7|u0:11:cell_i|c_out~0_combout\)))) ) ) ) # ( \f4|u0:13:cell_i|c_out~0_combout\ & ( !\comb~4_combout\ & ( (!\f6|u0:13:cell_i|s~combout\ & ((!\f6|u0:12:cell_i|s~combout\ & (!\f6|u0:13:cell_i|c_out~0_combout\ & 
-- !\f7|u0:11:cell_i|c_out~0_combout\)) # (\f6|u0:12:cell_i|s~combout\ & (\f6|u0:13:cell_i|c_out~0_combout\ & \f7|u0:11:cell_i|c_out~0_combout\)))) # (\f6|u0:13:cell_i|s~combout\ & ((!\f6|u0:12:cell_i|s~combout\ & (!\f6|u0:13:cell_i|c_out~0_combout\ $ 
-- (!\f7|u0:11:cell_i|c_out~0_combout\))) # (\f6|u0:12:cell_i|s~combout\ & (!\f6|u0:13:cell_i|c_out~0_combout\ & !\f7|u0:11:cell_i|c_out~0_combout\)))) ) ) ) # ( !\f4|u0:13:cell_i|c_out~0_combout\ & ( !\comb~4_combout\ & ( (!\f6|u0:13:cell_i|s~combout\ & 
-- ((!\f6|u0:12:cell_i|s~combout\ & (!\f6|u0:13:cell_i|c_out~0_combout\ $ (!\f7|u0:11:cell_i|c_out~0_combout\))) # (\f6|u0:12:cell_i|s~combout\ & (!\f6|u0:13:cell_i|c_out~0_combout\ & !\f7|u0:11:cell_i|c_out~0_combout\)))) # (\f6|u0:13:cell_i|s~combout\ & 
-- ((!\f6|u0:12:cell_i|s~combout\ & (\f6|u0:13:cell_i|c_out~0_combout\ & \f7|u0:11:cell_i|c_out~0_combout\)) # (\f6|u0:12:cell_i|s~combout\ & (!\f6|u0:13:cell_i|c_out~0_combout\ $ (!\f7|u0:11:cell_i|c_out~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100110010100100101000100001010010100010000100100000100100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f6|u0:13:cell_i|ALT_INV_s~combout\,
	datab => \f6|u0:12:cell_i|ALT_INV_s~combout\,
	datac => \f6|u0:13:cell_i|ALT_INV_c_out~0_combout\,
	datad => \f7|u0:11:cell_i|ALT_INV_c_out~0_combout\,
	datae => \f4|u0:13:cell_i|ALT_INV_c_out~0_combout\,
	dataf => \ALT_INV_comb~4_combout\,
	combout => \h3|hex[3]~3_combout\);

-- Location: LABCELL_X44_Y1_N9
\h3|hex[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \h3|hex[2]~4_combout\ = ( \f6|u0:12:cell_i|s~combout\ & ( \comb~4_combout\ & ( (!\f6|u0:13:cell_i|c_out~0_combout\ & (\f7|u0:11:cell_i|c_out~0_combout\ & (\f4|u0:13:cell_i|c_out~0_combout\ & \f6|u0:13:cell_i|s~combout\))) # 
-- (\f6|u0:13:cell_i|c_out~0_combout\ & ((!\f7|u0:11:cell_i|c_out~0_combout\ & (\f4|u0:13:cell_i|c_out~0_combout\ & \f6|u0:13:cell_i|s~combout\)) # (\f7|u0:11:cell_i|c_out~0_combout\ & (!\f4|u0:13:cell_i|c_out~0_combout\ $ (!\f6|u0:13:cell_i|s~combout\))))) 
-- ) ) ) # ( !\f6|u0:12:cell_i|s~combout\ & ( \comb~4_combout\ & ( (\f6|u0:13:cell_i|c_out~0_combout\ & (\f4|u0:13:cell_i|c_out~0_combout\ & ((!\f7|u0:11:cell_i|c_out~0_combout\) # (\f6|u0:13:cell_i|s~combout\)))) ) ) ) # ( \f6|u0:12:cell_i|s~combout\ & ( 
-- !\comb~4_combout\ & ( (\f7|u0:11:cell_i|c_out~0_combout\ & ((!\f6|u0:13:cell_i|c_out~0_combout\ & (!\f4|u0:13:cell_i|c_out~0_combout\ & !\f6|u0:13:cell_i|s~combout\)) # (\f6|u0:13:cell_i|c_out~0_combout\ & (\f4|u0:13:cell_i|c_out~0_combout\ & 
-- \f6|u0:13:cell_i|s~combout\)))) ) ) ) # ( !\f6|u0:12:cell_i|s~combout\ & ( !\comb~4_combout\ & ( (!\f6|u0:13:cell_i|c_out~0_combout\ & (!\f7|u0:11:cell_i|c_out~0_combout\ & (!\f4|u0:13:cell_i|c_out~0_combout\ & \f6|u0:13:cell_i|s~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000001000000000000100000100000001010000000100010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f6|u0:13:cell_i|ALT_INV_c_out~0_combout\,
	datab => \f7|u0:11:cell_i|ALT_INV_c_out~0_combout\,
	datac => \f4|u0:13:cell_i|ALT_INV_c_out~0_combout\,
	datad => \f6|u0:13:cell_i|ALT_INV_s~combout\,
	datae => \f6|u0:12:cell_i|ALT_INV_s~combout\,
	dataf => \ALT_INV_comb~4_combout\,
	combout => \h3|hex[2]~4_combout\);

-- Location: LABCELL_X47_Y1_N54
\h3|hex[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \h3|hex[1]~5_combout\ = ( \f4|u0:13:cell_i|c_out~0_combout\ & ( \comb~4_combout\ & ( (!\f6|u0:12:cell_i|s~combout\ & ((!\f7|u0:11:cell_i|c_out~0_combout\ & ((\f6|u0:13:cell_i|c_out~0_combout\))) # (\f7|u0:11:cell_i|c_out~0_combout\ & 
-- (\f6|u0:13:cell_i|s~combout\)))) # (\f6|u0:12:cell_i|s~combout\ & (!\f6|u0:13:cell_i|s~combout\ $ (((!\f6|u0:13:cell_i|c_out~0_combout\) # (!\f7|u0:11:cell_i|c_out~0_combout\))))) ) ) ) # ( !\f4|u0:13:cell_i|c_out~0_combout\ & ( \comb~4_combout\ & ( 
-- (!\f6|u0:13:cell_i|s~combout\ & (!\f6|u0:13:cell_i|c_out~0_combout\ & ((\f7|u0:11:cell_i|c_out~0_combout\) # (\f6|u0:12:cell_i|s~combout\)))) # (\f6|u0:13:cell_i|s~combout\ & (!\f6|u0:13:cell_i|c_out~0_combout\ $ (((\f7|u0:11:cell_i|c_out~0_combout\) # 
-- (\f6|u0:12:cell_i|s~combout\))))) ) ) ) # ( \f4|u0:13:cell_i|c_out~0_combout\ & ( !\comb~4_combout\ & ( (!\f6|u0:13:cell_i|s~combout\ & (!\f6|u0:13:cell_i|c_out~0_combout\ & ((\f7|u0:11:cell_i|c_out~0_combout\) # (\f6|u0:12:cell_i|s~combout\)))) # 
-- (\f6|u0:13:cell_i|s~combout\ & (!\f6|u0:13:cell_i|c_out~0_combout\ $ (((\f7|u0:11:cell_i|c_out~0_combout\) # (\f6|u0:12:cell_i|s~combout\))))) ) ) ) # ( !\f4|u0:13:cell_i|c_out~0_combout\ & ( !\comb~4_combout\ & ( (\f6|u0:13:cell_i|c_out~0_combout\ & 
-- (!\f6|u0:13:cell_i|s~combout\ $ (((!\f6|u0:12:cell_i|s~combout\ & !\f7|u0:11:cell_i|c_out~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000001010011000011010010101100001101001010001110101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f6|u0:13:cell_i|ALT_INV_s~combout\,
	datab => \f6|u0:12:cell_i|ALT_INV_s~combout\,
	datac => \f6|u0:13:cell_i|ALT_INV_c_out~0_combout\,
	datad => \f7|u0:11:cell_i|ALT_INV_c_out~0_combout\,
	datae => \f4|u0:13:cell_i|ALT_INV_c_out~0_combout\,
	dataf => \ALT_INV_comb~4_combout\,
	combout => \h3|hex[1]~5_combout\);

-- Location: LABCELL_X44_Y1_N12
\h3|hex[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \h3|hex[0]~6_combout\ = ( \f6|u0:12:cell_i|s~combout\ & ( \comb~4_combout\ & ( (!\f7|u0:11:cell_i|c_out~0_combout\ & ((!\f6|u0:13:cell_i|s~combout\ & (\f4|u0:13:cell_i|c_out~0_combout\ & \f6|u0:13:cell_i|c_out~0_combout\)) # (\f6|u0:13:cell_i|s~combout\ & 
-- (!\f4|u0:13:cell_i|c_out~0_combout\ $ (!\f6|u0:13:cell_i|c_out~0_combout\))))) ) ) ) # ( !\f6|u0:12:cell_i|s~combout\ & ( \comb~4_combout\ & ( (!\f6|u0:13:cell_i|s~combout\ & ((!\f4|u0:13:cell_i|c_out~0_combout\ & (!\f6|u0:13:cell_i|c_out~0_combout\ & 
-- !\f7|u0:11:cell_i|c_out~0_combout\)) # (\f4|u0:13:cell_i|c_out~0_combout\ & (\f6|u0:13:cell_i|c_out~0_combout\ & \f7|u0:11:cell_i|c_out~0_combout\)))) # (\f6|u0:13:cell_i|s~combout\ & (\f7|u0:11:cell_i|c_out~0_combout\ & 
-- (!\f4|u0:13:cell_i|c_out~0_combout\ $ (!\f6|u0:13:cell_i|c_out~0_combout\)))) ) ) ) # ( \f6|u0:12:cell_i|s~combout\ & ( !\comb~4_combout\ & ( (!\f4|u0:13:cell_i|c_out~0_combout\ & (!\f6|u0:13:cell_i|c_out~0_combout\ & (!\f6|u0:13:cell_i|s~combout\ $ 
-- (\f7|u0:11:cell_i|c_out~0_combout\)))) # (\f4|u0:13:cell_i|c_out~0_combout\ & (\f6|u0:13:cell_i|s~combout\ & (\f6|u0:13:cell_i|c_out~0_combout\ & !\f7|u0:11:cell_i|c_out~0_combout\))) ) ) ) # ( !\f6|u0:12:cell_i|s~combout\ & ( !\comb~4_combout\ & ( 
-- (!\f6|u0:13:cell_i|s~combout\ & ((!\f4|u0:13:cell_i|c_out~0_combout\ & (!\f6|u0:13:cell_i|c_out~0_combout\ $ (!\f7|u0:11:cell_i|c_out~0_combout\))) # (\f4|u0:13:cell_i|c_out~0_combout\ & (!\f6|u0:13:cell_i|c_out~0_combout\ & 
-- !\f7|u0:11:cell_i|c_out~0_combout\)))) # (\f6|u0:13:cell_i|s~combout\ & (\f4|u0:13:cell_i|c_out~0_combout\ & (\f6|u0:13:cell_i|c_out~0_combout\ & \f7|u0:11:cell_i|c_out~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100010000001100000010100000010000000000101100001011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f6|u0:13:cell_i|ALT_INV_s~combout\,
	datab => \f4|u0:13:cell_i|ALT_INV_c_out~0_combout\,
	datac => \f6|u0:13:cell_i|ALT_INV_c_out~0_combout\,
	datad => \f7|u0:11:cell_i|ALT_INV_c_out~0_combout\,
	datae => \f6|u0:12:cell_i|ALT_INV_s~combout\,
	dataf => \ALT_INV_comb~4_combout\,
	combout => \h3|hex[0]~6_combout\);

-- Location: LABCELL_X35_Y2_N18
\f7|u0:9:cell_i|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \f7|u0:9:cell_i|s~combout\ = ( \f5|u0:8:cell_i|c_out~0_combout\ & ( \f7|u0:7:cell_i|c_out~0_combout\ & ( !\f5|u0:9:cell_i|s~0_combout\ $ (!\f6|u0:9:cell_i|s~combout\ $ (((!\f6|u0:8:cell_i|s~combout\ & !\f5|u0:8:cell_i|s~combout\)))) ) ) ) # ( 
-- !\f5|u0:8:cell_i|c_out~0_combout\ & ( \f7|u0:7:cell_i|c_out~0_combout\ & ( !\f5|u0:9:cell_i|s~0_combout\ $ (!\f6|u0:9:cell_i|s~combout\ $ (((\f5|u0:8:cell_i|s~combout\) # (\f6|u0:8:cell_i|s~combout\)))) ) ) ) # ( \f5|u0:8:cell_i|c_out~0_combout\ & ( 
-- !\f7|u0:7:cell_i|c_out~0_combout\ & ( !\f5|u0:9:cell_i|s~0_combout\ $ (!\f6|u0:9:cell_i|s~combout\ $ (((!\f6|u0:8:cell_i|s~combout\) # (!\f5|u0:8:cell_i|s~combout\)))) ) ) ) # ( !\f5|u0:8:cell_i|c_out~0_combout\ & ( !\f7|u0:7:cell_i|c_out~0_combout\ & ( 
-- !\f5|u0:9:cell_i|s~0_combout\ $ (!\f6|u0:9:cell_i|s~combout\ $ (((\f6|u0:8:cell_i|s~combout\ & \f5|u0:8:cell_i|s~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001101001101001011001011001101001101001011001011001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f5|u0:9:cell_i|ALT_INV_s~0_combout\,
	datab => \f6|u0:8:cell_i|ALT_INV_s~combout\,
	datac => \f6|u0:9:cell_i|ALT_INV_s~combout\,
	datad => \f5|u0:8:cell_i|ALT_INV_s~combout\,
	datae => \f5|u0:8:cell_i|ALT_INV_c_out~0_combout\,
	dataf => \f7|u0:7:cell_i|ALT_INV_c_out~0_combout\,
	combout => \f7|u0:9:cell_i|s~combout\);

-- Location: LABCELL_X35_Y2_N54
\f7|u0:11:cell_i|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f7|u0:11:cell_i|s~0_combout\ = ( \f5|u0:8:cell_i|c_out~0_combout\ & ( \f2|u0:9:cell_i|s~combout\ & ( !\f6|u0:11:cell_i|s~combout\ $ (((!\comb~0_combout\ & !\f2|u0:9:cell_i|c_out~0_combout\))) ) ) ) # ( !\f5|u0:8:cell_i|c_out~0_combout\ & ( 
-- \f2|u0:9:cell_i|s~combout\ & ( !\f6|u0:11:cell_i|s~combout\ $ (((!\comb~0_combout\ & ((!\f1|u0:8:cell_i|c_out~0_combout\) # (!\f2|u0:9:cell_i|c_out~0_combout\))) # (\comb~0_combout\ & (!\f1|u0:8:cell_i|c_out~0_combout\ & 
-- !\f2|u0:9:cell_i|c_out~0_combout\)))) ) ) ) # ( \f5|u0:8:cell_i|c_out~0_combout\ & ( !\f2|u0:9:cell_i|s~combout\ & ( !\f6|u0:11:cell_i|s~combout\ $ (((!\comb~0_combout\ & ((!\f1|u0:8:cell_i|c_out~0_combout\) # (!\f2|u0:9:cell_i|c_out~0_combout\))) # 
-- (\comb~0_combout\ & (!\f1|u0:8:cell_i|c_out~0_combout\ & !\f2|u0:9:cell_i|c_out~0_combout\)))) ) ) ) # ( !\f5|u0:8:cell_i|c_out~0_combout\ & ( !\f2|u0:9:cell_i|s~combout\ & ( !\f6|u0:11:cell_i|s~combout\ $ (((!\comb~0_combout\) # 
-- (!\f2|u0:9:cell_i|c_out~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101100110010101100110101001010110011010100110011010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f6|u0:11:cell_i|ALT_INV_s~combout\,
	datab => \ALT_INV_comb~0_combout\,
	datac => \f1|u0:8:cell_i|ALT_INV_c_out~0_combout\,
	datad => \f2|u0:9:cell_i|ALT_INV_c_out~0_combout\,
	datae => \f5|u0:8:cell_i|ALT_INV_c_out~0_combout\,
	dataf => \f2|u0:9:cell_i|ALT_INV_s~combout\,
	combout => \f7|u0:11:cell_i|s~0_combout\);

-- Location: LABCELL_X35_Y2_N48
\f7|u0:8:cell_i|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \f7|u0:8:cell_i|s~combout\ = ( \f6|u0:8:cell_i|s~combout\ & ( !\f7|u0:7:cell_i|c_out~0_combout\ $ (\f5|u0:8:cell_i|s~combout\) ) ) # ( !\f6|u0:8:cell_i|s~combout\ & ( !\f7|u0:7:cell_i|c_out~0_combout\ $ (!\f5|u0:8:cell_i|s~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \f7|u0:7:cell_i|ALT_INV_c_out~0_combout\,
	datad => \f5|u0:8:cell_i|ALT_INV_s~combout\,
	dataf => \f6|u0:8:cell_i|ALT_INV_s~combout\,
	combout => \f7|u0:8:cell_i|s~combout\);

-- Location: LABCELL_X41_Y1_N6
\h2|hex[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \h2|hex[6]~0_combout\ = ( \f7|u0:8:cell_i|s~combout\ & ( \f7|u0:9:cell_i|c_out~0_combout\ & ( (!\f5|u0:10:cell_i|s~combout\ & ((!\f6|u0:10:cell_i|s~combout\ & (\f7|u0:9:cell_i|s~combout\ & !\f7|u0:11:cell_i|s~0_combout\)) # (\f6|u0:10:cell_i|s~combout\ & 
-- (!\f7|u0:9:cell_i|s~combout\ & \f7|u0:11:cell_i|s~0_combout\)))) # (\f5|u0:10:cell_i|s~combout\ & (\f7|u0:11:cell_i|s~0_combout\ & (!\f6|u0:10:cell_i|s~combout\ $ (\f7|u0:9:cell_i|s~combout\)))) ) ) ) # ( !\f7|u0:8:cell_i|s~combout\ & ( 
-- \f7|u0:9:cell_i|c_out~0_combout\ & ( (!\f7|u0:9:cell_i|s~combout\ & (!\f7|u0:11:cell_i|s~0_combout\ $ (((!\f5|u0:10:cell_i|s~combout\) # (!\f6|u0:10:cell_i|s~combout\))))) ) ) ) # ( \f7|u0:8:cell_i|s~combout\ & ( !\f7|u0:9:cell_i|c_out~0_combout\ & ( 
-- (!\f5|u0:10:cell_i|s~combout\ & (!\f7|u0:11:cell_i|s~0_combout\ & (!\f6|u0:10:cell_i|s~combout\ $ (\f7|u0:9:cell_i|s~combout\)))) # (\f5|u0:10:cell_i|s~combout\ & ((!\f6|u0:10:cell_i|s~combout\ & (\f7|u0:9:cell_i|s~combout\ & 
-- !\f7|u0:11:cell_i|s~0_combout\)) # (\f6|u0:10:cell_i|s~combout\ & (!\f7|u0:9:cell_i|s~combout\ & \f7|u0:11:cell_i|s~0_combout\)))) ) ) ) # ( !\f7|u0:8:cell_i|s~combout\ & ( !\f7|u0:9:cell_i|c_out~0_combout\ & ( (!\f7|u0:9:cell_i|s~combout\ & 
-- (!\f7|u0:11:cell_i|s~0_combout\ $ (((\f6|u0:10:cell_i|s~combout\) # (\f5|u0:10:cell_i|s~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001110000100001100001000000010000111000000000100001100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f5|u0:10:cell_i|ALT_INV_s~combout\,
	datab => \f6|u0:10:cell_i|ALT_INV_s~combout\,
	datac => \f7|u0:9:cell_i|ALT_INV_s~combout\,
	datad => \f7|u0:11:cell_i|ALT_INV_s~0_combout\,
	datae => \f7|u0:8:cell_i|ALT_INV_s~combout\,
	dataf => \f7|u0:9:cell_i|ALT_INV_c_out~0_combout\,
	combout => \h2|hex[6]~0_combout\);

-- Location: LABCELL_X41_Y1_N12
\h2|hex[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \h2|hex[5]~1_combout\ = ( \f7|u0:8:cell_i|s~combout\ & ( \f7|u0:9:cell_i|c_out~0_combout\ & ( !\f7|u0:11:cell_i|s~0_combout\ $ (((!\f5|u0:10:cell_i|s~combout\ & ((!\f7|u0:9:cell_i|s~combout\) # (\f6|u0:10:cell_i|s~combout\))) # 
-- (\f5|u0:10:cell_i|s~combout\ & ((!\f6|u0:10:cell_i|s~combout\) # (\f7|u0:9:cell_i|s~combout\))))) ) ) ) # ( !\f7|u0:8:cell_i|s~combout\ & ( \f7|u0:9:cell_i|c_out~0_combout\ & ( (\f7|u0:9:cell_i|s~combout\ & (\f7|u0:11:cell_i|s~0_combout\ & 
-- (!\f5|u0:10:cell_i|s~combout\ $ (!\f6|u0:10:cell_i|s~combout\)))) ) ) ) # ( \f7|u0:8:cell_i|s~combout\ & ( !\f7|u0:9:cell_i|c_out~0_combout\ & ( !\f7|u0:11:cell_i|s~0_combout\ $ (((!\f5|u0:10:cell_i|s~combout\ & (\f6|u0:10:cell_i|s~combout\ & 
-- !\f7|u0:9:cell_i|s~combout\)) # (\f5|u0:10:cell_i|s~combout\ & ((!\f7|u0:9:cell_i|s~combout\) # (\f6|u0:10:cell_i|s~combout\))))) ) ) ) # ( !\f7|u0:8:cell_i|s~combout\ & ( !\f7|u0:9:cell_i|c_out~0_combout\ & ( (\f7|u0:9:cell_i|s~combout\ & 
-- ((!\f5|u0:10:cell_i|s~combout\ & (!\f6|u0:10:cell_i|s~combout\ & !\f7|u0:11:cell_i|s~0_combout\)) # (\f5|u0:10:cell_i|s~combout\ & (\f6|u0:10:cell_i|s~combout\ & \f7|u0:11:cell_i|s~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000001100011100111000100000000000001100001100011100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f5|u0:10:cell_i|ALT_INV_s~combout\,
	datab => \f6|u0:10:cell_i|ALT_INV_s~combout\,
	datac => \f7|u0:9:cell_i|ALT_INV_s~combout\,
	datad => \f7|u0:11:cell_i|ALT_INV_s~0_combout\,
	datae => \f7|u0:8:cell_i|ALT_INV_s~combout\,
	dataf => \f7|u0:9:cell_i|ALT_INV_c_out~0_combout\,
	combout => \h2|hex[5]~1_combout\);

-- Location: LABCELL_X41_Y1_N51
\h2|hex[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \h2|hex[4]~2_combout\ = ( \f7|u0:8:cell_i|s~combout\ & ( \f7|u0:9:cell_i|c_out~0_combout\ & ( (!\f7|u0:11:cell_i|s~0_combout\ & ((!\f7|u0:9:cell_i|s~combout\ & ((!\f6|u0:10:cell_i|s~combout\) # (!\f5|u0:10:cell_i|s~combout\))) # 
-- (\f7|u0:9:cell_i|s~combout\ & (!\f6|u0:10:cell_i|s~combout\ & !\f5|u0:10:cell_i|s~combout\)))) # (\f7|u0:11:cell_i|s~0_combout\ & (((\f5|u0:10:cell_i|s~combout\) # (\f6|u0:10:cell_i|s~combout\)))) ) ) ) # ( !\f7|u0:8:cell_i|s~combout\ & ( 
-- \f7|u0:9:cell_i|c_out~0_combout\ & ( (!\f7|u0:9:cell_i|s~combout\ & ((!\f7|u0:11:cell_i|s~0_combout\ & (!\f6|u0:10:cell_i|s~combout\ & !\f5|u0:10:cell_i|s~combout\)) # (\f7|u0:11:cell_i|s~0_combout\ & (\f6|u0:10:cell_i|s~combout\ & 
-- \f5|u0:10:cell_i|s~combout\)))) ) ) ) # ( \f7|u0:8:cell_i|s~combout\ & ( !\f7|u0:9:cell_i|c_out~0_combout\ & ( (!\f7|u0:9:cell_i|s~combout\ & ((!\f7|u0:11:cell_i|s~0_combout\) # (!\f6|u0:10:cell_i|s~combout\ $ (\f5|u0:10:cell_i|s~combout\)))) # 
-- (\f7|u0:9:cell_i|s~combout\ & (!\f7|u0:11:cell_i|s~0_combout\ $ (((\f6|u0:10:cell_i|s~combout\ & \f5|u0:10:cell_i|s~combout\))))) ) ) ) # ( !\f7|u0:8:cell_i|s~combout\ & ( !\f7|u0:9:cell_i|c_out~0_combout\ & ( (!\f7|u0:9:cell_i|s~combout\ & 
-- (!\f7|u0:11:cell_i|s~0_combout\ & (!\f6|u0:10:cell_i|s~combout\ $ (!\f5|u0:10:cell_i|s~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010000000111011001100101110000000000000101100101110110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f7|u0:9:cell_i|ALT_INV_s~combout\,
	datab => \f7|u0:11:cell_i|ALT_INV_s~0_combout\,
	datac => \f6|u0:10:cell_i|ALT_INV_s~combout\,
	datad => \f5|u0:10:cell_i|ALT_INV_s~combout\,
	datae => \f7|u0:8:cell_i|ALT_INV_s~combout\,
	dataf => \f7|u0:9:cell_i|ALT_INV_c_out~0_combout\,
	combout => \h2|hex[4]~2_combout\);

-- Location: LABCELL_X41_Y1_N54
\h2|hex[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \h2|hex[3]~3_combout\ = ( \f7|u0:8:cell_i|s~combout\ & ( \f7|u0:9:cell_i|c_out~0_combout\ & ( (!\f7|u0:9:cell_i|s~combout\ & (\f7|u0:11:cell_i|s~0_combout\ & (!\f5|u0:10:cell_i|s~combout\ $ (!\f6|u0:10:cell_i|s~combout\)))) # (\f7|u0:9:cell_i|s~combout\ & 
-- (!\f5|u0:10:cell_i|s~combout\ $ ((\f6|u0:10:cell_i|s~combout\)))) ) ) ) # ( !\f7|u0:8:cell_i|s~combout\ & ( \f7|u0:9:cell_i|c_out~0_combout\ & ( (!\f5|u0:10:cell_i|s~combout\ & (!\f7|u0:11:cell_i|s~0_combout\ & (!\f6|u0:10:cell_i|s~combout\ $ 
-- (\f7|u0:9:cell_i|s~combout\)))) # (\f5|u0:10:cell_i|s~combout\ & ((!\f6|u0:10:cell_i|s~combout\ & (\f7|u0:9:cell_i|s~combout\ & !\f7|u0:11:cell_i|s~0_combout\)) # (\f6|u0:10:cell_i|s~combout\ & (!\f7|u0:9:cell_i|s~combout\ & 
-- \f7|u0:11:cell_i|s~0_combout\)))) ) ) ) # ( \f7|u0:8:cell_i|s~combout\ & ( !\f7|u0:9:cell_i|c_out~0_combout\ & ( (!\f7|u0:9:cell_i|s~combout\ & ((!\f5|u0:10:cell_i|s~combout\ & (!\f6|u0:10:cell_i|s~combout\ & !\f7|u0:11:cell_i|s~0_combout\)) # 
-- (\f5|u0:10:cell_i|s~combout\ & (\f6|u0:10:cell_i|s~combout\ & \f7|u0:11:cell_i|s~0_combout\)))) # (\f7|u0:9:cell_i|s~combout\ & (!\f5|u0:10:cell_i|s~combout\ $ ((!\f6|u0:10:cell_i|s~combout\)))) ) ) ) # ( !\f7|u0:8:cell_i|s~combout\ & ( 
-- !\f7|u0:9:cell_i|c_out~0_combout\ & ( (!\f5|u0:10:cell_i|s~combout\ & ((!\f6|u0:10:cell_i|s~combout\ & (\f7|u0:9:cell_i|s~combout\ & \f7|u0:11:cell_i|s~0_combout\)) # (\f6|u0:10:cell_i|s~combout\ & (!\f7|u0:9:cell_i|s~combout\ & 
-- !\f7|u0:11:cell_i|s~0_combout\)))) # (\f5|u0:10:cell_i|s~combout\ & (!\f7|u0:11:cell_i|s~0_combout\ & (!\f6|u0:10:cell_i|s~combout\ $ (\f7|u0:9:cell_i|s~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000100001000100001100001011010000110000100000000100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f5|u0:10:cell_i|ALT_INV_s~combout\,
	datab => \f6|u0:10:cell_i|ALT_INV_s~combout\,
	datac => \f7|u0:9:cell_i|ALT_INV_s~combout\,
	datad => \f7|u0:11:cell_i|ALT_INV_s~0_combout\,
	datae => \f7|u0:8:cell_i|ALT_INV_s~combout\,
	dataf => \f7|u0:9:cell_i|ALT_INV_c_out~0_combout\,
	combout => \h2|hex[3]~3_combout\);

-- Location: LABCELL_X41_Y1_N0
\h2|hex[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \h2|hex[2]~4_combout\ = ( \f7|u0:8:cell_i|s~combout\ & ( \f7|u0:9:cell_i|c_out~0_combout\ & ( (\f7|u0:9:cell_i|s~combout\ & ((!\f5|u0:10:cell_i|s~combout\ & (!\f6|u0:10:cell_i|s~combout\ & \f7|u0:11:cell_i|s~0_combout\)) # (\f5|u0:10:cell_i|s~combout\ & 
-- (\f6|u0:10:cell_i|s~combout\ & !\f7|u0:11:cell_i|s~0_combout\)))) ) ) ) # ( !\f7|u0:8:cell_i|s~combout\ & ( \f7|u0:9:cell_i|c_out~0_combout\ & ( (!\f5|u0:10:cell_i|s~combout\ & (\f7|u0:11:cell_i|s~0_combout\ & ((!\f6|u0:10:cell_i|s~combout\) # 
-- (\f7|u0:9:cell_i|s~combout\)))) # (\f5|u0:10:cell_i|s~combout\ & ((!\f6|u0:10:cell_i|s~combout\ & (\f7|u0:9:cell_i|s~combout\ & \f7|u0:11:cell_i|s~0_combout\)) # (\f6|u0:10:cell_i|s~combout\ & ((!\f7|u0:11:cell_i|s~0_combout\))))) ) ) ) # ( 
-- \f7|u0:8:cell_i|s~combout\ & ( !\f7|u0:9:cell_i|c_out~0_combout\ & ( (\f7|u0:9:cell_i|s~combout\ & (\f7|u0:11:cell_i|s~0_combout\ & (!\f5|u0:10:cell_i|s~combout\ $ (!\f6|u0:10:cell_i|s~combout\)))) ) ) ) # ( !\f7|u0:8:cell_i|s~combout\ & ( 
-- !\f7|u0:9:cell_i|c_out~0_combout\ & ( (!\f7|u0:9:cell_i|s~combout\ & (\f7|u0:11:cell_i|s~0_combout\ & (!\f5|u0:10:cell_i|s~combout\ $ (!\f6|u0:10:cell_i|s~combout\)))) # (\f7|u0:9:cell_i|s~combout\ & (!\f7|u0:11:cell_i|s~0_combout\ $ 
-- (((\f6|u0:10:cell_i|s~combout\) # (\f5|u0:10:cell_i|s~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001100111000000000000011000010001100011100000000100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f5|u0:10:cell_i|ALT_INV_s~combout\,
	datab => \f6|u0:10:cell_i|ALT_INV_s~combout\,
	datac => \f7|u0:9:cell_i|ALT_INV_s~combout\,
	datad => \f7|u0:11:cell_i|ALT_INV_s~0_combout\,
	datae => \f7|u0:8:cell_i|ALT_INV_s~combout\,
	dataf => \f7|u0:9:cell_i|ALT_INV_c_out~0_combout\,
	combout => \h2|hex[2]~4_combout\);

-- Location: LABCELL_X41_Y1_N36
\h2|hex[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \h2|hex[1]~5_combout\ = ( \f7|u0:8:cell_i|s~combout\ & ( \f7|u0:9:cell_i|c_out~0_combout\ & ( (!\f7|u0:9:cell_i|s~combout\ & ((!\f5|u0:10:cell_i|s~combout\ & (!\f6|u0:10:cell_i|s~combout\ & !\f7|u0:11:cell_i|s~0_combout\)) # (\f5|u0:10:cell_i|s~combout\ & 
-- (\f6|u0:10:cell_i|s~combout\ & \f7|u0:11:cell_i|s~0_combout\)))) # (\f7|u0:9:cell_i|s~combout\ & (!\f7|u0:11:cell_i|s~0_combout\ $ (((!\f5|u0:10:cell_i|s~combout\ & !\f6|u0:10:cell_i|s~combout\))))) ) ) ) # ( !\f7|u0:8:cell_i|s~combout\ & ( 
-- \f7|u0:9:cell_i|c_out~0_combout\ & ( (!\f5|u0:10:cell_i|s~combout\ & (!\f6|u0:10:cell_i|s~combout\ & ((\f7|u0:11:cell_i|s~0_combout\) # (\f7|u0:9:cell_i|s~combout\)))) # (\f5|u0:10:cell_i|s~combout\ & (\f6|u0:10:cell_i|s~combout\ & 
-- ((!\f7|u0:11:cell_i|s~0_combout\) # (\f7|u0:9:cell_i|s~combout\)))) ) ) ) # ( \f7|u0:8:cell_i|s~combout\ & ( !\f7|u0:9:cell_i|c_out~0_combout\ & ( (!\f7|u0:9:cell_i|s~combout\ & (!\f7|u0:11:cell_i|s~0_combout\ & (!\f5|u0:10:cell_i|s~combout\ $ 
-- (!\f6|u0:10:cell_i|s~combout\)))) # (\f7|u0:9:cell_i|s~combout\ & (!\f7|u0:11:cell_i|s~0_combout\ $ (((!\f5|u0:10:cell_i|s~combout\) # (!\f6|u0:10:cell_i|s~combout\))))) ) ) ) # ( !\f7|u0:8:cell_i|s~combout\ & ( !\f7|u0:9:cell_i|c_out~0_combout\ & ( 
-- (!\f7|u0:9:cell_i|s~combout\ & (\f7|u0:11:cell_i|s~0_combout\ & (!\f5|u0:10:cell_i|s~combout\ $ (!\f6|u0:10:cell_i|s~combout\)))) # (\f7|u0:9:cell_i|s~combout\ & (!\f5|u0:10:cell_i|s~combout\ $ ((!\f6|u0:10:cell_i|s~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001100110011000010000111000011001100010011000011100011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f5|u0:10:cell_i|ALT_INV_s~combout\,
	datab => \f6|u0:10:cell_i|ALT_INV_s~combout\,
	datac => \f7|u0:9:cell_i|ALT_INV_s~combout\,
	datad => \f7|u0:11:cell_i|ALT_INV_s~0_combout\,
	datae => \f7|u0:8:cell_i|ALT_INV_s~combout\,
	dataf => \f7|u0:9:cell_i|ALT_INV_c_out~0_combout\,
	combout => \h2|hex[1]~5_combout\);

-- Location: LABCELL_X41_Y1_N42
\h2|hex[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \h2|hex[0]~6_combout\ = ( \f7|u0:8:cell_i|s~combout\ & ( \f7|u0:9:cell_i|c_out~0_combout\ & ( (!\f7|u0:9:cell_i|s~combout\ & (!\f7|u0:11:cell_i|s~0_combout\ $ (((!\f5|u0:10:cell_i|s~combout\) # (!\f6|u0:10:cell_i|s~combout\))))) # 
-- (\f7|u0:9:cell_i|s~combout\ & (!\f7|u0:11:cell_i|s~0_combout\ & (!\f5|u0:10:cell_i|s~combout\ $ (!\f6|u0:10:cell_i|s~combout\)))) ) ) ) # ( !\f7|u0:8:cell_i|s~combout\ & ( \f7|u0:9:cell_i|c_out~0_combout\ & ( (!\f7|u0:9:cell_i|s~combout\ & 
-- ((!\f5|u0:10:cell_i|s~combout\ & (!\f6|u0:10:cell_i|s~combout\ & !\f7|u0:11:cell_i|s~0_combout\)) # (\f5|u0:10:cell_i|s~combout\ & (\f6|u0:10:cell_i|s~combout\ & \f7|u0:11:cell_i|s~0_combout\)))) ) ) ) # ( \f7|u0:8:cell_i|s~combout\ & ( 
-- !\f7|u0:9:cell_i|c_out~0_combout\ & ( (!\f7|u0:9:cell_i|s~combout\ & (!\f7|u0:11:cell_i|s~0_combout\ $ (((\f6|u0:10:cell_i|s~combout\) # (\f5|u0:10:cell_i|s~combout\))))) # (\f7|u0:9:cell_i|s~combout\ & ((!\f5|u0:10:cell_i|s~combout\ & 
-- (!\f6|u0:10:cell_i|s~combout\ & \f7|u0:11:cell_i|s~0_combout\)) # (\f5|u0:10:cell_i|s~combout\ & (\f6|u0:10:cell_i|s~combout\ & !\f7|u0:11:cell_i|s~0_combout\)))) ) ) ) # ( !\f7|u0:8:cell_i|s~combout\ & ( !\f7|u0:9:cell_i|c_out~0_combout\ & ( 
-- (!\f7|u0:9:cell_i|s~combout\ & (!\f7|u0:11:cell_i|s~0_combout\ & (!\f5|u0:10:cell_i|s~combout\ $ (!\f6|u0:10:cell_i|s~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000000000000100000010111100010000000000100000001011011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f5|u0:10:cell_i|ALT_INV_s~combout\,
	datab => \f6|u0:10:cell_i|ALT_INV_s~combout\,
	datac => \f7|u0:9:cell_i|ALT_INV_s~combout\,
	datad => \f7|u0:11:cell_i|ALT_INV_s~0_combout\,
	datae => \f7|u0:8:cell_i|ALT_INV_s~combout\,
	dataf => \f7|u0:9:cell_i|ALT_INV_c_out~0_combout\,
	combout => \h2|hex[0]~6_combout\);

-- Location: LABCELL_X36_Y1_N51
\f7|u0:6:cell_i|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \f7|u0:6:cell_i|s~combout\ = ( \f7|u0:5:cell_i|c_out~0_combout\ & ( !\f6|u0:6:cell_i|s~0_combout\ $ (\f5|u0:6:cell_i|s~combout\) ) ) # ( !\f7|u0:5:cell_i|c_out~0_combout\ & ( !\f6|u0:6:cell_i|s~0_combout\ $ (!\f5|u0:6:cell_i|s~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f6|u0:6:cell_i|ALT_INV_s~0_combout\,
	datac => \f5|u0:6:cell_i|ALT_INV_s~combout\,
	dataf => \f7|u0:5:cell_i|ALT_INV_c_out~0_combout\,
	combout => \f7|u0:6:cell_i|s~combout\);

-- Location: LABCELL_X36_Y1_N24
\f7|u0:7:cell_i|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \f7|u0:7:cell_i|s~combout\ = ( \f6|u0:6:cell_i|s~0_combout\ & ( \f7|u0:5:cell_i|c_out~0_combout\ & ( !\f6|u0:7:cell_i|s~combout\ $ (!\f5|u0:7:cell_i|s~0_combout\ $ (!\f5|u0:6:cell_i|c_out~0_combout\)) ) ) ) # ( !\f6|u0:6:cell_i|s~0_combout\ & ( 
-- \f7|u0:5:cell_i|c_out~0_combout\ & ( !\f6|u0:7:cell_i|s~combout\ $ (!\f5|u0:7:cell_i|s~0_combout\ $ (!\f5|u0:6:cell_i|c_out~0_combout\ $ (!\f5|u0:6:cell_i|s~combout\))) ) ) ) # ( \f6|u0:6:cell_i|s~0_combout\ & ( !\f7|u0:5:cell_i|c_out~0_combout\ & ( 
-- !\f6|u0:7:cell_i|s~combout\ $ (!\f5|u0:7:cell_i|s~0_combout\ $ (!\f5|u0:6:cell_i|c_out~0_combout\ $ (!\f5|u0:6:cell_i|s~combout\))) ) ) ) # ( !\f6|u0:6:cell_i|s~0_combout\ & ( !\f7|u0:5:cell_i|c_out~0_combout\ & ( !\f6|u0:7:cell_i|s~combout\ $ 
-- (!\f5|u0:7:cell_i|s~0_combout\ $ (\f5|u0:6:cell_i|c_out~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010011001011001101001100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f6|u0:7:cell_i|ALT_INV_s~combout\,
	datab => \f5|u0:7:cell_i|ALT_INV_s~0_combout\,
	datac => \f5|u0:6:cell_i|ALT_INV_c_out~0_combout\,
	datad => \f5|u0:6:cell_i|ALT_INV_s~combout\,
	datae => \f6|u0:6:cell_i|ALT_INV_s~0_combout\,
	dataf => \f7|u0:5:cell_i|ALT_INV_c_out~0_combout\,
	combout => \f7|u0:7:cell_i|s~combout\);

-- Location: MLABCELL_X37_Y1_N27
\f7|u0:4:cell_i|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f7|u0:4:cell_i|s~0_combout\ = ( \f5|u0:3:cell_i|c_out~combout\ & ( \comb~3_combout\ & ( !\f2|u0:4:cell_i|s~combout\ $ (!\f1|u0:4:cell_i|s~combout\) ) ) ) # ( !\f5|u0:3:cell_i|c_out~combout\ & ( \comb~3_combout\ & ( !\f2|u0:4:cell_i|s~combout\ $ 
-- (\f1|u0:4:cell_i|s~combout\) ) ) ) # ( \f5|u0:3:cell_i|c_out~combout\ & ( !\comb~3_combout\ & ( !\f2|u0:4:cell_i|s~combout\ $ (\f1|u0:4:cell_i|s~combout\) ) ) ) # ( !\f5|u0:3:cell_i|c_out~combout\ & ( !\comb~3_combout\ & ( !\f2|u0:4:cell_i|s~combout\ $ 
-- (!\f1|u0:4:cell_i|s~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010101001011010010110100101101001010101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f2|u0:4:cell_i|ALT_INV_s~combout\,
	datac => \f1|u0:4:cell_i|ALT_INV_s~combout\,
	datae => \f5|u0:3:cell_i|ALT_INV_c_out~combout\,
	dataf => \ALT_INV_comb~3_combout\,
	combout => \f7|u0:4:cell_i|s~0_combout\);

-- Location: MLABCELL_X37_Y1_N18
\f7|u0:5:cell_i|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \f7|u0:5:cell_i|s~combout\ = ( \f5|u0:3:cell_i|c_out~combout\ & ( \comb~3_combout\ & ( !\f3|u0:5:cell_i|s~0_combout\ $ (!\f5|u0:5:cell_i|s~0_combout\ $ (((!\f2|u0:4:cell_i|s~combout\) # (!\f1|u0:4:cell_i|s~combout\)))) ) ) ) # ( 
-- !\f5|u0:3:cell_i|c_out~combout\ & ( \comb~3_combout\ & ( !\f3|u0:5:cell_i|s~0_combout\ $ (!\f5|u0:5:cell_i|s~0_combout\ $ (((\f1|u0:4:cell_i|s~combout\) # (\f2|u0:4:cell_i|s~combout\)))) ) ) ) # ( \f5|u0:3:cell_i|c_out~combout\ & ( !\comb~3_combout\ & ( 
-- !\f3|u0:5:cell_i|s~0_combout\ $ (!\f5|u0:5:cell_i|s~0_combout\ $ (((\f1|u0:4:cell_i|s~combout\) # (\f2|u0:4:cell_i|s~combout\)))) ) ) ) # ( !\f5|u0:3:cell_i|c_out~combout\ & ( !\comb~3_combout\ & ( !\f3|u0:5:cell_i|s~0_combout\ $ 
-- (!\f5|u0:5:cell_i|s~0_combout\ $ (((\f2|u0:4:cell_i|s~combout\ & \f1|u0:4:cell_i|s~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001101001011010011001100101101001100110011001100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f3|u0:5:cell_i|ALT_INV_s~0_combout\,
	datab => \f5|u0:5:cell_i|ALT_INV_s~0_combout\,
	datac => \f2|u0:4:cell_i|ALT_INV_s~combout\,
	datad => \f1|u0:4:cell_i|ALT_INV_s~combout\,
	datae => \f5|u0:3:cell_i|ALT_INV_c_out~combout\,
	dataf => \ALT_INV_comb~3_combout\,
	combout => \f7|u0:5:cell_i|s~combout\);

-- Location: MLABCELL_X37_Y1_N3
\h1|hex[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \h1|hex[6]~0_combout\ = ( \f7|u0:4:cell_i|s~0_combout\ & ( \f7|u0:5:cell_i|s~combout\ & ( (\f7|u0:6:cell_i|s~combout\ & !\f7|u0:7:cell_i|s~combout\) ) ) ) # ( \f7|u0:4:cell_i|s~0_combout\ & ( !\f7|u0:5:cell_i|s~combout\ & ( (!\f7|u0:6:cell_i|s~combout\ & 
-- !\f7|u0:7:cell_i|s~combout\) ) ) ) # ( !\f7|u0:4:cell_i|s~0_combout\ & ( !\f7|u0:5:cell_i|s~combout\ & ( !\f7|u0:6:cell_i|s~combout\ $ (\f7|u0:7:cell_i|s~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101101000001010000000000000000000000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f7|u0:6:cell_i|ALT_INV_s~combout\,
	datac => \f7|u0:7:cell_i|ALT_INV_s~combout\,
	datae => \f7|u0:4:cell_i|ALT_INV_s~0_combout\,
	dataf => \f7|u0:5:cell_i|ALT_INV_s~combout\,
	combout => \h1|hex[6]~0_combout\);

-- Location: MLABCELL_X37_Y1_N36
\h1|hex[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \h1|hex[5]~1_combout\ = ( \f7|u0:5:cell_i|s~combout\ & ( (!\f7|u0:7:cell_i|s~combout\ & ((!\f7|u0:6:cell_i|s~combout\) # (\f7|u0:4:cell_i|s~0_combout\))) ) ) # ( !\f7|u0:5:cell_i|s~combout\ & ( (\f7|u0:4:cell_i|s~0_combout\ & (!\f7|u0:6:cell_i|s~combout\ 
-- $ (\f7|u0:7:cell_i|s~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100001001000010010000100110001100100011001000110010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f7|u0:6:cell_i|ALT_INV_s~combout\,
	datab => \f7|u0:7:cell_i|ALT_INV_s~combout\,
	datac => \f7|u0:4:cell_i|ALT_INV_s~0_combout\,
	dataf => \f7|u0:5:cell_i|ALT_INV_s~combout\,
	combout => \h1|hex[5]~1_combout\);

-- Location: MLABCELL_X37_Y1_N45
\h1|hex[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \h1|hex[4]~2_combout\ = ( \f7|u0:4:cell_i|s~0_combout\ & ( \f7|u0:5:cell_i|s~combout\ & ( !\f7|u0:7:cell_i|s~combout\ ) ) ) # ( \f7|u0:4:cell_i|s~0_combout\ & ( !\f7|u0:5:cell_i|s~combout\ & ( (!\f7|u0:6:cell_i|s~combout\) # (!\f7|u0:7:cell_i|s~combout\) 
-- ) ) ) # ( !\f7|u0:4:cell_i|s~0_combout\ & ( !\f7|u0:5:cell_i|s~combout\ & ( (\f7|u0:6:cell_i|s~combout\ & !\f7|u0:7:cell_i|s~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000111110101111101000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f7|u0:6:cell_i|ALT_INV_s~combout\,
	datac => \f7|u0:7:cell_i|ALT_INV_s~combout\,
	datae => \f7|u0:4:cell_i|ALT_INV_s~0_combout\,
	dataf => \f7|u0:5:cell_i|ALT_INV_s~combout\,
	combout => \h1|hex[4]~2_combout\);

-- Location: MLABCELL_X37_Y1_N39
\h1|hex[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \h1|hex[3]~3_combout\ = ( \f7|u0:5:cell_i|s~combout\ & ( (!\f7|u0:6:cell_i|s~combout\ & (\f7|u0:7:cell_i|s~combout\ & !\f7|u0:4:cell_i|s~0_combout\)) # (\f7|u0:6:cell_i|s~combout\ & ((\f7|u0:4:cell_i|s~0_combout\))) ) ) # ( !\f7|u0:5:cell_i|s~combout\ & ( 
-- (!\f7|u0:7:cell_i|s~combout\ & (!\f7|u0:6:cell_i|s~combout\ $ (!\f7|u0:4:cell_i|s~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010010001000010001001000100000100010010101010010001001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f7|u0:6:cell_i|ALT_INV_s~combout\,
	datab => \f7|u0:7:cell_i|ALT_INV_s~combout\,
	datad => \f7|u0:4:cell_i|ALT_INV_s~0_combout\,
	dataf => \f7|u0:5:cell_i|ALT_INV_s~combout\,
	combout => \h1|hex[3]~3_combout\);

-- Location: MLABCELL_X37_Y1_N48
\h1|hex[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \h1|hex[2]~4_combout\ = ( \f7|u0:5:cell_i|s~combout\ & ( (!\f7|u0:6:cell_i|s~combout\ & (!\f7|u0:7:cell_i|s~combout\ & !\f7|u0:4:cell_i|s~0_combout\)) # (\f7|u0:6:cell_i|s~combout\ & (\f7|u0:7:cell_i|s~combout\)) ) ) # ( !\f7|u0:5:cell_i|s~combout\ & ( 
-- (\f7|u0:6:cell_i|s~combout\ & (\f7|u0:7:cell_i|s~combout\ & !\f7|u0:4:cell_i|s~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000010010001100100011001000110010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f7|u0:6:cell_i|ALT_INV_s~combout\,
	datab => \f7|u0:7:cell_i|ALT_INV_s~combout\,
	datac => \f7|u0:4:cell_i|ALT_INV_s~0_combout\,
	dataf => \f7|u0:5:cell_i|ALT_INV_s~combout\,
	combout => \h1|hex[2]~4_combout\);

-- Location: MLABCELL_X37_Y1_N54
\h1|hex[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \h1|hex[1]~5_combout\ = ( \f7|u0:4:cell_i|s~0_combout\ & ( \f7|u0:5:cell_i|s~combout\ & ( \f7|u0:7:cell_i|s~combout\ ) ) ) # ( !\f7|u0:4:cell_i|s~0_combout\ & ( \f7|u0:5:cell_i|s~combout\ & ( \f7|u0:6:cell_i|s~combout\ ) ) ) # ( 
-- \f7|u0:4:cell_i|s~0_combout\ & ( !\f7|u0:5:cell_i|s~combout\ & ( (!\f7|u0:7:cell_i|s~combout\ & \f7|u0:6:cell_i|s~combout\) ) ) ) # ( !\f7|u0:4:cell_i|s~0_combout\ & ( !\f7|u0:5:cell_i|s~combout\ & ( (\f7|u0:7:cell_i|s~combout\ & 
-- \f7|u0:6:cell_i|s~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000011000000110000001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \f7|u0:7:cell_i|ALT_INV_s~combout\,
	datac => \f7|u0:6:cell_i|ALT_INV_s~combout\,
	datae => \f7|u0:4:cell_i|ALT_INV_s~0_combout\,
	dataf => \f7|u0:5:cell_i|ALT_INV_s~combout\,
	combout => \h1|hex[1]~5_combout\);

-- Location: MLABCELL_X37_Y1_N51
\h1|hex[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \h1|hex[0]~6_combout\ = ( \f7|u0:5:cell_i|s~combout\ & ( (!\f7|u0:6:cell_i|s~combout\ & (\f7|u0:7:cell_i|s~combout\ & \f7|u0:4:cell_i|s~0_combout\)) ) ) # ( !\f7|u0:5:cell_i|s~combout\ & ( (!\f7|u0:6:cell_i|s~combout\ & (!\f7|u0:7:cell_i|s~combout\ & 
-- \f7|u0:4:cell_i|s~0_combout\)) # (\f7|u0:6:cell_i|s~combout\ & (!\f7|u0:7:cell_i|s~combout\ $ (\f7|u0:4:cell_i|s~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010010011001010001001001100100000000001000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f7|u0:6:cell_i|ALT_INV_s~combout\,
	datab => \f7|u0:7:cell_i|ALT_INV_s~combout\,
	datad => \f7|u0:4:cell_i|ALT_INV_s~0_combout\,
	dataf => \f7|u0:5:cell_i|ALT_INV_s~combout\,
	combout => \h1|hex[0]~6_combout\);

-- Location: MLABCELL_X34_Y3_N24
\f1|u0:1:cell_i|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|u0:1:cell_i|s~0_combout\ = ( \r1|d0|Q~combout\ & ( !\r0|d1|Q~combout\ $ (((!\r1|d1|Q~combout\) # (!\r0|d0|Q~combout\))) ) ) # ( !\r1|d0|Q~combout\ & ( (\r1|d1|Q~combout\ & \r0|d0|Q~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100001111001111000000111100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \r1|d1|ALT_INV_Q~combout\,
	datac => \r0|d1|ALT_INV_Q~combout\,
	datad => \r0|d0|ALT_INV_Q~combout\,
	dataf => \r1|d0|ALT_INV_Q~combout\,
	combout => \f1|u0:1:cell_i|s~0_combout\);

-- Location: LABCELL_X32_Y2_N9
\comb~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~5_combout\ = ( \r1|d0|Q~combout\ & ( \r0|d0|Q~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \r0|d0|ALT_INV_Q~combout\,
	dataf => \r1|d0|ALT_INV_Q~combout\,
	combout => \comb~5_combout\);

-- Location: LABCELL_X32_Y2_N15
\f5|u0:3:cell_i|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \f5|u0:3:cell_i|s~combout\ = !\f1|u0:3:cell_i|s~combout\ $ (!\f5|u0:2:cell_i|c_out~0_combout\ $ (\f2|u0:3:cell_i|s~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010101011010101001010101101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|u0:3:cell_i|ALT_INV_s~combout\,
	datac => \f5|u0:2:cell_i|ALT_INV_c_out~0_combout\,
	datad => \f2|u0:3:cell_i|ALT_INV_s~0_combout\,
	combout => \f5|u0:3:cell_i|s~combout\);

-- Location: LABCELL_X36_Y2_N45
\f5|u0:2:cell_i|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f5|u0:2:cell_i|s~0_combout\ = ( \r0|d2|Q~combout\ & ( \r1|d2|Q~combout\ & ( (!\r1|d0|Q~combout\ & (!\r0|d0|Q~combout\ $ (((!\r0|d1|Q~combout\) # (!\r1|d1|Q~combout\))))) # (\r1|d0|Q~combout\ & (!\r0|d0|Q~combout\ & ((!\r0|d1|Q~combout\) # 
-- (!\r1|d1|Q~combout\)))) ) ) ) # ( !\r0|d2|Q~combout\ & ( \r1|d2|Q~combout\ & ( (!\r0|d1|Q~combout\ & (((\r0|d0|Q~combout\)))) # (\r0|d1|Q~combout\ & ((!\r0|d0|Q~combout\ & ((\r1|d1|Q~combout\))) # (\r0|d0|Q~combout\ & ((!\r1|d1|Q~combout\) # 
-- (\r1|d0|Q~combout\))))) ) ) ) # ( \r0|d2|Q~combout\ & ( !\r1|d2|Q~combout\ & ( (!\r0|d1|Q~combout\ & (\r1|d0|Q~combout\)) # (\r0|d1|Q~combout\ & ((!\r1|d0|Q~combout\ & ((\r1|d1|Q~combout\))) # (\r1|d0|Q~combout\ & ((!\r1|d1|Q~combout\) # 
-- (\r0|d0|Q~combout\))))) ) ) ) # ( !\r0|d2|Q~combout\ & ( !\r1|d2|Q~combout\ & ( (\r0|d1|Q~combout\ & (\r1|d1|Q~combout\ & ((!\r1|d0|Q~combout\) # (!\r0|d0|Q~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010100001100110110011100001111010110110011110001101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r0|d1|ALT_INV_Q~combout\,
	datab => \r1|d0|ALT_INV_Q~combout\,
	datac => \r0|d0|ALT_INV_Q~combout\,
	datad => \r1|d1|ALT_INV_Q~combout\,
	datae => \r0|d2|ALT_INV_Q~combout\,
	dataf => \r1|d2|ALT_INV_Q~combout\,
	combout => \f5|u0:2:cell_i|s~0_combout\);

-- Location: LABCELL_X47_Y1_N33
\h0|hex[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \h0|hex[6]~0_combout\ = ( \f5|u0:2:cell_i|s~0_combout\ & ( (!\f1|u0:1:cell_i|s~0_combout\ & (!\comb~5_combout\ & \f5|u0:3:cell_i|s~combout\)) # (\f1|u0:1:cell_i|s~0_combout\ & (\comb~5_combout\ & !\f5|u0:3:cell_i|s~combout\)) ) ) # ( 
-- !\f5|u0:2:cell_i|s~0_combout\ & ( (!\f1|u0:1:cell_i|s~0_combout\ & !\f5|u0:3:cell_i|s~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000000000101101000000000010110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|u0:1:cell_i|ALT_INV_s~0_combout\,
	datac => \ALT_INV_comb~5_combout\,
	datad => \f5|u0:3:cell_i|ALT_INV_s~combout\,
	dataf => \f5|u0:2:cell_i|ALT_INV_s~0_combout\,
	combout => \h0|hex[6]~0_combout\);

-- Location: LABCELL_X47_Y1_N36
\h0|hex[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \h0|hex[5]~1_combout\ = ( \f5|u0:2:cell_i|s~0_combout\ & ( (\comb~5_combout\ & (!\f1|u0:1:cell_i|s~0_combout\ $ (!\f5|u0:3:cell_i|s~combout\))) ) ) # ( !\f5|u0:2:cell_i|s~0_combout\ & ( (!\f5|u0:3:cell_i|s~combout\ & ((\comb~5_combout\) # 
-- (\f1|u0:1:cell_i|s~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011100000000011101110000000000010001001000100001000100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|u0:1:cell_i|ALT_INV_s~0_combout\,
	datab => \ALT_INV_comb~5_combout\,
	datad => \f5|u0:3:cell_i|ALT_INV_s~combout\,
	dataf => \f5|u0:2:cell_i|ALT_INV_s~0_combout\,
	combout => \h0|hex[5]~1_combout\);

-- Location: LABCELL_X47_Y1_N39
\h0|hex[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \h0|hex[4]~2_combout\ = ( \f5|u0:2:cell_i|s~0_combout\ & ( (!\f5|u0:3:cell_i|s~combout\ & ((!\f1|u0:1:cell_i|s~0_combout\) # (\comb~5_combout\))) ) ) # ( !\f5|u0:2:cell_i|s~0_combout\ & ( (\comb~5_combout\ & ((!\f1|u0:1:cell_i|s~0_combout\) # 
-- (!\f5|u0:3:cell_i|s~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000110010001100100011001010110000101100001011000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|u0:1:cell_i|ALT_INV_s~0_combout\,
	datab => \ALT_INV_comb~5_combout\,
	datac => \f5|u0:3:cell_i|ALT_INV_s~combout\,
	dataf => \f5|u0:2:cell_i|ALT_INV_s~0_combout\,
	combout => \h0|hex[4]~2_combout\);

-- Location: LABCELL_X47_Y1_N42
\h0|hex[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \h0|hex[3]~3_combout\ = ( \f5|u0:2:cell_i|s~0_combout\ & ( (!\f1|u0:1:cell_i|s~0_combout\ & (!\comb~5_combout\ & !\f5|u0:3:cell_i|s~combout\)) # (\f1|u0:1:cell_i|s~0_combout\ & (\comb~5_combout\)) ) ) # ( !\f5|u0:2:cell_i|s~0_combout\ & ( 
-- (!\f1|u0:1:cell_i|s~0_combout\ & (\comb~5_combout\ & !\f5|u0:3:cell_i|s~combout\)) # (\f1|u0:1:cell_i|s~0_combout\ & (!\comb~5_combout\ & \f5|u0:3:cell_i|s~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001000100001000100100010010011001000100011001100100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|u0:1:cell_i|ALT_INV_s~0_combout\,
	datab => \ALT_INV_comb~5_combout\,
	datad => \f5|u0:3:cell_i|ALT_INV_s~combout\,
	dataf => \f5|u0:2:cell_i|ALT_INV_s~0_combout\,
	combout => \h0|hex[3]~3_combout\);

-- Location: LABCELL_X47_Y1_N30
\h0|hex[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \h0|hex[2]~4_combout\ = ( \f5|u0:2:cell_i|s~0_combout\ & ( (\f5|u0:3:cell_i|s~combout\ & ((!\comb~5_combout\) # (\f1|u0:1:cell_i|s~0_combout\))) ) ) # ( !\f5|u0:2:cell_i|s~0_combout\ & ( (\f1|u0:1:cell_i|s~0_combout\ & (!\comb~5_combout\ & 
-- !\f5|u0:3:cell_i|s~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000000000000110111010000000011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|u0:1:cell_i|ALT_INV_s~0_combout\,
	datab => \ALT_INV_comb~5_combout\,
	datad => \f5|u0:3:cell_i|ALT_INV_s~combout\,
	dataf => \f5|u0:2:cell_i|ALT_INV_s~0_combout\,
	combout => \h0|hex[2]~4_combout\);

-- Location: LABCELL_X47_Y1_N45
\h0|hex[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \h0|hex[1]~5_combout\ = ( \f5|u0:2:cell_i|s~0_combout\ & ( (!\f1|u0:1:cell_i|s~0_combout\ & (!\comb~5_combout\ $ (!\f5|u0:3:cell_i|s~combout\))) # (\f1|u0:1:cell_i|s~0_combout\ & ((!\comb~5_combout\) # (\f5|u0:3:cell_i|s~combout\))) ) ) # ( 
-- !\f5|u0:2:cell_i|s~0_combout\ & ( (\f1|u0:1:cell_i|s~0_combout\ & (\comb~5_combout\ & \f5|u0:3:cell_i|s~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000101101101011011010110110101101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|u0:1:cell_i|ALT_INV_s~0_combout\,
	datab => \ALT_INV_comb~5_combout\,
	datac => \f5|u0:3:cell_i|ALT_INV_s~combout\,
	dataf => \f5|u0:2:cell_i|ALT_INV_s~0_combout\,
	combout => \h0|hex[1]~5_combout\);

-- Location: LABCELL_X47_Y1_N48
\h0|hex[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \h0|hex[0]~6_combout\ = ( \f5|u0:3:cell_i|s~combout\ & ( \f5|u0:2:cell_i|s~0_combout\ & ( (\comb~5_combout\ & !\f1|u0:1:cell_i|s~0_combout\) ) ) ) # ( !\f5|u0:3:cell_i|s~combout\ & ( \f5|u0:2:cell_i|s~0_combout\ & ( (!\comb~5_combout\ & 
-- !\f1|u0:1:cell_i|s~0_combout\) ) ) ) # ( \f5|u0:3:cell_i|s~combout\ & ( !\f5|u0:2:cell_i|s~0_combout\ & ( (\comb~5_combout\ & \f1|u0:1:cell_i|s~0_combout\) ) ) ) # ( !\f5|u0:3:cell_i|s~combout\ & ( !\f5|u0:2:cell_i|s~0_combout\ & ( (\comb~5_combout\ & 
-- !\f1|u0:1:cell_i|s~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000000110000001111000000110000000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_comb~5_combout\,
	datac => \f1|u0:1:cell_i|ALT_INV_s~0_combout\,
	datae => \f5|u0:3:cell_i|ALT_INV_s~combout\,
	dataf => \f5|u0:2:cell_i|ALT_INV_s~0_combout\,
	combout => \h0|hex[0]~6_combout\);

-- Location: IOIBUF_X10_Y0_N92
\key0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key0,
	o => \key0~input_o\);

-- Location: IOIBUF_X11_Y0_N35
\key1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key1,
	o => \key1~input_o\);

-- Location: LABCELL_X24_Y41_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


