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
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "10/30/2022 22:48:11"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab10part5 IS
    PORT (
	sw9 : IN std_logic;
	key0 : IN std_logic;
	clk : IN std_logic;
	sw : IN std_logic_vector(8 DOWNTO 0);
	hex5 : BUFFER std_logic_vector(0 TO 6);
	hex4 : BUFFER std_logic_vector(0 TO 6);
	hex3 : BUFFER std_logic_vector(0 TO 6);
	hex2 : BUFFER std_logic_vector(0 TO 6);
	hex1 : BUFFER std_logic_vector(0 TO 6);
	hex0 : BUFFER std_logic_vector(0 TO 6);
	d_r5 : BUFFER std_logic_vector(8 DOWNTO 0);
	d_r3 : BUFFER std_logic_vector(8 DOWNTO 0);
	d_r2 : BUFFER std_logic_vector(8 DOWNTO 0);
	d_in : BUFFER std_logic_vector(8 DOWNTO 0);
	ledr : BUFFER std_logic_vector(8 DOWNTO 0)
	);
END lab10part5;

-- Design Ports Information
-- hex5[6]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[5]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[4]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[3]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[2]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[1]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[0]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[6]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[5]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[4]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[2]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[1]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[0]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[6]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[5]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[4]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[3]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[2]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[1]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[0]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[6]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[5]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[4]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[3]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[2]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[1]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[0]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[6]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[5]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[4]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[3]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[2]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[1]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[0]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[6]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[5]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[4]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[3]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[1]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[0]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_r5[0]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_r5[1]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_r5[2]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_r5[3]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_r5[4]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_r5[5]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_r5[6]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_r5[7]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_r5[8]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_r3[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_r3[1]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_r3[2]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_r3[3]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_r3[4]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_r3[5]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_r3[6]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_r3[7]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_r3[8]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_r2[0]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_r2[1]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_r2[2]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_r2[3]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_r2[4]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_r2[5]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_r2[6]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_r2[7]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_r2[8]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[0]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[1]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[2]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[3]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[4]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[5]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[6]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[7]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[8]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[0]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[1]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[2]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[3]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[4]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[5]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[6]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[7]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[8]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key0	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[8]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw9	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab10part5 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sw9 : std_logic;
SIGNAL ww_key0 : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_sw : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_hex5 : std_logic_vector(0 TO 6);
SIGNAL ww_hex4 : std_logic_vector(0 TO 6);
SIGNAL ww_hex3 : std_logic_vector(0 TO 6);
SIGNAL ww_hex2 : std_logic_vector(0 TO 6);
SIGNAL ww_hex1 : std_logic_vector(0 TO 6);
SIGNAL ww_hex0 : std_logic_vector(0 TO 6);
SIGNAL ww_d_r5 : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_d_r3 : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_d_r2 : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_d_in : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_ledr : std_logic_vector(8 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \p1|reg3|Q[7]~feeder_combout\ : std_logic;
SIGNAL \key0~input_o\ : std_logic;
SIGNAL \key0~inputCLKENA0_outclk\ : std_logic;
SIGNAL \p1|reg3|Q[8]~DUPLICATE_q\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \p1|fsm|DoutIn~0_combout\ : std_logic;
SIGNAL \p1|ff0|Q~q\ : std_logic;
SIGNAL \wr_en~combout\ : std_logic;
SIGNAL \p1|fsm|Mux28~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector0~0_combout\ : std_logic;
SIGNAL \sw9~input_o\ : std_logic;
SIGNAL \ff0|Q~feeder_combout\ : std_logic;
SIGNAL \ff0|Q~q\ : std_logic;
SIGNAL \p1|fsm|y_Q.T2~q\ : std_logic;
SIGNAL \p1|fsm|y_Q.T3~q\ : std_logic;
SIGNAL \p1|fsm|Selector0~1_combout\ : std_logic;
SIGNAL \p1|fsm|y_Q.T0~q\ : std_logic;
SIGNAL \p1|fsm|Selector10~0_combout\ : std_logic;
SIGNAL \p1|fsm|y_Q.TX~q\ : std_logic;
SIGNAL \p1|fsm|y_Q.TXX~q\ : std_logic;
SIGNAL \p1|fsm|y_Q.T1~q\ : std_logic;
SIGNAL \p1|ir0|Q[7]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|fsm|Ain~0_combout\ : std_logic;
SIGNAL \p1|addsub0|Add0~38_cout\ : std_logic;
SIGNAL \p1|addsub0|Add0~1_sumout\ : std_logic;
SIGNAL \p1|fsm|Gin~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector8~0_combout\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \p1|fsm|Selector9~0_combout\ : std_logic;
SIGNAL \p1|regAddr|Q[1]~feeder_combout\ : std_logic;
SIGNAL \p1|regA|Q[1]~feeder_combout\ : std_logic;
SIGNAL \p1|addsub0|Add0~2\ : std_logic;
SIGNAL \p1|addsub0|Add0~6\ : std_logic;
SIGNAL \p1|addsub0|Add0~9_sumout\ : std_logic;
SIGNAL \p1|reg3|Q[2]~feeder_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~13_combout\ : std_logic;
SIGNAL \p1|fsm|Selector5~1_combout\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \p1|reg3|Q[3]~feeder_combout\ : std_logic;
SIGNAL \p1|reg2|Q[3]~feeder_combout\ : std_logic;
SIGNAL \p1|fsm|Selector16~1_combout\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \p1|regA|Q[4]~feeder_combout\ : std_logic;
SIGNAL \p1|regA|Q[3]~feeder_combout\ : std_logic;
SIGNAL \p1|addsub0|Add0~10\ : std_logic;
SIGNAL \p1|addsub0|Add0~14\ : std_logic;
SIGNAL \p1|addsub0|Add0~17_sumout\ : std_logic;
SIGNAL \p1|reg3|Q[4]~feeder_combout\ : std_logic;
SIGNAL \p1|reg2|Q[4]~feeder_combout\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \p1|regAddr|Q[5]~feeder_combout\ : std_logic;
SIGNAL \p1|reg2|Q[6]~feeder_combout\ : std_logic;
SIGNAL \p1|reg3|Q[6]~feeder_combout\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \p1|regDout|Q[2]~feeder_combout\ : std_logic;
SIGNAL \p1|regDout|Q[3]~feeder_combout\ : std_logic;
SIGNAL \p1|regDout|Q[4]~feeder_combout\ : std_logic;
SIGNAL \p1|regDout|Q[5]~feeder_combout\ : std_logic;
SIGNAL \DIN[5]~5_combout\ : std_logic;
SIGNAL \p1|decX|Mux0~2_combout\ : std_logic;
SIGNAL \p1|fsm|Selector17~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector10~1_combout\ : std_logic;
SIGNAL \p1|pc0|Add0~1_sumout\ : std_logic;
SIGNAL \p1|decX|Mux0~7_combout\ : std_logic;
SIGNAL \p1|pc0|v[2]~0_combout\ : std_logic;
SIGNAL \p1|pc0|v[2]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|pc0|v[0]~1_combout\ : std_logic;
SIGNAL \p1|pc0|v[5]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|pc0|Add0~26\ : std_logic;
SIGNAL \p1|pc0|Add0~29_sumout\ : std_logic;
SIGNAL \p1|pc0|Add0~30\ : std_logic;
SIGNAL \p1|pc0|Add0~33_sumout\ : std_logic;
SIGNAL \p1|pc0|v[0]~2_combout\ : std_logic;
SIGNAL \p1|pc0|v[0]~3_combout\ : std_logic;
SIGNAL \p1|pc0|Add0~2\ : std_logic;
SIGNAL \p1|pc0|Add0~5_sumout\ : std_logic;
SIGNAL \p1|pc0|Add0~6\ : std_logic;
SIGNAL \p1|pc0|Add0~9_sumout\ : std_logic;
SIGNAL \p1|pc0|Add0~10\ : std_logic;
SIGNAL \p1|pc0|Add0~13_sumout\ : std_logic;
SIGNAL \p1|pc0|Add0~14\ : std_logic;
SIGNAL \p1|pc0|Add0~17_sumout\ : std_logic;
SIGNAL \p1|pc0|Add0~18\ : std_logic;
SIGNAL \p1|pc0|Add0~21_sumout\ : std_logic;
SIGNAL \p1|pc0|Add0~22\ : std_logic;
SIGNAL \p1|pc0|Add0~25_sumout\ : std_logic;
SIGNAL \p1|decX|Mux0~0_combout\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \DIN[2]~2_combout\ : std_logic;
SIGNAL \p1|fsm|Selector5~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector5~3_combout\ : std_logic;
SIGNAL \p1|fsm|Selector6~1_combout\ : std_logic;
SIGNAL \p1|fsm|Selector5~2_combout\ : std_logic;
SIGNAL \p1|fsm|Selector6~0_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~1_combout\ : std_logic;
SIGNAL \p1|reg5|Q[6]~feeder_combout\ : std_logic;
SIGNAL \p1|fsm|Selector15~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector7~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector7~1_combout\ : std_logic;
SIGNAL \p1|fsm|Selector7~2_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~0_combout\ : std_logic;
SIGNAL \p1|mux0|y[6]~32_combout\ : std_logic;
SIGNAL \p1|mux0|y[6]~33_combout\ : std_logic;
SIGNAL \p1|decX|Mux0~6_combout\ : std_logic;
SIGNAL \p1|fsm|Selector11~0_combout\ : std_logic;
SIGNAL \p1|addsub0|Add0~18\ : std_logic;
SIGNAL \p1|addsub0|Add0~22\ : std_logic;
SIGNAL \p1|addsub0|Add0~25_sumout\ : std_logic;
SIGNAL \p1|regG|Q[6]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|mux0|y[6]~34_combout\ : std_logic;
SIGNAL \DIN[3]~3_combout\ : std_logic;
SIGNAL \p1|decX|Mux0~1_combout\ : std_logic;
SIGNAL \p1|fsm|Selector16~2_combout\ : std_logic;
SIGNAL \p1|reg6|Q[4]~feeder_combout\ : std_logic;
SIGNAL \p1|mux0|y[4]~26_combout\ : std_logic;
SIGNAL \p1|mux0|y[4]~27_combout\ : std_logic;
SIGNAL \p1|mux0|y[4]~28_combout\ : std_logic;
SIGNAL \p1|regAddr|Q[4]~feeder_combout\ : std_logic;
SIGNAL \DIN[4]~4_combout\ : std_logic;
SIGNAL \p1|decX|Mux0~5_combout\ : std_logic;
SIGNAL \p1|fsm|Selector12~0_combout\ : std_logic;
SIGNAL \p1|reg5|Q[3]~feeder_combout\ : std_logic;
SIGNAL \p1|reg6|Q[3]~feeder_combout\ : std_logic;
SIGNAL \p1|mux0|y[3]~23_combout\ : std_logic;
SIGNAL \p1|mux0|y[3]~24_combout\ : std_logic;
SIGNAL \p1|addsub0|Add0~13_sumout\ : std_logic;
SIGNAL \p1|regG|Q[3]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|mux0|y[3]~25_combout\ : std_logic;
SIGNAL \p1|regAddr|Q[3]~feeder_combout\ : std_logic;
SIGNAL \DIN[0]~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector2~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector2~1_combout\ : std_logic;
SIGNAL \p1|fsm|Selector2~2_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~6_combout\ : std_logic;
SIGNAL \p1|dexY|Mux0~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector8~1_combout\ : std_logic;
SIGNAL \p1|fsm|Mux7~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector8~2_combout\ : std_logic;
SIGNAL \p1|fsm|Selector5~4_combout\ : std_logic;
SIGNAL \p1|fsm|Selector4~0_combout\ : std_logic;
SIGNAL \p1|decX|Mux0~4_combout\ : std_logic;
SIGNAL \p1|fsm|Selector4~2_combout\ : std_logic;
SIGNAL \p1|fsm|Selector4~3_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~7_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~8_combout\ : std_logic;
SIGNAL \p1|fsm|Selector1~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector1~1_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~9_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~10_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~11_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~15_combout\ : std_logic;
SIGNAL \p1|reg2|Q[5]~feeder_combout\ : std_logic;
SIGNAL \p1|reg3|Q[5]~feeder_combout\ : std_logic;
SIGNAL \p1|reg5|Q[5]~feeder_combout\ : std_logic;
SIGNAL \p1|mux0|y[5]~29_combout\ : std_logic;
SIGNAL \p1|mux0|y[5]~30_combout\ : std_logic;
SIGNAL \p1|regG|Q[5]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|mux0|y[5]~31_combout\ : std_logic;
SIGNAL \p1|regA|Q[5]~feeder_combout\ : std_logic;
SIGNAL \p1|addsub0|Add0~21_sumout\ : std_logic;
SIGNAL \p1|addsub0|Add0~5_sumout\ : std_logic;
SIGNAL \p1|fsm|Equal0~0_combout\ : std_logic;
SIGNAL \p1|fsm|Mux3~0_combout\ : std_logic;
SIGNAL \p1|decX|Mux0~3_combout\ : std_logic;
SIGNAL \p1|fsm|Selector3~1_combout\ : std_logic;
SIGNAL \p1|fsm|Selector4~1_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~3_combout\ : std_logic;
SIGNAL \p1|reg5|Q[2]~feeder_combout\ : std_logic;
SIGNAL \p1|mux0|y[2]~20_combout\ : std_logic;
SIGNAL \p1|mux0|y[2]~21_combout\ : std_logic;
SIGNAL \p1|mux0|y[2]~22_combout\ : std_logic;
SIGNAL \p1|regAddr|Q[2]~DUPLICATE_q\ : std_logic;
SIGNAL \DIN[1]~1_combout\ : std_logic;
SIGNAL \p1|fsm|Selector3~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector3~2_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~4_combout\ : std_logic;
SIGNAL \p1|reg6|Q[0]~feeder_combout\ : std_logic;
SIGNAL \p1|mux0|y[0]~2_combout\ : std_logic;
SIGNAL \p1|mux0|y[0]~5_combout\ : std_logic;
SIGNAL \p1|mux0|y[0]~16_combout\ : std_logic;
SIGNAL \DIN[7]~7_combout\ : std_logic;
SIGNAL \p1|fsm|y_D.T2~0_combout\ : std_logic;
SIGNAL \p1|fsm|y_Q.T2~DUPLICATE_q\ : std_logic;
SIGNAL \p1|regA|Q[8]~feeder_combout\ : std_logic;
SIGNAL \p1|addsub0|Add0~26\ : std_logic;
SIGNAL \p1|addsub0|Add0~30\ : std_logic;
SIGNAL \p1|addsub0|Add0~33_sumout\ : std_logic;
SIGNAL \p1|addsub0|Add0~29_sumout\ : std_logic;
SIGNAL \p1|fsm|Equal0~1_combout\ : std_logic;
SIGNAL \p1|fsm|Mux15~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector13~0_combout\ : std_logic;
SIGNAL \p1|reg6|Q[8]~feeder_combout\ : std_logic;
SIGNAL \p1|reg5|Q[8]~feeder_combout\ : std_logic;
SIGNAL \p1|mux0|y[8]~38_combout\ : std_logic;
SIGNAL \p1|mux0|y[8]~39_combout\ : std_logic;
SIGNAL \p1|regG|Q[8]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|mux0|y[8]~40_combout\ : std_logic;
SIGNAL \p1|regAddr|Q[8]~feeder_combout\ : std_logic;
SIGNAL \p1|regAddr|Q[8]~DUPLICATE_q\ : std_logic;
SIGNAL \sw[8]~input_o\ : std_logic;
SIGNAL \DIN[8]~8_combout\ : std_logic;
SIGNAL \p1|fsm|Selector16~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector14~0_combout\ : std_logic;
SIGNAL \p1|reg6|Q[7]~feeder_combout\ : std_logic;
SIGNAL \p1|mux0|y[7]~35_combout\ : std_logic;
SIGNAL \p1|mux0|y[7]~36_combout\ : std_logic;
SIGNAL \p1|regG|Q[7]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|mux0|y[7]~37_combout\ : std_logic;
SIGNAL \p1|regAddr|Q[7]~feeder_combout\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \DIN[6]~6_combout\ : std_logic;
SIGNAL \p1|fsm|Dout~0_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~12_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~14_combout\ : std_logic;
SIGNAL \p1|reg3|Q[1]~feeder_combout\ : std_logic;
SIGNAL \p1|reg2|Q[1]~feeder_combout\ : std_logic;
SIGNAL \p1|reg5|Q[1]~feeder_combout\ : std_logic;
SIGNAL \p1|reg6|Q[1]~feeder_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~17_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~18_combout\ : std_logic;
SIGNAL \p1|regG|Q[1]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|mux0|y[1]~19_combout\ : std_logic;
SIGNAL \u0|En[5]~0_combout\ : std_logic;
SIGNAL \u0|s5|hex[6]~0_combout\ : std_logic;
SIGNAL \u0|s5|hex[5]~1_combout\ : std_logic;
SIGNAL \u0|s5|hex[4]~2_combout\ : std_logic;
SIGNAL \u0|s5|hex[3]~3_combout\ : std_logic;
SIGNAL \u0|s5|hex[2]~4_combout\ : std_logic;
SIGNAL \u0|s5|hex[1]~5_combout\ : std_logic;
SIGNAL \u0|s5|hex[0]~6_combout\ : std_logic;
SIGNAL \u0|En[4]~1_combout\ : std_logic;
SIGNAL \u0|s4|hex[6]~0_combout\ : std_logic;
SIGNAL \u0|s4|hex[5]~1_combout\ : std_logic;
SIGNAL \u0|s4|hex[4]~2_combout\ : std_logic;
SIGNAL \u0|s4|hex[3]~3_combout\ : std_logic;
SIGNAL \u0|s4|hex[2]~4_combout\ : std_logic;
SIGNAL \u0|s4|hex[1]~5_combout\ : std_logic;
SIGNAL \u0|s4|hex[0]~6_combout\ : std_logic;
SIGNAL \u0|En[3]~2_combout\ : std_logic;
SIGNAL \u0|s3|hex[6]~0_combout\ : std_logic;
SIGNAL \u0|s3|hex[5]~1_combout\ : std_logic;
SIGNAL \u0|s3|hex[4]~2_combout\ : std_logic;
SIGNAL \u0|s3|hex[3]~3_combout\ : std_logic;
SIGNAL \u0|s3|hex[2]~4_combout\ : std_logic;
SIGNAL \u0|s3|hex[1]~5_combout\ : std_logic;
SIGNAL \u0|s3|hex[0]~6_combout\ : std_logic;
SIGNAL \u0|En[2]~3_combout\ : std_logic;
SIGNAL \u0|s2|hex[6]~0_combout\ : std_logic;
SIGNAL \u0|s2|hex[5]~1_combout\ : std_logic;
SIGNAL \u0|s2|hex[4]~2_combout\ : std_logic;
SIGNAL \u0|s2|hex[3]~3_combout\ : std_logic;
SIGNAL \u0|s2|hex[2]~4_combout\ : std_logic;
SIGNAL \u0|s2|hex[1]~5_combout\ : std_logic;
SIGNAL \u0|s2|hex[0]~6_combout\ : std_logic;
SIGNAL \u0|En[1]~4_combout\ : std_logic;
SIGNAL \u0|s1|hex[6]~0_combout\ : std_logic;
SIGNAL \u0|s1|hex[5]~1_combout\ : std_logic;
SIGNAL \u0|s1|hex[4]~2_combout\ : std_logic;
SIGNAL \u0|s1|hex[3]~3_combout\ : std_logic;
SIGNAL \u0|s1|hex[2]~4_combout\ : std_logic;
SIGNAL \u0|s1|hex[1]~5_combout\ : std_logic;
SIGNAL \u0|s1|hex[0]~6_combout\ : std_logic;
SIGNAL \u0|En[0]~5_combout\ : std_logic;
SIGNAL \u0|s0|hex[6]~0_combout\ : std_logic;
SIGNAL \u0|s0|hex[5]~1_combout\ : std_logic;
SIGNAL \u0|s0|hex[4]~2_combout\ : std_logic;
SIGNAL \u0|s0|hex[3]~3_combout\ : std_logic;
SIGNAL \u0|s0|hex[2]~4_combout\ : std_logic;
SIGNAL \u0|s0|hex[1]~5_combout\ : std_logic;
SIGNAL \u0|s0|hex[0]~6_combout\ : std_logic;
SIGNAL \p1|reg3|Q[4]~DUPLICATE_q\ : std_logic;
SIGNAL \leds0|Q[0]~feeder_combout\ : std_logic;
SIGNAL \led_en~combout\ : std_logic;
SIGNAL \leds0|Q[1]~feeder_combout\ : std_logic;
SIGNAL \leds0|Q[4]~feeder_combout\ : std_logic;
SIGNAL \leds0|Q[5]~feeder_combout\ : std_logic;
SIGNAL \leds0|Q[7]~feeder_combout\ : std_logic;
SIGNAL \leds0|Q[8]~feeder_combout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|q_a\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|pc0|v\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u0|r2|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \p1|regG|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u0|r1|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u0|r5|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u0|r4|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u0|r3|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u0|r0|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \p1|reg5|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg3|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg2|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u1|r0|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|regAddr|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \leds0|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|regDout|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg6|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg4|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|ir0|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg1|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg0|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|regA|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|pc0|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \p1|pc0|ALT_INV_v\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|regG|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ALT_INV_q_a\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg2|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg3|ALT_INV_Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \p1|reg5|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u0|r0|ALT_INV_Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u0|r1|ALT_INV_Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u0|r2|ALT_INV_Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u0|r3|ALT_INV_Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u0|r4|ALT_INV_Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u0|r5|ALT_INV_Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \p1|fsm|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~12_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Dout~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_y_Q.T3~q\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~11_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~10_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~9_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~8_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector8~2_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector8~1_combout\ : std_logic;
SIGNAL \p1|decX|ALT_INV_Mux0~7_combout\ : std_logic;
SIGNAL \p1|dexY|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_y_Q.T0~q\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector4~3_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~7_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector5~4_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~6_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector1~1_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \p1|decX|ALT_INV_Mux0~6_combout\ : std_logic;
SIGNAL \p1|reg0|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|mux0|ALT_INV_y[0]~5_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~4_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~3_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector2~2_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector2~1_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \p1|decX|ALT_INV_Mux0~5_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector4~2_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector4~1_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector4~0_combout\ : std_logic;
SIGNAL \p1|decX|ALT_INV_Mux0~4_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector3~2_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector3~1_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \p1|decX|ALT_INV_Mux0~3_combout\ : std_logic;
SIGNAL \p1|reg1|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|mux0|ALT_INV_y[0]~2_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~1_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector7~2_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector7~1_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector7~0_combout\ : std_logic;
SIGNAL \p1|decX|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector6~1_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector6~0_combout\ : std_logic;
SIGNAL \p1|decX|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector5~3_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector8~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector5~2_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector5~1_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_y_Q.T1~q\ : std_logic;
SIGNAL \p1|ir0|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|fsm|ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \p1|decX|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \p1|reg4|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg6|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|regDout|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|regAddr|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|ff0|ALT_INV_Q~q\ : std_logic;
SIGNAL \ALT_INV_DIN[8]~8_combout\ : std_logic;
SIGNAL \u1|r0|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_DIN[7]~7_combout\ : std_logic;
SIGNAL \ALT_INV_DIN[6]~6_combout\ : std_logic;
SIGNAL \ALT_INV_DIN[5]~5_combout\ : std_logic;
SIGNAL \ALT_INV_DIN[4]~4_combout\ : std_logic;
SIGNAL \ALT_INV_DIN[3]~3_combout\ : std_logic;
SIGNAL \ALT_INV_DIN[2]~2_combout\ : std_logic;
SIGNAL \ALT_INV_DIN[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_DIN[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_sw9~input_o\ : std_logic;
SIGNAL \p1|regA|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|fsm|ALT_INV_Mux28~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \p1|pc0|ALT_INV_v[0]~2_combout\ : std_logic;
SIGNAL \p1|pc0|ALT_INV_v[0]~1_combout\ : std_logic;
SIGNAL \p1|pc0|ALT_INV_v[2]~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector10~1_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector10~0_combout\ : std_logic;
SIGNAL \ff0|ALT_INV_Q~q\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[8]~40_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[8]~39_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[8]~38_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[7]~37_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[7]~36_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[7]~35_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[6]~34_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[6]~33_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[6]~32_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[5]~31_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[5]~30_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[5]~29_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[4]~28_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[4]~27_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[4]~26_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[3]~25_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[3]~24_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[3]~23_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[2]~22_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[2]~21_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[2]~20_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~19_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~18_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~17_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector16~1_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector16~0_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[0]~16_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~15_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~14_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~13_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_y_Q.T2~DUPLICATE_q\ : std_logic;
SIGNAL \p1|ir0|ALT_INV_Q[7]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|regAddr|ALT_INV_Q[2]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|regAddr|ALT_INV_Q[8]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|reg3|ALT_INV_Q[8]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|pc0|ALT_INV_v[5]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|pc0|ALT_INV_v[2]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|regG|ALT_INV_Q[8]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|regG|ALT_INV_Q[7]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|regG|ALT_INV_Q[6]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|regG|ALT_INV_Q[5]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|regG|ALT_INV_Q[3]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|regG|ALT_INV_Q[1]~DUPLICATE_q\ : std_logic;

BEGIN

ww_sw9 <= sw9;
ww_key0 <= key0;
ww_clk <= clk;
ww_sw <= sw;
hex5 <= ww_hex5;
hex4 <= ww_hex4;
hex3 <= ww_hex3;
hex2 <= ww_hex2;
hex1 <= ww_hex1;
hex0 <= ww_hex0;
d_r5 <= ww_d_r5;
d_r3 <= ww_d_r3;
d_r2 <= ww_d_r2;
d_in <= ww_d_in;
ledr <= ww_ledr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\m0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \p1|regDout|Q\(8) & \p1|regDout|Q\(7) & \p1|regDout|Q\(6) & \p1|regDout|Q\(5) & \p1|regDout|Q\(4) & 
\p1|regDout|Q\(3) & \p1|regDout|Q\(2) & \p1|regDout|Q\(1) & \p1|regDout|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\p1|regAddr|Q\(6) & \p1|regAddr|Q\(5) & \p1|regAddr|Q\(4) & \p1|regAddr|Q\(3) & \p1|regAddr|Q[2]~DUPLICATE_q\ & \p1|regAddr|Q\(1) & \p1|regAddr|Q\(0));

\m0|altsyncram_component|auto_generated|q_a\(0) <= \m0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\m0|altsyncram_component|auto_generated|q_a\(1) <= \m0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\m0|altsyncram_component|auto_generated|q_a\(2) <= \m0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\m0|altsyncram_component|auto_generated|q_a\(3) <= \m0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\m0|altsyncram_component|auto_generated|q_a\(4) <= \m0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\m0|altsyncram_component|auto_generated|q_a\(5) <= \m0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\m0|altsyncram_component|auto_generated|q_a\(6) <= \m0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\m0|altsyncram_component|auto_generated|q_a\(7) <= \m0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\m0|altsyncram_component|auto_generated|q_a\(8) <= \m0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\p1|pc0|ALT_INV_Add0~1_sumout\ <= NOT \p1|pc0|Add0~1_sumout\;
\p1|pc0|ALT_INV_v\(8) <= NOT \p1|pc0|v\(8);
\p1|pc0|ALT_INV_v\(7) <= NOT \p1|pc0|v\(7);
\p1|pc0|ALT_INV_v\(6) <= NOT \p1|pc0|v\(6);
\p1|pc0|ALT_INV_v\(5) <= NOT \p1|pc0|v\(5);
\p1|pc0|ALT_INV_v\(4) <= NOT \p1|pc0|v\(4);
\p1|pc0|ALT_INV_v\(3) <= NOT \p1|pc0|v\(3);
\p1|pc0|ALT_INV_v\(2) <= NOT \p1|pc0|v\(2);
\p1|pc0|ALT_INV_v\(1) <= NOT \p1|pc0|v\(1);
\p1|regG|ALT_INV_Q\(8) <= NOT \p1|regG|Q\(8);
\p1|regG|ALT_INV_Q\(7) <= NOT \p1|regG|Q\(7);
\p1|regG|ALT_INV_Q\(6) <= NOT \p1|regG|Q\(6);
\p1|regG|ALT_INV_Q\(5) <= NOT \p1|regG|Q\(5);
\p1|regG|ALT_INV_Q\(4) <= NOT \p1|regG|Q\(4);
\p1|regG|ALT_INV_Q\(3) <= NOT \p1|regG|Q\(3);
\p1|regG|ALT_INV_Q\(2) <= NOT \p1|regG|Q\(2);
\p1|regG|ALT_INV_Q\(1) <= NOT \p1|regG|Q\(1);
\p1|regG|ALT_INV_Q\(0) <= NOT \p1|regG|Q\(0);
\m0|altsyncram_component|auto_generated|ALT_INV_q_a\(1) <= NOT \m0|altsyncram_component|auto_generated|q_a\(1);
\m0|altsyncram_component|auto_generated|ALT_INV_q_a\(2) <= NOT \m0|altsyncram_component|auto_generated|q_a\(2);
\m0|altsyncram_component|auto_generated|ALT_INV_q_a\(3) <= NOT \m0|altsyncram_component|auto_generated|q_a\(3);
\m0|altsyncram_component|auto_generated|ALT_INV_q_a\(4) <= NOT \m0|altsyncram_component|auto_generated|q_a\(4);
\m0|altsyncram_component|auto_generated|ALT_INV_q_a\(5) <= NOT \m0|altsyncram_component|auto_generated|q_a\(5);
\m0|altsyncram_component|auto_generated|ALT_INV_q_a\(6) <= NOT \m0|altsyncram_component|auto_generated|q_a\(6);
\m0|altsyncram_component|auto_generated|ALT_INV_q_a\(7) <= NOT \m0|altsyncram_component|auto_generated|q_a\(7);
\m0|altsyncram_component|auto_generated|ALT_INV_q_a\(8) <= NOT \m0|altsyncram_component|auto_generated|q_a\(8);
\m0|altsyncram_component|auto_generated|ALT_INV_q_a\(0) <= NOT \m0|altsyncram_component|auto_generated|q_a\(0);
\p1|reg2|ALT_INV_Q\(2) <= NOT \p1|reg2|Q\(2);
\p1|reg2|ALT_INV_Q\(1) <= NOT \p1|reg2|Q\(1);
\p1|reg2|ALT_INV_Q\(0) <= NOT \p1|reg2|Q\(0);
\p1|reg3|ALT_INV_Q\(7) <= NOT \p1|reg3|Q\(7);
\p1|reg3|ALT_INV_Q\(6) <= NOT \p1|reg3|Q\(6);
\p1|reg3|ALT_INV_Q\(5) <= NOT \p1|reg3|Q\(5);
\p1|reg3|ALT_INV_Q\(4) <= NOT \p1|reg3|Q\(4);
\p1|reg3|ALT_INV_Q\(3) <= NOT \p1|reg3|Q\(3);
\p1|reg3|ALT_INV_Q\(2) <= NOT \p1|reg3|Q\(2);
\p1|reg3|ALT_INV_Q\(1) <= NOT \p1|reg3|Q\(1);
\p1|reg3|ALT_INV_Q\(0) <= NOT \p1|reg3|Q\(0);
\p1|reg5|ALT_INV_Q\(8) <= NOT \p1|reg5|Q\(8);
\p1|reg5|ALT_INV_Q\(7) <= NOT \p1|reg5|Q\(7);
\p1|reg5|ALT_INV_Q\(6) <= NOT \p1|reg5|Q\(6);
\p1|reg5|ALT_INV_Q\(5) <= NOT \p1|reg5|Q\(5);
\p1|reg5|ALT_INV_Q\(4) <= NOT \p1|reg5|Q\(4);
\p1|reg5|ALT_INV_Q\(3) <= NOT \p1|reg5|Q\(3);
\p1|reg5|ALT_INV_Q\(2) <= NOT \p1|reg5|Q\(2);
\p1|reg5|ALT_INV_Q\(1) <= NOT \p1|reg5|Q\(1);
\p1|reg5|ALT_INV_Q\(0) <= NOT \p1|reg5|Q\(0);
\u0|r0|ALT_INV_Q\(0) <= NOT \u0|r0|Q\(0);
\u0|r0|ALT_INV_Q\(1) <= NOT \u0|r0|Q\(1);
\u0|r0|ALT_INV_Q\(2) <= NOT \u0|r0|Q\(2);
\u0|r0|ALT_INV_Q\(3) <= NOT \u0|r0|Q\(3);
\u0|r1|ALT_INV_Q\(0) <= NOT \u0|r1|Q\(0);
\u0|r1|ALT_INV_Q\(1) <= NOT \u0|r1|Q\(1);
\u0|r1|ALT_INV_Q\(2) <= NOT \u0|r1|Q\(2);
\u0|r1|ALT_INV_Q\(3) <= NOT \u0|r1|Q\(3);
\u0|r2|ALT_INV_Q\(0) <= NOT \u0|r2|Q\(0);
\u0|r2|ALT_INV_Q\(1) <= NOT \u0|r2|Q\(1);
\u0|r2|ALT_INV_Q\(2) <= NOT \u0|r2|Q\(2);
\u0|r2|ALT_INV_Q\(3) <= NOT \u0|r2|Q\(3);
\u0|r3|ALT_INV_Q\(0) <= NOT \u0|r3|Q\(0);
\u0|r3|ALT_INV_Q\(1) <= NOT \u0|r3|Q\(1);
\u0|r3|ALT_INV_Q\(2) <= NOT \u0|r3|Q\(2);
\u0|r3|ALT_INV_Q\(3) <= NOT \u0|r3|Q\(3);
\u0|r4|ALT_INV_Q\(0) <= NOT \u0|r4|Q\(0);
\u0|r4|ALT_INV_Q\(1) <= NOT \u0|r4|Q\(1);
\u0|r4|ALT_INV_Q\(2) <= NOT \u0|r4|Q\(2);
\u0|r4|ALT_INV_Q\(3) <= NOT \u0|r4|Q\(3);
\u0|r5|ALT_INV_Q\(0) <= NOT \u0|r5|Q\(0);
\u0|r5|ALT_INV_Q\(1) <= NOT \u0|r5|Q\(1);
\u0|r5|ALT_INV_Q\(2) <= NOT \u0|r5|Q\(2);
\u0|r5|ALT_INV_Q\(3) <= NOT \u0|r5|Q\(3);
\p1|fsm|ALT_INV_Mux7~0_combout\ <= NOT \p1|fsm|Mux7~0_combout\;
\p1|mux0|ALT_INV_y[1]~12_combout\ <= NOT \p1|mux0|y[1]~12_combout\;
\p1|fsm|ALT_INV_Dout~0_combout\ <= NOT \p1|fsm|Dout~0_combout\;
\p1|fsm|ALT_INV_y_Q.T3~q\ <= NOT \p1|fsm|y_Q.T3~q\;
\p1|mux0|ALT_INV_y[1]~11_combout\ <= NOT \p1|mux0|y[1]~11_combout\;
\p1|mux0|ALT_INV_y[1]~10_combout\ <= NOT \p1|mux0|y[1]~10_combout\;
\p1|mux0|ALT_INV_y[1]~9_combout\ <= NOT \p1|mux0|y[1]~9_combout\;
\p1|mux0|ALT_INV_y[1]~8_combout\ <= NOT \p1|mux0|y[1]~8_combout\;
\p1|fsm|ALT_INV_Selector8~2_combout\ <= NOT \p1|fsm|Selector8~2_combout\;
\p1|fsm|ALT_INV_Selector8~1_combout\ <= NOT \p1|fsm|Selector8~1_combout\;
\p1|decX|ALT_INV_Mux0~7_combout\ <= NOT \p1|decX|Mux0~7_combout\;
\p1|dexY|ALT_INV_Mux0~0_combout\ <= NOT \p1|dexY|Mux0~0_combout\;
\p1|fsm|ALT_INV_y_Q.T0~q\ <= NOT \p1|fsm|y_Q.T0~q\;
\p1|fsm|ALT_INV_Selector4~3_combout\ <= NOT \p1|fsm|Selector4~3_combout\;
\p1|mux0|ALT_INV_y[1]~7_combout\ <= NOT \p1|mux0|y[1]~7_combout\;
\p1|fsm|ALT_INV_Selector5~4_combout\ <= NOT \p1|fsm|Selector5~4_combout\;
\p1|mux0|ALT_INV_y[1]~6_combout\ <= NOT \p1|mux0|y[1]~6_combout\;
\p1|fsm|ALT_INV_Selector1~1_combout\ <= NOT \p1|fsm|Selector1~1_combout\;
\p1|fsm|ALT_INV_Selector1~0_combout\ <= NOT \p1|fsm|Selector1~0_combout\;
\p1|decX|ALT_INV_Mux0~6_combout\ <= NOT \p1|decX|Mux0~6_combout\;
\p1|reg0|ALT_INV_Q\(0) <= NOT \p1|reg0|Q\(0);
\p1|mux0|ALT_INV_y[0]~5_combout\ <= NOT \p1|mux0|y[0]~5_combout\;
\p1|mux0|ALT_INV_y[1]~4_combout\ <= NOT \p1|mux0|y[1]~4_combout\;
\p1|mux0|ALT_INV_y[1]~3_combout\ <= NOT \p1|mux0|y[1]~3_combout\;
\p1|fsm|ALT_INV_Selector2~2_combout\ <= NOT \p1|fsm|Selector2~2_combout\;
\p1|fsm|ALT_INV_Selector2~1_combout\ <= NOT \p1|fsm|Selector2~1_combout\;
\p1|fsm|ALT_INV_Selector2~0_combout\ <= NOT \p1|fsm|Selector2~0_combout\;
\p1|decX|ALT_INV_Mux0~5_combout\ <= NOT \p1|decX|Mux0~5_combout\;
\p1|fsm|ALT_INV_Selector4~2_combout\ <= NOT \p1|fsm|Selector4~2_combout\;
\p1|fsm|ALT_INV_Selector4~1_combout\ <= NOT \p1|fsm|Selector4~1_combout\;
\p1|fsm|ALT_INV_Selector4~0_combout\ <= NOT \p1|fsm|Selector4~0_combout\;
\p1|decX|ALT_INV_Mux0~4_combout\ <= NOT \p1|decX|Mux0~4_combout\;
\p1|fsm|ALT_INV_Selector3~2_combout\ <= NOT \p1|fsm|Selector3~2_combout\;
\p1|fsm|ALT_INV_Selector3~1_combout\ <= NOT \p1|fsm|Selector3~1_combout\;
\p1|fsm|ALT_INV_Selector3~0_combout\ <= NOT \p1|fsm|Selector3~0_combout\;
\p1|decX|ALT_INV_Mux0~3_combout\ <= NOT \p1|decX|Mux0~3_combout\;
\p1|reg1|ALT_INV_Q\(0) <= NOT \p1|reg1|Q\(0);
\p1|mux0|ALT_INV_y[0]~2_combout\ <= NOT \p1|mux0|y[0]~2_combout\;
\p1|mux0|ALT_INV_y[1]~1_combout\ <= NOT \p1|mux0|y[1]~1_combout\;
\p1|mux0|ALT_INV_y[1]~0_combout\ <= NOT \p1|mux0|y[1]~0_combout\;
\p1|fsm|ALT_INV_Selector7~2_combout\ <= NOT \p1|fsm|Selector7~2_combout\;
\p1|fsm|ALT_INV_Selector7~1_combout\ <= NOT \p1|fsm|Selector7~1_combout\;
\p1|fsm|ALT_INV_Selector7~0_combout\ <= NOT \p1|fsm|Selector7~0_combout\;
\p1|decX|ALT_INV_Mux0~2_combout\ <= NOT \p1|decX|Mux0~2_combout\;
\p1|fsm|ALT_INV_Selector6~1_combout\ <= NOT \p1|fsm|Selector6~1_combout\;
\p1|fsm|ALT_INV_Selector6~0_combout\ <= NOT \p1|fsm|Selector6~0_combout\;
\p1|decX|ALT_INV_Mux0~1_combout\ <= NOT \p1|decX|Mux0~1_combout\;
\p1|fsm|ALT_INV_Selector5~3_combout\ <= NOT \p1|fsm|Selector5~3_combout\;
\p1|fsm|ALT_INV_Selector8~0_combout\ <= NOT \p1|fsm|Selector8~0_combout\;
\p1|fsm|ALT_INV_Selector5~2_combout\ <= NOT \p1|fsm|Selector5~2_combout\;
\p1|fsm|ALT_INV_Selector5~1_combout\ <= NOT \p1|fsm|Selector5~1_combout\;
\p1|fsm|ALT_INV_y_Q.T1~q\ <= NOT \p1|fsm|y_Q.T1~q\;
\p1|ir0|ALT_INV_Q\(0) <= NOT \p1|ir0|Q\(0);
\p1|fsm|ALT_INV_Selector5~0_combout\ <= NOT \p1|fsm|Selector5~0_combout\;
\p1|ir0|ALT_INV_Q\(1) <= NOT \p1|ir0|Q\(1);
\p1|ir0|ALT_INV_Q\(2) <= NOT \p1|ir0|Q\(2);
\p1|fsm|ALT_INV_Mux3~0_combout\ <= NOT \p1|fsm|Mux3~0_combout\;
\p1|ir0|ALT_INV_Q\(7) <= NOT \p1|ir0|Q\(7);
\p1|fsm|ALT_INV_Equal0~1_combout\ <= NOT \p1|fsm|Equal0~1_combout\;
\p1|fsm|ALT_INV_Equal0~0_combout\ <= NOT \p1|fsm|Equal0~0_combout\;
\p1|ir0|ALT_INV_Q\(6) <= NOT \p1|ir0|Q\(6);
\p1|ir0|ALT_INV_Q\(8) <= NOT \p1|ir0|Q\(8);
\p1|decX|ALT_INV_Mux0~0_combout\ <= NOT \p1|decX|Mux0~0_combout\;
\p1|ir0|ALT_INV_Q\(4) <= NOT \p1|ir0|Q\(4);
\p1|ir0|ALT_INV_Q\(5) <= NOT \p1|ir0|Q\(5);
\p1|ir0|ALT_INV_Q\(3) <= NOT \p1|ir0|Q\(3);
\p1|reg4|ALT_INV_Q\(0) <= NOT \p1|reg4|Q\(0);
\p1|reg6|ALT_INV_Q\(0) <= NOT \p1|reg6|Q\(0);
\p1|pc0|ALT_INV_v\(0) <= NOT \p1|pc0|v\(0);
\p1|regDout|ALT_INV_Q\(0) <= NOT \p1|regDout|Q\(0);
\p1|regDout|ALT_INV_Q\(1) <= NOT \p1|regDout|Q\(1);
\p1|regAddr|ALT_INV_Q\(1) <= NOT \p1|regAddr|Q\(1);
\p1|ff0|ALT_INV_Q~q\ <= NOT \p1|ff0|Q~q\;
\p1|regAddr|ALT_INV_Q\(2) <= NOT \p1|regAddr|Q\(2);
\p1|regAddr|ALT_INV_Q\(0) <= NOT \p1|regAddr|Q\(0);
\ALT_INV_DIN[8]~8_combout\ <= NOT \DIN[8]~8_combout\;
\u1|r0|ALT_INV_Q\(8) <= NOT \u1|r0|Q\(8);
\ALT_INV_DIN[7]~7_combout\ <= NOT \DIN[7]~7_combout\;
\u1|r0|ALT_INV_Q\(7) <= NOT \u1|r0|Q\(7);
\ALT_INV_DIN[6]~6_combout\ <= NOT \DIN[6]~6_combout\;
\u1|r0|ALT_INV_Q\(6) <= NOT \u1|r0|Q\(6);
\ALT_INV_DIN[5]~5_combout\ <= NOT \DIN[5]~5_combout\;
\u1|r0|ALT_INV_Q\(5) <= NOT \u1|r0|Q\(5);
\ALT_INV_DIN[4]~4_combout\ <= NOT \DIN[4]~4_combout\;
\u1|r0|ALT_INV_Q\(4) <= NOT \u1|r0|Q\(4);
\ALT_INV_DIN[3]~3_combout\ <= NOT \DIN[3]~3_combout\;
\u1|r0|ALT_INV_Q\(3) <= NOT \u1|r0|Q\(3);
\ALT_INV_DIN[2]~2_combout\ <= NOT \DIN[2]~2_combout\;
\u1|r0|ALT_INV_Q\(2) <= NOT \u1|r0|Q\(2);
\ALT_INV_DIN[1]~1_combout\ <= NOT \DIN[1]~1_combout\;
\u1|r0|ALT_INV_Q\(1) <= NOT \u1|r0|Q\(1);
\ALT_INV_DIN[0]~0_combout\ <= NOT \DIN[0]~0_combout\;
\p1|regAddr|ALT_INV_Q\(7) <= NOT \p1|regAddr|Q\(7);
\p1|regAddr|ALT_INV_Q\(8) <= NOT \p1|regAddr|Q\(8);
\u1|r0|ALT_INV_Q\(0) <= NOT \u1|r0|Q\(0);
\p1|reg2|ALT_INV_Q\(8) <= NOT \p1|reg2|Q\(8);
\p1|reg2|ALT_INV_Q\(7) <= NOT \p1|reg2|Q\(7);
\p1|reg2|ALT_INV_Q\(6) <= NOT \p1|reg2|Q\(6);
\p1|reg2|ALT_INV_Q\(5) <= NOT \p1|reg2|Q\(5);
\p1|reg2|ALT_INV_Q\(4) <= NOT \p1|reg2|Q\(4);
\p1|reg2|ALT_INV_Q\(3) <= NOT \p1|reg2|Q\(3);
\ALT_INV_sw9~input_o\ <= NOT \sw9~input_o\;
\p1|regA|ALT_INV_Q\(8) <= NOT \p1|regA|Q\(8);
\p1|regA|ALT_INV_Q\(7) <= NOT \p1|regA|Q\(7);
\p1|regA|ALT_INV_Q\(6) <= NOT \p1|regA|Q\(6);
\p1|regA|ALT_INV_Q\(5) <= NOT \p1|regA|Q\(5);
\p1|regA|ALT_INV_Q\(4) <= NOT \p1|regA|Q\(4);
\p1|regA|ALT_INV_Q\(3) <= NOT \p1|regA|Q\(3);
\p1|regA|ALT_INV_Q\(2) <= NOT \p1|regA|Q\(2);
\p1|regA|ALT_INV_Q\(1) <= NOT \p1|regA|Q\(1);
\p1|regA|ALT_INV_Q\(0) <= NOT \p1|regA|Q\(0);
\p1|fsm|ALT_INV_Mux28~0_combout\ <= NOT \p1|fsm|Mux28~0_combout\;
\p1|fsm|ALT_INV_Selector0~0_combout\ <= NOT \p1|fsm|Selector0~0_combout\;
\p1|pc0|ALT_INV_v[0]~2_combout\ <= NOT \p1|pc0|v[0]~2_combout\;
\p1|pc0|ALT_INV_v[0]~1_combout\ <= NOT \p1|pc0|v[0]~1_combout\;
\p1|pc0|ALT_INV_v[2]~0_combout\ <= NOT \p1|pc0|v[2]~0_combout\;
\p1|fsm|ALT_INV_Selector10~1_combout\ <= NOT \p1|fsm|Selector10~1_combout\;
\p1|fsm|ALT_INV_Selector10~0_combout\ <= NOT \p1|fsm|Selector10~0_combout\;
\ff0|ALT_INV_Q~q\ <= NOT \ff0|Q~q\;
\p1|regDout|ALT_INV_Q\(8) <= NOT \p1|regDout|Q\(8);
\p1|regDout|ALT_INV_Q\(7) <= NOT \p1|regDout|Q\(7);
\p1|regDout|ALT_INV_Q\(5) <= NOT \p1|regDout|Q\(5);
\p1|regDout|ALT_INV_Q\(4) <= NOT \p1|regDout|Q\(4);
\p1|mux0|ALT_INV_y[8]~40_combout\ <= NOT \p1|mux0|y[8]~40_combout\;
\p1|reg0|ALT_INV_Q\(8) <= NOT \p1|reg0|Q\(8);
\p1|mux0|ALT_INV_y[8]~39_combout\ <= NOT \p1|mux0|y[8]~39_combout\;
\p1|reg1|ALT_INV_Q\(8) <= NOT \p1|reg1|Q\(8);
\p1|mux0|ALT_INV_y[8]~38_combout\ <= NOT \p1|mux0|y[8]~38_combout\;
\p1|reg4|ALT_INV_Q\(8) <= NOT \p1|reg4|Q\(8);
\p1|reg6|ALT_INV_Q\(8) <= NOT \p1|reg6|Q\(8);
\p1|mux0|ALT_INV_y[7]~37_combout\ <= NOT \p1|mux0|y[7]~37_combout\;
\p1|reg0|ALT_INV_Q\(7) <= NOT \p1|reg0|Q\(7);
\p1|mux0|ALT_INV_y[7]~36_combout\ <= NOT \p1|mux0|y[7]~36_combout\;
\p1|reg1|ALT_INV_Q\(7) <= NOT \p1|reg1|Q\(7);
\p1|mux0|ALT_INV_y[7]~35_combout\ <= NOT \p1|mux0|y[7]~35_combout\;
\p1|reg4|ALT_INV_Q\(7) <= NOT \p1|reg4|Q\(7);
\p1|reg6|ALT_INV_Q\(7) <= NOT \p1|reg6|Q\(7);
\p1|mux0|ALT_INV_y[6]~34_combout\ <= NOT \p1|mux0|y[6]~34_combout\;
\p1|reg0|ALT_INV_Q\(6) <= NOT \p1|reg0|Q\(6);
\p1|mux0|ALT_INV_y[6]~33_combout\ <= NOT \p1|mux0|y[6]~33_combout\;
\p1|reg1|ALT_INV_Q\(6) <= NOT \p1|reg1|Q\(6);
\p1|mux0|ALT_INV_y[6]~32_combout\ <= NOT \p1|mux0|y[6]~32_combout\;
\p1|reg4|ALT_INV_Q\(6) <= NOT \p1|reg4|Q\(6);
\p1|reg6|ALT_INV_Q\(6) <= NOT \p1|reg6|Q\(6);
\p1|mux0|ALT_INV_y[5]~31_combout\ <= NOT \p1|mux0|y[5]~31_combout\;
\p1|reg0|ALT_INV_Q\(5) <= NOT \p1|reg0|Q\(5);
\p1|mux0|ALT_INV_y[5]~30_combout\ <= NOT \p1|mux0|y[5]~30_combout\;
\p1|reg1|ALT_INV_Q\(5) <= NOT \p1|reg1|Q\(5);
\p1|mux0|ALT_INV_y[5]~29_combout\ <= NOT \p1|mux0|y[5]~29_combout\;
\p1|reg4|ALT_INV_Q\(5) <= NOT \p1|reg4|Q\(5);
\p1|reg6|ALT_INV_Q\(5) <= NOT \p1|reg6|Q\(5);
\p1|mux0|ALT_INV_y[4]~28_combout\ <= NOT \p1|mux0|y[4]~28_combout\;
\p1|reg0|ALT_INV_Q\(4) <= NOT \p1|reg0|Q\(4);
\p1|mux0|ALT_INV_y[4]~27_combout\ <= NOT \p1|mux0|y[4]~27_combout\;
\p1|reg1|ALT_INV_Q\(4) <= NOT \p1|reg1|Q\(4);
\p1|mux0|ALT_INV_y[4]~26_combout\ <= NOT \p1|mux0|y[4]~26_combout\;
\p1|reg4|ALT_INV_Q\(4) <= NOT \p1|reg4|Q\(4);
\p1|reg6|ALT_INV_Q\(4) <= NOT \p1|reg6|Q\(4);
\p1|mux0|ALT_INV_y[3]~25_combout\ <= NOT \p1|mux0|y[3]~25_combout\;
\p1|reg0|ALT_INV_Q\(3) <= NOT \p1|reg0|Q\(3);
\p1|mux0|ALT_INV_y[3]~24_combout\ <= NOT \p1|mux0|y[3]~24_combout\;
\p1|reg1|ALT_INV_Q\(3) <= NOT \p1|reg1|Q\(3);
\p1|mux0|ALT_INV_y[3]~23_combout\ <= NOT \p1|mux0|y[3]~23_combout\;
\p1|reg4|ALT_INV_Q\(3) <= NOT \p1|reg4|Q\(3);
\p1|reg6|ALT_INV_Q\(3) <= NOT \p1|reg6|Q\(3);
\p1|mux0|ALT_INV_y[2]~22_combout\ <= NOT \p1|mux0|y[2]~22_combout\;
\p1|reg0|ALT_INV_Q\(2) <= NOT \p1|reg0|Q\(2);
\p1|mux0|ALT_INV_y[2]~21_combout\ <= NOT \p1|mux0|y[2]~21_combout\;
\p1|reg1|ALT_INV_Q\(2) <= NOT \p1|reg1|Q\(2);
\p1|mux0|ALT_INV_y[2]~20_combout\ <= NOT \p1|mux0|y[2]~20_combout\;
\p1|reg4|ALT_INV_Q\(2) <= NOT \p1|reg4|Q\(2);
\p1|reg6|ALT_INV_Q\(2) <= NOT \p1|reg6|Q\(2);
\p1|mux0|ALT_INV_y[1]~19_combout\ <= NOT \p1|mux0|y[1]~19_combout\;
\p1|reg0|ALT_INV_Q\(1) <= NOT \p1|reg0|Q\(1);
\p1|mux0|ALT_INV_y[1]~18_combout\ <= NOT \p1|mux0|y[1]~18_combout\;
\p1|reg1|ALT_INV_Q\(1) <= NOT \p1|reg1|Q\(1);
\p1|mux0|ALT_INV_y[1]~17_combout\ <= NOT \p1|mux0|y[1]~17_combout\;
\p1|reg4|ALT_INV_Q\(1) <= NOT \p1|reg4|Q\(1);
\p1|reg6|ALT_INV_Q\(1) <= NOT \p1|reg6|Q\(1);
\p1|fsm|ALT_INV_Selector16~1_combout\ <= NOT \p1|fsm|Selector16~1_combout\;
\p1|fsm|ALT_INV_Mux15~0_combout\ <= NOT \p1|fsm|Mux15~0_combout\;
\p1|fsm|ALT_INV_Selector16~0_combout\ <= NOT \p1|fsm|Selector16~0_combout\;
\p1|mux0|ALT_INV_y[0]~16_combout\ <= NOT \p1|mux0|y[0]~16_combout\;
\p1|mux0|ALT_INV_y[1]~15_combout\ <= NOT \p1|mux0|y[1]~15_combout\;
\p1|mux0|ALT_INV_y[1]~14_combout\ <= NOT \p1|mux0|y[1]~14_combout\;
\p1|mux0|ALT_INV_y[1]~13_combout\ <= NOT \p1|mux0|y[1]~13_combout\;
\p1|fsm|ALT_INV_y_Q.T2~DUPLICATE_q\ <= NOT \p1|fsm|y_Q.T2~DUPLICATE_q\;
\p1|ir0|ALT_INV_Q[7]~DUPLICATE_q\ <= NOT \p1|ir0|Q[7]~DUPLICATE_q\;
\p1|regAddr|ALT_INV_Q[2]~DUPLICATE_q\ <= NOT \p1|regAddr|Q[2]~DUPLICATE_q\;
\p1|regAddr|ALT_INV_Q[8]~DUPLICATE_q\ <= NOT \p1|regAddr|Q[8]~DUPLICATE_q\;
\p1|reg3|ALT_INV_Q[8]~DUPLICATE_q\ <= NOT \p1|reg3|Q[8]~DUPLICATE_q\;
\p1|pc0|ALT_INV_v[5]~DUPLICATE_q\ <= NOT \p1|pc0|v[5]~DUPLICATE_q\;
\p1|pc0|ALT_INV_v[2]~DUPLICATE_q\ <= NOT \p1|pc0|v[2]~DUPLICATE_q\;
\p1|regG|ALT_INV_Q[8]~DUPLICATE_q\ <= NOT \p1|regG|Q[8]~DUPLICATE_q\;
\p1|regG|ALT_INV_Q[7]~DUPLICATE_q\ <= NOT \p1|regG|Q[7]~DUPLICATE_q\;
\p1|regG|ALT_INV_Q[6]~DUPLICATE_q\ <= NOT \p1|regG|Q[6]~DUPLICATE_q\;
\p1|regG|ALT_INV_Q[5]~DUPLICATE_q\ <= NOT \p1|regG|Q[5]~DUPLICATE_q\;
\p1|regG|ALT_INV_Q[3]~DUPLICATE_q\ <= NOT \p1|regG|Q[3]~DUPLICATE_q\;
\p1|regG|ALT_INV_Q[1]~DUPLICATE_q\ <= NOT \p1|regG|Q[1]~DUPLICATE_q\;

-- Location: IOOBUF_X25_Y0_N36
\hex5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|s5|hex[6]~0_combout\,
	devoe => ww_devoe,
	o => ww_hex5(6));

-- Location: IOOBUF_X36_Y0_N2
\hex5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|s5|hex[5]~1_combout\,
	devoe => ww_devoe,
	o => ww_hex5(5));

-- Location: IOOBUF_X40_Y0_N59
\hex5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|s5|hex[4]~2_combout\,
	devoe => ww_devoe,
	o => ww_hex5(4));

-- Location: IOOBUF_X36_Y0_N53
\hex5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|s5|hex[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_hex5(3));

-- Location: IOOBUF_X23_Y0_N76
\hex5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|s5|hex[2]~4_combout\,
	devoe => ww_devoe,
	o => ww_hex5(2));

-- Location: IOOBUF_X24_Y0_N36
\hex5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|s5|hex[1]~5_combout\,
	devoe => ww_devoe,
	o => ww_hex5(1));

-- Location: IOOBUF_X22_Y0_N36
\hex5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|s5|hex[0]~6_combout\,
	devoe => ww_devoe,
	o => ww_hex5(0));

-- Location: IOOBUF_X29_Y0_N2
\hex4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|s4|hex[6]~0_combout\,
	devoe => ww_devoe,
	o => ww_hex4(6));

-- Location: IOOBUF_X34_Y0_N53
\hex4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|s4|hex[5]~1_combout\,
	devoe => ww_devoe,
	o => ww_hex4(5));

-- Location: IOOBUF_X33_Y0_N76
\hex4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|s4|hex[4]~2_combout\,
	devoe => ww_devoe,
	o => ww_hex4(4));

-- Location: IOOBUF_X38_Y0_N53
\hex4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|s4|hex[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_hex4(3));

-- Location: IOOBUF_X33_Y0_N93
\hex4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|s4|hex[2]~4_combout\,
	devoe => ww_devoe,
	o => ww_hex4(2));

-- Location: IOOBUF_X43_Y0_N36
\hex4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|s4|hex[1]~5_combout\,
	devoe => ww_devoe,
	o => ww_hex4(1));

-- Location: IOOBUF_X44_Y0_N19
\hex4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|s4|hex[0]~6_combout\,
	devoe => ww_devoe,
	o => ww_hex4(0));

-- Location: IOOBUF_X34_Y0_N19
\hex3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|s3|hex[6]~0_combout\,
	devoe => ww_devoe,
	o => ww_hex3(6));

-- Location: IOOBUF_X33_Y0_N42
\hex3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|s3|hex[5]~1_combout\,
	devoe => ww_devoe,
	o => ww_hex3(5));

-- Location: IOOBUF_X29_Y0_N36
\hex3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|s3|hex[4]~2_combout\,
	devoe => ww_devoe,
	o => ww_hex3(4));

-- Location: IOOBUF_X43_Y0_N53
\hex3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|s3|hex[3]~3_combout\,
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
	i => \u0|s3|hex[2]~4_combout\,
	devoe => ww_devoe,
	o => ww_hex3(2));

-- Location: IOOBUF_X38_Y0_N36
\hex3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|s3|hex[1]~5_combout\,
	devoe => ww_devoe,
	o => ww_hex3(1));

-- Location: IOOBUF_X25_Y0_N53
\hex3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|s3|hex[0]~6_combout\,
	devoe => ww_devoe,
	o => ww_hex3(0));

-- Location: IOOBUF_X25_Y0_N2
\hex2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|s2|hex[6]~0_combout\,
	devoe => ww_devoe,
	o => ww_hex2(6));

-- Location: IOOBUF_X23_Y0_N42
\hex2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|s2|hex[5]~1_combout\,
	devoe => ww_devoe,
	o => ww_hex2(5));

-- Location: IOOBUF_X25_Y0_N19
\hex2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|s2|hex[4]~2_combout\,
	devoe => ww_devoe,
	o => ww_hex2(4));

-- Location: IOOBUF_X23_Y0_N59
\hex2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|s2|hex[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_hex2(3));

-- Location: IOOBUF_X19_Y0_N19
\hex2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|s2|hex[2]~4_combout\,
	devoe => ww_devoe,
	o => ww_hex2(2));

-- Location: IOOBUF_X22_Y0_N53
\hex2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|s2|hex[1]~5_combout\,
	devoe => ww_devoe,
	o => ww_hex2(1));

-- Location: IOOBUF_X38_Y0_N2
\hex2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|s2|hex[0]~6_combout\,
	devoe => ww_devoe,
	o => ww_hex2(0));

-- Location: IOOBUF_X0_Y20_N56
\hex1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|s1|hex[6]~0_combout\,
	devoe => ww_devoe,
	o => ww_hex1(6));

-- Location: IOOBUF_X29_Y0_N19
\hex1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|s1|hex[5]~1_combout\,
	devoe => ww_devoe,
	o => ww_hex1(5));

-- Location: IOOBUF_X24_Y0_N53
\hex1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|s1|hex[4]~2_combout\,
	devoe => ww_devoe,
	o => ww_hex1(4));

-- Location: IOOBUF_X23_Y0_N93
\hex1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|s1|hex[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_hex1(3));

-- Location: IOOBUF_X36_Y0_N19
\hex1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|s1|hex[2]~4_combout\,
	devoe => ww_devoe,
	o => ww_hex1(2));

-- Location: IOOBUF_X22_Y0_N19
\hex1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|s1|hex[1]~5_combout\,
	devoe => ww_devoe,
	o => ww_hex1(1));

-- Location: IOOBUF_X24_Y0_N2
\hex1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|s1|hex[0]~6_combout\,
	devoe => ww_devoe,
	o => ww_hex1(0));

-- Location: IOOBUF_X33_Y0_N59
\hex0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|s0|hex[6]~0_combout\,
	devoe => ww_devoe,
	o => ww_hex0(6));

-- Location: IOOBUF_X38_Y0_N19
\hex0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|s0|hex[5]~1_combout\,
	devoe => ww_devoe,
	o => ww_hex0(5));

-- Location: IOOBUF_X34_Y0_N36
\hex0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|s0|hex[4]~2_combout\,
	devoe => ww_devoe,
	o => ww_hex0(4));

-- Location: IOOBUF_X36_Y0_N36
\hex0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|s0|hex[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_hex0(3));

-- Location: IOOBUF_X40_Y0_N93
\hex0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|s0|hex[2]~4_combout\,
	devoe => ww_devoe,
	o => ww_hex0(2));

-- Location: IOOBUF_X34_Y0_N2
\hex0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|s0|hex[1]~5_combout\,
	devoe => ww_devoe,
	o => ww_hex0(1));

-- Location: IOOBUF_X29_Y0_N53
\hex0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|s0|hex[0]~6_combout\,
	devoe => ww_devoe,
	o => ww_hex0(0));

-- Location: IOOBUF_X12_Y0_N2
\d_r5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg5|Q\(0),
	devoe => ww_devoe,
	o => ww_d_r5(0));

-- Location: IOOBUF_X44_Y0_N36
\d_r5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg5|Q\(1),
	devoe => ww_devoe,
	o => ww_d_r5(1));

-- Location: IOOBUF_X0_Y21_N56
\d_r5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg5|Q\(2),
	devoe => ww_devoe,
	o => ww_d_r5(2));

-- Location: IOOBUF_X54_Y14_N62
\d_r5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg5|Q\(3),
	devoe => ww_devoe,
	o => ww_d_r5(3));

-- Location: IOOBUF_X14_Y0_N53
\d_r5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg5|Q\(4),
	devoe => ww_devoe,
	o => ww_d_r5(4));

-- Location: IOOBUF_X18_Y0_N53
\d_r5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg5|Q\(5),
	devoe => ww_devoe,
	o => ww_d_r5(5));

-- Location: IOOBUF_X0_Y21_N22
\d_r5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg5|Q\(6),
	devoe => ww_devoe,
	o => ww_d_r5(6));

-- Location: IOOBUF_X16_Y45_N42
\d_r5[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg5|Q\(7),
	devoe => ww_devoe,
	o => ww_d_r5(7));

-- Location: IOOBUF_X0_Y18_N62
\d_r5[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg5|Q\(8),
	devoe => ww_devoe,
	o => ww_d_r5(8));

-- Location: IOOBUF_X12_Y45_N2
\d_r3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg3|Q\(0),
	devoe => ww_devoe,
	o => ww_d_r3(0));

-- Location: IOOBUF_X0_Y18_N45
\d_r3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg3|Q\(1),
	devoe => ww_devoe,
	o => ww_d_r3(1));

-- Location: IOOBUF_X24_Y0_N19
\d_r3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg3|Q\(2),
	devoe => ww_devoe,
	o => ww_d_r3(2));

-- Location: IOOBUF_X0_Y19_N5
\d_r3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg3|Q\(3),
	devoe => ww_devoe,
	o => ww_d_r3(3));

-- Location: IOOBUF_X0_Y19_N56
\d_r3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg3|Q[4]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_d_r3(4));

-- Location: IOOBUF_X54_Y15_N39
\d_r3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg3|Q\(5),
	devoe => ww_devoe,
	o => ww_d_r3(5));

-- Location: IOOBUF_X14_Y45_N53
\d_r3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg3|Q\(6),
	devoe => ww_devoe,
	o => ww_d_r3(6));

-- Location: IOOBUF_X54_Y14_N79
\d_r3[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg3|Q\(7),
	devoe => ww_devoe,
	o => ww_d_r3(7));

-- Location: IOOBUF_X0_Y18_N79
\d_r3[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg3|Q\(8),
	devoe => ww_devoe,
	o => ww_d_r3(8));

-- Location: IOOBUF_X12_Y45_N19
\d_r2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg2|Q\(0),
	devoe => ww_devoe,
	o => ww_d_r2(0));

-- Location: IOOBUF_X14_Y45_N19
\d_r2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg2|Q\(1),
	devoe => ww_devoe,
	o => ww_d_r2(1));

-- Location: IOOBUF_X14_Y0_N36
\d_r2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg2|Q\(2),
	devoe => ww_devoe,
	o => ww_d_r2(2));

-- Location: IOOBUF_X0_Y19_N22
\d_r2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg2|Q\(3),
	devoe => ww_devoe,
	o => ww_d_r2(3));

-- Location: IOOBUF_X0_Y21_N5
\d_r2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg2|Q\(4),
	devoe => ww_devoe,
	o => ww_d_r2(4));

-- Location: IOOBUF_X14_Y0_N2
\d_r2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg2|Q\(5),
	devoe => ww_devoe,
	o => ww_d_r2(5));

-- Location: IOOBUF_X19_Y0_N36
\d_r2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg2|Q\(6),
	devoe => ww_devoe,
	o => ww_d_r2(6));

-- Location: IOOBUF_X19_Y0_N2
\d_r2[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg2|Q\(7),
	devoe => ww_devoe,
	o => ww_d_r2(7));

-- Location: IOOBUF_X0_Y19_N39
\d_r2[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg2|Q\(8),
	devoe => ww_devoe,
	o => ww_d_r2(8));

-- Location: IOOBUF_X18_Y0_N19
\d_in[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIN[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_d_in(0));

-- Location: IOOBUF_X0_Y18_N96
\d_in[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIN[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_d_in(1));

-- Location: IOOBUF_X11_Y0_N36
\d_in[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIN[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_d_in(2));

-- Location: IOOBUF_X11_Y0_N19
\d_in[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIN[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_d_in(3));

-- Location: IOOBUF_X12_Y45_N53
\d_in[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIN[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_d_in(4));

-- Location: IOOBUF_X16_Y0_N42
\d_in[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIN[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_d_in(5));

-- Location: IOOBUF_X22_Y0_N2
\d_in[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIN[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_d_in(6));

-- Location: IOOBUF_X0_Y20_N39
\d_in[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIN[7]~7_combout\,
	devoe => ww_devoe,
	o => ww_d_in(7));

-- Location: IOOBUF_X12_Y45_N36
\d_in[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DIN[8]~8_combout\,
	devoe => ww_devoe,
	o => ww_d_in(8));

-- Location: IOOBUF_X10_Y0_N93
\ledr[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \leds0|Q\(0),
	devoe => ww_devoe,
	o => ww_ledr(0));

-- Location: IOOBUF_X19_Y0_N53
\ledr[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \leds0|Q\(1),
	devoe => ww_devoe,
	o => ww_ledr(1));

-- Location: IOOBUF_X0_Y20_N5
\ledr[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \leds0|Q\(2),
	devoe => ww_devoe,
	o => ww_ledr(2));

-- Location: IOOBUF_X16_Y0_N59
\ledr[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \leds0|Q\(3),
	devoe => ww_devoe,
	o => ww_ledr(3));

-- Location: IOOBUF_X14_Y0_N19
\ledr[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \leds0|Q\(4),
	devoe => ww_devoe,
	o => ww_ledr(4));

-- Location: IOOBUF_X11_Y0_N2
\ledr[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \leds0|Q\(5),
	devoe => ww_devoe,
	o => ww_ledr(5));

-- Location: IOOBUF_X16_Y0_N93
\ledr[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \leds0|Q\(6),
	devoe => ww_devoe,
	o => ww_ledr(6));

-- Location: IOOBUF_X11_Y0_N53
\ledr[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \leds0|Q\(7),
	devoe => ww_devoe,
	o => ww_ledr(7));

-- Location: IOOBUF_X10_Y0_N42
\ledr[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \leds0|Q\(8),
	devoe => ww_devoe,
	o => ww_ledr(8));

-- Location: IOIBUF_X54_Y18_N61
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: MLABCELL_X13_Y13_N24
\p1|reg3|Q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg3|Q[7]~feeder_combout\ = ( \p1|mux0|y[7]~37_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[7]~37_combout\,
	combout => \p1|reg3|Q[7]~feeder_combout\);

-- Location: IOIBUF_X54_Y18_N44
\key0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key0,
	o => \key0~input_o\);

-- Location: CLKCTRL_G8
\key0~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \key0~input_o\,
	outclk => \key0~inputCLKENA0_outclk\);

-- Location: FF_X13_Y13_N40
\p1|reg3|Q[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[8]~40_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q[8]~DUPLICATE_q\);

-- Location: IOIBUF_X0_Y20_N21
\sw[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

-- Location: MLABCELL_X13_Y9_N27
\p1|fsm|DoutIn~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|DoutIn~0_combout\ = ( \p1|ir0|Q\(8) & ( (\p1|ir0|Q\(6) & (\p1|fsm|y_Q.T2~DUPLICATE_q\ & !\p1|ir0|Q\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(6),
	datac => \p1|fsm|ALT_INV_y_Q.T2~DUPLICATE_q\,
	datad => \p1|ir0|ALT_INV_Q\(7),
	dataf => \p1|ir0|ALT_INV_Q\(8),
	combout => \p1|fsm|DoutIn~0_combout\);

-- Location: FF_X10_Y10_N41
\p1|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|fsm|DoutIn~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ff0|Q~q\);

-- Location: FF_X12_Y12_N50
\u1|r0|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \sw[7]~input_o\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|ff0|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|r0|Q\(7));

-- Location: LABCELL_X10_Y10_N27
wr_en : cyclonev_lcell_comb
-- Equation(s):
-- \wr_en~combout\ = ( !\p1|regAddr|Q[8]~DUPLICATE_q\ & ( !\p1|regAddr|Q\(7) & ( \p1|ff0|Q~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|ff0|ALT_INV_Q~q\,
	datae => \p1|regAddr|ALT_INV_Q[8]~DUPLICATE_q\,
	dataf => \p1|regAddr|ALT_INV_Q\(7),
	combout => \wr_en~combout\);

-- Location: MLABCELL_X13_Y9_N15
\p1|fsm|Mux28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Mux28~0_combout\ = ( \p1|ir0|Q\(7) & ( (!\p1|ir0|Q\(8) & \p1|ir0|Q\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(8),
	datad => \p1|ir0|ALT_INV_Q\(6),
	datae => \p1|ir0|ALT_INV_Q\(7),
	combout => \p1|fsm|Mux28~0_combout\);

-- Location: MLABCELL_X13_Y9_N54
\p1|fsm|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector0~0_combout\ = (\p1|fsm|y_Q.T1~q\ & (!\p1|ir0|Q\(6) & (!\p1|ir0|Q\(8) $ (\p1|ir0|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000010000010000000001000001000000000100000100000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T1~q\,
	datab => \p1|ir0|ALT_INV_Q\(8),
	datac => \p1|ir0|ALT_INV_Q\(6),
	datad => \p1|ir0|ALT_INV_Q\(7),
	combout => \p1|fsm|Selector0~0_combout\);

-- Location: IOIBUF_X16_Y0_N75
\sw9~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw9,
	o => \sw9~input_o\);

-- Location: MLABCELL_X13_Y9_N51
\ff0|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ff0|Q~feeder_combout\ = ( \sw9~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_sw9~input_o\,
	combout => \ff0|Q~feeder_combout\);

-- Location: FF_X13_Y9_N53
\ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ff0|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff0|Q~q\);

-- Location: FF_X12_Y9_N20
\p1|fsm|y_Q.T2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|fsm|y_D.T2~0_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|fsm|y_Q.T2~q\);

-- Location: FF_X13_Y9_N19
\p1|fsm|y_Q.T3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|fsm|y_Q.T2~q\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|fsm|y_Q.T3~q\);

-- Location: MLABCELL_X13_Y9_N0
\p1|fsm|Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector0~1_combout\ = ( !\p1|fsm|y_Q.T3~q\ & ( (!\p1|fsm|Selector0~0_combout\ & ((\p1|fsm|y_Q.T0~q\) # (\ff0|Q~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011001100000011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|fsm|ALT_INV_Selector0~0_combout\,
	datac => \ff0|ALT_INV_Q~q\,
	datad => \p1|fsm|ALT_INV_y_Q.T0~q\,
	dataf => \p1|fsm|ALT_INV_y_Q.T3~q\,
	combout => \p1|fsm|Selector0~1_combout\);

-- Location: FF_X13_Y9_N1
\p1|fsm|y_Q.T0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|fsm|Selector0~1_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|fsm|y_Q.T0~q\);

-- Location: MLABCELL_X13_Y9_N3
\p1|fsm|Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector10~0_combout\ = ( \ff0|Q~q\ & ( !\p1|fsm|y_Q.T0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T0~q\,
	dataf => \ff0|ALT_INV_Q~q\,
	combout => \p1|fsm|Selector10~0_combout\);

-- Location: FF_X13_Y9_N4
\p1|fsm|y_Q.TX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|fsm|Selector10~0_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|fsm|y_Q.TX~q\);

-- Location: FF_X13_Y9_N44
\p1|fsm|y_Q.TXX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|fsm|y_Q.TX~q\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|fsm|y_Q.TXX~q\);

-- Location: FF_X13_Y12_N2
\p1|fsm|y_Q.T1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|fsm|y_Q.TXX~q\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|fsm|y_Q.T1~q\);

-- Location: FF_X12_Y12_N19
\p1|ir0|Q[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DIN[7]~7_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|y_Q.TXX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q[7]~DUPLICATE_q\);

-- Location: MLABCELL_X13_Y12_N0
\p1|fsm|Ain~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Ain~0_combout\ = ( \p1|ir0|Q[7]~DUPLICATE_q\ & ( (!\p1|ir0|Q\(8) & \p1|fsm|y_Q.T1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|ir0|ALT_INV_Q\(8),
	datad => \p1|fsm|ALT_INV_y_Q.T1~q\,
	dataf => \p1|ir0|ALT_INV_Q[7]~DUPLICATE_q\,
	combout => \p1|fsm|Ain~0_combout\);

-- Location: FF_X13_Y13_N8
\p1|regA|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[0]~16_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regA|Q\(0));

-- Location: MLABCELL_X13_Y12_N30
\p1|addsub0|Add0~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~38_cout\ = CARRY(( (\p1|fsm|y_Q.T2~DUPLICATE_q\ & \p1|fsm|Mux28~0_combout\) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T2~DUPLICATE_q\,
	datac => \p1|fsm|ALT_INV_Mux28~0_combout\,
	cin => GND,
	cout => \p1|addsub0|Add0~38_cout\);

-- Location: MLABCELL_X13_Y12_N33
\p1|addsub0|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~1_sumout\ = SUM(( !\p1|mux0|y[0]~16_combout\ $ (((!\p1|fsm|y_Q.T2~DUPLICATE_q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|regA|Q\(0) ) + ( \p1|addsub0|Add0~38_cout\ ))
-- \p1|addsub0|Add0~2\ = CARRY(( !\p1|mux0|y[0]~16_combout\ $ (((!\p1|fsm|y_Q.T2~DUPLICATE_q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|regA|Q\(0) ) + ( \p1|addsub0|Add0~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T2~DUPLICATE_q\,
	datac => \p1|mux0|ALT_INV_y[0]~16_combout\,
	datad => \p1|fsm|ALT_INV_Mux28~0_combout\,
	dataf => \p1|regA|ALT_INV_Q\(0),
	cin => \p1|addsub0|Add0~38_cout\,
	sumout => \p1|addsub0|Add0~1_sumout\,
	cout => \p1|addsub0|Add0~2\);

-- Location: LABCELL_X12_Y12_N12
\p1|fsm|Gin~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Gin~0_combout\ = ( \p1|fsm|y_Q.T2~DUPLICATE_q\ & ( \p1|ir0|Q\(7) & ( !\p1|ir0|Q\(8) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(8),
	datae => \p1|fsm|ALT_INV_y_Q.T2~DUPLICATE_q\,
	dataf => \p1|ir0|ALT_INV_Q\(7),
	combout => \p1|fsm|Gin~0_combout\);

-- Location: FF_X13_Y12_N35
\p1|regG|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|addsub0|Add0~1_sumout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regG|Q\(0));

-- Location: FF_X13_Y13_N2
\p1|reg3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[0]~16_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(0));

-- Location: FF_X13_Y13_N19
\p1|reg2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[0]~16_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q\(0));

-- Location: MLABCELL_X13_Y10_N0
\p1|fsm|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector8~0_combout\ = ( \p1|fsm|y_Q.T2~DUPLICATE_q\ & ( !\p1|ir0|Q[7]~DUPLICATE_q\ $ (!\p1|ir0|Q\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|ir0|ALT_INV_Q[7]~DUPLICATE_q\,
	datac => \p1|ir0|ALT_INV_Q\(8),
	dataf => \p1|fsm|ALT_INV_y_Q.T2~DUPLICATE_q\,
	combout => \p1|fsm|Selector8~0_combout\);

-- Location: IOIBUF_X18_Y0_N35
\sw[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: FF_X12_Y10_N41
\u1|r0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \sw[1]~input_o\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|ff0|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|r0|Q\(1));

-- Location: MLABCELL_X13_Y9_N36
\p1|fsm|Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector9~0_combout\ = ( \p1|fsm|y_Q.T0~q\ & ( (\p1|fsm|y_Q.T1~q\ & (!\p1|ir0|Q\(7) & ((\p1|ir0|Q\(8)) # (\p1|ir0|Q\(6))))) ) ) # ( !\p1|fsm|y_Q.T0~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000001000100010011111111111111110000010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T1~q\,
	datab => \p1|ir0|ALT_INV_Q\(7),
	datac => \p1|ir0|ALT_INV_Q\(6),
	datad => \p1|ir0|ALT_INV_Q\(8),
	datae => \p1|fsm|ALT_INV_y_Q.T0~q\,
	combout => \p1|fsm|Selector9~0_combout\);

-- Location: FF_X12_Y12_N32
\p1|regAddr|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[0]~16_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regAddr|Q\(0));

-- Location: LABCELL_X12_Y12_N54
\p1|regAddr|Q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|regAddr|Q[1]~feeder_combout\ = ( \p1|mux0|y[1]~19_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[1]~19_combout\,
	combout => \p1|regAddr|Q[1]~feeder_combout\);

-- Location: FF_X12_Y12_N56
\p1|regAddr|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|regAddr|Q[1]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regAddr|Q\(1));

-- Location: FF_X13_Y12_N20
\p1|regA|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[2]~22_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regA|Q\(2));

-- Location: LABCELL_X16_Y12_N9
\p1|regA|Q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|regA|Q[1]~feeder_combout\ = ( \p1|mux0|y[1]~19_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[1]~19_combout\,
	combout => \p1|regA|Q[1]~feeder_combout\);

-- Location: FF_X16_Y12_N10
\p1|regA|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|regA|Q[1]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regA|Q\(1));

-- Location: MLABCELL_X13_Y12_N36
\p1|addsub0|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~5_sumout\ = SUM(( !\p1|mux0|y[1]~19_combout\ $ (((!\p1|fsm|y_Q.T2~DUPLICATE_q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|regA|Q\(1) ) + ( \p1|addsub0|Add0~2\ ))
-- \p1|addsub0|Add0~6\ = CARRY(( !\p1|mux0|y[1]~19_combout\ $ (((!\p1|fsm|y_Q.T2~DUPLICATE_q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|regA|Q\(1) ) + ( \p1|addsub0|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T2~DUPLICATE_q\,
	datac => \p1|mux0|ALT_INV_y[1]~19_combout\,
	datad => \p1|fsm|ALT_INV_Mux28~0_combout\,
	dataf => \p1|regA|ALT_INV_Q\(1),
	cin => \p1|addsub0|Add0~2\,
	sumout => \p1|addsub0|Add0~5_sumout\,
	cout => \p1|addsub0|Add0~6\);

-- Location: MLABCELL_X13_Y12_N39
\p1|addsub0|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~9_sumout\ = SUM(( !\p1|mux0|y[2]~22_combout\ $ (((!\p1|fsm|y_Q.T2~DUPLICATE_q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|regA|Q\(2) ) + ( \p1|addsub0|Add0~6\ ))
-- \p1|addsub0|Add0~10\ = CARRY(( !\p1|mux0|y[2]~22_combout\ $ (((!\p1|fsm|y_Q.T2~DUPLICATE_q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|regA|Q\(2) ) + ( \p1|addsub0|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T2~DUPLICATE_q\,
	datac => \p1|mux0|ALT_INV_y[2]~22_combout\,
	datad => \p1|fsm|ALT_INV_Mux28~0_combout\,
	dataf => \p1|regA|ALT_INV_Q\(2),
	cin => \p1|addsub0|Add0~6\,
	sumout => \p1|addsub0|Add0~9_sumout\,
	cout => \p1|addsub0|Add0~10\);

-- Location: FF_X13_Y12_N41
\p1|regG|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|addsub0|Add0~9_sumout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regG|Q\(2));

-- Location: FF_X13_Y10_N11
\p1|reg2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[2]~22_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q\(2));

-- Location: MLABCELL_X13_Y13_N27
\p1|reg3|Q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg3|Q[2]~feeder_combout\ = ( \p1|mux0|y[2]~22_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[2]~22_combout\,
	combout => \p1|reg3|Q[2]~feeder_combout\);

-- Location: FF_X13_Y13_N28
\p1|reg3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg3|Q[2]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(2));

-- Location: MLABCELL_X13_Y11_N27
\p1|mux0|y[1]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~13_combout\ = ( \p1|ir0|Q\(7) & ( (\p1|fsm|y_Q.T3~q\ & !\p1|ir0|Q\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|fsm|ALT_INV_y_Q.T3~q\,
	datad => \p1|ir0|ALT_INV_Q\(8),
	dataf => \p1|ir0|ALT_INV_Q\(7),
	combout => \p1|mux0|y[1]~13_combout\);

-- Location: MLABCELL_X13_Y12_N18
\p1|fsm|Selector5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector5~1_combout\ = ( \p1|ir0|Q\(6) & ( \p1|fsm|Equal0~1_combout\ & ( (\p1|fsm|y_Q.T1~q\ & (!\p1|ir0|Q[7]~DUPLICATE_q\ $ (!\p1|ir0|Q\(8)))) ) ) ) # ( !\p1|ir0|Q\(6) & ( \p1|fsm|Equal0~1_combout\ & ( (\p1|fsm|y_Q.T1~q\ & 
-- ((!\p1|ir0|Q[7]~DUPLICATE_q\) # ((!\p1|ir0|Q\(8)) # (!\p1|fsm|Equal0~0_combout\)))) ) ) ) # ( \p1|ir0|Q\(6) & ( !\p1|fsm|Equal0~1_combout\ & ( (\p1|fsm|y_Q.T1~q\ & (!\p1|ir0|Q[7]~DUPLICATE_q\ $ (!\p1|ir0|Q\(8)))) ) ) ) # ( !\p1|ir0|Q\(6) & ( 
-- !\p1|fsm|Equal0~1_combout\ & ( \p1|fsm|y_Q.T1~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000101000001010001010101010101000001010000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T1~q\,
	datab => \p1|ir0|ALT_INV_Q[7]~DUPLICATE_q\,
	datac => \p1|ir0|ALT_INV_Q\(8),
	datad => \p1|fsm|ALT_INV_Equal0~0_combout\,
	datae => \p1|ir0|ALT_INV_Q\(6),
	dataf => \p1|fsm|ALT_INV_Equal0~1_combout\,
	combout => \p1|fsm|Selector5~1_combout\);

-- Location: IOIBUF_X12_Y0_N52
\sw[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: FF_X12_Y10_N23
\u1|r0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \sw[0]~input_o\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|ff0|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|r0|Q\(0));

-- Location: MLABCELL_X13_Y13_N42
\p1|reg3|Q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg3|Q[3]~feeder_combout\ = ( \p1|mux0|y[3]~25_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[3]~25_combout\,
	combout => \p1|reg3|Q[3]~feeder_combout\);

-- Location: FF_X13_Y13_N43
\p1|reg3|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg3|Q[3]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(3));

-- Location: MLABCELL_X13_Y13_N21
\p1|reg2|Q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg2|Q[3]~feeder_combout\ = ( \p1|mux0|y[3]~25_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[3]~25_combout\,
	combout => \p1|reg2|Q[3]~feeder_combout\);

-- Location: FF_X13_Y13_N22
\p1|reg2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg2|Q[3]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q\(3));

-- Location: LABCELL_X14_Y10_N3
\p1|fsm|Selector16~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector16~1_combout\ = ( \p1|ir0|Q[7]~DUPLICATE_q\ & ( (\p1|fsm|y_Q.T1~q\ & \p1|ir0|Q\(8)) ) ) # ( !\p1|ir0|Q[7]~DUPLICATE_q\ & ( (\p1|fsm|y_Q.T1~q\ & ((!\p1|ir0|Q\(6)) # (\p1|ir0|Q\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010101010100000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T1~q\,
	datac => \p1|ir0|ALT_INV_Q\(6),
	datad => \p1|ir0|ALT_INV_Q\(8),
	dataf => \p1|ir0|ALT_INV_Q[7]~DUPLICATE_q\,
	combout => \p1|fsm|Selector16~1_combout\);

-- Location: IOIBUF_X12_Y0_N18
\sw[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

-- Location: FF_X12_Y10_N20
\u1|r0|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \sw[4]~input_o\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|ff0|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|r0|Q\(4));

-- Location: MLABCELL_X13_Y13_N54
\p1|regA|Q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|regA|Q[4]~feeder_combout\ = ( \p1|mux0|y[4]~28_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[4]~28_combout\,
	combout => \p1|regA|Q[4]~feeder_combout\);

-- Location: FF_X13_Y13_N56
\p1|regA|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|regA|Q[4]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regA|Q\(4));

-- Location: MLABCELL_X13_Y13_N15
\p1|regA|Q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|regA|Q[3]~feeder_combout\ = ( \p1|mux0|y[3]~25_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[3]~25_combout\,
	combout => \p1|regA|Q[3]~feeder_combout\);

-- Location: FF_X13_Y13_N16
\p1|regA|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|regA|Q[3]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regA|Q\(3));

-- Location: MLABCELL_X13_Y12_N42
\p1|addsub0|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~13_sumout\ = SUM(( !\p1|mux0|y[3]~25_combout\ $ (((!\p1|fsm|y_Q.T2~DUPLICATE_q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|regA|Q\(3) ) + ( \p1|addsub0|Add0~10\ ))
-- \p1|addsub0|Add0~14\ = CARRY(( !\p1|mux0|y[3]~25_combout\ $ (((!\p1|fsm|y_Q.T2~DUPLICATE_q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|regA|Q\(3) ) + ( \p1|addsub0|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T2~DUPLICATE_q\,
	datac => \p1|mux0|ALT_INV_y[3]~25_combout\,
	datad => \p1|fsm|ALT_INV_Mux28~0_combout\,
	dataf => \p1|regA|ALT_INV_Q\(3),
	cin => \p1|addsub0|Add0~10\,
	sumout => \p1|addsub0|Add0~13_sumout\,
	cout => \p1|addsub0|Add0~14\);

-- Location: MLABCELL_X13_Y12_N45
\p1|addsub0|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~17_sumout\ = SUM(( !\p1|mux0|y[4]~28_combout\ $ (((!\p1|fsm|y_Q.T2~DUPLICATE_q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|regA|Q\(4) ) + ( \p1|addsub0|Add0~14\ ))
-- \p1|addsub0|Add0~18\ = CARRY(( !\p1|mux0|y[4]~28_combout\ $ (((!\p1|fsm|y_Q.T2~DUPLICATE_q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|regA|Q\(4) ) + ( \p1|addsub0|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T2~DUPLICATE_q\,
	datab => \p1|regA|ALT_INV_Q\(4),
	datac => \p1|mux0|ALT_INV_y[4]~28_combout\,
	datad => \p1|fsm|ALT_INV_Mux28~0_combout\,
	cin => \p1|addsub0|Add0~14\,
	sumout => \p1|addsub0|Add0~17_sumout\,
	cout => \p1|addsub0|Add0~18\);

-- Location: FF_X13_Y12_N47
\p1|regG|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|addsub0|Add0~17_sumout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regG|Q\(4));

-- Location: MLABCELL_X13_Y13_N33
\p1|reg3|Q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg3|Q[4]~feeder_combout\ = ( \p1|mux0|y[4]~28_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[4]~28_combout\,
	combout => \p1|reg3|Q[4]~feeder_combout\);

-- Location: FF_X13_Y13_N34
\p1|reg3|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg3|Q[4]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(4));

-- Location: MLABCELL_X13_Y13_N51
\p1|reg2|Q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg2|Q[4]~feeder_combout\ = ( \p1|mux0|y[4]~28_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[4]~28_combout\,
	combout => \p1|reg2|Q[4]~feeder_combout\);

-- Location: FF_X13_Y13_N52
\p1|reg2|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg2|Q[4]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q\(4));

-- Location: FF_X12_Y11_N50
\p1|reg1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[4]~28_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(4));

-- Location: IOIBUF_X0_Y21_N38
\sw[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: FF_X12_Y10_N5
\u1|r0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \sw[3]~input_o\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|ff0|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|r0|Q\(3));

-- Location: LABCELL_X12_Y12_N9
\p1|regAddr|Q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|regAddr|Q[5]~feeder_combout\ = ( \p1|mux0|y[5]~31_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[5]~31_combout\,
	combout => \p1|regAddr|Q[5]~feeder_combout\);

-- Location: FF_X12_Y12_N10
\p1|regAddr|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|regAddr|Q[5]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regAddr|Q\(5));

-- Location: LABCELL_X14_Y13_N30
\p1|reg2|Q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg2|Q[6]~feeder_combout\ = ( \p1|mux0|y[6]~34_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[6]~34_combout\,
	combout => \p1|reg2|Q[6]~feeder_combout\);

-- Location: FF_X14_Y13_N31
\p1|reg2|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg2|Q[6]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q\(6));

-- Location: MLABCELL_X13_Y13_N36
\p1|reg3|Q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg3|Q[6]~feeder_combout\ = ( \p1|mux0|y[6]~34_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[6]~34_combout\,
	combout => \p1|reg3|Q[6]~feeder_combout\);

-- Location: FF_X13_Y13_N37
\p1|reg3|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg3|Q[6]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(6));

-- Location: FF_X14_Y11_N38
\p1|reg1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[6]~34_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(6));

-- Location: IOIBUF_X10_Y0_N75
\sw[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

-- Location: FF_X10_Y10_N59
\u1|r0|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \sw[5]~input_o\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|ff0|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|r0|Q\(5));

-- Location: LABCELL_X14_Y9_N54
\p1|regDout|Q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|regDout|Q[2]~feeder_combout\ = ( \p1|mux0|y[2]~22_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[2]~22_combout\,
	combout => \p1|regDout|Q[2]~feeder_combout\);

-- Location: FF_X14_Y9_N55
\p1|regDout|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|regDout|Q[2]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|DoutIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regDout|Q\(2));

-- Location: LABCELL_X12_Y9_N39
\p1|regDout|Q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|regDout|Q[3]~feeder_combout\ = ( \p1|mux0|y[3]~25_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[3]~25_combout\,
	combout => \p1|regDout|Q[3]~feeder_combout\);

-- Location: FF_X12_Y9_N40
\p1|regDout|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|regDout|Q[3]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|DoutIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regDout|Q\(3));

-- Location: LABCELL_X12_Y9_N48
\p1|regDout|Q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|regDout|Q[4]~feeder_combout\ = ( \p1|mux0|y[4]~28_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[4]~28_combout\,
	combout => \p1|regDout|Q[4]~feeder_combout\);

-- Location: FF_X12_Y9_N49
\p1|regDout|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|regDout|Q[4]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|DoutIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regDout|Q\(4));

-- Location: LABCELL_X12_Y9_N30
\p1|regDout|Q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|regDout|Q[5]~feeder_combout\ = ( \p1|mux0|y[5]~31_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[5]~31_combout\,
	combout => \p1|regDout|Q[5]~feeder_combout\);

-- Location: FF_X12_Y9_N31
\p1|regDout|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|regDout|Q[5]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|DoutIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regDout|Q\(5));

-- Location: FF_X13_Y10_N2
\p1|regDout|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[6]~34_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|DoutIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regDout|Q\(6));

-- Location: FF_X13_Y10_N17
\p1|regDout|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[7]~37_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|DoutIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regDout|Q\(7));

-- Location: FF_X13_Y9_N59
\p1|regDout|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[8]~40_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|DoutIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regDout|Q\(8));

-- Location: M10K_X11_Y10_N0
\m0|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => "000000007D00078000000000000000000000003E0014500100000680014500101000680014500102000680014500103000680014500104000680014500105000",
	mem_init0 => "6800000000400007D00078000000000000000000000000000145001020006800002000400003D00064000680005800070001BC000D1001BE000D9000370001D000270001500001000480012D001450018000068000020004000145001030006800003000400003D00064000680003E00070001BC000D1001BE000D9000370001D00027000150000100048000000000000000000000000000000000000000000000000000012D001450018000068000020004000145001040006800004000400003D00064000680001A00070001BC000D1001BE000D9000370001D000270001500001000480012D00145001800006800002000400014500105000680000500040",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "ram128x9.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram128x9:m0|altsyncram:altsyncram_component|altsyncram_o324:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 128,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 7,
	port_b_data_width => 20,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \wr_en~combout\,
	portare => VCC,
	clk0 => \clk~inputCLKENA0_outclk\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LABCELL_X10_Y10_N45
\DIN[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIN[5]~5_combout\ = ( \m0|altsyncram_component|auto_generated|q_a\(5) & ( \p1|regAddr|Q\(7) & ( (!\p1|regAddr|Q[8]~DUPLICATE_q\) # (\u1|r0|Q\(5)) ) ) ) # ( !\m0|altsyncram_component|auto_generated|q_a\(5) & ( \p1|regAddr|Q\(7) & ( (\u1|r0|Q\(5) & 
-- \p1|regAddr|Q[8]~DUPLICATE_q\) ) ) ) # ( \m0|altsyncram_component|auto_generated|q_a\(5) & ( !\p1|regAddr|Q\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|r0|ALT_INV_Q\(5),
	datad => \p1|regAddr|ALT_INV_Q[8]~DUPLICATE_q\,
	datae => \m0|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	dataf => \p1|regAddr|ALT_INV_Q\(7),
	combout => \DIN[5]~5_combout\);

-- Location: FF_X13_Y10_N20
\p1|ir0|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DIN[5]~5_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|y_Q.TXX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(5));

-- Location: MLABCELL_X13_Y10_N12
\p1|decX|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|decX|Mux0~2_combout\ = ( \p1|ir0|Q\(5) & ( (\p1|ir0|Q\(4) & !\p1|ir0|Q\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|ir0|ALT_INV_Q\(4),
	datad => \p1|ir0|ALT_INV_Q\(3),
	dataf => \p1|ir0|ALT_INV_Q\(5),
	combout => \p1|decX|Mux0~2_combout\);

-- Location: LABCELL_X14_Y10_N42
\p1|fsm|Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector17~0_combout\ = ( \p1|fsm|Selector16~0_combout\ & ( \p1|decX|Mux0~2_combout\ ) ) # ( !\p1|fsm|Selector16~0_combout\ & ( (\p1|fsm|Selector16~1_combout\ & (\p1|decX|Mux0~2_combout\ & ((!\p1|ir0|Q\(8)) # (\p1|fsm|Mux15~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000001000001010000000100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector16~1_combout\,
	datab => \p1|fsm|ALT_INV_Mux15~0_combout\,
	datac => \p1|decX|ALT_INV_Mux0~2_combout\,
	datad => \p1|ir0|ALT_INV_Q\(8),
	dataf => \p1|fsm|ALT_INV_Selector16~0_combout\,
	combout => \p1|fsm|Selector17~0_combout\);

-- Location: FF_X14_Y11_N35
\p1|reg6|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[6]~34_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(6));

-- Location: MLABCELL_X13_Y9_N57
\p1|fsm|Selector10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector10~1_combout\ = ( \p1|ir0|Q\(6) & ( (!\p1|fsm|Selector10~0_combout\ & ((!\p1|fsm|y_Q.T1~q\) # ((\p1|ir0|Q\(7)) # (\p1|ir0|Q\(8))))) ) ) # ( !\p1|ir0|Q\(6) & ( !\p1|fsm|Selector10~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000010111111000000001011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T1~q\,
	datab => \p1|ir0|ALT_INV_Q\(8),
	datac => \p1|ir0|ALT_INV_Q\(7),
	datad => \p1|fsm|ALT_INV_Selector10~0_combout\,
	dataf => \p1|ir0|ALT_INV_Q\(6),
	combout => \p1|fsm|Selector10~1_combout\);

-- Location: MLABCELL_X13_Y11_N30
\p1|pc0|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|pc0|Add0~1_sumout\ = SUM(( \p1|pc0|v\(0) ) + ( VCC ) + ( !VCC ))
-- \p1|pc0|Add0~2\ = CARRY(( \p1|pc0|v\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|pc0|ALT_INV_v\(0),
	cin => GND,
	sumout => \p1|pc0|Add0~1_sumout\,
	cout => \p1|pc0|Add0~2\);

-- Location: MLABCELL_X13_Y10_N27
\p1|decX|Mux0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|decX|Mux0~7_combout\ = ( \p1|ir0|Q\(4) & ( (\p1|ir0|Q\(5) & \p1|ir0|Q\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(5),
	datad => \p1|ir0|ALT_INV_Q\(3),
	dataf => \p1|ir0|ALT_INV_Q\(4),
	combout => \p1|decX|Mux0~7_combout\);

-- Location: LABCELL_X14_Y10_N36
\p1|pc0|v[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|pc0|v[2]~0_combout\ = ( \p1|decX|Mux0~7_combout\ & ( \p1|fsm|Selector10~1_combout\ & ( ((\p1|fsm|Selector16~1_combout\ & ((!\p1|ir0|Q\(8)) # (\p1|fsm|Mux15~0_combout\)))) # (\p1|fsm|Selector16~0_combout\) ) ) ) # ( \p1|decX|Mux0~7_combout\ & ( 
-- !\p1|fsm|Selector10~1_combout\ ) ) # ( !\p1|decX|Mux0~7_combout\ & ( !\p1|fsm|Selector10~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000101000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector16~1_combout\,
	datab => \p1|fsm|ALT_INV_Mux15~0_combout\,
	datac => \p1|ir0|ALT_INV_Q\(8),
	datad => \p1|fsm|ALT_INV_Selector16~0_combout\,
	datae => \p1|decX|ALT_INV_Mux0~7_combout\,
	dataf => \p1|fsm|ALT_INV_Selector10~1_combout\,
	combout => \p1|pc0|v[2]~0_combout\);

-- Location: FF_X13_Y11_N38
\p1|pc0|v[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|pc0|Add0~9_sumout\,
	asdata => \p1|mux0|y[2]~22_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => \p1|fsm|Selector10~1_combout\,
	ena => \p1|pc0|v[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|pc0|v[2]~DUPLICATE_q\);

-- Location: LABCELL_X12_Y11_N6
\p1|pc0|v[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|pc0|v[0]~1_combout\ = ( !\p1|pc0|v\(0) & ( \p1|pc0|v\(3) & ( (\p1|pc0|v\(4) & (\p1|pc0|v\(1) & \p1|pc0|v[2]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|pc0|ALT_INV_v\(4),
	datac => \p1|pc0|ALT_INV_v\(1),
	datad => \p1|pc0|ALT_INV_v[2]~DUPLICATE_q\,
	datae => \p1|pc0|ALT_INV_v\(0),
	dataf => \p1|pc0|ALT_INV_v\(3),
	combout => \p1|pc0|v[0]~1_combout\);

-- Location: FF_X13_Y11_N47
\p1|pc0|v[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|pc0|Add0~21_sumout\,
	asdata => \p1|mux0|y[5]~31_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => \p1|fsm|Selector10~1_combout\,
	ena => \p1|pc0|v[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|pc0|v[5]~DUPLICATE_q\);

-- Location: MLABCELL_X13_Y11_N48
\p1|pc0|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|pc0|Add0~25_sumout\ = SUM(( \p1|pc0|v\(6) ) + ( GND ) + ( \p1|pc0|Add0~22\ ))
-- \p1|pc0|Add0~26\ = CARRY(( \p1|pc0|v\(6) ) + ( GND ) + ( \p1|pc0|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \p1|pc0|ALT_INV_v\(6),
	cin => \p1|pc0|Add0~22\,
	sumout => \p1|pc0|Add0~25_sumout\,
	cout => \p1|pc0|Add0~26\);

-- Location: MLABCELL_X13_Y11_N51
\p1|pc0|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|pc0|Add0~29_sumout\ = SUM(( \p1|pc0|v\(7) ) + ( GND ) + ( \p1|pc0|Add0~26\ ))
-- \p1|pc0|Add0~30\ = CARRY(( \p1|pc0|v\(7) ) + ( GND ) + ( \p1|pc0|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \p1|pc0|ALT_INV_v\(7),
	cin => \p1|pc0|Add0~26\,
	sumout => \p1|pc0|Add0~29_sumout\,
	cout => \p1|pc0|Add0~30\);

-- Location: FF_X13_Y11_N53
\p1|pc0|v[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|pc0|Add0~29_sumout\,
	asdata => \p1|mux0|y[7]~37_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => \p1|fsm|Selector10~1_combout\,
	ena => \p1|pc0|v[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|pc0|v\(7));

-- Location: MLABCELL_X13_Y11_N54
\p1|pc0|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|pc0|Add0~33_sumout\ = SUM(( \p1|pc0|v\(8) ) + ( GND ) + ( \p1|pc0|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \p1|pc0|ALT_INV_v\(8),
	cin => \p1|pc0|Add0~30\,
	sumout => \p1|pc0|Add0~33_sumout\);

-- Location: FF_X13_Y11_N55
\p1|pc0|v[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|pc0|Add0~33_sumout\,
	asdata => \p1|mux0|y[8]~40_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => \p1|fsm|Selector10~1_combout\,
	ena => \p1|pc0|v[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|pc0|v\(8));

-- Location: MLABCELL_X13_Y9_N42
\p1|pc0|v[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|pc0|v[0]~2_combout\ = ( \p1|pc0|v\(7) & ( \p1|pc0|v\(6) & ( (\p1|pc0|v[0]~1_combout\ & (\p1|pc0|v[5]~DUPLICATE_q\ & \p1|pc0|v\(8))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|pc0|ALT_INV_v[0]~1_combout\,
	datab => \p1|pc0|ALT_INV_v[5]~DUPLICATE_q\,
	datac => \p1|pc0|ALT_INV_v\(8),
	datae => \p1|pc0|ALT_INV_v\(7),
	dataf => \p1|pc0|ALT_INV_v\(6),
	combout => \p1|pc0|v[0]~2_combout\);

-- Location: MLABCELL_X13_Y9_N6
\p1|pc0|v[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|pc0|v[0]~3_combout\ = ( \p1|pc0|v\(0) & ( \p1|mux0|y[0]~16_combout\ & ( ((!\p1|pc0|v[2]~0_combout\) # ((\p1|pc0|Add0~1_sumout\ & !\p1|pc0|v[0]~2_combout\))) # (\p1|fsm|Selector10~1_combout\) ) ) ) # ( !\p1|pc0|v\(0) & ( \p1|mux0|y[0]~16_combout\ & ( 
-- (!\p1|fsm|Selector10~1_combout\ & (\p1|pc0|Add0~1_sumout\ & ((!\p1|pc0|v[0]~2_combout\)))) # (\p1|fsm|Selector10~1_combout\ & (((\p1|pc0|v[2]~0_combout\)))) ) ) ) # ( \p1|pc0|v\(0) & ( !\p1|mux0|y[0]~16_combout\ & ( (!\p1|pc0|v[2]~0_combout\) # 
-- ((!\p1|fsm|Selector10~1_combout\ & (\p1|pc0|Add0~1_sumout\ & !\p1|pc0|v[0]~2_combout\))) ) ) ) # ( !\p1|pc0|v\(0) & ( !\p1|mux0|y[0]~16_combout\ & ( (!\p1|fsm|Selector10~1_combout\ & (\p1|pc0|Add0~1_sumout\ & !\p1|pc0|v[0]~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000111100101111000000100111000001011111011111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector10~1_combout\,
	datab => \p1|pc0|ALT_INV_Add0~1_sumout\,
	datac => \p1|pc0|ALT_INV_v[2]~0_combout\,
	datad => \p1|pc0|ALT_INV_v[0]~2_combout\,
	datae => \p1|pc0|ALT_INV_v\(0),
	dataf => \p1|mux0|ALT_INV_y[0]~16_combout\,
	combout => \p1|pc0|v[0]~3_combout\);

-- Location: FF_X13_Y9_N7
\p1|pc0|v[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|pc0|v[0]~3_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|pc0|v\(0));

-- Location: MLABCELL_X13_Y11_N33
\p1|pc0|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|pc0|Add0~5_sumout\ = SUM(( \p1|pc0|v\(1) ) + ( GND ) + ( \p1|pc0|Add0~2\ ))
-- \p1|pc0|Add0~6\ = CARRY(( \p1|pc0|v\(1) ) + ( GND ) + ( \p1|pc0|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \p1|pc0|ALT_INV_v\(1),
	cin => \p1|pc0|Add0~2\,
	sumout => \p1|pc0|Add0~5_sumout\,
	cout => \p1|pc0|Add0~6\);

-- Location: FF_X13_Y11_N35
\p1|pc0|v[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|pc0|Add0~5_sumout\,
	asdata => \p1|mux0|y[1]~19_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => \p1|fsm|Selector10~1_combout\,
	ena => \p1|pc0|v[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|pc0|v\(1));

-- Location: MLABCELL_X13_Y11_N36
\p1|pc0|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|pc0|Add0~9_sumout\ = SUM(( \p1|pc0|v\(2) ) + ( GND ) + ( \p1|pc0|Add0~6\ ))
-- \p1|pc0|Add0~10\ = CARRY(( \p1|pc0|v\(2) ) + ( GND ) + ( \p1|pc0|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \p1|pc0|ALT_INV_v\(2),
	cin => \p1|pc0|Add0~6\,
	sumout => \p1|pc0|Add0~9_sumout\,
	cout => \p1|pc0|Add0~10\);

-- Location: FF_X13_Y11_N37
\p1|pc0|v[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|pc0|Add0~9_sumout\,
	asdata => \p1|mux0|y[2]~22_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => \p1|fsm|Selector10~1_combout\,
	ena => \p1|pc0|v[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|pc0|v\(2));

-- Location: MLABCELL_X13_Y11_N39
\p1|pc0|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|pc0|Add0~13_sumout\ = SUM(( \p1|pc0|v\(3) ) + ( GND ) + ( \p1|pc0|Add0~10\ ))
-- \p1|pc0|Add0~14\ = CARRY(( \p1|pc0|v\(3) ) + ( GND ) + ( \p1|pc0|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \p1|pc0|ALT_INV_v\(3),
	cin => \p1|pc0|Add0~10\,
	sumout => \p1|pc0|Add0~13_sumout\,
	cout => \p1|pc0|Add0~14\);

-- Location: FF_X13_Y11_N41
\p1|pc0|v[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|pc0|Add0~13_sumout\,
	asdata => \p1|mux0|y[3]~25_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => \p1|fsm|Selector10~1_combout\,
	ena => \p1|pc0|v[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|pc0|v\(3));

-- Location: MLABCELL_X13_Y11_N42
\p1|pc0|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|pc0|Add0~17_sumout\ = SUM(( \p1|pc0|v\(4) ) + ( GND ) + ( \p1|pc0|Add0~14\ ))
-- \p1|pc0|Add0~18\ = CARRY(( \p1|pc0|v\(4) ) + ( GND ) + ( \p1|pc0|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \p1|pc0|ALT_INV_v\(4),
	cin => \p1|pc0|Add0~14\,
	sumout => \p1|pc0|Add0~17_sumout\,
	cout => \p1|pc0|Add0~18\);

-- Location: FF_X13_Y11_N44
\p1|pc0|v[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|pc0|Add0~17_sumout\,
	asdata => \p1|mux0|y[4]~28_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => \p1|fsm|Selector10~1_combout\,
	ena => \p1|pc0|v[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|pc0|v\(4));

-- Location: MLABCELL_X13_Y11_N45
\p1|pc0|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|pc0|Add0~21_sumout\ = SUM(( \p1|pc0|v\(5) ) + ( GND ) + ( \p1|pc0|Add0~18\ ))
-- \p1|pc0|Add0~22\ = CARRY(( \p1|pc0|v\(5) ) + ( GND ) + ( \p1|pc0|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \p1|pc0|ALT_INV_v\(5),
	cin => \p1|pc0|Add0~18\,
	sumout => \p1|pc0|Add0~21_sumout\,
	cout => \p1|pc0|Add0~22\);

-- Location: FF_X13_Y11_N46
\p1|pc0|v[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|pc0|Add0~21_sumout\,
	asdata => \p1|mux0|y[5]~31_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => \p1|fsm|Selector10~1_combout\,
	ena => \p1|pc0|v[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|pc0|v\(5));

-- Location: FF_X13_Y11_N50
\p1|pc0|v[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|pc0|Add0~25_sumout\,
	asdata => \p1|mux0|y[6]~34_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => \p1|fsm|Selector10~1_combout\,
	ena => \p1|pc0|v[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|pc0|v\(6));

-- Location: MLABCELL_X13_Y10_N57
\p1|decX|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|decX|Mux0~0_combout\ = ( !\p1|ir0|Q\(4) & ( (!\p1|ir0|Q\(3) & \p1|ir0|Q\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(3),
	datac => \p1|ir0|ALT_INV_Q\(5),
	dataf => \p1|ir0|ALT_INV_Q\(4),
	combout => \p1|decX|Mux0~0_combout\);

-- Location: IOIBUF_X12_Y0_N35
\sw[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: FF_X12_Y10_N55
\u1|r0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \sw[2]~input_o\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|ff0|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|r0|Q\(2));

-- Location: LABCELL_X12_Y10_N45
\DIN[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIN[2]~2_combout\ = ( \p1|regAddr|Q[8]~DUPLICATE_q\ & ( (!\p1|regAddr|Q\(7) & ((\m0|altsyncram_component|auto_generated|q_a\(2)))) # (\p1|regAddr|Q\(7) & (\u1|r0|Q\(2))) ) ) # ( !\p1|regAddr|Q[8]~DUPLICATE_q\ & ( 
-- \m0|altsyncram_component|auto_generated|q_a\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|regAddr|ALT_INV_Q\(7),
	datac => \u1|r0|ALT_INV_Q\(2),
	datad => \m0|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	dataf => \p1|regAddr|ALT_INV_Q[8]~DUPLICATE_q\,
	combout => \DIN[2]~2_combout\);

-- Location: FF_X12_Y10_N32
\p1|ir0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DIN[2]~2_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|y_Q.TXX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(2));

-- Location: MLABCELL_X13_Y10_N15
\p1|fsm|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector5~0_combout\ = ( \p1|ir0|Q\(2) & ( !\p1|ir0|Q\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|ir0|ALT_INV_Q\(1),
	dataf => \p1|ir0|ALT_INV_Q\(2),
	combout => \p1|fsm|Selector5~0_combout\);

-- Location: MLABCELL_X13_Y10_N30
\p1|fsm|Selector5~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector5~3_combout\ = ( \p1|decX|Mux0~0_combout\ & ( \p1|fsm|Selector5~0_combout\ & ( (\p1|fsm|Selector8~0_combout\ & ((!\p1|ir0|Q\(8) & (!\p1|ir0|Q\(0))) # (\p1|ir0|Q\(8) & ((\p1|ir0|Q\(6)))))) ) ) ) # ( !\p1|decX|Mux0~0_combout\ & ( 
-- \p1|fsm|Selector5~0_combout\ & ( (\p1|fsm|Selector8~0_combout\ & (!\p1|ir0|Q\(0) & !\p1|ir0|Q\(8))) ) ) ) # ( \p1|decX|Mux0~0_combout\ & ( !\p1|fsm|Selector5~0_combout\ & ( (\p1|fsm|Selector8~0_combout\ & (\p1|ir0|Q\(6) & \p1|ir0|Q\(8))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010101000100000000000100010000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector8~0_combout\,
	datab => \p1|ir0|ALT_INV_Q\(0),
	datac => \p1|ir0|ALT_INV_Q\(6),
	datad => \p1|ir0|ALT_INV_Q\(8),
	datae => \p1|decX|ALT_INV_Mux0~0_combout\,
	dataf => \p1|fsm|ALT_INV_Selector5~0_combout\,
	combout => \p1|fsm|Selector5~3_combout\);

-- Location: MLABCELL_X13_Y10_N51
\p1|fsm|Selector6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector6~1_combout\ = ( \p1|decX|Mux0~1_combout\ & ( \p1|fsm|Selector5~0_combout\ & ( (\p1|fsm|Selector8~0_combout\ & ((!\p1|ir0|Q\(8) & ((\p1|ir0|Q\(0)))) # (\p1|ir0|Q\(8) & (\p1|ir0|Q\(6))))) ) ) ) # ( !\p1|decX|Mux0~1_combout\ & ( 
-- \p1|fsm|Selector5~0_combout\ & ( (\p1|ir0|Q\(0) & (!\p1|ir0|Q\(8) & \p1|fsm|Selector8~0_combout\)) ) ) ) # ( \p1|decX|Mux0~1_combout\ & ( !\p1|fsm|Selector5~0_combout\ & ( (\p1|ir0|Q\(6) & (\p1|ir0|Q\(8) & \p1|fsm|Selector8~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010100000000001100000000000000110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(6),
	datab => \p1|ir0|ALT_INV_Q\(0),
	datac => \p1|ir0|ALT_INV_Q\(8),
	datad => \p1|fsm|ALT_INV_Selector8~0_combout\,
	datae => \p1|decX|ALT_INV_Mux0~1_combout\,
	dataf => \p1|fsm|ALT_INV_Selector5~0_combout\,
	combout => \p1|fsm|Selector6~1_combout\);

-- Location: MLABCELL_X13_Y12_N27
\p1|fsm|Selector5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector5~2_combout\ = ( \p1|fsm|Selector5~0_combout\ & ( (\p1|fsm|Selector5~1_combout\ & ((!\p1|fsm|Mux3~0_combout\ & ((\p1|decX|Mux0~0_combout\))) # (\p1|fsm|Mux3~0_combout\ & (!\p1|ir0|Q\(0))))) ) ) # ( !\p1|fsm|Selector5~0_combout\ & ( 
-- (\p1|fsm|Selector5~1_combout\ & (!\p1|fsm|Mux3~0_combout\ & \p1|decX|Mux0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000010000010101000001000001010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector5~1_combout\,
	datab => \p1|fsm|ALT_INV_Mux3~0_combout\,
	datac => \p1|ir0|ALT_INV_Q\(0),
	datad => \p1|decX|ALT_INV_Mux0~0_combout\,
	dataf => \p1|fsm|ALT_INV_Selector5~0_combout\,
	combout => \p1|fsm|Selector5~2_combout\);

-- Location: MLABCELL_X13_Y12_N3
\p1|fsm|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector6~0_combout\ = ( \p1|fsm|Selector5~0_combout\ & ( (\p1|fsm|Selector5~1_combout\ & ((!\p1|fsm|Mux3~0_combout\ & ((\p1|decX|Mux0~1_combout\))) # (\p1|fsm|Mux3~0_combout\ & (\p1|ir0|Q\(0))))) ) ) # ( !\p1|fsm|Selector5~0_combout\ & ( 
-- (\p1|fsm|Selector5~1_combout\ & (!\p1|fsm|Mux3~0_combout\ & \p1|decX|Mux0~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000001010100010000000101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector5~1_combout\,
	datab => \p1|ir0|ALT_INV_Q\(0),
	datac => \p1|fsm|ALT_INV_Mux3~0_combout\,
	datad => \p1|decX|ALT_INV_Mux0~1_combout\,
	dataf => \p1|fsm|ALT_INV_Selector5~0_combout\,
	combout => \p1|fsm|Selector6~0_combout\);

-- Location: MLABCELL_X13_Y10_N54
\p1|mux0|y[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~1_combout\ = ( !\p1|fsm|Selector6~0_combout\ & ( (!\p1|fsm|Selector5~3_combout\ & (!\p1|fsm|Selector6~1_combout\ & !\p1|fsm|Selector5~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|fsm|ALT_INV_Selector5~3_combout\,
	datac => \p1|fsm|ALT_INV_Selector6~1_combout\,
	datad => \p1|fsm|ALT_INV_Selector5~2_combout\,
	dataf => \p1|fsm|ALT_INV_Selector6~0_combout\,
	combout => \p1|mux0|y[1]~1_combout\);

-- Location: LABCELL_X14_Y13_N12
\p1|reg5|Q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg5|Q[6]~feeder_combout\ = ( \p1|mux0|y[6]~34_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[6]~34_combout\,
	combout => \p1|reg5|Q[6]~feeder_combout\);

-- Location: FF_X14_Y13_N13
\p1|reg5|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg5|Q[6]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(6));

-- Location: LABCELL_X14_Y10_N54
\p1|fsm|Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector15~0_combout\ = ( \p1|fsm|Mux15~0_combout\ & ( (\p1|decX|Mux0~0_combout\ & ((\p1|fsm|Selector16~0_combout\) # (\p1|fsm|Selector16~1_combout\))) ) ) # ( !\p1|fsm|Mux15~0_combout\ & ( (\p1|decX|Mux0~0_combout\ & 
-- (((\p1|fsm|Selector16~1_combout\ & !\p1|ir0|Q\(8))) # (\p1|fsm|Selector16~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110011000000000111001100000000011101110000000001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector16~1_combout\,
	datab => \p1|fsm|ALT_INV_Selector16~0_combout\,
	datac => \p1|ir0|ALT_INV_Q\(8),
	datad => \p1|decX|ALT_INV_Mux0~0_combout\,
	dataf => \p1|fsm|ALT_INV_Mux15~0_combout\,
	combout => \p1|fsm|Selector15~0_combout\);

-- Location: FF_X14_Y11_N44
\p1|reg4|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[6]~34_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg4|Q\(6));

-- Location: LABCELL_X12_Y10_N51
\p1|fsm|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector7~0_combout\ = ( \p1|ir0|Q\(2) & ( (!\p1|ir0|Q\(0) & \p1|ir0|Q\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|ir0|ALT_INV_Q\(0),
	datad => \p1|ir0|ALT_INV_Q\(1),
	dataf => \p1|ir0|ALT_INV_Q\(2),
	combout => \p1|fsm|Selector7~0_combout\);

-- Location: LABCELL_X14_Y11_N3
\p1|fsm|Selector7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector7~1_combout\ = ( \p1|fsm|Mux3~0_combout\ & ( (\p1|fsm|Selector7~0_combout\ & \p1|fsm|Selector5~1_combout\) ) ) # ( !\p1|fsm|Mux3~0_combout\ & ( (\p1|decX|Mux0~2_combout\ & \p1|fsm|Selector5~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector7~0_combout\,
	datac => \p1|decX|ALT_INV_Mux0~2_combout\,
	datad => \p1|fsm|ALT_INV_Selector5~1_combout\,
	dataf => \p1|fsm|ALT_INV_Mux3~0_combout\,
	combout => \p1|fsm|Selector7~1_combout\);

-- Location: MLABCELL_X13_Y10_N45
\p1|fsm|Selector7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector7~2_combout\ = ( \p1|fsm|Selector7~0_combout\ & ( (\p1|fsm|Selector8~0_combout\ & ((!\p1|ir0|Q\(8)) # ((\p1|ir0|Q\(6) & \p1|decX|Mux0~2_combout\)))) ) ) # ( !\p1|fsm|Selector7~0_combout\ & ( (\p1|ir0|Q\(6) & (\p1|ir0|Q\(8) & 
-- (\p1|decX|Mux0~2_combout\ & \p1|fsm|Selector8~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000110011010000000011001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(6),
	datab => \p1|ir0|ALT_INV_Q\(8),
	datac => \p1|decX|ALT_INV_Mux0~2_combout\,
	datad => \p1|fsm|ALT_INV_Selector8~0_combout\,
	dataf => \p1|fsm|ALT_INV_Selector7~0_combout\,
	combout => \p1|fsm|Selector7~2_combout\);

-- Location: LABCELL_X14_Y11_N24
\p1|mux0|y[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~0_combout\ = ( \p1|fsm|Selector6~1_combout\ & ( \p1|fsm|Selector6~0_combout\ & ( (!\p1|fsm|Selector5~3_combout\ & !\p1|fsm|Selector5~2_combout\) ) ) ) # ( !\p1|fsm|Selector6~1_combout\ & ( \p1|fsm|Selector6~0_combout\ & ( 
-- (!\p1|fsm|Selector5~3_combout\ & !\p1|fsm|Selector5~2_combout\) ) ) ) # ( \p1|fsm|Selector6~1_combout\ & ( !\p1|fsm|Selector6~0_combout\ & ( (!\p1|fsm|Selector5~3_combout\ & !\p1|fsm|Selector5~2_combout\) ) ) ) # ( !\p1|fsm|Selector6~1_combout\ & ( 
-- !\p1|fsm|Selector6~0_combout\ & ( (!\p1|fsm|Selector5~3_combout\ & (!\p1|fsm|Selector5~2_combout\ & ((\p1|fsm|Selector7~2_combout\) # (\p1|fsm|Selector7~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011000000110000001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector7~1_combout\,
	datab => \p1|fsm|ALT_INV_Selector5~3_combout\,
	datac => \p1|fsm|ALT_INV_Selector5~2_combout\,
	datad => \p1|fsm|ALT_INV_Selector7~2_combout\,
	datae => \p1|fsm|ALT_INV_Selector6~1_combout\,
	dataf => \p1|fsm|ALT_INV_Selector6~0_combout\,
	combout => \p1|mux0|y[1]~0_combout\);

-- Location: LABCELL_X14_Y11_N42
\p1|mux0|y[6]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[6]~32_combout\ = ( \p1|reg4|Q\(6) & ( \p1|mux0|y[1]~0_combout\ & ( (!\p1|mux0|y[1]~1_combout\ & ((\p1|reg5|Q\(6)))) # (\p1|mux0|y[1]~1_combout\ & (\p1|reg6|Q\(6))) ) ) ) # ( !\p1|reg4|Q\(6) & ( \p1|mux0|y[1]~0_combout\ & ( 
-- (!\p1|mux0|y[1]~1_combout\ & ((\p1|reg5|Q\(6)))) # (\p1|mux0|y[1]~1_combout\ & (\p1|reg6|Q\(6))) ) ) ) # ( \p1|reg4|Q\(6) & ( !\p1|mux0|y[1]~0_combout\ & ( (!\p1|mux0|y[1]~1_combout\) # (\p1|pc0|v\(6)) ) ) ) # ( !\p1|reg4|Q\(6) & ( 
-- !\p1|mux0|y[1]~0_combout\ & ( (\p1|pc0|v\(6) & \p1|mux0|y[1]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg6|ALT_INV_Q\(6),
	datab => \p1|pc0|ALT_INV_v\(6),
	datac => \p1|mux0|ALT_INV_y[1]~1_combout\,
	datad => \p1|reg5|ALT_INV_Q\(6),
	datae => \p1|reg4|ALT_INV_Q\(6),
	dataf => \p1|mux0|ALT_INV_y[1]~0_combout\,
	combout => \p1|mux0|y[6]~32_combout\);

-- Location: LABCELL_X14_Y11_N36
\p1|mux0|y[6]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[6]~33_combout\ = ( \p1|reg1|Q\(6) & ( \p1|mux0|y[6]~32_combout\ & ( (!\p1|mux0|y[1]~3_combout\) # ((!\p1|mux0|y[1]~4_combout\ & (\p1|reg2|Q\(6))) # (\p1|mux0|y[1]~4_combout\ & ((\p1|reg3|Q\(6))))) ) ) ) # ( !\p1|reg1|Q\(6) & ( 
-- \p1|mux0|y[6]~32_combout\ & ( (!\p1|mux0|y[1]~4_combout\ & (\p1|reg2|Q\(6) & ((\p1|mux0|y[1]~3_combout\)))) # (\p1|mux0|y[1]~4_combout\ & (((!\p1|mux0|y[1]~3_combout\) # (\p1|reg3|Q\(6))))) ) ) ) # ( \p1|reg1|Q\(6) & ( !\p1|mux0|y[6]~32_combout\ & ( 
-- (!\p1|mux0|y[1]~4_combout\ & (((!\p1|mux0|y[1]~3_combout\)) # (\p1|reg2|Q\(6)))) # (\p1|mux0|y[1]~4_combout\ & (((\p1|reg3|Q\(6) & \p1|mux0|y[1]~3_combout\)))) ) ) ) # ( !\p1|reg1|Q\(6) & ( !\p1|mux0|y[6]~32_combout\ & ( (\p1|mux0|y[1]~3_combout\ & 
-- ((!\p1|mux0|y[1]~4_combout\ & (\p1|reg2|Q\(6))) # (\p1|mux0|y[1]~4_combout\ & ((\p1|reg3|Q\(6)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011111100000101001100001111010100111111111101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg2|ALT_INV_Q\(6),
	datab => \p1|reg3|ALT_INV_Q\(6),
	datac => \p1|mux0|ALT_INV_y[1]~4_combout\,
	datad => \p1|mux0|ALT_INV_y[1]~3_combout\,
	datae => \p1|reg1|ALT_INV_Q\(6),
	dataf => \p1|mux0|ALT_INV_y[6]~32_combout\,
	combout => \p1|mux0|y[6]~33_combout\);

-- Location: LABCELL_X12_Y10_N42
\p1|decX|Mux0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|decX|Mux0~6_combout\ = (!\p1|ir0|Q\(4) & (!\p1|ir0|Q\(3) & !\p1|ir0|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|ir0|ALT_INV_Q\(4),
	datac => \p1|ir0|ALT_INV_Q\(3),
	datad => \p1|ir0|ALT_INV_Q\(5),
	combout => \p1|decX|Mux0~6_combout\);

-- Location: LABCELL_X12_Y10_N57
\p1|fsm|Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector11~0_combout\ = ( \p1|fsm|Selector16~1_combout\ & ( (\p1|decX|Mux0~6_combout\ & (((!\p1|ir0|Q\(8)) # (\p1|fsm|Mux15~0_combout\)) # (\p1|fsm|Selector16~0_combout\))) ) ) # ( !\p1|fsm|Selector16~1_combout\ & ( (\p1|fsm|Selector16~0_combout\ 
-- & \p1|decX|Mux0~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100110001001100110011000100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector16~0_combout\,
	datab => \p1|decX|ALT_INV_Mux0~6_combout\,
	datac => \p1|ir0|ALT_INV_Q\(8),
	datad => \p1|fsm|ALT_INV_Mux15~0_combout\,
	dataf => \p1|fsm|ALT_INV_Selector16~1_combout\,
	combout => \p1|fsm|Selector11~0_combout\);

-- Location: FF_X14_Y12_N38
\p1|reg0|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|mux0|y[6]~34_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(6));

-- Location: FF_X13_Y12_N17
\p1|regA|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[6]~34_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regA|Q\(6));

-- Location: MLABCELL_X13_Y12_N48
\p1|addsub0|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~21_sumout\ = SUM(( !\p1|mux0|y[5]~31_combout\ $ (((!\p1|fsm|y_Q.T2~DUPLICATE_q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|regA|Q\(5) ) + ( \p1|addsub0|Add0~18\ ))
-- \p1|addsub0|Add0~22\ = CARRY(( !\p1|mux0|y[5]~31_combout\ $ (((!\p1|fsm|y_Q.T2~DUPLICATE_q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|regA|Q\(5) ) + ( \p1|addsub0|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T2~DUPLICATE_q\,
	datab => \p1|regA|ALT_INV_Q\(5),
	datac => \p1|mux0|ALT_INV_y[5]~31_combout\,
	datad => \p1|fsm|ALT_INV_Mux28~0_combout\,
	cin => \p1|addsub0|Add0~18\,
	sumout => \p1|addsub0|Add0~21_sumout\,
	cout => \p1|addsub0|Add0~22\);

-- Location: MLABCELL_X13_Y12_N51
\p1|addsub0|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~25_sumout\ = SUM(( !\p1|mux0|y[6]~34_combout\ $ (((!\p1|fsm|y_Q.T2~DUPLICATE_q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|regA|Q\(6) ) + ( \p1|addsub0|Add0~22\ ))
-- \p1|addsub0|Add0~26\ = CARRY(( !\p1|mux0|y[6]~34_combout\ $ (((!\p1|fsm|y_Q.T2~DUPLICATE_q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|regA|Q\(6) ) + ( \p1|addsub0|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T2~DUPLICATE_q\,
	datac => \p1|mux0|ALT_INV_y[6]~34_combout\,
	datad => \p1|fsm|ALT_INV_Mux28~0_combout\,
	dataf => \p1|regA|ALT_INV_Q\(6),
	cin => \p1|addsub0|Add0~22\,
	sumout => \p1|addsub0|Add0~25_sumout\,
	cout => \p1|addsub0|Add0~26\);

-- Location: FF_X13_Y12_N52
\p1|regG|Q[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|addsub0|Add0~25_sumout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regG|Q[6]~DUPLICATE_q\);

-- Location: LABCELL_X14_Y12_N36
\p1|mux0|y[6]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[6]~34_combout\ = ( \p1|reg0|Q\(6) & ( \p1|regG|Q[6]~DUPLICATE_q\ & ( (!\p1|mux0|y[1]~14_combout\) # ((!\p1|mux0|y[1]~15_combout\ & (\DIN[6]~6_combout\)) # (\p1|mux0|y[1]~15_combout\ & ((\p1|mux0|y[6]~33_combout\)))) ) ) ) # ( !\p1|reg0|Q\(6) & 
-- ( \p1|regG|Q[6]~DUPLICATE_q\ & ( (!\p1|mux0|y[1]~15_combout\ & (((!\p1|mux0|y[1]~14_combout\)) # (\DIN[6]~6_combout\))) # (\p1|mux0|y[1]~15_combout\ & (((\p1|mux0|y[6]~33_combout\ & \p1|mux0|y[1]~14_combout\)))) ) ) ) # ( \p1|reg0|Q\(6) & ( 
-- !\p1|regG|Q[6]~DUPLICATE_q\ & ( (!\p1|mux0|y[1]~15_combout\ & (\DIN[6]~6_combout\ & ((\p1|mux0|y[1]~14_combout\)))) # (\p1|mux0|y[1]~15_combout\ & (((!\p1|mux0|y[1]~14_combout\) # (\p1|mux0|y[6]~33_combout\)))) ) ) ) # ( !\p1|reg0|Q\(6) & ( 
-- !\p1|regG|Q[6]~DUPLICATE_q\ & ( (\p1|mux0|y[1]~14_combout\ & ((!\p1|mux0|y[1]~15_combout\ & (\DIN[6]~6_combout\)) # (\p1|mux0|y[1]~15_combout\ & ((\p1|mux0|y[6]~33_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011000011110101001111110000010100111111111101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DIN[6]~6_combout\,
	datab => \p1|mux0|ALT_INV_y[6]~33_combout\,
	datac => \p1|mux0|ALT_INV_y[1]~15_combout\,
	datad => \p1|mux0|ALT_INV_y[1]~14_combout\,
	datae => \p1|reg0|ALT_INV_Q\(6),
	dataf => \p1|regG|ALT_INV_Q[6]~DUPLICATE_q\,
	combout => \p1|mux0|y[6]~34_combout\);

-- Location: FF_X12_Y12_N43
\p1|regAddr|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[6]~34_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regAddr|Q\(6));

-- Location: LABCELL_X12_Y10_N30
\DIN[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIN[3]~3_combout\ = ( \m0|altsyncram_component|auto_generated|q_a\(3) & ( (!\p1|regAddr|Q\(7)) # ((!\p1|regAddr|Q[8]~DUPLICATE_q\) # (\u1|r0|Q\(3))) ) ) # ( !\m0|altsyncram_component|auto_generated|q_a\(3) & ( (\p1|regAddr|Q\(7) & 
-- (\p1|regAddr|Q[8]~DUPLICATE_q\ & \u1|r0|Q\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000111101111111011111110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|regAddr|ALT_INV_Q\(7),
	datab => \p1|regAddr|ALT_INV_Q[8]~DUPLICATE_q\,
	datac => \u1|r0|ALT_INV_Q\(3),
	dataf => \m0|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	combout => \DIN[3]~3_combout\);

-- Location: FF_X13_Y10_N29
\p1|ir0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DIN[3]~3_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|y_Q.TXX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(3));

-- Location: MLABCELL_X13_Y10_N24
\p1|decX|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|decX|Mux0~1_combout\ = ( \p1|ir0|Q\(5) & ( (\p1|ir0|Q\(3) & !\p1|ir0|Q\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|ir0|ALT_INV_Q\(3),
	datad => \p1|ir0|ALT_INV_Q\(4),
	dataf => \p1|ir0|ALT_INV_Q\(5),
	combout => \p1|decX|Mux0~1_combout\);

-- Location: LABCELL_X14_Y10_N57
\p1|fsm|Selector16~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector16~2_combout\ = ( \p1|decX|Mux0~1_combout\ & ( ((\p1|fsm|Selector16~1_combout\ & ((!\p1|ir0|Q\(8)) # (\p1|fsm|Mux15~0_combout\)))) # (\p1|fsm|Selector16~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001110111001101110111011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector16~1_combout\,
	datab => \p1|fsm|ALT_INV_Selector16~0_combout\,
	datac => \p1|fsm|ALT_INV_Mux15~0_combout\,
	datad => \p1|ir0|ALT_INV_Q\(8),
	dataf => \p1|decX|ALT_INV_Mux0~1_combout\,
	combout => \p1|fsm|Selector16~2_combout\);

-- Location: FF_X13_Y9_N13
\p1|reg5|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[4]~28_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(4));

-- Location: LABCELL_X12_Y13_N3
\p1|reg6|Q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg6|Q[4]~feeder_combout\ = ( \p1|mux0|y[4]~28_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[4]~28_combout\,
	combout => \p1|reg6|Q[4]~feeder_combout\);

-- Location: FF_X12_Y13_N5
\p1|reg6|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg6|Q[4]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(4));

-- Location: FF_X12_Y11_N44
\p1|reg4|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[4]~28_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg4|Q\(4));

-- Location: LABCELL_X12_Y11_N42
\p1|mux0|y[4]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[4]~26_combout\ = ( \p1|reg4|Q\(4) & ( \p1|mux0|y[1]~1_combout\ & ( (!\p1|mux0|y[1]~0_combout\ & ((\p1|pc0|v\(4)))) # (\p1|mux0|y[1]~0_combout\ & (\p1|reg6|Q\(4))) ) ) ) # ( !\p1|reg4|Q\(4) & ( \p1|mux0|y[1]~1_combout\ & ( 
-- (!\p1|mux0|y[1]~0_combout\ & ((\p1|pc0|v\(4)))) # (\p1|mux0|y[1]~0_combout\ & (\p1|reg6|Q\(4))) ) ) ) # ( \p1|reg4|Q\(4) & ( !\p1|mux0|y[1]~1_combout\ & ( (!\p1|mux0|y[1]~0_combout\) # (\p1|reg5|Q\(4)) ) ) ) # ( !\p1|reg4|Q\(4) & ( 
-- !\p1|mux0|y[1]~1_combout\ & ( (\p1|reg5|Q\(4) & \p1|mux0|y[1]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111101011111010100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg5|ALT_INV_Q\(4),
	datab => \p1|reg6|ALT_INV_Q\(4),
	datac => \p1|mux0|ALT_INV_y[1]~0_combout\,
	datad => \p1|pc0|ALT_INV_v\(4),
	datae => \p1|reg4|ALT_INV_Q\(4),
	dataf => \p1|mux0|ALT_INV_y[1]~1_combout\,
	combout => \p1|mux0|y[4]~26_combout\);

-- Location: LABCELL_X12_Y11_N48
\p1|mux0|y[4]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[4]~27_combout\ = ( \p1|reg1|Q\(4) & ( \p1|mux0|y[4]~26_combout\ & ( (!\p1|mux0|y[1]~3_combout\) # ((!\p1|mux0|y[1]~4_combout\ & ((\p1|reg2|Q\(4)))) # (\p1|mux0|y[1]~4_combout\ & (\p1|reg3|Q\(4)))) ) ) ) # ( !\p1|reg1|Q\(4) & ( 
-- \p1|mux0|y[4]~26_combout\ & ( (!\p1|mux0|y[1]~4_combout\ & (((\p1|reg2|Q\(4) & \p1|mux0|y[1]~3_combout\)))) # (\p1|mux0|y[1]~4_combout\ & (((!\p1|mux0|y[1]~3_combout\)) # (\p1|reg3|Q\(4)))) ) ) ) # ( \p1|reg1|Q\(4) & ( !\p1|mux0|y[4]~26_combout\ & ( 
-- (!\p1|mux0|y[1]~4_combout\ & (((!\p1|mux0|y[1]~3_combout\) # (\p1|reg2|Q\(4))))) # (\p1|mux0|y[1]~4_combout\ & (\p1|reg3|Q\(4) & ((\p1|mux0|y[1]~3_combout\)))) ) ) ) # ( !\p1|reg1|Q\(4) & ( !\p1|mux0|y[4]~26_combout\ & ( (\p1|mux0|y[1]~3_combout\ & 
-- ((!\p1|mux0|y[1]~4_combout\ & ((\p1|reg2|Q\(4)))) # (\p1|mux0|y[1]~4_combout\ & (\p1|reg3|Q\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110101111100000011010100001111001101011111111100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg3|ALT_INV_Q\(4),
	datab => \p1|reg2|ALT_INV_Q\(4),
	datac => \p1|mux0|ALT_INV_y[1]~4_combout\,
	datad => \p1|mux0|ALT_INV_y[1]~3_combout\,
	datae => \p1|reg1|ALT_INV_Q\(4),
	dataf => \p1|mux0|ALT_INV_y[4]~26_combout\,
	combout => \p1|mux0|y[4]~27_combout\);

-- Location: FF_X12_Y11_N38
\p1|reg0|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|mux0|y[4]~28_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(4));

-- Location: LABCELL_X12_Y11_N36
\p1|mux0|y[4]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[4]~28_combout\ = ( \p1|reg0|Q\(4) & ( \p1|mux0|y[1]~14_combout\ & ( (!\p1|mux0|y[1]~15_combout\ & (\DIN[4]~4_combout\)) # (\p1|mux0|y[1]~15_combout\ & ((\p1|mux0|y[4]~27_combout\))) ) ) ) # ( !\p1|reg0|Q\(4) & ( \p1|mux0|y[1]~14_combout\ & ( 
-- (!\p1|mux0|y[1]~15_combout\ & (\DIN[4]~4_combout\)) # (\p1|mux0|y[1]~15_combout\ & ((\p1|mux0|y[4]~27_combout\))) ) ) ) # ( \p1|reg0|Q\(4) & ( !\p1|mux0|y[1]~14_combout\ & ( (\p1|mux0|y[1]~15_combout\) # (\p1|regG|Q\(4)) ) ) ) # ( !\p1|reg0|Q\(4) & ( 
-- !\p1|mux0|y[1]~14_combout\ & ( (\p1|regG|Q\(4) & !\p1|mux0|y[1]~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|regG|ALT_INV_Q\(4),
	datab => \ALT_INV_DIN[4]~4_combout\,
	datac => \p1|mux0|ALT_INV_y[4]~27_combout\,
	datad => \p1|mux0|ALT_INV_y[1]~15_combout\,
	datae => \p1|reg0|ALT_INV_Q\(4),
	dataf => \p1|mux0|ALT_INV_y[1]~14_combout\,
	combout => \p1|mux0|y[4]~28_combout\);

-- Location: LABCELL_X12_Y12_N39
\p1|regAddr|Q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|regAddr|Q[4]~feeder_combout\ = ( \p1|mux0|y[4]~28_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[4]~28_combout\,
	combout => \p1|regAddr|Q[4]~feeder_combout\);

-- Location: FF_X12_Y12_N41
\p1|regAddr|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|regAddr|Q[4]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regAddr|Q\(4));

-- Location: LABCELL_X12_Y10_N12
\DIN[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIN[4]~4_combout\ = ( \m0|altsyncram_component|auto_generated|q_a\(4) & ( ((!\p1|regAddr|Q[8]~DUPLICATE_q\) # (!\p1|regAddr|Q\(7))) # (\u1|r0|Q\(4)) ) ) # ( !\m0|altsyncram_component|auto_generated|q_a\(4) & ( (\u1|r0|Q\(4) & 
-- (\p1|regAddr|Q[8]~DUPLICATE_q\ & \p1|regAddr|Q\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000111111101111111011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|r0|ALT_INV_Q\(4),
	datab => \p1|regAddr|ALT_INV_Q[8]~DUPLICATE_q\,
	datac => \p1|regAddr|ALT_INV_Q\(7),
	dataf => \m0|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	combout => \DIN[4]~4_combout\);

-- Location: FF_X13_Y10_N26
\p1|ir0|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DIN[4]~4_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|y_Q.TXX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(4));

-- Location: MLABCELL_X13_Y10_N42
\p1|decX|Mux0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|decX|Mux0~5_combout\ = ( !\p1|ir0|Q\(5) & ( (!\p1|ir0|Q\(4) & \p1|ir0|Q\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|ir0|ALT_INV_Q\(4),
	datad => \p1|ir0|ALT_INV_Q\(3),
	dataf => \p1|ir0|ALT_INV_Q\(5),
	combout => \p1|decX|Mux0~5_combout\);

-- Location: LABCELL_X14_Y10_N45
\p1|fsm|Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector12~0_combout\ = ( \p1|fsm|Selector16~0_combout\ & ( \p1|decX|Mux0~5_combout\ ) ) # ( !\p1|fsm|Selector16~0_combout\ & ( (\p1|fsm|Selector16~1_combout\ & (\p1|decX|Mux0~5_combout\ & ((!\p1|ir0|Q\(8)) # (\p1|fsm|Mux15~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000001000001010000000100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector16~1_combout\,
	datab => \p1|fsm|ALT_INV_Mux15~0_combout\,
	datac => \p1|decX|ALT_INV_Mux0~5_combout\,
	datad => \p1|ir0|ALT_INV_Q\(8),
	dataf => \p1|fsm|ALT_INV_Selector16~0_combout\,
	combout => \p1|fsm|Selector12~0_combout\);

-- Location: FF_X12_Y11_N56
\p1|reg1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[3]~25_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(3));

-- Location: MLABCELL_X13_Y9_N30
\p1|reg5|Q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg5|Q[3]~feeder_combout\ = ( \p1|mux0|y[3]~25_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[3]~25_combout\,
	combout => \p1|reg5|Q[3]~feeder_combout\);

-- Location: FF_X13_Y9_N31
\p1|reg5|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg5|Q[3]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(3));

-- Location: LABCELL_X10_Y11_N39
\p1|reg6|Q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg6|Q[3]~feeder_combout\ = ( \p1|mux0|y[3]~25_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[3]~25_combout\,
	combout => \p1|reg6|Q[3]~feeder_combout\);

-- Location: FF_X10_Y11_N40
\p1|reg6|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg6|Q[3]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(3));

-- Location: FF_X12_Y11_N20
\p1|reg4|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[3]~25_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg4|Q\(3));

-- Location: LABCELL_X12_Y11_N18
\p1|mux0|y[3]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[3]~23_combout\ = ( \p1|reg4|Q\(3) & ( \p1|mux0|y[1]~1_combout\ & ( (!\p1|mux0|y[1]~0_combout\ & (\p1|pc0|v\(3))) # (\p1|mux0|y[1]~0_combout\ & ((\p1|reg6|Q\(3)))) ) ) ) # ( !\p1|reg4|Q\(3) & ( \p1|mux0|y[1]~1_combout\ & ( 
-- (!\p1|mux0|y[1]~0_combout\ & (\p1|pc0|v\(3))) # (\p1|mux0|y[1]~0_combout\ & ((\p1|reg6|Q\(3)))) ) ) ) # ( \p1|reg4|Q\(3) & ( !\p1|mux0|y[1]~1_combout\ & ( (!\p1|mux0|y[1]~0_combout\) # (\p1|reg5|Q\(3)) ) ) ) # ( !\p1|reg4|Q\(3) & ( 
-- !\p1|mux0|y[1]~1_combout\ & ( (\p1|reg5|Q\(3) & \p1|mux0|y[1]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|pc0|ALT_INV_v\(3),
	datab => \p1|reg5|ALT_INV_Q\(3),
	datac => \p1|mux0|ALT_INV_y[1]~0_combout\,
	datad => \p1|reg6|ALT_INV_Q\(3),
	datae => \p1|reg4|ALT_INV_Q\(3),
	dataf => \p1|mux0|ALT_INV_y[1]~1_combout\,
	combout => \p1|mux0|y[3]~23_combout\);

-- Location: LABCELL_X12_Y11_N54
\p1|mux0|y[3]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[3]~24_combout\ = ( \p1|reg1|Q\(3) & ( \p1|mux0|y[3]~23_combout\ & ( (!\p1|mux0|y[1]~3_combout\) # ((!\p1|mux0|y[1]~4_combout\ & ((\p1|reg2|Q\(3)))) # (\p1|mux0|y[1]~4_combout\ & (\p1|reg3|Q\(3)))) ) ) ) # ( !\p1|reg1|Q\(3) & ( 
-- \p1|mux0|y[3]~23_combout\ & ( (!\p1|mux0|y[1]~4_combout\ & (((\p1|reg2|Q\(3) & \p1|mux0|y[1]~3_combout\)))) # (\p1|mux0|y[1]~4_combout\ & (((!\p1|mux0|y[1]~3_combout\)) # (\p1|reg3|Q\(3)))) ) ) ) # ( \p1|reg1|Q\(3) & ( !\p1|mux0|y[3]~23_combout\ & ( 
-- (!\p1|mux0|y[1]~4_combout\ & (((!\p1|mux0|y[1]~3_combout\) # (\p1|reg2|Q\(3))))) # (\p1|mux0|y[1]~4_combout\ & (\p1|reg3|Q\(3) & ((\p1|mux0|y[1]~3_combout\)))) ) ) ) # ( !\p1|reg1|Q\(3) & ( !\p1|mux0|y[3]~23_combout\ & ( (\p1|mux0|y[1]~3_combout\ & 
-- ((!\p1|mux0|y[1]~4_combout\ & ((\p1|reg2|Q\(3)))) # (\p1|mux0|y[1]~4_combout\ & (\p1|reg3|Q\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110101111100000011010100001111001101011111111100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg3|ALT_INV_Q\(3),
	datab => \p1|reg2|ALT_INV_Q\(3),
	datac => \p1|mux0|ALT_INV_y[1]~4_combout\,
	datad => \p1|mux0|ALT_INV_y[1]~3_combout\,
	datae => \p1|reg1|ALT_INV_Q\(3),
	dataf => \p1|mux0|ALT_INV_y[3]~23_combout\,
	combout => \p1|mux0|y[3]~24_combout\);

-- Location: FF_X13_Y12_N43
\p1|regG|Q[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|addsub0|Add0~13_sumout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regG|Q[3]~DUPLICATE_q\);

-- Location: FF_X12_Y11_N2
\p1|reg0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|mux0|y[3]~25_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(3));

-- Location: LABCELL_X12_Y11_N0
\p1|mux0|y[3]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[3]~25_combout\ = ( \p1|reg0|Q\(3) & ( \DIN[3]~3_combout\ & ( (!\p1|mux0|y[1]~14_combout\ & (((\p1|mux0|y[1]~15_combout\) # (\p1|regG|Q[3]~DUPLICATE_q\)))) # (\p1|mux0|y[1]~14_combout\ & (((!\p1|mux0|y[1]~15_combout\)) # 
-- (\p1|mux0|y[3]~24_combout\))) ) ) ) # ( !\p1|reg0|Q\(3) & ( \DIN[3]~3_combout\ & ( (!\p1|mux0|y[1]~14_combout\ & (((\p1|regG|Q[3]~DUPLICATE_q\ & !\p1|mux0|y[1]~15_combout\)))) # (\p1|mux0|y[1]~14_combout\ & (((!\p1|mux0|y[1]~15_combout\)) # 
-- (\p1|mux0|y[3]~24_combout\))) ) ) ) # ( \p1|reg0|Q\(3) & ( !\DIN[3]~3_combout\ & ( (!\p1|mux0|y[1]~14_combout\ & (((\p1|mux0|y[1]~15_combout\) # (\p1|regG|Q[3]~DUPLICATE_q\)))) # (\p1|mux0|y[1]~14_combout\ & (\p1|mux0|y[3]~24_combout\ & 
-- ((\p1|mux0|y[1]~15_combout\)))) ) ) ) # ( !\p1|reg0|Q\(3) & ( !\DIN[3]~3_combout\ & ( (!\p1|mux0|y[1]~14_combout\ & (((\p1|regG|Q[3]~DUPLICATE_q\ & !\p1|mux0|y[1]~15_combout\)))) # (\p1|mux0|y[1]~14_combout\ & (\p1|mux0|y[3]~24_combout\ & 
-- ((\p1|mux0|y[1]~15_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000101001100001111010100111111000001010011111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[3]~24_combout\,
	datab => \p1|regG|ALT_INV_Q[3]~DUPLICATE_q\,
	datac => \p1|mux0|ALT_INV_y[1]~14_combout\,
	datad => \p1|mux0|ALT_INV_y[1]~15_combout\,
	datae => \p1|reg0|ALT_INV_Q\(3),
	dataf => \ALT_INV_DIN[3]~3_combout\,
	combout => \p1|mux0|y[3]~25_combout\);

-- Location: LABCELL_X12_Y12_N57
\p1|regAddr|Q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|regAddr|Q[3]~feeder_combout\ = ( \p1|mux0|y[3]~25_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[3]~25_combout\,
	combout => \p1|regAddr|Q[3]~feeder_combout\);

-- Location: FF_X12_Y12_N58
\p1|regAddr|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|regAddr|Q[3]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regAddr|Q\(3));

-- Location: LABCELL_X12_Y10_N48
\DIN[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIN[0]~0_combout\ = ( \m0|altsyncram_component|auto_generated|q_a\(0) & ( ((!\p1|regAddr|Q[8]~DUPLICATE_q\) # (!\p1|regAddr|Q\(7))) # (\u1|r0|Q\(0)) ) ) # ( !\m0|altsyncram_component|auto_generated|q_a\(0) & ( (\u1|r0|Q\(0) & 
-- (\p1|regAddr|Q[8]~DUPLICATE_q\ & \p1|regAddr|Q\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000111111101111111011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|r0|ALT_INV_Q\(0),
	datab => \p1|regAddr|ALT_INV_Q[8]~DUPLICATE_q\,
	datac => \p1|regAddr|ALT_INV_Q\(7),
	dataf => \m0|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \DIN[0]~0_combout\);

-- Location: FF_X12_Y10_N14
\p1|ir0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DIN[0]~0_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|y_Q.TXX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(0));

-- Location: LABCELL_X12_Y10_N6
\p1|fsm|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector2~0_combout\ = ( !\p1|ir0|Q\(2) & ( !\p1|ir0|Q\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \p1|ir0|ALT_INV_Q\(1),
	dataf => \p1|ir0|ALT_INV_Q\(2),
	combout => \p1|fsm|Selector2~0_combout\);

-- Location: MLABCELL_X13_Y12_N24
\p1|fsm|Selector2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector2~1_combout\ = ( \p1|fsm|Selector2~0_combout\ & ( (\p1|fsm|Selector5~1_combout\ & ((!\p1|fsm|Mux3~0_combout\ & ((\p1|decX|Mux0~5_combout\))) # (\p1|fsm|Mux3~0_combout\ & (\p1|ir0|Q\(0))))) ) ) # ( !\p1|fsm|Selector2~0_combout\ & ( 
-- (\p1|fsm|Selector5~1_combout\ & (!\p1|fsm|Mux3~0_combout\ & \p1|decX|Mux0~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000000001010001010000000101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector5~1_combout\,
	datab => \p1|fsm|ALT_INV_Mux3~0_combout\,
	datac => \p1|ir0|ALT_INV_Q\(0),
	datad => \p1|decX|ALT_INV_Mux0~5_combout\,
	dataf => \p1|fsm|ALT_INV_Selector2~0_combout\,
	combout => \p1|fsm|Selector2~1_combout\);

-- Location: MLABCELL_X13_Y10_N48
\p1|fsm|Selector2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector2~2_combout\ = ( \p1|decX|Mux0~5_combout\ & ( \p1|fsm|Selector2~0_combout\ & ( (\p1|fsm|Selector8~0_combout\ & ((!\p1|ir0|Q\(8) & ((\p1|ir0|Q\(0)))) # (\p1|ir0|Q\(8) & (\p1|ir0|Q\(6))))) ) ) ) # ( !\p1|decX|Mux0~5_combout\ & ( 
-- \p1|fsm|Selector2~0_combout\ & ( (\p1|ir0|Q\(0) & (\p1|fsm|Selector8~0_combout\ & !\p1|ir0|Q\(8))) ) ) ) # ( \p1|decX|Mux0~5_combout\ & ( !\p1|fsm|Selector2~0_combout\ & ( (\p1|ir0|Q\(6) & (\p1|fsm|Selector8~0_combout\ & \p1|ir0|Q\(8))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010100000011000000000000001100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(6),
	datab => \p1|ir0|ALT_INV_Q\(0),
	datac => \p1|fsm|ALT_INV_Selector8~0_combout\,
	datad => \p1|ir0|ALT_INV_Q\(8),
	datae => \p1|decX|ALT_INV_Mux0~5_combout\,
	dataf => \p1|fsm|ALT_INV_Selector2~0_combout\,
	combout => \p1|fsm|Selector2~2_combout\);

-- Location: LABCELL_X14_Y11_N48
\p1|mux0|y[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~6_combout\ = ( \p1|fsm|Selector2~2_combout\ & ( (!\p1|fsm|Selector3~2_combout\ & !\p1|fsm|Selector3~1_combout\) ) ) # ( !\p1|fsm|Selector2~2_combout\ & ( !\p1|fsm|Selector2~1_combout\ $ (((!\p1|fsm|Selector3~2_combout\ & 
-- !\p1|fsm|Selector3~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111000000001111111100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|fsm|ALT_INV_Selector3~2_combout\,
	datac => \p1|fsm|ALT_INV_Selector3~1_combout\,
	datad => \p1|fsm|ALT_INV_Selector2~1_combout\,
	dataf => \p1|fsm|ALT_INV_Selector2~2_combout\,
	combout => \p1|mux0|y[1]~6_combout\);

-- Location: MLABCELL_X13_Y10_N3
\p1|dexY|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|dexY|Mux0~0_combout\ = (\p1|ir0|Q\(2) & (\p1|ir0|Q\(1) & \p1|ir0|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(2),
	datac => \p1|ir0|ALT_INV_Q\(1),
	datad => \p1|ir0|ALT_INV_Q\(0),
	combout => \p1|dexY|Mux0~0_combout\);

-- Location: LABCELL_X14_Y10_N12
\p1|fsm|Selector8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector8~1_combout\ = ( \p1|dexY|Mux0~0_combout\ & ( (!\p1|ir0|Q\(8)) # ((\p1|ir0|Q\(6) & \p1|decX|Mux0~7_combout\)) ) ) # ( !\p1|dexY|Mux0~0_combout\ & ( (\p1|ir0|Q\(6) & (\p1|ir0|Q\(8) & \p1|decX|Mux0~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001111110000111100111111000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|ir0|ALT_INV_Q\(6),
	datac => \p1|ir0|ALT_INV_Q\(8),
	datad => \p1|decX|ALT_INV_Mux0~7_combout\,
	dataf => \p1|dexY|ALT_INV_Mux0~0_combout\,
	combout => \p1|fsm|Selector8~1_combout\);

-- Location: LABCELL_X14_Y10_N24
\p1|fsm|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Mux7~0_combout\ = ( !\p1|ir0|Q\(8) & ( (!\p1|ir0|Q[7]~DUPLICATE_q\ & ((((\p1|dexY|Mux0~0_combout\))) # (\p1|ir0|Q\(6)))) # (\p1|ir0|Q[7]~DUPLICATE_q\ & (((\p1|decX|Mux0~7_combout\)))) ) ) # ( \p1|ir0|Q\(8) & ( (\p1|dexY|Mux0~0_combout\ & 
-- ((!\p1|ir0|Q[7]~DUPLICATE_q\) # ((!\p1|ir0|Q\(6) & ((!\p1|fsm|Equal0~0_combout\) # (!\p1|fsm|Equal0~1_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100011111001111000000001110111001000111110011110000000011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(6),
	datab => \p1|ir0|ALT_INV_Q[7]~DUPLICATE_q\,
	datac => \p1|fsm|ALT_INV_Equal0~0_combout\,
	datad => \p1|dexY|ALT_INV_Mux0~0_combout\,
	datae => \p1|ir0|ALT_INV_Q\(8),
	dataf => \p1|fsm|ALT_INV_Equal0~1_combout\,
	datag => \p1|decX|ALT_INV_Mux0~7_combout\,
	combout => \p1|fsm|Mux7~0_combout\);

-- Location: LABCELL_X14_Y10_N0
\p1|fsm|Selector8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector8~2_combout\ = ( \p1|fsm|Mux7~0_combout\ & ( (!\p1|fsm|y_Q.T1~q\ & (\p1|fsm|y_Q.T0~q\ & ((!\p1|fsm|Selector8~1_combout\) # (!\p1|fsm|Selector8~0_combout\)))) ) ) # ( !\p1|fsm|Mux7~0_combout\ & ( (\p1|fsm|y_Q.T0~q\ & 
-- ((!\p1|fsm|Selector8~1_combout\) # (!\p1|fsm|Selector8~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001100000011110000110000001010000010000000101000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T1~q\,
	datab => \p1|fsm|ALT_INV_Selector8~1_combout\,
	datac => \p1|fsm|ALT_INV_y_Q.T0~q\,
	datad => \p1|fsm|ALT_INV_Selector8~0_combout\,
	dataf => \p1|fsm|ALT_INV_Mux7~0_combout\,
	combout => \p1|fsm|Selector8~2_combout\);

-- Location: MLABCELL_X13_Y10_N9
\p1|fsm|Selector5~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector5~4_combout\ = ( \p1|fsm|Mux3~0_combout\ & ( !\p1|fsm|Selector5~3_combout\ & ( (!\p1|fsm|Selector5~1_combout\) # ((!\p1|fsm|Selector5~0_combout\) # (\p1|ir0|Q\(0))) ) ) ) # ( !\p1|fsm|Mux3~0_combout\ & ( !\p1|fsm|Selector5~3_combout\ & ( 
-- (!\p1|fsm|Selector5~1_combout\) # (!\p1|decX|Mux0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101010111011111110111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector5~1_combout\,
	datab => \p1|fsm|ALT_INV_Selector5~0_combout\,
	datac => \p1|ir0|ALT_INV_Q\(0),
	datad => \p1|decX|ALT_INV_Mux0~0_combout\,
	datae => \p1|fsm|ALT_INV_Mux3~0_combout\,
	dataf => \p1|fsm|ALT_INV_Selector5~3_combout\,
	combout => \p1|fsm|Selector5~4_combout\);

-- Location: LABCELL_X12_Y10_N54
\p1|fsm|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector4~0_combout\ = ( !\p1|ir0|Q\(2) & ( \p1|ir0|Q\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|ir0|ALT_INV_Q\(1),
	dataf => \p1|ir0|ALT_INV_Q\(2),
	combout => \p1|fsm|Selector4~0_combout\);

-- Location: LABCELL_X12_Y10_N15
\p1|decX|Mux0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|decX|Mux0~4_combout\ = ( !\p1|ir0|Q\(5) & ( (\p1|ir0|Q\(4) & \p1|ir0|Q\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|ir0|ALT_INV_Q\(4),
	datad => \p1|ir0|ALT_INV_Q\(3),
	dataf => \p1|ir0|ALT_INV_Q\(5),
	combout => \p1|decX|Mux0~4_combout\);

-- Location: LABCELL_X12_Y10_N36
\p1|fsm|Selector4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector4~2_combout\ = ( \p1|ir0|Q\(8) & ( \p1|fsm|Selector8~0_combout\ & ( (\p1|ir0|Q\(6) & \p1|decX|Mux0~4_combout\) ) ) ) # ( !\p1|ir0|Q\(8) & ( \p1|fsm|Selector8~0_combout\ & ( (\p1|ir0|Q\(0) & \p1|fsm|Selector4~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(6),
	datab => \p1|ir0|ALT_INV_Q\(0),
	datac => \p1|fsm|ALT_INV_Selector4~0_combout\,
	datad => \p1|decX|ALT_INV_Mux0~4_combout\,
	datae => \p1|ir0|ALT_INV_Q\(8),
	dataf => \p1|fsm|ALT_INV_Selector8~0_combout\,
	combout => \p1|fsm|Selector4~2_combout\);

-- Location: LABCELL_X12_Y10_N18
\p1|fsm|Selector4~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector4~3_combout\ = ( !\p1|fsm|Selector4~2_combout\ & ( \p1|fsm|Mux3~0_combout\ & ( (!\p1|fsm|Selector4~0_combout\) # ((!\p1|fsm|Selector5~1_combout\) # (!\p1|ir0|Q\(0))) ) ) ) # ( !\p1|fsm|Selector4~2_combout\ & ( !\p1|fsm|Mux3~0_combout\ & ( 
-- (!\p1|decX|Mux0~4_combout\) # (!\p1|fsm|Selector5~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100000000000000000011111111111110100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector4~0_combout\,
	datab => \p1|decX|ALT_INV_Mux0~4_combout\,
	datac => \p1|fsm|ALT_INV_Selector5~1_combout\,
	datad => \p1|ir0|ALT_INV_Q\(0),
	datae => \p1|fsm|ALT_INV_Selector4~2_combout\,
	dataf => \p1|fsm|ALT_INV_Mux3~0_combout\,
	combout => \p1|fsm|Selector4~3_combout\);

-- Location: LABCELL_X14_Y11_N12
\p1|mux0|y[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~7_combout\ = ( !\p1|fsm|Selector6~0_combout\ & ( (!\p1|fsm|Selector7~1_combout\ & (!\p1|fsm|Selector7~2_combout\ & !\p1|fsm|Selector6~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector7~1_combout\,
	datac => \p1|fsm|ALT_INV_Selector7~2_combout\,
	datad => \p1|fsm|ALT_INV_Selector6~1_combout\,
	dataf => \p1|fsm|ALT_INV_Selector6~0_combout\,
	combout => \p1|mux0|y[1]~7_combout\);

-- Location: MLABCELL_X13_Y11_N24
\p1|mux0|y[1]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~8_combout\ = ( \p1|mux0|y[1]~7_combout\ & ( (\p1|fsm|Selector8~2_combout\ & (\p1|fsm|Selector5~4_combout\ & (\p1|mux0|y[1]~4_combout\ & \p1|fsm|Selector4~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector8~2_combout\,
	datab => \p1|fsm|ALT_INV_Selector5~4_combout\,
	datac => \p1|mux0|ALT_INV_y[1]~4_combout\,
	datad => \p1|fsm|ALT_INV_Selector4~3_combout\,
	dataf => \p1|mux0|ALT_INV_y[1]~7_combout\,
	combout => \p1|mux0|y[1]~8_combout\);

-- Location: MLABCELL_X13_Y10_N33
\p1|fsm|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector1~0_combout\ = ( \p1|decX|Mux0~6_combout\ & ( \p1|fsm|Selector2~0_combout\ & ( (\p1|fsm|Selector8~0_combout\ & ((!\p1|ir0|Q\(8) & (!\p1|ir0|Q\(0))) # (\p1|ir0|Q\(8) & ((\p1|ir0|Q\(6)))))) ) ) ) # ( !\p1|decX|Mux0~6_combout\ & ( 
-- \p1|fsm|Selector2~0_combout\ & ( (\p1|fsm|Selector8~0_combout\ & (!\p1|ir0|Q\(0) & !\p1|ir0|Q\(8))) ) ) ) # ( \p1|decX|Mux0~6_combout\ & ( !\p1|fsm|Selector2~0_combout\ & ( (\p1|fsm|Selector8~0_combout\ & (\p1|ir0|Q\(8) & \p1|ir0|Q\(6))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010101000000010000000100000001000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector8~0_combout\,
	datab => \p1|ir0|ALT_INV_Q\(0),
	datac => \p1|ir0|ALT_INV_Q\(8),
	datad => \p1|ir0|ALT_INV_Q\(6),
	datae => \p1|decX|ALT_INV_Mux0~6_combout\,
	dataf => \p1|fsm|ALT_INV_Selector2~0_combout\,
	combout => \p1|fsm|Selector1~0_combout\);

-- Location: LABCELL_X12_Y10_N0
\p1|fsm|Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector1~1_combout\ = ( \p1|fsm|Mux3~0_combout\ & ( !\p1|fsm|Selector1~0_combout\ & ( (!\p1|fsm|Selector2~0_combout\) # ((!\p1|fsm|Selector5~1_combout\) # (\p1|ir0|Q\(0))) ) ) ) # ( !\p1|fsm|Mux3~0_combout\ & ( !\p1|fsm|Selector1~0_combout\ & ( 
-- (!\p1|fsm|Selector5~1_combout\) # (!\p1|decX|Mux0~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111110111111101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector2~0_combout\,
	datab => \p1|ir0|ALT_INV_Q\(0),
	datac => \p1|fsm|ALT_INV_Selector5~1_combout\,
	datad => \p1|decX|ALT_INV_Mux0~6_combout\,
	datae => \p1|fsm|ALT_INV_Mux3~0_combout\,
	dataf => \p1|fsm|ALT_INV_Selector1~0_combout\,
	combout => \p1|fsm|Selector1~1_combout\);

-- Location: LABCELL_X14_Y11_N15
\p1|mux0|y[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~9_combout\ = ( \p1|fsm|Selector6~0_combout\ & ( (!\p1|fsm|Selector7~1_combout\ & !\p1|fsm|Selector7~2_combout\) ) ) # ( !\p1|fsm|Selector6~0_combout\ & ( !\p1|fsm|Selector6~1_combout\ $ (((!\p1|fsm|Selector7~1_combout\ & 
-- !\p1|fsm|Selector7~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111110100000010111111010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector7~1_combout\,
	datac => \p1|fsm|ALT_INV_Selector7~2_combout\,
	datad => \p1|fsm|ALT_INV_Selector6~1_combout\,
	dataf => \p1|fsm|ALT_INV_Selector6~0_combout\,
	combout => \p1|mux0|y[1]~9_combout\);

-- Location: MLABCELL_X13_Y10_N36
\p1|mux0|y[1]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~10_combout\ = ( !\p1|fsm|Selector6~0_combout\ & ( \p1|fsm|Selector7~1_combout\ & ( (!\p1|fsm|Selector6~1_combout\ & (!\p1|fsm|Selector2~2_combout\ & !\p1|fsm|Selector2~1_combout\)) ) ) ) # ( \p1|fsm|Selector6~0_combout\ & ( 
-- !\p1|fsm|Selector7~1_combout\ & ( (!\p1|fsm|Selector7~2_combout\ & (!\p1|fsm|Selector2~2_combout\ & !\p1|fsm|Selector2~1_combout\)) ) ) ) # ( !\p1|fsm|Selector6~0_combout\ & ( !\p1|fsm|Selector7~1_combout\ & ( (!\p1|fsm|Selector2~2_combout\ & 
-- (!\p1|fsm|Selector2~1_combout\ & ((!\p1|fsm|Selector6~1_combout\) # (!\p1|fsm|Selector7~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000000000000110000000000000010100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector6~1_combout\,
	datab => \p1|fsm|ALT_INV_Selector7~2_combout\,
	datac => \p1|fsm|ALT_INV_Selector2~2_combout\,
	datad => \p1|fsm|ALT_INV_Selector2~1_combout\,
	datae => \p1|fsm|ALT_INV_Selector6~0_combout\,
	dataf => \p1|fsm|ALT_INV_Selector7~1_combout\,
	combout => \p1|mux0|y[1]~10_combout\);

-- Location: MLABCELL_X13_Y11_N6
\p1|mux0|y[1]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~11_combout\ = ( \p1|mux0|y[1]~9_combout\ & ( \p1|mux0|y[1]~10_combout\ & ( (\p1|fsm|Selector8~2_combout\ & ((!\p1|fsm|Selector4~3_combout\ & (\p1|fsm|Selector5~4_combout\ & \p1|mux0|y[1]~7_combout\)) # (\p1|fsm|Selector4~3_combout\ & 
-- ((\p1|mux0|y[1]~7_combout\) # (\p1|fsm|Selector5~4_combout\))))) ) ) ) # ( !\p1|mux0|y[1]~9_combout\ & ( \p1|mux0|y[1]~10_combout\ & ( (!\p1|fsm|Selector8~2_combout\ & (\p1|fsm|Selector4~3_combout\ & (\p1|fsm|Selector5~4_combout\))) # 
-- (\p1|fsm|Selector8~2_combout\ & (\p1|mux0|y[1]~7_combout\ & (!\p1|fsm|Selector4~3_combout\ $ (!\p1|fsm|Selector5~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000101100000000100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector8~2_combout\,
	datab => \p1|fsm|ALT_INV_Selector4~3_combout\,
	datac => \p1|fsm|ALT_INV_Selector5~4_combout\,
	datad => \p1|mux0|ALT_INV_y[1]~7_combout\,
	datae => \p1|mux0|ALT_INV_y[1]~9_combout\,
	dataf => \p1|mux0|ALT_INV_y[1]~10_combout\,
	combout => \p1|mux0|y[1]~11_combout\);

-- Location: MLABCELL_X13_Y11_N12
\p1|mux0|y[1]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~15_combout\ = ( \p1|mux0|y[1]~12_combout\ & ( \p1|mux0|y[1]~11_combout\ & ( (!\p1|mux0|y[1]~13_combout\ & ((\p1|fsm|Selector1~1_combout\) # (\p1|mux0|y[1]~8_combout\))) ) ) ) # ( \p1|mux0|y[1]~12_combout\ & ( !\p1|mux0|y[1]~11_combout\ & ( 
-- (!\p1|mux0|y[1]~13_combout\ & ((!\p1|fsm|Selector1~1_combout\ & ((\p1|mux0|y[1]~8_combout\))) # (\p1|fsm|Selector1~1_combout\ & (\p1|mux0|y[1]~6_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100010001000000000000000000000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[1]~13_combout\,
	datab => \p1|mux0|ALT_INV_y[1]~6_combout\,
	datac => \p1|mux0|ALT_INV_y[1]~8_combout\,
	datad => \p1|fsm|ALT_INV_Selector1~1_combout\,
	datae => \p1|mux0|ALT_INV_y[1]~12_combout\,
	dataf => \p1|mux0|ALT_INV_y[1]~11_combout\,
	combout => \p1|mux0|y[1]~15_combout\);

-- Location: LABCELL_X14_Y9_N48
\p1|reg2|Q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg2|Q[5]~feeder_combout\ = ( \p1|mux0|y[5]~31_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[5]~31_combout\,
	combout => \p1|reg2|Q[5]~feeder_combout\);

-- Location: FF_X14_Y9_N49
\p1|reg2|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg2|Q[5]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q\(5));

-- Location: MLABCELL_X13_Y13_N45
\p1|reg3|Q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg3|Q[5]~feeder_combout\ = ( \p1|mux0|y[5]~31_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[5]~31_combout\,
	combout => \p1|reg3|Q[5]~feeder_combout\);

-- Location: FF_X13_Y13_N46
\p1|reg3|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg3|Q[5]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(5));

-- Location: FF_X13_Y11_N2
\p1|reg1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[5]~31_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(5));

-- Location: LABCELL_X14_Y9_N30
\p1|reg5|Q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg5|Q[5]~feeder_combout\ = ( \p1|mux0|y[5]~31_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[5]~31_combout\,
	combout => \p1|reg5|Q[5]~feeder_combout\);

-- Location: FF_X14_Y9_N31
\p1|reg5|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg5|Q[5]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(5));

-- Location: FF_X14_Y11_N11
\p1|reg6|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[5]~31_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(5));

-- Location: FF_X14_Y11_N20
\p1|reg4|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[5]~31_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg4|Q\(5));

-- Location: LABCELL_X14_Y11_N18
\p1|mux0|y[5]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[5]~29_combout\ = ( \p1|reg4|Q\(5) & ( \p1|pc0|v\(5) & ( (!\p1|mux0|y[1]~0_combout\) # ((!\p1|mux0|y[1]~1_combout\ & (\p1|reg5|Q\(5))) # (\p1|mux0|y[1]~1_combout\ & ((\p1|reg6|Q\(5))))) ) ) ) # ( !\p1|reg4|Q\(5) & ( \p1|pc0|v\(5) & ( 
-- (!\p1|mux0|y[1]~0_combout\ & (((\p1|mux0|y[1]~1_combout\)))) # (\p1|mux0|y[1]~0_combout\ & ((!\p1|mux0|y[1]~1_combout\ & (\p1|reg5|Q\(5))) # (\p1|mux0|y[1]~1_combout\ & ((\p1|reg6|Q\(5)))))) ) ) ) # ( \p1|reg4|Q\(5) & ( !\p1|pc0|v\(5) & ( 
-- (!\p1|mux0|y[1]~0_combout\ & (((!\p1|mux0|y[1]~1_combout\)))) # (\p1|mux0|y[1]~0_combout\ & ((!\p1|mux0|y[1]~1_combout\ & (\p1|reg5|Q\(5))) # (\p1|mux0|y[1]~1_combout\ & ((\p1|reg6|Q\(5)))))) ) ) ) # ( !\p1|reg4|Q\(5) & ( !\p1|pc0|v\(5) & ( 
-- (\p1|mux0|y[1]~0_combout\ & ((!\p1|mux0|y[1]~1_combout\ & (\p1|reg5|Q\(5))) # (\p1|mux0|y[1]~1_combout\ & ((\p1|reg6|Q\(5)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101101100001011010100011010000111111011101010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[1]~0_combout\,
	datab => \p1|reg5|ALT_INV_Q\(5),
	datac => \p1|mux0|ALT_INV_y[1]~1_combout\,
	datad => \p1|reg6|ALT_INV_Q\(5),
	datae => \p1|reg4|ALT_INV_Q\(5),
	dataf => \p1|pc0|ALT_INV_v\(5),
	combout => \p1|mux0|y[5]~29_combout\);

-- Location: MLABCELL_X13_Y11_N0
\p1|mux0|y[5]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[5]~30_combout\ = ( \p1|reg1|Q\(5) & ( \p1|mux0|y[5]~29_combout\ & ( (!\p1|mux0|y[1]~3_combout\) # ((!\p1|mux0|y[1]~4_combout\ & (\p1|reg2|Q\(5))) # (\p1|mux0|y[1]~4_combout\ & ((\p1|reg3|Q\(5))))) ) ) ) # ( !\p1|reg1|Q\(5) & ( 
-- \p1|mux0|y[5]~29_combout\ & ( (!\p1|mux0|y[1]~3_combout\ & (((\p1|mux0|y[1]~4_combout\)))) # (\p1|mux0|y[1]~3_combout\ & ((!\p1|mux0|y[1]~4_combout\ & (\p1|reg2|Q\(5))) # (\p1|mux0|y[1]~4_combout\ & ((\p1|reg3|Q\(5)))))) ) ) ) # ( \p1|reg1|Q\(5) & ( 
-- !\p1|mux0|y[5]~29_combout\ & ( (!\p1|mux0|y[1]~3_combout\ & (((!\p1|mux0|y[1]~4_combout\)))) # (\p1|mux0|y[1]~3_combout\ & ((!\p1|mux0|y[1]~4_combout\ & (\p1|reg2|Q\(5))) # (\p1|mux0|y[1]~4_combout\ & ((\p1|reg3|Q\(5)))))) ) ) ) # ( !\p1|reg1|Q\(5) & ( 
-- !\p1|mux0|y[5]~29_combout\ & ( (\p1|mux0|y[1]~3_combout\ & ((!\p1|mux0|y[1]~4_combout\ & (\p1|reg2|Q\(5))) # (\p1|mux0|y[1]~4_combout\ & ((\p1|reg3|Q\(5)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101101100001011010100011010000111111011101010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[1]~3_combout\,
	datab => \p1|reg2|ALT_INV_Q\(5),
	datac => \p1|mux0|ALT_INV_y[1]~4_combout\,
	datad => \p1|reg3|ALT_INV_Q\(5),
	datae => \p1|reg1|ALT_INV_Q\(5),
	dataf => \p1|mux0|ALT_INV_y[5]~29_combout\,
	combout => \p1|mux0|y[5]~30_combout\);

-- Location: FF_X13_Y12_N49
\p1|regG|Q[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|addsub0|Add0~21_sumout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regG|Q[5]~DUPLICATE_q\);

-- Location: FF_X13_Y11_N20
\p1|reg0|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|mux0|y[5]~31_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(5));

-- Location: MLABCELL_X13_Y11_N18
\p1|mux0|y[5]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[5]~31_combout\ = ( \p1|reg0|Q\(5) & ( \DIN[5]~5_combout\ & ( (!\p1|mux0|y[1]~14_combout\ & (((\p1|regG|Q[5]~DUPLICATE_q\)) # (\p1|mux0|y[1]~15_combout\))) # (\p1|mux0|y[1]~14_combout\ & ((!\p1|mux0|y[1]~15_combout\) # 
-- ((\p1|mux0|y[5]~30_combout\)))) ) ) ) # ( !\p1|reg0|Q\(5) & ( \DIN[5]~5_combout\ & ( (!\p1|mux0|y[1]~14_combout\ & (!\p1|mux0|y[1]~15_combout\ & ((\p1|regG|Q[5]~DUPLICATE_q\)))) # (\p1|mux0|y[1]~14_combout\ & ((!\p1|mux0|y[1]~15_combout\) # 
-- ((\p1|mux0|y[5]~30_combout\)))) ) ) ) # ( \p1|reg0|Q\(5) & ( !\DIN[5]~5_combout\ & ( (!\p1|mux0|y[1]~14_combout\ & (((\p1|regG|Q[5]~DUPLICATE_q\)) # (\p1|mux0|y[1]~15_combout\))) # (\p1|mux0|y[1]~14_combout\ & (\p1|mux0|y[1]~15_combout\ & 
-- (\p1|mux0|y[5]~30_combout\))) ) ) ) # ( !\p1|reg0|Q\(5) & ( !\DIN[5]~5_combout\ & ( (!\p1|mux0|y[1]~14_combout\ & (!\p1|mux0|y[1]~15_combout\ & ((\p1|regG|Q[5]~DUPLICATE_q\)))) # (\p1|mux0|y[1]~14_combout\ & (\p1|mux0|y[1]~15_combout\ & 
-- (\p1|mux0|y[5]~30_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001001000111010101101000101110011010110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[1]~14_combout\,
	datab => \p1|mux0|ALT_INV_y[1]~15_combout\,
	datac => \p1|mux0|ALT_INV_y[5]~30_combout\,
	datad => \p1|regG|ALT_INV_Q[5]~DUPLICATE_q\,
	datae => \p1|reg0|ALT_INV_Q\(5),
	dataf => \ALT_INV_DIN[5]~5_combout\,
	combout => \p1|mux0|y[5]~31_combout\);

-- Location: MLABCELL_X13_Y13_N57
\p1|regA|Q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|regA|Q[5]~feeder_combout\ = ( \p1|mux0|y[5]~31_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[5]~31_combout\,
	combout => \p1|regA|Q[5]~feeder_combout\);

-- Location: FF_X13_Y13_N58
\p1|regA|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|regA|Q[5]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regA|Q\(5));

-- Location: FF_X13_Y12_N50
\p1|regG|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|addsub0|Add0~21_sumout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regG|Q\(5));

-- Location: FF_X13_Y12_N44
\p1|regG|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|addsub0|Add0~13_sumout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regG|Q\(3));

-- Location: FF_X13_Y12_N38
\p1|regG|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|addsub0|Add0~5_sumout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regG|Q\(1));

-- Location: FF_X13_Y12_N53
\p1|regG|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|addsub0|Add0~25_sumout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regG|Q\(6));

-- Location: MLABCELL_X13_Y12_N12
\p1|fsm|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Equal0~0_combout\ = ( !\p1|regG|Q\(4) & ( !\p1|regG|Q\(6) & ( (!\p1|regG|Q\(5) & (!\p1|regG|Q\(3) & (!\p1|regG|Q\(1) & !\p1|regG|Q\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|regG|ALT_INV_Q\(5),
	datab => \p1|regG|ALT_INV_Q\(3),
	datac => \p1|regG|ALT_INV_Q\(1),
	datad => \p1|regG|ALT_INV_Q\(2),
	datae => \p1|regG|ALT_INV_Q\(4),
	dataf => \p1|regG|ALT_INV_Q\(6),
	combout => \p1|fsm|Equal0~0_combout\);

-- Location: MLABCELL_X13_Y12_N6
\p1|fsm|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Mux3~0_combout\ = ( \p1|fsm|Equal0~1_combout\ & ( (!\p1|ir0|Q\(7) & (((!\p1|ir0|Q\(6)) # (\p1|ir0|Q\(8))))) # (\p1|ir0|Q\(7) & (!\p1|fsm|Equal0~0_combout\ & (\p1|ir0|Q\(8) & !\p1|ir0|Q\(6)))) ) ) # ( !\p1|fsm|Equal0~1_combout\ & ( (!\p1|ir0|Q\(7) 
-- & ((!\p1|ir0|Q\(6)) # (\p1|ir0|Q\(8)))) # (\p1|ir0|Q\(7) & (\p1|ir0|Q\(8) & !\p1|ir0|Q\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111100001010101011110000101010101110000010101010111000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(7),
	datab => \p1|fsm|ALT_INV_Equal0~0_combout\,
	datac => \p1|ir0|ALT_INV_Q\(8),
	datad => \p1|ir0|ALT_INV_Q\(6),
	dataf => \p1|fsm|ALT_INV_Equal0~1_combout\,
	combout => \p1|fsm|Mux3~0_combout\);

-- Location: MLABCELL_X13_Y10_N18
\p1|decX|Mux0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|decX|Mux0~3_combout\ = ( \p1|ir0|Q\(4) & ( (!\p1|ir0|Q\(3) & !\p1|ir0|Q\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|ir0|ALT_INV_Q\(3),
	datad => \p1|ir0|ALT_INV_Q\(5),
	dataf => \p1|ir0|ALT_INV_Q\(4),
	combout => \p1|decX|Mux0~3_combout\);

-- Location: LABCELL_X14_Y11_N54
\p1|fsm|Selector3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector3~1_combout\ = ( \p1|fsm|Selector5~1_combout\ & ( (!\p1|fsm|Mux3~0_combout\ & (\p1|decX|Mux0~3_combout\)) # (\p1|fsm|Mux3~0_combout\ & ((\p1|fsm|Selector3~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|fsm|ALT_INV_Mux3~0_combout\,
	datac => \p1|decX|ALT_INV_Mux0~3_combout\,
	datad => \p1|fsm|ALT_INV_Selector3~0_combout\,
	dataf => \p1|fsm|ALT_INV_Selector5~1_combout\,
	combout => \p1|fsm|Selector3~1_combout\);

-- Location: LABCELL_X14_Y11_N57
\p1|fsm|Selector4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector4~1_combout\ = ( \p1|decX|Mux0~4_combout\ & ( (\p1|fsm|Selector5~1_combout\ & ((!\p1|fsm|Mux3~0_combout\) # ((\p1|ir0|Q\(0) & \p1|fsm|Selector4~0_combout\)))) ) ) # ( !\p1|decX|Mux0~4_combout\ & ( (\p1|fsm|Selector5~1_combout\ & 
-- (\p1|fsm|Mux3~0_combout\ & (\p1|ir0|Q\(0) & \p1|fsm|Selector4~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000101000100010001010100010001000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector5~1_combout\,
	datab => \p1|fsm|ALT_INV_Mux3~0_combout\,
	datac => \p1|ir0|ALT_INV_Q\(0),
	datad => \p1|fsm|ALT_INV_Selector4~0_combout\,
	dataf => \p1|decX|ALT_INV_Mux0~4_combout\,
	combout => \p1|fsm|Selector4~1_combout\);

-- Location: LABCELL_X14_Y11_N30
\p1|mux0|y[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~3_combout\ = ( \p1|fsm|Selector4~2_combout\ & ( !\p1|fsm|Selector2~2_combout\ & ( !\p1|fsm|Selector2~1_combout\ ) ) ) # ( !\p1|fsm|Selector4~2_combout\ & ( !\p1|fsm|Selector2~2_combout\ & ( (!\p1|fsm|Selector2~1_combout\ & 
-- (((\p1|fsm|Selector3~2_combout\) # (\p1|fsm|Selector4~1_combout\)) # (\p1|fsm|Selector3~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector3~1_combout\,
	datab => \p1|fsm|ALT_INV_Selector2~1_combout\,
	datac => \p1|fsm|ALT_INV_Selector4~1_combout\,
	datad => \p1|fsm|ALT_INV_Selector3~2_combout\,
	datae => \p1|fsm|ALT_INV_Selector4~2_combout\,
	dataf => \p1|fsm|ALT_INV_Selector2~2_combout\,
	combout => \p1|mux0|y[1]~3_combout\);

-- Location: FF_X14_Y10_N20
\p1|reg1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[2]~22_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(2));

-- Location: LABCELL_X14_Y9_N36
\p1|reg5|Q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg5|Q[2]~feeder_combout\ = ( \p1|mux0|y[2]~22_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[2]~22_combout\,
	combout => \p1|reg5|Q[2]~feeder_combout\);

-- Location: FF_X14_Y9_N37
\p1|reg5|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg5|Q[2]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(2));

-- Location: FF_X12_Y10_N49
\p1|reg6|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[2]~22_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(2));

-- Location: FF_X14_Y10_N8
\p1|reg4|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[2]~22_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg4|Q\(2));

-- Location: LABCELL_X14_Y10_N6
\p1|mux0|y[2]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[2]~20_combout\ = ( \p1|reg4|Q\(2) & ( \p1|mux0|y[1]~0_combout\ & ( (!\p1|mux0|y[1]~1_combout\ & (\p1|reg5|Q\(2))) # (\p1|mux0|y[1]~1_combout\ & ((\p1|reg6|Q\(2)))) ) ) ) # ( !\p1|reg4|Q\(2) & ( \p1|mux0|y[1]~0_combout\ & ( 
-- (!\p1|mux0|y[1]~1_combout\ & (\p1|reg5|Q\(2))) # (\p1|mux0|y[1]~1_combout\ & ((\p1|reg6|Q\(2)))) ) ) ) # ( \p1|reg4|Q\(2) & ( !\p1|mux0|y[1]~0_combout\ & ( (!\p1|mux0|y[1]~1_combout\) # (\p1|pc0|v\(2)) ) ) ) # ( !\p1|reg4|Q\(2) & ( 
-- !\p1|mux0|y[1]~0_combout\ & ( (\p1|mux0|y[1]~1_combout\ & \p1|pc0|v\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111100001111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg5|ALT_INV_Q\(2),
	datab => \p1|reg6|ALT_INV_Q\(2),
	datac => \p1|mux0|ALT_INV_y[1]~1_combout\,
	datad => \p1|pc0|ALT_INV_v\(2),
	datae => \p1|reg4|ALT_INV_Q\(2),
	dataf => \p1|mux0|ALT_INV_y[1]~0_combout\,
	combout => \p1|mux0|y[2]~20_combout\);

-- Location: LABCELL_X14_Y10_N18
\p1|mux0|y[2]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[2]~21_combout\ = ( \p1|reg1|Q\(2) & ( \p1|mux0|y[2]~20_combout\ & ( (!\p1|mux0|y[1]~3_combout\) # ((!\p1|mux0|y[1]~4_combout\ & (\p1|reg2|Q\(2))) # (\p1|mux0|y[1]~4_combout\ & ((\p1|reg3|Q\(2))))) ) ) ) # ( !\p1|reg1|Q\(2) & ( 
-- \p1|mux0|y[2]~20_combout\ & ( (!\p1|mux0|y[1]~4_combout\ & (\p1|reg2|Q\(2) & ((\p1|mux0|y[1]~3_combout\)))) # (\p1|mux0|y[1]~4_combout\ & (((!\p1|mux0|y[1]~3_combout\) # (\p1|reg3|Q\(2))))) ) ) ) # ( \p1|reg1|Q\(2) & ( !\p1|mux0|y[2]~20_combout\ & ( 
-- (!\p1|mux0|y[1]~4_combout\ & (((!\p1|mux0|y[1]~3_combout\)) # (\p1|reg2|Q\(2)))) # (\p1|mux0|y[1]~4_combout\ & (((\p1|reg3|Q\(2) & \p1|mux0|y[1]~3_combout\)))) ) ) ) # ( !\p1|reg1|Q\(2) & ( !\p1|mux0|y[2]~20_combout\ & ( (\p1|mux0|y[1]~3_combout\ & 
-- ((!\p1|mux0|y[1]~4_combout\ & (\p1|reg2|Q\(2))) # (\p1|mux0|y[1]~4_combout\ & ((\p1|reg3|Q\(2)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011111100000101001100001111010100111111111101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg2|ALT_INV_Q\(2),
	datab => \p1|reg3|ALT_INV_Q\(2),
	datac => \p1|mux0|ALT_INV_y[1]~4_combout\,
	datad => \p1|mux0|ALT_INV_y[1]~3_combout\,
	datae => \p1|reg1|ALT_INV_Q\(2),
	dataf => \p1|mux0|ALT_INV_y[2]~20_combout\,
	combout => \p1|mux0|y[2]~21_combout\);

-- Location: FF_X14_Y10_N50
\p1|reg0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|mux0|y[2]~22_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(2));

-- Location: LABCELL_X14_Y10_N48
\p1|mux0|y[2]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[2]~22_combout\ = ( \p1|reg0|Q\(2) & ( \DIN[2]~2_combout\ & ( (!\p1|mux0|y[1]~14_combout\ & (((\p1|mux0|y[1]~15_combout\)) # (\p1|regG|Q\(2)))) # (\p1|mux0|y[1]~14_combout\ & (((!\p1|mux0|y[1]~15_combout\) # (\p1|mux0|y[2]~21_combout\)))) ) ) ) 
-- # ( !\p1|reg0|Q\(2) & ( \DIN[2]~2_combout\ & ( (!\p1|mux0|y[1]~14_combout\ & (\p1|regG|Q\(2) & ((!\p1|mux0|y[1]~15_combout\)))) # (\p1|mux0|y[1]~14_combout\ & (((!\p1|mux0|y[1]~15_combout\) # (\p1|mux0|y[2]~21_combout\)))) ) ) ) # ( \p1|reg0|Q\(2) & ( 
-- !\DIN[2]~2_combout\ & ( (!\p1|mux0|y[1]~14_combout\ & (((\p1|mux0|y[1]~15_combout\)) # (\p1|regG|Q\(2)))) # (\p1|mux0|y[1]~14_combout\ & (((\p1|mux0|y[2]~21_combout\ & \p1|mux0|y[1]~15_combout\)))) ) ) ) # ( !\p1|reg0|Q\(2) & ( !\DIN[2]~2_combout\ & ( 
-- (!\p1|mux0|y[1]~14_combout\ & (\p1|regG|Q\(2) & ((!\p1|mux0|y[1]~15_combout\)))) # (\p1|mux0|y[1]~14_combout\ & (((\p1|mux0|y[2]~21_combout\ & \p1|mux0|y[1]~15_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000011010001001100111101110111000000110111011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|regG|ALT_INV_Q\(2),
	datab => \p1|mux0|ALT_INV_y[1]~14_combout\,
	datac => \p1|mux0|ALT_INV_y[2]~21_combout\,
	datad => \p1|mux0|ALT_INV_y[1]~15_combout\,
	datae => \p1|reg0|ALT_INV_Q\(2),
	dataf => \ALT_INV_DIN[2]~2_combout\,
	combout => \p1|mux0|y[2]~22_combout\);

-- Location: FF_X12_Y12_N16
\p1|regAddr|Q[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[2]~22_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regAddr|Q[2]~DUPLICATE_q\);

-- Location: LABCELL_X12_Y10_N33
\DIN[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIN[1]~1_combout\ = ( \m0|altsyncram_component|auto_generated|q_a\(1) & ( (!\p1|regAddr|Q\(7)) # ((!\p1|regAddr|Q[8]~DUPLICATE_q\) # (\u1|r0|Q\(1))) ) ) # ( !\m0|altsyncram_component|auto_generated|q_a\(1) & ( (\p1|regAddr|Q\(7) & 
-- (\p1|regAddr|Q[8]~DUPLICATE_q\ & \u1|r0|Q\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000111101111111011111110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|regAddr|ALT_INV_Q\(7),
	datab => \p1|regAddr|ALT_INV_Q[8]~DUPLICATE_q\,
	datac => \u1|r0|ALT_INV_Q\(1),
	dataf => \m0|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	combout => \DIN[1]~1_combout\);

-- Location: FF_X12_Y10_N47
\p1|ir0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DIN[1]~1_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|y_Q.TXX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(1));

-- Location: LABCELL_X12_Y10_N24
\p1|fsm|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector3~0_combout\ = ( !\p1|ir0|Q\(0) & ( (\p1|ir0|Q\(1) & !\p1|ir0|Q\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|ir0|ALT_INV_Q\(1),
	datad => \p1|ir0|ALT_INV_Q\(2),
	dataf => \p1|ir0|ALT_INV_Q\(0),
	combout => \p1|fsm|Selector3~0_combout\);

-- Location: MLABCELL_X13_Y10_N21
\p1|fsm|Selector3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector3~2_combout\ = ( \p1|decX|Mux0~3_combout\ & ( (\p1|fsm|Selector8~0_combout\ & ((!\p1|ir0|Q\(8) & (\p1|fsm|Selector3~0_combout\)) # (\p1|ir0|Q\(8) & ((\p1|ir0|Q\(6)))))) ) ) # ( !\p1|decX|Mux0~3_combout\ & ( (\p1|fsm|Selector8~0_combout\ & 
-- (!\p1|ir0|Q\(8) & \p1|fsm|Selector3~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000101010000010000010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector8~0_combout\,
	datab => \p1|ir0|ALT_INV_Q\(8),
	datac => \p1|fsm|ALT_INV_Selector3~0_combout\,
	datad => \p1|ir0|ALT_INV_Q\(6),
	dataf => \p1|decX|ALT_INV_Mux0~3_combout\,
	combout => \p1|fsm|Selector3~2_combout\);

-- Location: LABCELL_X14_Y11_N51
\p1|mux0|y[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~4_combout\ = ( !\p1|fsm|Selector2~2_combout\ & ( (!\p1|fsm|Selector3~2_combout\ & (!\p1|fsm|Selector2~1_combout\ & !\p1|fsm|Selector3~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|fsm|ALT_INV_Selector3~2_combout\,
	datac => \p1|fsm|ALT_INV_Selector2~1_combout\,
	datad => \p1|fsm|ALT_INV_Selector3~1_combout\,
	dataf => \p1|fsm|ALT_INV_Selector2~2_combout\,
	combout => \p1|mux0|y[1]~4_combout\);

-- Location: FF_X12_Y11_N14
\p1|reg1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[0]~16_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(0));

-- Location: FF_X13_Y9_N40
\p1|reg5|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[0]~16_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(0));

-- Location: LABCELL_X10_Y11_N36
\p1|reg6|Q[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg6|Q[0]~feeder_combout\ = ( \p1|mux0|y[0]~16_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[0]~16_combout\,
	combout => \p1|reg6|Q[0]~feeder_combout\);

-- Location: FF_X10_Y11_N37
\p1|reg6|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg6|Q[0]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(0));

-- Location: FF_X12_Y11_N32
\p1|reg4|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[0]~16_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg4|Q\(0));

-- Location: LABCELL_X12_Y11_N30
\p1|mux0|y[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[0]~2_combout\ = ( \p1|reg4|Q\(0) & ( \p1|mux0|y[1]~1_combout\ & ( (!\p1|mux0|y[1]~0_combout\ & (\p1|pc0|v\(0))) # (\p1|mux0|y[1]~0_combout\ & ((\p1|reg6|Q\(0)))) ) ) ) # ( !\p1|reg4|Q\(0) & ( \p1|mux0|y[1]~1_combout\ & ( 
-- (!\p1|mux0|y[1]~0_combout\ & (\p1|pc0|v\(0))) # (\p1|mux0|y[1]~0_combout\ & ((\p1|reg6|Q\(0)))) ) ) ) # ( \p1|reg4|Q\(0) & ( !\p1|mux0|y[1]~1_combout\ & ( (!\p1|mux0|y[1]~0_combout\) # (\p1|reg5|Q\(0)) ) ) ) # ( !\p1|reg4|Q\(0) & ( 
-- !\p1|mux0|y[1]~1_combout\ & ( (\p1|reg5|Q\(0) & \p1|mux0|y[1]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|pc0|ALT_INV_v\(0),
	datab => \p1|reg5|ALT_INV_Q\(0),
	datac => \p1|mux0|ALT_INV_y[1]~0_combout\,
	datad => \p1|reg6|ALT_INV_Q\(0),
	datae => \p1|reg4|ALT_INV_Q\(0),
	dataf => \p1|mux0|ALT_INV_y[1]~1_combout\,
	combout => \p1|mux0|y[0]~2_combout\);

-- Location: LABCELL_X12_Y11_N12
\p1|mux0|y[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[0]~5_combout\ = ( \p1|reg1|Q\(0) & ( \p1|mux0|y[0]~2_combout\ & ( (!\p1|mux0|y[1]~3_combout\) # ((!\p1|mux0|y[1]~4_combout\ & ((\p1|reg2|Q\(0)))) # (\p1|mux0|y[1]~4_combout\ & (\p1|reg3|Q\(0)))) ) ) ) # ( !\p1|reg1|Q\(0) & ( 
-- \p1|mux0|y[0]~2_combout\ & ( (!\p1|mux0|y[1]~4_combout\ & (((\p1|reg2|Q\(0) & \p1|mux0|y[1]~3_combout\)))) # (\p1|mux0|y[1]~4_combout\ & (((!\p1|mux0|y[1]~3_combout\)) # (\p1|reg3|Q\(0)))) ) ) ) # ( \p1|reg1|Q\(0) & ( !\p1|mux0|y[0]~2_combout\ & ( 
-- (!\p1|mux0|y[1]~4_combout\ & (((!\p1|mux0|y[1]~3_combout\) # (\p1|reg2|Q\(0))))) # (\p1|mux0|y[1]~4_combout\ & (\p1|reg3|Q\(0) & ((\p1|mux0|y[1]~3_combout\)))) ) ) ) # ( !\p1|reg1|Q\(0) & ( !\p1|mux0|y[0]~2_combout\ & ( (\p1|mux0|y[1]~3_combout\ & 
-- ((!\p1|mux0|y[1]~4_combout\ & ((\p1|reg2|Q\(0)))) # (\p1|mux0|y[1]~4_combout\ & (\p1|reg3|Q\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110101111100000011010100001111001101011111111100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg3|ALT_INV_Q\(0),
	datab => \p1|reg2|ALT_INV_Q\(0),
	datac => \p1|mux0|ALT_INV_y[1]~4_combout\,
	datad => \p1|mux0|ALT_INV_y[1]~3_combout\,
	datae => \p1|reg1|ALT_INV_Q\(0),
	dataf => \p1|mux0|ALT_INV_y[0]~2_combout\,
	combout => \p1|mux0|y[0]~5_combout\);

-- Location: FF_X12_Y11_N26
\p1|reg0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|mux0|y[0]~16_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(0));

-- Location: LABCELL_X12_Y11_N24
\p1|mux0|y[0]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[0]~16_combout\ = ( \p1|reg0|Q\(0) & ( \DIN[0]~0_combout\ & ( (!\p1|mux0|y[1]~14_combout\ & (((\p1|mux0|y[1]~15_combout\)) # (\p1|regG|Q\(0)))) # (\p1|mux0|y[1]~14_combout\ & (((!\p1|mux0|y[1]~15_combout\) # (\p1|mux0|y[0]~5_combout\)))) ) ) ) # 
-- ( !\p1|reg0|Q\(0) & ( \DIN[0]~0_combout\ & ( (!\p1|mux0|y[1]~14_combout\ & (\p1|regG|Q\(0) & ((!\p1|mux0|y[1]~15_combout\)))) # (\p1|mux0|y[1]~14_combout\ & (((!\p1|mux0|y[1]~15_combout\) # (\p1|mux0|y[0]~5_combout\)))) ) ) ) # ( \p1|reg0|Q\(0) & ( 
-- !\DIN[0]~0_combout\ & ( (!\p1|mux0|y[1]~14_combout\ & (((\p1|mux0|y[1]~15_combout\)) # (\p1|regG|Q\(0)))) # (\p1|mux0|y[1]~14_combout\ & (((\p1|mux0|y[0]~5_combout\ & \p1|mux0|y[1]~15_combout\)))) ) ) ) # ( !\p1|reg0|Q\(0) & ( !\DIN[0]~0_combout\ & ( 
-- (!\p1|mux0|y[1]~14_combout\ & (\p1|regG|Q\(0) & ((!\p1|mux0|y[1]~15_combout\)))) # (\p1|mux0|y[1]~14_combout\ & (((\p1|mux0|y[0]~5_combout\ & \p1|mux0|y[1]~15_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000011010100001111001101011111000000110101111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|regG|ALT_INV_Q\(0),
	datab => \p1|mux0|ALT_INV_y[0]~5_combout\,
	datac => \p1|mux0|ALT_INV_y[1]~14_combout\,
	datad => \p1|mux0|ALT_INV_y[1]~15_combout\,
	datae => \p1|reg0|ALT_INV_Q\(0),
	dataf => \ALT_INV_DIN[0]~0_combout\,
	combout => \p1|mux0|y[0]~16_combout\);

-- Location: FF_X13_Y10_N40
\p1|regDout|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[0]~16_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|DoutIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regDout|Q\(0));

-- Location: LABCELL_X12_Y12_N45
\DIN[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIN[7]~7_combout\ = ( \p1|regAddr|Q\(7) & ( \m0|altsyncram_component|auto_generated|q_a\(7) & ( (!\p1|regAddr|Q[8]~DUPLICATE_q\) # (\u1|r0|Q\(7)) ) ) ) # ( !\p1|regAddr|Q\(7) & ( \m0|altsyncram_component|auto_generated|q_a\(7) ) ) # ( \p1|regAddr|Q\(7) & 
-- ( !\m0|altsyncram_component|auto_generated|q_a\(7) & ( (\u1|r0|Q\(7) & \p1|regAddr|Q[8]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010111111111111111111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|r0|ALT_INV_Q\(7),
	datad => \p1|regAddr|ALT_INV_Q[8]~DUPLICATE_q\,
	datae => \p1|regAddr|ALT_INV_Q\(7),
	dataf => \m0|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	combout => \DIN[7]~7_combout\);

-- Location: FF_X12_Y12_N20
\p1|ir0|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DIN[7]~7_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|y_Q.TXX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(7));

-- Location: LABCELL_X12_Y9_N18
\p1|fsm|y_D.T2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|y_D.T2~0_combout\ = ( !\p1|fsm|y_Q.T3~q\ & ( \p1|fsm|y_Q.T1~q\ & ( (!\p1|ir0|Q\(7) $ (!\p1|ir0|Q\(8))) # (\p1|ir0|Q\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001111011011110110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(7),
	datab => \p1|ir0|ALT_INV_Q\(6),
	datac => \p1|ir0|ALT_INV_Q\(8),
	datae => \p1|fsm|ALT_INV_y_Q.T3~q\,
	dataf => \p1|fsm|ALT_INV_y_Q.T1~q\,
	combout => \p1|fsm|y_D.T2~0_combout\);

-- Location: FF_X12_Y9_N19
\p1|fsm|y_Q.T2~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|fsm|y_D.T2~0_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|fsm|y_Q.T2~DUPLICATE_q\);

-- Location: LABCELL_X16_Y12_N36
\p1|regA|Q[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|regA|Q[8]~feeder_combout\ = ( \p1|mux0|y[8]~40_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[8]~40_combout\,
	combout => \p1|regA|Q[8]~feeder_combout\);

-- Location: FF_X16_Y12_N37
\p1|regA|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|regA|Q[8]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regA|Q\(8));

-- Location: FF_X13_Y12_N14
\p1|regA|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[7]~37_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regA|Q\(7));

-- Location: MLABCELL_X13_Y12_N54
\p1|addsub0|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~29_sumout\ = SUM(( !\p1|mux0|y[7]~37_combout\ $ (((!\p1|fsm|y_Q.T2~DUPLICATE_q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|regA|Q\(7) ) + ( \p1|addsub0|Add0~26\ ))
-- \p1|addsub0|Add0~30\ = CARRY(( !\p1|mux0|y[7]~37_combout\ $ (((!\p1|fsm|y_Q.T2~DUPLICATE_q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|regA|Q\(7) ) + ( \p1|addsub0|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T2~DUPLICATE_q\,
	datac => \p1|mux0|ALT_INV_y[7]~37_combout\,
	datad => \p1|fsm|ALT_INV_Mux28~0_combout\,
	dataf => \p1|regA|ALT_INV_Q\(7),
	cin => \p1|addsub0|Add0~26\,
	sumout => \p1|addsub0|Add0~29_sumout\,
	cout => \p1|addsub0|Add0~30\);

-- Location: MLABCELL_X13_Y12_N57
\p1|addsub0|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~33_sumout\ = SUM(( !\p1|mux0|y[8]~40_combout\ $ (((!\p1|fsm|y_Q.T2~DUPLICATE_q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|regA|Q\(8) ) + ( \p1|addsub0|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T2~DUPLICATE_q\,
	datac => \p1|mux0|ALT_INV_y[8]~40_combout\,
	datad => \p1|fsm|ALT_INV_Mux28~0_combout\,
	dataf => \p1|regA|ALT_INV_Q\(8),
	cin => \p1|addsub0|Add0~30\,
	sumout => \p1|addsub0|Add0~33_sumout\);

-- Location: FF_X13_Y12_N59
\p1|regG|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|addsub0|Add0~33_sumout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regG|Q\(8));

-- Location: FF_X13_Y12_N56
\p1|regG|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|addsub0|Add0~29_sumout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regG|Q\(7));

-- Location: MLABCELL_X13_Y12_N9
\p1|fsm|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Equal0~1_combout\ = ( !\p1|regG|Q\(0) & ( (!\p1|regG|Q\(8) & !\p1|regG|Q\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|regG|ALT_INV_Q\(8),
	datad => \p1|regG|ALT_INV_Q\(7),
	dataf => \p1|regG|ALT_INV_Q\(0),
	combout => \p1|fsm|Equal0~1_combout\);

-- Location: LABCELL_X14_Y10_N15
\p1|fsm|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Mux15~0_combout\ = ( \p1|ir0|Q[7]~DUPLICATE_q\ & ( (!\p1|ir0|Q\(6) & ((!\p1|fsm|Equal0~1_combout\) # (!\p1|fsm|Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110000001100110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|ir0|ALT_INV_Q\(6),
	datac => \p1|fsm|ALT_INV_Equal0~1_combout\,
	datad => \p1|fsm|ALT_INV_Equal0~0_combout\,
	dataf => \p1|ir0|ALT_INV_Q[7]~DUPLICATE_q\,
	combout => \p1|fsm|Mux15~0_combout\);

-- Location: LABCELL_X14_Y10_N30
\p1|fsm|Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector13~0_combout\ = ( \p1|decX|Mux0~3_combout\ & ( ((\p1|fsm|Selector16~1_combout\ & ((!\p1|ir0|Q\(8)) # (\p1|fsm|Mux15~0_combout\)))) # (\p1|fsm|Selector16~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111101111110000111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(8),
	datab => \p1|fsm|ALT_INV_Mux15~0_combout\,
	datac => \p1|fsm|ALT_INV_Selector16~0_combout\,
	datad => \p1|fsm|ALT_INV_Selector16~1_combout\,
	dataf => \p1|decX|ALT_INV_Mux0~3_combout\,
	combout => \p1|fsm|Selector13~0_combout\);

-- Location: FF_X13_Y13_N53
\p1|reg2|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[8]~40_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q\(8));

-- Location: FF_X14_Y12_N44
\p1|reg1|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[8]~40_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(8));

-- Location: LABCELL_X14_Y13_N24
\p1|reg6|Q[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg6|Q[8]~feeder_combout\ = ( \p1|mux0|y[8]~40_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[8]~40_combout\,
	combout => \p1|reg6|Q[8]~feeder_combout\);

-- Location: FF_X14_Y13_N25
\p1|reg6|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg6|Q[8]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(8));

-- Location: LABCELL_X14_Y13_N3
\p1|reg5|Q[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg5|Q[8]~feeder_combout\ = ( \p1|mux0|y[8]~40_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[8]~40_combout\,
	combout => \p1|reg5|Q[8]~feeder_combout\);

-- Location: FF_X14_Y13_N4
\p1|reg5|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg5|Q[8]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(8));

-- Location: FF_X14_Y12_N8
\p1|reg4|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[8]~40_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg4|Q\(8));

-- Location: LABCELL_X14_Y12_N6
\p1|mux0|y[8]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[8]~38_combout\ = ( \p1|reg4|Q\(8) & ( \p1|mux0|y[1]~1_combout\ & ( (!\p1|mux0|y[1]~0_combout\ & ((\p1|pc0|v\(8)))) # (\p1|mux0|y[1]~0_combout\ & (\p1|reg6|Q\(8))) ) ) ) # ( !\p1|reg4|Q\(8) & ( \p1|mux0|y[1]~1_combout\ & ( 
-- (!\p1|mux0|y[1]~0_combout\ & ((\p1|pc0|v\(8)))) # (\p1|mux0|y[1]~0_combout\ & (\p1|reg6|Q\(8))) ) ) ) # ( \p1|reg4|Q\(8) & ( !\p1|mux0|y[1]~1_combout\ & ( (!\p1|mux0|y[1]~0_combout\) # (\p1|reg5|Q\(8)) ) ) ) # ( !\p1|reg4|Q\(8) & ( 
-- !\p1|mux0|y[1]~1_combout\ & ( (\p1|reg5|Q\(8) & \p1|mux0|y[1]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg6|ALT_INV_Q\(8),
	datab => \p1|reg5|ALT_INV_Q\(8),
	datac => \p1|mux0|ALT_INV_y[1]~0_combout\,
	datad => \p1|pc0|ALT_INV_v\(8),
	datae => \p1|reg4|ALT_INV_Q\(8),
	dataf => \p1|mux0|ALT_INV_y[1]~1_combout\,
	combout => \p1|mux0|y[8]~38_combout\);

-- Location: LABCELL_X14_Y12_N42
\p1|mux0|y[8]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[8]~39_combout\ = ( \p1|reg1|Q\(8) & ( \p1|mux0|y[8]~38_combout\ & ( (!\p1|mux0|y[1]~3_combout\) # ((!\p1|mux0|y[1]~4_combout\ & ((\p1|reg2|Q\(8)))) # (\p1|mux0|y[1]~4_combout\ & (\p1|reg3|Q[8]~DUPLICATE_q\))) ) ) ) # ( !\p1|reg1|Q\(8) & ( 
-- \p1|mux0|y[8]~38_combout\ & ( (!\p1|mux0|y[1]~3_combout\ & (((\p1|mux0|y[1]~4_combout\)))) # (\p1|mux0|y[1]~3_combout\ & ((!\p1|mux0|y[1]~4_combout\ & ((\p1|reg2|Q\(8)))) # (\p1|mux0|y[1]~4_combout\ & (\p1|reg3|Q[8]~DUPLICATE_q\)))) ) ) ) # ( 
-- \p1|reg1|Q\(8) & ( !\p1|mux0|y[8]~38_combout\ & ( (!\p1|mux0|y[1]~3_combout\ & (((!\p1|mux0|y[1]~4_combout\)))) # (\p1|mux0|y[1]~3_combout\ & ((!\p1|mux0|y[1]~4_combout\ & ((\p1|reg2|Q\(8)))) # (\p1|mux0|y[1]~4_combout\ & (\p1|reg3|Q[8]~DUPLICATE_q\)))) ) 
-- ) ) # ( !\p1|reg1|Q\(8) & ( !\p1|mux0|y[8]~38_combout\ & ( (\p1|mux0|y[1]~3_combout\ & ((!\p1|mux0|y[1]~4_combout\ & ((\p1|reg2|Q\(8)))) # (\p1|mux0|y[1]~4_combout\ & (\p1|reg3|Q[8]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000101111100110000010100000011111101011111001111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg3|ALT_INV_Q[8]~DUPLICATE_q\,
	datab => \p1|reg2|ALT_INV_Q\(8),
	datac => \p1|mux0|ALT_INV_y[1]~3_combout\,
	datad => \p1|mux0|ALT_INV_y[1]~4_combout\,
	datae => \p1|reg1|ALT_INV_Q\(8),
	dataf => \p1|mux0|ALT_INV_y[8]~38_combout\,
	combout => \p1|mux0|y[8]~39_combout\);

-- Location: FF_X13_Y12_N58
\p1|regG|Q[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|addsub0|Add0~33_sumout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regG|Q[8]~DUPLICATE_q\);

-- Location: FF_X14_Y12_N26
\p1|reg0|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|mux0|y[8]~40_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(8));

-- Location: LABCELL_X14_Y12_N24
\p1|mux0|y[8]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[8]~40_combout\ = ( \p1|reg0|Q\(8) & ( \DIN[8]~8_combout\ & ( (!\p1|mux0|y[1]~14_combout\ & (((\p1|regG|Q[8]~DUPLICATE_q\) # (\p1|mux0|y[1]~15_combout\)))) # (\p1|mux0|y[1]~14_combout\ & (((!\p1|mux0|y[1]~15_combout\)) # 
-- (\p1|mux0|y[8]~39_combout\))) ) ) ) # ( !\p1|reg0|Q\(8) & ( \DIN[8]~8_combout\ & ( (!\p1|mux0|y[1]~14_combout\ & (((!\p1|mux0|y[1]~15_combout\ & \p1|regG|Q[8]~DUPLICATE_q\)))) # (\p1|mux0|y[1]~14_combout\ & (((!\p1|mux0|y[1]~15_combout\)) # 
-- (\p1|mux0|y[8]~39_combout\))) ) ) ) # ( \p1|reg0|Q\(8) & ( !\DIN[8]~8_combout\ & ( (!\p1|mux0|y[1]~14_combout\ & (((\p1|regG|Q[8]~DUPLICATE_q\) # (\p1|mux0|y[1]~15_combout\)))) # (\p1|mux0|y[1]~14_combout\ & (\p1|mux0|y[8]~39_combout\ & 
-- (\p1|mux0|y[1]~15_combout\))) ) ) ) # ( !\p1|reg0|Q\(8) & ( !\DIN[8]~8_combout\ & ( (!\p1|mux0|y[1]~14_combout\ & (((!\p1|mux0|y[1]~15_combout\ & \p1|regG|Q[8]~DUPLICATE_q\)))) # (\p1|mux0|y[1]~14_combout\ & (\p1|mux0|y[8]~39_combout\ & 
-- (\p1|mux0|y[1]~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110100001000010111010101101010001111100010101101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[1]~14_combout\,
	datab => \p1|mux0|ALT_INV_y[8]~39_combout\,
	datac => \p1|mux0|ALT_INV_y[1]~15_combout\,
	datad => \p1|regG|ALT_INV_Q[8]~DUPLICATE_q\,
	datae => \p1|reg0|ALT_INV_Q\(8),
	dataf => \ALT_INV_DIN[8]~8_combout\,
	combout => \p1|mux0|y[8]~40_combout\);

-- Location: LABCELL_X12_Y12_N6
\p1|regAddr|Q[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|regAddr|Q[8]~feeder_combout\ = ( \p1|mux0|y[8]~40_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[8]~40_combout\,
	combout => \p1|regAddr|Q[8]~feeder_combout\);

-- Location: FF_X12_Y12_N7
\p1|regAddr|Q[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|regAddr|Q[8]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regAddr|Q[8]~DUPLICATE_q\);

-- Location: IOIBUF_X10_Y0_N58
\sw[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(8),
	o => \sw[8]~input_o\);

-- Location: FF_X10_Y10_N17
\u1|r0|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \sw[8]~input_o\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|ff0|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|r0|Q\(8));

-- Location: LABCELL_X10_Y10_N15
\DIN[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIN[8]~8_combout\ = ( \u1|r0|Q\(8) & ( \m0|altsyncram_component|auto_generated|q_a\(8) ) ) # ( !\u1|r0|Q\(8) & ( \m0|altsyncram_component|auto_generated|q_a\(8) & ( (!\p1|regAddr|Q\(7)) # (!\p1|regAddr|Q[8]~DUPLICATE_q\) ) ) ) # ( \u1|r0|Q\(8) & ( 
-- !\m0|altsyncram_component|auto_generated|q_a\(8) & ( (\p1|regAddr|Q\(7) & \p1|regAddr|Q[8]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010111111111101010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|regAddr|ALT_INV_Q\(7),
	datad => \p1|regAddr|ALT_INV_Q[8]~DUPLICATE_q\,
	datae => \u1|r0|ALT_INV_Q\(8),
	dataf => \m0|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	combout => \DIN[8]~8_combout\);

-- Location: FF_X13_Y10_N59
\p1|ir0|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DIN[8]~8_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|y_Q.TXX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(8));

-- Location: LABCELL_X14_Y10_N33
\p1|fsm|Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector16~0_combout\ = ( \p1|ir0|Q[7]~DUPLICATE_q\ & ( (!\p1|ir0|Q\(8) & \p1|fsm|y_Q.T3~q\) ) ) # ( !\p1|ir0|Q[7]~DUPLICATE_q\ & ( (\p1|fsm|y_Q.T3~q\ & (!\p1|ir0|Q\(8) $ (!\p1|ir0|Q\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(8),
	datac => \p1|fsm|ALT_INV_y_Q.T3~q\,
	datad => \p1|ir0|ALT_INV_Q\(6),
	dataf => \p1|ir0|ALT_INV_Q[7]~DUPLICATE_q\,
	combout => \p1|fsm|Selector16~0_combout\);

-- Location: LABCELL_X12_Y10_N27
\p1|fsm|Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector14~0_combout\ = ( \p1|fsm|Selector16~1_combout\ & ( (\p1|decX|Mux0~4_combout\ & (((!\p1|ir0|Q\(8)) # (\p1|fsm|Mux15~0_combout\)) # (\p1|fsm|Selector16~0_combout\))) ) ) # ( !\p1|fsm|Selector16~1_combout\ & ( (\p1|fsm|Selector16~0_combout\ 
-- & \p1|decX|Mux0~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100001101000011110000110100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector16~0_combout\,
	datab => \p1|ir0|ALT_INV_Q\(8),
	datac => \p1|decX|ALT_INV_Mux0~4_combout\,
	datad => \p1|fsm|ALT_INV_Mux15~0_combout\,
	dataf => \p1|fsm|ALT_INV_Selector16~1_combout\,
	combout => \p1|fsm|Selector14~0_combout\);

-- Location: FF_X13_Y13_N25
\p1|reg3|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg3|Q[7]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(7));

-- Location: FF_X13_Y10_N8
\p1|reg2|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[7]~37_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q\(7));

-- Location: LABCELL_X16_Y12_N27
\p1|reg6|Q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg6|Q[7]~feeder_combout\ = ( \p1|mux0|y[7]~37_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[7]~37_combout\,
	combout => \p1|reg6|Q[7]~feeder_combout\);

-- Location: FF_X16_Y12_N28
\p1|reg6|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg6|Q[7]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(7));

-- Location: FF_X14_Y13_N19
\p1|reg5|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[7]~37_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(7));

-- Location: FF_X14_Y12_N56
\p1|reg4|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[7]~37_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg4|Q\(7));

-- Location: LABCELL_X14_Y12_N54
\p1|mux0|y[7]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[7]~35_combout\ = ( \p1|reg4|Q\(7) & ( \p1|mux0|y[1]~0_combout\ & ( (!\p1|mux0|y[1]~1_combout\ & ((\p1|reg5|Q\(7)))) # (\p1|mux0|y[1]~1_combout\ & (\p1|reg6|Q\(7))) ) ) ) # ( !\p1|reg4|Q\(7) & ( \p1|mux0|y[1]~0_combout\ & ( 
-- (!\p1|mux0|y[1]~1_combout\ & ((\p1|reg5|Q\(7)))) # (\p1|mux0|y[1]~1_combout\ & (\p1|reg6|Q\(7))) ) ) ) # ( \p1|reg4|Q\(7) & ( !\p1|mux0|y[1]~0_combout\ & ( (!\p1|mux0|y[1]~1_combout\) # (\p1|pc0|v\(7)) ) ) ) # ( !\p1|reg4|Q\(7) & ( 
-- !\p1|mux0|y[1]~0_combout\ & ( (\p1|pc0|v\(7) & \p1|mux0|y[1]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111110000111100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg6|ALT_INV_Q\(7),
	datab => \p1|reg5|ALT_INV_Q\(7),
	datac => \p1|pc0|ALT_INV_v\(7),
	datad => \p1|mux0|ALT_INV_y[1]~1_combout\,
	datae => \p1|reg4|ALT_INV_Q\(7),
	dataf => \p1|mux0|ALT_INV_y[1]~0_combout\,
	combout => \p1|mux0|y[7]~35_combout\);

-- Location: FF_X14_Y12_N50
\p1|reg1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[7]~37_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(7));

-- Location: LABCELL_X14_Y12_N48
\p1|mux0|y[7]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[7]~36_combout\ = ( \p1|reg1|Q\(7) & ( \p1|mux0|y[1]~3_combout\ & ( (!\p1|mux0|y[1]~4_combout\ & ((\p1|reg2|Q\(7)))) # (\p1|mux0|y[1]~4_combout\ & (\p1|reg3|Q\(7))) ) ) ) # ( !\p1|reg1|Q\(7) & ( \p1|mux0|y[1]~3_combout\ & ( 
-- (!\p1|mux0|y[1]~4_combout\ & ((\p1|reg2|Q\(7)))) # (\p1|mux0|y[1]~4_combout\ & (\p1|reg3|Q\(7))) ) ) ) # ( \p1|reg1|Q\(7) & ( !\p1|mux0|y[1]~3_combout\ & ( (!\p1|mux0|y[1]~4_combout\) # (\p1|mux0|y[7]~35_combout\) ) ) ) # ( !\p1|reg1|Q\(7) & ( 
-- !\p1|mux0|y[1]~3_combout\ & ( (\p1|mux0|y[7]~35_combout\ & \p1|mux0|y[1]~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111110000111100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg3|ALT_INV_Q\(7),
	datab => \p1|reg2|ALT_INV_Q\(7),
	datac => \p1|mux0|ALT_INV_y[7]~35_combout\,
	datad => \p1|mux0|ALT_INV_y[1]~4_combout\,
	datae => \p1|reg1|ALT_INV_Q\(7),
	dataf => \p1|mux0|ALT_INV_y[1]~3_combout\,
	combout => \p1|mux0|y[7]~36_combout\);

-- Location: FF_X14_Y12_N32
\p1|reg0|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|mux0|y[7]~37_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(7));

-- Location: FF_X13_Y12_N55
\p1|regG|Q[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|addsub0|Add0~29_sumout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regG|Q[7]~DUPLICATE_q\);

-- Location: LABCELL_X14_Y12_N30
\p1|mux0|y[7]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[7]~37_combout\ = ( \p1|reg0|Q\(7) & ( \p1|regG|Q[7]~DUPLICATE_q\ & ( (!\p1|mux0|y[1]~14_combout\) # ((!\p1|mux0|y[1]~15_combout\ & ((\DIN[7]~7_combout\))) # (\p1|mux0|y[1]~15_combout\ & (\p1|mux0|y[7]~36_combout\))) ) ) ) # ( !\p1|reg0|Q\(7) & 
-- ( \p1|regG|Q[7]~DUPLICATE_q\ & ( (!\p1|mux0|y[1]~15_combout\ & (((!\p1|mux0|y[1]~14_combout\) # (\DIN[7]~7_combout\)))) # (\p1|mux0|y[1]~15_combout\ & (\p1|mux0|y[7]~36_combout\ & ((\p1|mux0|y[1]~14_combout\)))) ) ) ) # ( \p1|reg0|Q\(7) & ( 
-- !\p1|regG|Q[7]~DUPLICATE_q\ & ( (!\p1|mux0|y[1]~15_combout\ & (((\DIN[7]~7_combout\ & \p1|mux0|y[1]~14_combout\)))) # (\p1|mux0|y[1]~15_combout\ & (((!\p1|mux0|y[1]~14_combout\)) # (\p1|mux0|y[7]~36_combout\))) ) ) ) # ( !\p1|reg0|Q\(7) & ( 
-- !\p1|regG|Q[7]~DUPLICATE_q\ & ( (\p1|mux0|y[1]~14_combout\ & ((!\p1|mux0|y[1]~15_combout\ & ((\DIN[7]~7_combout\))) # (\p1|mux0|y[1]~15_combout\ & (\p1|mux0|y[7]~36_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110101000011110011010111110000001101011111111100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[7]~36_combout\,
	datab => \ALT_INV_DIN[7]~7_combout\,
	datac => \p1|mux0|ALT_INV_y[1]~15_combout\,
	datad => \p1|mux0|ALT_INV_y[1]~14_combout\,
	datae => \p1|reg0|ALT_INV_Q\(7),
	dataf => \p1|regG|ALT_INV_Q[7]~DUPLICATE_q\,
	combout => \p1|mux0|y[7]~37_combout\);

-- Location: LABCELL_X12_Y12_N36
\p1|regAddr|Q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|regAddr|Q[7]~feeder_combout\ = ( \p1|mux0|y[7]~37_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[7]~37_combout\,
	combout => \p1|regAddr|Q[7]~feeder_combout\);

-- Location: FF_X12_Y12_N38
\p1|regAddr|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|regAddr|Q[7]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regAddr|Q\(7));

-- Location: IOIBUF_X18_Y0_N1
\sw[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

-- Location: FF_X12_Y10_N2
\u1|r0|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \sw[6]~input_o\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|ff0|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|r0|Q\(6));

-- Location: LABCELL_X12_Y10_N9
\DIN[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIN[6]~6_combout\ = ( \m0|altsyncram_component|auto_generated|q_a\(6) & ( (!\p1|regAddr|Q\(7)) # ((!\p1|regAddr|Q[8]~DUPLICATE_q\) # (\u1|r0|Q\(6))) ) ) # ( !\m0|altsyncram_component|auto_generated|q_a\(6) & ( (\p1|regAddr|Q\(7) & 
-- (\p1|regAddr|Q[8]~DUPLICATE_q\ & \u1|r0|Q\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010111111010111111111111101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|regAddr|ALT_INV_Q\(7),
	datac => \p1|regAddr|ALT_INV_Q[8]~DUPLICATE_q\,
	datad => \u1|r0|ALT_INV_Q\(6),
	dataf => \m0|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \DIN[6]~6_combout\);

-- Location: FF_X13_Y10_N23
\p1|ir0|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DIN[6]~6_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|y_Q.TXX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(6));

-- Location: MLABCELL_X13_Y9_N24
\p1|fsm|Dout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Dout~0_combout\ = ( \p1|fsm|y_Q.T3~q\ & ( (!\p1|ir0|Q\(7) & (!\p1|ir0|Q\(6) $ (!\p1|ir0|Q\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011010000000000101101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(6),
	datac => \p1|ir0|ALT_INV_Q\(8),
	datad => \p1|ir0|ALT_INV_Q\(7),
	dataf => \p1|fsm|ALT_INV_y_Q.T3~q\,
	combout => \p1|fsm|Dout~0_combout\);

-- Location: LABCELL_X14_Y11_N6
\p1|mux0|y[1]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~12_combout\ = ( \p1|fsm|Selector4~3_combout\ & ( \p1|mux0|y[1]~6_combout\ & ( (!\p1|fsm|Dout~0_combout\ & (\p1|fsm|Selector8~2_combout\ & (\p1|fsm|Selector5~4_combout\ & \p1|mux0|y[1]~7_combout\))) ) ) ) # ( \p1|fsm|Selector4~3_combout\ & ( 
-- !\p1|mux0|y[1]~6_combout\ & ( !\p1|fsm|Dout~0_combout\ ) ) ) # ( !\p1|fsm|Selector4~3_combout\ & ( !\p1|mux0|y[1]~6_combout\ & ( !\p1|fsm|Dout~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Dout~0_combout\,
	datab => \p1|fsm|ALT_INV_Selector8~2_combout\,
	datac => \p1|fsm|ALT_INV_Selector5~4_combout\,
	datad => \p1|mux0|ALT_INV_y[1]~7_combout\,
	datae => \p1|fsm|ALT_INV_Selector4~3_combout\,
	dataf => \p1|mux0|ALT_INV_y[1]~6_combout\,
	combout => \p1|mux0|y[1]~12_combout\);

-- Location: LABCELL_X14_Y11_N0
\p1|mux0|y[1]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~14_combout\ = ( \p1|mux0|y[1]~8_combout\ & ( (!\p1|mux0|y[1]~13_combout\ & ((!\p1|mux0|y[1]~12_combout\) # (\p1|fsm|Selector1~1_combout\))) ) ) # ( !\p1|mux0|y[1]~8_combout\ & ( !\p1|mux0|y[1]~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011000000111100001100000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|mux0|ALT_INV_y[1]~12_combout\,
	datac => \p1|mux0|ALT_INV_y[1]~13_combout\,
	datad => \p1|fsm|ALT_INV_Selector1~1_combout\,
	dataf => \p1|mux0|ALT_INV_y[1]~8_combout\,
	combout => \p1|mux0|y[1]~14_combout\);

-- Location: MLABCELL_X13_Y13_N30
\p1|reg3|Q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg3|Q[1]~feeder_combout\ = ( \p1|mux0|y[1]~19_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[1]~19_combout\,
	combout => \p1|reg3|Q[1]~feeder_combout\);

-- Location: FF_X13_Y13_N31
\p1|reg3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg3|Q[1]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(1));

-- Location: MLABCELL_X13_Y13_N48
\p1|reg2|Q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg2|Q[1]~feeder_combout\ = ( \p1|mux0|y[1]~19_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[1]~19_combout\,
	combout => \p1|reg2|Q[1]~feeder_combout\);

-- Location: FF_X13_Y13_N49
\p1|reg2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg2|Q[1]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q\(1));

-- Location: FF_X14_Y12_N14
\p1|reg1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[1]~19_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(1));

-- Location: LABCELL_X16_Y12_N48
\p1|reg5|Q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg5|Q[1]~feeder_combout\ = ( \p1|mux0|y[1]~19_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[1]~19_combout\,
	combout => \p1|reg5|Q[1]~feeder_combout\);

-- Location: FF_X16_Y12_N49
\p1|reg5|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg5|Q[1]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(1));

-- Location: LABCELL_X16_Y12_N42
\p1|reg6|Q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg6|Q[1]~feeder_combout\ = ( \p1|mux0|y[1]~19_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[1]~19_combout\,
	combout => \p1|reg6|Q[1]~feeder_combout\);

-- Location: FF_X16_Y12_N43
\p1|reg6|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg6|Q[1]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(1));

-- Location: FF_X14_Y12_N20
\p1|reg4|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[1]~19_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg4|Q\(1));

-- Location: LABCELL_X14_Y12_N18
\p1|mux0|y[1]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~17_combout\ = ( \p1|reg4|Q\(1) & ( \p1|mux0|y[1]~0_combout\ & ( (!\p1|mux0|y[1]~1_combout\ & (\p1|reg5|Q\(1))) # (\p1|mux0|y[1]~1_combout\ & ((\p1|reg6|Q\(1)))) ) ) ) # ( !\p1|reg4|Q\(1) & ( \p1|mux0|y[1]~0_combout\ & ( 
-- (!\p1|mux0|y[1]~1_combout\ & (\p1|reg5|Q\(1))) # (\p1|mux0|y[1]~1_combout\ & ((\p1|reg6|Q\(1)))) ) ) ) # ( \p1|reg4|Q\(1) & ( !\p1|mux0|y[1]~0_combout\ & ( (!\p1|mux0|y[1]~1_combout\) # (\p1|pc0|v\(1)) ) ) ) # ( !\p1|reg4|Q\(1) & ( 
-- !\p1|mux0|y[1]~0_combout\ & ( (\p1|pc0|v\(1) & \p1|mux0|y[1]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111110011001101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg5|ALT_INV_Q\(1),
	datab => \p1|pc0|ALT_INV_v\(1),
	datac => \p1|reg6|ALT_INV_Q\(1),
	datad => \p1|mux0|ALT_INV_y[1]~1_combout\,
	datae => \p1|reg4|ALT_INV_Q\(1),
	dataf => \p1|mux0|ALT_INV_y[1]~0_combout\,
	combout => \p1|mux0|y[1]~17_combout\);

-- Location: LABCELL_X14_Y12_N12
\p1|mux0|y[1]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~18_combout\ = ( \p1|reg1|Q\(1) & ( \p1|mux0|y[1]~17_combout\ & ( (!\p1|mux0|y[1]~3_combout\) # ((!\p1|mux0|y[1]~4_combout\ & ((\p1|reg2|Q\(1)))) # (\p1|mux0|y[1]~4_combout\ & (\p1|reg3|Q\(1)))) ) ) ) # ( !\p1|reg1|Q\(1) & ( 
-- \p1|mux0|y[1]~17_combout\ & ( (!\p1|mux0|y[1]~3_combout\ & (((\p1|mux0|y[1]~4_combout\)))) # (\p1|mux0|y[1]~3_combout\ & ((!\p1|mux0|y[1]~4_combout\ & ((\p1|reg2|Q\(1)))) # (\p1|mux0|y[1]~4_combout\ & (\p1|reg3|Q\(1))))) ) ) ) # ( \p1|reg1|Q\(1) & ( 
-- !\p1|mux0|y[1]~17_combout\ & ( (!\p1|mux0|y[1]~3_combout\ & (((!\p1|mux0|y[1]~4_combout\)))) # (\p1|mux0|y[1]~3_combout\ & ((!\p1|mux0|y[1]~4_combout\ & ((\p1|reg2|Q\(1)))) # (\p1|mux0|y[1]~4_combout\ & (\p1|reg3|Q\(1))))) ) ) ) # ( !\p1|reg1|Q\(1) & ( 
-- !\p1|mux0|y[1]~17_combout\ & ( (\p1|mux0|y[1]~3_combout\ & ((!\p1|mux0|y[1]~4_combout\ & ((\p1|reg2|Q\(1)))) # (\p1|mux0|y[1]~4_combout\ & (\p1|reg3|Q\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000101111100110000010100000011111101011111001111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg3|ALT_INV_Q\(1),
	datab => \p1|reg2|ALT_INV_Q\(1),
	datac => \p1|mux0|ALT_INV_y[1]~3_combout\,
	datad => \p1|mux0|ALT_INV_y[1]~4_combout\,
	datae => \p1|reg1|ALT_INV_Q\(1),
	dataf => \p1|mux0|ALT_INV_y[1]~17_combout\,
	combout => \p1|mux0|y[1]~18_combout\);

-- Location: FF_X13_Y12_N37
\p1|regG|Q[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|addsub0|Add0~5_sumout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regG|Q[1]~DUPLICATE_q\);

-- Location: FF_X14_Y12_N2
\p1|reg0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|mux0|y[1]~19_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(1));

-- Location: LABCELL_X14_Y12_N0
\p1|mux0|y[1]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~19_combout\ = ( \p1|reg0|Q\(1) & ( \DIN[1]~1_combout\ & ( (!\p1|mux0|y[1]~14_combout\ & (((\p1|mux0|y[1]~15_combout\) # (\p1|regG|Q[1]~DUPLICATE_q\)))) # (\p1|mux0|y[1]~14_combout\ & (((!\p1|mux0|y[1]~15_combout\)) # 
-- (\p1|mux0|y[1]~18_combout\))) ) ) ) # ( !\p1|reg0|Q\(1) & ( \DIN[1]~1_combout\ & ( (!\p1|mux0|y[1]~14_combout\ & (((\p1|regG|Q[1]~DUPLICATE_q\ & !\p1|mux0|y[1]~15_combout\)))) # (\p1|mux0|y[1]~14_combout\ & (((!\p1|mux0|y[1]~15_combout\)) # 
-- (\p1|mux0|y[1]~18_combout\))) ) ) ) # ( \p1|reg0|Q\(1) & ( !\DIN[1]~1_combout\ & ( (!\p1|mux0|y[1]~14_combout\ & (((\p1|mux0|y[1]~15_combout\) # (\p1|regG|Q[1]~DUPLICATE_q\)))) # (\p1|mux0|y[1]~14_combout\ & (\p1|mux0|y[1]~18_combout\ & 
-- ((\p1|mux0|y[1]~15_combout\)))) ) ) ) # ( !\p1|reg0|Q\(1) & ( !\DIN[1]~1_combout\ & ( (!\p1|mux0|y[1]~14_combout\ & (((\p1|regG|Q[1]~DUPLICATE_q\ & !\p1|mux0|y[1]~15_combout\)))) # (\p1|mux0|y[1]~14_combout\ & (\p1|mux0|y[1]~18_combout\ & 
-- ((\p1|mux0|y[1]~15_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000010001000010101011101101011111000100010101111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[1]~14_combout\,
	datab => \p1|mux0|ALT_INV_y[1]~18_combout\,
	datac => \p1|regG|ALT_INV_Q[1]~DUPLICATE_q\,
	datad => \p1|mux0|ALT_INV_y[1]~15_combout\,
	datae => \p1|reg0|ALT_INV_Q\(1),
	dataf => \ALT_INV_DIN[1]~1_combout\,
	combout => \p1|mux0|y[1]~19_combout\);

-- Location: FF_X13_Y10_N38
\p1|regDout|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[1]~19_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|DoutIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regDout|Q\(1));

-- Location: LABCELL_X12_Y12_N0
\u0|En[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|En[5]~0_combout\ = ( \p1|regAddr|Q[2]~DUPLICATE_q\ & ( !\p1|regAddr|Q\(1) & ( (!\p1|regAddr|Q\(7) & (\p1|regAddr|Q\(0) & (\p1|regAddr|Q[8]~DUPLICATE_q\ & \p1|ff0|Q~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|regAddr|ALT_INV_Q\(7),
	datab => \p1|regAddr|ALT_INV_Q\(0),
	datac => \p1|regAddr|ALT_INV_Q[8]~DUPLICATE_q\,
	datad => \p1|ff0|ALT_INV_Q~q\,
	datae => \p1|regAddr|ALT_INV_Q[2]~DUPLICATE_q\,
	dataf => \p1|regAddr|ALT_INV_Q\(1),
	combout => \u0|En[5]~0_combout\);

-- Location: FF_X24_Y4_N26
\u0|r5|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|regDout|Q\(1),
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u0|En[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r5|Q\(1));

-- Location: FF_X24_Y4_N32
\u0|r5|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|regDout|Q\(2),
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u0|En[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r5|Q\(2));

-- Location: FF_X24_Y4_N52
\u0|r5|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|regDout|Q\(3),
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u0|En[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r5|Q\(3));

-- Location: FF_X24_Y4_N35
\u0|r5|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|regDout|Q\(0),
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u0|En[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r5|Q\(0));

-- Location: LABCELL_X24_Y4_N57
\u0|s5|hex[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s5|hex[6]~0_combout\ = ( \u0|r5|Q\(0) & ( (!\u0|r5|Q\(3) & (!\u0|r5|Q\(1) $ (\u0|r5|Q\(2)))) ) ) # ( !\u0|r5|Q\(0) & ( (!\u0|r5|Q\(1) & (!\u0|r5|Q\(2) $ (\u0|r5|Q\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001010101000000000101010100101000000001010010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r5|ALT_INV_Q\(1),
	datac => \u0|r5|ALT_INV_Q\(2),
	datad => \u0|r5|ALT_INV_Q\(3),
	dataf => \u0|r5|ALT_INV_Q\(0),
	combout => \u0|s5|hex[6]~0_combout\);

-- Location: LABCELL_X24_Y4_N27
\u0|s5|hex[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s5|hex[5]~1_combout\ = ( \u0|r5|Q\(1) & ( (!\u0|r5|Q\(3) & ((!\u0|r5|Q\(2)) # (\u0|r5|Q\(0)))) ) ) # ( !\u0|r5|Q\(1) & ( (\u0|r5|Q\(0) & (!\u0|r5|Q\(3) $ (\u0|r5|Q\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000101000001010000010100000111000100110001001100010011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r5|ALT_INV_Q\(0),
	datab => \u0|r5|ALT_INV_Q\(3),
	datac => \u0|r5|ALT_INV_Q\(2),
	dataf => \u0|r5|ALT_INV_Q\(1),
	combout => \u0|s5|hex[5]~1_combout\);

-- Location: LABCELL_X24_Y4_N12
\u0|s5|hex[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s5|hex[4]~2_combout\ = ( \u0|r5|Q\(2) & ( (!\u0|r5|Q\(3) & ((!\u0|r5|Q\(1)) # (\u0|r5|Q\(0)))) ) ) # ( !\u0|r5|Q\(2) & ( (\u0|r5|Q\(0) & ((!\u0|r5|Q\(1)) # (!\u0|r5|Q\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001010000011110000101010101111000000001010111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r5|ALT_INV_Q\(1),
	datac => \u0|r5|ALT_INV_Q\(0),
	datad => \u0|r5|ALT_INV_Q\(3),
	dataf => \u0|r5|ALT_INV_Q\(2),
	combout => \u0|s5|hex[4]~2_combout\);

-- Location: LABCELL_X24_Y4_N48
\u0|s5|hex[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s5|hex[3]~3_combout\ = ( \u0|r5|Q\(3) & ( \u0|r5|Q\(1) & ( !\u0|r5|Q\(0) $ (\u0|r5|Q\(2)) ) ) ) # ( !\u0|r5|Q\(3) & ( \u0|r5|Q\(1) & ( (\u0|r5|Q\(0) & \u0|r5|Q\(2)) ) ) ) # ( !\u0|r5|Q\(3) & ( !\u0|r5|Q\(1) & ( !\u0|r5|Q\(0) $ (!\u0|r5|Q\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110000000000000000000010001000100011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r5|ALT_INV_Q\(0),
	datab => \u0|r5|ALT_INV_Q\(2),
	datae => \u0|r5|ALT_INV_Q\(3),
	dataf => \u0|r5|ALT_INV_Q\(1),
	combout => \u0|s5|hex[3]~3_combout\);

-- Location: LABCELL_X24_Y4_N15
\u0|s5|hex[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s5|hex[2]~4_combout\ = ( \u0|r5|Q\(0) & ( (\u0|r5|Q\(1) & (\u0|r5|Q\(2) & \u0|r5|Q\(3))) ) ) # ( !\u0|r5|Q\(0) & ( (!\u0|r5|Q\(2) & (\u0|r5|Q\(1) & !\u0|r5|Q\(3))) # (\u0|r5|Q\(2) & ((\u0|r5|Q\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000001111010100000000111100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r5|ALT_INV_Q\(1),
	datac => \u0|r5|ALT_INV_Q\(2),
	datad => \u0|r5|ALT_INV_Q\(3),
	dataf => \u0|r5|ALT_INV_Q\(0),
	combout => \u0|s5|hex[2]~4_combout\);

-- Location: LABCELL_X24_Y4_N24
\u0|s5|hex[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s5|hex[1]~5_combout\ = ( \u0|r5|Q\(2) & ( (!\u0|r5|Q\(0) & ((\u0|r5|Q\(1)) # (\u0|r5|Q\(3)))) # (\u0|r5|Q\(0) & (!\u0|r5|Q\(3) $ (\u0|r5|Q\(1)))) ) ) # ( !\u0|r5|Q\(2) & ( (\u0|r5|Q\(0) & (\u0|r5|Q\(3) & \u0|r5|Q\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000101100110101110110110011010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r5|ALT_INV_Q\(0),
	datab => \u0|r5|ALT_INV_Q\(3),
	datad => \u0|r5|ALT_INV_Q\(1),
	dataf => \u0|r5|ALT_INV_Q\(2),
	combout => \u0|s5|hex[1]~5_combout\);

-- Location: LABCELL_X24_Y4_N33
\u0|s5|hex[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s5|hex[0]~6_combout\ = ( \u0|r5|Q\(0) & ( \u0|r5|Q\(1) & ( (\u0|r5|Q\(3) & !\u0|r5|Q\(2)) ) ) ) # ( \u0|r5|Q\(0) & ( !\u0|r5|Q\(1) & ( !\u0|r5|Q\(3) $ (\u0|r5|Q\(2)) ) ) ) # ( !\u0|r5|Q\(0) & ( !\u0|r5|Q\(1) & ( (!\u0|r5|Q\(3) & \u0|r5|Q\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100110000111100001100000000000000000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|r5|ALT_INV_Q\(3),
	datac => \u0|r5|ALT_INV_Q\(2),
	datae => \u0|r5|ALT_INV_Q\(0),
	dataf => \u0|r5|ALT_INV_Q\(1),
	combout => \u0|s5|hex[0]~6_combout\);

-- Location: FF_X12_Y12_N8
\p1|regAddr|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|regAddr|Q[8]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regAddr|Q\(8));

-- Location: LABCELL_X12_Y12_N27
\u0|En[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|En[4]~1_combout\ = ( \p1|regAddr|Q[2]~DUPLICATE_q\ & ( !\p1|regAddr|Q\(0) & ( (!\p1|regAddr|Q\(1) & (\p1|regAddr|Q\(8) & (\p1|ff0|Q~q\ & !\p1|regAddr|Q\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|regAddr|ALT_INV_Q\(1),
	datab => \p1|regAddr|ALT_INV_Q\(8),
	datac => \p1|ff0|ALT_INV_Q~q\,
	datad => \p1|regAddr|ALT_INV_Q\(7),
	datae => \p1|regAddr|ALT_INV_Q[2]~DUPLICATE_q\,
	dataf => \p1|regAddr|ALT_INV_Q\(0),
	combout => \u0|En[4]~1_combout\);

-- Location: FF_X29_Y4_N44
\u0|r4|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|regDout|Q\(2),
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u0|En[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r4|Q\(2));

-- Location: FF_X29_Y4_N38
\u0|r4|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|regDout|Q\(3),
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u0|En[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r4|Q\(3));

-- Location: FF_X29_Y4_N41
\u0|r4|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|regDout|Q\(1),
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u0|En[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r4|Q\(1));

-- Location: FF_X29_Y4_N47
\u0|r4|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|regDout|Q\(0),
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u0|En[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r4|Q\(0));

-- Location: LABCELL_X26_Y4_N24
\u0|s4|hex[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s4|hex[6]~0_combout\ = ( \u0|r4|Q\(0) & ( (!\u0|r4|Q\(3) & (!\u0|r4|Q\(2) $ (\u0|r4|Q\(1)))) ) ) # ( !\u0|r4|Q\(0) & ( (!\u0|r4|Q\(1) & (!\u0|r4|Q\(2) $ (\u0|r4|Q\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000010010000100100001001000010000100100001001000010010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r4|ALT_INV_Q\(2),
	datab => \u0|r4|ALT_INV_Q\(3),
	datac => \u0|r4|ALT_INV_Q\(1),
	dataf => \u0|r4|ALT_INV_Q\(0),
	combout => \u0|s4|hex[6]~0_combout\);

-- Location: LABCELL_X29_Y4_N12
\u0|s4|hex[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s4|hex[5]~1_combout\ = ( \u0|r4|Q\(1) & ( (!\u0|r4|Q\(3) & ((!\u0|r4|Q\(2)) # (\u0|r4|Q\(0)))) ) ) # ( !\u0|r4|Q\(1) & ( (\u0|r4|Q\(0) & (!\u0|r4|Q\(3) $ (\u0|r4|Q\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100001001000010010000100110001010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r4|ALT_INV_Q\(3),
	datab => \u0|r4|ALT_INV_Q\(2),
	datac => \u0|r4|ALT_INV_Q\(0),
	dataf => \u0|r4|ALT_INV_Q\(1),
	combout => \u0|s4|hex[5]~1_combout\);

-- Location: LABCELL_X29_Y4_N15
\u0|s4|hex[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s4|hex[4]~2_combout\ = ( \u0|r4|Q\(1) & ( (!\u0|r4|Q\(3) & \u0|r4|Q\(0)) ) ) # ( !\u0|r4|Q\(1) & ( (!\u0|r4|Q\(2) & ((\u0|r4|Q\(0)))) # (\u0|r4|Q\(2) & (!\u0|r4|Q\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101011111010000010101111101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r4|ALT_INV_Q\(3),
	datac => \u0|r4|ALT_INV_Q\(2),
	datad => \u0|r4|ALT_INV_Q\(0),
	dataf => \u0|r4|ALT_INV_Q\(1),
	combout => \u0|s4|hex[4]~2_combout\);

-- Location: LABCELL_X29_Y4_N36
\u0|s4|hex[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s4|hex[3]~3_combout\ = ( \u0|r4|Q\(1) & ( (!\u0|r4|Q\(0) & (!\u0|r4|Q\(2) & \u0|r4|Q\(3))) # (\u0|r4|Q\(0) & (\u0|r4|Q\(2))) ) ) # ( !\u0|r4|Q\(1) & ( (!\u0|r4|Q\(3) & (!\u0|r4|Q\(0) $ (!\u0|r4|Q\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011000000000011001100000000000010001100110010001000110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r4|ALT_INV_Q\(0),
	datab => \u0|r4|ALT_INV_Q\(2),
	datad => \u0|r4|ALT_INV_Q\(3),
	dataf => \u0|r4|ALT_INV_Q\(1),
	combout => \u0|s4|hex[3]~3_combout\);

-- Location: LABCELL_X29_Y4_N42
\u0|s4|hex[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s4|hex[2]~4_combout\ = ( \u0|r4|Q\(0) & ( (\u0|r4|Q\(3) & (\u0|r4|Q\(1) & \u0|r4|Q\(2))) ) ) # ( !\u0|r4|Q\(0) & ( (!\u0|r4|Q\(3) & (\u0|r4|Q\(1) & !\u0|r4|Q\(2))) # (\u0|r4|Q\(3) & ((\u0|r4|Q\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001010101001000100101010100000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r4|ALT_INV_Q\(3),
	datab => \u0|r4|ALT_INV_Q\(1),
	datad => \u0|r4|ALT_INV_Q\(2),
	dataf => \u0|r4|ALT_INV_Q\(0),
	combout => \u0|s4|hex[2]~4_combout\);

-- Location: LABCELL_X29_Y4_N39
\u0|s4|hex[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s4|hex[1]~5_combout\ = ( \u0|r4|Q\(0) & ( (!\u0|r4|Q\(3) & (\u0|r4|Q\(2) & !\u0|r4|Q\(1))) # (\u0|r4|Q\(3) & ((\u0|r4|Q\(1)))) ) ) # ( !\u0|r4|Q\(0) & ( (\u0|r4|Q\(2) & ((\u0|r4|Q\(1)) # (\u0|r4|Q\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110011000000110011001100110000000011110011000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|r4|ALT_INV_Q\(2),
	datac => \u0|r4|ALT_INV_Q\(3),
	datad => \u0|r4|ALT_INV_Q\(1),
	dataf => \u0|r4|ALT_INV_Q\(0),
	combout => \u0|s4|hex[1]~5_combout\);

-- Location: LABCELL_X29_Y4_N45
\u0|s4|hex[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s4|hex[0]~6_combout\ = (!\u0|r4|Q\(3) & (!\u0|r4|Q\(1) & (!\u0|r4|Q\(2) $ (!\u0|r4|Q\(0))))) # (\u0|r4|Q\(3) & (\u0|r4|Q\(0) & (!\u0|r4|Q\(1) $ (!\u0|r4|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010010100000010001001010000001000100101000000100010010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r4|ALT_INV_Q\(3),
	datab => \u0|r4|ALT_INV_Q\(1),
	datac => \u0|r4|ALT_INV_Q\(2),
	datad => \u0|r4|ALT_INV_Q\(0),
	combout => \u0|s4|hex[0]~6_combout\);

-- Location: FF_X12_Y12_N17
\p1|regAddr|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[2]~22_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regAddr|Q\(2));

-- Location: LABCELL_X12_Y12_N3
\u0|En[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|En[3]~2_combout\ = ( \p1|regAddr|Q\(1) & ( !\p1|regAddr|Q\(2) & ( (!\p1|regAddr|Q\(7) & (\p1|regAddr|Q\(0) & (\p1|ff0|Q~q\ & \p1|regAddr|Q[8]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|regAddr|ALT_INV_Q\(7),
	datab => \p1|regAddr|ALT_INV_Q\(0),
	datac => \p1|ff0|ALT_INV_Q~q\,
	datad => \p1|regAddr|ALT_INV_Q[8]~DUPLICATE_q\,
	datae => \p1|regAddr|ALT_INV_Q\(1),
	dataf => \p1|regAddr|ALT_INV_Q\(2),
	combout => \u0|En[3]~2_combout\);

-- Location: FF_X29_Y4_N26
\u0|r3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|regDout|Q\(1),
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u0|En[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r3|Q\(1));

-- Location: FF_X29_Y4_N8
\u0|r3|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|regDout|Q\(3),
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u0|En[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r3|Q\(3));

-- Location: FF_X29_Y4_N29
\u0|r3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|regDout|Q\(0),
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u0|En[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r3|Q\(0));

-- Location: FF_X29_Y4_N11
\u0|r3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|regDout|Q\(2),
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u0|En[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r3|Q\(2));

-- Location: LABCELL_X29_Y4_N54
\u0|s3|hex[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s3|hex[6]~0_combout\ = ( \u0|r3|Q\(2) & ( (!\u0|r3|Q\(1) & (\u0|r3|Q\(3) & !\u0|r3|Q\(0))) # (\u0|r3|Q\(1) & (!\u0|r3|Q\(3) & \u0|r3|Q\(0))) ) ) # ( !\u0|r3|Q\(2) & ( (!\u0|r3|Q\(1) & !\u0|r3|Q\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100000100100001001000010010000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r3|ALT_INV_Q\(1),
	datab => \u0|r3|ALT_INV_Q\(3),
	datac => \u0|r3|ALT_INV_Q\(0),
	dataf => \u0|r3|ALT_INV_Q\(2),
	combout => \u0|s3|hex[6]~0_combout\);

-- Location: LABCELL_X29_Y4_N48
\u0|s3|hex[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s3|hex[5]~1_combout\ = ( \u0|r3|Q\(2) & ( (\u0|r3|Q\(0) & (!\u0|r3|Q\(3) $ (!\u0|r3|Q\(1)))) ) ) # ( !\u0|r3|Q\(2) & ( (!\u0|r3|Q\(3) & ((\u0|r3|Q\(0)) # (\u0|r3|Q\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011001100000011001100110000000000001111000000000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|r3|ALT_INV_Q\(3),
	datac => \u0|r3|ALT_INV_Q\(1),
	datad => \u0|r3|ALT_INV_Q\(0),
	dataf => \u0|r3|ALT_INV_Q\(2),
	combout => \u0|s3|hex[5]~1_combout\);

-- Location: LABCELL_X29_Y4_N57
\u0|s3|hex[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s3|hex[4]~2_combout\ = ( \u0|r3|Q\(1) & ( (!\u0|r3|Q\(3) & \u0|r3|Q\(0)) ) ) # ( !\u0|r3|Q\(1) & ( (!\u0|r3|Q\(2) & ((\u0|r3|Q\(0)))) # (\u0|r3|Q\(2) & (!\u0|r3|Q\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011111100000011001111110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|r3|ALT_INV_Q\(3),
	datac => \u0|r3|ALT_INV_Q\(2),
	datad => \u0|r3|ALT_INV_Q\(0),
	dataf => \u0|r3|ALT_INV_Q\(1),
	combout => \u0|s3|hex[4]~2_combout\);

-- Location: LABCELL_X29_Y4_N6
\u0|s3|hex[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s3|hex[3]~3_combout\ = ( \u0|r3|Q\(2) & ( (!\u0|r3|Q\(0) & (!\u0|r3|Q\(1) & !\u0|r3|Q\(3))) # (\u0|r3|Q\(0) & (\u0|r3|Q\(1))) ) ) # ( !\u0|r3|Q\(2) & ( (!\u0|r3|Q\(0) & (\u0|r3|Q\(1) & \u0|r3|Q\(3))) # (\u0|r3|Q\(0) & (!\u0|r3|Q\(1) & !\u0|r3|Q\(3))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000001010010100000000101010100101000001011010010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r3|ALT_INV_Q\(0),
	datac => \u0|r3|ALT_INV_Q\(1),
	datad => \u0|r3|ALT_INV_Q\(3),
	dataf => \u0|r3|ALT_INV_Q\(2),
	combout => \u0|s3|hex[3]~3_combout\);

-- Location: LABCELL_X29_Y4_N9
\u0|s3|hex[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s3|hex[2]~4_combout\ = ( \u0|r3|Q\(1) & ( (!\u0|r3|Q\(3) & (!\u0|r3|Q\(0) & !\u0|r3|Q\(2))) # (\u0|r3|Q\(3) & ((\u0|r3|Q\(2)))) ) ) # ( !\u0|r3|Q\(1) & ( (!\u0|r3|Q\(0) & (\u0|r3|Q\(3) & \u0|r3|Q\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101010100000000011111010000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r3|ALT_INV_Q\(0),
	datac => \u0|r3|ALT_INV_Q\(3),
	datad => \u0|r3|ALT_INV_Q\(2),
	dataf => \u0|r3|ALT_INV_Q\(1),
	combout => \u0|s3|hex[2]~4_combout\);

-- Location: LABCELL_X29_Y4_N24
\u0|s3|hex[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s3|hex[1]~5_combout\ = ( \u0|r3|Q\(2) & ( (!\u0|r3|Q\(3) & (!\u0|r3|Q\(0) $ (!\u0|r3|Q\(1)))) # (\u0|r3|Q\(3) & ((!\u0|r3|Q\(0)) # (\u0|r3|Q\(1)))) ) ) # ( !\u0|r3|Q\(2) & ( (\u0|r3|Q\(3) & (\u0|r3|Q\(0) & \u0|r3|Q\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100111100111100110011110011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|r3|ALT_INV_Q\(3),
	datac => \u0|r3|ALT_INV_Q\(0),
	datad => \u0|r3|ALT_INV_Q\(1),
	dataf => \u0|r3|ALT_INV_Q\(2),
	combout => \u0|s3|hex[1]~5_combout\);

-- Location: LABCELL_X29_Y4_N27
\u0|s3|hex[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s3|hex[0]~6_combout\ = ( \u0|r3|Q\(1) & ( (\u0|r3|Q\(3) & (!\u0|r3|Q\(2) & \u0|r3|Q\(0))) ) ) # ( !\u0|r3|Q\(1) & ( (!\u0|r3|Q\(3) & (!\u0|r3|Q\(2) $ (!\u0|r3|Q\(0)))) # (\u0|r3|Q\(3) & (\u0|r3|Q\(2) & \u0|r3|Q\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000011000011001100001100000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|r3|ALT_INV_Q\(3),
	datac => \u0|r3|ALT_INV_Q\(2),
	datad => \u0|r3|ALT_INV_Q\(0),
	dataf => \u0|r3|ALT_INV_Q\(1),
	combout => \u0|s3|hex[0]~6_combout\);

-- Location: LABCELL_X12_Y12_N21
\u0|En[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|En[2]~3_combout\ = ( !\p1|regAddr|Q[2]~DUPLICATE_q\ & ( !\p1|regAddr|Q\(0) & ( (\p1|regAddr|Q\(1) & (\p1|ff0|Q~q\ & (\p1|regAddr|Q\(8) & !\p1|regAddr|Q\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|regAddr|ALT_INV_Q\(1),
	datab => \p1|ff0|ALT_INV_Q~q\,
	datac => \p1|regAddr|ALT_INV_Q\(8),
	datad => \p1|regAddr|ALT_INV_Q\(7),
	datae => \p1|regAddr|ALT_INV_Q[2]~DUPLICATE_q\,
	dataf => \p1|regAddr|ALT_INV_Q\(0),
	combout => \u0|En[2]~3_combout\);

-- Location: FF_X24_Y4_N20
\u0|r2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|regDout|Q\(1),
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u0|En[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r2|Q\(1));

-- Location: FF_X24_Y4_N23
\u0|r2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|regDout|Q\(3),
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u0|En[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r2|Q\(3));

-- Location: FF_X24_Y4_N2
\u0|r2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|regDout|Q\(2),
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u0|En[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r2|Q\(2));

-- Location: FF_X24_Y4_N5
\u0|r2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|regDout|Q\(0),
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u0|En[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r2|Q\(0));

-- Location: LABCELL_X24_Y2_N39
\u0|s2|hex[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s2|hex[6]~0_combout\ = ( \u0|r2|Q\(0) & ( (!\u0|r2|Q\(3) & (!\u0|r2|Q\(1) $ (\u0|r2|Q\(2)))) ) ) # ( !\u0|r2|Q\(0) & ( (!\u0|r2|Q\(1) & (!\u0|r2|Q\(3) $ (\u0|r2|Q\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001010000010100000101000001010000100100001001000010010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r2|ALT_INV_Q\(1),
	datab => \u0|r2|ALT_INV_Q\(3),
	datac => \u0|r2|ALT_INV_Q\(2),
	dataf => \u0|r2|ALT_INV_Q\(0),
	combout => \u0|s2|hex[6]~0_combout\);

-- Location: LABCELL_X24_Y2_N6
\u0|s2|hex[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s2|hex[5]~1_combout\ = ( \u0|r2|Q\(2) & ( (\u0|r2|Q\(0) & (!\u0|r2|Q\(1) $ (!\u0|r2|Q\(3)))) ) ) # ( !\u0|r2|Q\(2) & ( (!\u0|r2|Q\(3) & ((\u0|r2|Q\(1)) # (\u0|r2|Q\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100000000001111110000000000000011001100000000001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|r2|ALT_INV_Q\(0),
	datac => \u0|r2|ALT_INV_Q\(1),
	datad => \u0|r2|ALT_INV_Q\(3),
	dataf => \u0|r2|ALT_INV_Q\(2),
	combout => \u0|s2|hex[5]~1_combout\);

-- Location: LABCELL_X24_Y2_N48
\u0|s2|hex[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s2|hex[4]~2_combout\ = ( \u0|r2|Q\(2) & ( (!\u0|r2|Q\(3) & ((!\u0|r2|Q\(1)) # (\u0|r2|Q\(0)))) ) ) # ( !\u0|r2|Q\(2) & ( (\u0|r2|Q\(0) & ((!\u0|r2|Q\(1)) # (!\u0|r2|Q\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110000001100110011000011110011000000001111001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|r2|ALT_INV_Q\(0),
	datac => \u0|r2|ALT_INV_Q\(1),
	datad => \u0|r2|ALT_INV_Q\(3),
	dataf => \u0|r2|ALT_INV_Q\(2),
	combout => \u0|s2|hex[4]~2_combout\);

-- Location: LABCELL_X24_Y4_N21
\u0|s2|hex[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s2|hex[3]~3_combout\ = ( \u0|r2|Q\(1) & ( (!\u0|r2|Q\(0) & (!\u0|r2|Q\(2) & \u0|r2|Q\(3))) # (\u0|r2|Q\(0) & (\u0|r2|Q\(2))) ) ) # ( !\u0|r2|Q\(1) & ( (!\u0|r2|Q\(3) & (!\u0|r2|Q\(0) $ (!\u0|r2|Q\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000000000010110100000000000000101101001010000010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r2|ALT_INV_Q\(0),
	datac => \u0|r2|ALT_INV_Q\(2),
	datad => \u0|r2|ALT_INV_Q\(3),
	dataf => \u0|r2|ALT_INV_Q\(1),
	combout => \u0|s2|hex[3]~3_combout\);

-- Location: LABCELL_X24_Y4_N0
\u0|s2|hex[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s2|hex[2]~4_combout\ = ( \u0|r2|Q\(1) & ( (!\u0|r2|Q\(3) & (!\u0|r2|Q\(0) & !\u0|r2|Q\(2))) # (\u0|r2|Q\(3) & ((\u0|r2|Q\(2)))) ) ) # ( !\u0|r2|Q\(1) & ( (\u0|r2|Q\(3) & (!\u0|r2|Q\(0) & \u0|r2|Q\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000010100000010101011010000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r2|ALT_INV_Q\(3),
	datac => \u0|r2|ALT_INV_Q\(0),
	datad => \u0|r2|ALT_INV_Q\(2),
	dataf => \u0|r2|ALT_INV_Q\(1),
	combout => \u0|s2|hex[2]~4_combout\);

-- Location: LABCELL_X24_Y4_N18
\u0|s2|hex[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s2|hex[1]~5_combout\ = ( \u0|r2|Q\(2) & ( (!\u0|r2|Q\(0) & ((\u0|r2|Q\(1)) # (\u0|r2|Q\(3)))) # (\u0|r2|Q\(0) & (!\u0|r2|Q\(3) $ (\u0|r2|Q\(1)))) ) ) # ( !\u0|r2|Q\(2) & ( (\u0|r2|Q\(0) & (\u0|r2|Q\(3) & \u0|r2|Q\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101011010101011110101101010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r2|ALT_INV_Q\(0),
	datac => \u0|r2|ALT_INV_Q\(3),
	datad => \u0|r2|ALT_INV_Q\(1),
	dataf => \u0|r2|ALT_INV_Q\(2),
	combout => \u0|s2|hex[1]~5_combout\);

-- Location: LABCELL_X24_Y4_N3
\u0|s2|hex[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s2|hex[0]~6_combout\ = ( \u0|r2|Q\(1) & ( (\u0|r2|Q\(3) & (!\u0|r2|Q\(2) & \u0|r2|Q\(0))) ) ) # ( !\u0|r2|Q\(1) & ( (!\u0|r2|Q\(3) & (!\u0|r2|Q\(2) $ (!\u0|r2|Q\(0)))) # (\u0|r2|Q\(3) & (\u0|r2|Q\(2) & \u0|r2|Q\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100101000010101010010100000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r2|ALT_INV_Q\(3),
	datac => \u0|r2|ALT_INV_Q\(2),
	datad => \u0|r2|ALT_INV_Q\(0),
	dataf => \u0|r2|ALT_INV_Q\(1),
	combout => \u0|s2|hex[0]~6_combout\);

-- Location: LABCELL_X12_Y12_N24
\u0|En[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|En[1]~4_combout\ = ( \p1|regAddr|Q\(0) & ( !\p1|regAddr|Q\(2) & ( (!\p1|regAddr|Q\(1) & (\p1|regAddr|Q\(8) & (!\p1|regAddr|Q\(7) & \p1|ff0|Q~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|regAddr|ALT_INV_Q\(1),
	datab => \p1|regAddr|ALT_INV_Q\(8),
	datac => \p1|regAddr|ALT_INV_Q\(7),
	datad => \p1|ff0|ALT_INV_Q~q\,
	datae => \p1|regAddr|ALT_INV_Q\(0),
	dataf => \p1|regAddr|ALT_INV_Q\(2),
	combout => \u0|En[1]~4_combout\);

-- Location: FF_X24_Y4_N47
\u0|r1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|regDout|Q\(3),
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u0|En[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r1|Q\(3));

-- Location: FF_X24_Y4_N38
\u0|r1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|regDout|Q\(2),
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u0|En[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r1|Q\(2));

-- Location: FF_X24_Y4_N41
\u0|r1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|regDout|Q\(0),
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u0|En[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r1|Q\(0));

-- Location: FF_X24_Y4_N44
\u0|r1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|regDout|Q\(1),
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u0|En[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r1|Q\(1));

-- Location: LABCELL_X12_Y12_N33
\u0|s1|hex[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s1|hex[6]~0_combout\ = ( \u0|r1|Q\(0) & ( \u0|r1|Q\(1) & ( (!\u0|r1|Q\(3) & \u0|r1|Q\(2)) ) ) ) # ( \u0|r1|Q\(0) & ( !\u0|r1|Q\(1) & ( (!\u0|r1|Q\(3) & !\u0|r1|Q\(2)) ) ) ) # ( !\u0|r1|Q\(0) & ( !\u0|r1|Q\(1) & ( !\u0|r1|Q\(3) $ (\u0|r1|Q\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001010101101010100000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|ALT_INV_Q\(3),
	datad => \u0|r1|ALT_INV_Q\(2),
	datae => \u0|r1|ALT_INV_Q\(0),
	dataf => \u0|r1|ALT_INV_Q\(1),
	combout => \u0|s1|hex[6]~0_combout\);

-- Location: LABCELL_X24_Y4_N54
\u0|s1|hex[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s1|hex[5]~1_combout\ = ( \u0|r1|Q\(1) & ( (!\u0|r1|Q\(3) & ((!\u0|r1|Q\(2)) # (\u0|r1|Q\(0)))) ) ) # ( !\u0|r1|Q\(1) & ( (\u0|r1|Q\(0) & (!\u0|r1|Q\(2) $ (\u0|r1|Q\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000011001100000000001111110011000000001111001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|r1|ALT_INV_Q\(0),
	datac => \u0|r1|ALT_INV_Q\(2),
	datad => \u0|r1|ALT_INV_Q\(3),
	dataf => \u0|r1|ALT_INV_Q\(1),
	combout => \u0|s1|hex[5]~1_combout\);

-- Location: LABCELL_X24_Y4_N9
\u0|s1|hex[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s1|hex[4]~2_combout\ = ( \u0|r1|Q\(3) & ( \u0|r1|Q\(0) & ( (!\u0|r1|Q\(2) & !\u0|r1|Q\(1)) ) ) ) # ( !\u0|r1|Q\(3) & ( \u0|r1|Q\(0) ) ) # ( !\u0|r1|Q\(3) & ( !\u0|r1|Q\(0) & ( (\u0|r1|Q\(2) & !\u0|r1|Q\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100000000000000000011111111111111111000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|ALT_INV_Q\(2),
	datab => \u0|r1|ALT_INV_Q\(1),
	datae => \u0|r1|ALT_INV_Q\(3),
	dataf => \u0|r1|ALT_INV_Q\(0),
	combout => \u0|s1|hex[4]~2_combout\);

-- Location: LABCELL_X24_Y4_N45
\u0|s1|hex[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s1|hex[3]~3_combout\ = ( \u0|r1|Q\(1) & ( (!\u0|r1|Q\(2) & (!\u0|r1|Q\(0) & \u0|r1|Q\(3))) # (\u0|r1|Q\(2) & (\u0|r1|Q\(0))) ) ) # ( !\u0|r1|Q\(1) & ( (!\u0|r1|Q\(3) & (!\u0|r1|Q\(2) $ (!\u0|r1|Q\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011000000000011001100000000000010001100110010001000110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|ALT_INV_Q\(2),
	datab => \u0|r1|ALT_INV_Q\(0),
	datad => \u0|r1|ALT_INV_Q\(3),
	dataf => \u0|r1|ALT_INV_Q\(1),
	combout => \u0|s1|hex[3]~3_combout\);

-- Location: LABCELL_X24_Y4_N36
\u0|s1|hex[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s1|hex[2]~4_combout\ = ( \u0|r1|Q\(0) & ( (\u0|r1|Q\(3) & (\u0|r1|Q\(1) & \u0|r1|Q\(2))) ) ) # ( !\u0|r1|Q\(0) & ( (!\u0|r1|Q\(3) & (\u0|r1|Q\(1) & !\u0|r1|Q\(2))) # (\u0|r1|Q\(3) & ((\u0|r1|Q\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001010101001000100101010100000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|ALT_INV_Q\(3),
	datab => \u0|r1|ALT_INV_Q\(1),
	datad => \u0|r1|ALT_INV_Q\(2),
	dataf => \u0|r1|ALT_INV_Q\(0),
	combout => \u0|s1|hex[2]~4_combout\);

-- Location: LABCELL_X24_Y4_N42
\u0|s1|hex[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s1|hex[1]~5_combout\ = ( \u0|r1|Q\(3) & ( (!\u0|r1|Q\(0) & (\u0|r1|Q\(2))) # (\u0|r1|Q\(0) & ((\u0|r1|Q\(1)))) ) ) # ( !\u0|r1|Q\(3) & ( (\u0|r1|Q\(2) & (!\u0|r1|Q\(0) $ (!\u0|r1|Q\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101000100000100010100010001000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|ALT_INV_Q\(2),
	datab => \u0|r1|ALT_INV_Q\(0),
	datad => \u0|r1|ALT_INV_Q\(1),
	dataf => \u0|r1|ALT_INV_Q\(3),
	combout => \u0|s1|hex[1]~5_combout\);

-- Location: LABCELL_X24_Y4_N39
\u0|s1|hex[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s1|hex[0]~6_combout\ = ( \u0|r1|Q\(2) & ( (!\u0|r1|Q\(1) & (!\u0|r1|Q\(3) $ (\u0|r1|Q\(0)))) ) ) # ( !\u0|r1|Q\(2) & ( (\u0|r1|Q\(0) & (!\u0|r1|Q\(3) $ (\u0|r1|Q\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100101000000001010010110100000010100001010000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|ALT_INV_Q\(3),
	datac => \u0|r1|ALT_INV_Q\(1),
	datad => \u0|r1|ALT_INV_Q\(0),
	dataf => \u0|r1|ALT_INV_Q\(2),
	combout => \u0|s1|hex[0]~6_combout\);

-- Location: LABCELL_X12_Y12_N51
\u0|En[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|En[0]~5_combout\ = ( !\p1|regAddr|Q\(1) & ( \p1|ff0|Q~q\ & ( (\p1|regAddr|Q[8]~DUPLICATE_q\ & (!\p1|regAddr|Q[2]~DUPLICATE_q\ & (!\p1|regAddr|Q\(0) & !\p1|regAddr|Q\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|regAddr|ALT_INV_Q[8]~DUPLICATE_q\,
	datab => \p1|regAddr|ALT_INV_Q[2]~DUPLICATE_q\,
	datac => \p1|regAddr|ALT_INV_Q\(0),
	datad => \p1|regAddr|ALT_INV_Q\(7),
	datae => \p1|regAddr|ALT_INV_Q\(1),
	dataf => \p1|ff0|ALT_INV_Q~q\,
	combout => \u0|En[0]~5_combout\);

-- Location: FF_X29_Y4_N23
\u0|r0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|regDout|Q\(1),
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u0|En[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r0|Q\(1));

-- Location: FF_X29_Y4_N53
\u0|r0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|regDout|Q\(3),
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u0|En[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r0|Q\(3));

-- Location: FF_X29_Y4_N2
\u0|r0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|regDout|Q\(0),
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u0|En[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r0|Q\(0));

-- Location: FF_X29_Y4_N20
\u0|r0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|regDout|Q\(2),
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u0|En[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r0|Q\(2));

-- Location: LABCELL_X29_Y4_N3
\u0|s0|hex[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s0|hex[6]~0_combout\ = ( \u0|r0|Q\(2) & ( (!\u0|r0|Q\(1) & (\u0|r0|Q\(3) & !\u0|r0|Q\(0))) # (\u0|r0|Q\(1) & (!\u0|r0|Q\(3) & \u0|r0|Q\(0))) ) ) # ( !\u0|r0|Q\(2) & ( (!\u0|r0|Q\(1) & !\u0|r0|Q\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100000100010010001000010001001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|ALT_INV_Q\(1),
	datab => \u0|r0|ALT_INV_Q\(3),
	datad => \u0|r0|ALT_INV_Q\(0),
	dataf => \u0|r0|ALT_INV_Q\(2),
	combout => \u0|s0|hex[6]~0_combout\);

-- Location: LABCELL_X29_Y4_N30
\u0|s0|hex[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s0|hex[5]~1_combout\ = ( \u0|r0|Q\(2) & ( (\u0|r0|Q\(0) & (!\u0|r0|Q\(3) $ (!\u0|r0|Q\(1)))) ) ) # ( !\u0|r0|Q\(2) & ( (!\u0|r0|Q\(3) & ((\u0|r0|Q\(1)) # (\u0|r0|Q\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011110000010100001111000000000101010100000000010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|ALT_INV_Q\(0),
	datac => \u0|r0|ALT_INV_Q\(3),
	datad => \u0|r0|ALT_INV_Q\(1),
	dataf => \u0|r0|ALT_INV_Q\(2),
	combout => \u0|s0|hex[5]~1_combout\);

-- Location: LABCELL_X29_Y4_N33
\u0|s0|hex[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s0|hex[4]~2_combout\ = ( \u0|r0|Q\(2) & ( (!\u0|r0|Q\(3) & ((!\u0|r0|Q\(1)) # (\u0|r0|Q\(0)))) ) ) # ( !\u0|r0|Q\(2) & ( (\u0|r0|Q\(0) & ((!\u0|r0|Q\(3)) # (!\u0|r0|Q\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101000100010101010100010011001100010001001100110001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|ALT_INV_Q\(0),
	datab => \u0|r0|ALT_INV_Q\(3),
	datad => \u0|r0|ALT_INV_Q\(1),
	dataf => \u0|r0|ALT_INV_Q\(2),
	combout => \u0|s0|hex[4]~2_combout\);

-- Location: LABCELL_X29_Y4_N51
\u0|s0|hex[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s0|hex[3]~3_combout\ = ( \u0|r0|Q\(2) & ( (!\u0|r0|Q\(0) & (!\u0|r0|Q\(1) & !\u0|r0|Q\(3))) # (\u0|r0|Q\(0) & (\u0|r0|Q\(1))) ) ) # ( !\u0|r0|Q\(2) & ( (!\u0|r0|Q\(0) & (\u0|r0|Q\(1) & \u0|r0|Q\(3))) # (\u0|r0|Q\(0) & (!\u0|r0|Q\(1) & !\u0|r0|Q\(3))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000001010010100000000101010100101000001011010010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|ALT_INV_Q\(0),
	datac => \u0|r0|ALT_INV_Q\(1),
	datad => \u0|r0|ALT_INV_Q\(3),
	dataf => \u0|r0|ALT_INV_Q\(2),
	combout => \u0|s0|hex[3]~3_combout\);

-- Location: LABCELL_X29_Y4_N18
\u0|s0|hex[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s0|hex[2]~4_combout\ = (!\u0|r0|Q\(3) & (!\u0|r0|Q\(0) & (\u0|r0|Q\(1) & !\u0|r0|Q\(2)))) # (\u0|r0|Q\(3) & (\u0|r0|Q\(2) & ((!\u0|r0|Q\(0)) # (\u0|r0|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|ALT_INV_Q\(0),
	datab => \u0|r0|ALT_INV_Q\(3),
	datac => \u0|r0|ALT_INV_Q\(1),
	datad => \u0|r0|ALT_INV_Q\(2),
	combout => \u0|s0|hex[2]~4_combout\);

-- Location: LABCELL_X29_Y4_N21
\u0|s0|hex[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s0|hex[1]~5_combout\ = ( \u0|r0|Q\(2) & ( (!\u0|r0|Q\(0) & ((\u0|r0|Q\(1)) # (\u0|r0|Q\(3)))) # (\u0|r0|Q\(0) & (!\u0|r0|Q\(3) $ (\u0|r0|Q\(1)))) ) ) # ( !\u0|r0|Q\(2) & ( (\u0|r0|Q\(0) & (\u0|r0|Q\(3) & \u0|r0|Q\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000101100110101110110110011010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|ALT_INV_Q\(0),
	datab => \u0|r0|ALT_INV_Q\(3),
	datad => \u0|r0|ALT_INV_Q\(1),
	dataf => \u0|r0|ALT_INV_Q\(2),
	combout => \u0|s0|hex[1]~5_combout\);

-- Location: LABCELL_X29_Y4_N0
\u0|s0|hex[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s0|hex[0]~6_combout\ = ( \u0|r0|Q\(3) & ( (\u0|r0|Q\(0) & (!\u0|r0|Q\(1) $ (!\u0|r0|Q\(2)))) ) ) # ( !\u0|r0|Q\(3) & ( (!\u0|r0|Q\(1) & (!\u0|r0|Q\(2) $ (!\u0|r0|Q\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100000000010101010000000000000010110100000000001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|ALT_INV_Q\(1),
	datac => \u0|r0|ALT_INV_Q\(2),
	datad => \u0|r0|ALT_INV_Q\(0),
	dataf => \u0|r0|ALT_INV_Q\(3),
	combout => \u0|s0|hex[0]~6_combout\);

-- Location: FF_X13_Y13_N35
\p1|reg3|Q[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg3|Q[4]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q[4]~DUPLICATE_q\);

-- Location: FF_X13_Y13_N41
\p1|reg3|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[8]~40_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(8));

-- Location: MLABCELL_X13_Y8_N24
\leds0|Q[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \leds0|Q[0]~feeder_combout\ = ( \p1|regDout|Q\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|regDout|ALT_INV_Q\(0),
	combout => \leds0|Q[0]~feeder_combout\);

-- Location: LABCELL_X10_Y10_N36
led_en : cyclonev_lcell_comb
-- Equation(s):
-- \led_en~combout\ = ( !\p1|regAddr|Q[8]~DUPLICATE_q\ & ( \p1|regAddr|Q\(7) & ( \p1|ff0|Q~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|ff0|ALT_INV_Q~q\,
	datae => \p1|regAddr|ALT_INV_Q[8]~DUPLICATE_q\,
	dataf => \p1|regAddr|ALT_INV_Q\(7),
	combout => \led_en~combout\);

-- Location: FF_X13_Y8_N25
\leds0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \leds0|Q[0]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \led_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds0|Q\(0));

-- Location: MLABCELL_X13_Y8_N18
\leds0|Q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \leds0|Q[1]~feeder_combout\ = ( \p1|regDout|Q\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|regDout|ALT_INV_Q\(1),
	combout => \leds0|Q[1]~feeder_combout\);

-- Location: FF_X13_Y8_N19
\leds0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \leds0|Q[1]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \led_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds0|Q\(1));

-- Location: FF_X13_Y8_N40
\leds0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|regDout|Q\(2),
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \led_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds0|Q\(2));

-- Location: FF_X13_Y8_N46
\leds0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|regDout|Q\(3),
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \led_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds0|Q\(3));

-- Location: MLABCELL_X13_Y8_N48
\leds0|Q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \leds0|Q[4]~feeder_combout\ = ( \p1|regDout|Q\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|regDout|ALT_INV_Q\(4),
	combout => \leds0|Q[4]~feeder_combout\);

-- Location: FF_X13_Y8_N49
\leds0|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \leds0|Q[4]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \led_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds0|Q\(4));

-- Location: MLABCELL_X13_Y8_N54
\leds0|Q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \leds0|Q[5]~feeder_combout\ = ( \p1|regDout|Q\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|regDout|ALT_INV_Q\(5),
	combout => \leds0|Q[5]~feeder_combout\);

-- Location: FF_X13_Y8_N56
\leds0|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \leds0|Q[5]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \led_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds0|Q\(5));

-- Location: FF_X13_Y8_N4
\leds0|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|regDout|Q\(6),
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \led_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds0|Q\(6));

-- Location: LABCELL_X10_Y10_N48
\leds0|Q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \leds0|Q[7]~feeder_combout\ = ( \p1|regDout|Q\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|regDout|ALT_INV_Q\(7),
	combout => \leds0|Q[7]~feeder_combout\);

-- Location: FF_X10_Y10_N49
\leds0|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \leds0|Q[7]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \led_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds0|Q\(7));

-- Location: MLABCELL_X13_Y8_N33
\leds0|Q[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \leds0|Q[8]~feeder_combout\ = ( \p1|regDout|Q\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|regDout|ALT_INV_Q\(8),
	combout => \leds0|Q[8]~feeder_combout\);

-- Location: FF_X13_Y8_N34
\leds0|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \leds0|Q[8]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \led_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds0|Q\(8));

-- Location: LABCELL_X16_Y26_N0
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


