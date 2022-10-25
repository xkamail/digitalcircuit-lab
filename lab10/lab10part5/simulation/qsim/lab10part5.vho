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

-- DATE "10/26/2022 05:39:44"

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
	ledr : BUFFER std_logic_vector(8 DOWNTO 0)
	);
END lab10part5;

-- Design Ports Information
-- hex5[6]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[5]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[4]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[3]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[2]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[1]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[0]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[6]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[5]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[4]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[3]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[2]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[1]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[0]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[6]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[5]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[4]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[3]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[2]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[1]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[0]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[5]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[4]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[3]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[2]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[1]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[0]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[6]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[5]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[4]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[3]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[2]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[1]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[0]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[6]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[5]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[4]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[2]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[1]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[0]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[0]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[1]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[2]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[3]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[4]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[5]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[6]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[7]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[8]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key0	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[8]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw9	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_ledr : std_logic_vector(8 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \p1|reg2|Q[0]~feeder_combout\ : std_logic;
SIGNAL \key0~input_o\ : std_logic;
SIGNAL \key0~inputCLKENA0_outclk\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \u1|r0|Q[6]~feeder_combout\ : std_logic;
SIGNAL \p1|fsm|y_Q.T2~DUPLICATE_q\ : std_logic;
SIGNAL \p1|fsm|DoutIn~1_combout\ : std_logic;
SIGNAL \p1|ff0|Q~feeder_combout\ : std_logic;
SIGNAL \p1|ff0|Q~q\ : std_logic;
SIGNAL \sw9~input_o\ : std_logic;
SIGNAL \ff0|Q~feeder_combout\ : std_logic;
SIGNAL \ff0|Q~q\ : std_logic;
SIGNAL \p1|fsm|y_Q.T3~q\ : std_logic;
SIGNAL \p1|fsm|Selector10~0_combout\ : std_logic;
SIGNAL \p1|fsm|y_Q.TX~q\ : std_logic;
SIGNAL \p1|fsm|y_Q.TXX~q\ : std_logic;
SIGNAL \p1|fsm|y_Q.T1~q\ : std_logic;
SIGNAL \p1|fsm|Selector0~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector0~1_combout\ : std_logic;
SIGNAL \p1|fsm|y_Q.T0~q\ : std_logic;
SIGNAL \p1|fsm|Selector9~0_combout\ : std_logic;
SIGNAL \p1|regA|Q[1]~feeder_combout\ : std_logic;
SIGNAL \p1|fsm|Ain~0_combout\ : std_logic;
SIGNAL \p1|addsub0|Add0~38_cout\ : std_logic;
SIGNAL \p1|addsub0|Add0~22\ : std_logic;
SIGNAL \p1|addsub0|Add0~17_sumout\ : std_logic;
SIGNAL \p1|fsm|Gin~0_combout\ : std_logic;
SIGNAL \p1|regG|Q[3]~DUPLICATE_q\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \u1|r0|Q[0]~feeder_combout\ : std_logic;
SIGNAL \p1|regA|Q[5]~feeder_combout\ : std_logic;
SIGNAL \p1|regA|Q[4]~feeder_combout\ : std_logic;
SIGNAL \p1|regA|Q[2]~feeder_combout\ : std_logic;
SIGNAL \p1|addsub0|Add0~18\ : std_logic;
SIGNAL \p1|addsub0|Add0~26\ : std_logic;
SIGNAL \p1|addsub0|Add0~30\ : std_logic;
SIGNAL \p1|addsub0|Add0~34\ : std_logic;
SIGNAL \p1|addsub0|Add0~1_sumout\ : std_logic;
SIGNAL \p1|reg2|Q[5]~feeder_combout\ : std_logic;
SIGNAL \p1|reg1|Q[5]~feeder_combout\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \p1|regA|Q[6]~feeder_combout\ : std_logic;
SIGNAL \p1|addsub0|Add0~2\ : std_logic;
SIGNAL \p1|addsub0|Add0~5_sumout\ : std_logic;
SIGNAL \p1|reg2|Q[6]~feeder_combout\ : std_logic;
SIGNAL \p1|reg4|Q[6]~feeder_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~15_combout\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \DIN[5]~7_combout\ : std_logic;
SIGNAL \p1|decX|Mux0~0_combout\ : std_logic;
SIGNAL \p1|addsub0|Add0~21_sumout\ : std_logic;
SIGNAL \p1|fsm|Equal0~0_combout\ : std_logic;
SIGNAL \p1|fsm|Mux14~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector15~0_combout\ : std_logic;
SIGNAL \p1|pc0|Add0~5_sumout\ : std_logic;
SIGNAL \p1|fsm|y_Q.T1~DUPLICATE_q\ : std_logic;
SIGNAL \p1|fsm|Selector10~1_combout\ : std_logic;
SIGNAL \p1|decX|Mux0~7_combout\ : std_logic;
SIGNAL \p1|pc0|v[8]~1_combout\ : std_logic;
SIGNAL \p1|pc0|Add0~6\ : std_logic;
SIGNAL \p1|pc0|Add0~21_sumout\ : std_logic;
SIGNAL \p1|pc0|Add0~22\ : std_logic;
SIGNAL \p1|pc0|Add0~9_sumout\ : std_logic;
SIGNAL \p1|pc0|Add0~10\ : std_logic;
SIGNAL \p1|pc0|Add0~1_sumout\ : std_logic;
SIGNAL \p1|pc0|Add0~2\ : std_logic;
SIGNAL \p1|pc0|Add0~25_sumout\ : std_logic;
SIGNAL \p1|pc0|Add0~26\ : std_logic;
SIGNAL \p1|pc0|Add0~29_sumout\ : std_logic;
SIGNAL \p1|pc0|Add0~30\ : std_logic;
SIGNAL \p1|pc0|Add0~33_sumout\ : std_logic;
SIGNAL \p1|fsm|DoutIn~0_combout\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \DIN[1]~5_combout\ : std_logic;
SIGNAL \p1|fsm|Selector6~1_combout\ : std_logic;
SIGNAL \p1|decX|Mux0~1_combout\ : std_logic;
SIGNAL \p1|fsm|Selector8~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector6~2_combout\ : std_logic;
SIGNAL \p1|fsm|Selector5~3_combout\ : std_logic;
SIGNAL \p1|fsm|Selector5~4_combout\ : std_logic;
SIGNAL \p1|fsm|Selector5~1_combout\ : std_logic;
SIGNAL \p1|fsm|Selector5~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector6~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector5~2_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~1_combout\ : std_logic;
SIGNAL \p1|reg5|Q[6]~feeder_combout\ : std_logic;
SIGNAL \p1|fsm|Selector16~0_combout\ : std_logic;
SIGNAL \p1|decX|Mux0~2_combout\ : std_logic;
SIGNAL \p1|fsm|Selector17~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector7~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector7~1_combout\ : std_logic;
SIGNAL \p1|ir0|Q[2]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|fsm|Selector7~2_combout\ : std_logic;
SIGNAL \p1|fsm|Selector7~3_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~0_combout\ : std_logic;
SIGNAL \p1|mux0|y[6]~39_combout\ : std_logic;
SIGNAL \p1|reg1|Q[6]~feeder_combout\ : std_logic;
SIGNAL \p1|decX|Mux0~4_combout\ : std_logic;
SIGNAL \p1|fsm|Selector14~0_combout\ : std_logic;
SIGNAL \p1|decX|Mux0~3_combout\ : std_logic;
SIGNAL \p1|fsm|Selector3~1_combout\ : std_logic;
SIGNAL \p1|fsm|Selector3~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector4~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector4~2_combout\ : std_logic;
SIGNAL \p1|fsm|Selector2~2_combout\ : std_logic;
SIGNAL \p1|fsm|Selector2~3_combout\ : std_logic;
SIGNAL \p1|fsm|Selector4~1_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~3_combout\ : std_logic;
SIGNAL \p1|mux0|y[6]~40_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~6_combout\ : std_logic;
SIGNAL \p1|dexY|Mux0~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector8~1_combout\ : std_logic;
SIGNAL \p1|fsm|Mux7~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector8~2_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~7_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~13_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~14_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~10_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~9_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~11_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~8_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~12_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~16_combout\ : std_logic;
SIGNAL \p1|decX|Mux0~6_combout\ : std_logic;
SIGNAL \p1|fsm|Selector11~0_combout\ : std_logic;
SIGNAL \p1|mux0|y[6]~41_combout\ : std_logic;
SIGNAL \DIN[4]~6_combout\ : std_logic;
SIGNAL \p1|decX|Mux0~5_combout\ : std_logic;
SIGNAL \p1|fsm|Selector12~0_combout\ : std_logic;
SIGNAL \p1|reg5|Q[5]~feeder_combout\ : std_logic;
SIGNAL \p1|reg4|Q[5]~feeder_combout\ : std_logic;
SIGNAL \p1|mux0|y[5]~36_combout\ : std_logic;
SIGNAL \p1|mux0|y[5]~37_combout\ : std_logic;
SIGNAL \p1|mux0|y[5]~38_combout\ : std_logic;
SIGNAL \DIN[0]~1_combout\ : std_logic;
SIGNAL \p1|fsm|Selector2~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector2~1_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~4_combout\ : std_logic;
SIGNAL \p1|reg2|Q[4]~feeder_combout\ : std_logic;
SIGNAL \p1|reg4|Q[4]~feeder_combout\ : std_logic;
SIGNAL \p1|reg5|Q[4]~feeder_combout\ : std_logic;
SIGNAL \p1|mux0|y[4]~33_combout\ : std_logic;
SIGNAL \p1|reg1|Q[4]~feeder_combout\ : std_logic;
SIGNAL \p1|mux0|y[4]~34_combout\ : std_logic;
SIGNAL \p1|addsub0|Add0~33_sumout\ : std_logic;
SIGNAL \p1|mux0|y[4]~35_combout\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \DIN[2]~2_combout\ : std_logic;
SIGNAL \p1|addsub0|Add0~25_sumout\ : std_logic;
SIGNAL \p1|regG|Q[2]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|mux0|y[2]~21_combout\ : std_logic;
SIGNAL \p1|mux0|y[2]~22_combout\ : std_logic;
SIGNAL \p1|mux0|y[2]~23_combout\ : std_logic;
SIGNAL \p1|regAddr|Q[2]~feeder_combout\ : std_logic;
SIGNAL \p1|regAddr|Q[2]~DUPLICATE_q\ : std_logic;
SIGNAL \DIN[3]~0_combout\ : std_logic;
SIGNAL \p1|reg1|Q[3]~feeder_combout\ : std_logic;
SIGNAL \p1|reg2|Q[3]~feeder_combout\ : std_logic;
SIGNAL \p1|mux0|y[3]~2_combout\ : std_logic;
SIGNAL \p1|mux0|y[3]~5_combout\ : std_logic;
SIGNAL \p1|mux0|y[3]~17_combout\ : std_logic;
SIGNAL \p1|addsub0|Add0~29_sumout\ : std_logic;
SIGNAL \p1|regG|Q[4]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|fsm|Equal0~1_combout\ : std_logic;
SIGNAL \p1|fsm|Mux3~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector1~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector1~1_combout\ : std_logic;
SIGNAL \p1|fsm|Selector1~2_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~42_combout\ : std_logic;
SIGNAL \p1|reg4|Q[1]~feeder_combout\ : std_logic;
SIGNAL \p1|reg5|Q[1]~feeder_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~30_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~31_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~32_combout\ : std_logic;
SIGNAL \DIN[6]~8_combout\ : std_logic;
SIGNAL \p1|fsm|Mux28~0_combout\ : std_logic;
SIGNAL \p1|regA|Q[8]~feeder_combout\ : std_logic;
SIGNAL \p1|addsub0|Add0~6\ : std_logic;
SIGNAL \p1|addsub0|Add0~10\ : std_logic;
SIGNAL \p1|addsub0|Add0~13_sumout\ : std_logic;
SIGNAL \p1|reg2|Q[8]~feeder_combout\ : std_logic;
SIGNAL \p1|reg1|Q[8]~feeder_combout\ : std_logic;
SIGNAL \p1|pc0|Add0~34\ : std_logic;
SIGNAL \p1|pc0|Add0~17_sumout\ : std_logic;
SIGNAL \p1|pc0|Add0~18\ : std_logic;
SIGNAL \p1|pc0|Add0~13_sumout\ : std_logic;
SIGNAL \p1|mux0|y[8]~24_combout\ : std_logic;
SIGNAL \p1|mux0|y[8]~25_combout\ : std_logic;
SIGNAL \p1|mux0|y[8]~26_combout\ : std_logic;
SIGNAL \wr_en~combout\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \DIN[7]~4_combout\ : std_logic;
SIGNAL \p1|fsm|y_D.T2~0_combout\ : std_logic;
SIGNAL \p1|fsm|y_Q.T2~q\ : std_logic;
SIGNAL \p1|addsub0|Add0~9_sumout\ : std_logic;
SIGNAL \p1|regG|Q[7]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|reg4|Q[7]~feeder_combout\ : std_logic;
SIGNAL \p1|mux0|y[7]~27_combout\ : std_logic;
SIGNAL \p1|mux0|y[7]~28_combout\ : std_logic;
SIGNAL \p1|mux0|y[7]~29_combout\ : std_logic;
SIGNAL \p1|regAddr|Q[7]~DUPLICATE_q\ : std_logic;
SIGNAL \sw[8]~input_o\ : std_logic;
SIGNAL \u1|r0|Q[8]~feeder_combout\ : std_logic;
SIGNAL \DIN[8]~3_combout\ : std_logic;
SIGNAL \p1|pc0|v[8]~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector13~0_combout\ : std_logic;
SIGNAL \p1|reg4|Q[0]~feeder_combout\ : std_logic;
SIGNAL \p1|mux0|y[0]~18_combout\ : std_logic;
SIGNAL \p1|mux0|y[0]~19_combout\ : std_logic;
SIGNAL \p1|mux0|y[0]~20_combout\ : std_logic;
SIGNAL \p1|regDout|Q[0]~feeder_combout\ : std_logic;
SIGNAL \u0|En[5]~0_combout\ : std_logic;
SIGNAL \u0|r5|Q[3]~DUPLICATE_q\ : std_logic;
SIGNAL \u0|s5|hex[6]~0_combout\ : std_logic;
SIGNAL \u0|s5|hex[5]~1_combout\ : std_logic;
SIGNAL \u0|s5|hex[4]~2_combout\ : std_logic;
SIGNAL \u0|s5|hex[3]~3_combout\ : std_logic;
SIGNAL \u0|s5|hex[2]~4_combout\ : std_logic;
SIGNAL \u0|s5|hex[1]~5_combout\ : std_logic;
SIGNAL \u0|s5|hex[0]~6_combout\ : std_logic;
SIGNAL \p1|regAddr|Q[1]~DUPLICATE_q\ : std_logic;
SIGNAL \u0|En[4]~1_combout\ : std_logic;
SIGNAL \u0|s4|hex[6]~0_combout\ : std_logic;
SIGNAL \u0|s4|hex[5]~1_combout\ : std_logic;
SIGNAL \u0|s4|hex[4]~2_combout\ : std_logic;
SIGNAL \u0|s4|hex[3]~3_combout\ : std_logic;
SIGNAL \u0|s4|hex[2]~4_combout\ : std_logic;
SIGNAL \u0|s4|hex[1]~5_combout\ : std_logic;
SIGNAL \u0|s4|hex[0]~6_combout\ : std_logic;
SIGNAL \u0|En[3]~2_combout\ : std_logic;
SIGNAL \u0|r3|Q[2]~feeder_combout\ : std_logic;
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
SIGNAL \u0|r0|Q[2]~feeder_combout\ : std_logic;
SIGNAL \u0|En[0]~5_combout\ : std_logic;
SIGNAL \u0|s0|hex[6]~0_combout\ : std_logic;
SIGNAL \u0|s0|hex[5]~1_combout\ : std_logic;
SIGNAL \u0|s0|hex[4]~2_combout\ : std_logic;
SIGNAL \u0|s0|hex[3]~3_combout\ : std_logic;
SIGNAL \u0|s0|hex[2]~4_combout\ : std_logic;
SIGNAL \u0|s0|hex[1]~5_combout\ : std_logic;
SIGNAL \u0|s0|hex[0]~6_combout\ : std_logic;
SIGNAL \led_en~combout\ : std_logic;
SIGNAL \leds0|Q[1]~feeder_combout\ : std_logic;
SIGNAL \leds0|Q[2]~feeder_combout\ : std_logic;
SIGNAL \leds0|Q[3]~feeder_combout\ : std_logic;
SIGNAL \leds0|Q[4]~feeder_combout\ : std_logic;
SIGNAL \leds0|Q[5]~feeder_combout\ : std_logic;
SIGNAL \leds0|Q[7]~feeder_combout\ : std_logic;
SIGNAL \leds0|Q[8]~feeder_combout\ : std_logic;
SIGNAL \p1|pc0|v\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u0|r2|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \p1|regG|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|q_a\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u0|r1|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u0|r5|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u0|r4|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u0|r3|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u0|r0|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \leds0|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|regDout|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|regAddr|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg6|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg4|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg5|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|ir0|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg3|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg1|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg2|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg0|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u1|r0|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|regA|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ALT_INV_q_a\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|pc0|ALT_INV_v\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|regG|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u0|r0|ALT_INV_Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u0|r1|ALT_INV_Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u0|r2|ALT_INV_Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u0|r3|ALT_INV_Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u0|r4|ALT_INV_Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u0|r5|ALT_INV_Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \p1|fsm|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \p1|reg2|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg1|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg3|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|mux0|ALT_INV_y[0]~18_combout\ : std_logic;
SIGNAL \p1|reg5|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg4|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg6|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|fsm|ALT_INV_DoutIn~1_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[3]~17_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~16_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~15_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~14_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~13_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~12_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~11_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~10_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~9_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~8_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector8~2_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector8~1_combout\ : std_logic;
SIGNAL \p1|decX|ALT_INV_Mux0~7_combout\ : std_logic;
SIGNAL \p1|dexY|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_y_Q.T0~q\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~7_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector1~2_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector1~1_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \p1|decX|ALT_INV_Mux0~6_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~6_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_y_Q.T3~q\ : std_logic;
SIGNAL \ALT_INV_DIN[3]~0_combout\ : std_logic;
SIGNAL \u1|r0|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg0|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|mux0|ALT_INV_y[3]~5_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~4_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~3_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector2~3_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector2~2_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector2~1_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \p1|decX|ALT_INV_Mux0~5_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector4~2_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector4~1_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector4~0_combout\ : std_logic;
SIGNAL \p1|decX|ALT_INV_Mux0~4_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector3~1_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \p1|decX|ALT_INV_Mux0~3_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[3]~2_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~1_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector7~3_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector7~2_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector7~1_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector7~0_combout\ : std_logic;
SIGNAL \p1|decX|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector6~2_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector6~1_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector6~0_combout\ : std_logic;
SIGNAL \p1|decX|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector5~4_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector8~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_y_Q.T2~q\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector5~3_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_DoutIn~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector5~2_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector5~1_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_y_Q.T1~q\ : std_logic;
SIGNAL \p1|ir0|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|fsm|ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \p1|decX|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \p1|regDout|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 1);
SIGNAL \p1|regAddr|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|ff0|ALT_INV_Q~q\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~42_combout\ : std_logic;
SIGNAL \p1|regA|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|fsm|ALT_INV_Mux28~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \p1|pc0|ALT_INV_v[8]~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector10~1_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector10~0_combout\ : std_logic;
SIGNAL \ff0|ALT_INV_Q~q\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[6]~41_combout\ : std_logic;
SIGNAL \ALT_INV_DIN[6]~8_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[6]~40_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[6]~39_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[5]~38_combout\ : std_logic;
SIGNAL \ALT_INV_DIN[5]~7_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[5]~37_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[5]~36_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[4]~35_combout\ : std_logic;
SIGNAL \ALT_INV_DIN[4]~6_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[4]~34_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[4]~33_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~32_combout\ : std_logic;
SIGNAL \ALT_INV_DIN[1]~5_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~31_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~30_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[7]~29_combout\ : std_logic;
SIGNAL \ALT_INV_DIN[7]~4_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[7]~28_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[7]~27_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[8]~26_combout\ : std_logic;
SIGNAL \ALT_INV_DIN[8]~3_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[8]~25_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[8]~24_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[2]~23_combout\ : std_logic;
SIGNAL \ALT_INV_DIN[2]~2_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[2]~22_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[2]~21_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[0]~20_combout\ : std_logic;
SIGNAL \ALT_INV_DIN[0]~1_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[0]~19_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_y_Q.T2~DUPLICATE_q\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_y_Q.T1~DUPLICATE_q\ : std_logic;
SIGNAL \p1|ir0|ALT_INV_Q[2]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|regAddr|ALT_INV_Q[1]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|regAddr|ALT_INV_Q[7]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|regAddr|ALT_INV_Q[2]~DUPLICATE_q\ : std_logic;
SIGNAL \u0|r5|ALT_INV_Q[3]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|regG|ALT_INV_Q[4]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|regG|ALT_INV_Q[3]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|regG|ALT_INV_Q[2]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|regG|ALT_INV_Q[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_sw9~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[0]~input_o\ : std_logic;

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
\m0|altsyncram_component|auto_generated|ALT_INV_q_a\(0) <= NOT \m0|altsyncram_component|auto_generated|q_a\(0);
\p1|pc0|ALT_INV_v\(0) <= NOT \p1|pc0|v\(0);
\p1|regG|ALT_INV_Q\(4) <= NOT \p1|regG|Q\(4);
\p1|regG|ALT_INV_Q\(3) <= NOT \p1|regG|Q\(3);
\p1|regG|ALT_INV_Q\(2) <= NOT \p1|regG|Q\(2);
\p1|regG|ALT_INV_Q\(0) <= NOT \p1|regG|Q\(0);
\p1|regG|ALT_INV_Q\(1) <= NOT \p1|regG|Q\(1);
\p1|regG|ALT_INV_Q\(8) <= NOT \p1|regG|Q\(8);
\p1|regG|ALT_INV_Q\(7) <= NOT \p1|regG|Q\(7);
\p1|regG|ALT_INV_Q\(6) <= NOT \p1|regG|Q\(6);
\p1|regG|ALT_INV_Q\(5) <= NOT \p1|regG|Q\(5);
\p1|pc0|ALT_INV_v\(3) <= NOT \p1|pc0|v\(3);
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
\p1|pc0|ALT_INV_v\(6) <= NOT \p1|pc0|v\(6);
\p1|pc0|ALT_INV_v\(5) <= NOT \p1|pc0|v\(5);
\p1|pc0|ALT_INV_v\(4) <= NOT \p1|pc0|v\(4);
\p1|pc0|ALT_INV_v\(1) <= NOT \p1|pc0|v\(1);
\p1|pc0|ALT_INV_v\(7) <= NOT \p1|pc0|v\(7);
\p1|pc0|ALT_INV_v\(8) <= NOT \p1|pc0|v\(8);
\p1|pc0|ALT_INV_v\(2) <= NOT \p1|pc0|v\(2);
\m0|altsyncram_component|auto_generated|ALT_INV_q_a\(1) <= NOT \m0|altsyncram_component|auto_generated|q_a\(1);
\m0|altsyncram_component|auto_generated|ALT_INV_q_a\(2) <= NOT \m0|altsyncram_component|auto_generated|q_a\(2);
\m0|altsyncram_component|auto_generated|ALT_INV_q_a\(3) <= NOT \m0|altsyncram_component|auto_generated|q_a\(3);
\m0|altsyncram_component|auto_generated|ALT_INV_q_a\(4) <= NOT \m0|altsyncram_component|auto_generated|q_a\(4);
\m0|altsyncram_component|auto_generated|ALT_INV_q_a\(5) <= NOT \m0|altsyncram_component|auto_generated|q_a\(5);
\m0|altsyncram_component|auto_generated|ALT_INV_q_a\(6) <= NOT \m0|altsyncram_component|auto_generated|q_a\(6);
\m0|altsyncram_component|auto_generated|ALT_INV_q_a\(7) <= NOT \m0|altsyncram_component|auto_generated|q_a\(7);
\m0|altsyncram_component|auto_generated|ALT_INV_q_a\(8) <= NOT \m0|altsyncram_component|auto_generated|q_a\(8);
\p1|reg2|ALT_INV_Q\(0) <= NOT \p1|reg2|Q\(0);
\p1|reg1|ALT_INV_Q\(0) <= NOT \p1|reg1|Q\(0);
\p1|reg3|ALT_INV_Q\(0) <= NOT \p1|reg3|Q\(0);
\p1|mux0|ALT_INV_y[0]~18_combout\ <= NOT \p1|mux0|y[0]~18_combout\;
\p1|reg5|ALT_INV_Q\(0) <= NOT \p1|reg5|Q\(0);
\p1|reg4|ALT_INV_Q\(0) <= NOT \p1|reg4|Q\(0);
\p1|reg6|ALT_INV_Q\(0) <= NOT \p1|reg6|Q\(0);
\p1|fsm|ALT_INV_DoutIn~1_combout\ <= NOT \p1|fsm|DoutIn~1_combout\;
\p1|mux0|ALT_INV_y[3]~17_combout\ <= NOT \p1|mux0|y[3]~17_combout\;
\p1|mux0|ALT_INV_y[1]~16_combout\ <= NOT \p1|mux0|y[1]~16_combout\;
\p1|mux0|ALT_INV_y[1]~15_combout\ <= NOT \p1|mux0|y[1]~15_combout\;
\p1|mux0|ALT_INV_y[1]~14_combout\ <= NOT \p1|mux0|y[1]~14_combout\;
\p1|mux0|ALT_INV_y[1]~13_combout\ <= NOT \p1|mux0|y[1]~13_combout\;
\p1|mux0|ALT_INV_y[1]~12_combout\ <= NOT \p1|mux0|y[1]~12_combout\;
\p1|mux0|ALT_INV_y[1]~11_combout\ <= NOT \p1|mux0|y[1]~11_combout\;
\p1|mux0|ALT_INV_y[1]~10_combout\ <= NOT \p1|mux0|y[1]~10_combout\;
\p1|mux0|ALT_INV_y[1]~9_combout\ <= NOT \p1|mux0|y[1]~9_combout\;
\p1|mux0|ALT_INV_y[1]~8_combout\ <= NOT \p1|mux0|y[1]~8_combout\;
\p1|fsm|ALT_INV_Selector8~2_combout\ <= NOT \p1|fsm|Selector8~2_combout\;
\p1|fsm|ALT_INV_Selector8~1_combout\ <= NOT \p1|fsm|Selector8~1_combout\;
\p1|decX|ALT_INV_Mux0~7_combout\ <= NOT \p1|decX|Mux0~7_combout\;
\p1|dexY|ALT_INV_Mux0~0_combout\ <= NOT \p1|dexY|Mux0~0_combout\;
\p1|fsm|ALT_INV_y_Q.T0~q\ <= NOT \p1|fsm|y_Q.T0~q\;
\p1|mux0|ALT_INV_y[1]~7_combout\ <= NOT \p1|mux0|y[1]~7_combout\;
\p1|fsm|ALT_INV_Selector1~2_combout\ <= NOT \p1|fsm|Selector1~2_combout\;
\p1|fsm|ALT_INV_Selector1~1_combout\ <= NOT \p1|fsm|Selector1~1_combout\;
\p1|fsm|ALT_INV_Selector1~0_combout\ <= NOT \p1|fsm|Selector1~0_combout\;
\p1|decX|ALT_INV_Mux0~6_combout\ <= NOT \p1|decX|Mux0~6_combout\;
\p1|mux0|ALT_INV_y[1]~6_combout\ <= NOT \p1|mux0|y[1]~6_combout\;
\p1|fsm|ALT_INV_y_Q.T3~q\ <= NOT \p1|fsm|y_Q.T3~q\;
\ALT_INV_DIN[3]~0_combout\ <= NOT \DIN[3]~0_combout\;
\u1|r0|ALT_INV_Q\(3) <= NOT \u1|r0|Q\(3);
\p1|reg0|ALT_INV_Q\(3) <= NOT \p1|reg0|Q\(3);
\p1|mux0|ALT_INV_y[3]~5_combout\ <= NOT \p1|mux0|y[3]~5_combout\;
\p1|mux0|ALT_INV_y[1]~4_combout\ <= NOT \p1|mux0|y[1]~4_combout\;
\p1|mux0|ALT_INV_y[1]~3_combout\ <= NOT \p1|mux0|y[1]~3_combout\;
\p1|fsm|ALT_INV_Selector2~3_combout\ <= NOT \p1|fsm|Selector2~3_combout\;
\p1|fsm|ALT_INV_Selector2~2_combout\ <= NOT \p1|fsm|Selector2~2_combout\;
\p1|fsm|ALT_INV_Selector2~1_combout\ <= NOT \p1|fsm|Selector2~1_combout\;
\p1|fsm|ALT_INV_Selector2~0_combout\ <= NOT \p1|fsm|Selector2~0_combout\;
\p1|decX|ALT_INV_Mux0~5_combout\ <= NOT \p1|decX|Mux0~5_combout\;
\p1|fsm|ALT_INV_Selector4~2_combout\ <= NOT \p1|fsm|Selector4~2_combout\;
\p1|fsm|ALT_INV_Selector4~1_combout\ <= NOT \p1|fsm|Selector4~1_combout\;
\p1|fsm|ALT_INV_Selector4~0_combout\ <= NOT \p1|fsm|Selector4~0_combout\;
\p1|decX|ALT_INV_Mux0~4_combout\ <= NOT \p1|decX|Mux0~4_combout\;
\p1|fsm|ALT_INV_Selector3~1_combout\ <= NOT \p1|fsm|Selector3~1_combout\;
\p1|fsm|ALT_INV_Selector3~0_combout\ <= NOT \p1|fsm|Selector3~0_combout\;
\p1|decX|ALT_INV_Mux0~3_combout\ <= NOT \p1|decX|Mux0~3_combout\;
\p1|reg2|ALT_INV_Q\(3) <= NOT \p1|reg2|Q\(3);
\p1|reg1|ALT_INV_Q\(3) <= NOT \p1|reg1|Q\(3);
\p1|reg3|ALT_INV_Q\(3) <= NOT \p1|reg3|Q\(3);
\p1|mux0|ALT_INV_y[3]~2_combout\ <= NOT \p1|mux0|y[3]~2_combout\;
\p1|mux0|ALT_INV_y[1]~1_combout\ <= NOT \p1|mux0|y[1]~1_combout\;
\p1|mux0|ALT_INV_y[1]~0_combout\ <= NOT \p1|mux0|y[1]~0_combout\;
\p1|fsm|ALT_INV_Selector7~3_combout\ <= NOT \p1|fsm|Selector7~3_combout\;
\p1|fsm|ALT_INV_Selector7~2_combout\ <= NOT \p1|fsm|Selector7~2_combout\;
\p1|fsm|ALT_INV_Selector7~1_combout\ <= NOT \p1|fsm|Selector7~1_combout\;
\p1|fsm|ALT_INV_Selector7~0_combout\ <= NOT \p1|fsm|Selector7~0_combout\;
\p1|decX|ALT_INV_Mux0~2_combout\ <= NOT \p1|decX|Mux0~2_combout\;
\p1|fsm|ALT_INV_Selector6~2_combout\ <= NOT \p1|fsm|Selector6~2_combout\;
\p1|fsm|ALT_INV_Selector6~1_combout\ <= NOT \p1|fsm|Selector6~1_combout\;
\p1|fsm|ALT_INV_Selector6~0_combout\ <= NOT \p1|fsm|Selector6~0_combout\;
\p1|decX|ALT_INV_Mux0~1_combout\ <= NOT \p1|decX|Mux0~1_combout\;
\p1|fsm|ALT_INV_Selector5~4_combout\ <= NOT \p1|fsm|Selector5~4_combout\;
\p1|fsm|ALT_INV_Selector8~0_combout\ <= NOT \p1|fsm|Selector8~0_combout\;
\p1|fsm|ALT_INV_y_Q.T2~q\ <= NOT \p1|fsm|y_Q.T2~q\;
\p1|fsm|ALT_INV_Selector5~3_combout\ <= NOT \p1|fsm|Selector5~3_combout\;
\p1|fsm|ALT_INV_DoutIn~0_combout\ <= NOT \p1|fsm|DoutIn~0_combout\;
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
\p1|reg5|ALT_INV_Q\(3) <= NOT \p1|reg5|Q\(3);
\p1|reg4|ALT_INV_Q\(3) <= NOT \p1|reg4|Q\(3);
\p1|reg6|ALT_INV_Q\(3) <= NOT \p1|reg6|Q\(3);
\p1|regDout|ALT_INV_Q\(8) <= NOT \p1|regDout|Q\(8);
\p1|regDout|ALT_INV_Q\(7) <= NOT \p1|regDout|Q\(7);
\p1|regDout|ALT_INV_Q\(5) <= NOT \p1|regDout|Q\(5);
\p1|regDout|ALT_INV_Q\(4) <= NOT \p1|regDout|Q\(4);
\p1|regDout|ALT_INV_Q\(1) <= NOT \p1|regDout|Q\(1);
\p1|regDout|ALT_INV_Q\(2) <= NOT \p1|regDout|Q\(2);
\p1|regAddr|ALT_INV_Q\(1) <= NOT \p1|regAddr|Q\(1);
\p1|ff0|ALT_INV_Q~q\ <= NOT \p1|ff0|Q~q\;
\p1|regAddr|ALT_INV_Q\(7) <= NOT \p1|regAddr|Q\(7);
\p1|regAddr|ALT_INV_Q\(8) <= NOT \p1|regAddr|Q\(8);
\p1|regAddr|ALT_INV_Q\(2) <= NOT \p1|regAddr|Q\(2);
\p1|regAddr|ALT_INV_Q\(0) <= NOT \p1|regAddr|Q\(0);
\p1|regDout|ALT_INV_Q\(3) <= NOT \p1|regDout|Q\(3);
\p1|mux0|ALT_INV_y[1]~42_combout\ <= NOT \p1|mux0|y[1]~42_combout\;
\p1|regA|ALT_INV_Q\(4) <= NOT \p1|regA|Q\(4);
\p1|regA|ALT_INV_Q\(3) <= NOT \p1|regA|Q\(3);
\p1|regA|ALT_INV_Q\(2) <= NOT \p1|regA|Q\(2);
\p1|regA|ALT_INV_Q\(0) <= NOT \p1|regA|Q\(0);
\p1|regA|ALT_INV_Q\(1) <= NOT \p1|regA|Q\(1);
\p1|regA|ALT_INV_Q\(8) <= NOT \p1|regA|Q\(8);
\p1|regA|ALT_INV_Q\(7) <= NOT \p1|regA|Q\(7);
\p1|regA|ALT_INV_Q\(6) <= NOT \p1|regA|Q\(6);
\p1|regA|ALT_INV_Q\(5) <= NOT \p1|regA|Q\(5);
\p1|fsm|ALT_INV_Mux28~0_combout\ <= NOT \p1|fsm|Mux28~0_combout\;
\p1|fsm|ALT_INV_Selector0~0_combout\ <= NOT \p1|fsm|Selector0~0_combout\;
\p1|pc0|ALT_INV_v[8]~0_combout\ <= NOT \p1|pc0|v[8]~0_combout\;
\p1|fsm|ALT_INV_Mux14~0_combout\ <= NOT \p1|fsm|Mux14~0_combout\;
\p1|fsm|ALT_INV_Selector10~1_combout\ <= NOT \p1|fsm|Selector10~1_combout\;
\p1|fsm|ALT_INV_Selector10~0_combout\ <= NOT \p1|fsm|Selector10~0_combout\;
\ff0|ALT_INV_Q~q\ <= NOT \ff0|Q~q\;
\p1|mux0|ALT_INV_y[6]~41_combout\ <= NOT \p1|mux0|y[6]~41_combout\;
\ALT_INV_DIN[6]~8_combout\ <= NOT \DIN[6]~8_combout\;
\u1|r0|ALT_INV_Q\(6) <= NOT \u1|r0|Q\(6);
\p1|reg0|ALT_INV_Q\(6) <= NOT \p1|reg0|Q\(6);
\p1|mux0|ALT_INV_y[6]~40_combout\ <= NOT \p1|mux0|y[6]~40_combout\;
\p1|reg2|ALT_INV_Q\(6) <= NOT \p1|reg2|Q\(6);
\p1|reg1|ALT_INV_Q\(6) <= NOT \p1|reg1|Q\(6);
\p1|reg3|ALT_INV_Q\(6) <= NOT \p1|reg3|Q\(6);
\p1|mux0|ALT_INV_y[6]~39_combout\ <= NOT \p1|mux0|y[6]~39_combout\;
\p1|reg5|ALT_INV_Q\(6) <= NOT \p1|reg5|Q\(6);
\p1|reg4|ALT_INV_Q\(6) <= NOT \p1|reg4|Q\(6);
\p1|reg6|ALT_INV_Q\(6) <= NOT \p1|reg6|Q\(6);
\p1|mux0|ALT_INV_y[5]~38_combout\ <= NOT \p1|mux0|y[5]~38_combout\;
\ALT_INV_DIN[5]~7_combout\ <= NOT \DIN[5]~7_combout\;
\u1|r0|ALT_INV_Q\(5) <= NOT \u1|r0|Q\(5);
\p1|reg0|ALT_INV_Q\(5) <= NOT \p1|reg0|Q\(5);
\p1|mux0|ALT_INV_y[5]~37_combout\ <= NOT \p1|mux0|y[5]~37_combout\;
\p1|reg2|ALT_INV_Q\(5) <= NOT \p1|reg2|Q\(5);
\p1|reg1|ALT_INV_Q\(5) <= NOT \p1|reg1|Q\(5);
\p1|reg3|ALT_INV_Q\(5) <= NOT \p1|reg3|Q\(5);
\p1|mux0|ALT_INV_y[5]~36_combout\ <= NOT \p1|mux0|y[5]~36_combout\;
\p1|reg5|ALT_INV_Q\(5) <= NOT \p1|reg5|Q\(5);
\p1|reg4|ALT_INV_Q\(5) <= NOT \p1|reg4|Q\(5);
\p1|reg6|ALT_INV_Q\(5) <= NOT \p1|reg6|Q\(5);
\p1|mux0|ALT_INV_y[4]~35_combout\ <= NOT \p1|mux0|y[4]~35_combout\;
\ALT_INV_DIN[4]~6_combout\ <= NOT \DIN[4]~6_combout\;
\u1|r0|ALT_INV_Q\(4) <= NOT \u1|r0|Q\(4);
\p1|reg0|ALT_INV_Q\(4) <= NOT \p1|reg0|Q\(4);
\p1|mux0|ALT_INV_y[4]~34_combout\ <= NOT \p1|mux0|y[4]~34_combout\;
\p1|reg2|ALT_INV_Q\(4) <= NOT \p1|reg2|Q\(4);
\p1|reg1|ALT_INV_Q\(4) <= NOT \p1|reg1|Q\(4);
\p1|reg3|ALT_INV_Q\(4) <= NOT \p1|reg3|Q\(4);
\p1|mux0|ALT_INV_y[4]~33_combout\ <= NOT \p1|mux0|y[4]~33_combout\;
\p1|reg5|ALT_INV_Q\(4) <= NOT \p1|reg5|Q\(4);
\p1|reg4|ALT_INV_Q\(4) <= NOT \p1|reg4|Q\(4);
\p1|reg6|ALT_INV_Q\(4) <= NOT \p1|reg6|Q\(4);
\p1|mux0|ALT_INV_y[1]~32_combout\ <= NOT \p1|mux0|y[1]~32_combout\;
\ALT_INV_DIN[1]~5_combout\ <= NOT \DIN[1]~5_combout\;
\u1|r0|ALT_INV_Q\(1) <= NOT \u1|r0|Q\(1);
\p1|reg0|ALT_INV_Q\(1) <= NOT \p1|reg0|Q\(1);
\p1|mux0|ALT_INV_y[1]~31_combout\ <= NOT \p1|mux0|y[1]~31_combout\;
\p1|reg2|ALT_INV_Q\(1) <= NOT \p1|reg2|Q\(1);
\p1|reg1|ALT_INV_Q\(1) <= NOT \p1|reg1|Q\(1);
\p1|reg3|ALT_INV_Q\(1) <= NOT \p1|reg3|Q\(1);
\p1|mux0|ALT_INV_y[1]~30_combout\ <= NOT \p1|mux0|y[1]~30_combout\;
\p1|reg5|ALT_INV_Q\(1) <= NOT \p1|reg5|Q\(1);
\p1|reg4|ALT_INV_Q\(1) <= NOT \p1|reg4|Q\(1);
\p1|reg6|ALT_INV_Q\(1) <= NOT \p1|reg6|Q\(1);
\p1|mux0|ALT_INV_y[7]~29_combout\ <= NOT \p1|mux0|y[7]~29_combout\;
\ALT_INV_DIN[7]~4_combout\ <= NOT \DIN[7]~4_combout\;
\u1|r0|ALT_INV_Q\(7) <= NOT \u1|r0|Q\(7);
\p1|reg0|ALT_INV_Q\(7) <= NOT \p1|reg0|Q\(7);
\p1|mux0|ALT_INV_y[7]~28_combout\ <= NOT \p1|mux0|y[7]~28_combout\;
\p1|reg2|ALT_INV_Q\(7) <= NOT \p1|reg2|Q\(7);
\p1|reg1|ALT_INV_Q\(7) <= NOT \p1|reg1|Q\(7);
\p1|reg3|ALT_INV_Q\(7) <= NOT \p1|reg3|Q\(7);
\p1|mux0|ALT_INV_y[7]~27_combout\ <= NOT \p1|mux0|y[7]~27_combout\;
\p1|reg5|ALT_INV_Q\(7) <= NOT \p1|reg5|Q\(7);
\p1|reg4|ALT_INV_Q\(7) <= NOT \p1|reg4|Q\(7);
\p1|reg6|ALT_INV_Q\(7) <= NOT \p1|reg6|Q\(7);
\p1|mux0|ALT_INV_y[8]~26_combout\ <= NOT \p1|mux0|y[8]~26_combout\;
\ALT_INV_DIN[8]~3_combout\ <= NOT \DIN[8]~3_combout\;
\u1|r0|ALT_INV_Q\(8) <= NOT \u1|r0|Q\(8);
\p1|reg0|ALT_INV_Q\(8) <= NOT \p1|reg0|Q\(8);
\p1|mux0|ALT_INV_y[8]~25_combout\ <= NOT \p1|mux0|y[8]~25_combout\;
\p1|reg2|ALT_INV_Q\(8) <= NOT \p1|reg2|Q\(8);
\p1|reg1|ALT_INV_Q\(8) <= NOT \p1|reg1|Q\(8);
\p1|reg3|ALT_INV_Q\(8) <= NOT \p1|reg3|Q\(8);
\p1|mux0|ALT_INV_y[8]~24_combout\ <= NOT \p1|mux0|y[8]~24_combout\;
\p1|reg5|ALT_INV_Q\(8) <= NOT \p1|reg5|Q\(8);
\p1|reg4|ALT_INV_Q\(8) <= NOT \p1|reg4|Q\(8);
\p1|reg6|ALT_INV_Q\(8) <= NOT \p1|reg6|Q\(8);
\p1|mux0|ALT_INV_y[2]~23_combout\ <= NOT \p1|mux0|y[2]~23_combout\;
\ALT_INV_DIN[2]~2_combout\ <= NOT \DIN[2]~2_combout\;
\u1|r0|ALT_INV_Q\(2) <= NOT \u1|r0|Q\(2);
\p1|reg0|ALT_INV_Q\(2) <= NOT \p1|reg0|Q\(2);
\p1|mux0|ALT_INV_y[2]~22_combout\ <= NOT \p1|mux0|y[2]~22_combout\;
\p1|reg2|ALT_INV_Q\(2) <= NOT \p1|reg2|Q\(2);
\p1|reg1|ALT_INV_Q\(2) <= NOT \p1|reg1|Q\(2);
\p1|reg3|ALT_INV_Q\(2) <= NOT \p1|reg3|Q\(2);
\p1|mux0|ALT_INV_y[2]~21_combout\ <= NOT \p1|mux0|y[2]~21_combout\;
\p1|reg5|ALT_INV_Q\(2) <= NOT \p1|reg5|Q\(2);
\p1|reg4|ALT_INV_Q\(2) <= NOT \p1|reg4|Q\(2);
\p1|reg6|ALT_INV_Q\(2) <= NOT \p1|reg6|Q\(2);
\p1|mux0|ALT_INV_y[0]~20_combout\ <= NOT \p1|mux0|y[0]~20_combout\;
\ALT_INV_DIN[0]~1_combout\ <= NOT \DIN[0]~1_combout\;
\u1|r0|ALT_INV_Q\(0) <= NOT \u1|r0|Q\(0);
\p1|reg0|ALT_INV_Q\(0) <= NOT \p1|reg0|Q\(0);
\p1|mux0|ALT_INV_y[0]~19_combout\ <= NOT \p1|mux0|y[0]~19_combout\;
\p1|fsm|ALT_INV_y_Q.T2~DUPLICATE_q\ <= NOT \p1|fsm|y_Q.T2~DUPLICATE_q\;
\p1|fsm|ALT_INV_y_Q.T1~DUPLICATE_q\ <= NOT \p1|fsm|y_Q.T1~DUPLICATE_q\;
\p1|ir0|ALT_INV_Q[2]~DUPLICATE_q\ <= NOT \p1|ir0|Q[2]~DUPLICATE_q\;
\p1|regAddr|ALT_INV_Q[1]~DUPLICATE_q\ <= NOT \p1|regAddr|Q[1]~DUPLICATE_q\;
\p1|regAddr|ALT_INV_Q[7]~DUPLICATE_q\ <= NOT \p1|regAddr|Q[7]~DUPLICATE_q\;
\p1|regAddr|ALT_INV_Q[2]~DUPLICATE_q\ <= NOT \p1|regAddr|Q[2]~DUPLICATE_q\;
\u0|r5|ALT_INV_Q[3]~DUPLICATE_q\ <= NOT \u0|r5|Q[3]~DUPLICATE_q\;
\p1|regG|ALT_INV_Q[4]~DUPLICATE_q\ <= NOT \p1|regG|Q[4]~DUPLICATE_q\;
\p1|regG|ALT_INV_Q[3]~DUPLICATE_q\ <= NOT \p1|regG|Q[3]~DUPLICATE_q\;
\p1|regG|ALT_INV_Q[2]~DUPLICATE_q\ <= NOT \p1|regG|Q[2]~DUPLICATE_q\;
\p1|regG|ALT_INV_Q[7]~DUPLICATE_q\ <= NOT \p1|regG|Q[7]~DUPLICATE_q\;
\ALT_INV_sw9~input_o\ <= NOT \sw9~input_o\;
\ALT_INV_sw[6]~input_o\ <= NOT \sw[6]~input_o\;
\ALT_INV_sw[8]~input_o\ <= NOT \sw[8]~input_o\;
\ALT_INV_sw[0]~input_o\ <= NOT \sw[0]~input_o\;

-- Location: IOOBUF_X12_Y0_N19
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

-- Location: IOOBUF_X24_Y0_N36
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

-- Location: IOOBUF_X25_Y0_N2
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

-- Location: IOOBUF_X23_Y0_N93
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

-- Location: IOOBUF_X23_Y0_N59
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

-- Location: IOOBUF_X25_Y0_N53
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

-- Location: IOOBUF_X22_Y0_N53
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

-- Location: IOOBUF_X16_Y0_N59
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

-- Location: IOOBUF_X16_Y0_N93
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

-- Location: IOOBUF_X14_Y0_N53
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

-- Location: IOOBUF_X14_Y0_N2
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

-- Location: IOOBUF_X14_Y0_N36
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

-- Location: IOOBUF_X14_Y0_N19
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

-- Location: IOOBUF_X11_Y0_N2
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

-- Location: IOOBUF_X24_Y0_N19
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

-- Location: IOOBUF_X22_Y0_N36
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

-- Location: IOOBUF_X22_Y0_N2
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

-- Location: IOOBUF_X24_Y0_N2
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

-- Location: IOOBUF_X22_Y0_N19
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

-- Location: IOOBUF_X23_Y0_N42
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

-- Location: IOOBUF_X23_Y0_N76
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

-- Location: IOOBUF_X34_Y0_N53
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

-- Location: IOOBUF_X29_Y0_N2
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

-- Location: IOOBUF_X36_Y0_N36
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

-- Location: IOOBUF_X38_Y0_N2
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

-- Location: IOOBUF_X29_Y0_N36
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

-- Location: IOOBUF_X25_Y0_N36
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

-- Location: IOOBUF_X29_Y0_N19
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

-- Location: IOOBUF_X11_Y0_N19
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

-- Location: IOOBUF_X11_Y0_N36
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

-- Location: IOOBUF_X16_Y0_N76
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

-- Location: IOOBUF_X18_Y0_N19
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

-- Location: IOOBUF_X19_Y0_N19
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

-- Location: IOOBUF_X18_Y0_N53
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

-- Location: IOOBUF_X18_Y0_N2
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

-- Location: IOOBUF_X33_Y0_N76
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

-- Location: IOOBUF_X29_Y0_N53
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

-- Location: IOOBUF_X33_Y0_N59
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

-- Location: IOOBUF_X34_Y0_N19
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

-- Location: IOOBUF_X33_Y0_N42
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

-- Location: IOOBUF_X25_Y0_N19
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

-- Location: IOOBUF_X33_Y0_N93
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

-- Location: IOOBUF_X10_Y0_N42
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

-- Location: IOOBUF_X10_Y0_N59
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

-- Location: IOOBUF_X16_Y0_N42
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

-- Location: IOOBUF_X12_Y0_N53
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

-- Location: IOOBUF_X36_Y0_N2
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

-- Location: IOOBUF_X10_Y0_N93
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

-- Location: IOOBUF_X10_Y0_N76
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

-- Location: IOOBUF_X12_Y0_N2
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

-- Location: IOOBUF_X11_Y0_N53
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

-- Location: LABCELL_X16_Y9_N54
\p1|reg2|Q[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg2|Q[0]~feeder_combout\ = ( \p1|mux0|y[0]~20_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[0]~20_combout\,
	combout => \p1|reg2|Q[0]~feeder_combout\);

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

-- Location: IOIBUF_X19_Y0_N1
\sw[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

-- Location: LABCELL_X16_Y8_N9
\u1|r0|Q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|r0|Q[6]~feeder_combout\ = ( \sw[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_sw[6]~input_o\,
	combout => \u1|r0|Q[6]~feeder_combout\);

-- Location: FF_X12_Y8_N55
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

-- Location: LABCELL_X14_Y8_N18
\p1|fsm|DoutIn~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|DoutIn~1_combout\ = ( \p1|ir0|Q\(6) & ( !\p1|ir0|Q\(7) & ( (\p1|fsm|y_Q.T2~DUPLICATE_q\ & \p1|ir0|Q\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|fsm|ALT_INV_y_Q.T2~DUPLICATE_q\,
	datac => \p1|ir0|ALT_INV_Q\(8),
	datae => \p1|ir0|ALT_INV_Q\(6),
	dataf => \p1|ir0|ALT_INV_Q\(7),
	combout => \p1|fsm|DoutIn~1_combout\);

-- Location: LABCELL_X16_Y8_N27
\p1|ff0|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|ff0|Q~feeder_combout\ = ( \p1|fsm|DoutIn~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|fsm|ALT_INV_DoutIn~1_combout\,
	combout => \p1|ff0|Q~feeder_combout\);

-- Location: FF_X16_Y8_N29
\p1|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|ff0|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ff0|Q~q\);

-- Location: FF_X16_Y8_N10
\u1|r0|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u1|r0|Q[6]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|ff0|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|r0|Q\(6));

-- Location: IOIBUF_X0_Y19_N38
\sw9~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw9,
	o => \sw9~input_o\);

-- Location: LABCELL_X6_Y7_N12
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

-- Location: FF_X6_Y7_N14
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

-- Location: FF_X12_Y8_N29
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

-- Location: LABCELL_X12_Y8_N0
\p1|fsm|Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector10~0_combout\ = ( \ff0|Q~q\ & ( !\p1|fsm|y_Q.T0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|fsm|ALT_INV_y_Q.T0~q\,
	dataf => \ff0|ALT_INV_Q~q\,
	combout => \p1|fsm|Selector10~0_combout\);

-- Location: FF_X12_Y8_N1
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

-- Location: FF_X12_Y8_N26
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

-- Location: FF_X12_Y9_N20
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

-- Location: MLABCELL_X13_Y6_N36
\p1|fsm|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector0~0_combout\ = ( \p1|ir0|Q\(8) & ( (!\p1|ir0|Q\(6) & (\p1|ir0|Q\(7) & \p1|fsm|y_Q.T1~q\)) ) ) # ( !\p1|ir0|Q\(8) & ( (!\p1|ir0|Q\(6) & (!\p1|ir0|Q\(7) & \p1|fsm|y_Q.T1~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(6),
	datac => \p1|ir0|ALT_INV_Q\(7),
	datad => \p1|fsm|ALT_INV_y_Q.T1~q\,
	dataf => \p1|ir0|ALT_INV_Q\(8),
	combout => \p1|fsm|Selector0~0_combout\);

-- Location: MLABCELL_X13_Y6_N39
\p1|fsm|Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector0~1_combout\ = ( !\p1|fsm|Selector0~0_combout\ & ( (!\p1|fsm|y_Q.T3~q\ & ((\p1|fsm|y_Q.T0~q\) # (\ff0|Q~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011110000001100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ff0|ALT_INV_Q~q\,
	datac => \p1|fsm|ALT_INV_y_Q.T3~q\,
	datad => \p1|fsm|ALT_INV_y_Q.T0~q\,
	dataf => \p1|fsm|ALT_INV_Selector0~0_combout\,
	combout => \p1|fsm|Selector0~1_combout\);

-- Location: FF_X13_Y6_N40
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

-- Location: MLABCELL_X13_Y6_N9
\p1|fsm|Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector9~0_combout\ = ( \p1|ir0|Q\(6) & ( \p1|ir0|Q\(7) & ( !\p1|fsm|y_Q.T0~q\ ) ) ) # ( !\p1|ir0|Q\(6) & ( \p1|ir0|Q\(7) & ( !\p1|fsm|y_Q.T0~q\ ) ) ) # ( \p1|ir0|Q\(6) & ( !\p1|ir0|Q\(7) & ( (!\p1|fsm|y_Q.T0~q\) # (\p1|fsm|y_Q.T1~q\) ) ) ) # ( 
-- !\p1|ir0|Q\(6) & ( !\p1|ir0|Q\(7) & ( (!\p1|fsm|y_Q.T0~q\) # ((\p1|ir0|Q\(8) & \p1|fsm|y_Q.T1~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011011101110011001111111111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(8),
	datab => \p1|fsm|ALT_INV_y_Q.T0~q\,
	datad => \p1|fsm|ALT_INV_y_Q.T1~q\,
	datae => \p1|ir0|ALT_INV_Q\(6),
	dataf => \p1|ir0|ALT_INV_Q\(7),
	combout => \p1|fsm|Selector9~0_combout\);

-- Location: FF_X13_Y8_N50
\p1|regAddr|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[0]~20_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regAddr|Q\(0));

-- Location: MLABCELL_X13_Y10_N42
\p1|regA|Q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|regA|Q[1]~feeder_combout\ = ( \p1|mux0|y[1]~32_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[1]~32_combout\,
	combout => \p1|regA|Q[1]~feeder_combout\);

-- Location: LABCELL_X12_Y6_N42
\p1|fsm|Ain~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Ain~0_combout\ = ( \p1|ir0|Q\(7) & ( \p1|fsm|y_Q.T1~q\ & ( !\p1|ir0|Q\(8) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|ir0|ALT_INV_Q\(8),
	datae => \p1|ir0|ALT_INV_Q\(7),
	dataf => \p1|fsm|ALT_INV_y_Q.T1~q\,
	combout => \p1|fsm|Ain~0_combout\);

-- Location: FF_X13_Y10_N43
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

-- Location: FF_X10_Y9_N37
\p1|regA|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[0]~20_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regA|Q\(0));

-- Location: LABCELL_X12_Y9_N30
\p1|addsub0|Add0~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~38_cout\ = CARRY(( (\p1|fsm|y_Q.T2~q\ & \p1|fsm|Mux28~0_combout\) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T2~q\,
	datac => \p1|fsm|ALT_INV_Mux28~0_combout\,
	cin => GND,
	cout => \p1|addsub0|Add0~38_cout\);

-- Location: LABCELL_X12_Y9_N33
\p1|addsub0|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~21_sumout\ = SUM(( \p1|regA|Q\(0) ) + ( !\p1|mux0|y[0]~20_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|addsub0|Add0~38_cout\ ))
-- \p1|addsub0|Add0~22\ = CARRY(( \p1|regA|Q\(0) ) + ( !\p1|mux0|y[0]~20_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|addsub0|Add0~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001010010100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T2~q\,
	datab => \p1|regA|ALT_INV_Q\(0),
	datac => \p1|mux0|ALT_INV_y[0]~20_combout\,
	dataf => \p1|fsm|ALT_INV_Mux28~0_combout\,
	cin => \p1|addsub0|Add0~38_cout\,
	sumout => \p1|addsub0|Add0~21_sumout\,
	cout => \p1|addsub0|Add0~22\);

-- Location: LABCELL_X12_Y9_N36
\p1|addsub0|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~17_sumout\ = SUM(( !\p1|mux0|y[1]~32_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|regA|Q\(1) ) + ( \p1|addsub0|Add0~22\ ))
-- \p1|addsub0|Add0~18\ = CARRY(( !\p1|mux0|y[1]~32_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|regA|Q\(1) ) + ( \p1|addsub0|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T2~q\,
	datac => \p1|mux0|ALT_INV_y[1]~32_combout\,
	datad => \p1|fsm|ALT_INV_Mux28~0_combout\,
	dataf => \p1|regA|ALT_INV_Q\(1),
	cin => \p1|addsub0|Add0~22\,
	sumout => \p1|addsub0|Add0~17_sumout\,
	cout => \p1|addsub0|Add0~18\);

-- Location: LABCELL_X12_Y9_N6
\p1|fsm|Gin~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Gin~0_combout\ = ( !\p1|ir0|Q\(8) & ( (\p1|fsm|y_Q.T2~q\ & \p1|ir0|Q\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|fsm|ALT_INV_y_Q.T2~q\,
	datad => \p1|ir0|ALT_INV_Q\(7),
	dataf => \p1|ir0|ALT_INV_Q\(8),
	combout => \p1|fsm|Gin~0_combout\);

-- Location: FF_X12_Y9_N37
\p1|regG|Q[1]\ : dffeas
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
	q => \p1|regG|Q\(1));

-- Location: FF_X12_Y9_N43
\p1|regG|Q[3]~DUPLICATE\ : dffeas
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
	q => \p1|regG|Q[3]~DUPLICATE_q\);

-- Location: IOIBUF_X19_Y0_N35
\sw[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: FF_X16_Y8_N35
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

-- Location: FF_X14_Y8_N4
\p1|regAddr|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[3]~17_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regAddr|Q\(3));

-- Location: IOIBUF_X19_Y0_N52
\sw[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: LABCELL_X16_Y8_N39
\u1|r0|Q[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|r0|Q[0]~feeder_combout\ = ( \sw[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_sw[0]~input_o\,
	combout => \u1|r0|Q[0]~feeder_combout\);

-- Location: FF_X16_Y8_N40
\u1|r0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u1|r0|Q[0]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|ff0|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|r0|Q\(0));

-- Location: LABCELL_X10_Y9_N15
\p1|regA|Q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|regA|Q[5]~feeder_combout\ = ( \p1|mux0|y[5]~38_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[5]~38_combout\,
	combout => \p1|regA|Q[5]~feeder_combout\);

-- Location: FF_X10_Y9_N16
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

-- Location: LABCELL_X10_Y7_N15
\p1|regA|Q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|regA|Q[4]~feeder_combout\ = ( \p1|mux0|y[4]~35_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[4]~35_combout\,
	combout => \p1|regA|Q[4]~feeder_combout\);

-- Location: FF_X10_Y7_N16
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

-- Location: LABCELL_X10_Y9_N9
\p1|regA|Q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|regA|Q[2]~feeder_combout\ = ( \p1|mux0|y[2]~23_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[2]~23_combout\,
	combout => \p1|regA|Q[2]~feeder_combout\);

-- Location: FF_X10_Y9_N10
\p1|regA|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|regA|Q[2]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regA|Q\(2));

-- Location: LABCELL_X12_Y9_N39
\p1|addsub0|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~25_sumout\ = SUM(( !\p1|mux0|y[2]~23_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|regA|Q\(2) ) + ( \p1|addsub0|Add0~18\ ))
-- \p1|addsub0|Add0~26\ = CARRY(( !\p1|mux0|y[2]~23_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|regA|Q\(2) ) + ( \p1|addsub0|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T2~q\,
	datac => \p1|mux0|ALT_INV_y[2]~23_combout\,
	datad => \p1|fsm|ALT_INV_Mux28~0_combout\,
	dataf => \p1|regA|ALT_INV_Q\(2),
	cin => \p1|addsub0|Add0~18\,
	sumout => \p1|addsub0|Add0~25_sumout\,
	cout => \p1|addsub0|Add0~26\);

-- Location: LABCELL_X12_Y9_N42
\p1|addsub0|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~29_sumout\ = SUM(( \p1|regA|Q\(3) ) + ( !\p1|mux0|y[3]~17_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|addsub0|Add0~26\ ))
-- \p1|addsub0|Add0~30\ = CARRY(( \p1|regA|Q\(3) ) + ( !\p1|mux0|y[3]~17_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|addsub0|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001010010100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T2~q\,
	datab => \p1|regA|ALT_INV_Q\(3),
	datac => \p1|mux0|ALT_INV_y[3]~17_combout\,
	dataf => \p1|fsm|ALT_INV_Mux28~0_combout\,
	cin => \p1|addsub0|Add0~26\,
	sumout => \p1|addsub0|Add0~29_sumout\,
	cout => \p1|addsub0|Add0~30\);

-- Location: LABCELL_X12_Y9_N45
\p1|addsub0|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~33_sumout\ = SUM(( !\p1|mux0|y[4]~35_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|regA|Q\(4) ) + ( \p1|addsub0|Add0~30\ ))
-- \p1|addsub0|Add0~34\ = CARRY(( !\p1|mux0|y[4]~35_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|regA|Q\(4) ) + ( \p1|addsub0|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T2~q\,
	datac => \p1|mux0|ALT_INV_y[4]~35_combout\,
	datad => \p1|fsm|ALT_INV_Mux28~0_combout\,
	dataf => \p1|regA|ALT_INV_Q\(4),
	cin => \p1|addsub0|Add0~30\,
	sumout => \p1|addsub0|Add0~33_sumout\,
	cout => \p1|addsub0|Add0~34\);

-- Location: LABCELL_X12_Y9_N48
\p1|addsub0|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~1_sumout\ = SUM(( !\p1|mux0|y[5]~38_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|regA|Q\(5) ) + ( \p1|addsub0|Add0~34\ ))
-- \p1|addsub0|Add0~2\ = CARRY(( !\p1|mux0|y[5]~38_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|regA|Q\(5) ) + ( \p1|addsub0|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T2~q\,
	datac => \p1|mux0|ALT_INV_y[5]~38_combout\,
	datad => \p1|fsm|ALT_INV_Mux28~0_combout\,
	dataf => \p1|regA|ALT_INV_Q\(5),
	cin => \p1|addsub0|Add0~34\,
	sumout => \p1|addsub0|Add0~1_sumout\,
	cout => \p1|addsub0|Add0~2\);

-- Location: FF_X12_Y9_N50
\p1|regG|Q[5]\ : dffeas
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
	q => \p1|regG|Q\(5));

-- Location: LABCELL_X16_Y9_N21
\p1|reg2|Q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg2|Q[5]~feeder_combout\ = ( \p1|mux0|y[5]~38_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[5]~38_combout\,
	combout => \p1|reg2|Q[5]~feeder_combout\);

-- Location: FF_X16_Y9_N22
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

-- Location: LABCELL_X16_Y9_N3
\p1|reg1|Q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg1|Q[5]~feeder_combout\ = ( \p1|mux0|y[5]~38_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[5]~38_combout\,
	combout => \p1|reg1|Q[5]~feeder_combout\);

-- Location: FF_X13_Y8_N14
\p1|ir0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DIN[3]~0_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|y_Q.TXX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(3));

-- Location: IOIBUF_X44_Y0_N1
\sw[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

-- Location: FF_X14_Y8_N49
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

-- Location: LABCELL_X12_Y6_N39
\p1|regA|Q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|regA|Q[6]~feeder_combout\ = ( \p1|mux0|y[6]~41_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[6]~41_combout\,
	combout => \p1|regA|Q[6]~feeder_combout\);

-- Location: FF_X12_Y6_N40
\p1|regA|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|regA|Q[6]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regA|Q\(6));

-- Location: LABCELL_X12_Y9_N51
\p1|addsub0|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~5_sumout\ = SUM(( !\p1|mux0|y[6]~41_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|regA|Q\(6) ) + ( \p1|addsub0|Add0~2\ ))
-- \p1|addsub0|Add0~6\ = CARRY(( !\p1|mux0|y[6]~41_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|regA|Q\(6) ) + ( \p1|addsub0|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T2~q\,
	datac => \p1|mux0|ALT_INV_y[6]~41_combout\,
	datad => \p1|fsm|ALT_INV_Mux28~0_combout\,
	dataf => \p1|regA|ALT_INV_Q\(6),
	cin => \p1|addsub0|Add0~2\,
	sumout => \p1|addsub0|Add0~5_sumout\,
	cout => \p1|addsub0|Add0~6\);

-- Location: FF_X12_Y9_N53
\p1|regG|Q[6]\ : dffeas
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
	q => \p1|regG|Q\(6));

-- Location: LABCELL_X10_Y7_N33
\p1|reg2|Q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg2|Q[6]~feeder_combout\ = ( \p1|mux0|y[6]~41_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[6]~41_combout\,
	combout => \p1|reg2|Q[6]~feeder_combout\);

-- Location: FF_X10_Y7_N34
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

-- Location: MLABCELL_X13_Y10_N21
\p1|reg4|Q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg4|Q[6]~feeder_combout\ = ( \p1|mux0|y[6]~41_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[6]~41_combout\,
	combout => \p1|reg4|Q[6]~feeder_combout\);

-- Location: MLABCELL_X13_Y6_N30
\p1|mux0|y[1]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~15_combout\ = ( !\p1|ir0|Q\(6) & ( \p1|ir0|Q\(8) & ( (!\p1|ir0|Q\(7) & \p1|fsm|y_Q.T3~q\) ) ) ) # ( \p1|ir0|Q\(6) & ( !\p1|ir0|Q\(8) & ( \p1|fsm|y_Q.T3~q\ ) ) ) # ( !\p1|ir0|Q\(6) & ( !\p1|ir0|Q\(8) & ( (\p1|ir0|Q\(7) & \p1|fsm|y_Q.T3~q\) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000001111111100000000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|ir0|ALT_INV_Q\(7),
	datad => \p1|fsm|ALT_INV_y_Q.T3~q\,
	datae => \p1|ir0|ALT_INV_Q\(6),
	dataf => \p1|ir0|ALT_INV_Q\(8),
	combout => \p1|mux0|y[1]~15_combout\);

-- Location: IOIBUF_X12_Y0_N35
\sw[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

-- Location: FF_X14_Y8_N53
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

-- Location: FF_X13_Y8_N38
\p1|regDout|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[1]~32_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|DoutIn~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regDout|Q\(1));

-- Location: FF_X16_Y9_N28
\p1|regDout|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[2]~23_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|DoutIn~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regDout|Q\(2));

-- Location: FF_X13_Y6_N4
\p1|regDout|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[3]~17_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|DoutIn~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regDout|Q\(3));

-- Location: FF_X13_Y8_N26
\p1|regDout|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[4]~35_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|DoutIn~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regDout|Q\(4));

-- Location: FF_X13_Y8_N41
\p1|regDout|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[5]~38_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|DoutIn~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regDout|Q\(5));

-- Location: FF_X13_Y6_N7
\p1|regDout|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[6]~41_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|DoutIn~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regDout|Q\(6));

-- Location: FF_X16_Y9_N31
\p1|regDout|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[7]~29_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|DoutIn~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regDout|Q\(7));

-- Location: FF_X13_Y8_N23
\p1|regDout|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[8]~26_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|DoutIn~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regDout|Q\(8));

-- Location: M10K_X11_Y8_N0
\m0|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001480000700048001020018000050",
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

-- Location: LABCELL_X14_Y8_N51
\DIN[5]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIN[5]~7_combout\ = ( \u1|r0|Q\(5) & ( \m0|altsyncram_component|auto_generated|q_a\(5) ) ) # ( !\u1|r0|Q\(5) & ( \m0|altsyncram_component|auto_generated|q_a\(5) & ( (!\p1|regAddr|Q\(8)) # (!\p1|regAddr|Q[7]~DUPLICATE_q\) ) ) ) # ( \u1|r0|Q\(5) & ( 
-- !\m0|altsyncram_component|auto_generated|q_a\(5) & ( (\p1|regAddr|Q\(8) & \p1|regAddr|Q[7]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001111111100111111001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|regAddr|ALT_INV_Q\(8),
	datac => \p1|regAddr|ALT_INV_Q[7]~DUPLICATE_q\,
	datae => \u1|r0|ALT_INV_Q\(5),
	dataf => \m0|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	combout => \DIN[5]~7_combout\);

-- Location: FF_X13_Y8_N32
\p1|ir0|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DIN[5]~7_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|y_Q.TXX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(5));

-- Location: MLABCELL_X13_Y8_N21
\p1|decX|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|decX|Mux0~0_combout\ = ( \p1|ir0|Q\(5) & ( (!\p1|ir0|Q\(4) & !\p1|ir0|Q\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(4),
	datac => \p1|ir0|ALT_INV_Q\(3),
	dataf => \p1|ir0|ALT_INV_Q\(5),
	combout => \p1|decX|Mux0~0_combout\);

-- Location: FF_X12_Y9_N35
\p1|regG|Q[0]\ : dffeas
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
	q => \p1|regG|Q\(0));

-- Location: FF_X12_Y9_N56
\p1|regG|Q[7]\ : dffeas
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
	q => \p1|regG|Q\(7));

-- Location: LABCELL_X12_Y9_N24
\p1|fsm|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Equal0~0_combout\ = ( !\p1|regG|Q\(7) & ( !\p1|regG|Q\(5) & ( (!\p1|regG|Q\(0) & (!\p1|regG|Q\(1) & (!\p1|regG|Q\(6) & !\p1|regG|Q\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|regG|ALT_INV_Q\(0),
	datab => \p1|regG|ALT_INV_Q\(1),
	datac => \p1|regG|ALT_INV_Q\(6),
	datad => \p1|regG|ALT_INV_Q\(8),
	datae => \p1|regG|ALT_INV_Q\(7),
	dataf => \p1|regG|ALT_INV_Q\(5),
	combout => \p1|fsm|Equal0~0_combout\);

-- Location: MLABCELL_X13_Y8_N33
\p1|fsm|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Mux14~0_combout\ = ( \p1|fsm|Equal0~0_combout\ & ( (\p1|ir0|Q\(7) & (!\p1|fsm|Equal0~1_combout\ & !\p1|ir0|Q\(6))) ) ) # ( !\p1|fsm|Equal0~0_combout\ & ( (\p1|ir0|Q\(7) & !\p1|ir0|Q\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(7),
	datab => \p1|fsm|ALT_INV_Equal0~1_combout\,
	datac => \p1|ir0|ALT_INV_Q\(6),
	dataf => \p1|fsm|ALT_INV_Equal0~0_combout\,
	combout => \p1|fsm|Mux14~0_combout\);

-- Location: MLABCELL_X13_Y10_N0
\p1|fsm|Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector15~0_combout\ = ( \p1|fsm|Mux14~0_combout\ & ( \p1|ir0|Q\(8) & ( (\p1|decX|Mux0~0_combout\ & ((\p1|pc0|v[8]~0_combout\) # (\p1|mux0|y[1]~15_combout\))) ) ) ) # ( !\p1|fsm|Mux14~0_combout\ & ( \p1|ir0|Q\(8) & ( (\p1|mux0|y[1]~15_combout\ & 
-- \p1|decX|Mux0~0_combout\) ) ) ) # ( \p1|fsm|Mux14~0_combout\ & ( !\p1|ir0|Q\(8) & ( (\p1|decX|Mux0~0_combout\ & ((\p1|pc0|v[8]~0_combout\) # (\p1|mux0|y[1]~15_combout\))) ) ) ) # ( !\p1|fsm|Mux14~0_combout\ & ( !\p1|ir0|Q\(8) & ( (\p1|decX|Mux0~0_combout\ 
-- & ((\p1|pc0|v[8]~0_combout\) # (\p1|mux0|y[1]~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011000100110001001100010001000100010001001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[1]~15_combout\,
	datab => \p1|decX|ALT_INV_Mux0~0_combout\,
	datac => \p1|pc0|ALT_INV_v[8]~0_combout\,
	datae => \p1|fsm|ALT_INV_Mux14~0_combout\,
	dataf => \p1|ir0|ALT_INV_Q\(8),
	combout => \p1|fsm|Selector15~0_combout\);

-- Location: FF_X13_Y10_N22
\p1|reg4|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg4|Q[6]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg4|Q\(6));

-- Location: LABCELL_X14_Y7_N30
\p1|pc0|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|pc0|Add0~5_sumout\ = SUM(( \p1|pc0|v\(0) ) + ( VCC ) + ( !VCC ))
-- \p1|pc0|Add0~6\ = CARRY(( \p1|pc0|v\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \p1|pc0|ALT_INV_v\(0),
	cin => GND,
	sumout => \p1|pc0|Add0~5_sumout\,
	cout => \p1|pc0|Add0~6\);

-- Location: FF_X12_Y9_N19
\p1|fsm|y_Q.T1~DUPLICATE\ : dffeas
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
	q => \p1|fsm|y_Q.T1~DUPLICATE_q\);

-- Location: LABCELL_X12_Y8_N57
\p1|fsm|Selector10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector10~1_combout\ = ( \p1|ir0|Q\(6) & ( (!\p1|fsm|Selector10~0_combout\ & (((!\p1|fsm|y_Q.T1~DUPLICATE_q\) # (\p1|ir0|Q\(7))) # (\p1|ir0|Q\(8)))) ) ) # ( !\p1|ir0|Q\(6) & ( !\p1|fsm|Selector10~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011110111000000001111011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(8),
	datab => \p1|ir0|ALT_INV_Q\(7),
	datac => \p1|fsm|ALT_INV_y_Q.T1~DUPLICATE_q\,
	datad => \p1|fsm|ALT_INV_Selector10~0_combout\,
	dataf => \p1|ir0|ALT_INV_Q\(6),
	combout => \p1|fsm|Selector10~1_combout\);

-- Location: MLABCELL_X13_Y8_N9
\p1|decX|Mux0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|decX|Mux0~7_combout\ = ( \p1|ir0|Q\(5) & ( (\p1|ir0|Q\(3) & \p1|ir0|Q\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|ir0|ALT_INV_Q\(3),
	datad => \p1|ir0|ALT_INV_Q\(4),
	dataf => \p1|ir0|ALT_INV_Q\(5),
	combout => \p1|decX|Mux0~7_combout\);

-- Location: LABCELL_X16_Y8_N0
\p1|pc0|v[8]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|pc0|v[8]~1_combout\ = ( \p1|fsm|Selector10~1_combout\ & ( \p1|mux0|y[1]~15_combout\ & ( \p1|decX|Mux0~7_combout\ ) ) ) # ( !\p1|fsm|Selector10~1_combout\ & ( \p1|mux0|y[1]~15_combout\ ) ) # ( \p1|fsm|Selector10~1_combout\ & ( 
-- !\p1|mux0|y[1]~15_combout\ & ( (\p1|decX|Mux0~7_combout\ & (\p1|pc0|v[8]~0_combout\ & ((!\p1|ir0|Q\(8)) # (\p1|fsm|Mux14~0_combout\)))) ) ) ) # ( !\p1|fsm|Selector10~1_combout\ & ( !\p1|mux0|y[1]~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000101000111111111111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|decX|ALT_INV_Mux0~7_combout\,
	datab => \p1|fsm|ALT_INV_Mux14~0_combout\,
	datac => \p1|ir0|ALT_INV_Q\(8),
	datad => \p1|pc0|ALT_INV_v[8]~0_combout\,
	datae => \p1|fsm|ALT_INV_Selector10~1_combout\,
	dataf => \p1|mux0|ALT_INV_y[1]~15_combout\,
	combout => \p1|pc0|v[8]~1_combout\);

-- Location: FF_X14_Y7_N31
\p1|pc0|v[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|pc0|Add0~5_sumout\,
	asdata => \p1|mux0|y[0]~20_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => \p1|fsm|Selector10~1_combout\,
	ena => \p1|pc0|v[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|pc0|v\(0));

-- Location: LABCELL_X14_Y7_N33
\p1|pc0|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|pc0|Add0~21_sumout\ = SUM(( \p1|pc0|v\(1) ) + ( GND ) + ( \p1|pc0|Add0~6\ ))
-- \p1|pc0|Add0~22\ = CARRY(( \p1|pc0|v\(1) ) + ( GND ) + ( \p1|pc0|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \p1|pc0|ALT_INV_v\(1),
	cin => \p1|pc0|Add0~6\,
	sumout => \p1|pc0|Add0~21_sumout\,
	cout => \p1|pc0|Add0~22\);

-- Location: FF_X14_Y7_N35
\p1|pc0|v[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|pc0|Add0~21_sumout\,
	asdata => \p1|mux0|y[1]~32_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => \p1|fsm|Selector10~1_combout\,
	ena => \p1|pc0|v[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|pc0|v\(1));

-- Location: LABCELL_X14_Y7_N36
\p1|pc0|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|pc0|Add0~9_sumout\ = SUM(( \p1|pc0|v\(2) ) + ( GND ) + ( \p1|pc0|Add0~22\ ))
-- \p1|pc0|Add0~10\ = CARRY(( \p1|pc0|v\(2) ) + ( GND ) + ( \p1|pc0|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \p1|pc0|ALT_INV_v\(2),
	cin => \p1|pc0|Add0~22\,
	sumout => \p1|pc0|Add0~9_sumout\,
	cout => \p1|pc0|Add0~10\);

-- Location: FF_X14_Y7_N37
\p1|pc0|v[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|pc0|Add0~9_sumout\,
	asdata => \p1|mux0|y[2]~23_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => \p1|fsm|Selector10~1_combout\,
	ena => \p1|pc0|v[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|pc0|v\(2));

-- Location: LABCELL_X14_Y7_N39
\p1|pc0|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|pc0|Add0~1_sumout\ = SUM(( \p1|pc0|v\(3) ) + ( GND ) + ( \p1|pc0|Add0~10\ ))
-- \p1|pc0|Add0~2\ = CARRY(( \p1|pc0|v\(3) ) + ( GND ) + ( \p1|pc0|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \p1|pc0|ALT_INV_v\(3),
	cin => \p1|pc0|Add0~10\,
	sumout => \p1|pc0|Add0~1_sumout\,
	cout => \p1|pc0|Add0~2\);

-- Location: FF_X14_Y7_N41
\p1|pc0|v[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|pc0|Add0~1_sumout\,
	asdata => \p1|mux0|y[3]~17_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => \p1|fsm|Selector10~1_combout\,
	ena => \p1|pc0|v[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|pc0|v\(3));

-- Location: LABCELL_X14_Y7_N42
\p1|pc0|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|pc0|Add0~25_sumout\ = SUM(( \p1|pc0|v\(4) ) + ( GND ) + ( \p1|pc0|Add0~2\ ))
-- \p1|pc0|Add0~26\ = CARRY(( \p1|pc0|v\(4) ) + ( GND ) + ( \p1|pc0|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \p1|pc0|ALT_INV_v\(4),
	cin => \p1|pc0|Add0~2\,
	sumout => \p1|pc0|Add0~25_sumout\,
	cout => \p1|pc0|Add0~26\);

-- Location: FF_X14_Y7_N43
\p1|pc0|v[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|pc0|Add0~25_sumout\,
	asdata => \p1|mux0|y[4]~35_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => \p1|fsm|Selector10~1_combout\,
	ena => \p1|pc0|v[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|pc0|v\(4));

-- Location: LABCELL_X14_Y7_N45
\p1|pc0|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|pc0|Add0~29_sumout\ = SUM(( \p1|pc0|v\(5) ) + ( GND ) + ( \p1|pc0|Add0~26\ ))
-- \p1|pc0|Add0~30\ = CARRY(( \p1|pc0|v\(5) ) + ( GND ) + ( \p1|pc0|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \p1|pc0|ALT_INV_v\(5),
	cin => \p1|pc0|Add0~26\,
	sumout => \p1|pc0|Add0~29_sumout\,
	cout => \p1|pc0|Add0~30\);

-- Location: FF_X14_Y7_N47
\p1|pc0|v[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|pc0|Add0~29_sumout\,
	asdata => \p1|mux0|y[5]~38_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => \p1|fsm|Selector10~1_combout\,
	ena => \p1|pc0|v[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|pc0|v\(5));

-- Location: LABCELL_X14_Y7_N48
\p1|pc0|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|pc0|Add0~33_sumout\ = SUM(( \p1|pc0|v\(6) ) + ( GND ) + ( \p1|pc0|Add0~30\ ))
-- \p1|pc0|Add0~34\ = CARRY(( \p1|pc0|v\(6) ) + ( GND ) + ( \p1|pc0|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \p1|pc0|ALT_INV_v\(6),
	cin => \p1|pc0|Add0~30\,
	sumout => \p1|pc0|Add0~33_sumout\,
	cout => \p1|pc0|Add0~34\);

-- Location: FF_X14_Y7_N49
\p1|pc0|v[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|pc0|Add0~33_sumout\,
	asdata => \p1|mux0|y[6]~41_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => \p1|fsm|Selector10~1_combout\,
	ena => \p1|pc0|v[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|pc0|v\(6));

-- Location: LABCELL_X12_Y8_N24
\p1|fsm|DoutIn~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|DoutIn~0_combout\ = ( \p1|ir0|Q\(8) & ( \p1|ir0|Q\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|ir0|ALT_INV_Q\(6),
	dataf => \p1|ir0|ALT_INV_Q\(8),
	combout => \p1|fsm|DoutIn~0_combout\);

-- Location: IOIBUF_X0_Y18_N95
\sw[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: FF_X12_Y8_N13
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

-- Location: LABCELL_X12_Y8_N33
\DIN[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIN[1]~5_combout\ = ( \u1|r0|Q\(1) & ( ((\p1|regAddr|Q[7]~DUPLICATE_q\ & \p1|regAddr|Q\(8))) # (\m0|altsyncram_component|auto_generated|q_a\(1)) ) ) # ( !\u1|r0|Q\(1) & ( (\m0|altsyncram_component|auto_generated|q_a\(1) & 
-- ((!\p1|regAddr|Q[7]~DUPLICATE_q\) # (!\p1|regAddr|Q\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001110000011100000111000011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|regAddr|ALT_INV_Q[7]~DUPLICATE_q\,
	datab => \p1|regAddr|ALT_INV_Q\(8),
	datac => \m0|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	dataf => \u1|r0|ALT_INV_Q\(1),
	combout => \DIN[1]~5_combout\);

-- Location: FF_X12_Y8_N35
\p1|ir0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DIN[1]~5_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|y_Q.TXX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(1));

-- Location: FF_X12_Y8_N38
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

-- Location: LABCELL_X12_Y8_N45
\p1|fsm|Selector6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector6~1_combout\ = ( !\p1|ir0|Q\(8) & ( (!\p1|ir0|Q\(1) & (\p1|ir0|Q\(0) & \p1|ir0|Q\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(1),
	datac => \p1|ir0|ALT_INV_Q\(0),
	datad => \p1|ir0|ALT_INV_Q\(2),
	dataf => \p1|ir0|ALT_INV_Q\(8),
	combout => \p1|fsm|Selector6~1_combout\);

-- Location: MLABCELL_X13_Y8_N45
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

-- Location: MLABCELL_X13_Y8_N48
\p1|fsm|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector8~0_combout\ = ( \p1|ir0|Q\(8) & ( (!\p1|ir0|Q\(7) & \p1|fsm|y_Q.T2~DUPLICATE_q\) ) ) # ( !\p1|ir0|Q\(8) & ( (\p1|ir0|Q\(7) & \p1|fsm|y_Q.T2~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(7),
	datac => \p1|fsm|ALT_INV_y_Q.T2~DUPLICATE_q\,
	dataf => \p1|ir0|ALT_INV_Q\(8),
	combout => \p1|fsm|Selector8~0_combout\);

-- Location: MLABCELL_X13_Y8_N18
\p1|fsm|Selector6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector6~2_combout\ = ( \p1|fsm|Selector8~0_combout\ & ( ((\p1|fsm|DoutIn~0_combout\ & \p1|decX|Mux0~1_combout\)) # (\p1|fsm|Selector6~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|fsm|ALT_INV_DoutIn~0_combout\,
	datac => \p1|fsm|ALT_INV_Selector6~1_combout\,
	datad => \p1|decX|ALT_INV_Mux0~1_combout\,
	dataf => \p1|fsm|ALT_INV_Selector8~0_combout\,
	combout => \p1|fsm|Selector6~2_combout\);

-- Location: LABCELL_X12_Y8_N42
\p1|fsm|Selector5~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector5~3_combout\ = ( !\p1|ir0|Q\(8) & ( (!\p1|ir0|Q\(1) & (!\p1|ir0|Q\(0) & \p1|ir0|Q\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(1),
	datab => \p1|ir0|ALT_INV_Q\(0),
	datad => \p1|ir0|ALT_INV_Q\(2),
	dataf => \p1|ir0|ALT_INV_Q\(8),
	combout => \p1|fsm|Selector5~3_combout\);

-- Location: LABCELL_X12_Y8_N3
\p1|fsm|Selector5~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector5~4_combout\ = ( \p1|fsm|Selector8~0_combout\ & ( ((\p1|fsm|DoutIn~0_combout\ & \p1|decX|Mux0~0_combout\)) # (\p1|fsm|Selector5~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_DoutIn~0_combout\,
	datac => \p1|fsm|ALT_INV_Selector5~3_combout\,
	datad => \p1|decX|ALT_INV_Mux0~0_combout\,
	dataf => \p1|fsm|ALT_INV_Selector8~0_combout\,
	combout => \p1|fsm|Selector5~4_combout\);

-- Location: LABCELL_X12_Y9_N21
\p1|fsm|Selector5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector5~1_combout\ = ( \p1|fsm|Equal0~1_combout\ & ( \p1|fsm|Equal0~0_combout\ & ( (\p1|fsm|y_Q.T1~q\ & ((!\p1|ir0|Q\(8) & ((!\p1|ir0|Q\(6)) # (\p1|ir0|Q\(7)))) # (\p1|ir0|Q\(8) & ((!\p1|ir0|Q\(7)))))) ) ) ) # ( !\p1|fsm|Equal0~1_combout\ & ( 
-- \p1|fsm|Equal0~0_combout\ & ( (\p1|fsm|y_Q.T1~q\ & ((!\p1|ir0|Q\(6)) # (!\p1|ir0|Q\(8) $ (!\p1|ir0|Q\(7))))) ) ) ) # ( \p1|fsm|Equal0~1_combout\ & ( !\p1|fsm|Equal0~0_combout\ & ( (\p1|fsm|y_Q.T1~q\ & ((!\p1|ir0|Q\(6)) # (!\p1|ir0|Q\(8) $ 
-- (!\p1|ir0|Q\(7))))) ) ) ) # ( !\p1|fsm|Equal0~1_combout\ & ( !\p1|fsm|Equal0~0_combout\ & ( (\p1|fsm|y_Q.T1~q\ & ((!\p1|ir0|Q\(6)) # (!\p1|ir0|Q\(8) $ (!\p1|ir0|Q\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010101010100010001010101010001000101010101000100010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T1~q\,
	datab => \p1|ir0|ALT_INV_Q\(6),
	datac => \p1|ir0|ALT_INV_Q\(8),
	datad => \p1|ir0|ALT_INV_Q\(7),
	datae => \p1|fsm|ALT_INV_Equal0~1_combout\,
	dataf => \p1|fsm|ALT_INV_Equal0~0_combout\,
	combout => \p1|fsm|Selector5~1_combout\);

-- Location: LABCELL_X12_Y8_N12
\p1|fsm|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector5~0_combout\ = ( !\p1|ir0|Q\(1) & ( \p1|ir0|Q\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|ir0|ALT_INV_Q\(2),
	dataf => \p1|ir0|ALT_INV_Q\(1),
	combout => \p1|fsm|Selector5~0_combout\);

-- Location: LABCELL_X12_Y9_N9
\p1|fsm|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector6~0_combout\ = ( \p1|fsm|Mux3~0_combout\ & ( (\p1|fsm|Selector5~1_combout\ & (\p1|ir0|Q\(0) & \p1|fsm|Selector5~0_combout\)) ) ) # ( !\p1|fsm|Mux3~0_combout\ & ( (\p1|fsm|Selector5~1_combout\ & \p1|decX|Mux0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector5~1_combout\,
	datab => \p1|ir0|ALT_INV_Q\(0),
	datac => \p1|fsm|ALT_INV_Selector5~0_combout\,
	datad => \p1|decX|ALT_INV_Mux0~1_combout\,
	dataf => \p1|fsm|ALT_INV_Mux3~0_combout\,
	combout => \p1|fsm|Selector6~0_combout\);

-- Location: LABCELL_X12_Y9_N0
\p1|fsm|Selector5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector5~2_combout\ = ( \p1|fsm|Mux3~0_combout\ & ( (!\p1|ir0|Q\(0) & (\p1|fsm|Selector5~0_combout\ & \p1|fsm|Selector5~1_combout\)) ) ) # ( !\p1|fsm|Mux3~0_combout\ & ( (\p1|decX|Mux0~0_combout\ & \p1|fsm|Selector5~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000001000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(0),
	datab => \p1|fsm|ALT_INV_Selector5~0_combout\,
	datac => \p1|decX|ALT_INV_Mux0~0_combout\,
	datad => \p1|fsm|ALT_INV_Selector5~1_combout\,
	dataf => \p1|fsm|ALT_INV_Mux3~0_combout\,
	combout => \p1|fsm|Selector5~2_combout\);

-- Location: LABCELL_X12_Y7_N54
\p1|mux0|y[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~1_combout\ = ( !\p1|fsm|Selector5~2_combout\ & ( (!\p1|fsm|Selector6~2_combout\ & (!\p1|fsm|Selector5~4_combout\ & !\p1|fsm|Selector6~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector6~2_combout\,
	datac => \p1|fsm|ALT_INV_Selector5~4_combout\,
	datad => \p1|fsm|ALT_INV_Selector6~0_combout\,
	dataf => \p1|fsm|ALT_INV_Selector5~2_combout\,
	combout => \p1|mux0|y[1]~1_combout\);

-- Location: LABCELL_X10_Y7_N39
\p1|reg5|Q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg5|Q[6]~feeder_combout\ = ( \p1|mux0|y[6]~41_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[6]~41_combout\,
	combout => \p1|reg5|Q[6]~feeder_combout\);

-- Location: LABCELL_X12_Y8_N21
\p1|fsm|Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector16~0_combout\ = ( \p1|mux0|y[1]~15_combout\ & ( \p1|decX|Mux0~1_combout\ ) ) # ( !\p1|mux0|y[1]~15_combout\ & ( (\p1|decX|Mux0~1_combout\ & (\p1|pc0|v[8]~0_combout\ & ((!\p1|ir0|Q\(8)) # (\p1|fsm|Mux14~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001011000000000000101100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(8),
	datab => \p1|fsm|ALT_INV_Mux14~0_combout\,
	datac => \p1|decX|ALT_INV_Mux0~1_combout\,
	datad => \p1|pc0|ALT_INV_v[8]~0_combout\,
	dataf => \p1|mux0|ALT_INV_y[1]~15_combout\,
	combout => \p1|fsm|Selector16~0_combout\);

-- Location: FF_X10_Y7_N41
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
	ena => \p1|fsm|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(6));

-- Location: MLABCELL_X13_Y8_N12
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

-- Location: LABCELL_X12_Y8_N15
\p1|fsm|Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector17~0_combout\ = ( \p1|mux0|y[1]~15_combout\ & ( \p1|decX|Mux0~2_combout\ ) ) # ( !\p1|mux0|y[1]~15_combout\ & ( (\p1|decX|Mux0~2_combout\ & (\p1|pc0|v[8]~0_combout\ & ((!\p1|ir0|Q\(8)) # (\p1|fsm|Mux14~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000101000000000100010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|decX|ALT_INV_Mux0~2_combout\,
	datab => \p1|ir0|ALT_INV_Q\(8),
	datac => \p1|fsm|ALT_INV_Mux14~0_combout\,
	datad => \p1|pc0|ALT_INV_v[8]~0_combout\,
	dataf => \p1|mux0|ALT_INV_y[1]~15_combout\,
	combout => \p1|fsm|Selector17~0_combout\);

-- Location: FF_X12_Y7_N32
\p1|reg6|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[6]~41_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(6));

-- Location: LABCELL_X12_Y7_N51
\p1|fsm|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector7~0_combout\ = ( \p1|ir0|Q\(1) & ( !\p1|ir0|Q\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|ir0|ALT_INV_Q\(0),
	dataf => \p1|ir0|ALT_INV_Q\(1),
	combout => \p1|fsm|Selector7~0_combout\);

-- Location: LABCELL_X12_Y7_N48
\p1|fsm|Selector7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector7~1_combout\ = ( \p1|fsm|Mux3~0_combout\ & ( (\p1|ir0|Q\(2) & (\p1|fsm|Selector5~1_combout\ & \p1|fsm|Selector7~0_combout\)) ) ) # ( !\p1|fsm|Mux3~0_combout\ & ( (\p1|fsm|Selector5~1_combout\ & \p1|decX|Mux0~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(2),
	datab => \p1|fsm|ALT_INV_Selector5~1_combout\,
	datac => \p1|fsm|ALT_INV_Selector7~0_combout\,
	datad => \p1|decX|ALT_INV_Mux0~2_combout\,
	dataf => \p1|fsm|ALT_INV_Mux3~0_combout\,
	combout => \p1|fsm|Selector7~1_combout\);

-- Location: FF_X12_Y8_N37
\p1|ir0|Q[2]~DUPLICATE\ : dffeas
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
	q => \p1|ir0|Q[2]~DUPLICATE_q\);

-- Location: MLABCELL_X13_Y8_N57
\p1|fsm|Selector7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector7~2_combout\ = ( \p1|ir0|Q\(1) & ( (!\p1|ir0|Q\(8) & !\p1|ir0|Q\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(8),
	datad => \p1|ir0|ALT_INV_Q\(0),
	dataf => \p1|ir0|ALT_INV_Q\(1),
	combout => \p1|fsm|Selector7~2_combout\);

-- Location: MLABCELL_X13_Y8_N42
\p1|fsm|Selector7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector7~3_combout\ = ( \p1|fsm|Selector8~0_combout\ & ( (!\p1|fsm|DoutIn~0_combout\ & (((\p1|ir0|Q[2]~DUPLICATE_q\ & \p1|fsm|Selector7~2_combout\)))) # (\p1|fsm|DoutIn~0_combout\ & (((\p1|ir0|Q[2]~DUPLICATE_q\ & \p1|fsm|Selector7~2_combout\)) # 
-- (\p1|decX|Mux0~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000111110001000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_DoutIn~0_combout\,
	datab => \p1|decX|ALT_INV_Mux0~2_combout\,
	datac => \p1|ir0|ALT_INV_Q[2]~DUPLICATE_q\,
	datad => \p1|fsm|ALT_INV_Selector7~2_combout\,
	dataf => \p1|fsm|ALT_INV_Selector8~0_combout\,
	combout => \p1|fsm|Selector7~3_combout\);

-- Location: LABCELL_X12_Y7_N42
\p1|mux0|y[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~0_combout\ = ( \p1|fsm|Selector7~3_combout\ & ( \p1|fsm|Selector6~0_combout\ & ( (!\p1|fsm|Selector5~4_combout\ & !\p1|fsm|Selector5~2_combout\) ) ) ) # ( !\p1|fsm|Selector7~3_combout\ & ( \p1|fsm|Selector6~0_combout\ & ( 
-- (!\p1|fsm|Selector5~4_combout\ & !\p1|fsm|Selector5~2_combout\) ) ) ) # ( \p1|fsm|Selector7~3_combout\ & ( !\p1|fsm|Selector6~0_combout\ & ( (!\p1|fsm|Selector5~4_combout\ & !\p1|fsm|Selector5~2_combout\) ) ) ) # ( !\p1|fsm|Selector7~3_combout\ & ( 
-- !\p1|fsm|Selector6~0_combout\ & ( (!\p1|fsm|Selector5~4_combout\ & (!\p1|fsm|Selector5~2_combout\ & ((\p1|fsm|Selector6~2_combout\) # (\p1|fsm|Selector7~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000000000101010100000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector5~4_combout\,
	datab => \p1|fsm|ALT_INV_Selector7~1_combout\,
	datac => \p1|fsm|ALT_INV_Selector6~2_combout\,
	datad => \p1|fsm|ALT_INV_Selector5~2_combout\,
	datae => \p1|fsm|ALT_INV_Selector7~3_combout\,
	dataf => \p1|fsm|ALT_INV_Selector6~0_combout\,
	combout => \p1|mux0|y[1]~0_combout\);

-- Location: LABCELL_X12_Y7_N30
\p1|mux0|y[6]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[6]~39_combout\ = ( \p1|reg6|Q\(6) & ( \p1|mux0|y[1]~0_combout\ & ( (\p1|reg5|Q\(6)) # (\p1|mux0|y[1]~1_combout\) ) ) ) # ( !\p1|reg6|Q\(6) & ( \p1|mux0|y[1]~0_combout\ & ( (!\p1|mux0|y[1]~1_combout\ & \p1|reg5|Q\(6)) ) ) ) # ( \p1|reg6|Q\(6) & 
-- ( !\p1|mux0|y[1]~0_combout\ & ( (!\p1|mux0|y[1]~1_combout\ & (\p1|reg4|Q\(6))) # (\p1|mux0|y[1]~1_combout\ & ((\p1|pc0|v\(6)))) ) ) ) # ( !\p1|reg6|Q\(6) & ( !\p1|mux0|y[1]~0_combout\ & ( (!\p1|mux0|y[1]~1_combout\ & (\p1|reg4|Q\(6))) # 
-- (\p1|mux0|y[1]~1_combout\ & ((\p1|pc0|v\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg4|ALT_INV_Q\(6),
	datab => \p1|pc0|ALT_INV_v\(6),
	datac => \p1|mux0|ALT_INV_y[1]~1_combout\,
	datad => \p1|reg5|ALT_INV_Q\(6),
	datae => \p1|reg6|ALT_INV_Q\(6),
	dataf => \p1|mux0|ALT_INV_y[1]~0_combout\,
	combout => \p1|mux0|y[6]~39_combout\);

-- Location: LABCELL_X16_Y9_N0
\p1|reg1|Q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg1|Q[6]~feeder_combout\ = ( \p1|mux0|y[6]~41_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[6]~41_combout\,
	combout => \p1|reg1|Q[6]~feeder_combout\);

-- Location: FF_X16_Y9_N1
\p1|reg1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg1|Q[6]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(6));

-- Location: MLABCELL_X13_Y8_N30
\p1|decX|Mux0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|decX|Mux0~4_combout\ = ( \p1|ir0|Q\(3) & ( (\p1|ir0|Q\(4) & !\p1|ir0|Q\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|ir0|ALT_INV_Q\(4),
	datad => \p1|ir0|ALT_INV_Q\(5),
	dataf => \p1|ir0|ALT_INV_Q\(3),
	combout => \p1|decX|Mux0~4_combout\);

-- Location: LABCELL_X16_Y8_N18
\p1|fsm|Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector14~0_combout\ = ( \p1|fsm|Mux14~0_combout\ & ( \p1|decX|Mux0~4_combout\ & ( (\p1|mux0|y[1]~15_combout\) # (\p1|pc0|v[8]~0_combout\) ) ) ) # ( !\p1|fsm|Mux14~0_combout\ & ( \p1|decX|Mux0~4_combout\ & ( ((!\p1|ir0|Q\(8) & 
-- \p1|pc0|v[8]~0_combout\)) # (\p1|mux0|y[1]~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000101111001011110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(8),
	datab => \p1|pc0|ALT_INV_v[8]~0_combout\,
	datac => \p1|mux0|ALT_INV_y[1]~15_combout\,
	datae => \p1|fsm|ALT_INV_Mux14~0_combout\,
	dataf => \p1|decX|ALT_INV_Mux0~4_combout\,
	combout => \p1|fsm|Selector14~0_combout\);

-- Location: FF_X13_Y7_N20
\p1|reg3|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[6]~41_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(6));

-- Location: MLABCELL_X13_Y8_N3
\p1|decX|Mux0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|decX|Mux0~3_combout\ = ( !\p1|ir0|Q\(5) & ( (!\p1|ir0|Q\(3) & \p1|ir0|Q\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|ir0|ALT_INV_Q\(3),
	datad => \p1|ir0|ALT_INV_Q\(4),
	dataf => \p1|ir0|ALT_INV_Q\(5),
	combout => \p1|decX|Mux0~3_combout\);

-- Location: MLABCELL_X13_Y8_N15
\p1|fsm|Selector3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector3~1_combout\ = ( \p1|fsm|Selector7~2_combout\ & ( (\p1|fsm|Selector8~0_combout\ & ((!\p1|ir0|Q[2]~DUPLICATE_q\) # ((\p1|fsm|DoutIn~0_combout\ & \p1|decX|Mux0~3_combout\)))) ) ) # ( !\p1|fsm|Selector7~2_combout\ & ( 
-- (\p1|fsm|Selector8~0_combout\ & (\p1|fsm|DoutIn~0_combout\ & \p1|decX|Mux0~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101000100010001010100010001000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector8~0_combout\,
	datab => \p1|ir0|ALT_INV_Q[2]~DUPLICATE_q\,
	datac => \p1|fsm|ALT_INV_DoutIn~0_combout\,
	datad => \p1|decX|ALT_INV_Mux0~3_combout\,
	dataf => \p1|fsm|ALT_INV_Selector7~2_combout\,
	combout => \p1|fsm|Selector3~1_combout\);

-- Location: MLABCELL_X13_Y9_N48
\p1|fsm|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector3~0_combout\ = ( \p1|fsm|Selector7~0_combout\ & ( (\p1|fsm|Selector5~1_combout\ & ((!\p1|fsm|Mux3~0_combout\ & ((\p1|decX|Mux0~3_combout\))) # (\p1|fsm|Mux3~0_combout\ & (!\p1|ir0|Q\(2))))) ) ) # ( !\p1|fsm|Selector7~0_combout\ & ( 
-- (\p1|fsm|Selector5~1_combout\ & (!\p1|fsm|Mux3~0_combout\ & \p1|decX|Mux0~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000100010101000000010001010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector5~1_combout\,
	datab => \p1|ir0|ALT_INV_Q\(2),
	datac => \p1|fsm|ALT_INV_Mux3~0_combout\,
	datad => \p1|decX|ALT_INV_Mux0~3_combout\,
	dataf => \p1|fsm|ALT_INV_Selector7~0_combout\,
	combout => \p1|fsm|Selector3~0_combout\);

-- Location: MLABCELL_X13_Y9_N6
\p1|fsm|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector4~0_combout\ = ( !\p1|ir0|Q\(2) & ( \p1|ir0|Q\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \p1|ir0|ALT_INV_Q\(1),
	dataf => \p1|ir0|ALT_INV_Q\(2),
	combout => \p1|fsm|Selector4~0_combout\);

-- Location: LABCELL_X14_Y9_N18
\p1|fsm|Selector4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector4~2_combout\ = ( \p1|fsm|Selector4~0_combout\ & ( \p1|fsm|Selector8~0_combout\ & ( (!\p1|ir0|Q\(8) & (\p1|ir0|Q\(0))) # (\p1|ir0|Q\(8) & (((\p1|ir0|Q\(6) & \p1|decX|Mux0~4_combout\)))) ) ) ) # ( !\p1|fsm|Selector4~0_combout\ & ( 
-- \p1|fsm|Selector8~0_combout\ & ( (\p1|ir0|Q\(6) & (\p1|decX|Mux0~4_combout\ & \p1|ir0|Q\(8))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110101010100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(0),
	datab => \p1|ir0|ALT_INV_Q\(6),
	datac => \p1|decX|ALT_INV_Mux0~4_combout\,
	datad => \p1|ir0|ALT_INV_Q\(8),
	datae => \p1|fsm|ALT_INV_Selector4~0_combout\,
	dataf => \p1|fsm|ALT_INV_Selector8~0_combout\,
	combout => \p1|fsm|Selector4~2_combout\);

-- Location: LABCELL_X12_Y8_N6
\p1|fsm|Selector2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector2~2_combout\ = ( \p1|ir0|Q\(0) & ( (!\p1|ir0|Q\(8) & (!\p1|ir0|Q\(1) & !\p1|ir0|Q\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(8),
	datac => \p1|ir0|ALT_INV_Q\(1),
	datad => \p1|ir0|ALT_INV_Q\(2),
	dataf => \p1|ir0|ALT_INV_Q\(0),
	combout => \p1|fsm|Selector2~2_combout\);

-- Location: MLABCELL_X13_Y7_N3
\p1|fsm|Selector2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector2~3_combout\ = ( \p1|fsm|Selector8~0_combout\ & ( ((\p1|decX|Mux0~5_combout\ & \p1|fsm|DoutIn~0_combout\)) # (\p1|fsm|Selector2~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|decX|ALT_INV_Mux0~5_combout\,
	datac => \p1|fsm|ALT_INV_Selector2~2_combout\,
	datad => \p1|fsm|ALT_INV_DoutIn~0_combout\,
	dataf => \p1|fsm|ALT_INV_Selector8~0_combout\,
	combout => \p1|fsm|Selector2~3_combout\);

-- Location: MLABCELL_X13_Y7_N24
\p1|fsm|Selector4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector4~1_combout\ = ( \p1|fsm|Selector4~0_combout\ & ( \p1|fsm|Selector5~1_combout\ & ( (!\p1|fsm|Mux3~0_combout\ & ((\p1|decX|Mux0~4_combout\))) # (\p1|fsm|Mux3~0_combout\ & (\p1|ir0|Q\(0))) ) ) ) # ( !\p1|fsm|Selector4~0_combout\ & ( 
-- \p1|fsm|Selector5~1_combout\ & ( (\p1|decX|Mux0~4_combout\ & !\p1|fsm|Mux3~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|ir0|ALT_INV_Q\(0),
	datac => \p1|decX|ALT_INV_Mux0~4_combout\,
	datad => \p1|fsm|ALT_INV_Mux3~0_combout\,
	datae => \p1|fsm|ALT_INV_Selector4~0_combout\,
	dataf => \p1|fsm|ALT_INV_Selector5~1_combout\,
	combout => \p1|fsm|Selector4~1_combout\);

-- Location: MLABCELL_X13_Y9_N36
\p1|mux0|y[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~3_combout\ = ( !\p1|fsm|Selector2~3_combout\ & ( \p1|fsm|Selector4~1_combout\ & ( !\p1|fsm|Selector2~1_combout\ ) ) ) # ( !\p1|fsm|Selector2~3_combout\ & ( !\p1|fsm|Selector4~1_combout\ & ( (!\p1|fsm|Selector2~1_combout\ & 
-- (((\p1|fsm|Selector4~2_combout\) # (\p1|fsm|Selector3~0_combout\)) # (\p1|fsm|Selector3~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110011001100000000000000000011001100110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector3~1_combout\,
	datab => \p1|fsm|ALT_INV_Selector2~1_combout\,
	datac => \p1|fsm|ALT_INV_Selector3~0_combout\,
	datad => \p1|fsm|ALT_INV_Selector4~2_combout\,
	datae => \p1|fsm|ALT_INV_Selector2~3_combout\,
	dataf => \p1|fsm|ALT_INV_Selector4~1_combout\,
	combout => \p1|mux0|y[1]~3_combout\);

-- Location: MLABCELL_X13_Y7_N18
\p1|mux0|y[6]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[6]~40_combout\ = ( \p1|reg3|Q\(6) & ( \p1|mux0|y[1]~3_combout\ & ( (\p1|reg2|Q\(6)) # (\p1|mux0|y[1]~4_combout\) ) ) ) # ( !\p1|reg3|Q\(6) & ( \p1|mux0|y[1]~3_combout\ & ( (!\p1|mux0|y[1]~4_combout\ & \p1|reg2|Q\(6)) ) ) ) # ( \p1|reg3|Q\(6) & 
-- ( !\p1|mux0|y[1]~3_combout\ & ( (!\p1|mux0|y[1]~4_combout\ & ((\p1|reg1|Q\(6)))) # (\p1|mux0|y[1]~4_combout\ & (\p1|mux0|y[6]~39_combout\)) ) ) ) # ( !\p1|reg3|Q\(6) & ( !\p1|mux0|y[1]~3_combout\ & ( (!\p1|mux0|y[1]~4_combout\ & ((\p1|reg1|Q\(6)))) # 
-- (\p1|mux0|y[1]~4_combout\ & (\p1|mux0|y[6]~39_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100100010001000100111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[1]~4_combout\,
	datab => \p1|reg2|ALT_INV_Q\(6),
	datac => \p1|mux0|ALT_INV_y[6]~39_combout\,
	datad => \p1|reg1|ALT_INV_Q\(6),
	datae => \p1|reg3|ALT_INV_Q\(6),
	dataf => \p1|mux0|ALT_INV_y[1]~3_combout\,
	combout => \p1|mux0|y[6]~40_combout\);

-- Location: MLABCELL_X13_Y7_N39
\p1|mux0|y[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~6_combout\ = ( \p1|fsm|Selector3~1_combout\ & ( (!\p1|fsm|Selector2~3_combout\ & !\p1|fsm|Selector2~1_combout\) ) ) # ( !\p1|fsm|Selector3~1_combout\ & ( !\p1|fsm|Selector3~0_combout\ $ (((!\p1|fsm|Selector2~3_combout\ & 
-- !\p1|fsm|Selector2~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111110100000010111111010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector2~3_combout\,
	datac => \p1|fsm|ALT_INV_Selector2~1_combout\,
	datad => \p1|fsm|ALT_INV_Selector3~0_combout\,
	dataf => \p1|fsm|ALT_INV_Selector3~1_combout\,
	combout => \p1|mux0|y[1]~6_combout\);

-- Location: MLABCELL_X13_Y8_N39
\p1|dexY|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|dexY|Mux0~0_combout\ = ( \p1|ir0|Q\(1) & ( (\p1|ir0|Q[2]~DUPLICATE_q\ & \p1|ir0|Q\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q[2]~DUPLICATE_q\,
	datac => \p1|ir0|ALT_INV_Q\(0),
	dataf => \p1|ir0|ALT_INV_Q\(1),
	combout => \p1|dexY|Mux0~0_combout\);

-- Location: MLABCELL_X13_Y8_N0
\p1|fsm|Selector8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector8~1_combout\ = ( \p1|dexY|Mux0~0_combout\ & ( (!\p1|ir0|Q\(8)) # ((\p1|decX|Mux0~7_combout\ & \p1|ir0|Q\(6))) ) ) # ( !\p1|dexY|Mux0~0_combout\ & ( (\p1|ir0|Q\(8) & (\p1|decX|Mux0~7_combout\ & \p1|ir0|Q\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000110101011101010111010101110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(8),
	datab => \p1|decX|ALT_INV_Mux0~7_combout\,
	datac => \p1|ir0|ALT_INV_Q\(6),
	dataf => \p1|dexY|ALT_INV_Mux0~0_combout\,
	combout => \p1|fsm|Selector8~1_combout\);

-- Location: MLABCELL_X13_Y8_N24
\p1|fsm|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Mux7~0_combout\ = ( !\p1|ir0|Q\(8) & ( (!\p1|ir0|Q\(7) & ((((\p1|ir0|Q\(6)))) # (\p1|dexY|Mux0~0_combout\))) # (\p1|ir0|Q\(7) & (((\p1|decX|Mux0~7_combout\)))) ) ) # ( \p1|ir0|Q\(8) & ( (\p1|dexY|Mux0~0_combout\ & ((!\p1|ir0|Q\(7)) # 
-- ((!\p1|ir0|Q\(6) & ((!\p1|fsm|Equal0~0_combout\) # (!\p1|fsm|Equal0~1_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010011110101111001100110010001000100111101011110011001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(7),
	datab => \p1|dexY|ALT_INV_Mux0~0_combout\,
	datac => \p1|fsm|ALT_INV_Equal0~0_combout\,
	datad => \p1|ir0|ALT_INV_Q\(6),
	datae => \p1|ir0|ALT_INV_Q\(8),
	dataf => \p1|fsm|ALT_INV_Equal0~1_combout\,
	datag => \p1|decX|ALT_INV_Mux0~7_combout\,
	combout => \p1|fsm|Mux7~0_combout\);

-- Location: MLABCELL_X13_Y8_N6
\p1|fsm|Selector8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector8~2_combout\ = ( \p1|fsm|Mux7~0_combout\ & ( (!\p1|fsm|y_Q.T1~q\ & (\p1|fsm|y_Q.T0~q\ & ((!\p1|fsm|Selector8~0_combout\) # (!\p1|fsm|Selector8~1_combout\)))) ) ) # ( !\p1|fsm|Mux7~0_combout\ & ( (\p1|fsm|y_Q.T0~q\ & 
-- ((!\p1|fsm|Selector8~0_combout\) # (!\p1|fsm|Selector8~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001010000011110000101000001100000010000000110000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector8~0_combout\,
	datab => \p1|fsm|ALT_INV_y_Q.T1~q\,
	datac => \p1|fsm|ALT_INV_y_Q.T0~q\,
	datad => \p1|fsm|ALT_INV_Selector8~1_combout\,
	dataf => \p1|fsm|ALT_INV_Mux7~0_combout\,
	combout => \p1|fsm|Selector8~2_combout\);

-- Location: LABCELL_X12_Y7_N57
\p1|mux0|y[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~7_combout\ = ( !\p1|fsm|Selector7~1_combout\ & ( (!\p1|fsm|Selector6~2_combout\ & (!\p1|fsm|Selector7~3_combout\ & !\p1|fsm|Selector6~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector6~2_combout\,
	datac => \p1|fsm|ALT_INV_Selector7~3_combout\,
	datad => \p1|fsm|ALT_INV_Selector6~0_combout\,
	dataf => \p1|fsm|ALT_INV_Selector7~1_combout\,
	combout => \p1|mux0|y[1]~7_combout\);

-- Location: MLABCELL_X13_Y7_N12
\p1|mux0|y[1]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~13_combout\ = ( !\p1|fsm|Selector5~2_combout\ & ( (!\p1|fsm|Selector5~4_combout\ & (!\p1|fsm|Selector4~1_combout\ & !\p1|fsm|Selector4~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|fsm|ALT_INV_Selector5~4_combout\,
	datac => \p1|fsm|ALT_INV_Selector4~1_combout\,
	datad => \p1|fsm|ALT_INV_Selector4~2_combout\,
	dataf => \p1|fsm|ALT_INV_Selector5~2_combout\,
	combout => \p1|mux0|y[1]~13_combout\);

-- Location: MLABCELL_X13_Y7_N54
\p1|mux0|y[1]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~14_combout\ = ( \p1|mux0|y[1]~7_combout\ & ( \p1|mux0|y[1]~13_combout\ & ( (!\p1|fsm|Selector1~2_combout\ & (\p1|fsm|Selector8~2_combout\ & (\p1|mux0|y[1]~4_combout\))) # (\p1|fsm|Selector1~2_combout\ & (((!\p1|mux0|y[1]~6_combout\)) # 
-- (\p1|fsm|Selector8~2_combout\))) ) ) ) # ( !\p1|mux0|y[1]~7_combout\ & ( \p1|mux0|y[1]~13_combout\ & ( (\p1|fsm|Selector1~2_combout\ & !\p1|mux0|y[1]~6_combout\) ) ) ) # ( \p1|mux0|y[1]~7_combout\ & ( !\p1|mux0|y[1]~13_combout\ & ( 
-- (\p1|fsm|Selector1~2_combout\ & !\p1|mux0|y[1]~6_combout\) ) ) ) # ( !\p1|mux0|y[1]~7_combout\ & ( !\p1|mux0|y[1]~13_combout\ & ( (\p1|fsm|Selector1~2_combout\ & !\p1|mux0|y[1]~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101000000000101011100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector1~2_combout\,
	datab => \p1|fsm|ALT_INV_Selector8~2_combout\,
	datac => \p1|mux0|ALT_INV_y[1]~4_combout\,
	datad => \p1|mux0|ALT_INV_y[1]~6_combout\,
	datae => \p1|mux0|ALT_INV_y[1]~7_combout\,
	dataf => \p1|mux0|ALT_INV_y[1]~13_combout\,
	combout => \p1|mux0|y[1]~14_combout\);

-- Location: MLABCELL_X13_Y7_N36
\p1|mux0|y[1]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~10_combout\ = ( \p1|fsm|Selector5~2_combout\ & ( (!\p1|fsm|Selector4~2_combout\ & !\p1|fsm|Selector4~1_combout\) ) ) # ( !\p1|fsm|Selector5~2_combout\ & ( (!\p1|fsm|Selector5~4_combout\) # ((!\p1|fsm|Selector4~2_combout\ & 
-- !\p1|fsm|Selector4~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111000000111111111100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|fsm|ALT_INV_Selector4~2_combout\,
	datac => \p1|fsm|ALT_INV_Selector4~1_combout\,
	datad => \p1|fsm|ALT_INV_Selector5~4_combout\,
	dataf => \p1|fsm|ALT_INV_Selector5~2_combout\,
	combout => \p1|mux0|y[1]~10_combout\);

-- Location: MLABCELL_X13_Y7_N15
\p1|mux0|y[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~9_combout\ = ( \p1|fsm|Selector5~2_combout\ & ( (!\p1|fsm|Selector4~1_combout\ & !\p1|fsm|Selector4~2_combout\) ) ) # ( !\p1|fsm|Selector5~2_combout\ & ( !\p1|fsm|Selector5~4_combout\ $ (((!\p1|fsm|Selector4~1_combout\ & 
-- !\p1|fsm|Selector4~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111110100000010111111010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector4~1_combout\,
	datac => \p1|fsm|ALT_INV_Selector4~2_combout\,
	datad => \p1|fsm|ALT_INV_Selector5~4_combout\,
	dataf => \p1|fsm|ALT_INV_Selector5~2_combout\,
	combout => \p1|mux0|y[1]~9_combout\);

-- Location: LABCELL_X12_Y7_N12
\p1|mux0|y[1]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~11_combout\ = ( !\p1|fsm|Selector2~1_combout\ & ( \p1|fsm|Selector7~1_combout\ & ( (!\p1|fsm|Selector2~3_combout\ & (!\p1|fsm|Selector6~2_combout\ & !\p1|fsm|Selector6~0_combout\)) ) ) ) # ( !\p1|fsm|Selector2~1_combout\ & ( 
-- !\p1|fsm|Selector7~1_combout\ & ( (!\p1|fsm|Selector2~3_combout\ & ((!\p1|fsm|Selector7~3_combout\) # ((!\p1|fsm|Selector6~2_combout\ & !\p1|fsm|Selector6~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100010001000000000000000000010100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector2~3_combout\,
	datab => \p1|fsm|ALT_INV_Selector7~3_combout\,
	datac => \p1|fsm|ALT_INV_Selector6~2_combout\,
	datad => \p1|fsm|ALT_INV_Selector6~0_combout\,
	datae => \p1|fsm|ALT_INV_Selector2~1_combout\,
	dataf => \p1|fsm|ALT_INV_Selector7~1_combout\,
	combout => \p1|mux0|y[1]~11_combout\);

-- Location: LABCELL_X12_Y8_N9
\p1|mux0|y[1]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~8_combout\ = ( \p1|fsm|Selector7~1_combout\ & ( (!\p1|fsm|Selector6~2_combout\ & !\p1|fsm|Selector6~0_combout\) ) ) # ( !\p1|fsm|Selector7~1_combout\ & ( !\p1|fsm|Selector7~3_combout\ $ (((!\p1|fsm|Selector6~2_combout\ & 
-- !\p1|fsm|Selector6~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011001100001111001100110011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|fsm|ALT_INV_Selector7~3_combout\,
	datac => \p1|fsm|ALT_INV_Selector6~2_combout\,
	datad => \p1|fsm|ALT_INV_Selector6~0_combout\,
	dataf => \p1|fsm|ALT_INV_Selector7~1_combout\,
	combout => \p1|mux0|y[1]~8_combout\);

-- Location: MLABCELL_X13_Y7_N30
\p1|mux0|y[1]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~12_combout\ = ( \p1|mux0|y[1]~11_combout\ & ( \p1|mux0|y[1]~8_combout\ & ( (\p1|fsm|Selector8~2_combout\ & (\p1|mux0|y[1]~10_combout\ & ((!\p1|mux0|y[1]~9_combout\) # (\p1|mux0|y[1]~7_combout\)))) ) ) ) # ( \p1|mux0|y[1]~11_combout\ & ( 
-- !\p1|mux0|y[1]~8_combout\ & ( (\p1|mux0|y[1]~10_combout\ & ((!\p1|fsm|Selector8~2_combout\ & ((!\p1|mux0|y[1]~9_combout\))) # (\p1|fsm|Selector8~2_combout\ & (\p1|mux0|y[1]~7_combout\ & \p1|mux0|y[1]~9_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000000100000000000000000000010100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector8~2_combout\,
	datab => \p1|mux0|ALT_INV_y[1]~7_combout\,
	datac => \p1|mux0|ALT_INV_y[1]~10_combout\,
	datad => \p1|mux0|ALT_INV_y[1]~9_combout\,
	datae => \p1|mux0|ALT_INV_y[1]~11_combout\,
	dataf => \p1|mux0|ALT_INV_y[1]~8_combout\,
	combout => \p1|mux0|y[1]~12_combout\);

-- Location: MLABCELL_X13_Y7_N6
\p1|mux0|y[1]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~16_combout\ = ( \p1|mux0|y[1]~14_combout\ & ( \p1|mux0|y[1]~12_combout\ & ( !\p1|mux0|y[1]~15_combout\ ) ) ) # ( \p1|mux0|y[1]~14_combout\ & ( !\p1|mux0|y[1]~12_combout\ & ( (!\p1|mux0|y[1]~15_combout\ & ((!\p1|fsm|Selector1~2_combout\) # 
-- (\p1|mux0|y[1]~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|mux0|ALT_INV_y[1]~6_combout\,
	datac => \p1|fsm|ALT_INV_Selector1~2_combout\,
	datad => \p1|mux0|ALT_INV_y[1]~15_combout\,
	datae => \p1|mux0|ALT_INV_y[1]~14_combout\,
	dataf => \p1|mux0|ALT_INV_y[1]~12_combout\,
	combout => \p1|mux0|y[1]~16_combout\);

-- Location: MLABCELL_X13_Y8_N51
\p1|decX|Mux0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|decX|Mux0~6_combout\ = ( !\p1|ir0|Q\(4) & ( (!\p1|ir0|Q\(3) & !\p1|ir0|Q\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|ir0|ALT_INV_Q\(3),
	datac => \p1|ir0|ALT_INV_Q\(5),
	dataf => \p1|ir0|ALT_INV_Q\(4),
	combout => \p1|decX|Mux0~6_combout\);

-- Location: LABCELL_X16_Y8_N48
\p1|fsm|Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector11~0_combout\ = ( \p1|fsm|Mux14~0_combout\ & ( (\p1|decX|Mux0~6_combout\ & ((\p1|pc0|v[8]~0_combout\) # (\p1|mux0|y[1]~15_combout\))) ) ) # ( !\p1|fsm|Mux14~0_combout\ & ( (\p1|decX|Mux0~6_combout\ & (((\p1|pc0|v[8]~0_combout\ & 
-- !\p1|ir0|Q\(8))) # (\p1|mux0|y[1]~15_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110101000000000111011100000000011101010000000001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[1]~15_combout\,
	datab => \p1|pc0|ALT_INV_v[8]~0_combout\,
	datac => \p1|ir0|ALT_INV_Q\(8),
	datad => \p1|decX|ALT_INV_Mux0~6_combout\,
	datae => \p1|fsm|ALT_INV_Mux14~0_combout\,
	combout => \p1|fsm|Selector11~0_combout\);

-- Location: FF_X13_Y7_N50
\p1|reg0|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|mux0|y[6]~41_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(6));

-- Location: MLABCELL_X13_Y7_N48
\p1|mux0|y[6]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[6]~41_combout\ = ( \p1|reg0|Q\(6) & ( \p1|mux0|y[1]~42_combout\ & ( (\p1|mux0|y[1]~16_combout\) # (\p1|regG|Q\(6)) ) ) ) # ( !\p1|reg0|Q\(6) & ( \p1|mux0|y[1]~42_combout\ & ( (\p1|regG|Q\(6) & !\p1|mux0|y[1]~16_combout\) ) ) ) # ( 
-- \p1|reg0|Q\(6) & ( !\p1|mux0|y[1]~42_combout\ & ( (!\p1|mux0|y[1]~16_combout\ & (\DIN[6]~8_combout\)) # (\p1|mux0|y[1]~16_combout\ & ((\p1|mux0|y[6]~40_combout\))) ) ) ) # ( !\p1|reg0|Q\(6) & ( !\p1|mux0|y[1]~42_combout\ & ( (!\p1|mux0|y[1]~16_combout\ & 
-- (\DIN[6]~8_combout\)) # (\p1|mux0|y[1]~16_combout\ & ((\p1|mux0|y[6]~40_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|regG|ALT_INV_Q\(6),
	datab => \ALT_INV_DIN[6]~8_combout\,
	datac => \p1|mux0|ALT_INV_y[6]~40_combout\,
	datad => \p1|mux0|ALT_INV_y[1]~16_combout\,
	datae => \p1|reg0|ALT_INV_Q\(6),
	dataf => \p1|mux0|ALT_INV_y[1]~42_combout\,
	combout => \p1|mux0|y[6]~41_combout\);

-- Location: FF_X13_Y8_N52
\p1|regAddr|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[6]~41_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regAddr|Q\(6));

-- Location: LABCELL_X12_Y8_N39
\DIN[4]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIN[4]~6_combout\ = ( \p1|regAddr|Q[7]~DUPLICATE_q\ & ( \m0|altsyncram_component|auto_generated|q_a\(4) & ( (!\p1|regAddr|Q\(8)) # (\u1|r0|Q\(4)) ) ) ) # ( !\p1|regAddr|Q[7]~DUPLICATE_q\ & ( \m0|altsyncram_component|auto_generated|q_a\(4) ) ) # ( 
-- \p1|regAddr|Q[7]~DUPLICATE_q\ & ( !\m0|altsyncram_component|auto_generated|q_a\(4) & ( (\u1|r0|Q\(4) & \p1|regAddr|Q\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010111111111111111111111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|r0|ALT_INV_Q\(4),
	datac => \p1|regAddr|ALT_INV_Q\(8),
	datae => \p1|regAddr|ALT_INV_Q[7]~DUPLICATE_q\,
	dataf => \m0|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	combout => \DIN[4]~6_combout\);

-- Location: FF_X13_Y8_N35
\p1|ir0|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DIN[4]~6_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|y_Q.TXX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(4));

-- Location: MLABCELL_X13_Y8_N36
\p1|decX|Mux0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|decX|Mux0~5_combout\ = ( !\p1|ir0|Q\(5) & ( (\p1|ir0|Q\(3) & !\p1|ir0|Q\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|ir0|ALT_INV_Q\(3),
	datac => \p1|ir0|ALT_INV_Q\(4),
	dataf => \p1|ir0|ALT_INV_Q\(5),
	combout => \p1|decX|Mux0~5_combout\);

-- Location: LABCELL_X16_Y9_N33
\p1|fsm|Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector12~0_combout\ = ( \p1|fsm|Mux14~0_combout\ & ( \p1|ir0|Q\(8) & ( (\p1|decX|Mux0~5_combout\ & ((\p1|mux0|y[1]~15_combout\) # (\p1|pc0|v[8]~0_combout\))) ) ) ) # ( !\p1|fsm|Mux14~0_combout\ & ( \p1|ir0|Q\(8) & ( (\p1|decX|Mux0~5_combout\ & 
-- \p1|mux0|y[1]~15_combout\) ) ) ) # ( \p1|fsm|Mux14~0_combout\ & ( !\p1|ir0|Q\(8) & ( (\p1|decX|Mux0~5_combout\ & ((\p1|mux0|y[1]~15_combout\) # (\p1|pc0|v[8]~0_combout\))) ) ) ) # ( !\p1|fsm|Mux14~0_combout\ & ( !\p1|ir0|Q\(8) & ( 
-- (\p1|decX|Mux0~5_combout\ & ((\p1|mux0|y[1]~15_combout\) # (\p1|pc0|v[8]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110011000000110011001100000000001100110000001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|decX|ALT_INV_Mux0~5_combout\,
	datac => \p1|pc0|ALT_INV_v[8]~0_combout\,
	datad => \p1|mux0|ALT_INV_y[1]~15_combout\,
	datae => \p1|fsm|ALT_INV_Mux14~0_combout\,
	dataf => \p1|ir0|ALT_INV_Q\(8),
	combout => \p1|fsm|Selector12~0_combout\);

-- Location: FF_X16_Y9_N4
\p1|reg1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg1|Q[5]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(5));

-- Location: FF_X14_Y7_N2
\p1|reg3|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[5]~38_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(5));

-- Location: MLABCELL_X13_Y10_N6
\p1|reg5|Q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg5|Q[5]~feeder_combout\ = ( \p1|mux0|y[5]~38_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[5]~38_combout\,
	combout => \p1|reg5|Q[5]~feeder_combout\);

-- Location: FF_X13_Y10_N7
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
	ena => \p1|fsm|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(5));

-- Location: MLABCELL_X13_Y10_N12
\p1|reg4|Q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg4|Q[5]~feeder_combout\ = ( \p1|mux0|y[5]~38_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[5]~38_combout\,
	combout => \p1|reg4|Q[5]~feeder_combout\);

-- Location: FF_X13_Y10_N13
\p1|reg4|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg4|Q[5]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg4|Q\(5));

-- Location: FF_X14_Y7_N20
\p1|reg6|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[5]~38_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(5));

-- Location: LABCELL_X14_Y7_N18
\p1|mux0|y[5]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[5]~36_combout\ = ( \p1|reg6|Q\(5) & ( \p1|mux0|y[1]~1_combout\ & ( (\p1|mux0|y[1]~0_combout\) # (\p1|pc0|v\(5)) ) ) ) # ( !\p1|reg6|Q\(5) & ( \p1|mux0|y[1]~1_combout\ & ( (\p1|pc0|v\(5) & !\p1|mux0|y[1]~0_combout\) ) ) ) # ( \p1|reg6|Q\(5) & ( 
-- !\p1|mux0|y[1]~1_combout\ & ( (!\p1|mux0|y[1]~0_combout\ & ((\p1|reg4|Q\(5)))) # (\p1|mux0|y[1]~0_combout\ & (\p1|reg5|Q\(5))) ) ) ) # ( !\p1|reg6|Q\(5) & ( !\p1|mux0|y[1]~1_combout\ & ( (!\p1|mux0|y[1]~0_combout\ & ((\p1|reg4|Q\(5)))) # 
-- (\p1|mux0|y[1]~0_combout\ & (\p1|reg5|Q\(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg5|ALT_INV_Q\(5),
	datab => \p1|pc0|ALT_INV_v\(5),
	datac => \p1|reg4|ALT_INV_Q\(5),
	datad => \p1|mux0|ALT_INV_y[1]~0_combout\,
	datae => \p1|reg6|ALT_INV_Q\(5),
	dataf => \p1|mux0|ALT_INV_y[1]~1_combout\,
	combout => \p1|mux0|y[5]~36_combout\);

-- Location: LABCELL_X14_Y7_N0
\p1|mux0|y[5]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[5]~37_combout\ = ( \p1|reg3|Q\(5) & ( \p1|mux0|y[5]~36_combout\ & ( ((!\p1|mux0|y[1]~3_combout\ & ((\p1|reg1|Q\(5)))) # (\p1|mux0|y[1]~3_combout\ & (\p1|reg2|Q\(5)))) # (\p1|mux0|y[1]~4_combout\) ) ) ) # ( !\p1|reg3|Q\(5) & ( 
-- \p1|mux0|y[5]~36_combout\ & ( (!\p1|mux0|y[1]~3_combout\ & (((\p1|mux0|y[1]~4_combout\) # (\p1|reg1|Q\(5))))) # (\p1|mux0|y[1]~3_combout\ & (\p1|reg2|Q\(5) & ((!\p1|mux0|y[1]~4_combout\)))) ) ) ) # ( \p1|reg3|Q\(5) & ( !\p1|mux0|y[5]~36_combout\ & ( 
-- (!\p1|mux0|y[1]~3_combout\ & (((\p1|reg1|Q\(5) & !\p1|mux0|y[1]~4_combout\)))) # (\p1|mux0|y[1]~3_combout\ & (((\p1|mux0|y[1]~4_combout\)) # (\p1|reg2|Q\(5)))) ) ) ) # ( !\p1|reg3|Q\(5) & ( !\p1|mux0|y[5]~36_combout\ & ( (!\p1|mux0|y[1]~4_combout\ & 
-- ((!\p1|mux0|y[1]~3_combout\ & ((\p1|reg1|Q\(5)))) # (\p1|mux0|y[1]~3_combout\ & (\p1|reg2|Q\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000001101010000111100110101111100000011010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg2|ALT_INV_Q\(5),
	datab => \p1|reg1|ALT_INV_Q\(5),
	datac => \p1|mux0|ALT_INV_y[1]~3_combout\,
	datad => \p1|mux0|ALT_INV_y[1]~4_combout\,
	datae => \p1|reg3|ALT_INV_Q\(5),
	dataf => \p1|mux0|ALT_INV_y[5]~36_combout\,
	combout => \p1|mux0|y[5]~37_combout\);

-- Location: FF_X13_Y9_N32
\p1|reg0|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|mux0|y[5]~38_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(5));

-- Location: MLABCELL_X13_Y9_N30
\p1|mux0|y[5]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[5]~38_combout\ = ( \p1|reg0|Q\(5) & ( \p1|mux0|y[1]~16_combout\ & ( (\p1|mux0|y[1]~42_combout\) # (\p1|mux0|y[5]~37_combout\) ) ) ) # ( !\p1|reg0|Q\(5) & ( \p1|mux0|y[1]~16_combout\ & ( (\p1|mux0|y[5]~37_combout\ & !\p1|mux0|y[1]~42_combout\) ) 
-- ) ) # ( \p1|reg0|Q\(5) & ( !\p1|mux0|y[1]~16_combout\ & ( (!\p1|mux0|y[1]~42_combout\ & ((\DIN[5]~7_combout\))) # (\p1|mux0|y[1]~42_combout\ & (\p1|regG|Q\(5))) ) ) ) # ( !\p1|reg0|Q\(5) & ( !\p1|mux0|y[1]~16_combout\ & ( (!\p1|mux0|y[1]~42_combout\ & 
-- ((\DIN[5]~7_combout\))) # (\p1|mux0|y[1]~42_combout\ & (\p1|regG|Q\(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|regG|ALT_INV_Q\(5),
	datab => \p1|mux0|ALT_INV_y[5]~37_combout\,
	datac => \ALT_INV_DIN[5]~7_combout\,
	datad => \p1|mux0|ALT_INV_y[1]~42_combout\,
	datae => \p1|reg0|ALT_INV_Q\(5),
	dataf => \p1|mux0|ALT_INV_y[1]~16_combout\,
	combout => \p1|mux0|y[5]~38_combout\);

-- Location: FF_X14_Y8_N10
\p1|regAddr|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[5]~38_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regAddr|Q\(5));

-- Location: LABCELL_X12_Y8_N48
\DIN[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIN[0]~1_combout\ = ( \m0|altsyncram_component|auto_generated|q_a\(0) & ( (!\p1|regAddr|Q[7]~DUPLICATE_q\) # ((!\p1|regAddr|Q\(8)) # (\u1|r0|Q\(0))) ) ) # ( !\m0|altsyncram_component|auto_generated|q_a\(0) & ( (\p1|regAddr|Q[7]~DUPLICATE_q\ & 
-- (\p1|regAddr|Q\(8) & \u1|r0|Q\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000111101111111011111110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|regAddr|ALT_INV_Q[7]~DUPLICATE_q\,
	datab => \p1|regAddr|ALT_INV_Q\(8),
	datac => \u1|r0|ALT_INV_Q\(0),
	dataf => \m0|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \DIN[0]~1_combout\);

-- Location: FF_X12_Y8_N32
\p1|ir0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DIN[0]~1_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|y_Q.TXX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(0));

-- Location: MLABCELL_X13_Y9_N51
\p1|fsm|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector2~0_combout\ = (!\p1|ir0|Q\(1) & !\p1|ir0|Q[2]~DUPLICATE_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|ir0|ALT_INV_Q\(1),
	datad => \p1|ir0|ALT_INV_Q[2]~DUPLICATE_q\,
	combout => \p1|fsm|Selector2~0_combout\);

-- Location: MLABCELL_X13_Y9_N9
\p1|fsm|Selector2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector2~1_combout\ = ( \p1|fsm|Mux3~0_combout\ & ( (\p1|ir0|Q\(0) & (\p1|fsm|Selector2~0_combout\ & \p1|fsm|Selector5~1_combout\)) ) ) # ( !\p1|fsm|Mux3~0_combout\ & ( (\p1|decX|Mux0~5_combout\ & \p1|fsm|Selector5~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(0),
	datab => \p1|fsm|ALT_INV_Selector2~0_combout\,
	datac => \p1|decX|ALT_INV_Mux0~5_combout\,
	datad => \p1|fsm|ALT_INV_Selector5~1_combout\,
	dataf => \p1|fsm|ALT_INV_Mux3~0_combout\,
	combout => \p1|fsm|Selector2~1_combout\);

-- Location: MLABCELL_X13_Y7_N0
\p1|mux0|y[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~4_combout\ = ( !\p1|fsm|Selector3~1_combout\ & ( (!\p1|fsm|Selector2~1_combout\ & (!\p1|fsm|Selector2~3_combout\ & !\p1|fsm|Selector3~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|fsm|ALT_INV_Selector2~1_combout\,
	datac => \p1|fsm|ALT_INV_Selector2~3_combout\,
	datad => \p1|fsm|ALT_INV_Selector3~0_combout\,
	dataf => \p1|fsm|ALT_INV_Selector3~1_combout\,
	combout => \p1|mux0|y[1]~4_combout\);

-- Location: LABCELL_X10_Y7_N21
\p1|reg2|Q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg2|Q[4]~feeder_combout\ = ( \p1|mux0|y[4]~35_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[4]~35_combout\,
	combout => \p1|reg2|Q[4]~feeder_combout\);

-- Location: FF_X10_Y7_N22
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

-- Location: MLABCELL_X13_Y10_N24
\p1|reg4|Q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg4|Q[4]~feeder_combout\ = ( \p1|mux0|y[4]~35_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[4]~35_combout\,
	combout => \p1|reg4|Q[4]~feeder_combout\);

-- Location: FF_X13_Y10_N25
\p1|reg4|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg4|Q[4]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg4|Q\(4));

-- Location: LABCELL_X10_Y7_N27
\p1|reg5|Q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg5|Q[4]~feeder_combout\ = ( \p1|mux0|y[4]~35_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[4]~35_combout\,
	combout => \p1|reg5|Q[4]~feeder_combout\);

-- Location: FF_X10_Y7_N28
\p1|reg5|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg5|Q[4]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(4));

-- Location: FF_X12_Y7_N20
\p1|reg6|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[4]~35_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(4));

-- Location: LABCELL_X12_Y7_N18
\p1|mux0|y[4]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[4]~33_combout\ = ( \p1|reg6|Q\(4) & ( \p1|mux0|y[1]~0_combout\ & ( (\p1|reg5|Q\(4)) # (\p1|mux0|y[1]~1_combout\) ) ) ) # ( !\p1|reg6|Q\(4) & ( \p1|mux0|y[1]~0_combout\ & ( (!\p1|mux0|y[1]~1_combout\ & \p1|reg5|Q\(4)) ) ) ) # ( \p1|reg6|Q\(4) & 
-- ( !\p1|mux0|y[1]~0_combout\ & ( (!\p1|mux0|y[1]~1_combout\ & (\p1|reg4|Q\(4))) # (\p1|mux0|y[1]~1_combout\ & ((\p1|pc0|v\(4)))) ) ) ) # ( !\p1|reg6|Q\(4) & ( !\p1|mux0|y[1]~0_combout\ & ( (!\p1|mux0|y[1]~1_combout\ & (\p1|reg4|Q\(4))) # 
-- (\p1|mux0|y[1]~1_combout\ & ((\p1|pc0|v\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg4|ALT_INV_Q\(4),
	datab => \p1|pc0|ALT_INV_v\(4),
	datac => \p1|mux0|ALT_INV_y[1]~1_combout\,
	datad => \p1|reg5|ALT_INV_Q\(4),
	datae => \p1|reg6|ALT_INV_Q\(4),
	dataf => \p1|mux0|ALT_INV_y[1]~0_combout\,
	combout => \p1|mux0|y[4]~33_combout\);

-- Location: LABCELL_X16_Y7_N3
\p1|reg1|Q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg1|Q[4]~feeder_combout\ = ( \p1|mux0|y[4]~35_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[4]~35_combout\,
	combout => \p1|reg1|Q[4]~feeder_combout\);

-- Location: FF_X16_Y7_N4
\p1|reg1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg1|Q[4]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(4));

-- Location: FF_X12_Y7_N2
\p1|reg3|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[4]~35_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(4));

-- Location: LABCELL_X12_Y7_N0
\p1|mux0|y[4]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[4]~34_combout\ = ( \p1|reg3|Q\(4) & ( \p1|mux0|y[1]~3_combout\ & ( (\p1|reg2|Q\(4)) # (\p1|mux0|y[1]~4_combout\) ) ) ) # ( !\p1|reg3|Q\(4) & ( \p1|mux0|y[1]~3_combout\ & ( (!\p1|mux0|y[1]~4_combout\ & \p1|reg2|Q\(4)) ) ) ) # ( \p1|reg3|Q\(4) & 
-- ( !\p1|mux0|y[1]~3_combout\ & ( (!\p1|mux0|y[1]~4_combout\ & ((\p1|reg1|Q\(4)))) # (\p1|mux0|y[1]~4_combout\ & (\p1|mux0|y[4]~33_combout\)) ) ) ) # ( !\p1|reg3|Q\(4) & ( !\p1|mux0|y[1]~3_combout\ & ( (!\p1|mux0|y[1]~4_combout\ & ((\p1|reg1|Q\(4)))) # 
-- (\p1|mux0|y[1]~4_combout\ & (\p1|mux0|y[4]~33_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100100010001000100111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[1]~4_combout\,
	datab => \p1|reg2|ALT_INV_Q\(4),
	datac => \p1|mux0|ALT_INV_y[4]~33_combout\,
	datad => \p1|reg1|ALT_INV_Q\(4),
	datae => \p1|reg3|ALT_INV_Q\(4),
	dataf => \p1|mux0|ALT_INV_y[1]~3_combout\,
	combout => \p1|mux0|y[4]~34_combout\);

-- Location: FF_X12_Y9_N46
\p1|regG|Q[4]\ : dffeas
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
	q => \p1|regG|Q\(4));

-- Location: FF_X12_Y7_N38
\p1|reg0|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|mux0|y[4]~35_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(4));

-- Location: LABCELL_X12_Y7_N36
\p1|mux0|y[4]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[4]~35_combout\ = ( \p1|reg0|Q\(4) & ( \p1|mux0|y[1]~42_combout\ & ( (\p1|mux0|y[1]~16_combout\) # (\p1|regG|Q\(4)) ) ) ) # ( !\p1|reg0|Q\(4) & ( \p1|mux0|y[1]~42_combout\ & ( (\p1|regG|Q\(4) & !\p1|mux0|y[1]~16_combout\) ) ) ) # ( 
-- \p1|reg0|Q\(4) & ( !\p1|mux0|y[1]~42_combout\ & ( (!\p1|mux0|y[1]~16_combout\ & ((\DIN[4]~6_combout\))) # (\p1|mux0|y[1]~16_combout\ & (\p1|mux0|y[4]~34_combout\)) ) ) ) # ( !\p1|reg0|Q\(4) & ( !\p1|mux0|y[1]~42_combout\ & ( (!\p1|mux0|y[1]~16_combout\ & 
-- ((\DIN[4]~6_combout\))) # (\p1|mux0|y[1]~16_combout\ & (\p1|mux0|y[4]~34_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[4]~34_combout\,
	datab => \p1|regG|ALT_INV_Q\(4),
	datac => \p1|mux0|ALT_INV_y[1]~16_combout\,
	datad => \ALT_INV_DIN[4]~6_combout\,
	datae => \p1|reg0|ALT_INV_Q\(4),
	dataf => \p1|mux0|ALT_INV_y[1]~42_combout\,
	combout => \p1|mux0|y[4]~35_combout\);

-- Location: FF_X13_Y8_N1
\p1|regAddr|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[4]~35_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regAddr|Q\(4));

-- Location: IOIBUF_X36_Y0_N18
\sw[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: FF_X16_Y8_N46
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

-- Location: LABCELL_X14_Y8_N24
\DIN[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIN[2]~2_combout\ = ( \u1|r0|Q\(2) & ( ((\p1|regAddr|Q\(8) & \p1|regAddr|Q[7]~DUPLICATE_q\)) # (\m0|altsyncram_component|auto_generated|q_a\(2)) ) ) # ( !\u1|r0|Q\(2) & ( (\m0|altsyncram_component|auto_generated|q_a\(2) & ((!\p1|regAddr|Q\(8)) # 
-- (!\p1|regAddr|Q[7]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101110000000001110111000010001111111110001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|regAddr|ALT_INV_Q\(8),
	datab => \p1|regAddr|ALT_INV_Q[7]~DUPLICATE_q\,
	datad => \m0|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	dataf => \u1|r0|ALT_INV_Q\(2),
	combout => \DIN[2]~2_combout\);

-- Location: FF_X12_Y9_N40
\p1|regG|Q[2]~DUPLICATE\ : dffeas
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
	q => \p1|regG|Q[2]~DUPLICATE_q\);

-- Location: FF_X16_Y9_N58
\p1|reg2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[2]~23_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q\(2));

-- Location: FF_X16_Y9_N16
\p1|reg1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[2]~23_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(2));

-- Location: FF_X14_Y9_N26
\p1|reg3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[2]~23_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(2));

-- Location: FF_X13_Y9_N40
\p1|reg5|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[2]~23_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(2));

-- Location: FF_X13_Y9_N16
\p1|reg4|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[2]~23_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg4|Q\(2));

-- Location: FF_X14_Y9_N32
\p1|reg6|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[2]~23_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(2));

-- Location: LABCELL_X14_Y9_N30
\p1|mux0|y[2]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[2]~21_combout\ = ( \p1|reg6|Q\(2) & ( \p1|mux0|y[1]~1_combout\ & ( (\p1|mux0|y[1]~0_combout\) # (\p1|pc0|v\(2)) ) ) ) # ( !\p1|reg6|Q\(2) & ( \p1|mux0|y[1]~1_combout\ & ( (\p1|pc0|v\(2) & !\p1|mux0|y[1]~0_combout\) ) ) ) # ( \p1|reg6|Q\(2) & ( 
-- !\p1|mux0|y[1]~1_combout\ & ( (!\p1|mux0|y[1]~0_combout\ & ((\p1|reg4|Q\(2)))) # (\p1|mux0|y[1]~0_combout\ & (\p1|reg5|Q\(2))) ) ) ) # ( !\p1|reg6|Q\(2) & ( !\p1|mux0|y[1]~1_combout\ & ( (!\p1|mux0|y[1]~0_combout\ & ((\p1|reg4|Q\(2)))) # 
-- (\p1|mux0|y[1]~0_combout\ & (\p1|reg5|Q\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg5|ALT_INV_Q\(2),
	datab => \p1|reg4|ALT_INV_Q\(2),
	datac => \p1|pc0|ALT_INV_v\(2),
	datad => \p1|mux0|ALT_INV_y[1]~0_combout\,
	datae => \p1|reg6|ALT_INV_Q\(2),
	dataf => \p1|mux0|ALT_INV_y[1]~1_combout\,
	combout => \p1|mux0|y[2]~21_combout\);

-- Location: LABCELL_X14_Y9_N24
\p1|mux0|y[2]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[2]~22_combout\ = ( \p1|reg3|Q\(2) & ( \p1|mux0|y[2]~21_combout\ & ( ((!\p1|mux0|y[1]~3_combout\ & ((\p1|reg1|Q\(2)))) # (\p1|mux0|y[1]~3_combout\ & (\p1|reg2|Q\(2)))) # (\p1|mux0|y[1]~4_combout\) ) ) ) # ( !\p1|reg3|Q\(2) & ( 
-- \p1|mux0|y[2]~21_combout\ & ( (!\p1|mux0|y[1]~4_combout\ & ((!\p1|mux0|y[1]~3_combout\ & ((\p1|reg1|Q\(2)))) # (\p1|mux0|y[1]~3_combout\ & (\p1|reg2|Q\(2))))) # (\p1|mux0|y[1]~4_combout\ & (((!\p1|mux0|y[1]~3_combout\)))) ) ) ) # ( \p1|reg3|Q\(2) & ( 
-- !\p1|mux0|y[2]~21_combout\ & ( (!\p1|mux0|y[1]~4_combout\ & ((!\p1|mux0|y[1]~3_combout\ & ((\p1|reg1|Q\(2)))) # (\p1|mux0|y[1]~3_combout\ & (\p1|reg2|Q\(2))))) # (\p1|mux0|y[1]~4_combout\ & (((\p1|mux0|y[1]~3_combout\)))) ) ) ) # ( !\p1|reg3|Q\(2) & ( 
-- !\p1|mux0|y[2]~21_combout\ & ( (!\p1|mux0|y[1]~4_combout\ & ((!\p1|mux0|y[1]~3_combout\ & ((\p1|reg1|Q\(2)))) # (\p1|mux0|y[1]~3_combout\ & (\p1|reg2|Q\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010000001111010011101010010111100100101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[1]~4_combout\,
	datab => \p1|reg2|ALT_INV_Q\(2),
	datac => \p1|mux0|ALT_INV_y[1]~3_combout\,
	datad => \p1|reg1|ALT_INV_Q\(2),
	datae => \p1|reg3|ALT_INV_Q\(2),
	dataf => \p1|mux0|ALT_INV_y[2]~21_combout\,
	combout => \p1|mux0|y[2]~22_combout\);

-- Location: FF_X14_Y9_N8
\p1|reg0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|mux0|y[2]~23_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(2));

-- Location: LABCELL_X14_Y9_N6
\p1|mux0|y[2]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[2]~23_combout\ = ( \p1|reg0|Q\(2) & ( \p1|mux0|y[1]~16_combout\ & ( (\p1|mux0|y[1]~42_combout\) # (\p1|mux0|y[2]~22_combout\) ) ) ) # ( !\p1|reg0|Q\(2) & ( \p1|mux0|y[1]~16_combout\ & ( (\p1|mux0|y[2]~22_combout\ & !\p1|mux0|y[1]~42_combout\) ) 
-- ) ) # ( \p1|reg0|Q\(2) & ( !\p1|mux0|y[1]~16_combout\ & ( (!\p1|mux0|y[1]~42_combout\ & (\DIN[2]~2_combout\)) # (\p1|mux0|y[1]~42_combout\ & ((\p1|regG|Q[2]~DUPLICATE_q\))) ) ) ) # ( !\p1|reg0|Q\(2) & ( !\p1|mux0|y[1]~16_combout\ & ( 
-- (!\p1|mux0|y[1]~42_combout\ & (\DIN[2]~2_combout\)) # (\p1|mux0|y[1]~42_combout\ & ((\p1|regG|Q[2]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DIN[2]~2_combout\,
	datab => \p1|regG|ALT_INV_Q[2]~DUPLICATE_q\,
	datac => \p1|mux0|ALT_INV_y[2]~22_combout\,
	datad => \p1|mux0|ALT_INV_y[1]~42_combout\,
	datae => \p1|reg0|ALT_INV_Q\(2),
	dataf => \p1|mux0|ALT_INV_y[1]~16_combout\,
	combout => \p1|mux0|y[2]~23_combout\);

-- Location: LABCELL_X14_Y8_N42
\p1|regAddr|Q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|regAddr|Q[2]~feeder_combout\ = ( \p1|mux0|y[2]~23_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[2]~23_combout\,
	combout => \p1|regAddr|Q[2]~feeder_combout\);

-- Location: FF_X14_Y8_N44
\p1|regAddr|Q[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|regAddr|Q[2]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regAddr|Q[2]~DUPLICATE_q\);

-- Location: LABCELL_X12_Y8_N27
\DIN[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIN[3]~0_combout\ = ( \m0|altsyncram_component|auto_generated|q_a\(3) & ( (!\p1|regAddr|Q[7]~DUPLICATE_q\) # ((!\p1|regAddr|Q\(8)) # (\u1|r0|Q\(3))) ) ) # ( !\m0|altsyncram_component|auto_generated|q_a\(3) & ( (\p1|regAddr|Q[7]~DUPLICATE_q\ & 
-- (\u1|r0|Q\(3) & \p1|regAddr|Q\(8))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000111111011111110111111101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|regAddr|ALT_INV_Q[7]~DUPLICATE_q\,
	datab => \u1|r0|ALT_INV_Q\(3),
	datac => \p1|regAddr|ALT_INV_Q\(8),
	dataf => \m0|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	combout => \DIN[3]~0_combout\);

-- Location: LABCELL_X16_Y9_N51
\p1|reg1|Q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg1|Q[3]~feeder_combout\ = ( \p1|mux0|y[3]~17_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[3]~17_combout\,
	combout => \p1|reg1|Q[3]~feeder_combout\);

-- Location: FF_X16_Y9_N53
\p1|reg1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg1|Q[3]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(3));

-- Location: LABCELL_X16_Y9_N45
\p1|reg2|Q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg2|Q[3]~feeder_combout\ = ( \p1|mux0|y[3]~17_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[3]~17_combout\,
	combout => \p1|reg2|Q[3]~feeder_combout\);

-- Location: FF_X16_Y9_N46
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

-- Location: FF_X14_Y9_N56
\p1|reg3|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[3]~17_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(3));

-- Location: FF_X14_Y6_N13
\p1|reg5|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[3]~17_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(3));

-- Location: FF_X13_Y10_N53
\p1|reg4|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[3]~17_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg4|Q\(3));

-- Location: FF_X14_Y9_N14
\p1|reg6|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[3]~17_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(3));

-- Location: LABCELL_X14_Y9_N12
\p1|mux0|y[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[3]~2_combout\ = ( \p1|reg6|Q\(3) & ( \p1|mux0|y[1]~1_combout\ & ( (\p1|mux0|y[1]~0_combout\) # (\p1|pc0|v\(3)) ) ) ) # ( !\p1|reg6|Q\(3) & ( \p1|mux0|y[1]~1_combout\ & ( (\p1|pc0|v\(3) & !\p1|mux0|y[1]~0_combout\) ) ) ) # ( \p1|reg6|Q\(3) & ( 
-- !\p1|mux0|y[1]~1_combout\ & ( (!\p1|mux0|y[1]~0_combout\ & ((\p1|reg4|Q\(3)))) # (\p1|mux0|y[1]~0_combout\ & (\p1|reg5|Q\(3))) ) ) ) # ( !\p1|reg6|Q\(3) & ( !\p1|mux0|y[1]~1_combout\ & ( (!\p1|mux0|y[1]~0_combout\ & ((\p1|reg4|Q\(3)))) # 
-- (\p1|mux0|y[1]~0_combout\ & (\p1|reg5|Q\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|pc0|ALT_INV_v\(3),
	datab => \p1|reg5|ALT_INV_Q\(3),
	datac => \p1|reg4|ALT_INV_Q\(3),
	datad => \p1|mux0|ALT_INV_y[1]~0_combout\,
	datae => \p1|reg6|ALT_INV_Q\(3),
	dataf => \p1|mux0|ALT_INV_y[1]~1_combout\,
	combout => \p1|mux0|y[3]~2_combout\);

-- Location: LABCELL_X14_Y9_N54
\p1|mux0|y[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[3]~5_combout\ = ( \p1|reg3|Q\(3) & ( \p1|mux0|y[3]~2_combout\ & ( ((!\p1|mux0|y[1]~3_combout\ & (\p1|reg1|Q\(3))) # (\p1|mux0|y[1]~3_combout\ & ((\p1|reg2|Q\(3))))) # (\p1|mux0|y[1]~4_combout\) ) ) ) # ( !\p1|reg3|Q\(3) & ( 
-- \p1|mux0|y[3]~2_combout\ & ( (!\p1|mux0|y[1]~4_combout\ & ((!\p1|mux0|y[1]~3_combout\ & (\p1|reg1|Q\(3))) # (\p1|mux0|y[1]~3_combout\ & ((\p1|reg2|Q\(3)))))) # (\p1|mux0|y[1]~4_combout\ & (((!\p1|mux0|y[1]~3_combout\)))) ) ) ) # ( \p1|reg3|Q\(3) & ( 
-- !\p1|mux0|y[3]~2_combout\ & ( (!\p1|mux0|y[1]~4_combout\ & ((!\p1|mux0|y[1]~3_combout\ & (\p1|reg1|Q\(3))) # (\p1|mux0|y[1]~3_combout\ & ((\p1|reg2|Q\(3)))))) # (\p1|mux0|y[1]~4_combout\ & (((\p1|mux0|y[1]~3_combout\)))) ) ) ) # ( !\p1|reg3|Q\(3) & ( 
-- !\p1|mux0|y[3]~2_combout\ & ( (!\p1|mux0|y[1]~4_combout\ & ((!\p1|mux0|y[1]~3_combout\ & (\p1|reg1|Q\(3))) # (\p1|mux0|y[1]~3_combout\ & ((\p1|reg2|Q\(3)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010001001010010111101110000011110100111010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[1]~4_combout\,
	datab => \p1|reg1|ALT_INV_Q\(3),
	datac => \p1|mux0|ALT_INV_y[1]~3_combout\,
	datad => \p1|reg2|ALT_INV_Q\(3),
	datae => \p1|reg3|ALT_INV_Q\(3),
	dataf => \p1|mux0|ALT_INV_y[3]~2_combout\,
	combout => \p1|mux0|y[3]~5_combout\);

-- Location: FF_X14_Y9_N38
\p1|reg0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|mux0|y[3]~17_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(3));

-- Location: LABCELL_X14_Y9_N36
\p1|mux0|y[3]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[3]~17_combout\ = ( \p1|reg0|Q\(3) & ( \p1|mux0|y[1]~16_combout\ & ( (\p1|mux0|y[1]~42_combout\) # (\p1|mux0|y[3]~5_combout\) ) ) ) # ( !\p1|reg0|Q\(3) & ( \p1|mux0|y[1]~16_combout\ & ( (\p1|mux0|y[3]~5_combout\ & !\p1|mux0|y[1]~42_combout\) ) ) 
-- ) # ( \p1|reg0|Q\(3) & ( !\p1|mux0|y[1]~16_combout\ & ( (!\p1|mux0|y[1]~42_combout\ & ((\DIN[3]~0_combout\))) # (\p1|mux0|y[1]~42_combout\ & (\p1|regG|Q[3]~DUPLICATE_q\)) ) ) ) # ( !\p1|reg0|Q\(3) & ( !\p1|mux0|y[1]~16_combout\ & ( 
-- (!\p1|mux0|y[1]~42_combout\ & ((\DIN[3]~0_combout\))) # (\p1|mux0|y[1]~42_combout\ & (\p1|regG|Q[3]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|regG|ALT_INV_Q[3]~DUPLICATE_q\,
	datab => \ALT_INV_DIN[3]~0_combout\,
	datac => \p1|mux0|ALT_INV_y[3]~5_combout\,
	datad => \p1|mux0|ALT_INV_y[1]~42_combout\,
	datae => \p1|reg0|ALT_INV_Q\(3),
	dataf => \p1|mux0|ALT_INV_y[1]~16_combout\,
	combout => \p1|mux0|y[3]~17_combout\);

-- Location: FF_X13_Y10_N40
\p1|regA|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[3]~17_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regA|Q\(3));

-- Location: FF_X12_Y9_N44
\p1|regG|Q[3]\ : dffeas
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
	q => \p1|regG|Q\(3));

-- Location: FF_X12_Y9_N47
\p1|regG|Q[4]~DUPLICATE\ : dffeas
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
	q => \p1|regG|Q[4]~DUPLICATE_q\);

-- Location: FF_X12_Y9_N41
\p1|regG|Q[2]\ : dffeas
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
	q => \p1|regG|Q\(2));

-- Location: LABCELL_X12_Y9_N3
\p1|fsm|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Equal0~1_combout\ = ( !\p1|regG|Q\(2) & ( (!\p1|regG|Q\(3) & !\p1|regG|Q[4]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|regG|ALT_INV_Q\(3),
	datad => \p1|regG|ALT_INV_Q[4]~DUPLICATE_q\,
	dataf => \p1|regG|ALT_INV_Q\(2),
	combout => \p1|fsm|Equal0~1_combout\);

-- Location: MLABCELL_X13_Y9_N18
\p1|fsm|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Mux3~0_combout\ = ( \p1|fsm|Equal0~0_combout\ & ( (!\p1|ir0|Q\(8) & (!\p1|ir0|Q\(6) & (!\p1|ir0|Q\(7)))) # (\p1|ir0|Q\(8) & ((!\p1|ir0|Q\(7)) # ((!\p1|ir0|Q\(6) & !\p1|fsm|Equal0~1_combout\)))) ) ) # ( !\p1|fsm|Equal0~0_combout\ & ( 
-- (!\p1|ir0|Q\(8) & (!\p1|ir0|Q\(6) & !\p1|ir0|Q\(7))) # (\p1|ir0|Q\(8) & ((!\p1|ir0|Q\(6)) # (!\p1|ir0|Q\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010011010100110101001101010011010100110100001101010011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(8),
	datab => \p1|ir0|ALT_INV_Q\(6),
	datac => \p1|ir0|ALT_INV_Q\(7),
	datad => \p1|fsm|ALT_INV_Equal0~1_combout\,
	dataf => \p1|fsm|ALT_INV_Equal0~0_combout\,
	combout => \p1|fsm|Mux3~0_combout\);

-- Location: MLABCELL_X13_Y9_N27
\p1|fsm|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector1~0_combout\ = ( !\p1|ir0|Q\(2) & ( (!\p1|ir0|Q\(8) & (!\p1|ir0|Q\(1) & !\p1|ir0|Q\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(8),
	datac => \p1|ir0|ALT_INV_Q\(1),
	datad => \p1|ir0|ALT_INV_Q\(0),
	dataf => \p1|ir0|ALT_INV_Q\(2),
	combout => \p1|fsm|Selector1~0_combout\);

-- Location: MLABCELL_X13_Y9_N24
\p1|fsm|Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector1~1_combout\ = ( \p1|fsm|Selector8~0_combout\ & ( ((\p1|decX|Mux0~6_combout\ & \p1|fsm|DoutIn~0_combout\)) # (\p1|fsm|Selector1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|decX|ALT_INV_Mux0~6_combout\,
	datac => \p1|fsm|ALT_INV_DoutIn~0_combout\,
	datad => \p1|fsm|ALT_INV_Selector1~0_combout\,
	dataf => \p1|fsm|ALT_INV_Selector8~0_combout\,
	combout => \p1|fsm|Selector1~1_combout\);

-- Location: MLABCELL_X13_Y9_N12
\p1|fsm|Selector1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector1~2_combout\ = ( \p1|fsm|Selector5~1_combout\ & ( !\p1|fsm|Selector1~1_combout\ & ( (!\p1|fsm|Mux3~0_combout\ & (!\p1|decX|Mux0~6_combout\)) # (\p1|fsm|Mux3~0_combout\ & (((!\p1|fsm|Selector2~0_combout\) # (\p1|ir0|Q\(0))))) ) ) ) # ( 
-- !\p1|fsm|Selector5~1_combout\ & ( !\p1|fsm|Selector1~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111110111011000110100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Mux3~0_combout\,
	datab => \p1|decX|ALT_INV_Mux0~6_combout\,
	datac => \p1|ir0|ALT_INV_Q\(0),
	datad => \p1|fsm|ALT_INV_Selector2~0_combout\,
	datae => \p1|fsm|ALT_INV_Selector5~1_combout\,
	dataf => \p1|fsm|ALT_INV_Selector1~1_combout\,
	combout => \p1|fsm|Selector1~2_combout\);

-- Location: MLABCELL_X13_Y9_N42
\p1|mux0|y[1]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~42_combout\ = ( \p1|fsm|y_Q.T3~q\ & ( \p1|mux0|y[1]~14_combout\ & ( (!\p1|fsm|Selector1~2_combout\ & ((!\p1|ir0|Q\(8) $ (\p1|ir0|Q\(6))) # (\p1|ir0|Q\(7)))) # (\p1|fsm|Selector1~2_combout\ & (!\p1|ir0|Q\(8) & (\p1|ir0|Q\(7)))) ) ) ) # ( 
-- !\p1|fsm|y_Q.T3~q\ & ( \p1|mux0|y[1]~14_combout\ & ( !\p1|fsm|Selector1~2_combout\ ) ) ) # ( \p1|fsm|y_Q.T3~q\ & ( !\p1|mux0|y[1]~14_combout\ & ( (!\p1|ir0|Q\(8) & \p1|ir0|Q\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101011001100110011001000111001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(8),
	datab => \p1|fsm|ALT_INV_Selector1~2_combout\,
	datac => \p1|ir0|ALT_INV_Q\(7),
	datad => \p1|ir0|ALT_INV_Q\(6),
	datae => \p1|fsm|ALT_INV_y_Q.T3~q\,
	dataf => \p1|mux0|ALT_INV_y[1]~14_combout\,
	combout => \p1|mux0|y[1]~42_combout\);

-- Location: FF_X16_Y9_N10
\p1|reg2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[1]~32_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q\(1));

-- Location: FF_X16_Y9_N40
\p1|reg1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[1]~32_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(1));

-- Location: FF_X14_Y7_N26
\p1|reg3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[1]~32_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(1));

-- Location: MLABCELL_X13_Y10_N48
\p1|reg4|Q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg4|Q[1]~feeder_combout\ = ( \p1|mux0|y[1]~32_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[1]~32_combout\,
	combout => \p1|reg4|Q[1]~feeder_combout\);

-- Location: FF_X13_Y10_N49
\p1|reg4|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg4|Q[1]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg4|Q\(1));

-- Location: MLABCELL_X13_Y10_N54
\p1|reg5|Q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg5|Q[1]~feeder_combout\ = ( \p1|mux0|y[1]~32_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[1]~32_combout\,
	combout => \p1|reg5|Q[1]~feeder_combout\);

-- Location: FF_X13_Y10_N55
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
	ena => \p1|fsm|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(1));

-- Location: FF_X14_Y7_N8
\p1|reg6|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[1]~32_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(1));

-- Location: LABCELL_X14_Y7_N6
\p1|mux0|y[1]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~30_combout\ = ( \p1|reg6|Q\(1) & ( \p1|mux0|y[1]~0_combout\ & ( (\p1|mux0|y[1]~1_combout\) # (\p1|reg5|Q\(1)) ) ) ) # ( !\p1|reg6|Q\(1) & ( \p1|mux0|y[1]~0_combout\ & ( (\p1|reg5|Q\(1) & !\p1|mux0|y[1]~1_combout\) ) ) ) # ( \p1|reg6|Q\(1) & 
-- ( !\p1|mux0|y[1]~0_combout\ & ( (!\p1|mux0|y[1]~1_combout\ & ((\p1|reg4|Q\(1)))) # (\p1|mux0|y[1]~1_combout\ & (\p1|pc0|v\(1))) ) ) ) # ( !\p1|reg6|Q\(1) & ( !\p1|mux0|y[1]~0_combout\ & ( (!\p1|mux0|y[1]~1_combout\ & ((\p1|reg4|Q\(1)))) # 
-- (\p1|mux0|y[1]~1_combout\ & (\p1|pc0|v\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|pc0|ALT_INV_v\(1),
	datab => \p1|reg4|ALT_INV_Q\(1),
	datac => \p1|reg5|ALT_INV_Q\(1),
	datad => \p1|mux0|ALT_INV_y[1]~1_combout\,
	datae => \p1|reg6|ALT_INV_Q\(1),
	dataf => \p1|mux0|ALT_INV_y[1]~0_combout\,
	combout => \p1|mux0|y[1]~30_combout\);

-- Location: LABCELL_X14_Y7_N24
\p1|mux0|y[1]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~31_combout\ = ( \p1|reg3|Q\(1) & ( \p1|mux0|y[1]~30_combout\ & ( ((!\p1|mux0|y[1]~3_combout\ & ((\p1|reg1|Q\(1)))) # (\p1|mux0|y[1]~3_combout\ & (\p1|reg2|Q\(1)))) # (\p1|mux0|y[1]~4_combout\) ) ) ) # ( !\p1|reg3|Q\(1) & ( 
-- \p1|mux0|y[1]~30_combout\ & ( (!\p1|mux0|y[1]~3_combout\ & (((\p1|mux0|y[1]~4_combout\) # (\p1|reg1|Q\(1))))) # (\p1|mux0|y[1]~3_combout\ & (\p1|reg2|Q\(1) & ((!\p1|mux0|y[1]~4_combout\)))) ) ) ) # ( \p1|reg3|Q\(1) & ( !\p1|mux0|y[1]~30_combout\ & ( 
-- (!\p1|mux0|y[1]~3_combout\ & (((\p1|reg1|Q\(1) & !\p1|mux0|y[1]~4_combout\)))) # (\p1|mux0|y[1]~3_combout\ & (((\p1|mux0|y[1]~4_combout\)) # (\p1|reg2|Q\(1)))) ) ) ) # ( !\p1|reg3|Q\(1) & ( !\p1|mux0|y[1]~30_combout\ & ( (!\p1|mux0|y[1]~4_combout\ & 
-- ((!\p1|mux0|y[1]~3_combout\ & ((\p1|reg1|Q\(1)))) # (\p1|mux0|y[1]~3_combout\ & (\p1|reg2|Q\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000001101010000111100110101111100000011010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg2|ALT_INV_Q\(1),
	datab => \p1|reg1|ALT_INV_Q\(1),
	datac => \p1|mux0|ALT_INV_y[1]~3_combout\,
	datad => \p1|mux0|ALT_INV_y[1]~4_combout\,
	datae => \p1|reg3|ALT_INV_Q\(1),
	dataf => \p1|mux0|ALT_INV_y[1]~30_combout\,
	combout => \p1|mux0|y[1]~31_combout\);

-- Location: FF_X13_Y9_N2
\p1|reg0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|mux0|y[1]~32_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(1));

-- Location: MLABCELL_X13_Y9_N0
\p1|mux0|y[1]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~32_combout\ = ( \p1|reg0|Q\(1) & ( \p1|mux0|y[1]~16_combout\ & ( (\p1|mux0|y[1]~31_combout\) # (\p1|mux0|y[1]~42_combout\) ) ) ) # ( !\p1|reg0|Q\(1) & ( \p1|mux0|y[1]~16_combout\ & ( (!\p1|mux0|y[1]~42_combout\ & \p1|mux0|y[1]~31_combout\) ) 
-- ) ) # ( \p1|reg0|Q\(1) & ( !\p1|mux0|y[1]~16_combout\ & ( (!\p1|mux0|y[1]~42_combout\ & ((\DIN[1]~5_combout\))) # (\p1|mux0|y[1]~42_combout\ & (\p1|regG|Q\(1))) ) ) ) # ( !\p1|reg0|Q\(1) & ( !\p1|mux0|y[1]~16_combout\ & ( (!\p1|mux0|y[1]~42_combout\ & 
-- ((\DIN[1]~5_combout\))) # (\p1|mux0|y[1]~42_combout\ & (\p1|regG|Q\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|regG|ALT_INV_Q\(1),
	datab => \p1|mux0|ALT_INV_y[1]~42_combout\,
	datac => \p1|mux0|ALT_INV_y[1]~31_combout\,
	datad => \ALT_INV_DIN[1]~5_combout\,
	datae => \p1|reg0|ALT_INV_Q\(1),
	dataf => \p1|mux0|ALT_INV_y[1]~16_combout\,
	combout => \p1|mux0|y[1]~32_combout\);

-- Location: FF_X14_Y8_N34
\p1|regAddr|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[1]~32_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regAddr|Q\(1));

-- Location: LABCELL_X12_Y8_N30
\DIN[6]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIN[6]~8_combout\ = ( \m0|altsyncram_component|auto_generated|q_a\(6) & ( (!\p1|regAddr|Q[7]~DUPLICATE_q\) # ((!\p1|regAddr|Q\(8)) # (\u1|r0|Q\(6))) ) ) # ( !\m0|altsyncram_component|auto_generated|q_a\(6) & ( (\p1|regAddr|Q[7]~DUPLICATE_q\ & 
-- (\p1|regAddr|Q\(8) & \u1|r0|Q\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000111101111111011111110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|regAddr|ALT_INV_Q[7]~DUPLICATE_q\,
	datab => \p1|regAddr|ALT_INV_Q\(8),
	datac => \u1|r0|ALT_INV_Q\(6),
	dataf => \m0|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \DIN[6]~8_combout\);

-- Location: FF_X12_Y8_N20
\p1|ir0|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DIN[6]~8_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|y_Q.TXX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(6));

-- Location: MLABCELL_X13_Y9_N21
\p1|fsm|Mux28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Mux28~0_combout\ = (!\p1|ir0|Q\(8) & (\p1|ir0|Q\(6) & \p1|ir0|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(8),
	datab => \p1|ir0|ALT_INV_Q\(6),
	datac => \p1|ir0|ALT_INV_Q\(7),
	combout => \p1|fsm|Mux28~0_combout\);

-- Location: LABCELL_X10_Y9_N33
\p1|regA|Q[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|regA|Q[8]~feeder_combout\ = ( \p1|mux0|y[8]~26_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[8]~26_combout\,
	combout => \p1|regA|Q[8]~feeder_combout\);

-- Location: FF_X10_Y9_N35
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

-- Location: FF_X13_Y10_N5
\p1|regA|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[7]~29_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regA|Q\(7));

-- Location: LABCELL_X12_Y9_N54
\p1|addsub0|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~9_sumout\ = SUM(( \p1|regA|Q\(7) ) + ( !\p1|mux0|y[7]~29_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|addsub0|Add0~6\ ))
-- \p1|addsub0|Add0~10\ = CARRY(( \p1|regA|Q\(7) ) + ( !\p1|mux0|y[7]~29_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|addsub0|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001010010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T2~q\,
	datac => \p1|mux0|ALT_INV_y[7]~29_combout\,
	datad => \p1|regA|ALT_INV_Q\(7),
	dataf => \p1|fsm|ALT_INV_Mux28~0_combout\,
	cin => \p1|addsub0|Add0~6\,
	sumout => \p1|addsub0|Add0~9_sumout\,
	cout => \p1|addsub0|Add0~10\);

-- Location: LABCELL_X12_Y9_N57
\p1|addsub0|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~13_sumout\ = SUM(( !\p1|mux0|y[8]~26_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|regA|Q\(8) ) + ( \p1|addsub0|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T2~q\,
	datac => \p1|mux0|ALT_INV_y[8]~26_combout\,
	datad => \p1|fsm|ALT_INV_Mux28~0_combout\,
	dataf => \p1|regA|ALT_INV_Q\(8),
	cin => \p1|addsub0|Add0~10\,
	sumout => \p1|addsub0|Add0~13_sumout\);

-- Location: FF_X12_Y9_N59
\p1|regG|Q[8]\ : dffeas
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
	q => \p1|regG|Q\(8));

-- Location: LABCELL_X16_Y9_N42
\p1|reg2|Q[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg2|Q[8]~feeder_combout\ = ( \p1|mux0|y[8]~26_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[8]~26_combout\,
	combout => \p1|reg2|Q[8]~feeder_combout\);

-- Location: FF_X16_Y9_N43
\p1|reg2|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg2|Q[8]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q\(8));

-- Location: LABCELL_X16_Y9_N48
\p1|reg1|Q[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg1|Q[8]~feeder_combout\ = ( \p1|mux0|y[8]~26_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[8]~26_combout\,
	combout => \p1|reg1|Q[8]~feeder_combout\);

-- Location: FF_X16_Y9_N49
\p1|reg1|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg1|Q[8]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(8));

-- Location: FF_X13_Y9_N19
\p1|reg5|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[8]~26_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(8));

-- Location: LABCELL_X14_Y7_N51
\p1|pc0|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|pc0|Add0~17_sumout\ = SUM(( \p1|pc0|v\(7) ) + ( GND ) + ( \p1|pc0|Add0~34\ ))
-- \p1|pc0|Add0~18\ = CARRY(( \p1|pc0|v\(7) ) + ( GND ) + ( \p1|pc0|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \p1|pc0|ALT_INV_v\(7),
	cin => \p1|pc0|Add0~34\,
	sumout => \p1|pc0|Add0~17_sumout\,
	cout => \p1|pc0|Add0~18\);

-- Location: FF_X14_Y7_N52
\p1|pc0|v[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|pc0|Add0~17_sumout\,
	asdata => \p1|mux0|y[7]~29_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => \p1|fsm|Selector10~1_combout\,
	ena => \p1|pc0|v[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|pc0|v\(7));

-- Location: LABCELL_X14_Y7_N54
\p1|pc0|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|pc0|Add0~13_sumout\ = SUM(( \p1|pc0|v\(8) ) + ( GND ) + ( \p1|pc0|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \p1|pc0|ALT_INV_v\(8),
	cin => \p1|pc0|Add0~18\,
	sumout => \p1|pc0|Add0~13_sumout\);

-- Location: FF_X14_Y7_N55
\p1|pc0|v[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|pc0|Add0~13_sumout\,
	asdata => \p1|mux0|y[8]~26_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => \p1|fsm|Selector10~1_combout\,
	ena => \p1|pc0|v[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|pc0|v\(8));

-- Location: FF_X13_Y9_N14
\p1|reg4|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[8]~26_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg4|Q\(8));

-- Location: FF_X13_Y7_N44
\p1|reg6|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[8]~26_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(8));

-- Location: MLABCELL_X13_Y7_N42
\p1|mux0|y[8]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[8]~24_combout\ = ( \p1|reg6|Q\(8) & ( \p1|mux0|y[1]~1_combout\ & ( (\p1|mux0|y[1]~0_combout\) # (\p1|pc0|v\(8)) ) ) ) # ( !\p1|reg6|Q\(8) & ( \p1|mux0|y[1]~1_combout\ & ( (\p1|pc0|v\(8) & !\p1|mux0|y[1]~0_combout\) ) ) ) # ( \p1|reg6|Q\(8) & ( 
-- !\p1|mux0|y[1]~1_combout\ & ( (!\p1|mux0|y[1]~0_combout\ & ((\p1|reg4|Q\(8)))) # (\p1|mux0|y[1]~0_combout\ & (\p1|reg5|Q\(8))) ) ) ) # ( !\p1|reg6|Q\(8) & ( !\p1|mux0|y[1]~1_combout\ & ( (!\p1|mux0|y[1]~0_combout\ & ((\p1|reg4|Q\(8)))) # 
-- (\p1|mux0|y[1]~0_combout\ & (\p1|reg5|Q\(8))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg5|ALT_INV_Q\(8),
	datab => \p1|pc0|ALT_INV_v\(8),
	datac => \p1|reg4|ALT_INV_Q\(8),
	datad => \p1|mux0|ALT_INV_y[1]~0_combout\,
	datae => \p1|reg6|ALT_INV_Q\(8),
	dataf => \p1|mux0|ALT_INV_y[1]~1_combout\,
	combout => \p1|mux0|y[8]~24_combout\);

-- Location: FF_X14_Y7_N14
\p1|reg3|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[8]~26_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(8));

-- Location: LABCELL_X14_Y7_N12
\p1|mux0|y[8]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[8]~25_combout\ = ( \p1|reg3|Q\(8) & ( \p1|mux0|y[1]~3_combout\ & ( (\p1|mux0|y[1]~4_combout\) # (\p1|reg2|Q\(8)) ) ) ) # ( !\p1|reg3|Q\(8) & ( \p1|mux0|y[1]~3_combout\ & ( (\p1|reg2|Q\(8) & !\p1|mux0|y[1]~4_combout\) ) ) ) # ( \p1|reg3|Q\(8) & 
-- ( !\p1|mux0|y[1]~3_combout\ & ( (!\p1|mux0|y[1]~4_combout\ & (\p1|reg1|Q\(8))) # (\p1|mux0|y[1]~4_combout\ & ((\p1|mux0|y[8]~24_combout\))) ) ) ) # ( !\p1|reg3|Q\(8) & ( !\p1|mux0|y[1]~3_combout\ & ( (!\p1|mux0|y[1]~4_combout\ & (\p1|reg1|Q\(8))) # 
-- (\p1|mux0|y[1]~4_combout\ & ((\p1|mux0|y[8]~24_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111101000100010001000111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg2|ALT_INV_Q\(8),
	datab => \p1|mux0|ALT_INV_y[1]~4_combout\,
	datac => \p1|reg1|ALT_INV_Q\(8),
	datad => \p1|mux0|ALT_INV_y[8]~24_combout\,
	datae => \p1|reg3|ALT_INV_Q\(8),
	dataf => \p1|mux0|ALT_INV_y[1]~3_combout\,
	combout => \p1|mux0|y[8]~25_combout\);

-- Location: FF_X13_Y9_N56
\p1|reg0|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|mux0|y[8]~26_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(8));

-- Location: MLABCELL_X13_Y9_N54
\p1|mux0|y[8]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[8]~26_combout\ = ( \p1|reg0|Q\(8) & ( \p1|mux0|y[1]~16_combout\ & ( (\p1|mux0|y[1]~42_combout\) # (\p1|mux0|y[8]~25_combout\) ) ) ) # ( !\p1|reg0|Q\(8) & ( \p1|mux0|y[1]~16_combout\ & ( (\p1|mux0|y[8]~25_combout\ & !\p1|mux0|y[1]~42_combout\) ) 
-- ) ) # ( \p1|reg0|Q\(8) & ( !\p1|mux0|y[1]~16_combout\ & ( (!\p1|mux0|y[1]~42_combout\ & (\DIN[8]~3_combout\)) # (\p1|mux0|y[1]~42_combout\ & ((\p1|regG|Q\(8)))) ) ) ) # ( !\p1|reg0|Q\(8) & ( !\p1|mux0|y[1]~16_combout\ & ( (!\p1|mux0|y[1]~42_combout\ & 
-- (\DIN[8]~3_combout\)) # (\p1|mux0|y[1]~42_combout\ & ((\p1|regG|Q\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DIN[8]~3_combout\,
	datab => \p1|regG|ALT_INV_Q\(8),
	datac => \p1|mux0|ALT_INV_y[8]~25_combout\,
	datad => \p1|mux0|ALT_INV_y[1]~42_combout\,
	datae => \p1|reg0|ALT_INV_Q\(8),
	dataf => \p1|mux0|ALT_INV_y[1]~16_combout\,
	combout => \p1|mux0|y[8]~26_combout\);

-- Location: FF_X14_Y8_N8
\p1|regAddr|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[8]~26_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regAddr|Q\(8));

-- Location: LABCELL_X14_Y8_N27
wr_en : cyclonev_lcell_comb
-- Equation(s):
-- \wr_en~combout\ = (!\p1|regAddr|Q\(8) & (!\p1|regAddr|Q[7]~DUPLICATE_q\ & \p1|ff0|Q~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|regAddr|ALT_INV_Q\(8),
	datab => \p1|regAddr|ALT_INV_Q[7]~DUPLICATE_q\,
	datad => \p1|ff0|ALT_INV_Q~q\,
	combout => \wr_en~combout\);

-- Location: IOIBUF_X24_Y0_N52
\sw[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

-- Location: FF_X14_Y8_N23
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

-- Location: FF_X14_Y8_N14
\p1|regAddr|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[7]~29_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regAddr|Q\(7));

-- Location: MLABCELL_X13_Y8_N54
\DIN[7]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIN[7]~4_combout\ = ( \p1|regAddr|Q\(7) & ( (!\p1|regAddr|Q\(8) & (\m0|altsyncram_component|auto_generated|q_a\(7))) # (\p1|regAddr|Q\(8) & ((\u1|r0|Q\(7)))) ) ) # ( !\p1|regAddr|Q\(7) & ( \m0|altsyncram_component|auto_generated|q_a\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \m0|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	datac => \u1|r0|ALT_INV_Q\(7),
	datad => \p1|regAddr|ALT_INV_Q\(8),
	dataf => \p1|regAddr|ALT_INV_Q\(7),
	combout => \DIN[7]~4_combout\);

-- Location: FF_X13_Y8_N56
\p1|ir0|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DIN[7]~4_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|y_Q.TXX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(7));

-- Location: LABCELL_X12_Y8_N54
\p1|fsm|y_D.T2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|y_D.T2~0_combout\ = ( \p1|fsm|y_Q.T1~DUPLICATE_q\ & ( (!\p1|fsm|y_Q.T3~q\ & ((!\p1|ir0|Q\(8) $ (!\p1|ir0|Q\(7))) # (\p1|ir0|Q\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001101111000000000110111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(8),
	datab => \p1|ir0|ALT_INV_Q\(7),
	datac => \p1|ir0|ALT_INV_Q\(6),
	datad => \p1|fsm|ALT_INV_y_Q.T3~q\,
	dataf => \p1|fsm|ALT_INV_y_Q.T1~DUPLICATE_q\,
	combout => \p1|fsm|y_D.T2~0_combout\);

-- Location: FF_X12_Y8_N56
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

-- Location: FF_X12_Y9_N55
\p1|regG|Q[7]~DUPLICATE\ : dffeas
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
	q => \p1|regG|Q[7]~DUPLICATE_q\);

-- Location: FF_X16_Y9_N37
\p1|reg1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[7]~29_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(7));

-- Location: FF_X16_Y9_N8
\p1|reg2|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[7]~29_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q\(7));

-- Location: FF_X14_Y9_N44
\p1|reg3|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[7]~29_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(7));

-- Location: MLABCELL_X13_Y10_N15
\p1|reg4|Q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg4|Q[7]~feeder_combout\ = ( \p1|mux0|y[7]~29_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[7]~29_combout\,
	combout => \p1|reg4|Q[7]~feeder_combout\);

-- Location: FF_X13_Y10_N16
\p1|reg4|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg4|Q[7]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg4|Q\(7));

-- Location: FF_X13_Y9_N46
\p1|reg5|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[7]~29_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(7));

-- Location: FF_X14_Y9_N50
\p1|reg6|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[7]~29_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(7));

-- Location: LABCELL_X14_Y9_N48
\p1|mux0|y[7]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[7]~27_combout\ = ( \p1|reg6|Q\(7) & ( \p1|mux0|y[1]~1_combout\ & ( (\p1|mux0|y[1]~0_combout\) # (\p1|pc0|v\(7)) ) ) ) # ( !\p1|reg6|Q\(7) & ( \p1|mux0|y[1]~1_combout\ & ( (\p1|pc0|v\(7) & !\p1|mux0|y[1]~0_combout\) ) ) ) # ( \p1|reg6|Q\(7) & ( 
-- !\p1|mux0|y[1]~1_combout\ & ( (!\p1|mux0|y[1]~0_combout\ & (\p1|reg4|Q\(7))) # (\p1|mux0|y[1]~0_combout\ & ((\p1|reg5|Q\(7)))) ) ) ) # ( !\p1|reg6|Q\(7) & ( !\p1|mux0|y[1]~1_combout\ & ( (!\p1|mux0|y[1]~0_combout\ & (\p1|reg4|Q\(7))) # 
-- (\p1|mux0|y[1]~0_combout\ & ((\p1|reg5|Q\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg4|ALT_INV_Q\(7),
	datab => \p1|pc0|ALT_INV_v\(7),
	datac => \p1|reg5|ALT_INV_Q\(7),
	datad => \p1|mux0|ALT_INV_y[1]~0_combout\,
	datae => \p1|reg6|ALT_INV_Q\(7),
	dataf => \p1|mux0|ALT_INV_y[1]~1_combout\,
	combout => \p1|mux0|y[7]~27_combout\);

-- Location: LABCELL_X14_Y9_N42
\p1|mux0|y[7]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[7]~28_combout\ = ( \p1|reg3|Q\(7) & ( \p1|mux0|y[7]~27_combout\ & ( ((!\p1|mux0|y[1]~3_combout\ & (\p1|reg1|Q\(7))) # (\p1|mux0|y[1]~3_combout\ & ((\p1|reg2|Q\(7))))) # (\p1|mux0|y[1]~4_combout\) ) ) ) # ( !\p1|reg3|Q\(7) & ( 
-- \p1|mux0|y[7]~27_combout\ & ( (!\p1|mux0|y[1]~3_combout\ & (((\p1|mux0|y[1]~4_combout\)) # (\p1|reg1|Q\(7)))) # (\p1|mux0|y[1]~3_combout\ & (((!\p1|mux0|y[1]~4_combout\ & \p1|reg2|Q\(7))))) ) ) ) # ( \p1|reg3|Q\(7) & ( !\p1|mux0|y[7]~27_combout\ & ( 
-- (!\p1|mux0|y[1]~3_combout\ & (\p1|reg1|Q\(7) & (!\p1|mux0|y[1]~4_combout\))) # (\p1|mux0|y[1]~3_combout\ & (((\p1|reg2|Q\(7)) # (\p1|mux0|y[1]~4_combout\)))) ) ) ) # ( !\p1|reg3|Q\(7) & ( !\p1|mux0|y[7]~27_combout\ & ( (!\p1|mux0|y[1]~4_combout\ & 
-- ((!\p1|mux0|y[1]~3_combout\ & (\p1|reg1|Q\(7))) # (\p1|mux0|y[1]~3_combout\ & ((\p1|reg2|Q\(7)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110000001001010111010100101010011110100010111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[1]~3_combout\,
	datab => \p1|reg1|ALT_INV_Q\(7),
	datac => \p1|mux0|ALT_INV_y[1]~4_combout\,
	datad => \p1|reg2|ALT_INV_Q\(7),
	datae => \p1|reg3|ALT_INV_Q\(7),
	dataf => \p1|mux0|ALT_INV_y[7]~27_combout\,
	combout => \p1|mux0|y[7]~28_combout\);

-- Location: FF_X14_Y9_N2
\p1|reg0|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|mux0|y[7]~29_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(7));

-- Location: LABCELL_X14_Y9_N0
\p1|mux0|y[7]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[7]~29_combout\ = ( \p1|reg0|Q\(7) & ( \p1|mux0|y[1]~16_combout\ & ( (\p1|mux0|y[7]~28_combout\) # (\p1|mux0|y[1]~42_combout\) ) ) ) # ( !\p1|reg0|Q\(7) & ( \p1|mux0|y[1]~16_combout\ & ( (!\p1|mux0|y[1]~42_combout\ & \p1|mux0|y[7]~28_combout\) ) 
-- ) ) # ( \p1|reg0|Q\(7) & ( !\p1|mux0|y[1]~16_combout\ & ( (!\p1|mux0|y[1]~42_combout\ & ((\DIN[7]~4_combout\))) # (\p1|mux0|y[1]~42_combout\ & (\p1|regG|Q[7]~DUPLICATE_q\)) ) ) ) # ( !\p1|reg0|Q\(7) & ( !\p1|mux0|y[1]~16_combout\ & ( 
-- (!\p1|mux0|y[1]~42_combout\ & ((\DIN[7]~4_combout\))) # (\p1|mux0|y[1]~42_combout\ & (\p1|regG|Q[7]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100000000110011000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|regG|ALT_INV_Q[7]~DUPLICATE_q\,
	datab => \p1|mux0|ALT_INV_y[1]~42_combout\,
	datac => \ALT_INV_DIN[7]~4_combout\,
	datad => \p1|mux0|ALT_INV_y[7]~28_combout\,
	datae => \p1|reg0|ALT_INV_Q\(7),
	dataf => \p1|mux0|ALT_INV_y[1]~16_combout\,
	combout => \p1|mux0|y[7]~29_combout\);

-- Location: FF_X14_Y8_N13
\p1|regAddr|Q[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[7]~29_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regAddr|Q[7]~DUPLICATE_q\);

-- Location: IOIBUF_X18_Y0_N35
\sw[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(8),
	o => \sw[8]~input_o\);

-- Location: LABCELL_X16_Y8_N12
\u1|r0|Q[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|r0|Q[8]~feeder_combout\ = ( \sw[8]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_sw[8]~input_o\,
	combout => \u1|r0|Q[8]~feeder_combout\);

-- Location: FF_X16_Y8_N13
\u1|r0|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u1|r0|Q[8]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|ff0|ALT_INV_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|r0|Q\(8));

-- Location: LABCELL_X12_Y8_N51
\DIN[8]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIN[8]~3_combout\ = ( \m0|altsyncram_component|auto_generated|q_a\(8) & ( (!\p1|regAddr|Q[7]~DUPLICATE_q\) # ((!\p1|regAddr|Q\(8)) # (\u1|r0|Q\(8))) ) ) # ( !\m0|altsyncram_component|auto_generated|q_a\(8) & ( (\p1|regAddr|Q[7]~DUPLICATE_q\ & 
-- (\p1|regAddr|Q\(8) & \u1|r0|Q\(8))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000111101110111111111110111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|regAddr|ALT_INV_Q[7]~DUPLICATE_q\,
	datab => \p1|regAddr|ALT_INV_Q\(8),
	datad => \u1|r0|ALT_INV_Q\(8),
	dataf => \m0|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	combout => \DIN[8]~3_combout\);

-- Location: FF_X12_Y8_N53
\p1|ir0|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DIN[8]~3_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|y_Q.TXX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(8));

-- Location: LABCELL_X12_Y8_N18
\p1|pc0|v[8]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|pc0|v[8]~0_combout\ = ( \p1|ir0|Q\(7) & ( (\p1|ir0|Q\(8) & \p1|fsm|y_Q.T1~q\) ) ) # ( !\p1|ir0|Q\(7) & ( (\p1|fsm|y_Q.T1~q\ & ((!\p1|ir0|Q\(6)) # (\p1|ir0|Q\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000101000011110000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(8),
	datac => \p1|fsm|ALT_INV_y_Q.T1~q\,
	datad => \p1|ir0|ALT_INV_Q\(6),
	dataf => \p1|ir0|ALT_INV_Q\(7),
	combout => \p1|pc0|v[8]~0_combout\);

-- Location: LABCELL_X16_Y9_N12
\p1|fsm|Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector13~0_combout\ = ( \p1|fsm|Mux14~0_combout\ & ( \p1|ir0|Q\(8) & ( (\p1|decX|Mux0~3_combout\ & ((\p1|mux0|y[1]~15_combout\) # (\p1|pc0|v[8]~0_combout\))) ) ) ) # ( !\p1|fsm|Mux14~0_combout\ & ( \p1|ir0|Q\(8) & ( (\p1|mux0|y[1]~15_combout\ & 
-- \p1|decX|Mux0~3_combout\) ) ) ) # ( \p1|fsm|Mux14~0_combout\ & ( !\p1|ir0|Q\(8) & ( (\p1|decX|Mux0~3_combout\ & ((\p1|mux0|y[1]~15_combout\) # (\p1|pc0|v[8]~0_combout\))) ) ) ) # ( !\p1|fsm|Mux14~0_combout\ & ( !\p1|ir0|Q\(8) & ( (\p1|decX|Mux0~3_combout\ 
-- & ((\p1|mux0|y[1]~15_combout\) # (\p1|pc0|v[8]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011111100000000000011110000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|pc0|ALT_INV_v[8]~0_combout\,
	datac => \p1|mux0|ALT_INV_y[1]~15_combout\,
	datad => \p1|decX|ALT_INV_Mux0~3_combout\,
	datae => \p1|fsm|ALT_INV_Mux14~0_combout\,
	dataf => \p1|ir0|ALT_INV_Q\(8),
	combout => \p1|fsm|Selector13~0_combout\);

-- Location: FF_X16_Y9_N55
\p1|reg2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg2|Q[0]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q\(0));

-- Location: FF_X16_Y9_N13
\p1|reg1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[0]~20_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(0));

-- Location: MLABCELL_X13_Y10_N18
\p1|reg4|Q[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg4|Q[0]~feeder_combout\ = ( \p1|mux0|y[0]~20_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[0]~20_combout\,
	combout => \p1|reg4|Q[0]~feeder_combout\);

-- Location: FF_X13_Y10_N19
\p1|reg4|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg4|Q[0]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg4|Q\(0));

-- Location: FF_X13_Y9_N22
\p1|reg5|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[0]~20_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(0));

-- Location: FF_X12_Y7_N26
\p1|reg6|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[0]~20_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(0));

-- Location: LABCELL_X12_Y7_N24
\p1|mux0|y[0]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[0]~18_combout\ = ( \p1|reg6|Q\(0) & ( \p1|mux0|y[1]~0_combout\ & ( (\p1|reg5|Q\(0)) # (\p1|mux0|y[1]~1_combout\) ) ) ) # ( !\p1|reg6|Q\(0) & ( \p1|mux0|y[1]~0_combout\ & ( (!\p1|mux0|y[1]~1_combout\ & \p1|reg5|Q\(0)) ) ) ) # ( \p1|reg6|Q\(0) & 
-- ( !\p1|mux0|y[1]~0_combout\ & ( (!\p1|mux0|y[1]~1_combout\ & ((\p1|reg4|Q\(0)))) # (\p1|mux0|y[1]~1_combout\ & (\p1|pc0|v\(0))) ) ) ) # ( !\p1|reg6|Q\(0) & ( !\p1|mux0|y[1]~0_combout\ & ( (!\p1|mux0|y[1]~1_combout\ & ((\p1|reg4|Q\(0)))) # 
-- (\p1|mux0|y[1]~1_combout\ & (\p1|pc0|v\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|pc0|ALT_INV_v\(0),
	datab => \p1|reg4|ALT_INV_Q\(0),
	datac => \p1|mux0|ALT_INV_y[1]~1_combout\,
	datad => \p1|reg5|ALT_INV_Q\(0),
	datae => \p1|reg6|ALT_INV_Q\(0),
	dataf => \p1|mux0|ALT_INV_y[1]~0_combout\,
	combout => \p1|mux0|y[0]~18_combout\);

-- Location: FF_X12_Y7_N8
\p1|reg3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[0]~20_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(0));

-- Location: LABCELL_X12_Y7_N6
\p1|mux0|y[0]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[0]~19_combout\ = ( \p1|reg3|Q\(0) & ( \p1|mux0|y[1]~3_combout\ & ( (\p1|mux0|y[1]~4_combout\) # (\p1|reg2|Q\(0)) ) ) ) # ( !\p1|reg3|Q\(0) & ( \p1|mux0|y[1]~3_combout\ & ( (\p1|reg2|Q\(0) & !\p1|mux0|y[1]~4_combout\) ) ) ) # ( \p1|reg3|Q\(0) & 
-- ( !\p1|mux0|y[1]~3_combout\ & ( (!\p1|mux0|y[1]~4_combout\ & (\p1|reg1|Q\(0))) # (\p1|mux0|y[1]~4_combout\ & ((\p1|mux0|y[0]~18_combout\))) ) ) ) # ( !\p1|reg3|Q\(0) & ( !\p1|mux0|y[1]~3_combout\ & ( (!\p1|mux0|y[1]~4_combout\ & (\p1|reg1|Q\(0))) # 
-- (\p1|mux0|y[1]~4_combout\ & ((\p1|mux0|y[0]~18_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg2|ALT_INV_Q\(0),
	datab => \p1|reg1|ALT_INV_Q\(0),
	datac => \p1|mux0|ALT_INV_y[0]~18_combout\,
	datad => \p1|mux0|ALT_INV_y[1]~4_combout\,
	datae => \p1|reg3|ALT_INV_Q\(0),
	dataf => \p1|mux0|ALT_INV_y[1]~3_combout\,
	combout => \p1|mux0|y[0]~19_combout\);

-- Location: FF_X12_Y9_N14
\p1|reg0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|mux0|y[0]~20_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(0));

-- Location: LABCELL_X12_Y9_N12
\p1|mux0|y[0]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[0]~20_combout\ = ( \p1|reg0|Q\(0) & ( \p1|mux0|y[1]~16_combout\ & ( (\p1|mux0|y[1]~42_combout\) # (\p1|mux0|y[0]~19_combout\) ) ) ) # ( !\p1|reg0|Q\(0) & ( \p1|mux0|y[1]~16_combout\ & ( (\p1|mux0|y[0]~19_combout\ & !\p1|mux0|y[1]~42_combout\) ) 
-- ) ) # ( \p1|reg0|Q\(0) & ( !\p1|mux0|y[1]~16_combout\ & ( (!\p1|mux0|y[1]~42_combout\ & (\DIN[0]~1_combout\)) # (\p1|mux0|y[1]~42_combout\ & ((\p1|regG|Q\(0)))) ) ) ) # ( !\p1|reg0|Q\(0) & ( !\p1|mux0|y[1]~16_combout\ & ( (!\p1|mux0|y[1]~42_combout\ & 
-- (\DIN[0]~1_combout\)) # (\p1|mux0|y[1]~42_combout\ & ((\p1|regG|Q\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[0]~19_combout\,
	datab => \ALT_INV_DIN[0]~1_combout\,
	datac => \p1|regG|ALT_INV_Q\(0),
	datad => \p1|mux0|ALT_INV_y[1]~42_combout\,
	datae => \p1|reg0|ALT_INV_Q\(0),
	dataf => \p1|mux0|ALT_INV_y[1]~16_combout\,
	combout => \p1|mux0|y[0]~20_combout\);

-- Location: LABCELL_X16_Y9_N24
\p1|regDout|Q[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|regDout|Q[0]~feeder_combout\ = ( \p1|mux0|y[0]~20_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[0]~20_combout\,
	combout => \p1|regDout|Q[0]~feeder_combout\);

-- Location: FF_X16_Y9_N25
\p1|regDout|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|regDout|Q[0]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|DoutIn~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regDout|Q\(0));

-- Location: LABCELL_X14_Y8_N39
\u0|En[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|En[5]~0_combout\ = ( !\p1|regAddr|Q\(1) & ( \p1|regAddr|Q[2]~DUPLICATE_q\ & ( (\p1|regAddr|Q\(8) & (!\p1|regAddr|Q[7]~DUPLICATE_q\ & (\p1|ff0|Q~q\ & \p1|regAddr|Q\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|regAddr|ALT_INV_Q\(8),
	datab => \p1|regAddr|ALT_INV_Q[7]~DUPLICATE_q\,
	datac => \p1|ff0|ALT_INV_Q~q\,
	datad => \p1|regAddr|ALT_INV_Q\(0),
	datae => \p1|regAddr|ALT_INV_Q\(1),
	dataf => \p1|regAddr|ALT_INV_Q[2]~DUPLICATE_q\,
	combout => \u0|En[5]~0_combout\);

-- Location: FF_X20_Y4_N58
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

-- Location: FF_X20_Y4_N49
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

-- Location: FF_X20_Y4_N34
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

-- Location: FF_X20_Y4_N1
\u0|r5|Q[3]~DUPLICATE\ : dffeas
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
	q => \u0|r5|Q[3]~DUPLICATE_q\);

-- Location: LABCELL_X17_Y3_N0
\u0|s5|hex[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s5|hex[6]~0_combout\ = ( \u0|r5|Q\(2) & ( \u0|r5|Q[3]~DUPLICATE_q\ & ( (!\u0|r5|Q\(0) & !\u0|r5|Q\(1)) ) ) ) # ( \u0|r5|Q\(2) & ( !\u0|r5|Q[3]~DUPLICATE_q\ & ( (\u0|r5|Q\(0) & \u0|r5|Q\(1)) ) ) ) # ( !\u0|r5|Q\(2) & ( !\u0|r5|Q[3]~DUPLICATE_q\ & ( 
-- !\u0|r5|Q\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000110000001100000000000000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|r5|ALT_INV_Q\(0),
	datac => \u0|r5|ALT_INV_Q\(1),
	datae => \u0|r5|ALT_INV_Q\(2),
	dataf => \u0|r5|ALT_INV_Q[3]~DUPLICATE_q\,
	combout => \u0|s5|hex[6]~0_combout\);

-- Location: FF_X20_Y4_N2
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

-- Location: LABCELL_X20_Y4_N27
\u0|s5|hex[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s5|hex[5]~1_combout\ = ( \u0|r5|Q\(0) & ( !\u0|r5|Q\(3) $ (((\u0|r5|Q\(2) & !\u0|r5|Q\(1)))) ) ) # ( !\u0|r5|Q\(0) & ( (!\u0|r5|Q\(3) & (!\u0|r5|Q\(2) & \u0|r5|Q\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100010011010100110101001101010011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r5|ALT_INV_Q\(3),
	datab => \u0|r5|ALT_INV_Q\(2),
	datac => \u0|r5|ALT_INV_Q\(1),
	dataf => \u0|r5|ALT_INV_Q\(0),
	combout => \u0|s5|hex[5]~1_combout\);

-- Location: LABCELL_X20_Y4_N42
\u0|s5|hex[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s5|hex[4]~2_combout\ = ( \u0|r5|Q\(0) & ( (!\u0|r5|Q\(3)) # ((!\u0|r5|Q\(2) & !\u0|r5|Q\(1))) ) ) # ( !\u0|r5|Q\(0) & ( (\u0|r5|Q\(2) & (!\u0|r5|Q\(3) & !\u0|r5|Q\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000011111100111100001111110011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|r5|ALT_INV_Q\(2),
	datac => \u0|r5|ALT_INV_Q\(3),
	datad => \u0|r5|ALT_INV_Q\(1),
	dataf => \u0|r5|ALT_INV_Q\(0),
	combout => \u0|s5|hex[4]~2_combout\);

-- Location: LABCELL_X20_Y4_N15
\u0|s5|hex[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s5|hex[3]~3_combout\ = ( \u0|r5|Q\(0) & ( (!\u0|r5|Q\(2) & (!\u0|r5|Q\(3) & !\u0|r5|Q\(1))) # (\u0|r5|Q\(2) & ((\u0|r5|Q\(1)))) ) ) # ( !\u0|r5|Q\(0) & ( (!\u0|r5|Q\(3) & (\u0|r5|Q\(2) & !\u0|r5|Q\(1))) # (\u0|r5|Q\(3) & (!\u0|r5|Q\(2) & 
-- \u0|r5|Q\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001010000000010100101000010100000000011111010000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r5|ALT_INV_Q\(3),
	datac => \u0|r5|ALT_INV_Q\(2),
	datad => \u0|r5|ALT_INV_Q\(1),
	dataf => \u0|r5|ALT_INV_Q\(0),
	combout => \u0|s5|hex[3]~3_combout\);

-- Location: LABCELL_X20_Y4_N24
\u0|s5|hex[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s5|hex[2]~4_combout\ = ( \u0|r5|Q\(0) & ( (\u0|r5|Q\(2) & (\u0|r5|Q\(3) & \u0|r5|Q\(1))) ) ) # ( !\u0|r5|Q\(0) & ( (!\u0|r5|Q\(2) & (!\u0|r5|Q\(3) & \u0|r5|Q\(1))) # (\u0|r5|Q\(2) & (\u0|r5|Q\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111000011000000111100001100000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|r5|ALT_INV_Q\(2),
	datac => \u0|r5|ALT_INV_Q\(3),
	datad => \u0|r5|ALT_INV_Q\(1),
	dataf => \u0|r5|ALT_INV_Q\(0),
	combout => \u0|s5|hex[2]~4_combout\);

-- Location: LABCELL_X20_Y4_N30
\u0|s5|hex[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s5|hex[1]~5_combout\ = ( \u0|r5|Q\(2) & ( (!\u0|r5|Q\(0) & ((\u0|r5|Q\(3)) # (\u0|r5|Q\(1)))) # (\u0|r5|Q\(0) & (!\u0|r5|Q\(1) $ (\u0|r5|Q\(3)))) ) ) # ( !\u0|r5|Q\(2) & ( (\u0|r5|Q\(0) & (\u0|r5|Q\(1) & \u0|r5|Q\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001011010110110101100000001000000010110101101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r5|ALT_INV_Q\(0),
	datab => \u0|r5|ALT_INV_Q\(1),
	datac => \u0|r5|ALT_INV_Q\(3),
	datae => \u0|r5|ALT_INV_Q\(2),
	combout => \u0|s5|hex[1]~5_combout\);

-- Location: LABCELL_X20_Y4_N54
\u0|s5|hex[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s5|hex[0]~6_combout\ = ( \u0|r5|Q\(3) & ( (\u0|r5|Q\(0) & (!\u0|r5|Q\(1) $ (!\u0|r5|Q\(2)))) ) ) # ( !\u0|r5|Q\(3) & ( (!\u0|r5|Q\(1) & (!\u0|r5|Q\(0) $ (!\u0|r5|Q\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000000000000110000110000001100110000000000001100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|r5|ALT_INV_Q\(1),
	datac => \u0|r5|ALT_INV_Q\(0),
	datad => \u0|r5|ALT_INV_Q\(2),
	datae => \u0|r5|ALT_INV_Q\(3),
	combout => \u0|s5|hex[0]~6_combout\);

-- Location: FF_X14_Y8_N35
\p1|regAddr|Q[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[1]~32_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regAddr|Q[1]~DUPLICATE_q\);

-- Location: LABCELL_X14_Y8_N30
\u0|En[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|En[4]~1_combout\ = ( \p1|regAddr|Q\(8) & ( \p1|regAddr|Q[2]~DUPLICATE_q\ & ( (!\p1|regAddr|Q[1]~DUPLICATE_q\ & (!\p1|regAddr|Q[7]~DUPLICATE_q\ & (!\p1|regAddr|Q\(0) & \p1|ff0|Q~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|regAddr|ALT_INV_Q[1]~DUPLICATE_q\,
	datab => \p1|regAddr|ALT_INV_Q[7]~DUPLICATE_q\,
	datac => \p1|regAddr|ALT_INV_Q\(0),
	datad => \p1|ff0|ALT_INV_Q~q\,
	datae => \p1|regAddr|ALT_INV_Q\(8),
	dataf => \p1|regAddr|ALT_INV_Q[2]~DUPLICATE_q\,
	combout => \u0|En[4]~1_combout\);

-- Location: FF_X14_Y6_N35
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

-- Location: FF_X14_Y6_N28
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

-- Location: FF_X14_Y6_N38
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

-- Location: FF_X14_Y6_N41
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

-- Location: LABCELL_X14_Y6_N9
\u0|s4|hex[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s4|hex[6]~0_combout\ = ( \u0|r4|Q\(0) & ( (!\u0|r4|Q\(3) & (!\u0|r4|Q\(2) $ (\u0|r4|Q\(1)))) ) ) # ( !\u0|r4|Q\(0) & ( (!\u0|r4|Q\(1) & (!\u0|r4|Q\(2) $ (\u0|r4|Q\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100100000000100110010000000010001000010001001000100001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r4|ALT_INV_Q\(2),
	datab => \u0|r4|ALT_INV_Q\(3),
	datad => \u0|r4|ALT_INV_Q\(1),
	dataf => \u0|r4|ALT_INV_Q\(0),
	combout => \u0|s4|hex[6]~0_combout\);

-- Location: LABCELL_X14_Y6_N6
\u0|s4|hex[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s4|hex[5]~1_combout\ = ( \u0|r4|Q\(0) & ( !\u0|r4|Q\(3) $ (((\u0|r4|Q\(2) & !\u0|r4|Q\(1)))) ) ) # ( !\u0|r4|Q\(0) & ( (!\u0|r4|Q\(3) & (!\u0|r4|Q\(2) & \u0|r4|Q\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000011000011110011001100001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|r4|ALT_INV_Q\(3),
	datac => \u0|r4|ALT_INV_Q\(2),
	datad => \u0|r4|ALT_INV_Q\(1),
	dataf => \u0|r4|ALT_INV_Q\(0),
	combout => \u0|s4|hex[5]~1_combout\);

-- Location: LABCELL_X14_Y6_N15
\u0|s4|hex[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s4|hex[4]~2_combout\ = (!\u0|r4|Q\(1) & ((!\u0|r4|Q\(2) & (\u0|r4|Q\(0))) # (\u0|r4|Q\(2) & ((!\u0|r4|Q\(3)))))) # (\u0|r4|Q\(1) & (((\u0|r4|Q\(0) & !\u0|r4|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001000110000011100100011000001110010001100000111001000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r4|ALT_INV_Q\(2),
	datab => \u0|r4|ALT_INV_Q\(0),
	datac => \u0|r4|ALT_INV_Q\(3),
	datad => \u0|r4|ALT_INV_Q\(1),
	combout => \u0|s4|hex[4]~2_combout\);

-- Location: LABCELL_X14_Y6_N21
\u0|s4|hex[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s4|hex[3]~3_combout\ = ( \u0|r4|Q\(0) & ( (!\u0|r4|Q\(2) & (!\u0|r4|Q\(3) & !\u0|r4|Q\(1))) # (\u0|r4|Q\(2) & ((\u0|r4|Q\(1)))) ) ) # ( !\u0|r4|Q\(0) & ( (!\u0|r4|Q\(2) & (\u0|r4|Q\(3) & \u0|r4|Q\(1))) # (\u0|r4|Q\(2) & (!\u0|r4|Q\(3) & 
-- !\u0|r4|Q\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000001010010100000000101010100000010101011010000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r4|ALT_INV_Q\(2),
	datac => \u0|r4|ALT_INV_Q\(3),
	datad => \u0|r4|ALT_INV_Q\(1),
	dataf => \u0|r4|ALT_INV_Q\(0),
	combout => \u0|s4|hex[3]~3_combout\);

-- Location: LABCELL_X14_Y6_N24
\u0|s4|hex[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s4|hex[2]~4_combout\ = ( \u0|r4|Q\(1) & ( (!\u0|r4|Q\(3) & (!\u0|r4|Q\(2) & !\u0|r4|Q\(0))) # (\u0|r4|Q\(3) & (\u0|r4|Q\(2))) ) ) # ( !\u0|r4|Q\(1) & ( (\u0|r4|Q\(3) & (\u0|r4|Q\(2) & !\u0|r4|Q\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000110000110000001100000011000000001100001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|r4|ALT_INV_Q\(3),
	datac => \u0|r4|ALT_INV_Q\(2),
	datad => \u0|r4|ALT_INV_Q\(0),
	datae => \u0|r4|ALT_INV_Q\(1),
	combout => \u0|s4|hex[2]~4_combout\);

-- Location: LABCELL_X14_Y6_N30
\u0|s4|hex[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s4|hex[1]~5_combout\ = ( \u0|r4|Q\(1) & ( (!\u0|r4|Q\(0) & ((\u0|r4|Q\(2)))) # (\u0|r4|Q\(0) & (\u0|r4|Q\(3))) ) ) # ( !\u0|r4|Q\(1) & ( (\u0|r4|Q\(2) & (!\u0|r4|Q\(3) $ (!\u0|r4|Q\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000011110011001100000011000011000000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|r4|ALT_INV_Q\(3),
	datac => \u0|r4|ALT_INV_Q\(2),
	datad => \u0|r4|ALT_INV_Q\(0),
	datae => \u0|r4|ALT_INV_Q\(1),
	combout => \u0|s4|hex[1]~5_combout\);

-- Location: LABCELL_X14_Y6_N0
\u0|s4|hex[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s4|hex[0]~6_combout\ = ( \u0|r4|Q\(0) & ( (!\u0|r4|Q\(3) & (!\u0|r4|Q\(2) & !\u0|r4|Q\(1))) # (\u0|r4|Q\(3) & (!\u0|r4|Q\(2) $ (!\u0|r4|Q\(1)))) ) ) # ( !\u0|r4|Q\(0) & ( (!\u0|r4|Q\(3) & (\u0|r4|Q\(2) & !\u0|r4|Q\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000011000011001100001100001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|r4|ALT_INV_Q\(3),
	datac => \u0|r4|ALT_INV_Q\(2),
	datad => \u0|r4|ALT_INV_Q\(1),
	dataf => \u0|r4|ALT_INV_Q\(0),
	combout => \u0|s4|hex[0]~6_combout\);

-- Location: FF_X14_Y8_N43
\p1|regAddr|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|regAddr|Q[2]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regAddr|Q\(2));

-- Location: LABCELL_X14_Y8_N36
\u0|En[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|En[3]~2_combout\ = ( !\p1|regAddr|Q\(2) & ( \p1|regAddr|Q[1]~DUPLICATE_q\ & ( (\p1|regAddr|Q\(8) & (!\p1|regAddr|Q[7]~DUPLICATE_q\ & (\p1|regAddr|Q\(0) & \p1|ff0|Q~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|regAddr|ALT_INV_Q\(8),
	datab => \p1|regAddr|ALT_INV_Q[7]~DUPLICATE_q\,
	datac => \p1|regAddr|ALT_INV_Q\(0),
	datad => \p1|ff0|ALT_INV_Q~q\,
	datae => \p1|regAddr|ALT_INV_Q\(2),
	dataf => \p1|regAddr|ALT_INV_Q[1]~DUPLICATE_q\,
	combout => \u0|En[3]~2_combout\);

-- Location: FF_X20_Y4_N7
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

-- Location: FF_X20_Y4_N41
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

-- Location: FF_X20_Y4_N38
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

-- Location: LABCELL_X20_Y4_N9
\u0|r3|Q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|r3|Q[2]~feeder_combout\ = ( \p1|regDout|Q\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|regDout|ALT_INV_Q\(2),
	combout => \u0|r3|Q[2]~feeder_combout\);

-- Location: FF_X20_Y4_N11
\u0|r3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u0|r3|Q[2]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \u0|En[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r3|Q\(2));

-- Location: LABCELL_X20_Y4_N18
\u0|s3|hex[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s3|hex[6]~0_combout\ = ( \u0|r3|Q\(2) & ( (!\u0|r3|Q\(3) & (\u0|r3|Q\(0) & \u0|r3|Q\(1))) # (\u0|r3|Q\(3) & (!\u0|r3|Q\(0) & !\u0|r3|Q\(1))) ) ) # ( !\u0|r3|Q\(2) & ( (!\u0|r3|Q\(3) & !\u0|r3|Q\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000001000010010000100100001001000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r3|ALT_INV_Q\(3),
	datab => \u0|r3|ALT_INV_Q\(0),
	datac => \u0|r3|ALT_INV_Q\(1),
	dataf => \u0|r3|ALT_INV_Q\(2),
	combout => \u0|s3|hex[6]~0_combout\);

-- Location: LABCELL_X20_Y4_N21
\u0|s3|hex[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s3|hex[5]~1_combout\ = ( \u0|r3|Q\(2) & ( (\u0|r3|Q\(0) & (!\u0|r3|Q\(3) $ (!\u0|r3|Q\(1)))) ) ) # ( !\u0|r3|Q\(2) & ( (!\u0|r3|Q\(3) & ((\u0|r3|Q\(1)) # (\u0|r3|Q\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010101010001000101010101000010001001000100001000100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r3|ALT_INV_Q\(3),
	datab => \u0|r3|ALT_INV_Q\(0),
	datad => \u0|r3|ALT_INV_Q\(1),
	dataf => \u0|r3|ALT_INV_Q\(2),
	combout => \u0|s3|hex[5]~1_combout\);

-- Location: LABCELL_X20_Y4_N12
\u0|s3|hex[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s3|hex[4]~2_combout\ = ( \u0|r3|Q\(2) & ( (!\u0|r3|Q\(3) & ((!\u0|r3|Q\(1)) # (\u0|r3|Q\(0)))) ) ) # ( !\u0|r3|Q\(2) & ( (\u0|r3|Q\(0) & ((!\u0|r3|Q\(1)) # (!\u0|r3|Q\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110000001100110011000011110011000000001111001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|r3|ALT_INV_Q\(0),
	datac => \u0|r3|ALT_INV_Q\(1),
	datad => \u0|r3|ALT_INV_Q\(3),
	dataf => \u0|r3|ALT_INV_Q\(2),
	combout => \u0|s3|hex[4]~2_combout\);

-- Location: LABCELL_X20_Y4_N3
\u0|s3|hex[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s3|hex[3]~3_combout\ = ( \u0|r3|Q\(1) & ( (!\u0|r3|Q\(0) & (\u0|r3|Q\(3) & !\u0|r3|Q\(2))) # (\u0|r3|Q\(0) & ((\u0|r3|Q\(2)))) ) ) # ( !\u0|r3|Q\(1) & ( (!\u0|r3|Q\(3) & (!\u0|r3|Q\(0) $ (!\u0|r3|Q\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000010000110100001100101000001010000100001101000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r3|ALT_INV_Q\(3),
	datab => \u0|r3|ALT_INV_Q\(0),
	datac => \u0|r3|ALT_INV_Q\(2),
	datae => \u0|r3|ALT_INV_Q\(1),
	combout => \u0|s3|hex[3]~3_combout\);

-- Location: LABCELL_X20_Y4_N45
\u0|s3|hex[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s3|hex[2]~4_combout\ = ( \u0|r3|Q\(2) & ( (\u0|r3|Q\(3) & ((!\u0|r3|Q\(0)) # (\u0|r3|Q\(1)))) ) ) # ( !\u0|r3|Q\(2) & ( (\u0|r3|Q\(1) & (!\u0|r3|Q\(0) & !\u0|r3|Q\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000000000111101010000000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r3|ALT_INV_Q\(1),
	datac => \u0|r3|ALT_INV_Q\(0),
	datad => \u0|r3|ALT_INV_Q\(3),
	dataf => \u0|r3|ALT_INV_Q\(2),
	combout => \u0|s3|hex[2]~4_combout\);

-- Location: LABCELL_X20_Y4_N51
\u0|s3|hex[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s3|hex[1]~5_combout\ = ( \u0|r3|Q\(1) & ( (!\u0|r3|Q\(0) & ((\u0|r3|Q\(2)))) # (\u0|r3|Q\(0) & (\u0|r3|Q\(3))) ) ) # ( !\u0|r3|Q\(1) & ( (\u0|r3|Q\(2) & (!\u0|r3|Q\(3) $ (!\u0|r3|Q\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000111010001110100000110000001100001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r3|ALT_INV_Q\(3),
	datab => \u0|r3|ALT_INV_Q\(0),
	datac => \u0|r3|ALT_INV_Q\(2),
	datae => \u0|r3|ALT_INV_Q\(1),
	combout => \u0|s3|hex[1]~5_combout\);

-- Location: LABCELL_X20_Y4_N39
\u0|s3|hex[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s3|hex[0]~6_combout\ = ( \u0|r3|Q\(0) & ( (!\u0|r3|Q\(1) & (!\u0|r3|Q\(2) $ (\u0|r3|Q\(3)))) # (\u0|r3|Q\(1) & (!\u0|r3|Q\(2) & \u0|r3|Q\(3))) ) ) # ( !\u0|r3|Q\(0) & ( (!\u0|r3|Q\(1) & (\u0|r3|Q\(2) & !\u0|r3|Q\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000101000000101101000001010000000001010000001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r3|ALT_INV_Q\(1),
	datac => \u0|r3|ALT_INV_Q\(2),
	datad => \u0|r3|ALT_INV_Q\(3),
	datae => \u0|r3|ALT_INV_Q\(0),
	combout => \u0|s3|hex[0]~6_combout\);

-- Location: LABCELL_X14_Y8_N54
\u0|En[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|En[2]~3_combout\ = ( \p1|regAddr|Q\(8) & ( !\p1|regAddr|Q\(0) & ( (\p1|ff0|Q~q\ & (!\p1|regAddr|Q[2]~DUPLICATE_q\ & (\p1|regAddr|Q[1]~DUPLICATE_q\ & !\p1|regAddr|Q[7]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ff0|ALT_INV_Q~q\,
	datab => \p1|regAddr|ALT_INV_Q[2]~DUPLICATE_q\,
	datac => \p1|regAddr|ALT_INV_Q[1]~DUPLICATE_q\,
	datad => \p1|regAddr|ALT_INV_Q[7]~DUPLICATE_q\,
	datae => \p1|regAddr|ALT_INV_Q\(8),
	dataf => \p1|regAddr|ALT_INV_Q\(0),
	combout => \u0|En[2]~3_combout\);

-- Location: FF_X28_Y4_N5
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

-- Location: FF_X28_Y4_N8
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

-- Location: FF_X28_Y4_N56
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

-- Location: FF_X28_Y4_N14
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

-- Location: MLABCELL_X28_Y4_N27
\u0|s2|hex[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s2|hex[6]~0_combout\ = ( \u0|r2|Q\(3) & ( (!\u0|r2|Q\(1) & (\u0|r2|Q\(2) & !\u0|r2|Q\(0))) ) ) # ( !\u0|r2|Q\(3) & ( (!\u0|r2|Q\(1) & (!\u0|r2|Q\(2))) # (\u0|r2|Q\(1) & (\u0|r2|Q\(2) & \u0|r2|Q\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010011001100010001001100100100010000000000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r2|ALT_INV_Q\(1),
	datab => \u0|r2|ALT_INV_Q\(2),
	datad => \u0|r2|ALT_INV_Q\(0),
	dataf => \u0|r2|ALT_INV_Q\(3),
	combout => \u0|s2|hex[6]~0_combout\);

-- Location: MLABCELL_X28_Y4_N42
\u0|s2|hex[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s2|hex[5]~1_combout\ = ( \u0|r2|Q\(3) & ( (!\u0|r2|Q\(1) & (\u0|r2|Q\(2) & \u0|r2|Q\(0))) ) ) # ( !\u0|r2|Q\(3) & ( (!\u0|r2|Q\(1) & (!\u0|r2|Q\(2) & \u0|r2|Q\(0))) # (\u0|r2|Q\(1) & ((!\u0|r2|Q\(2)) # (\u0|r2|Q\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110101001101010011010100110100000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r2|ALT_INV_Q\(1),
	datab => \u0|r2|ALT_INV_Q\(2),
	datac => \u0|r2|ALT_INV_Q\(0),
	dataf => \u0|r2|ALT_INV_Q\(3),
	combout => \u0|s2|hex[5]~1_combout\);

-- Location: MLABCELL_X28_Y4_N45
\u0|s2|hex[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s2|hex[4]~2_combout\ = ( \u0|r2|Q\(3) & ( (!\u0|r2|Q\(1) & (!\u0|r2|Q\(2) & \u0|r2|Q\(0))) ) ) # ( !\u0|r2|Q\(3) & ( ((!\u0|r2|Q\(1) & \u0|r2|Q\(2))) # (\u0|r2|Q\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001011111111001000101111111100000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r2|ALT_INV_Q\(1),
	datab => \u0|r2|ALT_INV_Q\(2),
	datad => \u0|r2|ALT_INV_Q\(0),
	dataf => \u0|r2|ALT_INV_Q\(3),
	combout => \u0|s2|hex[4]~2_combout\);

-- Location: MLABCELL_X28_Y4_N48
\u0|s2|hex[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s2|hex[3]~3_combout\ = ( \u0|r2|Q\(3) & ( (\u0|r2|Q\(1) & (!\u0|r2|Q\(2) $ (\u0|r2|Q\(0)))) ) ) # ( !\u0|r2|Q\(3) & ( (!\u0|r2|Q\(1) & (!\u0|r2|Q\(2) $ (!\u0|r2|Q\(0)))) # (\u0|r2|Q\(1) & (\u0|r2|Q\(2) & \u0|r2|Q\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100100101001001010010010100101000001010000010100000101000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r2|ALT_INV_Q\(1),
	datab => \u0|r2|ALT_INV_Q\(2),
	datac => \u0|r2|ALT_INV_Q\(0),
	dataf => \u0|r2|ALT_INV_Q\(3),
	combout => \u0|s2|hex[3]~3_combout\);

-- Location: MLABCELL_X28_Y4_N24
\u0|s2|hex[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s2|hex[2]~4_combout\ = ( \u0|r2|Q\(3) & ( (\u0|r2|Q\(2) & ((!\u0|r2|Q\(0)) # (\u0|r2|Q\(1)))) ) ) # ( !\u0|r2|Q\(3) & ( (\u0|r2|Q\(1) & (!\u0|r2|Q\(2) & !\u0|r2|Q\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000000110001001100010011000100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r2|ALT_INV_Q\(1),
	datab => \u0|r2|ALT_INV_Q\(2),
	datac => \u0|r2|ALT_INV_Q\(0),
	dataf => \u0|r2|ALT_INV_Q\(3),
	combout => \u0|s2|hex[2]~4_combout\);

-- Location: MLABCELL_X28_Y4_N0
\u0|s2|hex[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s2|hex[1]~5_combout\ = ( \u0|r2|Q\(1) & ( (!\u0|r2|Q\(0) & (\u0|r2|Q\(2))) # (\u0|r2|Q\(0) & ((\u0|r2|Q\(3)))) ) ) # ( !\u0|r2|Q\(1) & ( (\u0|r2|Q\(2) & (!\u0|r2|Q\(0) $ (!\u0|r2|Q\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000001100000011111100000011001100000011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|r2|ALT_INV_Q\(2),
	datac => \u0|r2|ALT_INV_Q\(0),
	datad => \u0|r2|ALT_INV_Q\(3),
	datae => \u0|r2|ALT_INV_Q\(1),
	combout => \u0|s2|hex[1]~5_combout\);

-- Location: MLABCELL_X28_Y4_N51
\u0|s2|hex[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s2|hex[0]~6_combout\ = ( \u0|r2|Q\(3) & ( (\u0|r2|Q\(0) & (!\u0|r2|Q\(1) $ (!\u0|r2|Q\(2)))) ) ) # ( !\u0|r2|Q\(3) & ( (!\u0|r2|Q\(1) & (!\u0|r2|Q\(2) $ (!\u0|r2|Q\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010001000001000101000100000000000011001100000000001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r2|ALT_INV_Q\(1),
	datab => \u0|r2|ALT_INV_Q\(2),
	datad => \u0|r2|ALT_INV_Q\(0),
	dataf => \u0|r2|ALT_INV_Q\(3),
	combout => \u0|s2|hex[0]~6_combout\);

-- Location: LABCELL_X14_Y8_N6
\u0|En[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|En[1]~4_combout\ = ( \p1|regAddr|Q\(8) & ( \p1|regAddr|Q\(0) & ( (\p1|ff0|Q~q\ & (!\p1|regAddr|Q[2]~DUPLICATE_q\ & (!\p1|regAddr|Q[1]~DUPLICATE_q\ & !\p1|regAddr|Q[7]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ff0|ALT_INV_Q~q\,
	datab => \p1|regAddr|ALT_INV_Q[2]~DUPLICATE_q\,
	datac => \p1|regAddr|ALT_INV_Q[1]~DUPLICATE_q\,
	datad => \p1|regAddr|ALT_INV_Q[7]~DUPLICATE_q\,
	datae => \p1|regAddr|ALT_INV_Q\(8),
	dataf => \p1|regAddr|ALT_INV_Q\(0),
	combout => \u0|En[1]~4_combout\);

-- Location: FF_X14_Y6_N44
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

-- Location: FF_X14_Y6_N50
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

-- Location: FF_X14_Y6_N47
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

-- Location: FF_X14_Y6_N53
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

-- Location: LABCELL_X14_Y6_N18
\u0|s1|hex[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s1|hex[6]~0_combout\ = ( \u0|r1|Q\(0) & ( (!\u0|r1|Q\(3) & (!\u0|r1|Q\(2) $ (\u0|r1|Q\(1)))) ) ) # ( !\u0|r1|Q\(0) & ( (!\u0|r1|Q\(1) & (!\u0|r1|Q\(2) $ (\u0|r1|Q\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000110000110000000011000011000011000000001100001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|r1|ALT_INV_Q\(2),
	datac => \u0|r1|ALT_INV_Q\(1),
	datad => \u0|r1|ALT_INV_Q\(3),
	dataf => \u0|r1|ALT_INV_Q\(0),
	combout => \u0|s1|hex[6]~0_combout\);

-- Location: LABCELL_X14_Y6_N57
\u0|s1|hex[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s1|hex[5]~1_combout\ = ( \u0|r1|Q\(1) & ( (!\u0|r1|Q\(3) & ((!\u0|r1|Q\(2)) # (\u0|r1|Q\(0)))) ) ) # ( !\u0|r1|Q\(1) & ( (\u0|r1|Q\(0) & (!\u0|r1|Q\(2) $ (\u0|r1|Q\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000101000001010000010100000111010000110100001101000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|ALT_INV_Q\(0),
	datab => \u0|r1|ALT_INV_Q\(2),
	datac => \u0|r1|ALT_INV_Q\(3),
	dataf => \u0|r1|ALT_INV_Q\(1),
	combout => \u0|s1|hex[5]~1_combout\);

-- Location: LABCELL_X14_Y6_N54
\u0|s1|hex[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s1|hex[4]~2_combout\ = ( \u0|r1|Q\(2) & ( (!\u0|r1|Q\(3) & ((!\u0|r1|Q\(1)) # (\u0|r1|Q\(0)))) ) ) # ( !\u0|r1|Q\(2) & ( (\u0|r1|Q\(0) & ((!\u0|r1|Q\(1)) # (!\u0|r1|Q\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010000010101010101000011110101000000001111010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|ALT_INV_Q\(0),
	datac => \u0|r1|ALT_INV_Q\(1),
	datad => \u0|r1|ALT_INV_Q\(3),
	dataf => \u0|r1|ALT_INV_Q\(2),
	combout => \u0|s1|hex[4]~2_combout\);

-- Location: LABCELL_X14_Y6_N45
\u0|s1|hex[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s1|hex[3]~3_combout\ = ( \u0|r1|Q\(3) & ( (\u0|r1|Q\(1) & (!\u0|r1|Q\(2) $ (\u0|r1|Q\(0)))) ) ) # ( !\u0|r1|Q\(3) & ( (!\u0|r1|Q\(1) & (!\u0|r1|Q\(2) $ (!\u0|r1|Q\(0)))) # (\u0|r1|Q\(1) & (\u0|r1|Q\(2) & \u0|r1|Q\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100101010100000000010100001010101001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|ALT_INV_Q\(1),
	datac => \u0|r1|ALT_INV_Q\(2),
	datad => \u0|r1|ALT_INV_Q\(0),
	datae => \u0|r1|ALT_INV_Q\(3),
	combout => \u0|s1|hex[3]~3_combout\);

-- Location: LABCELL_X14_Y6_N3
\u0|s1|hex[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s1|hex[2]~4_combout\ = ( \u0|r1|Q\(0) & ( (\u0|r1|Q\(1) & (\u0|r1|Q\(2) & \u0|r1|Q\(3))) ) ) # ( !\u0|r1|Q\(0) & ( (!\u0|r1|Q\(2) & (\u0|r1|Q\(1) & !\u0|r1|Q\(3))) # (\u0|r1|Q\(2) & ((\u0|r1|Q\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000001111010100000000111100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|ALT_INV_Q\(1),
	datac => \u0|r1|ALT_INV_Q\(2),
	datad => \u0|r1|ALT_INV_Q\(3),
	dataf => \u0|r1|ALT_INV_Q\(0),
	combout => \u0|s1|hex[2]~4_combout\);

-- Location: LABCELL_X14_Y6_N48
\u0|s1|hex[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s1|hex[1]~5_combout\ = ( \u0|r1|Q\(2) & ( (!\u0|r1|Q\(3) & (!\u0|r1|Q\(0) $ (!\u0|r1|Q\(1)))) # (\u0|r1|Q\(3) & ((!\u0|r1|Q\(0)) # (\u0|r1|Q\(1)))) ) ) # ( !\u0|r1|Q\(2) & ( (\u0|r1|Q\(3) & (\u0|r1|Q\(0) & \u0|r1|Q\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100111100111100110011110011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|r1|ALT_INV_Q\(3),
	datac => \u0|r1|ALT_INV_Q\(0),
	datad => \u0|r1|ALT_INV_Q\(1),
	dataf => \u0|r1|ALT_INV_Q\(2),
	combout => \u0|s1|hex[1]~5_combout\);

-- Location: LABCELL_X14_Y6_N51
\u0|s1|hex[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s1|hex[0]~6_combout\ = ( \u0|r1|Q\(1) & ( (\u0|r1|Q\(3) & (!\u0|r1|Q\(2) & \u0|r1|Q\(0))) ) ) # ( !\u0|r1|Q\(1) & ( (!\u0|r1|Q\(3) & (!\u0|r1|Q\(2) $ (!\u0|r1|Q\(0)))) # (\u0|r1|Q\(3) & (\u0|r1|Q\(2) & \u0|r1|Q\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000011000011001100001100000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|r1|ALT_INV_Q\(3),
	datac => \u0|r1|ALT_INV_Q\(2),
	datad => \u0|r1|ALT_INV_Q\(0),
	dataf => \u0|r1|ALT_INV_Q\(1),
	combout => \u0|s1|hex[0]~6_combout\);

-- Location: MLABCELL_X28_Y4_N33
\u0|r0|Q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|r0|Q[2]~feeder_combout\ = ( \p1|regDout|Q\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|regDout|ALT_INV_Q\(2),
	combout => \u0|r0|Q[2]~feeder_combout\);

-- Location: LABCELL_X14_Y8_N0
\u0|En[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|En[0]~5_combout\ = ( \p1|regAddr|Q\(8) & ( !\p1|regAddr|Q\(0) & ( (\p1|ff0|Q~q\ & (!\p1|regAddr|Q[7]~DUPLICATE_q\ & (!\p1|regAddr|Q[1]~DUPLICATE_q\ & !\p1|regAddr|Q[2]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ff0|ALT_INV_Q~q\,
	datab => \p1|regAddr|ALT_INV_Q[7]~DUPLICATE_q\,
	datac => \p1|regAddr|ALT_INV_Q[1]~DUPLICATE_q\,
	datad => \p1|regAddr|ALT_INV_Q[2]~DUPLICATE_q\,
	datae => \p1|regAddr|ALT_INV_Q\(8),
	dataf => \p1|regAddr|ALT_INV_Q\(0),
	combout => \u0|En[0]~5_combout\);

-- Location: FF_X28_Y4_N35
\u0|r0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u0|r0|Q[2]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \u0|En[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r0|Q\(2));

-- Location: FF_X28_Y4_N32
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

-- Location: FF_X28_Y4_N41
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

-- Location: FF_X28_Y4_N38
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

-- Location: MLABCELL_X28_Y4_N57
\u0|s0|hex[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s0|hex[6]~0_combout\ = ( \u0|r0|Q\(1) & ( (\u0|r0|Q\(2) & (!\u0|r0|Q\(3) & \u0|r0|Q\(0))) ) ) # ( !\u0|r0|Q\(1) & ( (!\u0|r0|Q\(2) & (!\u0|r0|Q\(3))) # (\u0|r0|Q\(2) & (\u0|r0|Q\(3) & !\u0|r0|Q\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100010011000000001000000010010011000100110000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|ALT_INV_Q\(2),
	datab => \u0|r0|ALT_INV_Q\(3),
	datac => \u0|r0|ALT_INV_Q\(0),
	datae => \u0|r0|ALT_INV_Q\(1),
	combout => \u0|s0|hex[6]~0_combout\);

-- Location: MLABCELL_X28_Y4_N18
\u0|s0|hex[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s0|hex[5]~1_combout\ = ( \u0|r0|Q\(0) & ( !\u0|r0|Q\(3) $ (((\u0|r0|Q\(2) & !\u0|r0|Q\(1)))) ) ) # ( !\u0|r0|Q\(0) & ( (!\u0|r0|Q\(2) & (!\u0|r0|Q\(3) & \u0|r0|Q\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100010011100100111001001110010011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|ALT_INV_Q\(2),
	datab => \u0|r0|ALT_INV_Q\(3),
	datac => \u0|r0|ALT_INV_Q\(1),
	dataf => \u0|r0|ALT_INV_Q\(0),
	combout => \u0|s0|hex[5]~1_combout\);

-- Location: MLABCELL_X28_Y4_N21
\u0|s0|hex[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s0|hex[4]~2_combout\ = (!\u0|r0|Q\(1) & ((!\u0|r0|Q\(2) & ((\u0|r0|Q\(0)))) # (\u0|r0|Q\(2) & (!\u0|r0|Q\(3))))) # (\u0|r0|Q\(1) & (((!\u0|r0|Q\(3) & \u0|r0|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111000001100010011100000110001001110000011000100111000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|ALT_INV_Q\(2),
	datab => \u0|r0|ALT_INV_Q\(3),
	datac => \u0|r0|ALT_INV_Q\(0),
	datad => \u0|r0|ALT_INV_Q\(1),
	combout => \u0|s0|hex[4]~2_combout\);

-- Location: MLABCELL_X28_Y4_N15
\u0|s0|hex[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s0|hex[3]~3_combout\ = ( \u0|r0|Q\(1) & ( (!\u0|r0|Q\(2) & (\u0|r0|Q\(3) & !\u0|r0|Q\(0))) # (\u0|r0|Q\(2) & ((\u0|r0|Q\(0)))) ) ) # ( !\u0|r0|Q\(1) & ( (!\u0|r0|Q\(3) & (!\u0|r0|Q\(2) $ (!\u0|r0|Q\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100001001000001001010010010101001000010010000010010100100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|ALT_INV_Q\(2),
	datab => \u0|r0|ALT_INV_Q\(3),
	datac => \u0|r0|ALT_INV_Q\(0),
	datae => \u0|r0|ALT_INV_Q\(1),
	combout => \u0|s0|hex[3]~3_combout\);

-- Location: MLABCELL_X28_Y4_N9
\u0|s0|hex[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s0|hex[2]~4_combout\ = ( \u0|r0|Q\(1) & ( (!\u0|r0|Q\(2) & (!\u0|r0|Q\(3) & !\u0|r0|Q\(0))) # (\u0|r0|Q\(2) & (\u0|r0|Q\(3))) ) ) # ( !\u0|r0|Q\(1) & ( (\u0|r0|Q\(2) & (\u0|r0|Q\(3) & !\u0|r0|Q\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000100100011001000100010000000100001001000110010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|ALT_INV_Q\(2),
	datab => \u0|r0|ALT_INV_Q\(3),
	datac => \u0|r0|ALT_INV_Q\(0),
	datae => \u0|r0|ALT_INV_Q\(1),
	combout => \u0|s0|hex[2]~4_combout\);

-- Location: MLABCELL_X28_Y4_N36
\u0|s0|hex[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s0|hex[1]~5_combout\ = ( \u0|r0|Q\(0) & ( (!\u0|r0|Q\(3) & (\u0|r0|Q\(2) & !\u0|r0|Q\(1))) # (\u0|r0|Q\(3) & ((\u0|r0|Q\(1)))) ) ) # ( !\u0|r0|Q\(0) & ( (\u0|r0|Q\(2) & ((\u0|r0|Q\(1)) # (\u0|r0|Q\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111000000110000111100001100001100110000110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|r0|ALT_INV_Q\(3),
	datac => \u0|r0|ALT_INV_Q\(2),
	datad => \u0|r0|ALT_INV_Q\(1),
	dataf => \u0|r0|ALT_INV_Q\(0),
	combout => \u0|s0|hex[1]~5_combout\);

-- Location: MLABCELL_X28_Y4_N39
\u0|s0|hex[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s0|hex[0]~6_combout\ = ( \u0|r0|Q\(1) & ( (!\u0|r0|Q\(2) & (\u0|r0|Q\(3) & \u0|r0|Q\(0))) ) ) # ( !\u0|r0|Q\(1) & ( (!\u0|r0|Q\(2) & (!\u0|r0|Q\(3) & \u0|r0|Q\(0))) # (\u0|r0|Q\(2) & (!\u0|r0|Q\(3) $ (\u0|r0|Q\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010010011001010001001001100100000000001000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|ALT_INV_Q\(2),
	datab => \u0|r0|ALT_INV_Q\(3),
	datad => \u0|r0|ALT_INV_Q\(0),
	dataf => \u0|r0|ALT_INV_Q\(1),
	combout => \u0|s0|hex[0]~6_combout\);

-- Location: LABCELL_X14_Y8_N15
led_en : cyclonev_lcell_comb
-- Equation(s):
-- \led_en~combout\ = ( \p1|ff0|Q~q\ & ( (!\p1|regAddr|Q\(8) & \p1|regAddr|Q[7]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|regAddr|ALT_INV_Q\(8),
	datac => \p1|regAddr|ALT_INV_Q[7]~DUPLICATE_q\,
	datae => \p1|ff0|ALT_INV_Q~q\,
	combout => \led_en~combout\);

-- Location: FF_X13_Y6_N28
\leds0|Q[0]\ : dffeas
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
	ena => \led_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds0|Q\(0));

-- Location: MLABCELL_X13_Y6_N21
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

-- Location: FF_X13_Y6_N22
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

-- Location: LABCELL_X14_Y4_N24
\leds0|Q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \leds0|Q[2]~feeder_combout\ = ( \p1|regDout|Q\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|regDout|ALT_INV_Q\(2),
	combout => \leds0|Q[2]~feeder_combout\);

-- Location: FF_X14_Y4_N25
\leds0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \leds0|Q[2]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \led_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds0|Q\(2));

-- Location: MLABCELL_X13_Y6_N15
\leds0|Q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \leds0|Q[3]~feeder_combout\ = ( \p1|regDout|Q\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|regDout|ALT_INV_Q\(3),
	combout => \leds0|Q[3]~feeder_combout\);

-- Location: FF_X13_Y6_N17
\leds0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \leds0|Q[3]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \led_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds0|Q\(3));

-- Location: MLABCELL_X13_Y6_N42
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

-- Location: FF_X13_Y6_N43
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

-- Location: MLABCELL_X13_Y6_N45
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

-- Location: FF_X13_Y6_N46
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

-- Location: FF_X13_Y6_N49
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

-- Location: MLABCELL_X13_Y6_N18
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

-- Location: FF_X13_Y6_N20
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

-- Location: MLABCELL_X13_Y6_N54
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

-- Location: FF_X13_Y6_N56
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

-- Location: LABCELL_X36_Y30_N3
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

