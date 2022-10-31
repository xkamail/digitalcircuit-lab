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

-- DATE "10/31/2022 15:12:57"

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

ENTITY 	lab10part4 IS
    PORT (
	sw9 : IN std_logic;
	key0 : IN std_logic;
	clk : IN std_logic;
	hex5 : OUT std_logic_vector(0 TO 6);
	hex4 : OUT std_logic_vector(0 TO 6);
	hex3 : OUT std_logic_vector(0 TO 6);
	hex2 : OUT std_logic_vector(0 TO 6);
	hex1 : OUT std_logic_vector(0 TO 6);
	hex0 : OUT std_logic_vector(0 TO 6);
	ir_debug : OUT std_logic_vector(8 DOWNTO 0);
	d_r2 : OUT std_logic_vector(8 DOWNTO 0);
	d_r3 : OUT std_logic_vector(8 DOWNTO 0);
	d_r0 : OUT std_logic_vector(8 DOWNTO 0);
	d_in : OUT std_logic_vector(8 DOWNTO 0);
	addr_v : OUT std_logic_vector(8 DOWNTO 0);
	busWires : OUT std_logic_vector(8 DOWNTO 0);
	Tstep_Q : OUT std_logic_vector(3 DOWNTO 0);
	ledr : OUT std_logic_vector(8 DOWNTO 0)
	);
END lab10part4;

-- Design Ports Information
-- hex5[6]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[5]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[4]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[3]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[2]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[1]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[0]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[6]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[5]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[4]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[3]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[2]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[1]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[0]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- ir_debug[0]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_debug[1]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_debug[2]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_debug[3]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_debug[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_debug[5]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_debug[6]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_debug[7]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_debug[8]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_r2[0]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_r2[1]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_r2[2]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_r2[3]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_r2[4]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_r2[5]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_r2[6]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_r2[7]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_r2[8]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_r3[0]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_r3[1]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_r3[2]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_r3[3]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_r3[4]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_r3[5]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_r3[6]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_r3[7]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_r3[8]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_r0[0]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_r0[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_r0[2]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_r0[3]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_r0[4]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_r0[5]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_r0[6]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_r0[7]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_r0[8]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[0]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[1]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[2]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[3]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[4]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[5]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[6]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[7]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[8]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_v[0]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_v[1]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_v[2]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_v[3]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_v[4]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_v[5]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_v[6]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_v[7]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_v[8]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busWires[0]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busWires[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busWires[2]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busWires[3]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busWires[4]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busWires[5]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busWires[6]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busWires[7]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busWires[8]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tstep_Q[0]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tstep_Q[1]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tstep_Q[2]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tstep_Q[3]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[0]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[1]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[2]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[3]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[4]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[5]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[6]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[7]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[8]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key0	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw9	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab10part4 IS
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
SIGNAL ww_hex5 : std_logic_vector(0 TO 6);
SIGNAL ww_hex4 : std_logic_vector(0 TO 6);
SIGNAL ww_hex3 : std_logic_vector(0 TO 6);
SIGNAL ww_hex2 : std_logic_vector(0 TO 6);
SIGNAL ww_hex1 : std_logic_vector(0 TO 6);
SIGNAL ww_hex0 : std_logic_vector(0 TO 6);
SIGNAL ww_ir_debug : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_d_r2 : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_d_r3 : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_d_r0 : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_d_in : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_addr_v : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_busWires : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_Tstep_Q : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ledr : std_logic_vector(8 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \key0~input_o\ : std_logic;
SIGNAL \key0~inputCLKENA0_outclk\ : std_logic;
SIGNAL \p1|fsm|y_Q.T3~DUPLICATE_q\ : std_logic;
SIGNAL \sw9~input_o\ : std_logic;
SIGNAL \ff0|Q~feeder_combout\ : std_logic;
SIGNAL \ff0|Q~q\ : std_logic;
SIGNAL \p1|fsm|y_Q.T3~q\ : std_logic;
SIGNAL \p1|ir0|Q[7]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|mux0|y[3]~42_combout\ : std_logic;
SIGNAL \p1|ir0|Q[8]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|fsm|Ain~0_combout\ : std_logic;
SIGNAL \p1|addsub0|Add0~38_cout\ : std_logic;
SIGNAL \p1|addsub0|Add0~14\ : std_logic;
SIGNAL \p1|addsub0|Add0~5_sumout\ : std_logic;
SIGNAL \p1|fsm|Gin~0_combout\ : std_logic;
SIGNAL \p1|addsub0|Add0~6\ : std_logic;
SIGNAL \p1|addsub0|Add0~2\ : std_logic;
SIGNAL \p1|addsub0|Add0~9_sumout\ : std_logic;
SIGNAL \p1|reg0|Q[6]~feeder_combout\ : std_logic;
SIGNAL \p1|fsm|Selector13~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector0~0_combout\ : std_logic;
SIGNAL \p1|fsm|DoutIn~1_combout\ : std_logic;
SIGNAL \p1|regDout|Q[3]~feeder_combout\ : std_logic;
SIGNAL \p1|regDout|Q[4]~feeder_combout\ : std_logic;
SIGNAL \p1|regDout|Q[6]~feeder_combout\ : std_logic;
SIGNAL \p1|reg0|Q[7]~feeder_combout\ : std_logic;
SIGNAL \p1|addsub0|Add0~10\ : std_logic;
SIGNAL \p1|addsub0|Add0~34\ : std_logic;
SIGNAL \p1|addsub0|Add0~18\ : std_logic;
SIGNAL \p1|addsub0|Add0~30\ : std_logic;
SIGNAL \p1|addsub0|Add0~25_sumout\ : std_logic;
SIGNAL \p1|regG|Q[7]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|mux0|y[3]~9_combout\ : std_logic;
SIGNAL \p1|ir0|Q[0]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|dexY|Mux0~0_combout\ : std_logic;
SIGNAL \p1|decX|Mux0~7_combout\ : std_logic;
SIGNAL \p1|fsm|Selector8~0_combout\ : std_logic;
SIGNAL \p1|fsm|Mux7~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector8~1_combout\ : std_logic;
SIGNAL \p1|addsub0|Add0~33_sumout\ : std_logic;
SIGNAL \p1|addsub0|Add0~29_sumout\ : std_logic;
SIGNAL \p1|regG|Q[6]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|fsm|Equal0~1_combout\ : std_logic;
SIGNAL \p1|fsm|Selector5~1_combout\ : std_logic;
SIGNAL \p1|decX|Mux0~2_combout\ : std_logic;
SIGNAL \p1|fsm|Selector5~0_combout\ : std_logic;
SIGNAL \p1|mux0|y[3]~39_combout\ : std_logic;
SIGNAL \p1|fsm|Selector5~3_combout\ : std_logic;
SIGNAL \p1|fsm|Selector7~1_combout\ : std_logic;
SIGNAL \p1|fsm|DoutIn~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector5~4_combout\ : std_logic;
SIGNAL \p1|fsm|Selector7~2_combout\ : std_logic;
SIGNAL \p1|fsm|Mux0~0_combout\ : std_logic;
SIGNAL \p1|decX|Mux0~1_combout\ : std_logic;
SIGNAL \p1|fsm|Selector6~1_combout\ : std_logic;
SIGNAL \p1|fsm|Selector6~2_combout\ : std_logic;
SIGNAL \p1|mux0|y[3]~48_combout\ : std_logic;
SIGNAL \p1|decX|Mux0~5_combout\ : std_logic;
SIGNAL \p1|fsm|Selector2~1_combout\ : std_logic;
SIGNAL \p1|decX|Mux0~3_combout\ : std_logic;
SIGNAL \p1|fsm|Selector3~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector3~1_combout\ : std_logic;
SIGNAL \p1|fsm|Selector3~2_combout\ : std_logic;
SIGNAL \p1|fsm|Selector2~2_combout\ : std_logic;
SIGNAL \p1|fsm|Selector2~3_combout\ : std_logic;
SIGNAL \p1|mux0|y[3]~3_combout\ : std_logic;
SIGNAL \p1|mux0|y[3]~43_combout\ : std_logic;
SIGNAL \p1|decX|Mux0~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector5~5_combout\ : std_logic;
SIGNAL \p1|fsm|Selector5~6_combout\ : std_logic;
SIGNAL \p1|fsm|Selector4~1_combout\ : std_logic;
SIGNAL \p1|fsm|Selector4~2_combout\ : std_logic;
SIGNAL \p1|mux0|y[3]~44_combout\ : std_logic;
SIGNAL \p1|mux0|y[3]~40_combout\ : std_logic;
SIGNAL \p1|mux0|y[3]~56_combout\ : std_logic;
SIGNAL \p1|mux0|y[3]~7_combout\ : std_logic;
SIGNAL \p1|fsm|Selector4~3_combout\ : std_logic;
SIGNAL \p1|fsm|Selector5~7_combout\ : std_logic;
SIGNAL \p1|fsm|Selector6~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector7~0_combout\ : std_logic;
SIGNAL \p1|mux0|y[3]~5_combout\ : std_logic;
SIGNAL \p1|mux0|y[3]~4_combout\ : std_logic;
SIGNAL \p1|mux0|y[3]~6_combout\ : std_logic;
SIGNAL \p1|mux0|y[3]~10_combout\ : std_logic;
SIGNAL \p1|reg2|Q[7]~feeder_combout\ : std_logic;
SIGNAL \p1|fsm|Selector13~1_combout\ : std_logic;
SIGNAL \p1|fsm|Selector4~0_combout\ : std_logic;
SIGNAL \p1|mux0|y[3]~2_combout\ : std_logic;
SIGNAL \p1|fsm|Selector12~0_combout\ : std_logic;
SIGNAL \p1|reg4|Q[7]~feeder_combout\ : std_logic;
SIGNAL \p1|fsm|Selector15~0_combout\ : std_logic;
SIGNAL \p1|mux0|y[3]~36_combout\ : std_logic;
SIGNAL \p1|mux0|y[3]~1_combout\ : std_logic;
SIGNAL \p1|pc0|Add0~1_sumout\ : std_logic;
SIGNAL \p1|pc0|Add0~30\ : std_logic;
SIGNAL \p1|pc0|Add0~33_sumout\ : std_logic;
SIGNAL \p1|fsm|Selector10~1_combout\ : std_logic;
SIGNAL \p1|fsm|Selector14~1_combout\ : std_logic;
SIGNAL \p1|pc0|v[0]~3_combout\ : std_logic;
SIGNAL \p1|pc0|v[1]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|pc0|v[0]~0_combout\ : std_logic;
SIGNAL \p1|pc0|v[0]~1_combout\ : std_logic;
SIGNAL \p1|pc0|v[0]~2_combout\ : std_logic;
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
SIGNAL \p1|pc0|Add0~26\ : std_logic;
SIGNAL \p1|pc0|Add0~29_sumout\ : std_logic;
SIGNAL \p1|fsm|Selector16~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector17~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector5~2_combout\ : std_logic;
SIGNAL \p1|mux0|y[3]~0_combout\ : std_logic;
SIGNAL \p1|mux0|y[7]~30_combout\ : std_logic;
SIGNAL \p1|mux0|y[7]~31_combout\ : std_logic;
SIGNAL \p1|mux0|y[7]~32_combout\ : std_logic;
SIGNAL \p1|regDout|Q[7]~feeder_combout\ : std_logic;
SIGNAL \p1|decX|Mux0~4_combout\ : std_logic;
SIGNAL \p1|fsm|Selector14~0_combout\ : std_logic;
SIGNAL \p1|reg2|Q[6]~feeder_combout\ : std_logic;
SIGNAL \p1|reg5|Q[6]~feeder_combout\ : std_logic;
SIGNAL \p1|reg4|Q[6]~feeder_combout\ : std_logic;
SIGNAL \p1|mux0|y[6]~27_combout\ : std_logic;
SIGNAL \p1|mux0|y[6]~28_combout\ : std_logic;
SIGNAL \p1|mux0|y[6]~29_combout\ : std_logic;
SIGNAL \p1|regAddr|Q[6]~feeder_combout\ : std_logic;
SIGNAL \p1|reg2|Q[5]~feeder_combout\ : std_logic;
SIGNAL \p1|reg2|Q[5]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|reg4|Q[5]~feeder_combout\ : std_logic;
SIGNAL \p1|reg5|Q[5]~feeder_combout\ : std_logic;
SIGNAL \p1|mux0|y[5]~24_combout\ : std_logic;
SIGNAL \p1|mux0|y[5]~25_combout\ : std_logic;
SIGNAL \p1|mux0|y[5]~26_combout\ : std_logic;
SIGNAL \p1|addsub0|Add0~17_sumout\ : std_logic;
SIGNAL \p1|addsub0|Add0~13_sumout\ : std_logic;
SIGNAL \p1|fsm|Equal0~0_combout\ : std_logic;
SIGNAL \p1|fsm|Equal0~2_combout\ : std_logic;
SIGNAL \p1|decX|Mux0~6_combout\ : std_logic;
SIGNAL \p1|fsm|Selector11~0_combout\ : std_logic;
SIGNAL \p1|reg4|Q[4]~feeder_combout\ : std_logic;
SIGNAL \p1|reg5|Q[4]~feeder_combout\ : std_logic;
SIGNAL \p1|mux0|y[4]~21_combout\ : std_logic;
SIGNAL \p1|mux0|y[4]~22_combout\ : std_logic;
SIGNAL \p1|mux0|y[4]~23_combout\ : std_logic;
SIGNAL \p1|regAddr|Q[4]~feeder_combout\ : std_logic;
SIGNAL \p1|fsm|Selector2~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector1~2_combout\ : std_logic;
SIGNAL \p1|fsm|Selector1~1_combout\ : std_logic;
SIGNAL \p1|fsm|Selector1~0_combout\ : std_logic;
SIGNAL \p1|mux0|y[3]~41_combout\ : std_logic;
SIGNAL \p1|mux0|y[3]~8_combout\ : std_logic;
SIGNAL \p1|reg2|Q[3]~feeder_combout\ : std_logic;
SIGNAL \p1|reg4|Q[3]~feeder_combout\ : std_logic;
SIGNAL \p1|reg5|Q[3]~feeder_combout\ : std_logic;
SIGNAL \p1|mux0|y[3]~18_combout\ : std_logic;
SIGNAL \p1|mux0|y[3]~19_combout\ : std_logic;
SIGNAL \p1|regG|Q[3]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|mux0|y[3]~20_combout\ : std_logic;
SIGNAL \p1|reg0|Q[1]~feeder_combout\ : std_logic;
SIGNAL \p1|regG|Q[1]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|reg2|Q[1]~feeder_combout\ : std_logic;
SIGNAL \p1|reg4|Q[1]~feeder_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~12_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~13_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~14_combout\ : std_logic;
SIGNAL \p1|fsm|Selector9~0_combout\ : std_logic;
SIGNAL \p1|mux0|y[0]~38_combout\ : std_logic;
SIGNAL \p1|mux0|y[0]~37_combout\ : std_logic;
SIGNAL \p1|mux0|y[0]~52_combout\ : std_logic;
SIGNAL \p1|mux0|y[0]~11_combout\ : std_logic;
SIGNAL \p1|fsm|Mux27~0_combout\ : std_logic;
SIGNAL \p1|addsub0|Add0~26\ : std_logic;
SIGNAL \p1|addsub0|Add0~21_sumout\ : std_logic;
SIGNAL \p1|reg3|Q[8]~feeder_combout\ : std_logic;
SIGNAL \p1|mux0|y[8]~33_combout\ : std_logic;
SIGNAL \p1|mux0|y[8]~34_combout\ : std_logic;
SIGNAL \p1|mux0|y[8]~35_combout\ : std_logic;
SIGNAL \p1|regAddr|Q[8]~feeder_combout\ : std_logic;
SIGNAL \p1|ff0|Q~q\ : std_logic;
SIGNAL \wr_en~combout\ : std_logic;
SIGNAL \p1|fsm|Selector0~1_combout\ : std_logic;
SIGNAL \p1|fsm|y_Q.T0~q\ : std_logic;
SIGNAL \p1|fsm|Selector10~0_combout\ : std_logic;
SIGNAL \p1|fsm|y_Q.TX~q\ : std_logic;
SIGNAL \p1|fsm|y_Q.TXX~q\ : std_logic;
SIGNAL \p1|fsm|y_Q.T1~q\ : std_logic;
SIGNAL \p1|fsm|y_D.T2~0_combout\ : std_logic;
SIGNAL \p1|fsm|y_Q.T2~q\ : std_logic;
SIGNAL \p1|addsub0|Add0~1_sumout\ : std_logic;
SIGNAL \p1|regG|Q[2]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|reg4|Q[2]~feeder_combout\ : std_logic;
SIGNAL \p1|reg5|Q[2]~feeder_combout\ : std_logic;
SIGNAL \p1|mux0|y[2]~15_combout\ : std_logic;
SIGNAL \p1|mux0|y[2]~16_combout\ : std_logic;
SIGNAL \p1|mux0|y[2]~17_combout\ : std_logic;
SIGNAL \p1|regAddr|Q[0]~DUPLICATE_q\ : std_logic;
SIGNAL \u0|En[5]~0_combout\ : std_logic;
SIGNAL \u0|r5|Q[1]~feeder_combout\ : std_logic;
SIGNAL \u0|r5|Q[3]~feeder_combout\ : std_logic;
SIGNAL \u0|s5|hex[6]~0_combout\ : std_logic;
SIGNAL \u0|s5|hex[5]~1_combout\ : std_logic;
SIGNAL \u0|s5|hex[4]~2_combout\ : std_logic;
SIGNAL \u0|s5|hex[3]~3_combout\ : std_logic;
SIGNAL \u0|s5|hex[2]~4_combout\ : std_logic;
SIGNAL \u0|s5|hex[1]~5_combout\ : std_logic;
SIGNAL \u0|s5|hex[0]~6_combout\ : std_logic;
SIGNAL \p1|ff0|Q~DUPLICATE_q\ : std_logic;
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
SIGNAL \p1|reg2|Q[1]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|reg2|Q[3]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|reg0|Q[1]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|fsm|Tstep_Q~0_combout\ : std_logic;
SIGNAL \leds0|Q[0]~feeder_combout\ : std_logic;
SIGNAL \led_en~combout\ : std_logic;
SIGNAL \leds0|Q[1]~feeder_combout\ : std_logic;
SIGNAL \leds0|Q[2]~feeder_combout\ : std_logic;
SIGNAL \leds0|Q[3]~feeder_combout\ : std_logic;
SIGNAL \leds0|Q[4]~feeder_combout\ : std_logic;
SIGNAL \leds0|Q[5]~feeder_combout\ : std_logic;
SIGNAL \leds0|Q[6]~feeder_combout\ : std_logic;
SIGNAL \leds0|Q[7]~feeder_combout\ : std_logic;
SIGNAL \leds0|Q[8]~feeder_combout\ : std_logic;
SIGNAL \u0|r3|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|q_a\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|pc0|v\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u0|r4|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \p1|regG|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u0|r5|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u0|r2|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u0|r1|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u0|r0|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \p1|ir0|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg2|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg3|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg0|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|regAddr|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg6|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg4|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg5|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg1|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|fsm|Tstep_Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \leds0|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|regDout|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|regA|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u0|r3|ALT_INV_Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u0|r4|ALT_INV_Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u0|r5|ALT_INV_Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \p1|mux0|ALT_INV_y[3]~56_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[0]~52_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[3]~48_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[3]~44_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector4~3_combout\ : std_logic;
SIGNAL \p1|pc0|ALT_INV_v\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|regG|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ALT_INV_q_a\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|fsm|ALT_INV_Selector3~1_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector4~0_combout\ : std_logic;
SIGNAL \p1|decX|ALT_INV_Mux0~4_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \p1|decX|ALT_INV_Mux0~3_combout\ : std_logic;
SIGNAL \p1|reg1|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|mux0|ALT_INV_y[3]~1_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[3]~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector5~6_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector5~5_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector7~2_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector7~1_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector6~2_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector6~1_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector5~4_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_y_Q.T2~q\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_DoutIn~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector5~3_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector7~0_combout\ : std_logic;
SIGNAL \p1|decX|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector6~0_combout\ : std_logic;
SIGNAL \p1|decX|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector5~2_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector5~1_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_y_Q.T1~q\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \p1|decX|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \p1|reg5|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg4|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg6|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|regAddr|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 1);
SIGNAL \p1|reg0|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg3|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg2|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|ir0|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u0|r0|ALT_INV_Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u0|r1|ALT_INV_Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u0|r2|ALT_INV_Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \p1|pc0|ALT_INV_v[0]~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector10~1_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector10~0_combout\ : std_logic;
SIGNAL \ff0|ALT_INV_Q~q\ : std_logic;
SIGNAL \p1|regDout|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|fsm|ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector13~0_combout\ : std_logic;
SIGNAL \p1|ff0|ALT_INV_Q~q\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Tstep_Q~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_y_Q.TXX~q\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[8]~35_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[8]~34_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[8]~33_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[7]~32_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[7]~31_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[7]~30_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[6]~29_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[6]~28_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[6]~27_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[5]~26_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[5]~25_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[5]~24_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[4]~23_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[4]~22_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[4]~21_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[3]~20_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[3]~19_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[3]~18_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[2]~17_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[2]~16_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[2]~15_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~14_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~13_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~12_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[0]~11_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[3]~10_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[3]~9_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[3]~8_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[3]~7_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[3]~6_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[3]~5_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[3]~4_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector8~1_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector8~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \p1|dexY|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \p1|decX|ALT_INV_Mux0~7_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_y_Q.T0~q\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector5~7_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \p1|decX|ALT_INV_Mux0~6_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[3]~3_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_y_Q.T3~q\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[3]~2_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector2~3_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector2~2_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector2~1_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \p1|decX|ALT_INV_Mux0~5_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector4~2_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector4~1_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector3~2_combout\ : std_logic;
SIGNAL \p1|ff0|ALT_INV_Q~DUPLICATE_q\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_y_Q.T3~DUPLICATE_q\ : std_logic;
SIGNAL \p1|regAddr|ALT_INV_Q[0]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|reg2|ALT_INV_Q[5]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|ir0|ALT_INV_Q[8]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|ir0|ALT_INV_Q[7]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|ir0|ALT_INV_Q[0]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|pc0|ALT_INV_v[1]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|regG|ALT_INV_Q[6]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|regG|ALT_INV_Q[7]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|regG|ALT_INV_Q[3]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|regG|ALT_INV_Q[1]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|regG|ALT_INV_Q[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_sw9~input_o\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[3]~43_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[3]~42_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[3]~41_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[3]~40_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[3]~39_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[0]~38_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[0]~37_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[3]~36_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector1~2_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector1~1_combout\ : std_logic;
SIGNAL \p1|regA|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|fsm|ALT_INV_Mux27~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector14~1_combout\ : std_logic;
SIGNAL \p1|pc0|ALT_INV_v[0]~1_combout\ : std_logic;

BEGIN

ww_sw9 <= sw9;
ww_key0 <= key0;
ww_clk <= clk;
hex5 <= ww_hex5;
hex4 <= ww_hex4;
hex3 <= ww_hex3;
hex2 <= ww_hex2;
hex1 <= ww_hex1;
hex0 <= ww_hex0;
ir_debug <= ww_ir_debug;
d_r2 <= ww_d_r2;
d_r3 <= ww_d_r3;
d_r0 <= ww_d_r0;
d_in <= ww_d_in;
addr_v <= ww_addr_v;
busWires <= ww_busWires;
Tstep_Q <= ww_Tstep_Q;
ledr <= ww_ledr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\m0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \p1|regDout|Q\(8) & \p1|regDout|Q\(7) & \p1|regDout|Q\(6) & \p1|regDout|Q\(5) & \p1|regDout|Q\(4) & 
\p1|regDout|Q\(3) & \p1|regDout|Q\(2) & \p1|regDout|Q\(1) & \p1|regDout|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\p1|regAddr|Q\(6) & \p1|regAddr|Q\(5) & \p1|regAddr|Q\(4) & \p1|regAddr|Q\(3) & \p1|regAddr|Q\(2) & \p1|regAddr|Q\(1) & \p1|regAddr|Q\(0));

\m0|altsyncram_component|auto_generated|q_a\(0) <= \m0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\m0|altsyncram_component|auto_generated|q_a\(1) <= \m0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\m0|altsyncram_component|auto_generated|q_a\(2) <= \m0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\m0|altsyncram_component|auto_generated|q_a\(3) <= \m0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\m0|altsyncram_component|auto_generated|q_a\(4) <= \m0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\m0|altsyncram_component|auto_generated|q_a\(5) <= \m0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\m0|altsyncram_component|auto_generated|q_a\(6) <= \m0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\m0|altsyncram_component|auto_generated|q_a\(7) <= \m0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\m0|altsyncram_component|auto_generated|q_a\(8) <= \m0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
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
\p1|mux0|ALT_INV_y[3]~56_combout\ <= NOT \p1|mux0|y[3]~56_combout\;
\p1|mux0|ALT_INV_y[0]~52_combout\ <= NOT \p1|mux0|y[0]~52_combout\;
\p1|mux0|ALT_INV_y[3]~48_combout\ <= NOT \p1|mux0|y[3]~48_combout\;
\p1|mux0|ALT_INV_y[3]~44_combout\ <= NOT \p1|mux0|y[3]~44_combout\;
\p1|fsm|ALT_INV_Selector4~3_combout\ <= NOT \p1|fsm|Selector4~3_combout\;
\p1|pc0|ALT_INV_v\(8) <= NOT \p1|pc0|v\(8);
\p1|pc0|ALT_INV_v\(7) <= NOT \p1|pc0|v\(7);
\p1|pc0|ALT_INV_v\(6) <= NOT \p1|pc0|v\(6);
\p1|pc0|ALT_INV_v\(5) <= NOT \p1|pc0|v\(5);
\p1|pc0|ALT_INV_v\(4) <= NOT \p1|pc0|v\(4);
\p1|pc0|ALT_INV_v\(3) <= NOT \p1|pc0|v\(3);
\p1|pc0|ALT_INV_v\(2) <= NOT \p1|pc0|v\(2);
\p1|pc0|ALT_INV_v\(1) <= NOT \p1|pc0|v\(1);
\p1|regG|ALT_INV_Q\(4) <= NOT \p1|regG|Q\(4);
\p1|regG|ALT_INV_Q\(6) <= NOT \p1|regG|Q\(6);
\p1|regG|ALT_INV_Q\(7) <= NOT \p1|regG|Q\(7);
\p1|regG|ALT_INV_Q\(8) <= NOT \p1|regG|Q\(8);
\p1|regG|ALT_INV_Q\(5) <= NOT \p1|regG|Q\(5);
\p1|regG|ALT_INV_Q\(0) <= NOT \p1|regG|Q\(0);
\p1|regG|ALT_INV_Q\(3) <= NOT \p1|regG|Q\(3);
\p1|regG|ALT_INV_Q\(1) <= NOT \p1|regG|Q\(1);
\p1|regG|ALT_INV_Q\(2) <= NOT \p1|regG|Q\(2);
\p1|pc0|ALT_INV_v\(0) <= NOT \p1|pc0|v\(0);
\m0|altsyncram_component|auto_generated|ALT_INV_q_a\(1) <= NOT \m0|altsyncram_component|auto_generated|q_a\(1);
\m0|altsyncram_component|auto_generated|ALT_INV_q_a\(2) <= NOT \m0|altsyncram_component|auto_generated|q_a\(2);
\m0|altsyncram_component|auto_generated|ALT_INV_q_a\(3) <= NOT \m0|altsyncram_component|auto_generated|q_a\(3);
\m0|altsyncram_component|auto_generated|ALT_INV_q_a\(4) <= NOT \m0|altsyncram_component|auto_generated|q_a\(4);
\m0|altsyncram_component|auto_generated|ALT_INV_q_a\(5) <= NOT \m0|altsyncram_component|auto_generated|q_a\(5);
\m0|altsyncram_component|auto_generated|ALT_INV_q_a\(6) <= NOT \m0|altsyncram_component|auto_generated|q_a\(6);
\m0|altsyncram_component|auto_generated|ALT_INV_q_a\(7) <= NOT \m0|altsyncram_component|auto_generated|q_a\(7);
\m0|altsyncram_component|auto_generated|ALT_INV_q_a\(8) <= NOT \m0|altsyncram_component|auto_generated|q_a\(8);
\m0|altsyncram_component|auto_generated|ALT_INV_q_a\(0) <= NOT \m0|altsyncram_component|auto_generated|q_a\(0);
\p1|fsm|ALT_INV_Selector3~1_combout\ <= NOT \p1|fsm|Selector3~1_combout\;
\p1|fsm|ALT_INV_Selector4~0_combout\ <= NOT \p1|fsm|Selector4~0_combout\;
\p1|decX|ALT_INV_Mux0~4_combout\ <= NOT \p1|decX|Mux0~4_combout\;
\p1|fsm|ALT_INV_Selector3~0_combout\ <= NOT \p1|fsm|Selector3~0_combout\;
\p1|decX|ALT_INV_Mux0~3_combout\ <= NOT \p1|decX|Mux0~3_combout\;
\p1|reg1|ALT_INV_Q\(0) <= NOT \p1|reg1|Q\(0);
\p1|mux0|ALT_INV_y[3]~1_combout\ <= NOT \p1|mux0|y[3]~1_combout\;
\p1|mux0|ALT_INV_y[3]~0_combout\ <= NOT \p1|mux0|y[3]~0_combout\;
\p1|fsm|ALT_INV_Selector5~6_combout\ <= NOT \p1|fsm|Selector5~6_combout\;
\p1|fsm|ALT_INV_Selector5~5_combout\ <= NOT \p1|fsm|Selector5~5_combout\;
\p1|fsm|ALT_INV_Selector7~2_combout\ <= NOT \p1|fsm|Selector7~2_combout\;
\p1|fsm|ALT_INV_Selector7~1_combout\ <= NOT \p1|fsm|Selector7~1_combout\;
\p1|fsm|ALT_INV_Selector6~2_combout\ <= NOT \p1|fsm|Selector6~2_combout\;
\p1|fsm|ALT_INV_Selector6~1_combout\ <= NOT \p1|fsm|Selector6~1_combout\;
\p1|fsm|ALT_INV_Selector5~4_combout\ <= NOT \p1|fsm|Selector5~4_combout\;
\p1|fsm|ALT_INV_y_Q.T2~q\ <= NOT \p1|fsm|y_Q.T2~q\;
\p1|fsm|ALT_INV_DoutIn~0_combout\ <= NOT \p1|fsm|DoutIn~0_combout\;
\p1|fsm|ALT_INV_Selector5~3_combout\ <= NOT \p1|fsm|Selector5~3_combout\;
\p1|fsm|ALT_INV_Selector7~0_combout\ <= NOT \p1|fsm|Selector7~0_combout\;
\p1|decX|ALT_INV_Mux0~2_combout\ <= NOT \p1|decX|Mux0~2_combout\;
\p1|fsm|ALT_INV_Selector6~0_combout\ <= NOT \p1|fsm|Selector6~0_combout\;
\p1|decX|ALT_INV_Mux0~1_combout\ <= NOT \p1|decX|Mux0~1_combout\;
\p1|fsm|ALT_INV_Selector5~2_combout\ <= NOT \p1|fsm|Selector5~2_combout\;
\p1|fsm|ALT_INV_Selector5~1_combout\ <= NOT \p1|fsm|Selector5~1_combout\;
\p1|fsm|ALT_INV_y_Q.T1~q\ <= NOT \p1|fsm|y_Q.T1~q\;
\p1|fsm|ALT_INV_Selector5~0_combout\ <= NOT \p1|fsm|Selector5~0_combout\;
\p1|fsm|ALT_INV_Mux0~0_combout\ <= NOT \p1|fsm|Mux0~0_combout\;
\p1|fsm|ALT_INV_Equal0~1_combout\ <= NOT \p1|fsm|Equal0~1_combout\;
\p1|fsm|ALT_INV_Equal0~0_combout\ <= NOT \p1|fsm|Equal0~0_combout\;
\p1|decX|ALT_INV_Mux0~0_combout\ <= NOT \p1|decX|Mux0~0_combout\;
\p1|reg5|ALT_INV_Q\(0) <= NOT \p1|reg5|Q\(0);
\p1|reg4|ALT_INV_Q\(0) <= NOT \p1|reg4|Q\(0);
\p1|reg6|ALT_INV_Q\(0) <= NOT \p1|reg6|Q\(0);
\p1|regAddr|ALT_INV_Q\(8) <= NOT \p1|regAddr|Q\(8);
\p1|regAddr|ALT_INV_Q\(7) <= NOT \p1|regAddr|Q\(7);
\p1|regAddr|ALT_INV_Q\(2) <= NOT \p1|regAddr|Q\(2);
\p1|regAddr|ALT_INV_Q\(1) <= NOT \p1|regAddr|Q\(1);
\p1|reg0|ALT_INV_Q\(8) <= NOT \p1|reg0|Q\(8);
\p1|reg0|ALT_INV_Q\(7) <= NOT \p1|reg0|Q\(7);
\p1|reg0|ALT_INV_Q\(6) <= NOT \p1|reg0|Q\(6);
\p1|reg0|ALT_INV_Q\(5) <= NOT \p1|reg0|Q\(5);
\p1|reg0|ALT_INV_Q\(4) <= NOT \p1|reg0|Q\(4);
\p1|reg0|ALT_INV_Q\(3) <= NOT \p1|reg0|Q\(3);
\p1|reg0|ALT_INV_Q\(2) <= NOT \p1|reg0|Q\(2);
\p1|reg0|ALT_INV_Q\(1) <= NOT \p1|reg0|Q\(1);
\p1|reg0|ALT_INV_Q\(0) <= NOT \p1|reg0|Q\(0);
\p1|reg3|ALT_INV_Q\(8) <= NOT \p1|reg3|Q\(8);
\p1|reg3|ALT_INV_Q\(7) <= NOT \p1|reg3|Q\(7);
\p1|reg3|ALT_INV_Q\(6) <= NOT \p1|reg3|Q\(6);
\p1|reg3|ALT_INV_Q\(5) <= NOT \p1|reg3|Q\(5);
\p1|reg3|ALT_INV_Q\(4) <= NOT \p1|reg3|Q\(4);
\p1|reg3|ALT_INV_Q\(3) <= NOT \p1|reg3|Q\(3);
\p1|reg3|ALT_INV_Q\(2) <= NOT \p1|reg3|Q\(2);
\p1|reg3|ALT_INV_Q\(1) <= NOT \p1|reg3|Q\(1);
\p1|reg3|ALT_INV_Q\(0) <= NOT \p1|reg3|Q\(0);
\p1|reg2|ALT_INV_Q\(8) <= NOT \p1|reg2|Q\(8);
\p1|reg2|ALT_INV_Q\(7) <= NOT \p1|reg2|Q\(7);
\p1|reg2|ALT_INV_Q\(6) <= NOT \p1|reg2|Q\(6);
\p1|reg2|ALT_INV_Q\(4) <= NOT \p1|reg2|Q\(4);
\p1|reg2|ALT_INV_Q\(3) <= NOT \p1|reg2|Q\(3);
\p1|reg2|ALT_INV_Q\(2) <= NOT \p1|reg2|Q\(2);
\p1|reg2|ALT_INV_Q\(1) <= NOT \p1|reg2|Q\(1);
\p1|reg2|ALT_INV_Q\(0) <= NOT \p1|reg2|Q\(0);
\p1|ir0|ALT_INV_Q\(8) <= NOT \p1|ir0|Q\(8);
\p1|ir0|ALT_INV_Q\(7) <= NOT \p1|ir0|Q\(7);
\p1|ir0|ALT_INV_Q\(6) <= NOT \p1|ir0|Q\(6);
\p1|ir0|ALT_INV_Q\(5) <= NOT \p1|ir0|Q\(5);
\p1|ir0|ALT_INV_Q\(4) <= NOT \p1|ir0|Q\(4);
\p1|ir0|ALT_INV_Q\(3) <= NOT \p1|ir0|Q\(3);
\p1|ir0|ALT_INV_Q\(2) <= NOT \p1|ir0|Q\(2);
\p1|ir0|ALT_INV_Q\(1) <= NOT \p1|ir0|Q\(1);
\p1|ir0|ALT_INV_Q\(0) <= NOT \p1|ir0|Q\(0);
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
\p1|pc0|ALT_INV_v[0]~0_combout\ <= NOT \p1|pc0|v[0]~0_combout\;
\p1|fsm|ALT_INV_Selector10~1_combout\ <= NOT \p1|fsm|Selector10~1_combout\;
\p1|fsm|ALT_INV_Selector10~0_combout\ <= NOT \p1|fsm|Selector10~0_combout\;
\ff0|ALT_INV_Q~q\ <= NOT \ff0|Q~q\;
\p1|regDout|ALT_INV_Q\(8) <= NOT \p1|regDout|Q\(8);
\p1|regDout|ALT_INV_Q\(7) <= NOT \p1|regDout|Q\(7);
\p1|regDout|ALT_INV_Q\(6) <= NOT \p1|regDout|Q\(6);
\p1|regDout|ALT_INV_Q\(5) <= NOT \p1|regDout|Q\(5);
\p1|regDout|ALT_INV_Q\(4) <= NOT \p1|regDout|Q\(4);
\p1|fsm|ALT_INV_Selector0~0_combout\ <= NOT \p1|fsm|Selector0~0_combout\;
\p1|fsm|ALT_INV_Selector13~0_combout\ <= NOT \p1|fsm|Selector13~0_combout\;
\p1|regDout|ALT_INV_Q\(0) <= NOT \p1|regDout|Q\(0);
\p1|regDout|ALT_INV_Q\(1) <= NOT \p1|regDout|Q\(1);
\p1|regDout|ALT_INV_Q\(2) <= NOT \p1|regDout|Q\(2);
\p1|ff0|ALT_INV_Q~q\ <= NOT \p1|ff0|Q~q\;
\p1|regDout|ALT_INV_Q\(3) <= NOT \p1|regDout|Q\(3);
\p1|fsm|ALT_INV_Tstep_Q~0_combout\ <= NOT \p1|fsm|Tstep_Q~0_combout\;
\p1|fsm|ALT_INV_y_Q.TXX~q\ <= NOT \p1|fsm|y_Q.TXX~q\;
\p1|mux0|ALT_INV_y[8]~35_combout\ <= NOT \p1|mux0|y[8]~35_combout\;
\p1|mux0|ALT_INV_y[8]~34_combout\ <= NOT \p1|mux0|y[8]~34_combout\;
\p1|reg1|ALT_INV_Q\(8) <= NOT \p1|reg1|Q\(8);
\p1|mux0|ALT_INV_y[8]~33_combout\ <= NOT \p1|mux0|y[8]~33_combout\;
\p1|reg5|ALT_INV_Q\(8) <= NOT \p1|reg5|Q\(8);
\p1|reg4|ALT_INV_Q\(8) <= NOT \p1|reg4|Q\(8);
\p1|reg6|ALT_INV_Q\(8) <= NOT \p1|reg6|Q\(8);
\p1|mux0|ALT_INV_y[7]~32_combout\ <= NOT \p1|mux0|y[7]~32_combout\;
\p1|mux0|ALT_INV_y[7]~31_combout\ <= NOT \p1|mux0|y[7]~31_combout\;
\p1|reg1|ALT_INV_Q\(7) <= NOT \p1|reg1|Q\(7);
\p1|mux0|ALT_INV_y[7]~30_combout\ <= NOT \p1|mux0|y[7]~30_combout\;
\p1|reg5|ALT_INV_Q\(7) <= NOT \p1|reg5|Q\(7);
\p1|reg4|ALT_INV_Q\(7) <= NOT \p1|reg4|Q\(7);
\p1|reg6|ALT_INV_Q\(7) <= NOT \p1|reg6|Q\(7);
\p1|mux0|ALT_INV_y[6]~29_combout\ <= NOT \p1|mux0|y[6]~29_combout\;
\p1|mux0|ALT_INV_y[6]~28_combout\ <= NOT \p1|mux0|y[6]~28_combout\;
\p1|reg1|ALT_INV_Q\(6) <= NOT \p1|reg1|Q\(6);
\p1|mux0|ALT_INV_y[6]~27_combout\ <= NOT \p1|mux0|y[6]~27_combout\;
\p1|reg5|ALT_INV_Q\(6) <= NOT \p1|reg5|Q\(6);
\p1|reg4|ALT_INV_Q\(6) <= NOT \p1|reg4|Q\(6);
\p1|reg6|ALT_INV_Q\(6) <= NOT \p1|reg6|Q\(6);
\p1|mux0|ALT_INV_y[5]~26_combout\ <= NOT \p1|mux0|y[5]~26_combout\;
\p1|mux0|ALT_INV_y[5]~25_combout\ <= NOT \p1|mux0|y[5]~25_combout\;
\p1|reg1|ALT_INV_Q\(5) <= NOT \p1|reg1|Q\(5);
\p1|mux0|ALT_INV_y[5]~24_combout\ <= NOT \p1|mux0|y[5]~24_combout\;
\p1|reg5|ALT_INV_Q\(5) <= NOT \p1|reg5|Q\(5);
\p1|reg4|ALT_INV_Q\(5) <= NOT \p1|reg4|Q\(5);
\p1|reg6|ALT_INV_Q\(5) <= NOT \p1|reg6|Q\(5);
\p1|mux0|ALT_INV_y[4]~23_combout\ <= NOT \p1|mux0|y[4]~23_combout\;
\p1|mux0|ALT_INV_y[4]~22_combout\ <= NOT \p1|mux0|y[4]~22_combout\;
\p1|reg1|ALT_INV_Q\(4) <= NOT \p1|reg1|Q\(4);
\p1|mux0|ALT_INV_y[4]~21_combout\ <= NOT \p1|mux0|y[4]~21_combout\;
\p1|reg5|ALT_INV_Q\(4) <= NOT \p1|reg5|Q\(4);
\p1|reg4|ALT_INV_Q\(4) <= NOT \p1|reg4|Q\(4);
\p1|reg6|ALT_INV_Q\(4) <= NOT \p1|reg6|Q\(4);
\p1|mux0|ALT_INV_y[3]~20_combout\ <= NOT \p1|mux0|y[3]~20_combout\;
\p1|mux0|ALT_INV_y[3]~19_combout\ <= NOT \p1|mux0|y[3]~19_combout\;
\p1|reg1|ALT_INV_Q\(3) <= NOT \p1|reg1|Q\(3);
\p1|mux0|ALT_INV_y[3]~18_combout\ <= NOT \p1|mux0|y[3]~18_combout\;
\p1|reg5|ALT_INV_Q\(3) <= NOT \p1|reg5|Q\(3);
\p1|reg4|ALT_INV_Q\(3) <= NOT \p1|reg4|Q\(3);
\p1|reg6|ALT_INV_Q\(3) <= NOT \p1|reg6|Q\(3);
\p1|mux0|ALT_INV_y[2]~17_combout\ <= NOT \p1|mux0|y[2]~17_combout\;
\p1|mux0|ALT_INV_y[2]~16_combout\ <= NOT \p1|mux0|y[2]~16_combout\;
\p1|reg1|ALT_INV_Q\(2) <= NOT \p1|reg1|Q\(2);
\p1|mux0|ALT_INV_y[2]~15_combout\ <= NOT \p1|mux0|y[2]~15_combout\;
\p1|reg5|ALT_INV_Q\(2) <= NOT \p1|reg5|Q\(2);
\p1|reg4|ALT_INV_Q\(2) <= NOT \p1|reg4|Q\(2);
\p1|reg6|ALT_INV_Q\(2) <= NOT \p1|reg6|Q\(2);
\p1|mux0|ALT_INV_y[1]~14_combout\ <= NOT \p1|mux0|y[1]~14_combout\;
\p1|mux0|ALT_INV_y[1]~13_combout\ <= NOT \p1|mux0|y[1]~13_combout\;
\p1|reg1|ALT_INV_Q\(1) <= NOT \p1|reg1|Q\(1);
\p1|mux0|ALT_INV_y[1]~12_combout\ <= NOT \p1|mux0|y[1]~12_combout\;
\p1|reg5|ALT_INV_Q\(1) <= NOT \p1|reg5|Q\(1);
\p1|reg4|ALT_INV_Q\(1) <= NOT \p1|reg4|Q\(1);
\p1|reg6|ALT_INV_Q\(1) <= NOT \p1|reg6|Q\(1);
\p1|mux0|ALT_INV_y[0]~11_combout\ <= NOT \p1|mux0|y[0]~11_combout\;
\p1|mux0|ALT_INV_y[3]~10_combout\ <= NOT \p1|mux0|y[3]~10_combout\;
\p1|mux0|ALT_INV_y[3]~9_combout\ <= NOT \p1|mux0|y[3]~9_combout\;
\p1|mux0|ALT_INV_y[3]~8_combout\ <= NOT \p1|mux0|y[3]~8_combout\;
\p1|mux0|ALT_INV_y[3]~7_combout\ <= NOT \p1|mux0|y[3]~7_combout\;
\p1|mux0|ALT_INV_y[3]~6_combout\ <= NOT \p1|mux0|y[3]~6_combout\;
\p1|mux0|ALT_INV_y[3]~5_combout\ <= NOT \p1|mux0|y[3]~5_combout\;
\p1|mux0|ALT_INV_y[3]~4_combout\ <= NOT \p1|mux0|y[3]~4_combout\;
\p1|fsm|ALT_INV_Selector8~1_combout\ <= NOT \p1|fsm|Selector8~1_combout\;
\p1|fsm|ALT_INV_Selector8~0_combout\ <= NOT \p1|fsm|Selector8~0_combout\;
\p1|fsm|ALT_INV_Mux7~0_combout\ <= NOT \p1|fsm|Mux7~0_combout\;
\p1|dexY|ALT_INV_Mux0~0_combout\ <= NOT \p1|dexY|Mux0~0_combout\;
\p1|decX|ALT_INV_Mux0~7_combout\ <= NOT \p1|decX|Mux0~7_combout\;
\p1|fsm|ALT_INV_Equal0~2_combout\ <= NOT \p1|fsm|Equal0~2_combout\;
\p1|fsm|ALT_INV_y_Q.T0~q\ <= NOT \p1|fsm|y_Q.T0~q\;
\p1|fsm|ALT_INV_Selector5~7_combout\ <= NOT \p1|fsm|Selector5~7_combout\;
\p1|fsm|ALT_INV_Selector1~0_combout\ <= NOT \p1|fsm|Selector1~0_combout\;
\p1|decX|ALT_INV_Mux0~6_combout\ <= NOT \p1|decX|Mux0~6_combout\;
\p1|mux0|ALT_INV_y[3]~3_combout\ <= NOT \p1|mux0|y[3]~3_combout\;
\p1|fsm|ALT_INV_y_Q.T3~q\ <= NOT \p1|fsm|y_Q.T3~q\;
\p1|mux0|ALT_INV_y[3]~2_combout\ <= NOT \p1|mux0|y[3]~2_combout\;
\p1|fsm|ALT_INV_Selector2~3_combout\ <= NOT \p1|fsm|Selector2~3_combout\;
\p1|fsm|ALT_INV_Selector2~2_combout\ <= NOT \p1|fsm|Selector2~2_combout\;
\p1|fsm|ALT_INV_Selector2~1_combout\ <= NOT \p1|fsm|Selector2~1_combout\;
\p1|fsm|ALT_INV_Selector2~0_combout\ <= NOT \p1|fsm|Selector2~0_combout\;
\p1|decX|ALT_INV_Mux0~5_combout\ <= NOT \p1|decX|Mux0~5_combout\;
\p1|fsm|ALT_INV_Selector4~2_combout\ <= NOT \p1|fsm|Selector4~2_combout\;
\p1|fsm|ALT_INV_Selector4~1_combout\ <= NOT \p1|fsm|Selector4~1_combout\;
\p1|fsm|ALT_INV_Selector3~2_combout\ <= NOT \p1|fsm|Selector3~2_combout\;
\p1|ff0|ALT_INV_Q~DUPLICATE_q\ <= NOT \p1|ff0|Q~DUPLICATE_q\;
\p1|fsm|ALT_INV_y_Q.T3~DUPLICATE_q\ <= NOT \p1|fsm|y_Q.T3~DUPLICATE_q\;
\p1|regAddr|ALT_INV_Q[0]~DUPLICATE_q\ <= NOT \p1|regAddr|Q[0]~DUPLICATE_q\;
\p1|reg2|ALT_INV_Q[5]~DUPLICATE_q\ <= NOT \p1|reg2|Q[5]~DUPLICATE_q\;
\p1|ir0|ALT_INV_Q[8]~DUPLICATE_q\ <= NOT \p1|ir0|Q[8]~DUPLICATE_q\;
\p1|ir0|ALT_INV_Q[7]~DUPLICATE_q\ <= NOT \p1|ir0|Q[7]~DUPLICATE_q\;
\p1|ir0|ALT_INV_Q[0]~DUPLICATE_q\ <= NOT \p1|ir0|Q[0]~DUPLICATE_q\;
\p1|pc0|ALT_INV_v[1]~DUPLICATE_q\ <= NOT \p1|pc0|v[1]~DUPLICATE_q\;
\p1|regG|ALT_INV_Q[6]~DUPLICATE_q\ <= NOT \p1|regG|Q[6]~DUPLICATE_q\;
\p1|regG|ALT_INV_Q[7]~DUPLICATE_q\ <= NOT \p1|regG|Q[7]~DUPLICATE_q\;
\p1|regG|ALT_INV_Q[3]~DUPLICATE_q\ <= NOT \p1|regG|Q[3]~DUPLICATE_q\;
\p1|regG|ALT_INV_Q[1]~DUPLICATE_q\ <= NOT \p1|regG|Q[1]~DUPLICATE_q\;
\p1|regG|ALT_INV_Q[2]~DUPLICATE_q\ <= NOT \p1|regG|Q[2]~DUPLICATE_q\;
\ALT_INV_sw9~input_o\ <= NOT \sw9~input_o\;
\p1|mux0|ALT_INV_y[3]~43_combout\ <= NOT \p1|mux0|y[3]~43_combout\;
\p1|mux0|ALT_INV_y[3]~42_combout\ <= NOT \p1|mux0|y[3]~42_combout\;
\p1|mux0|ALT_INV_y[3]~41_combout\ <= NOT \p1|mux0|y[3]~41_combout\;
\p1|mux0|ALT_INV_y[3]~40_combout\ <= NOT \p1|mux0|y[3]~40_combout\;
\p1|mux0|ALT_INV_y[3]~39_combout\ <= NOT \p1|mux0|y[3]~39_combout\;
\p1|mux0|ALT_INV_y[0]~38_combout\ <= NOT \p1|mux0|y[0]~38_combout\;
\p1|mux0|ALT_INV_y[0]~37_combout\ <= NOT \p1|mux0|y[0]~37_combout\;
\p1|mux0|ALT_INV_y[3]~36_combout\ <= NOT \p1|mux0|y[3]~36_combout\;
\p1|fsm|ALT_INV_Selector1~2_combout\ <= NOT \p1|fsm|Selector1~2_combout\;
\p1|fsm|ALT_INV_Selector1~1_combout\ <= NOT \p1|fsm|Selector1~1_combout\;
\p1|regA|ALT_INV_Q\(4) <= NOT \p1|regA|Q\(4);
\p1|regA|ALT_INV_Q\(6) <= NOT \p1|regA|Q\(6);
\p1|regA|ALT_INV_Q\(7) <= NOT \p1|regA|Q\(7);
\p1|regA|ALT_INV_Q\(8) <= NOT \p1|regA|Q\(8);
\p1|regA|ALT_INV_Q\(5) <= NOT \p1|regA|Q\(5);
\p1|regA|ALT_INV_Q\(0) <= NOT \p1|regA|Q\(0);
\p1|regA|ALT_INV_Q\(3) <= NOT \p1|regA|Q\(3);
\p1|regA|ALT_INV_Q\(1) <= NOT \p1|regA|Q\(1);
\p1|regA|ALT_INV_Q\(2) <= NOT \p1|regA|Q\(2);
\p1|fsm|ALT_INV_Mux27~0_combout\ <= NOT \p1|fsm|Mux27~0_combout\;
\p1|fsm|ALT_INV_Selector14~1_combout\ <= NOT \p1|fsm|Selector14~1_combout\;
\p1|pc0|ALT_INV_v[0]~1_combout\ <= NOT \p1|pc0|v[0]~1_combout\;

-- Location: IOOBUF_X44_Y0_N2
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

-- Location: IOOBUF_X0_Y21_N39
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

-- Location: IOOBUF_X0_Y21_N56
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

-- Location: IOOBUF_X50_Y0_N19
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

-- Location: IOOBUF_X43_Y0_N19
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

-- Location: IOOBUF_X22_Y0_N19
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

-- Location: IOOBUF_X29_Y0_N2
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

-- Location: IOOBUF_X29_Y0_N19
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

-- Location: IOOBUF_X36_Y0_N2
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

-- Location: IOOBUF_X43_Y0_N2
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

-- Location: IOOBUF_X52_Y0_N19
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

-- Location: IOOBUF_X44_Y0_N19
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

-- Location: IOOBUF_X48_Y0_N59
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

-- Location: IOOBUF_X52_Y0_N36
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

-- Location: IOOBUF_X51_Y0_N19
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

-- Location: IOOBUF_X51_Y0_N2
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

-- Location: IOOBUF_X52_Y0_N2
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

-- Location: IOOBUF_X46_Y0_N19
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

-- Location: IOOBUF_X46_Y0_N2
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

-- Location: IOOBUF_X40_Y0_N59
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

-- Location: IOOBUF_X40_Y0_N76
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

-- Location: IOOBUF_X46_Y0_N53
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

-- Location: IOOBUF_X38_Y0_N19
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

-- Location: IOOBUF_X36_Y0_N19
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

-- Location: IOOBUF_X22_Y0_N53
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

-- Location: IOOBUF_X38_Y0_N53
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

-- Location: IOOBUF_X48_Y0_N42
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

-- Location: IOOBUF_X51_Y0_N53
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

-- Location: IOOBUF_X43_Y0_N53
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

-- Location: IOOBUF_X38_Y0_N36
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

-- Location: IOOBUF_X43_Y0_N36
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

-- Location: IOOBUF_X44_Y0_N53
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

-- Location: IOOBUF_X40_Y0_N93
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

-- Location: IOOBUF_X44_Y0_N36
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

-- Location: IOOBUF_X46_Y0_N36
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

-- Location: IOOBUF_X50_Y0_N53
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

-- Location: IOOBUF_X48_Y0_N93
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

-- Location: IOOBUF_X50_Y0_N36
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

-- Location: IOOBUF_X48_Y0_N76
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

-- Location: IOOBUF_X51_Y0_N36
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

-- Location: IOOBUF_X52_Y0_N53
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

-- Location: IOOBUF_X24_Y0_N53
\ir_debug[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|ir0|Q[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_ir_debug(0));

-- Location: IOOBUF_X25_Y0_N36
\ir_debug[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|ir0|Q\(1),
	devoe => ww_devoe,
	o => ww_ir_debug(1));

-- Location: IOOBUF_X25_Y0_N2
\ir_debug[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|ir0|Q\(2),
	devoe => ww_devoe,
	o => ww_ir_debug(2));

-- Location: IOOBUF_X16_Y0_N59
\ir_debug[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|ir0|Q\(3),
	devoe => ww_devoe,
	o => ww_ir_debug(3));

-- Location: IOOBUF_X54_Y20_N39
\ir_debug[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|ir0|Q\(4),
	devoe => ww_devoe,
	o => ww_ir_debug(4));

-- Location: IOOBUF_X11_Y0_N36
\ir_debug[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|ir0|Q\(5),
	devoe => ww_devoe,
	o => ww_ir_debug(5));

-- Location: IOOBUF_X34_Y0_N2
\ir_debug[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|ir0|Q\(6),
	devoe => ww_devoe,
	o => ww_ir_debug(6));

-- Location: IOOBUF_X36_Y0_N53
\ir_debug[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|ir0|Q\(7),
	devoe => ww_devoe,
	o => ww_ir_debug(7));

-- Location: IOOBUF_X38_Y0_N2
\ir_debug[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|ir0|Q[8]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_ir_debug(8));

-- Location: IOOBUF_X54_Y17_N22
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

-- Location: IOOBUF_X12_Y0_N36
\d_r2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg2|Q[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_d_r2(1));

-- Location: IOOBUF_X54_Y18_N79
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

-- Location: IOOBUF_X12_Y0_N19
\d_r2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg2|Q[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_d_r2(3));

-- Location: IOOBUF_X10_Y0_N42
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

-- Location: IOOBUF_X54_Y14_N62
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

-- Location: IOOBUF_X16_Y0_N76
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

-- Location: IOOBUF_X54_Y20_N22
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

-- Location: IOOBUF_X11_Y0_N53
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

-- Location: IOOBUF_X23_Y0_N93
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

-- Location: IOOBUF_X54_Y15_N56
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

-- Location: IOOBUF_X54_Y19_N22
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

-- Location: IOOBUF_X54_Y15_N22
\d_r3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg3|Q\(4),
	devoe => ww_devoe,
	o => ww_d_r3(4));

-- Location: IOOBUF_X54_Y17_N39
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

-- Location: IOOBUF_X54_Y16_N56
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

-- Location: IOOBUF_X54_Y17_N56
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

-- Location: IOOBUF_X24_Y0_N19
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

-- Location: IOOBUF_X54_Y18_N96
\d_r0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg0|Q\(0),
	devoe => ww_devoe,
	o => ww_d_r0(0));

-- Location: IOOBUF_X42_Y45_N36
\d_r0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg0|Q[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_d_r0(1));

-- Location: IOOBUF_X19_Y0_N53
\d_r0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg0|Q\(2),
	devoe => ww_devoe,
	o => ww_d_r0(2));

-- Location: IOOBUF_X23_Y0_N59
\d_r0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg0|Q\(3),
	devoe => ww_devoe,
	o => ww_d_r0(3));

-- Location: IOOBUF_X54_Y16_N5
\d_r0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg0|Q\(4),
	devoe => ww_devoe,
	o => ww_d_r0(4));

-- Location: IOOBUF_X54_Y16_N22
\d_r0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg0|Q\(5),
	devoe => ww_devoe,
	o => ww_d_r0(5));

-- Location: IOOBUF_X54_Y16_N39
\d_r0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg0|Q\(6),
	devoe => ww_devoe,
	o => ww_d_r0(6));

-- Location: IOOBUF_X54_Y14_N96
\d_r0[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg0|Q\(7),
	devoe => ww_devoe,
	o => ww_d_r0(7));

-- Location: IOOBUF_X18_Y0_N2
\d_r0[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|reg0|Q\(8),
	devoe => ww_devoe,
	o => ww_d_r0(8));

-- Location: IOOBUF_X14_Y0_N19
\d_in[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \m0|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => ww_d_in(0));

-- Location: IOOBUF_X25_Y0_N53
\d_in[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \m0|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => ww_d_in(1));

-- Location: IOOBUF_X54_Y17_N5
\d_in[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \m0|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => ww_d_in(2));

-- Location: IOOBUF_X16_Y0_N42
\d_in[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \m0|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => ww_d_in(3));

-- Location: IOOBUF_X22_Y0_N36
\d_in[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \m0|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => ww_d_in(4));

-- Location: IOOBUF_X10_Y0_N76
\d_in[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \m0|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => ww_d_in(5));

-- Location: IOOBUF_X12_Y0_N2
\d_in[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \m0|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => ww_d_in(6));

-- Location: IOOBUF_X54_Y18_N62
\d_in[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \m0|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => ww_d_in(7));

-- Location: IOOBUF_X16_Y0_N93
\d_in[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \m0|altsyncram_component|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => ww_d_in(8));

-- Location: IOOBUF_X14_Y0_N36
\addr_v[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|regAddr|Q\(0),
	devoe => ww_devoe,
	o => ww_addr_v(0));

-- Location: IOOBUF_X25_Y0_N19
\addr_v[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|regAddr|Q\(1),
	devoe => ww_devoe,
	o => ww_addr_v(1));

-- Location: IOOBUF_X23_Y0_N76
\addr_v[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|regAddr|Q\(2),
	devoe => ww_devoe,
	o => ww_addr_v(2));

-- Location: IOOBUF_X12_Y0_N53
\addr_v[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|regAddr|Q\(3),
	devoe => ww_devoe,
	o => ww_addr_v(3));

-- Location: IOOBUF_X19_Y0_N36
\addr_v[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|regAddr|Q\(4),
	devoe => ww_devoe,
	o => ww_addr_v(4));

-- Location: IOOBUF_X54_Y18_N45
\addr_v[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|regAddr|Q\(5),
	devoe => ww_devoe,
	o => ww_addr_v(5));

-- Location: IOOBUF_X29_Y0_N36
\addr_v[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|regAddr|Q\(6),
	devoe => ww_devoe,
	o => ww_addr_v(6));

-- Location: IOOBUF_X24_Y0_N2
\addr_v[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|regAddr|Q\(7),
	devoe => ww_devoe,
	o => ww_addr_v(7));

-- Location: IOOBUF_X24_Y0_N36
\addr_v[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|regAddr|Q\(8),
	devoe => ww_devoe,
	o => ww_addr_v(8));

-- Location: IOOBUF_X33_Y0_N59
\busWires[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|mux0|y[0]~11_combout\,
	devoe => ww_devoe,
	o => ww_busWires(0));

-- Location: IOOBUF_X36_Y0_N36
\busWires[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|mux0|y[1]~14_combout\,
	devoe => ww_devoe,
	o => ww_busWires(1));

-- Location: IOOBUF_X34_Y0_N36
\busWires[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|mux0|y[2]~17_combout\,
	devoe => ww_devoe,
	o => ww_busWires(2));

-- Location: IOOBUF_X50_Y0_N2
\busWires[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|mux0|y[3]~20_combout\,
	devoe => ww_devoe,
	o => ww_busWires(3));

-- Location: IOOBUF_X33_Y0_N93
\busWires[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|mux0|y[4]~23_combout\,
	devoe => ww_devoe,
	o => ww_busWires(4));

-- Location: IOOBUF_X34_Y0_N53
\busWires[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|mux0|y[5]~26_combout\,
	devoe => ww_devoe,
	o => ww_busWires(5));

-- Location: IOOBUF_X33_Y0_N42
\busWires[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|mux0|y[6]~29_combout\,
	devoe => ww_devoe,
	o => ww_busWires(6));

-- Location: IOOBUF_X34_Y0_N19
\busWires[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|mux0|y[7]~32_combout\,
	devoe => ww_devoe,
	o => ww_busWires(7));

-- Location: IOOBUF_X54_Y14_N45
\busWires[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|mux0|y[8]~35_combout\,
	devoe => ww_devoe,
	o => ww_busWires(8));

-- Location: IOOBUF_X11_Y0_N19
\Tstep_Q[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|fsm|ALT_INV_Tstep_Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Tstep_Q(0));

-- Location: IOOBUF_X54_Y15_N39
\Tstep_Q[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|fsm|Tstep_Q\(1),
	devoe => ww_devoe,
	o => ww_Tstep_Q(1));

-- Location: IOOBUF_X29_Y0_N53
\Tstep_Q[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|fsm|y_Q.T2~q\,
	devoe => ww_devoe,
	o => ww_Tstep_Q(2));

-- Location: IOOBUF_X23_Y0_N42
\Tstep_Q[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|fsm|y_Q.T3~q\,
	devoe => ww_devoe,
	o => ww_Tstep_Q(3));

-- Location: IOOBUF_X54_Y15_N5
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

-- Location: IOOBUF_X54_Y14_N79
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

-- Location: IOOBUF_X18_Y0_N36
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

-- Location: IOOBUF_X19_Y0_N2
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

-- Location: IOOBUF_X14_Y0_N53
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

-- Location: IOOBUF_X0_Y18_N79
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

-- Location: IOOBUF_X18_Y0_N53
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

-- Location: IOOBUF_X18_Y0_N19
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

-- Location: IOOBUF_X19_Y0_N19
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

-- Location: IOIBUF_X22_Y0_N1
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G5
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

-- Location: CLKCTRL_G7
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

-- Location: FF_X43_Y2_N10
\p1|fsm|y_Q.T3~DUPLICATE\ : dffeas
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
	q => \p1|fsm|y_Q.T3~DUPLICATE_q\);

-- Location: IOIBUF_X33_Y0_N75
\sw9~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw9,
	o => \sw9~input_o\);

-- Location: MLABCELL_X37_Y2_N54
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

-- Location: FF_X37_Y2_N56
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

-- Location: FF_X40_Y3_N5
\p1|regAddr|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[2]~17_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regAddr|Q\(2));

-- Location: FF_X43_Y2_N11
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

-- Location: FF_X43_Y3_N19
\p1|ir0|Q[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m0|altsyncram_component|auto_generated|q_a\(7),
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|y_Q.TXX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q[7]~DUPLICATE_q\);

-- Location: LABCELL_X43_Y2_N3
\p1|mux0|y[3]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[3]~42_combout\ = ( \p1|ir0|Q[7]~DUPLICATE_q\ & ( \p1|fsm|y_Q.T3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|fsm|ALT_INV_y_Q.T3~q\,
	dataf => \p1|ir0|ALT_INV_Q[7]~DUPLICATE_q\,
	combout => \p1|mux0|y[3]~42_combout\);

-- Location: FF_X43_Y3_N10
\p1|ir0|Q[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m0|altsyncram_component|auto_generated|q_a\(8),
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|y_Q.TXX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q[8]~DUPLICATE_q\);

-- Location: FF_X43_Y4_N8
\p1|ir0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m0|altsyncram_component|auto_generated|q_a\(0),
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|y_Q.TXX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(0));

-- Location: LABCELL_X44_Y3_N36
\p1|fsm|Ain~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Ain~0_combout\ = ( \p1|fsm|y_Q.T1~q\ & ( (!\p1|ir0|Q\(8) & \p1|ir0|Q\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|ir0|ALT_INV_Q\(8),
	datac => \p1|ir0|ALT_INV_Q\(7),
	dataf => \p1|fsm|ALT_INV_y_Q.T1~q\,
	combout => \p1|fsm|Ain~0_combout\);

-- Location: FF_X42_Y2_N20
\p1|regA|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|mux0|y[1]~14_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regA|Q\(1));

-- Location: FF_X43_Y3_N13
\p1|regA|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|mux0|y[0]~11_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regA|Q\(0));

-- Location: LABCELL_X43_Y3_N30
\p1|addsub0|Add0~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~38_cout\ = CARRY(( (\p1|fsm|y_Q.T2~q\ & \p1|fsm|Mux27~0_combout\) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T2~q\,
	datac => \p1|fsm|ALT_INV_Mux27~0_combout\,
	cin => GND,
	cout => \p1|addsub0|Add0~38_cout\);

-- Location: LABCELL_X43_Y3_N33
\p1|addsub0|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~13_sumout\ = SUM(( \p1|regA|Q\(0) ) + ( !\p1|mux0|y[0]~11_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux27~0_combout\))) ) + ( \p1|addsub0|Add0~38_cout\ ))
-- \p1|addsub0|Add0~14\ = CARRY(( \p1|regA|Q\(0) ) + ( !\p1|mux0|y[0]~11_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux27~0_combout\))) ) + ( \p1|addsub0|Add0~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001010010100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T2~q\,
	datab => \p1|regA|ALT_INV_Q\(0),
	datac => \p1|mux0|ALT_INV_y[0]~11_combout\,
	dataf => \p1|fsm|ALT_INV_Mux27~0_combout\,
	cin => \p1|addsub0|Add0~38_cout\,
	sumout => \p1|addsub0|Add0~13_sumout\,
	cout => \p1|addsub0|Add0~14\);

-- Location: LABCELL_X43_Y3_N36
\p1|addsub0|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~5_sumout\ = SUM(( \p1|regA|Q\(1) ) + ( !\p1|mux0|y[1]~14_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux27~0_combout\))) ) + ( \p1|addsub0|Add0~14\ ))
-- \p1|addsub0|Add0~6\ = CARRY(( \p1|regA|Q\(1) ) + ( !\p1|mux0|y[1]~14_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux27~0_combout\))) ) + ( \p1|addsub0|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001010010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T2~q\,
	datac => \p1|mux0|ALT_INV_y[1]~14_combout\,
	datad => \p1|regA|ALT_INV_Q\(1),
	dataf => \p1|fsm|ALT_INV_Mux27~0_combout\,
	cin => \p1|addsub0|Add0~14\,
	sumout => \p1|addsub0|Add0~5_sumout\,
	cout => \p1|addsub0|Add0~6\);

-- Location: MLABCELL_X45_Y3_N45
\p1|fsm|Gin~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Gin~0_combout\ = ( !\p1|ir0|Q\(8) & ( (\p1|fsm|y_Q.T2~q\ & \p1|ir0|Q[7]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000000000000000000011000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|fsm|ALT_INV_y_Q.T2~q\,
	datac => \p1|ir0|ALT_INV_Q[7]~DUPLICATE_q\,
	datae => \p1|ir0|ALT_INV_Q\(8),
	combout => \p1|fsm|Gin~0_combout\);

-- Location: FF_X43_Y3_N38
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

-- Location: FF_X43_Y3_N25
\p1|regA|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|mux0|y[3]~20_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regA|Q\(3));

-- Location: FF_X41_Y3_N25
\p1|regA|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|mux0|y[2]~17_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regA|Q\(2));

-- Location: LABCELL_X43_Y3_N39
\p1|addsub0|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~1_sumout\ = SUM(( \p1|regA|Q\(2) ) + ( !\p1|mux0|y[2]~17_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux27~0_combout\))) ) + ( \p1|addsub0|Add0~6\ ))
-- \p1|addsub0|Add0~2\ = CARRY(( \p1|regA|Q\(2) ) + ( !\p1|mux0|y[2]~17_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux27~0_combout\))) ) + ( \p1|addsub0|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001010010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T2~q\,
	datac => \p1|mux0|ALT_INV_y[2]~17_combout\,
	datad => \p1|regA|ALT_INV_Q\(2),
	dataf => \p1|fsm|ALT_INV_Mux27~0_combout\,
	cin => \p1|addsub0|Add0~6\,
	sumout => \p1|addsub0|Add0~1_sumout\,
	cout => \p1|addsub0|Add0~2\);

-- Location: LABCELL_X43_Y3_N42
\p1|addsub0|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~9_sumout\ = SUM(( \p1|regA|Q\(3) ) + ( !\p1|mux0|y[3]~20_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux27~0_combout\))) ) + ( \p1|addsub0|Add0~2\ ))
-- \p1|addsub0|Add0~10\ = CARRY(( \p1|regA|Q\(3) ) + ( !\p1|mux0|y[3]~20_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux27~0_combout\))) ) + ( \p1|addsub0|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001010010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T2~q\,
	datac => \p1|mux0|ALT_INV_y[3]~20_combout\,
	datad => \p1|regA|ALT_INV_Q\(3),
	dataf => \p1|fsm|ALT_INV_Mux27~0_combout\,
	cin => \p1|addsub0|Add0~2\,
	sumout => \p1|addsub0|Add0~9_sumout\,
	cout => \p1|addsub0|Add0~10\);

-- Location: FF_X43_Y3_N44
\p1|regG|Q[3]\ : dffeas
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
	q => \p1|regG|Q\(3));

-- Location: FF_X40_Y2_N52
\p1|reg0|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[5]~26_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(5));

-- Location: FF_X40_Y3_N25
\p1|regAddr|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[5]~26_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regAddr|Q\(5));

-- Location: LABCELL_X44_Y2_N57
\p1|reg0|Q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg0|Q[6]~feeder_combout\ = ( \p1|mux0|y[6]~29_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[6]~29_combout\,
	combout => \p1|reg0|Q[6]~feeder_combout\);

-- Location: FF_X44_Y2_N58
\p1|reg0|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg0|Q[6]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(6));

-- Location: MLABCELL_X42_Y1_N9
\p1|fsm|Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector13~0_combout\ = ( \p1|fsm|y_Q.T3~DUPLICATE_q\ & ( !\p1|ir0|Q[8]~DUPLICATE_q\ $ (((!\p1|ir0|Q\(6) & !\p1|ir0|Q[7]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001100110110011000110011011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(6),
	datab => \p1|ir0|ALT_INV_Q[8]~DUPLICATE_q\,
	datad => \p1|ir0|ALT_INV_Q[7]~DUPLICATE_q\,
	dataf => \p1|fsm|ALT_INV_y_Q.T3~DUPLICATE_q\,
	combout => \p1|fsm|Selector13~0_combout\);

-- Location: MLABCELL_X42_Y1_N27
\p1|fsm|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector0~0_combout\ = ( \p1|fsm|y_Q.T1~q\ & ( !\p1|ir0|Q\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \p1|ir0|ALT_INV_Q\(6),
	dataf => \p1|fsm|ALT_INV_y_Q.T1~q\,
	combout => \p1|fsm|Selector0~0_combout\);

-- Location: LABCELL_X41_Y2_N6
\p1|fsm|DoutIn~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|DoutIn~1_combout\ = ( \p1|ir0|Q\(6) & ( (!\p1|ir0|Q[7]~DUPLICATE_q\ & (\p1|fsm|y_Q.T2~q\ & \p1|ir0|Q[8]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000110000000000000000000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|ir0|ALT_INV_Q[7]~DUPLICATE_q\,
	datac => \p1|fsm|ALT_INV_y_Q.T2~q\,
	datad => \p1|ir0|ALT_INV_Q[8]~DUPLICATE_q\,
	datae => \p1|ir0|ALT_INV_Q\(6),
	combout => \p1|fsm|DoutIn~1_combout\);

-- Location: FF_X41_Y2_N31
\p1|regDout|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[1]~14_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|DoutIn~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regDout|Q\(1));

-- Location: MLABCELL_X45_Y3_N15
\p1|regDout|Q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|regDout|Q[3]~feeder_combout\ = ( \p1|mux0|y[3]~20_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[3]~20_combout\,
	combout => \p1|regDout|Q[3]~feeder_combout\);

-- Location: FF_X45_Y3_N16
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
	ena => \p1|fsm|DoutIn~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regDout|Q\(3));

-- Location: LABCELL_X41_Y2_N51
\p1|regDout|Q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|regDout|Q[4]~feeder_combout\ = ( \p1|mux0|y[4]~23_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[4]~23_combout\,
	combout => \p1|regDout|Q[4]~feeder_combout\);

-- Location: FF_X41_Y2_N52
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
	ena => \p1|fsm|DoutIn~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regDout|Q\(4));

-- Location: FF_X40_Y3_N43
\p1|regDout|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[5]~26_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|DoutIn~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regDout|Q\(5));

-- Location: MLABCELL_X45_Y3_N12
\p1|regDout|Q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|regDout|Q[6]~feeder_combout\ = ( \p1|mux0|y[6]~29_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[6]~29_combout\,
	combout => \p1|regDout|Q[6]~feeder_combout\);

-- Location: FF_X45_Y3_N13
\p1|regDout|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|regDout|Q[6]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|DoutIn~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regDout|Q\(6));

-- Location: LABCELL_X44_Y2_N21
\p1|reg0|Q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg0|Q[7]~feeder_combout\ = ( \p1|mux0|y[7]~32_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[7]~32_combout\,
	combout => \p1|reg0|Q[7]~feeder_combout\);

-- Location: FF_X44_Y2_N22
\p1|reg0|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg0|Q[7]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(7));

-- Location: FF_X44_Y3_N31
\p1|regA|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|mux0|y[7]~32_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regA|Q\(7));

-- Location: FF_X44_Y3_N55
\p1|regA|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|mux0|y[6]~29_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regA|Q\(6));

-- Location: FF_X42_Y2_N32
\p1|regA|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|mux0|y[4]~23_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regA|Q\(4));

-- Location: LABCELL_X43_Y3_N45
\p1|addsub0|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~33_sumout\ = SUM(( \p1|regA|Q\(4) ) + ( !\p1|mux0|y[4]~23_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux27~0_combout\))) ) + ( \p1|addsub0|Add0~10\ ))
-- \p1|addsub0|Add0~34\ = CARRY(( \p1|regA|Q\(4) ) + ( !\p1|mux0|y[4]~23_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux27~0_combout\))) ) + ( \p1|addsub0|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001010010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T2~q\,
	datac => \p1|mux0|ALT_INV_y[4]~23_combout\,
	datad => \p1|regA|ALT_INV_Q\(4),
	dataf => \p1|fsm|ALT_INV_Mux27~0_combout\,
	cin => \p1|addsub0|Add0~10\,
	sumout => \p1|addsub0|Add0~33_sumout\,
	cout => \p1|addsub0|Add0~34\);

-- Location: LABCELL_X43_Y3_N48
\p1|addsub0|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~17_sumout\ = SUM(( \p1|regA|Q\(5) ) + ( !\p1|mux0|y[5]~26_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux27~0_combout\))) ) + ( \p1|addsub0|Add0~34\ ))
-- \p1|addsub0|Add0~18\ = CARRY(( \p1|regA|Q\(5) ) + ( !\p1|mux0|y[5]~26_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux27~0_combout\))) ) + ( \p1|addsub0|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001010010100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T2~q\,
	datab => \p1|regA|ALT_INV_Q\(5),
	datac => \p1|mux0|ALT_INV_y[5]~26_combout\,
	dataf => \p1|fsm|ALT_INV_Mux27~0_combout\,
	cin => \p1|addsub0|Add0~34\,
	sumout => \p1|addsub0|Add0~17_sumout\,
	cout => \p1|addsub0|Add0~18\);

-- Location: LABCELL_X43_Y3_N51
\p1|addsub0|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~29_sumout\ = SUM(( \p1|regA|Q\(6) ) + ( !\p1|mux0|y[6]~29_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux27~0_combout\))) ) + ( \p1|addsub0|Add0~18\ ))
-- \p1|addsub0|Add0~30\ = CARRY(( \p1|regA|Q\(6) ) + ( !\p1|mux0|y[6]~29_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux27~0_combout\))) ) + ( \p1|addsub0|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001010010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T2~q\,
	datac => \p1|mux0|ALT_INV_y[6]~29_combout\,
	datad => \p1|regA|ALT_INV_Q\(6),
	dataf => \p1|fsm|ALT_INV_Mux27~0_combout\,
	cin => \p1|addsub0|Add0~18\,
	sumout => \p1|addsub0|Add0~29_sumout\,
	cout => \p1|addsub0|Add0~30\);

-- Location: LABCELL_X43_Y3_N54
\p1|addsub0|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~25_sumout\ = SUM(( \p1|regA|Q\(7) ) + ( !\p1|mux0|y[7]~32_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux27~0_combout\))) ) + ( \p1|addsub0|Add0~30\ ))
-- \p1|addsub0|Add0~26\ = CARRY(( \p1|regA|Q\(7) ) + ( !\p1|mux0|y[7]~32_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux27~0_combout\))) ) + ( \p1|addsub0|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001010010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T2~q\,
	datac => \p1|mux0|ALT_INV_y[7]~32_combout\,
	datad => \p1|regA|ALT_INV_Q\(7),
	dataf => \p1|fsm|ALT_INV_Mux27~0_combout\,
	cin => \p1|addsub0|Add0~30\,
	sumout => \p1|addsub0|Add0~25_sumout\,
	cout => \p1|addsub0|Add0~26\);

-- Location: FF_X43_Y3_N55
\p1|regG|Q[7]~DUPLICATE\ : dffeas
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
	q => \p1|regG|Q[7]~DUPLICATE_q\);

-- Location: MLABCELL_X42_Y1_N6
\p1|mux0|y[3]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[3]~9_combout\ = ( \p1|fsm|y_Q.T3~DUPLICATE_q\ & ( (!\p1|ir0|Q[8]~DUPLICATE_q\ & ((\p1|ir0|Q[7]~DUPLICATE_q\) # (\p1|ir0|Q\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|ir0|ALT_INV_Q[8]~DUPLICATE_q\,
	datac => \p1|ir0|ALT_INV_Q\(6),
	datad => \p1|ir0|ALT_INV_Q[7]~DUPLICATE_q\,
	dataf => \p1|fsm|ALT_INV_y_Q.T3~DUPLICATE_q\,
	combout => \p1|mux0|y[3]~9_combout\);

-- Location: FF_X42_Y4_N8
\p1|ir0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m0|altsyncram_component|auto_generated|q_a\(1),
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|y_Q.TXX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(1));

-- Location: FF_X43_Y4_N7
\p1|ir0|Q[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m0|altsyncram_component|auto_generated|q_a\(0),
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|y_Q.TXX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q[0]~DUPLICATE_q\);

-- Location: LABCELL_X44_Y3_N39
\p1|dexY|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|dexY|Mux0~0_combout\ = ( \p1|ir0|Q[0]~DUPLICATE_q\ & ( (\p1|ir0|Q\(2) & \p1|ir0|Q\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|ir0|ALT_INV_Q\(2),
	datad => \p1|ir0|ALT_INV_Q\(1),
	dataf => \p1|ir0|ALT_INV_Q[0]~DUPLICATE_q\,
	combout => \p1|dexY|Mux0~0_combout\);

-- Location: FF_X42_Y4_N35
\p1|ir0|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m0|altsyncram_component|auto_generated|q_a\(5),
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|y_Q.TXX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(5));

-- Location: FF_X41_Y2_N10
\p1|regDout|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[8]~35_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|DoutIn~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regDout|Q\(8));

-- Location: M10K_X38_Y3_N0
\m0|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => "000000007D00078000000000000000000000003E0014500100000680014500101000680014500102000680014500103000680014500104000680014500105000",
	mem_init0 => "6800000000400003D001BC000D1001BE000D90003700001000580002700001000500000100048000000000000000000000000000000000000003E000000007000145001010006800001000400003D000640006800036000700005600078000430006800056000780003F0006800145001020006800002000400003D000640006800036000700005600078000310006800056000780002D0006800145001030006800003000400003D0006400068000240007000056000780001F0006800056000780001B0006800145001040006800004000400003D0006400068000120007000056000780000D00068000560007800009000680014500105000680000500040",
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

-- Location: FF_X42_Y4_N26
\p1|ir0|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m0|altsyncram_component|auto_generated|q_a\(4),
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|y_Q.TXX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(4));

-- Location: LABCELL_X43_Y4_N9
\p1|decX|Mux0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|decX|Mux0~7_combout\ = ( \p1|ir0|Q\(4) & ( \p1|ir0|Q\(3) & ( \p1|ir0|Q\(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|ir0|ALT_INV_Q\(5),
	datae => \p1|ir0|ALT_INV_Q\(4),
	dataf => \p1|ir0|ALT_INV_Q\(3),
	combout => \p1|decX|Mux0~7_combout\);

-- Location: LABCELL_X44_Y3_N12
\p1|fsm|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector8~0_combout\ = ( \p1|decX|Mux0~7_combout\ & ( (!\p1|ir0|Q\(7) & (\p1|ir0|Q\(6) & ((\p1|ir0|Q\(8))))) # (\p1|ir0|Q\(7) & (((\p1|dexY|Mux0~0_combout\ & !\p1|ir0|Q\(8))))) ) ) # ( !\p1|decX|Mux0~7_combout\ & ( (\p1|dexY|Mux0~0_combout\ & 
-- (\p1|ir0|Q\(7) & !\p1|ir0|Q\(8))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000011010100000000001101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(6),
	datab => \p1|dexY|ALT_INV_Mux0~0_combout\,
	datac => \p1|ir0|ALT_INV_Q\(7),
	datad => \p1|ir0|ALT_INV_Q\(8),
	dataf => \p1|decX|ALT_INV_Mux0~7_combout\,
	combout => \p1|fsm|Selector8~0_combout\);

-- Location: LABCELL_X44_Y3_N18
\p1|fsm|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Mux7~0_combout\ = ( \p1|fsm|Equal0~2_combout\ & ( \p1|decX|Mux0~7_combout\ & ( (!\p1|ir0|Q\(7) & (((\p1|ir0|Q\(6) & !\p1|ir0|Q\(8))) # (\p1|dexY|Mux0~0_combout\))) # (\p1|ir0|Q\(7) & (((!\p1|ir0|Q\(8))))) ) ) ) # ( !\p1|fsm|Equal0~2_combout\ & ( 
-- \p1|decX|Mux0~7_combout\ & ( (!\p1|ir0|Q\(6) & (((!\p1|ir0|Q\(8) & \p1|ir0|Q\(7))) # (\p1|dexY|Mux0~0_combout\))) # (\p1|ir0|Q\(6) & ((!\p1|ir0|Q\(8)) # ((!\p1|ir0|Q\(7) & \p1|dexY|Mux0~0_combout\)))) ) ) ) # ( \p1|fsm|Equal0~2_combout\ & ( 
-- !\p1|decX|Mux0~7_combout\ & ( (!\p1|ir0|Q\(7) & (((\p1|ir0|Q\(6) & !\p1|ir0|Q\(8))) # (\p1|dexY|Mux0~0_combout\))) ) ) ) # ( !\p1|fsm|Equal0~2_combout\ & ( !\p1|decX|Mux0~7_combout\ & ( (!\p1|ir0|Q\(6) & (\p1|dexY|Mux0~0_combout\ & ((!\p1|ir0|Q\(7)) # 
-- (\p1|ir0|Q\(8))))) # (\p1|ir0|Q\(6) & (!\p1|ir0|Q\(7) & ((!\p1|ir0|Q\(8)) # (\p1|dexY|Mux0~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011110010010000001111000001001100111111100100110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(6),
	datab => \p1|ir0|ALT_INV_Q\(8),
	datac => \p1|ir0|ALT_INV_Q\(7),
	datad => \p1|dexY|ALT_INV_Mux0~0_combout\,
	datae => \p1|fsm|ALT_INV_Equal0~2_combout\,
	dataf => \p1|decX|ALT_INV_Mux0~7_combout\,
	combout => \p1|fsm|Mux7~0_combout\);

-- Location: LABCELL_X44_Y3_N0
\p1|fsm|Selector8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector8~1_combout\ = ( \p1|fsm|Mux7~0_combout\ & ( (\p1|fsm|y_Q.T0~q\ & (!\p1|fsm|y_Q.T1~q\ & ((!\p1|fsm|Selector8~0_combout\) # (!\p1|fsm|y_Q.T2~q\)))) ) ) # ( !\p1|fsm|Mux7~0_combout\ & ( (\p1|fsm|y_Q.T0~q\ & ((!\p1|fsm|Selector8~0_combout\) # 
-- (!\p1|fsm|y_Q.T2~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101000100010101010100010001010000010000000101000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T0~q\,
	datab => \p1|fsm|ALT_INV_Selector8~0_combout\,
	datac => \p1|fsm|ALT_INV_y_Q.T1~q\,
	datad => \p1|fsm|ALT_INV_y_Q.T2~q\,
	dataf => \p1|fsm|ALT_INV_Mux7~0_combout\,
	combout => \p1|fsm|Selector8~1_combout\);

-- Location: FF_X43_Y3_N56
\p1|regG|Q[7]\ : dffeas
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
	q => \p1|regG|Q\(7));

-- Location: FF_X43_Y3_N47
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

-- Location: FF_X43_Y3_N53
\p1|regG|Q[6]~DUPLICATE\ : dffeas
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
	q => \p1|regG|Q[6]~DUPLICATE_q\);

-- Location: LABCELL_X43_Y3_N0
\p1|fsm|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Equal0~1_combout\ = ( !\p1|regG|Q[6]~DUPLICATE_q\ & ( (!\p1|regG|Q\(7) & !\p1|regG|Q\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|regG|ALT_INV_Q\(7),
	datad => \p1|regG|ALT_INV_Q\(4),
	dataf => \p1|regG|ALT_INV_Q[6]~DUPLICATE_q\,
	combout => \p1|fsm|Equal0~1_combout\);

-- Location: LABCELL_X43_Y3_N21
\p1|fsm|Selector5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector5~1_combout\ = ( \p1|fsm|Equal0~1_combout\ & ( \p1|ir0|Q\(6) & ( (!\p1|ir0|Q\(7) & (\p1|ir0|Q\(8) & \p1|fsm|y_Q.T1~q\)) ) ) ) # ( !\p1|fsm|Equal0~1_combout\ & ( \p1|ir0|Q\(6) & ( (!\p1|ir0|Q\(7) & (\p1|ir0|Q\(8) & \p1|fsm|y_Q.T1~q\)) ) ) ) 
-- # ( \p1|fsm|Equal0~1_combout\ & ( !\p1|ir0|Q\(6) & ( (\p1|fsm|y_Q.T1~q\ & ((!\p1|ir0|Q\(7)) # ((!\p1|ir0|Q\(8)) # (!\p1|fsm|Equal0~0_combout\)))) ) ) ) # ( !\p1|fsm|Equal0~1_combout\ & ( !\p1|ir0|Q\(6) & ( \p1|fsm|y_Q.T1~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111000000000001000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(7),
	datab => \p1|ir0|ALT_INV_Q\(8),
	datac => \p1|fsm|ALT_INV_Equal0~0_combout\,
	datad => \p1|fsm|ALT_INV_y_Q.T1~q\,
	datae => \p1|fsm|ALT_INV_Equal0~1_combout\,
	dataf => \p1|ir0|ALT_INV_Q\(6),
	combout => \p1|fsm|Selector5~1_combout\);

-- Location: MLABCELL_X42_Y4_N12
\p1|decX|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|decX|Mux0~2_combout\ = ( \p1|ir0|Q\(4) & ( (\p1|ir0|Q\(5) & !\p1|ir0|Q\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|ir0|ALT_INV_Q\(5),
	datad => \p1|ir0|ALT_INV_Q\(3),
	dataf => \p1|ir0|ALT_INV_Q\(4),
	combout => \p1|decX|Mux0~2_combout\);

-- Location: MLABCELL_X42_Y4_N45
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

-- Location: LABCELL_X43_Y4_N30
\p1|mux0|y[3]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[3]~39_combout\ = ( \p1|fsm|Selector5~0_combout\ & ( (!\p1|ir0|Q\(0) & ((!\p1|ir0|Q\(2)) # (!\p1|ir0|Q\(1)))) ) ) # ( !\p1|fsm|Selector5~0_combout\ & ( (!\p1|ir0|Q\(2)) # ((!\p1|ir0|Q\(1)) # (\p1|ir0|Q\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101111111011111110111111101111001000110010001100100011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(2),
	datab => \p1|ir0|ALT_INV_Q\(0),
	datac => \p1|ir0|ALT_INV_Q\(1),
	dataf => \p1|fsm|ALT_INV_Selector5~0_combout\,
	combout => \p1|mux0|y[3]~39_combout\);

-- Location: MLABCELL_X42_Y4_N30
\p1|fsm|Selector5~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector5~3_combout\ = ( !\p1|ir0|Q[8]~DUPLICATE_q\ & ( (\p1|ir0|Q\(6) & (\p1|ir0|Q[7]~DUPLICATE_q\ & \p1|fsm|y_Q.T1~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|ir0|ALT_INV_Q\(6),
	datac => \p1|ir0|ALT_INV_Q[7]~DUPLICATE_q\,
	datad => \p1|fsm|ALT_INV_y_Q.T1~q\,
	dataf => \p1|ir0|ALT_INV_Q[8]~DUPLICATE_q\,
	combout => \p1|fsm|Selector5~3_combout\);

-- Location: MLABCELL_X42_Y4_N15
\p1|fsm|Selector7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector7~1_combout\ = ( \p1|ir0|Q[7]~DUPLICATE_q\ & ( (!\p1|ir0|Q\(0) & (\p1|ir0|Q\(2) & \p1|ir0|Q\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(0),
	datab => \p1|ir0|ALT_INV_Q\(2),
	datac => \p1|ir0|ALT_INV_Q\(1),
	dataf => \p1|ir0|ALT_INV_Q[7]~DUPLICATE_q\,
	combout => \p1|fsm|Selector7~1_combout\);

-- Location: MLABCELL_X42_Y4_N36
\p1|fsm|DoutIn~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|DoutIn~0_combout\ = ( \p1|ir0|Q[8]~DUPLICATE_q\ & ( !\p1|ir0|Q[7]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \p1|ir0|ALT_INV_Q[7]~DUPLICATE_q\,
	dataf => \p1|ir0|ALT_INV_Q[8]~DUPLICATE_q\,
	combout => \p1|fsm|DoutIn~0_combout\);

-- Location: MLABCELL_X42_Y4_N18
\p1|fsm|Selector5~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector5~4_combout\ = ( \p1|ir0|Q[8]~DUPLICATE_q\ & ( (\p1|ir0|Q\(6) & (!\p1|ir0|Q[7]~DUPLICATE_q\ & \p1|fsm|y_Q.T2~q\)) ) ) # ( !\p1|ir0|Q[8]~DUPLICATE_q\ & ( (\p1|fsm|y_Q.T2~q\ & ((\p1|ir0|Q[7]~DUPLICATE_q\) # (\p1|ir0|Q\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011111100000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|ir0|ALT_INV_Q\(6),
	datac => \p1|ir0|ALT_INV_Q[7]~DUPLICATE_q\,
	datad => \p1|fsm|ALT_INV_y_Q.T2~q\,
	dataf => \p1|ir0|ALT_INV_Q[8]~DUPLICATE_q\,
	combout => \p1|fsm|Selector5~4_combout\);

-- Location: MLABCELL_X42_Y4_N57
\p1|fsm|Selector7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector7~2_combout\ = ( \p1|fsm|Selector5~4_combout\ & ( ((\p1|decX|Mux0~2_combout\ & ((\p1|fsm|DoutIn~0_combout\) # (\p1|fsm|Selector5~3_combout\)))) # (\p1|fsm|Selector7~1_combout\) ) ) # ( !\p1|fsm|Selector5~4_combout\ & ( 
-- (\p1|fsm|Selector5~3_combout\ & \p1|decX|Mux0~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100011111001111110001111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector5~3_combout\,
	datab => \p1|decX|ALT_INV_Mux0~2_combout\,
	datac => \p1|fsm|ALT_INV_Selector7~1_combout\,
	datad => \p1|fsm|ALT_INV_DoutIn~0_combout\,
	dataf => \p1|fsm|ALT_INV_Selector5~4_combout\,
	combout => \p1|fsm|Selector7~2_combout\);

-- Location: LABCELL_X43_Y3_N3
\p1|fsm|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Mux0~0_combout\ = ( \p1|ir0|Q\(6) & ( (\p1|ir0|Q\(8)) # (\p1|ir0|Q\(7)) ) ) # ( !\p1|ir0|Q\(6) & ( (!\p1|ir0|Q\(7)) # ((\p1|ir0|Q\(8) & ((!\p1|fsm|Equal0~0_combout\) # (!\p1|fsm|Equal0~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111010101110111011101001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(7),
	datab => \p1|ir0|ALT_INV_Q\(8),
	datac => \p1|fsm|ALT_INV_Equal0~0_combout\,
	datad => \p1|fsm|ALT_INV_Equal0~1_combout\,
	dataf => \p1|ir0|ALT_INV_Q\(6),
	combout => \p1|fsm|Mux0~0_combout\);

-- Location: MLABCELL_X42_Y4_N54
\p1|decX|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|decX|Mux0~1_combout\ = ( !\p1|ir0|Q\(4) & ( (\p1|ir0|Q\(5) & \p1|ir0|Q\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|ir0|ALT_INV_Q\(5),
	datad => \p1|ir0|ALT_INV_Q\(3),
	dataf => \p1|ir0|ALT_INV_Q\(4),
	combout => \p1|decX|Mux0~1_combout\);

-- Location: MLABCELL_X42_Y4_N6
\p1|fsm|Selector6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector6~1_combout\ = ( \p1|ir0|Q[7]~DUPLICATE_q\ & ( (\p1|ir0|Q\(2) & (\p1|ir0|Q\(0) & !\p1|ir0|Q\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|ir0|ALT_INV_Q\(2),
	datac => \p1|ir0|ALT_INV_Q\(0),
	datad => \p1|ir0|ALT_INV_Q\(1),
	dataf => \p1|ir0|ALT_INV_Q[7]~DUPLICATE_q\,
	combout => \p1|fsm|Selector6~1_combout\);

-- Location: MLABCELL_X42_Y4_N0
\p1|fsm|Selector6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector6~2_combout\ = ( \p1|fsm|Selector6~1_combout\ & ( ((\p1|fsm|Selector5~3_combout\ & \p1|decX|Mux0~1_combout\)) # (\p1|fsm|Selector5~4_combout\) ) ) # ( !\p1|fsm|Selector6~1_combout\ & ( (\p1|decX|Mux0~1_combout\ & 
-- (((\p1|fsm|DoutIn~0_combout\ & \p1|fsm|Selector5~4_combout\)) # (\p1|fsm|Selector5~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110111000000000011011100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_DoutIn~0_combout\,
	datab => \p1|fsm|ALT_INV_Selector5~3_combout\,
	datac => \p1|fsm|ALT_INV_Selector5~4_combout\,
	datad => \p1|decX|ALT_INV_Mux0~1_combout\,
	dataf => \p1|fsm|ALT_INV_Selector6~1_combout\,
	combout => \p1|fsm|Selector6~2_combout\);

-- Location: LABCELL_X43_Y4_N24
\p1|mux0|y[3]~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[3]~48_combout\ = ( !\p1|fsm|Mux0~0_combout\ & ( (!\p1|fsm|Selector7~2_combout\ & (!\p1|fsm|Selector6~2_combout\ & ((!\p1|fsm|Selector5~1_combout\) # ((!\p1|decX|Mux0~2_combout\ & !\p1|decX|Mux0~1_combout\))))) ) ) # ( \p1|fsm|Mux0~0_combout\ & 
-- ( ((!\p1|fsm|Selector7~2_combout\ & (!\p1|fsm|Selector6~2_combout\ & ((!\p1|fsm|Selector5~1_combout\) # (\p1|mux0|y[3]~39_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1110101000000000101011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector5~1_combout\,
	datab => \p1|decX|ALT_INV_Mux0~2_combout\,
	datac => \p1|mux0|ALT_INV_y[3]~39_combout\,
	datad => \p1|fsm|ALT_INV_Selector7~2_combout\,
	datae => \p1|fsm|ALT_INV_Mux0~0_combout\,
	dataf => \p1|fsm|ALT_INV_Selector6~2_combout\,
	datag => \p1|decX|ALT_INV_Mux0~1_combout\,
	combout => \p1|mux0|y[3]~48_combout\);

-- Location: MLABCELL_X42_Y4_N9
\p1|decX|Mux0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|decX|Mux0~5_combout\ = ( !\p1|ir0|Q\(4) & ( (!\p1|ir0|Q\(5) & \p1|ir0|Q\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(5),
	datad => \p1|ir0|ALT_INV_Q\(3),
	dataf => \p1|ir0|ALT_INV_Q\(4),
	combout => \p1|decX|Mux0~5_combout\);

-- Location: MLABCELL_X42_Y3_N30
\p1|fsm|Selector2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector2~1_combout\ = ( \p1|fsm|Selector2~0_combout\ & ( (\p1|fsm|Selector5~1_combout\ & ((!\p1|fsm|Mux0~0_combout\ & ((\p1|decX|Mux0~5_combout\))) # (\p1|fsm|Mux0~0_combout\ & (\p1|ir0|Q[0]~DUPLICATE_q\)))) ) ) # ( !\p1|fsm|Selector2~0_combout\ 
-- & ( (\p1|fsm|Selector5~1_combout\ & (\p1|decX|Mux0~5_combout\ & !\p1|fsm|Mux0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000101000100010000010100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector5~1_combout\,
	datab => \p1|ir0|ALT_INV_Q[0]~DUPLICATE_q\,
	datac => \p1|decX|ALT_INV_Mux0~5_combout\,
	datad => \p1|fsm|ALT_INV_Mux0~0_combout\,
	dataf => \p1|fsm|ALT_INV_Selector2~0_combout\,
	combout => \p1|fsm|Selector2~1_combout\);

-- Location: MLABCELL_X42_Y4_N51
\p1|decX|Mux0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|decX|Mux0~3_combout\ = ( \p1|ir0|Q\(4) & ( (!\p1|ir0|Q\(5) & !\p1|ir0|Q\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|ir0|ALT_INV_Q\(5),
	datad => \p1|ir0|ALT_INV_Q\(3),
	dataf => \p1|ir0|ALT_INV_Q\(4),
	combout => \p1|decX|Mux0~3_combout\);

-- Location: MLABCELL_X42_Y3_N36
\p1|fsm|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector3~0_combout\ = ( \p1|fsm|Selector5~1_combout\ & ( \p1|ir0|Q\(2) & ( (\p1|decX|Mux0~3_combout\ & !\p1|fsm|Mux0~0_combout\) ) ) ) # ( \p1|fsm|Selector5~1_combout\ & ( !\p1|ir0|Q\(2) & ( (!\p1|fsm|Mux0~0_combout\ & (\p1|decX|Mux0~3_combout\)) 
-- # (\p1|fsm|Mux0~0_combout\ & (((\p1|ir0|Q\(1) & !\p1|ir0|Q[0]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100110101000000000000000000000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|decX|ALT_INV_Mux0~3_combout\,
	datab => \p1|ir0|ALT_INV_Q\(1),
	datac => \p1|fsm|ALT_INV_Mux0~0_combout\,
	datad => \p1|ir0|ALT_INV_Q[0]~DUPLICATE_q\,
	datae => \p1|fsm|ALT_INV_Selector5~1_combout\,
	dataf => \p1|ir0|ALT_INV_Q\(2),
	combout => \p1|fsm|Selector3~0_combout\);

-- Location: MLABCELL_X42_Y4_N42
\p1|fsm|Selector3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector3~1_combout\ = ( \p1|ir0|Q[7]~DUPLICATE_q\ & ( (!\p1|ir0|Q\(2) & (\p1|ir0|Q\(1) & !\p1|ir0|Q[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(2),
	datab => \p1|ir0|ALT_INV_Q\(1),
	datac => \p1|ir0|ALT_INV_Q[0]~DUPLICATE_q\,
	dataf => \p1|ir0|ALT_INV_Q[7]~DUPLICATE_q\,
	combout => \p1|fsm|Selector3~1_combout\);

-- Location: MLABCELL_X42_Y4_N3
\p1|fsm|Selector3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector3~2_combout\ = ( \p1|decX|Mux0~3_combout\ & ( ((\p1|fsm|Selector5~4_combout\ & ((\p1|fsm|Selector3~1_combout\) # (\p1|fsm|DoutIn~0_combout\)))) # (\p1|fsm|Selector5~3_combout\) ) ) # ( !\p1|decX|Mux0~3_combout\ & ( 
-- (\p1|fsm|Selector3~1_combout\ & \p1|fsm|Selector5~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100110011011111110011001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_DoutIn~0_combout\,
	datab => \p1|fsm|ALT_INV_Selector5~3_combout\,
	datac => \p1|fsm|ALT_INV_Selector3~1_combout\,
	datad => \p1|fsm|ALT_INV_Selector5~4_combout\,
	dataf => \p1|decX|ALT_INV_Mux0~3_combout\,
	combout => \p1|fsm|Selector3~2_combout\);

-- Location: MLABCELL_X42_Y4_N21
\p1|fsm|Selector2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector2~2_combout\ = ( !\p1|ir0|Q\(1) & ( (\p1|ir0|Q[7]~DUPLICATE_q\ & (!\p1|ir0|Q\(2) & \p1|ir0|Q[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q[7]~DUPLICATE_q\,
	datac => \p1|ir0|ALT_INV_Q\(2),
	datad => \p1|ir0|ALT_INV_Q[0]~DUPLICATE_q\,
	dataf => \p1|ir0|ALT_INV_Q\(1),
	combout => \p1|fsm|Selector2~2_combout\);

-- Location: MLABCELL_X42_Y4_N27
\p1|fsm|Selector2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector2~3_combout\ = ( \p1|fsm|Selector5~4_combout\ & ( ((\p1|decX|Mux0~5_combout\ & ((\p1|fsm|DoutIn~0_combout\) # (\p1|fsm|Selector5~3_combout\)))) # (\p1|fsm|Selector2~2_combout\) ) ) # ( !\p1|fsm|Selector5~4_combout\ & ( 
-- (\p1|decX|Mux0~5_combout\ & \p1|fsm|Selector5~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001101010111011101110101011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector2~2_combout\,
	datab => \p1|decX|ALT_INV_Mux0~5_combout\,
	datac => \p1|fsm|ALT_INV_Selector5~3_combout\,
	datad => \p1|fsm|ALT_INV_DoutIn~0_combout\,
	dataf => \p1|fsm|ALT_INV_Selector5~4_combout\,
	combout => \p1|fsm|Selector2~3_combout\);

-- Location: MLABCELL_X42_Y3_N6
\p1|mux0|y[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[3]~3_combout\ = ( \p1|fsm|Selector2~3_combout\ & ( (!\p1|fsm|Selector3~0_combout\ & !\p1|fsm|Selector3~2_combout\) ) ) # ( !\p1|fsm|Selector2~3_combout\ & ( !\p1|fsm|Selector2~1_combout\ $ (((!\p1|fsm|Selector3~0_combout\ & 
-- !\p1|fsm|Selector3~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011001100001111001100110011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|fsm|ALT_INV_Selector2~1_combout\,
	datac => \p1|fsm|ALT_INV_Selector3~0_combout\,
	datad => \p1|fsm|ALT_INV_Selector3~2_combout\,
	dataf => \p1|fsm|ALT_INV_Selector2~3_combout\,
	combout => \p1|mux0|y[3]~3_combout\);

-- Location: MLABCELL_X42_Y3_N9
\p1|mux0|y[3]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[3]~43_combout\ = ( \p1|fsm|Selector5~0_combout\ & ( (!\p1|ir0|Q\(0)) # ((!\p1|ir0|Q\(2) & \p1|ir0|Q\(1))) ) ) # ( !\p1|fsm|Selector5~0_combout\ & ( (!\p1|ir0|Q\(2) & (\p1|ir0|Q\(1) & \p1|ir0|Q\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101011111111000010101111111100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(2),
	datac => \p1|ir0|ALT_INV_Q\(1),
	datad => \p1|ir0|ALT_INV_Q\(0),
	dataf => \p1|fsm|ALT_INV_Selector5~0_combout\,
	combout => \p1|mux0|y[3]~43_combout\);

-- Location: LABCELL_X41_Y4_N54
\p1|decX|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|decX|Mux0~0_combout\ = ( !\p1|ir0|Q\(3) & ( !\p1|ir0|Q\(4) & ( \p1|ir0|Q\(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|ir0|ALT_INV_Q\(5),
	datae => \p1|ir0|ALT_INV_Q\(3),
	dataf => \p1|ir0|ALT_INV_Q\(4),
	combout => \p1|decX|Mux0~0_combout\);

-- Location: MLABCELL_X42_Y4_N39
\p1|fsm|Selector5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector5~5_combout\ = ( !\p1|ir0|Q[0]~DUPLICATE_q\ & ( (!\p1|ir0|Q\(1) & (\p1|ir0|Q\(7) & \p1|ir0|Q\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|ir0|ALT_INV_Q\(1),
	datac => \p1|ir0|ALT_INV_Q\(7),
	datad => \p1|ir0|ALT_INV_Q\(2),
	dataf => \p1|ir0|ALT_INV_Q[0]~DUPLICATE_q\,
	combout => \p1|fsm|Selector5~5_combout\);

-- Location: MLABCELL_X42_Y4_N48
\p1|fsm|Selector5~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector5~6_combout\ = ( \p1|fsm|Selector5~5_combout\ & ( ((\p1|decX|Mux0~0_combout\ & \p1|fsm|Selector5~3_combout\)) # (\p1|fsm|Selector5~4_combout\) ) ) # ( !\p1|fsm|Selector5~5_combout\ & ( (\p1|decX|Mux0~0_combout\ & 
-- (((\p1|fsm|Selector5~4_combout\ & \p1|fsm|DoutIn~0_combout\)) # (\p1|fsm|Selector5~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010101000100010001010100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|decX|ALT_INV_Mux0~0_combout\,
	datab => \p1|fsm|ALT_INV_Selector5~3_combout\,
	datac => \p1|fsm|ALT_INV_Selector5~4_combout\,
	datad => \p1|fsm|ALT_INV_DoutIn~0_combout\,
	dataf => \p1|fsm|ALT_INV_Selector5~5_combout\,
	combout => \p1|fsm|Selector5~6_combout\);

-- Location: LABCELL_X43_Y4_N39
\p1|fsm|Selector4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector4~1_combout\ = ( \p1|ir0|Q\(7) & ( (!\p1|ir0|Q\(2) & (\p1|ir0|Q\(0) & \p1|ir0|Q\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(2),
	datab => \p1|ir0|ALT_INV_Q\(0),
	datac => \p1|ir0|ALT_INV_Q\(1),
	dataf => \p1|ir0|ALT_INV_Q\(7),
	combout => \p1|fsm|Selector4~1_combout\);

-- Location: LABCELL_X43_Y4_N48
\p1|fsm|Selector4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector4~2_combout\ = ( \p1|fsm|Selector5~3_combout\ & ( ((\p1|fsm|Selector5~4_combout\ & \p1|fsm|Selector4~1_combout\)) # (\p1|decX|Mux0~4_combout\) ) ) # ( !\p1|fsm|Selector5~3_combout\ & ( (\p1|fsm|Selector5~4_combout\ & 
-- (((\p1|decX|Mux0~4_combout\ & \p1|fsm|DoutIn~0_combout\)) # (\p1|fsm|Selector4~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110011000000010011001101010101011101110101010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|decX|ALT_INV_Mux0~4_combout\,
	datab => \p1|fsm|ALT_INV_Selector5~4_combout\,
	datac => \p1|fsm|ALT_INV_DoutIn~0_combout\,
	datad => \p1|fsm|ALT_INV_Selector4~1_combout\,
	dataf => \p1|fsm|ALT_INV_Selector5~3_combout\,
	combout => \p1|fsm|Selector4~2_combout\);

-- Location: LABCELL_X43_Y2_N18
\p1|mux0|y[3]~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[3]~44_combout\ = ( !\p1|fsm|Mux0~0_combout\ & ( (((\p1|fsm|Selector5~1_combout\ & ((\p1|decX|Mux0~0_combout\) # (\p1|decX|Mux0~4_combout\)))) # (\p1|fsm|Selector4~2_combout\)) # (\p1|fsm|Selector5~6_combout\) ) ) # ( \p1|fsm|Mux0~0_combout\ & ( 
-- ((((\p1|fsm|Selector5~1_combout\ & \p1|mux0|y[3]~43_combout\)) # (\p1|fsm|Selector4~2_combout\)) # (\p1|fsm|Selector5~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001010111111111000001011111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector5~1_combout\,
	datab => \p1|decX|ALT_INV_Mux0~4_combout\,
	datac => \p1|mux0|ALT_INV_y[3]~43_combout\,
	datad => \p1|fsm|ALT_INV_Selector5~6_combout\,
	datae => \p1|fsm|ALT_INV_Mux0~0_combout\,
	dataf => \p1|fsm|ALT_INV_Selector4~2_combout\,
	datag => \p1|decX|ALT_INV_Mux0~0_combout\,
	combout => \p1|mux0|y[3]~44_combout\);

-- Location: LABCELL_X43_Y4_N36
\p1|mux0|y[3]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[3]~40_combout\ = ( \p1|fsm|Selector2~0_combout\ & ( (!\p1|ir0|Q\(0) & ((!\p1|ir0|Q\(1)) # (\p1|ir0|Q\(2)))) ) ) # ( !\p1|fsm|Selector2~0_combout\ & ( ((!\p1|ir0|Q\(1)) # (\p1|ir0|Q\(0))) # (\p1|ir0|Q\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111110111111101111111011111000100110001001100010011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(2),
	datab => \p1|ir0|ALT_INV_Q\(0),
	datac => \p1|ir0|ALT_INV_Q\(1),
	dataf => \p1|fsm|ALT_INV_Selector2~0_combout\,
	combout => \p1|mux0|y[3]~40_combout\);

-- Location: LABCELL_X43_Y2_N24
\p1|mux0|y[3]~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[3]~56_combout\ = ( !\p1|fsm|Mux0~0_combout\ & ( (!\p1|fsm|Selector3~2_combout\ & (!\p1|fsm|Selector2~3_combout\ & ((!\p1|fsm|Selector5~1_combout\) # ((!\p1|decX|Mux0~5_combout\ & !\p1|decX|Mux0~3_combout\))))) ) ) # ( \p1|fsm|Mux0~0_combout\ & 
-- ( ((!\p1|fsm|Selector3~2_combout\ & (!\p1|fsm|Selector2~3_combout\ & ((!\p1|fsm|Selector5~1_combout\) # (\p1|mux0|y[3]~40_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1110110000000000110011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|decX|ALT_INV_Mux0~5_combout\,
	datab => \p1|fsm|ALT_INV_Selector5~1_combout\,
	datac => \p1|mux0|ALT_INV_y[3]~40_combout\,
	datad => \p1|fsm|ALT_INV_Selector3~2_combout\,
	datae => \p1|fsm|ALT_INV_Mux0~0_combout\,
	dataf => \p1|fsm|ALT_INV_Selector2~3_combout\,
	datag => \p1|decX|ALT_INV_Mux0~3_combout\,
	combout => \p1|mux0|y[3]~56_combout\);

-- Location: MLABCELL_X42_Y3_N24
\p1|mux0|y[3]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[3]~7_combout\ = ( \p1|mux0|y[3]~44_combout\ & ( \p1|mux0|y[3]~56_combout\ & ( (\p1|fsm|Selector1~0_combout\ & !\p1|mux0|y[3]~3_combout\) ) ) ) # ( !\p1|mux0|y[3]~44_combout\ & ( \p1|mux0|y[3]~56_combout\ & ( (!\p1|fsm|Selector8~1_combout\ & 
-- (\p1|fsm|Selector1~0_combout\ & ((!\p1|mux0|y[3]~3_combout\)))) # (\p1|fsm|Selector8~1_combout\ & (((\p1|fsm|Selector1~0_combout\ & !\p1|mux0|y[3]~3_combout\)) # (\p1|mux0|y[3]~48_combout\))) ) ) ) # ( \p1|mux0|y[3]~44_combout\ & ( 
-- !\p1|mux0|y[3]~56_combout\ & ( (\p1|fsm|Selector1~0_combout\ & !\p1|mux0|y[3]~3_combout\) ) ) ) # ( !\p1|mux0|y[3]~44_combout\ & ( !\p1|mux0|y[3]~56_combout\ & ( (\p1|fsm|Selector1~0_combout\ & ((!\p1|mux0|y[3]~3_combout\) # ((\p1|fsm|Selector8~1_combout\ 
-- & \p1|mux0|y[3]~48_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000001001100110000000000110111000001010011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector8~1_combout\,
	datab => \p1|fsm|ALT_INV_Selector1~0_combout\,
	datac => \p1|mux0|ALT_INV_y[3]~48_combout\,
	datad => \p1|mux0|ALT_INV_y[3]~3_combout\,
	datae => \p1|mux0|ALT_INV_y[3]~44_combout\,
	dataf => \p1|mux0|ALT_INV_y[3]~56_combout\,
	combout => \p1|mux0|y[3]~7_combout\);

-- Location: LABCELL_X43_Y4_N12
\p1|fsm|Selector4~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector4~3_combout\ = ( !\p1|fsm|Mux0~0_combout\ & ( ((((\p1|fsm|Selector5~1_combout\ & \p1|decX|Mux0~4_combout\)) # (\p1|fsm|Selector4~2_combout\))) ) ) # ( \p1|fsm|Mux0~0_combout\ & ( ((\p1|fsm|Selector5~1_combout\ & (\p1|ir0|Q\(1) & 
-- (\p1|ir0|Q\(0) & !\p1|ir0|Q\(2))))) # (\p1|fsm|Selector4~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100000101000000010000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector5~1_combout\,
	datab => \p1|ir0|ALT_INV_Q\(1),
	datac => \p1|ir0|ALT_INV_Q\(0),
	datad => \p1|ir0|ALT_INV_Q\(2),
	datae => \p1|fsm|ALT_INV_Mux0~0_combout\,
	dataf => \p1|fsm|ALT_INV_Selector4~2_combout\,
	datag => \p1|decX|ALT_INV_Mux0~4_combout\,
	combout => \p1|fsm|Selector4~3_combout\);

-- Location: LABCELL_X41_Y3_N9
\p1|fsm|Selector5~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector5~7_combout\ = ( \p1|fsm|Selector5~1_combout\ & ( !\p1|fsm|Selector5~6_combout\ & ( (!\p1|fsm|Mux0~0_combout\ & (((!\p1|decX|Mux0~0_combout\)))) # (\p1|fsm|Mux0~0_combout\ & ((!\p1|fsm|Selector5~0_combout\) # 
-- ((\p1|ir0|Q[0]~DUPLICATE_q\)))) ) ) ) # ( !\p1|fsm|Selector5~1_combout\ & ( !\p1|fsm|Selector5~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111100001011101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector5~0_combout\,
	datab => \p1|ir0|ALT_INV_Q[0]~DUPLICATE_q\,
	datac => \p1|decX|ALT_INV_Mux0~0_combout\,
	datad => \p1|fsm|ALT_INV_Mux0~0_combout\,
	datae => \p1|fsm|ALT_INV_Selector5~1_combout\,
	dataf => \p1|fsm|ALT_INV_Selector5~6_combout\,
	combout => \p1|fsm|Selector5~7_combout\);

-- Location: MLABCELL_X42_Y3_N0
\p1|fsm|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector6~0_combout\ = ( \p1|fsm|Selector5~1_combout\ & ( \p1|fsm|Selector5~0_combout\ & ( (!\p1|fsm|Mux0~0_combout\ & (\p1|decX|Mux0~1_combout\)) # (\p1|fsm|Mux0~0_combout\ & ((\p1|ir0|Q[0]~DUPLICATE_q\))) ) ) ) # ( \p1|fsm|Selector5~1_combout\ & 
-- ( !\p1|fsm|Selector5~0_combout\ & ( (\p1|decX|Mux0~1_combout\ & !\p1|fsm|Mux0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000000011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|decX|ALT_INV_Mux0~1_combout\,
	datac => \p1|fsm|ALT_INV_Mux0~0_combout\,
	datad => \p1|ir0|ALT_INV_Q[0]~DUPLICATE_q\,
	datae => \p1|fsm|ALT_INV_Selector5~1_combout\,
	dataf => \p1|fsm|ALT_INV_Selector5~0_combout\,
	combout => \p1|fsm|Selector6~0_combout\);

-- Location: LABCELL_X43_Y4_N0
\p1|fsm|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector7~0_combout\ = ( \p1|decX|Mux0~2_combout\ & ( \p1|fsm|Selector5~1_combout\ & ( (!\p1|fsm|Mux0~0_combout\) # ((\p1|ir0|Q\(2) & (!\p1|ir0|Q\(0) & \p1|ir0|Q\(1)))) ) ) ) # ( !\p1|decX|Mux0~2_combout\ & ( \p1|fsm|Selector5~1_combout\ & ( 
-- (\p1|ir0|Q\(2) & (!\p1|ir0|Q\(0) & (\p1|fsm|Mux0~0_combout\ & \p1|ir0|Q\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001001111000011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(2),
	datab => \p1|ir0|ALT_INV_Q\(0),
	datac => \p1|fsm|ALT_INV_Mux0~0_combout\,
	datad => \p1|ir0|ALT_INV_Q\(1),
	datae => \p1|decX|ALT_INV_Mux0~2_combout\,
	dataf => \p1|fsm|ALT_INV_Selector5~1_combout\,
	combout => \p1|fsm|Selector7~0_combout\);

-- Location: MLABCELL_X42_Y3_N54
\p1|mux0|y[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[3]~5_combout\ = ( \p1|fsm|Selector7~2_combout\ & ( \p1|fsm|Selector7~0_combout\ & ( (!\p1|fsm|Selector6~2_combout\ & (!\p1|fsm|Selector2~1_combout\ & (!\p1|fsm|Selector6~0_combout\ & !\p1|fsm|Selector2~3_combout\))) ) ) ) # ( 
-- !\p1|fsm|Selector7~2_combout\ & ( \p1|fsm|Selector7~0_combout\ & ( (!\p1|fsm|Selector6~2_combout\ & (!\p1|fsm|Selector2~1_combout\ & (!\p1|fsm|Selector6~0_combout\ & !\p1|fsm|Selector2~3_combout\))) ) ) ) # ( \p1|fsm|Selector7~2_combout\ & ( 
-- !\p1|fsm|Selector7~0_combout\ & ( (!\p1|fsm|Selector6~2_combout\ & (!\p1|fsm|Selector2~1_combout\ & (!\p1|fsm|Selector6~0_combout\ & !\p1|fsm|Selector2~3_combout\))) ) ) ) # ( !\p1|fsm|Selector7~2_combout\ & ( !\p1|fsm|Selector7~0_combout\ & ( 
-- (!\p1|fsm|Selector2~1_combout\ & !\p1|fsm|Selector2~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector6~2_combout\,
	datab => \p1|fsm|ALT_INV_Selector2~1_combout\,
	datac => \p1|fsm|ALT_INV_Selector6~0_combout\,
	datad => \p1|fsm|ALT_INV_Selector2~3_combout\,
	datae => \p1|fsm|ALT_INV_Selector7~2_combout\,
	dataf => \p1|fsm|ALT_INV_Selector7~0_combout\,
	combout => \p1|mux0|y[3]~5_combout\);

-- Location: LABCELL_X41_Y4_N45
\p1|mux0|y[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[3]~4_combout\ = ( !\p1|fsm|Selector7~0_combout\ & ( \p1|fsm|Selector6~0_combout\ & ( !\p1|fsm|Selector7~2_combout\ ) ) ) # ( \p1|fsm|Selector7~0_combout\ & ( !\p1|fsm|Selector6~0_combout\ & ( !\p1|fsm|Selector6~2_combout\ ) ) ) # ( 
-- !\p1|fsm|Selector7~0_combout\ & ( !\p1|fsm|Selector6~0_combout\ & ( !\p1|fsm|Selector7~2_combout\ $ (!\p1|fsm|Selector6~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000111111110000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|fsm|ALT_INV_Selector7~2_combout\,
	datad => \p1|fsm|ALT_INV_Selector6~2_combout\,
	datae => \p1|fsm|ALT_INV_Selector7~0_combout\,
	dataf => \p1|fsm|ALT_INV_Selector6~0_combout\,
	combout => \p1|mux0|y[3]~4_combout\);

-- Location: MLABCELL_X42_Y3_N18
\p1|mux0|y[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[3]~6_combout\ = ( \p1|mux0|y[3]~5_combout\ & ( \p1|mux0|y[3]~4_combout\ & ( (\p1|fsm|Selector8~1_combout\ & ((!\p1|mux0|y[3]~48_combout\ & (!\p1|fsm|Selector4~3_combout\ & \p1|fsm|Selector5~7_combout\)) # (\p1|mux0|y[3]~48_combout\ & 
-- ((!\p1|fsm|Selector4~3_combout\) # (\p1|fsm|Selector5~7_combout\))))) ) ) ) # ( \p1|mux0|y[3]~5_combout\ & ( !\p1|mux0|y[3]~4_combout\ & ( (!\p1|fsm|Selector8~1_combout\ & (((!\p1|fsm|Selector4~3_combout\ & \p1|fsm|Selector5~7_combout\)))) # 
-- (\p1|fsm|Selector8~1_combout\ & (\p1|mux0|y[3]~48_combout\ & (!\p1|fsm|Selector4~3_combout\ $ (\p1|fsm|Selector5~7_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100001010000100000000000000000001000001010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector8~1_combout\,
	datab => \p1|mux0|ALT_INV_y[3]~48_combout\,
	datac => \p1|fsm|ALT_INV_Selector4~3_combout\,
	datad => \p1|fsm|ALT_INV_Selector5~7_combout\,
	datae => \p1|mux0|ALT_INV_y[3]~5_combout\,
	dataf => \p1|mux0|ALT_INV_y[3]~4_combout\,
	combout => \p1|mux0|y[3]~6_combout\);

-- Location: MLABCELL_X42_Y3_N48
\p1|mux0|y[3]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[3]~10_combout\ = ( \p1|fsm|Selector1~0_combout\ & ( \p1|mux0|y[3]~6_combout\ & ( (!\p1|mux0|y[3]~9_combout\ & \p1|mux0|y[3]~7_combout\) ) ) ) # ( !\p1|fsm|Selector1~0_combout\ & ( \p1|mux0|y[3]~6_combout\ & ( (!\p1|mux0|y[3]~9_combout\ & 
-- \p1|mux0|y[3]~7_combout\) ) ) ) # ( \p1|fsm|Selector1~0_combout\ & ( !\p1|mux0|y[3]~6_combout\ & ( (!\p1|mux0|y[3]~9_combout\ & (\p1|mux0|y[3]~7_combout\ & \p1|mux0|y[3]~3_combout\)) ) ) ) # ( !\p1|fsm|Selector1~0_combout\ & ( !\p1|mux0|y[3]~6_combout\ & 
-- ( (!\p1|mux0|y[3]~9_combout\ & \p1|mux0|y[3]~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000000000000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[3]~9_combout\,
	datac => \p1|mux0|ALT_INV_y[3]~7_combout\,
	datad => \p1|mux0|ALT_INV_y[3]~3_combout\,
	datae => \p1|fsm|ALT_INV_Selector1~0_combout\,
	dataf => \p1|mux0|ALT_INV_y[3]~6_combout\,
	combout => \p1|mux0|y[3]~10_combout\);

-- Location: LABCELL_X44_Y2_N45
\p1|reg2|Q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg2|Q[7]~feeder_combout\ = ( \p1|mux0|y[7]~32_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[7]~32_combout\,
	combout => \p1|reg2|Q[7]~feeder_combout\);

-- Location: MLABCELL_X42_Y1_N51
\p1|fsm|Selector13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector13~1_combout\ = ( \p1|fsm|Selector0~0_combout\ & ( \p1|decX|Mux0~3_combout\ & ( ((!\p1|ir0|Q[7]~DUPLICATE_q\ & (!\p1|ir0|Q[8]~DUPLICATE_q\)) # (\p1|ir0|Q[7]~DUPLICATE_q\ & (\p1|ir0|Q[8]~DUPLICATE_q\ & !\p1|fsm|Equal0~2_combout\))) # 
-- (\p1|fsm|Selector13~0_combout\) ) ) ) # ( !\p1|fsm|Selector0~0_combout\ & ( \p1|decX|Mux0~3_combout\ & ( \p1|fsm|Selector13~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100111011011110110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q[7]~DUPLICATE_q\,
	datab => \p1|fsm|ALT_INV_Selector13~0_combout\,
	datac => \p1|ir0|ALT_INV_Q[8]~DUPLICATE_q\,
	datad => \p1|fsm|ALT_INV_Equal0~2_combout\,
	datae => \p1|fsm|ALT_INV_Selector0~0_combout\,
	dataf => \p1|decX|ALT_INV_Mux0~3_combout\,
	combout => \p1|fsm|Selector13~1_combout\);

-- Location: FF_X44_Y2_N46
\p1|reg2|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg2|Q[7]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q\(7));

-- Location: LABCELL_X43_Y4_N42
\p1|fsm|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector4~0_combout\ = ( \p1|decX|Mux0~4_combout\ & ( \p1|fsm|Selector5~1_combout\ & ( (!\p1|fsm|Mux0~0_combout\) # ((!\p1|ir0|Q\(2) & (\p1|ir0|Q\(1) & \p1|ir0|Q\(0)))) ) ) ) # ( !\p1|decX|Mux0~4_combout\ & ( \p1|fsm|Selector5~1_combout\ & ( 
-- (!\p1|ir0|Q\(2) & (\p1|ir0|Q\(1) & (\p1|fsm|Mux0~0_combout\ & \p1|ir0|Q\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000101111000011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(2),
	datab => \p1|ir0|ALT_INV_Q\(1),
	datac => \p1|fsm|ALT_INV_Mux0~0_combout\,
	datad => \p1|ir0|ALT_INV_Q\(0),
	datae => \p1|decX|ALT_INV_Mux0~4_combout\,
	dataf => \p1|fsm|ALT_INV_Selector5~1_combout\,
	combout => \p1|fsm|Selector4~0_combout\);

-- Location: MLABCELL_X42_Y3_N42
\p1|mux0|y[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[3]~2_combout\ = ( \p1|fsm|Selector4~2_combout\ & ( \p1|fsm|Selector4~0_combout\ & ( (!\p1|fsm|Selector2~1_combout\ & !\p1|fsm|Selector2~3_combout\) ) ) ) # ( !\p1|fsm|Selector4~2_combout\ & ( \p1|fsm|Selector4~0_combout\ & ( 
-- (!\p1|fsm|Selector2~1_combout\ & !\p1|fsm|Selector2~3_combout\) ) ) ) # ( \p1|fsm|Selector4~2_combout\ & ( !\p1|fsm|Selector4~0_combout\ & ( (!\p1|fsm|Selector2~1_combout\ & !\p1|fsm|Selector2~3_combout\) ) ) ) # ( !\p1|fsm|Selector4~2_combout\ & ( 
-- !\p1|fsm|Selector4~0_combout\ & ( (!\p1|fsm|Selector2~1_combout\ & (!\p1|fsm|Selector2~3_combout\ & ((\p1|fsm|Selector3~2_combout\) # (\p1|fsm|Selector3~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011000000110000001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector3~0_combout\,
	datab => \p1|fsm|ALT_INV_Selector2~1_combout\,
	datac => \p1|fsm|ALT_INV_Selector2~3_combout\,
	datad => \p1|fsm|ALT_INV_Selector3~2_combout\,
	datae => \p1|fsm|ALT_INV_Selector4~2_combout\,
	dataf => \p1|fsm|ALT_INV_Selector4~0_combout\,
	combout => \p1|mux0|y[3]~2_combout\);

-- Location: FF_X43_Y4_N4
\p1|reg3|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[7]~32_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(7));

-- Location: MLABCELL_X42_Y1_N54
\p1|fsm|Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector12~0_combout\ = ( \p1|ir0|Q[7]~DUPLICATE_q\ & ( \p1|fsm|Selector13~0_combout\ & ( \p1|decX|Mux0~5_combout\ ) ) ) # ( !\p1|ir0|Q[7]~DUPLICATE_q\ & ( \p1|fsm|Selector13~0_combout\ & ( \p1|decX|Mux0~5_combout\ ) ) ) # ( 
-- \p1|ir0|Q[7]~DUPLICATE_q\ & ( !\p1|fsm|Selector13~0_combout\ & ( (\p1|fsm|Selector0~0_combout\ & (\p1|ir0|Q[8]~DUPLICATE_q\ & (!\p1|fsm|Equal0~2_combout\ & \p1|decX|Mux0~5_combout\))) ) ) ) # ( !\p1|ir0|Q[7]~DUPLICATE_q\ & ( !\p1|fsm|Selector13~0_combout\ 
-- & ( (\p1|fsm|Selector0~0_combout\ & (!\p1|ir0|Q[8]~DUPLICATE_q\ & \p1|decX|Mux0~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000001000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector0~0_combout\,
	datab => \p1|ir0|ALT_INV_Q[8]~DUPLICATE_q\,
	datac => \p1|fsm|ALT_INV_Equal0~2_combout\,
	datad => \p1|decX|ALT_INV_Mux0~5_combout\,
	datae => \p1|ir0|ALT_INV_Q[7]~DUPLICATE_q\,
	dataf => \p1|fsm|ALT_INV_Selector13~0_combout\,
	combout => \p1|fsm|Selector12~0_combout\);

-- Location: FF_X44_Y3_N44
\p1|reg1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[7]~32_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(7));

-- Location: MLABCELL_X45_Y3_N0
\p1|reg4|Q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg4|Q[7]~feeder_combout\ = ( \p1|mux0|y[7]~32_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[7]~32_combout\,
	combout => \p1|reg4|Q[7]~feeder_combout\);

-- Location: MLABCELL_X42_Y1_N48
\p1|fsm|Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector15~0_combout\ = ( \p1|fsm|Selector0~0_combout\ & ( \p1|decX|Mux0~0_combout\ & ( ((!\p1|ir0|Q[7]~DUPLICATE_q\ & ((!\p1|ir0|Q[8]~DUPLICATE_q\))) # (\p1|ir0|Q[7]~DUPLICATE_q\ & (!\p1|fsm|Equal0~2_combout\ & \p1|ir0|Q[8]~DUPLICATE_q\))) # 
-- (\p1|fsm|Selector13~0_combout\) ) ) ) # ( !\p1|fsm|Selector0~0_combout\ & ( \p1|decX|Mux0~0_combout\ & ( \p1|fsm|Selector13~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100111011101101110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q[7]~DUPLICATE_q\,
	datab => \p1|fsm|ALT_INV_Selector13~0_combout\,
	datac => \p1|fsm|ALT_INV_Equal0~2_combout\,
	datad => \p1|ir0|ALT_INV_Q[8]~DUPLICATE_q\,
	datae => \p1|fsm|ALT_INV_Selector0~0_combout\,
	dataf => \p1|decX|ALT_INV_Mux0~0_combout\,
	combout => \p1|fsm|Selector15~0_combout\);

-- Location: FF_X45_Y3_N2
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

-- Location: LABCELL_X41_Y3_N39
\p1|mux0|y[3]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[3]~36_combout\ = ( !\p1|decX|Mux0~1_combout\ & ( !\p1|decX|Mux0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \p1|decX|ALT_INV_Mux0~1_combout\,
	dataf => \p1|decX|ALT_INV_Mux0~0_combout\,
	combout => \p1|mux0|y[3]~36_combout\);

-- Location: LABCELL_X41_Y3_N48
\p1|mux0|y[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[3]~1_combout\ = ( !\p1|fsm|Selector5~6_combout\ & ( !\p1|fsm|Selector6~2_combout\ & ( (!\p1|fsm|Selector5~1_combout\) # ((!\p1|fsm|Mux0~0_combout\ & ((\p1|mux0|y[3]~36_combout\))) # (\p1|fsm|Mux0~0_combout\ & (!\p1|fsm|Selector5~0_combout\))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101011111110000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector5~1_combout\,
	datab => \p1|fsm|ALT_INV_Mux0~0_combout\,
	datac => \p1|fsm|ALT_INV_Selector5~0_combout\,
	datad => \p1|mux0|ALT_INV_y[3]~36_combout\,
	datae => \p1|fsm|ALT_INV_Selector5~6_combout\,
	dataf => \p1|fsm|ALT_INV_Selector6~2_combout\,
	combout => \p1|mux0|y[3]~1_combout\);

-- Location: LABCELL_X43_Y2_N30
\p1|pc0|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|pc0|Add0~1_sumout\ = SUM(( \p1|pc0|v\(0) ) + ( VCC ) + ( !VCC ))
-- \p1|pc0|Add0~2\ = CARRY(( \p1|pc0|v\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \p1|pc0|ALT_INV_v\(0),
	cin => GND,
	sumout => \p1|pc0|Add0~1_sumout\,
	cout => \p1|pc0|Add0~2\);

-- Location: LABCELL_X43_Y2_N51
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

-- Location: LABCELL_X43_Y2_N54
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

-- Location: LABCELL_X41_Y2_N36
\p1|fsm|Selector10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector10~1_combout\ = ( \p1|ir0|Q[8]~DUPLICATE_q\ & ( !\p1|fsm|Selector10~0_combout\ ) ) # ( !\p1|ir0|Q[8]~DUPLICATE_q\ & ( !\p1|fsm|Selector10~0_combout\ & ( (!\p1|fsm|y_Q.T1~q\) # ((!\p1|ir0|Q\(6)) # (\p1|ir0|Q[7]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101111111011111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T1~q\,
	datab => \p1|ir0|ALT_INV_Q[7]~DUPLICATE_q\,
	datac => \p1|ir0|ALT_INV_Q\(6),
	datae => \p1|ir0|ALT_INV_Q[8]~DUPLICATE_q\,
	dataf => \p1|fsm|ALT_INV_Selector10~0_combout\,
	combout => \p1|fsm|Selector10~1_combout\);

-- Location: MLABCELL_X42_Y1_N18
\p1|fsm|Selector14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector14~1_combout\ = ( \p1|ir0|Q[7]~DUPLICATE_q\ & ( \p1|fsm|y_Q.T3~DUPLICATE_q\ & ( (!\p1|ir0|Q[8]~DUPLICATE_q\) # ((!\p1|fsm|Equal0~2_combout\ & (!\p1|ir0|Q\(6) & \p1|fsm|y_Q.T1~q\))) ) ) ) # ( !\p1|ir0|Q[7]~DUPLICATE_q\ & ( 
-- \p1|fsm|y_Q.T3~DUPLICATE_q\ & ( (!\p1|ir0|Q[8]~DUPLICATE_q\ & ((\p1|fsm|y_Q.T1~q\) # (\p1|ir0|Q\(6)))) # (\p1|ir0|Q[8]~DUPLICATE_q\ & (!\p1|ir0|Q\(6))) ) ) ) # ( \p1|ir0|Q[7]~DUPLICATE_q\ & ( !\p1|fsm|y_Q.T3~DUPLICATE_q\ & ( (!\p1|fsm|Equal0~2_combout\ & 
-- (\p1|ir0|Q[8]~DUPLICATE_q\ & (!\p1|ir0|Q\(6) & \p1|fsm|y_Q.T1~q\))) ) ) ) # ( !\p1|ir0|Q[7]~DUPLICATE_q\ & ( !\p1|fsm|y_Q.T3~DUPLICATE_q\ & ( (!\p1|ir0|Q[8]~DUPLICATE_q\ & (!\p1|ir0|Q\(6) & \p1|fsm|y_Q.T1~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000000010000000111100111111001100110011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Equal0~2_combout\,
	datab => \p1|ir0|ALT_INV_Q[8]~DUPLICATE_q\,
	datac => \p1|ir0|ALT_INV_Q\(6),
	datad => \p1|fsm|ALT_INV_y_Q.T1~q\,
	datae => \p1|ir0|ALT_INV_Q[7]~DUPLICATE_q\,
	dataf => \p1|fsm|ALT_INV_y_Q.T3~DUPLICATE_q\,
	combout => \p1|fsm|Selector14~1_combout\);

-- Location: LABCELL_X44_Y2_N0
\p1|pc0|v[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|pc0|v[0]~3_combout\ = ( \p1|decX|Mux0~7_combout\ & ( \p1|fsm|Selector10~1_combout\ & ( \p1|fsm|Selector14~1_combout\ ) ) ) # ( \p1|decX|Mux0~7_combout\ & ( !\p1|fsm|Selector10~1_combout\ ) ) # ( !\p1|decX|Mux0~7_combout\ & ( 
-- !\p1|fsm|Selector10~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|fsm|ALT_INV_Selector14~1_combout\,
	datae => \p1|decX|ALT_INV_Mux0~7_combout\,
	dataf => \p1|fsm|ALT_INV_Selector10~1_combout\,
	combout => \p1|pc0|v[0]~3_combout\);

-- Location: FF_X43_Y2_N55
\p1|pc0|v[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|pc0|Add0~33_sumout\,
	asdata => \p1|mux0|y[8]~35_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sclr => \p1|pc0|v[0]~2_combout\,
	sload => \p1|fsm|Selector10~1_combout\,
	ena => \p1|pc0|v[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|pc0|v\(8));

-- Location: FF_X43_Y2_N34
\p1|pc0|v[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|pc0|Add0~5_sumout\,
	asdata => \p1|mux0|y[1]~14_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sclr => \p1|pc0|v[0]~2_combout\,
	sload => \p1|fsm|Selector10~1_combout\,
	ena => \p1|pc0|v[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|pc0|v[1]~DUPLICATE_q\);

-- Location: LABCELL_X44_Y2_N27
\p1|pc0|v[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|pc0|v[0]~0_combout\ = ( \p1|pc0|v[1]~DUPLICATE_q\ & ( \p1|pc0|v\(0) & ( (\p1|pc0|v\(3) & \p1|pc0|v\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|pc0|ALT_INV_v\(3),
	datad => \p1|pc0|ALT_INV_v\(2),
	datae => \p1|pc0|ALT_INV_v[1]~DUPLICATE_q\,
	dataf => \p1|pc0|ALT_INV_v\(0),
	combout => \p1|pc0|v[0]~0_combout\);

-- Location: LABCELL_X44_Y2_N33
\p1|pc0|v[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|pc0|v[0]~1_combout\ = ( \p1|pc0|v[0]~0_combout\ & ( !\p1|fsm|Selector10~1_combout\ & ( (\p1|pc0|v\(5) & \p1|pc0|v\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|pc0|ALT_INV_v\(5),
	datac => \p1|pc0|ALT_INV_v\(4),
	datae => \p1|pc0|ALT_INV_v[0]~0_combout\,
	dataf => \p1|fsm|ALT_INV_Selector10~1_combout\,
	combout => \p1|pc0|v[0]~1_combout\);

-- Location: LABCELL_X44_Y2_N18
\p1|pc0|v[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|pc0|v[0]~2_combout\ = ( \p1|pc0|v[0]~1_combout\ & ( (!\p1|pc0|v\(7) & (\p1|pc0|v\(6) & !\p1|pc0|v\(8))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|pc0|ALT_INV_v\(7),
	datab => \p1|pc0|ALT_INV_v\(6),
	datac => \p1|pc0|ALT_INV_v\(8),
	dataf => \p1|pc0|ALT_INV_v[0]~1_combout\,
	combout => \p1|pc0|v[0]~2_combout\);

-- Location: FF_X43_Y2_N31
\p1|pc0|v[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|pc0|Add0~1_sumout\,
	asdata => \p1|mux0|y[0]~11_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sclr => \p1|pc0|v[0]~2_combout\,
	sload => \p1|fsm|Selector10~1_combout\,
	ena => \p1|pc0|v[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|pc0|v\(0));

-- Location: LABCELL_X43_Y2_N33
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

-- Location: FF_X43_Y2_N35
\p1|pc0|v[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|pc0|Add0~5_sumout\,
	asdata => \p1|mux0|y[1]~14_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sclr => \p1|pc0|v[0]~2_combout\,
	sload => \p1|fsm|Selector10~1_combout\,
	ena => \p1|pc0|v[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|pc0|v\(1));

-- Location: LABCELL_X43_Y2_N36
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

-- Location: FF_X43_Y2_N37
\p1|pc0|v[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|pc0|Add0~9_sumout\,
	asdata => \p1|mux0|y[2]~17_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sclr => \p1|pc0|v[0]~2_combout\,
	sload => \p1|fsm|Selector10~1_combout\,
	ena => \p1|pc0|v[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|pc0|v\(2));

-- Location: LABCELL_X43_Y2_N39
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

-- Location: FF_X43_Y2_N40
\p1|pc0|v[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|pc0|Add0~13_sumout\,
	asdata => \p1|mux0|y[3]~20_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sclr => \p1|pc0|v[0]~2_combout\,
	sload => \p1|fsm|Selector10~1_combout\,
	ena => \p1|pc0|v[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|pc0|v\(3));

-- Location: LABCELL_X43_Y2_N42
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

-- Location: FF_X43_Y2_N43
\p1|pc0|v[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|pc0|Add0~17_sumout\,
	asdata => \p1|mux0|y[4]~23_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sclr => \p1|pc0|v[0]~2_combout\,
	sload => \p1|fsm|Selector10~1_combout\,
	ena => \p1|pc0|v[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|pc0|v\(4));

-- Location: LABCELL_X43_Y2_N45
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

-- Location: FF_X43_Y2_N46
\p1|pc0|v[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|pc0|Add0~21_sumout\,
	asdata => \p1|mux0|y[5]~26_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sclr => \p1|pc0|v[0]~2_combout\,
	sload => \p1|fsm|Selector10~1_combout\,
	ena => \p1|pc0|v[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|pc0|v\(5));

-- Location: LABCELL_X43_Y2_N48
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

-- Location: FF_X43_Y2_N49
\p1|pc0|v[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|pc0|Add0~25_sumout\,
	asdata => \p1|mux0|y[6]~29_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sclr => \p1|pc0|v[0]~2_combout\,
	sload => \p1|fsm|Selector10~1_combout\,
	ena => \p1|pc0|v[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|pc0|v\(6));

-- Location: FF_X43_Y2_N52
\p1|pc0|v[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|pc0|Add0~29_sumout\,
	asdata => \p1|mux0|y[7]~32_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sclr => \p1|pc0|v[0]~2_combout\,
	sload => \p1|fsm|Selector10~1_combout\,
	ena => \p1|pc0|v[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|pc0|v\(7));

-- Location: MLABCELL_X42_Y1_N36
\p1|fsm|Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector16~0_combout\ = ( \p1|fsm|Selector0~0_combout\ & ( \p1|decX|Mux0~1_combout\ & ( ((!\p1|ir0|Q[7]~DUPLICATE_q\ & (!\p1|ir0|Q[8]~DUPLICATE_q\)) # (\p1|ir0|Q[7]~DUPLICATE_q\ & (\p1|ir0|Q[8]~DUPLICATE_q\ & !\p1|fsm|Equal0~2_combout\))) # 
-- (\p1|fsm|Selector13~0_combout\) ) ) ) # ( !\p1|fsm|Selector0~0_combout\ & ( \p1|decX|Mux0~1_combout\ & ( \p1|fsm|Selector13~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111111001100011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q[7]~DUPLICATE_q\,
	datab => \p1|ir0|ALT_INV_Q[8]~DUPLICATE_q\,
	datac => \p1|fsm|ALT_INV_Equal0~2_combout\,
	datad => \p1|fsm|ALT_INV_Selector13~0_combout\,
	datae => \p1|fsm|ALT_INV_Selector0~0_combout\,
	dataf => \p1|decX|ALT_INV_Mux0~1_combout\,
	combout => \p1|fsm|Selector16~0_combout\);

-- Location: FF_X45_Y3_N44
\p1|reg5|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[7]~32_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(7));

-- Location: MLABCELL_X42_Y1_N3
\p1|fsm|Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector17~0_combout\ = ( \p1|fsm|Selector0~0_combout\ & ( \p1|decX|Mux0~2_combout\ & ( ((!\p1|ir0|Q[7]~DUPLICATE_q\ & (!\p1|ir0|Q[8]~DUPLICATE_q\)) # (\p1|ir0|Q[7]~DUPLICATE_q\ & (\p1|ir0|Q[8]~DUPLICATE_q\ & !\p1|fsm|Equal0~2_combout\))) # 
-- (\p1|fsm|Selector13~0_combout\) ) ) ) # ( !\p1|fsm|Selector0~0_combout\ & ( \p1|decX|Mux0~2_combout\ & ( \p1|fsm|Selector13~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011111001111110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q[7]~DUPLICATE_q\,
	datab => \p1|ir0|ALT_INV_Q[8]~DUPLICATE_q\,
	datac => \p1|fsm|ALT_INV_Selector13~0_combout\,
	datad => \p1|fsm|ALT_INV_Equal0~2_combout\,
	datae => \p1|fsm|ALT_INV_Selector0~0_combout\,
	dataf => \p1|decX|ALT_INV_Mux0~2_combout\,
	combout => \p1|fsm|Selector17~0_combout\);

-- Location: FF_X44_Y3_N50
\p1|reg6|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[7]~32_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(7));

-- Location: MLABCELL_X42_Y3_N33
\p1|fsm|Selector5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector5~2_combout\ = ( \p1|decX|Mux0~0_combout\ & ( (\p1|fsm|Selector5~1_combout\ & ((!\p1|fsm|Mux0~0_combout\) # ((!\p1|ir0|Q[0]~DUPLICATE_q\ & \p1|fsm|Selector5~0_combout\)))) ) ) # ( !\p1|decX|Mux0~0_combout\ & ( (\p1|fsm|Selector5~1_combout\ 
-- & (!\p1|ir0|Q[0]~DUPLICATE_q\ & (\p1|fsm|Selector5~0_combout\ & \p1|fsm|Mux0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010001010101000001000101010100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector5~1_combout\,
	datab => \p1|ir0|ALT_INV_Q[0]~DUPLICATE_q\,
	datac => \p1|fsm|ALT_INV_Selector5~0_combout\,
	datad => \p1|fsm|ALT_INV_Mux0~0_combout\,
	dataf => \p1|decX|ALT_INV_Mux0~0_combout\,
	combout => \p1|fsm|Selector5~2_combout\);

-- Location: MLABCELL_X42_Y2_N48
\p1|mux0|y[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[3]~0_combout\ = ( !\p1|fsm|Selector5~2_combout\ & ( \p1|fsm|Selector7~0_combout\ & ( !\p1|fsm|Selector5~6_combout\ ) ) ) # ( !\p1|fsm|Selector5~2_combout\ & ( !\p1|fsm|Selector7~0_combout\ & ( (!\p1|fsm|Selector5~6_combout\ & 
-- (((\p1|fsm|Selector6~0_combout\) # (\p1|fsm|Selector6~2_combout\)) # (\p1|fsm|Selector7~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101010101010000000000000000010101010101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector5~6_combout\,
	datab => \p1|fsm|ALT_INV_Selector7~2_combout\,
	datac => \p1|fsm|ALT_INV_Selector6~2_combout\,
	datad => \p1|fsm|ALT_INV_Selector6~0_combout\,
	datae => \p1|fsm|ALT_INV_Selector5~2_combout\,
	dataf => \p1|fsm|ALT_INV_Selector7~0_combout\,
	combout => \p1|mux0|y[3]~0_combout\);

-- Location: LABCELL_X44_Y3_N48
\p1|mux0|y[7]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[7]~30_combout\ = ( \p1|reg6|Q\(7) & ( \p1|mux0|y[3]~0_combout\ & ( (\p1|reg5|Q\(7)) # (\p1|mux0|y[3]~1_combout\) ) ) ) # ( !\p1|reg6|Q\(7) & ( \p1|mux0|y[3]~0_combout\ & ( (!\p1|mux0|y[3]~1_combout\ & \p1|reg5|Q\(7)) ) ) ) # ( \p1|reg6|Q\(7) & 
-- ( !\p1|mux0|y[3]~0_combout\ & ( (!\p1|mux0|y[3]~1_combout\ & (\p1|reg4|Q\(7))) # (\p1|mux0|y[3]~1_combout\ & ((\p1|pc0|v\(7)))) ) ) ) # ( !\p1|reg6|Q\(7) & ( !\p1|mux0|y[3]~0_combout\ & ( (!\p1|mux0|y[3]~1_combout\ & (\p1|reg4|Q\(7))) # 
-- (\p1|mux0|y[3]~1_combout\ & ((\p1|pc0|v\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011100000000110011000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg4|ALT_INV_Q\(7),
	datab => \p1|mux0|ALT_INV_y[3]~1_combout\,
	datac => \p1|pc0|ALT_INV_v\(7),
	datad => \p1|reg5|ALT_INV_Q\(7),
	datae => \p1|reg6|ALT_INV_Q\(7),
	dataf => \p1|mux0|ALT_INV_y[3]~0_combout\,
	combout => \p1|mux0|y[7]~30_combout\);

-- Location: LABCELL_X44_Y3_N42
\p1|mux0|y[7]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[7]~31_combout\ = ( \p1|reg1|Q\(7) & ( \p1|mux0|y[7]~30_combout\ & ( (!\p1|mux0|y[3]~2_combout\) # ((!\p1|mux0|y[3]~56_combout\ & (\p1|reg2|Q\(7))) # (\p1|mux0|y[3]~56_combout\ & ((\p1|reg3|Q\(7))))) ) ) ) # ( !\p1|reg1|Q\(7) & ( 
-- \p1|mux0|y[7]~30_combout\ & ( (!\p1|mux0|y[3]~2_combout\ & (((\p1|mux0|y[3]~56_combout\)))) # (\p1|mux0|y[3]~2_combout\ & ((!\p1|mux0|y[3]~56_combout\ & (\p1|reg2|Q\(7))) # (\p1|mux0|y[3]~56_combout\ & ((\p1|reg3|Q\(7)))))) ) ) ) # ( \p1|reg1|Q\(7) & ( 
-- !\p1|mux0|y[7]~30_combout\ & ( (!\p1|mux0|y[3]~2_combout\ & (((!\p1|mux0|y[3]~56_combout\)))) # (\p1|mux0|y[3]~2_combout\ & ((!\p1|mux0|y[3]~56_combout\ & (\p1|reg2|Q\(7))) # (\p1|mux0|y[3]~56_combout\ & ((\p1|reg3|Q\(7)))))) ) ) ) # ( !\p1|reg1|Q\(7) & ( 
-- !\p1|mux0|y[7]~30_combout\ & ( (\p1|mux0|y[3]~2_combout\ & ((!\p1|mux0|y[3]~56_combout\ & (\p1|reg2|Q\(7))) # (\p1|mux0|y[3]~56_combout\ & ((\p1|reg3|Q\(7)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011110100001101001100011100000111111101110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg2|ALT_INV_Q\(7),
	datab => \p1|mux0|ALT_INV_y[3]~2_combout\,
	datac => \p1|mux0|ALT_INV_y[3]~56_combout\,
	datad => \p1|reg3|ALT_INV_Q\(7),
	datae => \p1|reg1|ALT_INV_Q\(7),
	dataf => \p1|mux0|ALT_INV_y[7]~30_combout\,
	combout => \p1|mux0|y[7]~31_combout\);

-- Location: LABCELL_X44_Y3_N30
\p1|mux0|y[7]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[7]~32_combout\ = ( \p1|mux0|y[3]~10_combout\ & ( \p1|mux0|y[7]~31_combout\ & ( (!\p1|mux0|y[3]~8_combout\) # (\p1|reg0|Q\(7)) ) ) ) # ( !\p1|mux0|y[3]~10_combout\ & ( \p1|mux0|y[7]~31_combout\ & ( (!\p1|mux0|y[3]~8_combout\ & 
-- ((\m0|altsyncram_component|auto_generated|q_a\(7)))) # (\p1|mux0|y[3]~8_combout\ & (\p1|regG|Q[7]~DUPLICATE_q\)) ) ) ) # ( \p1|mux0|y[3]~10_combout\ & ( !\p1|mux0|y[7]~31_combout\ & ( (\p1|mux0|y[3]~8_combout\ & \p1|reg0|Q\(7)) ) ) ) # ( 
-- !\p1|mux0|y[3]~10_combout\ & ( !\p1|mux0|y[7]~31_combout\ & ( (!\p1|mux0|y[3]~8_combout\ & ((\m0|altsyncram_component|auto_generated|q_a\(7)))) # (\p1|mux0|y[3]~8_combout\ & (\p1|regG|Q[7]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000100010001000100000101101011111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[3]~8_combout\,
	datab => \p1|reg0|ALT_INV_Q\(7),
	datac => \p1|regG|ALT_INV_Q[7]~DUPLICATE_q\,
	datad => \m0|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	datae => \p1|mux0|ALT_INV_y[3]~10_combout\,
	dataf => \p1|mux0|ALT_INV_y[7]~31_combout\,
	combout => \p1|mux0|y[7]~32_combout\);

-- Location: MLABCELL_X45_Y3_N57
\p1|regDout|Q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|regDout|Q[7]~feeder_combout\ = ( \p1|mux0|y[7]~32_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[7]~32_combout\,
	combout => \p1|regDout|Q[7]~feeder_combout\);

-- Location: FF_X45_Y3_N59
\p1|regDout|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|regDout|Q[7]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|DoutIn~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regDout|Q\(7));

-- Location: FF_X42_Y4_N56
\p1|ir0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m0|altsyncram_component|auto_generated|q_a\(3),
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|y_Q.TXX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(3));

-- Location: MLABCELL_X42_Y4_N33
\p1|decX|Mux0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|decX|Mux0~4_combout\ = ( \p1|ir0|Q\(4) & ( (\p1|ir0|Q\(3) & !\p1|ir0|Q\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(3),
	datad => \p1|ir0|ALT_INV_Q\(5),
	dataf => \p1|ir0|ALT_INV_Q\(4),
	combout => \p1|decX|Mux0~4_combout\);

-- Location: MLABCELL_X42_Y1_N39
\p1|fsm|Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector14~0_combout\ = ( \p1|fsm|Selector0~0_combout\ & ( \p1|decX|Mux0~4_combout\ & ( ((!\p1|ir0|Q[7]~DUPLICATE_q\ & (!\p1|ir0|Q[8]~DUPLICATE_q\)) # (\p1|ir0|Q[7]~DUPLICATE_q\ & (\p1|ir0|Q[8]~DUPLICATE_q\ & !\p1|fsm|Equal0~2_combout\))) # 
-- (\p1|fsm|Selector13~0_combout\) ) ) ) # ( !\p1|fsm|Selector0~0_combout\ & ( \p1|decX|Mux0~4_combout\ & ( \p1|fsm|Selector13~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011111001111110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q[7]~DUPLICATE_q\,
	datab => \p1|ir0|ALT_INV_Q[8]~DUPLICATE_q\,
	datac => \p1|fsm|ALT_INV_Selector13~0_combout\,
	datad => \p1|fsm|ALT_INV_Equal0~2_combout\,
	datae => \p1|fsm|ALT_INV_Selector0~0_combout\,
	dataf => \p1|decX|ALT_INV_Mux0~4_combout\,
	combout => \p1|fsm|Selector14~0_combout\);

-- Location: FF_X43_Y4_N22
\p1|reg3|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[6]~29_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(6));

-- Location: LABCELL_X44_Y2_N12
\p1|reg2|Q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg2|Q[6]~feeder_combout\ = ( \p1|mux0|y[6]~29_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[6]~29_combout\,
	combout => \p1|reg2|Q[6]~feeder_combout\);

-- Location: FF_X44_Y2_N13
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
	ena => \p1|fsm|Selector13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q\(6));

-- Location: FF_X44_Y3_N26
\p1|reg1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[6]~29_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(6));

-- Location: MLABCELL_X45_Y3_N21
\p1|reg5|Q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg5|Q[6]~feeder_combout\ = ( \p1|mux0|y[6]~29_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[6]~29_combout\,
	combout => \p1|reg5|Q[6]~feeder_combout\);

-- Location: FF_X45_Y3_N23
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

-- Location: MLABCELL_X45_Y3_N39
\p1|reg4|Q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg4|Q[6]~feeder_combout\ = ( \p1|mux0|y[6]~29_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[6]~29_combout\,
	combout => \p1|reg4|Q[6]~feeder_combout\);

-- Location: FF_X45_Y3_N41
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

-- Location: FF_X44_Y3_N8
\p1|reg6|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[6]~29_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(6));

-- Location: LABCELL_X44_Y3_N6
\p1|mux0|y[6]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[6]~27_combout\ = ( \p1|reg6|Q\(6) & ( \p1|mux0|y[3]~0_combout\ & ( (\p1|mux0|y[3]~1_combout\) # (\p1|reg5|Q\(6)) ) ) ) # ( !\p1|reg6|Q\(6) & ( \p1|mux0|y[3]~0_combout\ & ( (\p1|reg5|Q\(6) & !\p1|mux0|y[3]~1_combout\) ) ) ) # ( \p1|reg6|Q\(6) & 
-- ( !\p1|mux0|y[3]~0_combout\ & ( (!\p1|mux0|y[3]~1_combout\ & ((\p1|reg4|Q\(6)))) # (\p1|mux0|y[3]~1_combout\ & (\p1|pc0|v\(6))) ) ) ) # ( !\p1|reg6|Q\(6) & ( !\p1|mux0|y[3]~0_combout\ & ( (!\p1|mux0|y[3]~1_combout\ & ((\p1|reg4|Q\(6)))) # 
-- (\p1|mux0|y[3]~1_combout\ & (\p1|pc0|v\(6))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg5|ALT_INV_Q\(6),
	datab => \p1|pc0|ALT_INV_v\(6),
	datac => \p1|reg4|ALT_INV_Q\(6),
	datad => \p1|mux0|ALT_INV_y[3]~1_combout\,
	datae => \p1|reg6|ALT_INV_Q\(6),
	dataf => \p1|mux0|ALT_INV_y[3]~0_combout\,
	combout => \p1|mux0|y[6]~27_combout\);

-- Location: LABCELL_X44_Y3_N24
\p1|mux0|y[6]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[6]~28_combout\ = ( \p1|reg1|Q\(6) & ( \p1|mux0|y[6]~27_combout\ & ( (!\p1|mux0|y[3]~2_combout\) # ((!\p1|mux0|y[3]~56_combout\ & ((\p1|reg2|Q\(6)))) # (\p1|mux0|y[3]~56_combout\ & (\p1|reg3|Q\(6)))) ) ) ) # ( !\p1|reg1|Q\(6) & ( 
-- \p1|mux0|y[6]~27_combout\ & ( (!\p1|mux0|y[3]~56_combout\ & (((\p1|reg2|Q\(6) & \p1|mux0|y[3]~2_combout\)))) # (\p1|mux0|y[3]~56_combout\ & (((!\p1|mux0|y[3]~2_combout\)) # (\p1|reg3|Q\(6)))) ) ) ) # ( \p1|reg1|Q\(6) & ( !\p1|mux0|y[6]~27_combout\ & ( 
-- (!\p1|mux0|y[3]~56_combout\ & (((!\p1|mux0|y[3]~2_combout\) # (\p1|reg2|Q\(6))))) # (\p1|mux0|y[3]~56_combout\ & (\p1|reg3|Q\(6) & ((\p1|mux0|y[3]~2_combout\)))) ) ) ) # ( !\p1|reg1|Q\(6) & ( !\p1|mux0|y[6]~27_combout\ & ( (\p1|mux0|y[3]~2_combout\ & 
-- ((!\p1|mux0|y[3]~56_combout\ & ((\p1|reg2|Q\(6)))) # (\p1|mux0|y[3]~56_combout\ & (\p1|reg3|Q\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110101111100000011010100001111001101011111111100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg3|ALT_INV_Q\(6),
	datab => \p1|reg2|ALT_INV_Q\(6),
	datac => \p1|mux0|ALT_INV_y[3]~56_combout\,
	datad => \p1|mux0|ALT_INV_y[3]~2_combout\,
	datae => \p1|reg1|ALT_INV_Q\(6),
	dataf => \p1|mux0|ALT_INV_y[6]~27_combout\,
	combout => \p1|mux0|y[6]~28_combout\);

-- Location: FF_X43_Y3_N52
\p1|regG|Q[6]\ : dffeas
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
	q => \p1|regG|Q\(6));

-- Location: LABCELL_X44_Y3_N54
\p1|mux0|y[6]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[6]~29_combout\ = ( \p1|mux0|y[3]~10_combout\ & ( \p1|regG|Q\(6) & ( (!\p1|mux0|y[3]~8_combout\ & ((\p1|mux0|y[6]~28_combout\))) # (\p1|mux0|y[3]~8_combout\ & (\p1|reg0|Q\(6))) ) ) ) # ( !\p1|mux0|y[3]~10_combout\ & ( \p1|regG|Q\(6) & ( 
-- (\m0|altsyncram_component|auto_generated|q_a\(6)) # (\p1|mux0|y[3]~8_combout\) ) ) ) # ( \p1|mux0|y[3]~10_combout\ & ( !\p1|regG|Q\(6) & ( (!\p1|mux0|y[3]~8_combout\ & ((\p1|mux0|y[6]~28_combout\))) # (\p1|mux0|y[3]~8_combout\ & (\p1|reg0|Q\(6))) ) ) ) # 
-- ( !\p1|mux0|y[3]~10_combout\ & ( !\p1|regG|Q\(6) & ( (!\p1|mux0|y[3]~8_combout\ & \m0|altsyncram_component|auto_generated|q_a\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000110110001101101010101111111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[3]~8_combout\,
	datab => \p1|reg0|ALT_INV_Q\(6),
	datac => \p1|mux0|ALT_INV_y[6]~28_combout\,
	datad => \m0|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	datae => \p1|mux0|ALT_INV_y[3]~10_combout\,
	dataf => \p1|regG|ALT_INV_Q\(6),
	combout => \p1|mux0|y[6]~29_combout\);

-- Location: LABCELL_X40_Y3_N27
\p1|regAddr|Q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|regAddr|Q[6]~feeder_combout\ = ( \p1|mux0|y[6]~29_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[6]~29_combout\,
	combout => \p1|regAddr|Q[6]~feeder_combout\);

-- Location: FF_X40_Y3_N28
\p1|regAddr|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|regAddr|Q[6]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regAddr|Q\(6));

-- Location: LABCELL_X41_Y1_N51
\p1|reg2|Q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg2|Q[5]~feeder_combout\ = ( \p1|mux0|y[5]~26_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[5]~26_combout\,
	combout => \p1|reg2|Q[5]~feeder_combout\);

-- Location: FF_X41_Y1_N53
\p1|reg2|Q[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg2|Q[5]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q[5]~DUPLICATE_q\);

-- Location: FF_X42_Y3_N59
\p1|reg3|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[5]~26_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(5));

-- Location: FF_X41_Y3_N2
\p1|reg1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[5]~26_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(5));

-- Location: MLABCELL_X45_Y3_N36
\p1|reg4|Q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg4|Q[5]~feeder_combout\ = ( \p1|mux0|y[5]~26_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[5]~26_combout\,
	combout => \p1|reg4|Q[5]~feeder_combout\);

-- Location: FF_X45_Y3_N37
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

-- Location: MLABCELL_X45_Y3_N18
\p1|reg5|Q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg5|Q[5]~feeder_combout\ = ( \p1|mux0|y[5]~26_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[5]~26_combout\,
	combout => \p1|reg5|Q[5]~feeder_combout\);

-- Location: FF_X45_Y3_N19
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

-- Location: FF_X41_Y3_N32
\p1|reg6|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[5]~26_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(5));

-- Location: LABCELL_X41_Y3_N30
\p1|mux0|y[5]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[5]~24_combout\ = ( \p1|reg6|Q\(5) & ( \p1|mux0|y[3]~0_combout\ & ( (\p1|reg5|Q\(5)) # (\p1|mux0|y[3]~1_combout\) ) ) ) # ( !\p1|reg6|Q\(5) & ( \p1|mux0|y[3]~0_combout\ & ( (!\p1|mux0|y[3]~1_combout\ & \p1|reg5|Q\(5)) ) ) ) # ( \p1|reg6|Q\(5) & 
-- ( !\p1|mux0|y[3]~0_combout\ & ( (!\p1|mux0|y[3]~1_combout\ & (\p1|reg4|Q\(5))) # (\p1|mux0|y[3]~1_combout\ & ((\p1|pc0|v\(5)))) ) ) ) # ( !\p1|reg6|Q\(5) & ( !\p1|mux0|y[3]~0_combout\ & ( (!\p1|mux0|y[3]~1_combout\ & (\p1|reg4|Q\(5))) # 
-- (\p1|mux0|y[3]~1_combout\ & ((\p1|pc0|v\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg4|ALT_INV_Q\(5),
	datab => \p1|pc0|ALT_INV_v\(5),
	datac => \p1|mux0|ALT_INV_y[3]~1_combout\,
	datad => \p1|reg5|ALT_INV_Q\(5),
	datae => \p1|reg6|ALT_INV_Q\(5),
	dataf => \p1|mux0|ALT_INV_y[3]~0_combout\,
	combout => \p1|mux0|y[5]~24_combout\);

-- Location: LABCELL_X41_Y3_N0
\p1|mux0|y[5]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[5]~25_combout\ = ( \p1|reg1|Q\(5) & ( \p1|mux0|y[5]~24_combout\ & ( (!\p1|mux0|y[3]~2_combout\) # ((!\p1|mux0|y[3]~56_combout\ & (\p1|reg2|Q[5]~DUPLICATE_q\)) # (\p1|mux0|y[3]~56_combout\ & ((\p1|reg3|Q\(5))))) ) ) ) # ( !\p1|reg1|Q\(5) & ( 
-- \p1|mux0|y[5]~24_combout\ & ( (!\p1|mux0|y[3]~2_combout\ & (((\p1|mux0|y[3]~56_combout\)))) # (\p1|mux0|y[3]~2_combout\ & ((!\p1|mux0|y[3]~56_combout\ & (\p1|reg2|Q[5]~DUPLICATE_q\)) # (\p1|mux0|y[3]~56_combout\ & ((\p1|reg3|Q\(5)))))) ) ) ) # ( 
-- \p1|reg1|Q\(5) & ( !\p1|mux0|y[5]~24_combout\ & ( (!\p1|mux0|y[3]~2_combout\ & (((!\p1|mux0|y[3]~56_combout\)))) # (\p1|mux0|y[3]~2_combout\ & ((!\p1|mux0|y[3]~56_combout\ & (\p1|reg2|Q[5]~DUPLICATE_q\)) # (\p1|mux0|y[3]~56_combout\ & 
-- ((\p1|reg3|Q\(5)))))) ) ) ) # ( !\p1|reg1|Q\(5) & ( !\p1|mux0|y[5]~24_combout\ & ( (\p1|mux0|y[3]~2_combout\ & ((!\p1|mux0|y[3]~56_combout\ & (\p1|reg2|Q[5]~DUPLICATE_q\)) # (\p1|mux0|y[3]~56_combout\ & ((\p1|reg3|Q\(5)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011110100001101001100011100000111111101110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg2|ALT_INV_Q[5]~DUPLICATE_q\,
	datab => \p1|mux0|ALT_INV_y[3]~2_combout\,
	datac => \p1|mux0|ALT_INV_y[3]~56_combout\,
	datad => \p1|reg3|ALT_INV_Q\(5),
	datae => \p1|reg1|ALT_INV_Q\(5),
	dataf => \p1|mux0|ALT_INV_y[5]~24_combout\,
	combout => \p1|mux0|y[5]~25_combout\);

-- Location: LABCELL_X41_Y3_N54
\p1|mux0|y[5]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[5]~26_combout\ = ( \p1|mux0|y[5]~25_combout\ & ( \p1|mux0|y[3]~8_combout\ & ( (!\p1|mux0|y[3]~10_combout\ & ((\p1|regG|Q\(5)))) # (\p1|mux0|y[3]~10_combout\ & (\p1|reg0|Q\(5))) ) ) ) # ( !\p1|mux0|y[5]~25_combout\ & ( \p1|mux0|y[3]~8_combout\ & 
-- ( (!\p1|mux0|y[3]~10_combout\ & ((\p1|regG|Q\(5)))) # (\p1|mux0|y[3]~10_combout\ & (\p1|reg0|Q\(5))) ) ) ) # ( \p1|mux0|y[5]~25_combout\ & ( !\p1|mux0|y[3]~8_combout\ & ( (\p1|mux0|y[3]~10_combout\) # (\m0|altsyncram_component|auto_generated|q_a\(5)) ) ) 
-- ) # ( !\p1|mux0|y[5]~25_combout\ & ( !\p1|mux0|y[3]~8_combout\ & ( (\m0|altsyncram_component|auto_generated|q_a\(5) & !\p1|mux0|y[3]~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011111111111100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg0|ALT_INV_Q\(5),
	datab => \p1|regG|ALT_INV_Q\(5),
	datac => \m0|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datad => \p1|mux0|ALT_INV_y[3]~10_combout\,
	datae => \p1|mux0|ALT_INV_y[5]~25_combout\,
	dataf => \p1|mux0|ALT_INV_y[3]~8_combout\,
	combout => \p1|mux0|y[5]~26_combout\);

-- Location: FF_X41_Y3_N55
\p1|regA|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|mux0|y[5]~26_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regA|Q\(5));

-- Location: FF_X43_Y3_N50
\p1|regG|Q[5]\ : dffeas
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
	q => \p1|regG|Q\(5));

-- Location: FF_X43_Y3_N41
\p1|regG|Q[2]\ : dffeas
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
	q => \p1|regG|Q\(2));

-- Location: FF_X43_Y3_N35
\p1|regG|Q[0]\ : dffeas
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
	q => \p1|regG|Q\(0));

-- Location: LABCELL_X43_Y3_N6
\p1|fsm|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Equal0~0_combout\ = ( !\p1|regG|Q\(8) & ( !\p1|regG|Q\(0) & ( (!\p1|regG|Q\(1) & (!\p1|regG|Q\(3) & (!\p1|regG|Q\(5) & !\p1|regG|Q\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|regG|ALT_INV_Q\(1),
	datab => \p1|regG|ALT_INV_Q\(3),
	datac => \p1|regG|ALT_INV_Q\(5),
	datad => \p1|regG|ALT_INV_Q\(2),
	datae => \p1|regG|ALT_INV_Q\(8),
	dataf => \p1|regG|ALT_INV_Q\(0),
	combout => \p1|fsm|Equal0~0_combout\);

-- Location: LABCELL_X44_Y3_N3
\p1|fsm|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Equal0~2_combout\ = ( \p1|fsm|Equal0~1_combout\ & ( \p1|fsm|Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \p1|fsm|ALT_INV_Equal0~0_combout\,
	dataf => \p1|fsm|ALT_INV_Equal0~1_combout\,
	combout => \p1|fsm|Equal0~2_combout\);

-- Location: MLABCELL_X42_Y4_N24
\p1|decX|Mux0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|decX|Mux0~6_combout\ = ( !\p1|ir0|Q\(5) & ( (!\p1|ir0|Q\(3) & !\p1|ir0|Q\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|ir0|ALT_INV_Q\(3),
	datad => \p1|ir0|ALT_INV_Q\(4),
	dataf => \p1|ir0|ALT_INV_Q\(5),
	combout => \p1|decX|Mux0~6_combout\);

-- Location: MLABCELL_X42_Y1_N0
\p1|fsm|Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector11~0_combout\ = ( \p1|fsm|Selector0~0_combout\ & ( \p1|decX|Mux0~6_combout\ & ( ((!\p1|ir0|Q[7]~DUPLICATE_q\ & (!\p1|ir0|Q[8]~DUPLICATE_q\)) # (\p1|ir0|Q[7]~DUPLICATE_q\ & (\p1|ir0|Q[8]~DUPLICATE_q\ & !\p1|fsm|Equal0~2_combout\))) # 
-- (\p1|fsm|Selector13~0_combout\) ) ) ) # ( !\p1|fsm|Selector0~0_combout\ & ( \p1|decX|Mux0~6_combout\ & ( \p1|fsm|Selector13~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111111001100011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q[7]~DUPLICATE_q\,
	datab => \p1|ir0|ALT_INV_Q[8]~DUPLICATE_q\,
	datac => \p1|fsm|ALT_INV_Equal0~2_combout\,
	datad => \p1|fsm|ALT_INV_Selector13~0_combout\,
	datae => \p1|fsm|ALT_INV_Selector0~0_combout\,
	dataf => \p1|decX|ALT_INV_Mux0~6_combout\,
	combout => \p1|fsm|Selector11~0_combout\);

-- Location: FF_X44_Y2_N52
\p1|reg0|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[4]~23_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(4));

-- Location: FF_X44_Y2_N31
\p1|reg3|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[4]~23_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(4));

-- Location: FF_X44_Y2_N7
\p1|reg2|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[4]~23_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q\(4));

-- Location: LABCELL_X40_Y2_N45
\p1|reg4|Q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg4|Q[4]~feeder_combout\ = ( \p1|mux0|y[4]~23_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[4]~23_combout\,
	combout => \p1|reg4|Q[4]~feeder_combout\);

-- Location: FF_X40_Y2_N46
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

-- Location: LABCELL_X41_Y2_N0
\p1|reg5|Q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg5|Q[4]~feeder_combout\ = ( \p1|mux0|y[4]~23_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[4]~23_combout\,
	combout => \p1|reg5|Q[4]~feeder_combout\);

-- Location: FF_X41_Y2_N1
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

-- Location: FF_X42_Y2_N44
\p1|reg6|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[4]~23_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(4));

-- Location: MLABCELL_X42_Y2_N42
\p1|mux0|y[4]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[4]~21_combout\ = ( \p1|reg6|Q\(4) & ( \p1|mux0|y[3]~1_combout\ & ( (\p1|mux0|y[3]~0_combout\) # (\p1|pc0|v\(4)) ) ) ) # ( !\p1|reg6|Q\(4) & ( \p1|mux0|y[3]~1_combout\ & ( (\p1|pc0|v\(4) & !\p1|mux0|y[3]~0_combout\) ) ) ) # ( \p1|reg6|Q\(4) & ( 
-- !\p1|mux0|y[3]~1_combout\ & ( (!\p1|mux0|y[3]~0_combout\ & (\p1|reg4|Q\(4))) # (\p1|mux0|y[3]~0_combout\ & ((\p1|reg5|Q\(4)))) ) ) ) # ( !\p1|reg6|Q\(4) & ( !\p1|mux0|y[3]~1_combout\ & ( (!\p1|mux0|y[3]~0_combout\ & (\p1|reg4|Q\(4))) # 
-- (\p1|mux0|y[3]~0_combout\ & ((\p1|reg5|Q\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|pc0|ALT_INV_v\(4),
	datab => \p1|reg4|ALT_INV_Q\(4),
	datac => \p1|mux0|ALT_INV_y[3]~0_combout\,
	datad => \p1|reg5|ALT_INV_Q\(4),
	datae => \p1|reg6|ALT_INV_Q\(4),
	dataf => \p1|mux0|ALT_INV_y[3]~1_combout\,
	combout => \p1|mux0|y[4]~21_combout\);

-- Location: FF_X42_Y2_N8
\p1|reg1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[4]~23_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(4));

-- Location: MLABCELL_X42_Y2_N6
\p1|mux0|y[4]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[4]~22_combout\ = ( \p1|reg1|Q\(4) & ( \p1|mux0|y[3]~2_combout\ & ( (!\p1|mux0|y[3]~56_combout\ & ((\p1|reg2|Q\(4)))) # (\p1|mux0|y[3]~56_combout\ & (\p1|reg3|Q\(4))) ) ) ) # ( !\p1|reg1|Q\(4) & ( \p1|mux0|y[3]~2_combout\ & ( 
-- (!\p1|mux0|y[3]~56_combout\ & ((\p1|reg2|Q\(4)))) # (\p1|mux0|y[3]~56_combout\ & (\p1|reg3|Q\(4))) ) ) ) # ( \p1|reg1|Q\(4) & ( !\p1|mux0|y[3]~2_combout\ & ( (!\p1|mux0|y[3]~56_combout\) # (\p1|mux0|y[4]~21_combout\) ) ) ) # ( !\p1|reg1|Q\(4) & ( 
-- !\p1|mux0|y[3]~2_combout\ & ( (\p1|mux0|y[3]~56_combout\ & \p1|mux0|y[4]~21_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011110011001111111100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg3|ALT_INV_Q\(4),
	datab => \p1|mux0|ALT_INV_y[3]~56_combout\,
	datac => \p1|reg2|ALT_INV_Q\(4),
	datad => \p1|mux0|ALT_INV_y[4]~21_combout\,
	datae => \p1|reg1|ALT_INV_Q\(4),
	dataf => \p1|mux0|ALT_INV_y[3]~2_combout\,
	combout => \p1|mux0|y[4]~22_combout\);

-- Location: MLABCELL_X42_Y2_N30
\p1|mux0|y[4]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[4]~23_combout\ = ( \p1|mux0|y[3]~8_combout\ & ( \p1|mux0|y[4]~22_combout\ & ( (!\p1|mux0|y[3]~10_combout\ & ((\p1|regG|Q\(4)))) # (\p1|mux0|y[3]~10_combout\ & (\p1|reg0|Q\(4))) ) ) ) # ( !\p1|mux0|y[3]~8_combout\ & ( \p1|mux0|y[4]~22_combout\ & 
-- ( (\p1|mux0|y[3]~10_combout\) # (\m0|altsyncram_component|auto_generated|q_a\(4)) ) ) ) # ( \p1|mux0|y[3]~8_combout\ & ( !\p1|mux0|y[4]~22_combout\ & ( (!\p1|mux0|y[3]~10_combout\ & ((\p1|regG|Q\(4)))) # (\p1|mux0|y[3]~10_combout\ & (\p1|reg0|Q\(4))) ) ) 
-- ) # ( !\p1|mux0|y[3]~8_combout\ & ( !\p1|mux0|y[4]~22_combout\ & ( (\m0|altsyncram_component|auto_generated|q_a\(4) & !\p1|mux0|y[3]~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000001011111010100111111001111110000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg0|ALT_INV_Q\(4),
	datab => \m0|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	datac => \p1|mux0|ALT_INV_y[3]~10_combout\,
	datad => \p1|regG|ALT_INV_Q\(4),
	datae => \p1|mux0|ALT_INV_y[3]~8_combout\,
	dataf => \p1|mux0|ALT_INV_y[4]~22_combout\,
	combout => \p1|mux0|y[4]~23_combout\);

-- Location: LABCELL_X41_Y2_N45
\p1|regAddr|Q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|regAddr|Q[4]~feeder_combout\ = ( \p1|mux0|y[4]~23_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[4]~23_combout\,
	combout => \p1|regAddr|Q[4]~feeder_combout\);

-- Location: FF_X41_Y2_N46
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

-- Location: FF_X42_Y4_N41
\p1|ir0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m0|altsyncram_component|auto_generated|q_a\(2),
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|y_Q.TXX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(2));

-- Location: LABCELL_X43_Y4_N33
\p1|fsm|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector2~0_combout\ = ( !\p1|ir0|Q\(1) & ( !\p1|ir0|Q\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(2),
	dataf => \p1|ir0|ALT_INV_Q\(1),
	combout => \p1|fsm|Selector2~0_combout\);

-- Location: LABCELL_X43_Y4_N51
\p1|fsm|Selector1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector1~2_combout\ = ( \p1|fsm|Selector2~0_combout\ & ( !\p1|ir0|Q\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|ir0|ALT_INV_Q\(0),
	dataf => \p1|fsm|ALT_INV_Selector2~0_combout\,
	combout => \p1|fsm|Selector1~2_combout\);

-- Location: LABCELL_X43_Y4_N54
\p1|fsm|Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector1~1_combout\ = ( \p1|ir0|Q[7]~DUPLICATE_q\ & ( \p1|decX|Mux0~6_combout\ & ( (\p1|fsm|Selector2~0_combout\ & (!\p1|ir0|Q\(0) & \p1|fsm|Selector5~4_combout\)) ) ) ) # ( !\p1|ir0|Q[7]~DUPLICATE_q\ & ( \p1|decX|Mux0~6_combout\ & ( 
-- (\p1|ir0|Q\(8) & \p1|fsm|Selector5~4_combout\) ) ) ) # ( \p1|ir0|Q[7]~DUPLICATE_q\ & ( !\p1|decX|Mux0~6_combout\ & ( (\p1|fsm|Selector2~0_combout\ & (!\p1|ir0|Q\(0) & \p1|fsm|Selector5~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100010000000000000011110000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector2~0_combout\,
	datab => \p1|ir0|ALT_INV_Q\(0),
	datac => \p1|ir0|ALT_INV_Q\(8),
	datad => \p1|fsm|ALT_INV_Selector5~4_combout\,
	datae => \p1|ir0|ALT_INV_Q[7]~DUPLICATE_q\,
	dataf => \p1|decX|ALT_INV_Mux0~6_combout\,
	combout => \p1|fsm|Selector1~1_combout\);

-- Location: LABCELL_X43_Y4_N18
\p1|fsm|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector1~0_combout\ = ( \p1|fsm|Selector1~1_combout\ & ( \p1|fsm|Selector5~1_combout\ & ( (!\p1|fsm|Selector1~2_combout\ & (!\p1|decX|Mux0~6_combout\ & \p1|fsm|Mux0~0_combout\)) ) ) ) # ( !\p1|fsm|Selector1~1_combout\ & ( 
-- \p1|fsm|Selector5~1_combout\ & ( (!\p1|fsm|Mux0~0_combout\ & (((!\p1|decX|Mux0~6_combout\)))) # (\p1|fsm|Mux0~0_combout\ & (!\p1|fsm|Selector1~2_combout\ & ((!\p1|decX|Mux0~6_combout\) # (!\p1|fsm|Selector5~3_combout\)))) ) ) ) # ( 
-- !\p1|fsm|Selector1~1_combout\ & ( !\p1|fsm|Selector5~1_combout\ & ( (!\p1|decX|Mux0~6_combout\) # (!\p1|fsm|Selector5~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001100000000000000000011001010110010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector1~2_combout\,
	datab => \p1|decX|ALT_INV_Mux0~6_combout\,
	datac => \p1|fsm|ALT_INV_Mux0~0_combout\,
	datad => \p1|fsm|ALT_INV_Selector5~3_combout\,
	datae => \p1|fsm|ALT_INV_Selector1~1_combout\,
	dataf => \p1|fsm|ALT_INV_Selector5~1_combout\,
	combout => \p1|fsm|Selector1~0_combout\);

-- Location: LABCELL_X43_Y2_N0
\p1|mux0|y[3]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[3]~41_combout\ = ( !\p1|mux0|y[3]~44_combout\ & ( (\p1|mux0|y[3]~56_combout\ & (((!\p1|fsm|y_Q.T3~q\) # (!\p1|ir0|Q\(6))) # (\p1|ir0|Q[8]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001101000011110000110100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q[8]~DUPLICATE_q\,
	datab => \p1|fsm|ALT_INV_y_Q.T3~q\,
	datac => \p1|mux0|ALT_INV_y[3]~56_combout\,
	datad => \p1|ir0|ALT_INV_Q\(6),
	dataf => \p1|mux0|ALT_INV_y[3]~44_combout\,
	combout => \p1|mux0|y[3]~41_combout\);

-- Location: LABCELL_X43_Y2_N6
\p1|mux0|y[3]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[3]~8_combout\ = ( \p1|mux0|y[3]~41_combout\ & ( \p1|mux0|y[3]~48_combout\ & ( (!\p1|mux0|y[3]~42_combout\ & (((!\p1|fsm|Selector1~0_combout\ & \p1|fsm|Selector8~1_combout\)))) # (\p1|mux0|y[3]~42_combout\ & ((!\p1|ir0|Q[8]~DUPLICATE_q\) # 
-- ((!\p1|fsm|Selector1~0_combout\ & \p1|fsm|Selector8~1_combout\)))) ) ) ) # ( !\p1|mux0|y[3]~41_combout\ & ( \p1|mux0|y[3]~48_combout\ & ( (\p1|mux0|y[3]~42_combout\ & !\p1|ir0|Q[8]~DUPLICATE_q\) ) ) ) # ( \p1|mux0|y[3]~41_combout\ & ( 
-- !\p1|mux0|y[3]~48_combout\ & ( (\p1|mux0|y[3]~42_combout\ & !\p1|ir0|Q[8]~DUPLICATE_q\) ) ) ) # ( !\p1|mux0|y[3]~41_combout\ & ( !\p1|mux0|y[3]~48_combout\ & ( (\p1|mux0|y[3]~42_combout\ & !\p1|ir0|Q[8]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[3]~42_combout\,
	datab => \p1|ir0|ALT_INV_Q[8]~DUPLICATE_q\,
	datac => \p1|fsm|ALT_INV_Selector1~0_combout\,
	datad => \p1|fsm|ALT_INV_Selector8~1_combout\,
	datae => \p1|mux0|ALT_INV_y[3]~41_combout\,
	dataf => \p1|mux0|ALT_INV_y[3]~48_combout\,
	combout => \p1|mux0|y[3]~8_combout\);

-- Location: FF_X44_Y2_N49
\p1|reg0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[3]~20_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(3));

-- Location: LABCELL_X43_Y1_N36
\p1|reg2|Q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg2|Q[3]~feeder_combout\ = ( \p1|mux0|y[3]~20_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[3]~20_combout\,
	combout => \p1|reg2|Q[3]~feeder_combout\);

-- Location: FF_X43_Y1_N38
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
	ena => \p1|fsm|Selector13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q\(3));

-- Location: FF_X42_Y3_N29
\p1|reg3|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[3]~20_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(3));

-- Location: FF_X42_Y3_N14
\p1|reg1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[3]~20_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(3));

-- Location: MLABCELL_X45_Y3_N48
\p1|reg4|Q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg4|Q[3]~feeder_combout\ = ( \p1|mux0|y[3]~20_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[3]~20_combout\,
	combout => \p1|reg4|Q[3]~feeder_combout\);

-- Location: FF_X45_Y3_N49
\p1|reg4|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg4|Q[3]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg4|Q\(3));

-- Location: MLABCELL_X45_Y3_N6
\p1|reg5|Q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg5|Q[3]~feeder_combout\ = ( \p1|mux0|y[3]~20_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[3]~20_combout\,
	combout => \p1|reg5|Q[3]~feeder_combout\);

-- Location: FF_X45_Y3_N7
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
	ena => \p1|fsm|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(3));

-- Location: FF_X41_Y3_N20
\p1|reg6|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[3]~20_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(3));

-- Location: LABCELL_X41_Y3_N18
\p1|mux0|y[3]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[3]~18_combout\ = ( \p1|reg6|Q\(3) & ( \p1|mux0|y[3]~0_combout\ & ( (\p1|reg5|Q\(3)) # (\p1|mux0|y[3]~1_combout\) ) ) ) # ( !\p1|reg6|Q\(3) & ( \p1|mux0|y[3]~0_combout\ & ( (!\p1|mux0|y[3]~1_combout\ & \p1|reg5|Q\(3)) ) ) ) # ( \p1|reg6|Q\(3) & 
-- ( !\p1|mux0|y[3]~0_combout\ & ( (!\p1|mux0|y[3]~1_combout\ & (\p1|reg4|Q\(3))) # (\p1|mux0|y[3]~1_combout\ & ((\p1|pc0|v\(3)))) ) ) ) # ( !\p1|reg6|Q\(3) & ( !\p1|mux0|y[3]~0_combout\ & ( (!\p1|mux0|y[3]~1_combout\ & (\p1|reg4|Q\(3))) # 
-- (\p1|mux0|y[3]~1_combout\ & ((\p1|pc0|v\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg4|ALT_INV_Q\(3),
	datab => \p1|pc0|ALT_INV_v\(3),
	datac => \p1|mux0|ALT_INV_y[3]~1_combout\,
	datad => \p1|reg5|ALT_INV_Q\(3),
	datae => \p1|reg6|ALT_INV_Q\(3),
	dataf => \p1|mux0|ALT_INV_y[3]~0_combout\,
	combout => \p1|mux0|y[3]~18_combout\);

-- Location: MLABCELL_X42_Y3_N12
\p1|mux0|y[3]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[3]~19_combout\ = ( \p1|reg1|Q\(3) & ( \p1|mux0|y[3]~18_combout\ & ( (!\p1|mux0|y[3]~2_combout\) # ((!\p1|mux0|y[3]~56_combout\ & (\p1|reg2|Q\(3))) # (\p1|mux0|y[3]~56_combout\ & ((\p1|reg3|Q\(3))))) ) ) ) # ( !\p1|reg1|Q\(3) & ( 
-- \p1|mux0|y[3]~18_combout\ & ( (!\p1|mux0|y[3]~2_combout\ & (((\p1|mux0|y[3]~56_combout\)))) # (\p1|mux0|y[3]~2_combout\ & ((!\p1|mux0|y[3]~56_combout\ & (\p1|reg2|Q\(3))) # (\p1|mux0|y[3]~56_combout\ & ((\p1|reg3|Q\(3)))))) ) ) ) # ( \p1|reg1|Q\(3) & ( 
-- !\p1|mux0|y[3]~18_combout\ & ( (!\p1|mux0|y[3]~2_combout\ & (((!\p1|mux0|y[3]~56_combout\)))) # (\p1|mux0|y[3]~2_combout\ & ((!\p1|mux0|y[3]~56_combout\ & (\p1|reg2|Q\(3))) # (\p1|mux0|y[3]~56_combout\ & ((\p1|reg3|Q\(3)))))) ) ) ) # ( !\p1|reg1|Q\(3) & ( 
-- !\p1|mux0|y[3]~18_combout\ & ( (\p1|mux0|y[3]~2_combout\ & ((!\p1|mux0|y[3]~56_combout\ & (\p1|reg2|Q\(3))) # (\p1|mux0|y[3]~56_combout\ & ((\p1|reg3|Q\(3)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011110111010000001100010001110011111101110111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg2|ALT_INV_Q\(3),
	datab => \p1|mux0|ALT_INV_y[3]~2_combout\,
	datac => \p1|reg3|ALT_INV_Q\(3),
	datad => \p1|mux0|ALT_INV_y[3]~56_combout\,
	datae => \p1|reg1|ALT_INV_Q\(3),
	dataf => \p1|mux0|ALT_INV_y[3]~18_combout\,
	combout => \p1|mux0|y[3]~19_combout\);

-- Location: FF_X43_Y3_N43
\p1|regG|Q[3]~DUPLICATE\ : dffeas
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
	q => \p1|regG|Q[3]~DUPLICATE_q\);

-- Location: LABCELL_X43_Y3_N24
\p1|mux0|y[3]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[3]~20_combout\ = ( \p1|mux0|y[3]~19_combout\ & ( \p1|regG|Q[3]~DUPLICATE_q\ & ( (!\p1|mux0|y[3]~8_combout\ & (((\p1|mux0|y[3]~10_combout\) # (\m0|altsyncram_component|auto_generated|q_a\(3))))) # (\p1|mux0|y[3]~8_combout\ & 
-- (((!\p1|mux0|y[3]~10_combout\)) # (\p1|reg0|Q\(3)))) ) ) ) # ( !\p1|mux0|y[3]~19_combout\ & ( \p1|regG|Q[3]~DUPLICATE_q\ & ( (!\p1|mux0|y[3]~8_combout\ & (((\m0|altsyncram_component|auto_generated|q_a\(3) & !\p1|mux0|y[3]~10_combout\)))) # 
-- (\p1|mux0|y[3]~8_combout\ & (((!\p1|mux0|y[3]~10_combout\)) # (\p1|reg0|Q\(3)))) ) ) ) # ( \p1|mux0|y[3]~19_combout\ & ( !\p1|regG|Q[3]~DUPLICATE_q\ & ( (!\p1|mux0|y[3]~8_combout\ & (((\p1|mux0|y[3]~10_combout\) # 
-- (\m0|altsyncram_component|auto_generated|q_a\(3))))) # (\p1|mux0|y[3]~8_combout\ & (\p1|reg0|Q\(3) & ((\p1|mux0|y[3]~10_combout\)))) ) ) ) # ( !\p1|mux0|y[3]~19_combout\ & ( !\p1|regG|Q[3]~DUPLICATE_q\ & ( (!\p1|mux0|y[3]~8_combout\ & 
-- (((\m0|altsyncram_component|auto_generated|q_a\(3) & !\p1|mux0|y[3]~10_combout\)))) # (\p1|mux0|y[3]~8_combout\ & (\p1|reg0|Q\(3) & ((\p1|mux0|y[3]~10_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000010001000010101011101101011111000100010101111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[3]~8_combout\,
	datab => \p1|reg0|ALT_INV_Q\(3),
	datac => \m0|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datad => \p1|mux0|ALT_INV_y[3]~10_combout\,
	datae => \p1|mux0|ALT_INV_y[3]~19_combout\,
	dataf => \p1|regG|ALT_INV_Q[3]~DUPLICATE_q\,
	combout => \p1|mux0|y[3]~20_combout\);

-- Location: FF_X40_Y3_N8
\p1|regAddr|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[3]~20_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regAddr|Q\(3));

-- Location: LABCELL_X40_Y2_N36
\p1|reg0|Q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg0|Q[1]~feeder_combout\ = ( \p1|mux0|y[1]~14_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[1]~14_combout\,
	combout => \p1|reg0|Q[1]~feeder_combout\);

-- Location: FF_X40_Y2_N38
\p1|reg0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg0|Q[1]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(1));

-- Location: FF_X43_Y3_N37
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

-- Location: FF_X42_Y3_N53
\p1|reg3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[1]~14_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(1));

-- Location: LABCELL_X40_Y2_N15
\p1|reg2|Q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg2|Q[1]~feeder_combout\ = ( \p1|mux0|y[1]~14_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[1]~14_combout\,
	combout => \p1|reg2|Q[1]~feeder_combout\);

-- Location: FF_X40_Y2_N17
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
	ena => \p1|fsm|Selector13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q\(1));

-- Location: FF_X42_Y2_N38
\p1|reg1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[1]~14_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(1));

-- Location: MLABCELL_X45_Y2_N0
\p1|reg4|Q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg4|Q[1]~feeder_combout\ = ( \p1|mux0|y[1]~14_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[1]~14_combout\,
	combout => \p1|reg4|Q[1]~feeder_combout\);

-- Location: FF_X45_Y2_N1
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

-- Location: FF_X41_Y2_N58
\p1|reg5|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[1]~14_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(1));

-- Location: FF_X42_Y2_N14
\p1|reg6|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[1]~14_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(1));

-- Location: MLABCELL_X42_Y2_N12
\p1|mux0|y[1]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~12_combout\ = ( \p1|reg6|Q\(1) & ( \p1|mux0|y[3]~0_combout\ & ( (\p1|reg5|Q\(1)) # (\p1|mux0|y[3]~1_combout\) ) ) ) # ( !\p1|reg6|Q\(1) & ( \p1|mux0|y[3]~0_combout\ & ( (!\p1|mux0|y[3]~1_combout\ & \p1|reg5|Q\(1)) ) ) ) # ( \p1|reg6|Q\(1) & 
-- ( !\p1|mux0|y[3]~0_combout\ & ( (!\p1|mux0|y[3]~1_combout\ & ((\p1|reg4|Q\(1)))) # (\p1|mux0|y[3]~1_combout\ & (\p1|pc0|v\(1))) ) ) ) # ( !\p1|reg6|Q\(1) & ( !\p1|mux0|y[3]~0_combout\ & ( (!\p1|mux0|y[3]~1_combout\ & ((\p1|reg4|Q\(1)))) # 
-- (\p1|mux0|y[3]~1_combout\ & (\p1|pc0|v\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|pc0|ALT_INV_v\(1),
	datab => \p1|reg4|ALT_INV_Q\(1),
	datac => \p1|mux0|ALT_INV_y[3]~1_combout\,
	datad => \p1|reg5|ALT_INV_Q\(1),
	datae => \p1|reg6|ALT_INV_Q\(1),
	dataf => \p1|mux0|ALT_INV_y[3]~0_combout\,
	combout => \p1|mux0|y[1]~12_combout\);

-- Location: MLABCELL_X42_Y2_N36
\p1|mux0|y[1]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~13_combout\ = ( \p1|reg1|Q\(1) & ( \p1|mux0|y[1]~12_combout\ & ( (!\p1|mux0|y[3]~2_combout\) # ((!\p1|mux0|y[3]~56_combout\ & ((\p1|reg2|Q\(1)))) # (\p1|mux0|y[3]~56_combout\ & (\p1|reg3|Q\(1)))) ) ) ) # ( !\p1|reg1|Q\(1) & ( 
-- \p1|mux0|y[1]~12_combout\ & ( (!\p1|mux0|y[3]~56_combout\ & (((\p1|mux0|y[3]~2_combout\ & \p1|reg2|Q\(1))))) # (\p1|mux0|y[3]~56_combout\ & (((!\p1|mux0|y[3]~2_combout\)) # (\p1|reg3|Q\(1)))) ) ) ) # ( \p1|reg1|Q\(1) & ( !\p1|mux0|y[1]~12_combout\ & ( 
-- (!\p1|mux0|y[3]~56_combout\ & (((!\p1|mux0|y[3]~2_combout\) # (\p1|reg2|Q\(1))))) # (\p1|mux0|y[3]~56_combout\ & (\p1|reg3|Q\(1) & (\p1|mux0|y[3]~2_combout\))) ) ) ) # ( !\p1|reg1|Q\(1) & ( !\p1|mux0|y[1]~12_combout\ & ( (\p1|mux0|y[3]~2_combout\ & 
-- ((!\p1|mux0|y[3]~56_combout\ & ((\p1|reg2|Q\(1)))) # (\p1|mux0|y[3]~56_combout\ & (\p1|reg3|Q\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101110000011100110100110001001111011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg3|ALT_INV_Q\(1),
	datab => \p1|mux0|ALT_INV_y[3]~56_combout\,
	datac => \p1|mux0|ALT_INV_y[3]~2_combout\,
	datad => \p1|reg2|ALT_INV_Q\(1),
	datae => \p1|reg1|ALT_INV_Q\(1),
	dataf => \p1|mux0|ALT_INV_y[1]~12_combout\,
	combout => \p1|mux0|y[1]~13_combout\);

-- Location: MLABCELL_X42_Y2_N18
\p1|mux0|y[1]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~14_combout\ = ( \p1|mux0|y[1]~13_combout\ & ( \p1|mux0|y[3]~10_combout\ & ( (!\p1|mux0|y[3]~8_combout\) # (\p1|reg0|Q\(1)) ) ) ) # ( !\p1|mux0|y[1]~13_combout\ & ( \p1|mux0|y[3]~10_combout\ & ( (\p1|reg0|Q\(1) & \p1|mux0|y[3]~8_combout\) ) ) 
-- ) # ( \p1|mux0|y[1]~13_combout\ & ( !\p1|mux0|y[3]~10_combout\ & ( (!\p1|mux0|y[3]~8_combout\ & (\m0|altsyncram_component|auto_generated|q_a\(1))) # (\p1|mux0|y[3]~8_combout\ & ((\p1|regG|Q[1]~DUPLICATE_q\))) ) ) ) # ( !\p1|mux0|y[1]~13_combout\ & ( 
-- !\p1|mux0|y[3]~10_combout\ & ( (!\p1|mux0|y[3]~8_combout\ & (\m0|altsyncram_component|auto_generated|q_a\(1))) # (\p1|mux0|y[3]~8_combout\ & ((\p1|regG|Q[1]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m0|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datab => \p1|reg0|ALT_INV_Q\(1),
	datac => \p1|mux0|ALT_INV_y[3]~8_combout\,
	datad => \p1|regG|ALT_INV_Q[1]~DUPLICATE_q\,
	datae => \p1|mux0|ALT_INV_y[1]~13_combout\,
	dataf => \p1|mux0|ALT_INV_y[3]~10_combout\,
	combout => \p1|mux0|y[1]~14_combout\);

-- Location: FF_X41_Y2_N25
\p1|regAddr|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[1]~14_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regAddr|Q\(1));

-- Location: FF_X43_Y3_N20
\p1|ir0|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m0|altsyncram_component|auto_generated|q_a\(7),
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|y_Q.TXX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(7));

-- Location: LABCELL_X40_Y3_N15
\p1|fsm|Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector9~0_combout\ = ( \p1|ir0|Q\(8) & ( (!\p1|fsm|y_Q.T0~q\) # ((!\p1|ir0|Q\(7) & \p1|fsm|y_Q.T1~q\)) ) ) # ( !\p1|ir0|Q\(8) & ( (!\p1|fsm|y_Q.T0~q\) # ((\p1|ir0|Q\(6) & (!\p1|ir0|Q\(7) & \p1|fsm|y_Q.T1~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000100111111110000110011111111000001001111111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(6),
	datab => \p1|ir0|ALT_INV_Q\(7),
	datac => \p1|fsm|ALT_INV_y_Q.T1~q\,
	datad => \p1|fsm|ALT_INV_y_Q.T0~q\,
	datae => \p1|ir0|ALT_INV_Q\(8),
	combout => \p1|fsm|Selector9~0_combout\);

-- Location: FF_X40_Y3_N1
\p1|regAddr|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[0]~11_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regAddr|Q\(0));

-- Location: FF_X44_Y2_N55
\p1|reg0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[0]~11_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(0));

-- Location: FF_X42_Y1_N14
\p1|reg3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[0]~11_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(0));

-- Location: FF_X42_Y1_N44
\p1|reg4|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[0]~11_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg4|Q\(0));

-- Location: MLABCELL_X42_Y1_N42
\p1|mux0|y[0]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[0]~38_combout\ = ( \p1|reg4|Q\(0) & ( \p1|mux0|y[3]~1_combout\ & ( \p1|pc0|v\(0) ) ) ) # ( !\p1|reg4|Q\(0) & ( \p1|mux0|y[3]~1_combout\ & ( \p1|pc0|v\(0) ) ) ) # ( \p1|reg4|Q\(0) & ( !\p1|mux0|y[3]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|pc0|ALT_INV_v\(0),
	datae => \p1|reg4|ALT_INV_Q\(0),
	dataf => \p1|mux0|ALT_INV_y[3]~1_combout\,
	combout => \p1|mux0|y[0]~38_combout\);

-- Location: FF_X42_Y3_N47
\p1|reg1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[0]~11_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(0));

-- Location: FF_X42_Y3_N5
\p1|reg6|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[0]~11_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(0));

-- Location: FF_X42_Y1_N26
\p1|reg5|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[0]~11_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(0));

-- Location: MLABCELL_X42_Y1_N24
\p1|mux0|y[0]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[0]~37_combout\ = ( \p1|mux0|y[3]~1_combout\ & ( (!\p1|mux0|y[3]~56_combout\ & (\p1|reg1|Q\(0))) # (\p1|mux0|y[3]~56_combout\ & ((\p1|reg6|Q\(0)))) ) ) # ( !\p1|mux0|y[3]~1_combout\ & ( (!\p1|mux0|y[3]~56_combout\ & (\p1|reg1|Q\(0))) # 
-- (\p1|mux0|y[3]~56_combout\ & ((\p1|reg5|Q\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg1|ALT_INV_Q\(0),
	datab => \p1|reg6|ALT_INV_Q\(0),
	datac => \p1|mux0|ALT_INV_y[3]~56_combout\,
	datad => \p1|reg5|ALT_INV_Q\(0),
	dataf => \p1|mux0|ALT_INV_y[3]~1_combout\,
	combout => \p1|mux0|y[0]~37_combout\);

-- Location: FF_X44_Y2_N25
\p1|reg2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[0]~11_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q\(0));

-- Location: MLABCELL_X42_Y1_N12
\p1|mux0|y[0]~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[0]~52_combout\ = ( !\p1|mux0|y[3]~56_combout\ & ( (((!\p1|mux0|y[3]~2_combout\ & ((\p1|mux0|y[0]~37_combout\))) # (\p1|mux0|y[3]~2_combout\ & (\p1|reg2|Q\(0))))) ) ) # ( \p1|mux0|y[3]~56_combout\ & ( (!\p1|mux0|y[3]~2_combout\ & 
-- (((!\p1|mux0|y[3]~0_combout\ & (\p1|mux0|y[0]~38_combout\)) # (\p1|mux0|y[3]~0_combout\ & ((\p1|mux0|y[0]~37_combout\)))))) # (\p1|mux0|y[3]~2_combout\ & (\p1|reg3|Q\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111001100000101010111111111000011110011111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg3|ALT_INV_Q\(0),
	datab => \p1|mux0|ALT_INV_y[0]~38_combout\,
	datac => \p1|mux0|ALT_INV_y[3]~0_combout\,
	datad => \p1|mux0|ALT_INV_y[3]~2_combout\,
	datae => \p1|mux0|ALT_INV_y[3]~56_combout\,
	dataf => \p1|mux0|ALT_INV_y[0]~37_combout\,
	datag => \p1|reg2|ALT_INV_Q\(0),
	combout => \p1|mux0|y[0]~52_combout\);

-- Location: LABCELL_X43_Y3_N12
\p1|mux0|y[0]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[0]~11_combout\ = ( \p1|mux0|y[3]~10_combout\ & ( \p1|mux0|y[0]~52_combout\ & ( (!\p1|mux0|y[3]~8_combout\) # (\p1|reg0|Q\(0)) ) ) ) # ( !\p1|mux0|y[3]~10_combout\ & ( \p1|mux0|y[0]~52_combout\ & ( (!\p1|mux0|y[3]~8_combout\ & 
-- (\m0|altsyncram_component|auto_generated|q_a\(0))) # (\p1|mux0|y[3]~8_combout\ & ((\p1|regG|Q\(0)))) ) ) ) # ( \p1|mux0|y[3]~10_combout\ & ( !\p1|mux0|y[0]~52_combout\ & ( (\p1|reg0|Q\(0) & \p1|mux0|y[3]~8_combout\) ) ) ) # ( !\p1|mux0|y[3]~10_combout\ & 
-- ( !\p1|mux0|y[0]~52_combout\ & ( (!\p1|mux0|y[3]~8_combout\ & (\m0|altsyncram_component|auto_generated|q_a\(0))) # (\p1|mux0|y[3]~8_combout\ & ((\p1|regG|Q\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111000000000011001101010101000011111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m0|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datab => \p1|reg0|ALT_INV_Q\(0),
	datac => \p1|regG|ALT_INV_Q\(0),
	datad => \p1|mux0|ALT_INV_y[3]~8_combout\,
	datae => \p1|mux0|ALT_INV_y[3]~10_combout\,
	dataf => \p1|mux0|ALT_INV_y[0]~52_combout\,
	combout => \p1|mux0|y[0]~11_combout\);

-- Location: FF_X40_Y3_N13
\p1|regDout|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[0]~11_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|DoutIn~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regDout|Q\(0));

-- Location: FF_X42_Y4_N17
\p1|ir0|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m0|altsyncram_component|auto_generated|q_a\(6),
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|y_Q.TXX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(6));

-- Location: LABCELL_X40_Y3_N39
\p1|fsm|Mux27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Mux27~0_combout\ = ( !\p1|ir0|Q\(8) & ( (\p1|ir0|Q\(6) & \p1|ir0|Q\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000000000000000000000101000001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(6),
	datac => \p1|ir0|ALT_INV_Q\(7),
	datae => \p1|ir0|ALT_INV_Q\(8),
	combout => \p1|fsm|Mux27~0_combout\);

-- Location: FF_X43_Y2_N13
\p1|regA|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|mux0|y[8]~35_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regA|Q\(8));

-- Location: LABCELL_X43_Y3_N57
\p1|addsub0|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~21_sumout\ = SUM(( !\p1|mux0|y[8]~35_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux27~0_combout\))) ) + ( \p1|regA|Q\(8) ) + ( \p1|addsub0|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T2~q\,
	datac => \p1|mux0|ALT_INV_y[8]~35_combout\,
	datad => \p1|fsm|ALT_INV_Mux27~0_combout\,
	dataf => \p1|regA|ALT_INV_Q\(8),
	cin => \p1|addsub0|Add0~26\,
	sumout => \p1|addsub0|Add0~21_sumout\);

-- Location: FF_X43_Y3_N59
\p1|regG|Q[8]\ : dffeas
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
	q => \p1|regG|Q\(8));

-- Location: FF_X44_Y2_N4
\p1|reg2|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[8]~35_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q\(8));

-- Location: LABCELL_X44_Y2_N36
\p1|reg3|Q[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg3|Q[8]~feeder_combout\ = ( \p1|mux0|y[8]~35_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[8]~35_combout\,
	combout => \p1|reg3|Q[8]~feeder_combout\);

-- Location: FF_X44_Y2_N37
\p1|reg3|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg3|Q[8]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(8));

-- Location: FF_X42_Y1_N59
\p1|reg5|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[8]~35_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(8));

-- Location: FF_X42_Y1_N35
\p1|reg4|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[8]~35_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg4|Q\(8));

-- Location: FF_X42_Y2_N56
\p1|reg6|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[8]~35_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(8));

-- Location: MLABCELL_X42_Y2_N54
\p1|mux0|y[8]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[8]~33_combout\ = ( \p1|reg6|Q\(8) & ( \p1|mux0|y[3]~1_combout\ & ( (\p1|pc0|v\(8)) # (\p1|mux0|y[3]~0_combout\) ) ) ) # ( !\p1|reg6|Q\(8) & ( \p1|mux0|y[3]~1_combout\ & ( (!\p1|mux0|y[3]~0_combout\ & \p1|pc0|v\(8)) ) ) ) # ( \p1|reg6|Q\(8) & ( 
-- !\p1|mux0|y[3]~1_combout\ & ( (!\p1|mux0|y[3]~0_combout\ & ((\p1|reg4|Q\(8)))) # (\p1|mux0|y[3]~0_combout\ & (\p1|reg5|Q\(8))) ) ) ) # ( !\p1|reg6|Q\(8) & ( !\p1|mux0|y[3]~1_combout\ & ( (!\p1|mux0|y[3]~0_combout\ & ((\p1|reg4|Q\(8)))) # 
-- (\p1|mux0|y[3]~0_combout\ & (\p1|reg5|Q\(8))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg5|ALT_INV_Q\(8),
	datab => \p1|reg4|ALT_INV_Q\(8),
	datac => \p1|mux0|ALT_INV_y[3]~0_combout\,
	datad => \p1|pc0|ALT_INV_v\(8),
	datae => \p1|reg6|ALT_INV_Q\(8),
	dataf => \p1|mux0|ALT_INV_y[3]~1_combout\,
	combout => \p1|mux0|y[8]~33_combout\);

-- Location: FF_X42_Y2_N26
\p1|reg1|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[8]~35_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(8));

-- Location: MLABCELL_X42_Y2_N24
\p1|mux0|y[8]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[8]~34_combout\ = ( \p1|reg1|Q\(8) & ( \p1|mux0|y[3]~2_combout\ & ( (!\p1|mux0|y[3]~56_combout\ & (\p1|reg2|Q\(8))) # (\p1|mux0|y[3]~56_combout\ & ((\p1|reg3|Q\(8)))) ) ) ) # ( !\p1|reg1|Q\(8) & ( \p1|mux0|y[3]~2_combout\ & ( 
-- (!\p1|mux0|y[3]~56_combout\ & (\p1|reg2|Q\(8))) # (\p1|mux0|y[3]~56_combout\ & ((\p1|reg3|Q\(8)))) ) ) ) # ( \p1|reg1|Q\(8) & ( !\p1|mux0|y[3]~2_combout\ & ( (!\p1|mux0|y[3]~56_combout\) # (\p1|mux0|y[8]~33_combout\) ) ) ) # ( !\p1|reg1|Q\(8) & ( 
-- !\p1|mux0|y[3]~2_combout\ & ( (\p1|mux0|y[8]~33_combout\ & \p1|mux0|y[3]~56_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111110000111101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg2|ALT_INV_Q\(8),
	datab => \p1|reg3|ALT_INV_Q\(8),
	datac => \p1|mux0|ALT_INV_y[8]~33_combout\,
	datad => \p1|mux0|ALT_INV_y[3]~56_combout\,
	datae => \p1|reg1|ALT_INV_Q\(8),
	dataf => \p1|mux0|ALT_INV_y[3]~2_combout\,
	combout => \p1|mux0|y[8]~34_combout\);

-- Location: FF_X44_Y2_N23
\p1|reg0|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[8]~35_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(8));

-- Location: LABCELL_X43_Y2_N12
\p1|mux0|y[8]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[8]~35_combout\ = ( \p1|reg0|Q\(8) & ( \p1|mux0|y[3]~8_combout\ & ( (\p1|mux0|y[3]~10_combout\) # (\p1|regG|Q\(8)) ) ) ) # ( !\p1|reg0|Q\(8) & ( \p1|mux0|y[3]~8_combout\ & ( (\p1|regG|Q\(8) & !\p1|mux0|y[3]~10_combout\) ) ) ) # ( \p1|reg0|Q\(8) 
-- & ( !\p1|mux0|y[3]~8_combout\ & ( (!\p1|mux0|y[3]~10_combout\ & ((\m0|altsyncram_component|auto_generated|q_a\(8)))) # (\p1|mux0|y[3]~10_combout\ & (\p1|mux0|y[8]~34_combout\)) ) ) ) # ( !\p1|reg0|Q\(8) & ( !\p1|mux0|y[3]~8_combout\ & ( 
-- (!\p1|mux0|y[3]~10_combout\ & ((\m0|altsyncram_component|auto_generated|q_a\(8)))) # (\p1|mux0|y[3]~10_combout\ & (\p1|mux0|y[8]~34_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|regG|ALT_INV_Q\(8),
	datab => \p1|mux0|ALT_INV_y[8]~34_combout\,
	datac => \m0|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datad => \p1|mux0|ALT_INV_y[3]~10_combout\,
	datae => \p1|reg0|ALT_INV_Q\(8),
	dataf => \p1|mux0|ALT_INV_y[3]~8_combout\,
	combout => \p1|mux0|y[8]~35_combout\);

-- Location: LABCELL_X41_Y2_N15
\p1|regAddr|Q[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|regAddr|Q[8]~feeder_combout\ = ( \p1|mux0|y[8]~35_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[8]~35_combout\,
	combout => \p1|regAddr|Q[8]~feeder_combout\);

-- Location: FF_X41_Y2_N16
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

-- Location: FF_X40_Y3_N37
\p1|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|fsm|DoutIn~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ff0|Q~q\);

-- Location: FF_X40_Y3_N35
\p1|regAddr|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[7]~32_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regAddr|Q\(7));

-- Location: LABCELL_X40_Y3_N30
wr_en : cyclonev_lcell_comb
-- Equation(s):
-- \wr_en~combout\ = (!\p1|regAddr|Q\(8) & (\p1|ff0|Q~q\ & !\p1|regAddr|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|regAddr|ALT_INV_Q\(8),
	datab => \p1|ff0|ALT_INV_Q~q\,
	datac => \p1|regAddr|ALT_INV_Q\(7),
	combout => \wr_en~combout\);

-- Location: FF_X43_Y3_N11
\p1|ir0|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m0|altsyncram_component|auto_generated|q_a\(8),
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|y_Q.TXX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(8));

-- Location: LABCELL_X40_Y3_N48
\p1|fsm|Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector0~1_combout\ = ( \p1|fsm|y_Q.T0~q\ & ( \p1|fsm|Selector0~0_combout\ & ( (!\p1|fsm|y_Q.T3~q\ & (!\p1|ir0|Q\(8) $ (!\p1|ir0|Q[7]~DUPLICATE_q\))) ) ) ) # ( !\p1|fsm|y_Q.T0~q\ & ( \p1|fsm|Selector0~0_combout\ & ( (\ff0|Q~q\ & 
-- (!\p1|fsm|y_Q.T3~q\ & (!\p1|ir0|Q\(8) $ (!\p1|ir0|Q[7]~DUPLICATE_q\)))) ) ) ) # ( \p1|fsm|y_Q.T0~q\ & ( !\p1|fsm|Selector0~0_combout\ & ( !\p1|fsm|y_Q.T3~q\ ) ) ) # ( !\p1|fsm|y_Q.T0~q\ & ( !\p1|fsm|Selector0~0_combout\ & ( (\ff0|Q~q\ & 
-- !\p1|fsm|y_Q.T3~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000111111110000000000010010000000000101101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(8),
	datab => \ff0|ALT_INV_Q~q\,
	datac => \p1|ir0|ALT_INV_Q[7]~DUPLICATE_q\,
	datad => \p1|fsm|ALT_INV_y_Q.T3~q\,
	datae => \p1|fsm|ALT_INV_y_Q.T0~q\,
	dataf => \p1|fsm|ALT_INV_Selector0~0_combout\,
	combout => \p1|fsm|Selector0~1_combout\);

-- Location: FF_X40_Y3_N50
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

-- Location: LABCELL_X40_Y3_N54
\p1|fsm|Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector10~0_combout\ = ( !\p1|fsm|y_Q.T0~q\ & ( \ff0|Q~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ff0|ALT_INV_Q~q\,
	dataf => \p1|fsm|ALT_INV_y_Q.T0~q\,
	combout => \p1|fsm|Selector10~0_combout\);

-- Location: FF_X40_Y3_N56
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

-- Location: FF_X40_Y3_N53
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

-- Location: FF_X42_Y4_N47
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

-- Location: MLABCELL_X42_Y1_N30
\p1|fsm|y_D.T2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|y_D.T2~0_combout\ = ( \p1|ir0|Q\(6) & ( (!\p1|fsm|y_Q.T3~DUPLICATE_q\ & \p1|fsm|y_Q.T1~q\) ) ) # ( !\p1|ir0|Q\(6) & ( (!\p1|fsm|y_Q.T3~DUPLICATE_q\ & (\p1|fsm|y_Q.T1~q\ & (!\p1|ir0|Q[7]~DUPLICATE_q\ $ (!\p1|ir0|Q[8]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100000001000100010001000000010001000000010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T3~DUPLICATE_q\,
	datab => \p1|fsm|ALT_INV_y_Q.T1~q\,
	datac => \p1|ir0|ALT_INV_Q[7]~DUPLICATE_q\,
	datad => \p1|ir0|ALT_INV_Q[8]~DUPLICATE_q\,
	datae => \p1|ir0|ALT_INV_Q\(6),
	combout => \p1|fsm|y_D.T2~0_combout\);

-- Location: FF_X42_Y4_N44
\p1|fsm|y_Q.T2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|fsm|y_D.T2~0_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|fsm|y_Q.T2~q\);

-- Location: FF_X43_Y3_N40
\p1|regG|Q[2]~DUPLICATE\ : dffeas
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
	q => \p1|regG|Q[2]~DUPLICATE_q\);

-- Location: FF_X40_Y2_N19
\p1|reg0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[2]~17_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(2));

-- Location: FF_X41_Y4_N5
\p1|reg3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[2]~17_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(2));

-- Location: FF_X40_Y2_N58
\p1|reg2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[2]~17_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q\(2));

-- Location: FF_X41_Y3_N44
\p1|reg1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[2]~17_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(2));

-- Location: MLABCELL_X45_Y3_N24
\p1|reg4|Q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg4|Q[2]~feeder_combout\ = ( \p1|mux0|y[2]~17_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[2]~17_combout\,
	combout => \p1|reg4|Q[2]~feeder_combout\);

-- Location: FF_X45_Y3_N25
\p1|reg4|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg4|Q[2]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg4|Q\(2));

-- Location: MLABCELL_X45_Y3_N30
\p1|reg5|Q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg5|Q[2]~feeder_combout\ = ( \p1|mux0|y[2]~17_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[2]~17_combout\,
	combout => \p1|reg5|Q[2]~feeder_combout\);

-- Location: FF_X45_Y3_N31
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
	ena => \p1|fsm|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(2));

-- Location: FF_X41_Y3_N14
\p1|reg6|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[2]~17_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(2));

-- Location: LABCELL_X41_Y3_N12
\p1|mux0|y[2]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[2]~15_combout\ = ( \p1|reg6|Q\(2) & ( \p1|mux0|y[3]~0_combout\ & ( (\p1|mux0|y[3]~1_combout\) # (\p1|reg5|Q\(2)) ) ) ) # ( !\p1|reg6|Q\(2) & ( \p1|mux0|y[3]~0_combout\ & ( (\p1|reg5|Q\(2) & !\p1|mux0|y[3]~1_combout\) ) ) ) # ( \p1|reg6|Q\(2) & 
-- ( !\p1|mux0|y[3]~0_combout\ & ( (!\p1|mux0|y[3]~1_combout\ & (\p1|reg4|Q\(2))) # (\p1|mux0|y[3]~1_combout\ & ((\p1|pc0|v\(2)))) ) ) ) # ( !\p1|reg6|Q\(2) & ( !\p1|mux0|y[3]~0_combout\ & ( (!\p1|mux0|y[3]~1_combout\ & (\p1|reg4|Q\(2))) # 
-- (\p1|mux0|y[3]~1_combout\ & ((\p1|pc0|v\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg4|ALT_INV_Q\(2),
	datab => \p1|reg5|ALT_INV_Q\(2),
	datac => \p1|mux0|ALT_INV_y[3]~1_combout\,
	datad => \p1|pc0|ALT_INV_v\(2),
	datae => \p1|reg6|ALT_INV_Q\(2),
	dataf => \p1|mux0|ALT_INV_y[3]~0_combout\,
	combout => \p1|mux0|y[2]~15_combout\);

-- Location: LABCELL_X41_Y3_N42
\p1|mux0|y[2]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[2]~16_combout\ = ( \p1|reg1|Q\(2) & ( \p1|mux0|y[2]~15_combout\ & ( (!\p1|mux0|y[3]~2_combout\) # ((!\p1|mux0|y[3]~56_combout\ & ((\p1|reg2|Q\(2)))) # (\p1|mux0|y[3]~56_combout\ & (\p1|reg3|Q\(2)))) ) ) ) # ( !\p1|reg1|Q\(2) & ( 
-- \p1|mux0|y[2]~15_combout\ & ( (!\p1|mux0|y[3]~56_combout\ & (((\p1|reg2|Q\(2) & \p1|mux0|y[3]~2_combout\)))) # (\p1|mux0|y[3]~56_combout\ & (((!\p1|mux0|y[3]~2_combout\)) # (\p1|reg3|Q\(2)))) ) ) ) # ( \p1|reg1|Q\(2) & ( !\p1|mux0|y[2]~15_combout\ & ( 
-- (!\p1|mux0|y[3]~56_combout\ & (((!\p1|mux0|y[3]~2_combout\) # (\p1|reg2|Q\(2))))) # (\p1|mux0|y[3]~56_combout\ & (\p1|reg3|Q\(2) & ((\p1|mux0|y[3]~2_combout\)))) ) ) ) # ( !\p1|reg1|Q\(2) & ( !\p1|mux0|y[2]~15_combout\ & ( (\p1|mux0|y[3]~2_combout\ & 
-- ((!\p1|mux0|y[3]~56_combout\ & ((\p1|reg2|Q\(2)))) # (\p1|mux0|y[3]~56_combout\ & (\p1|reg3|Q\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101110011000001110100110011000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg3|ALT_INV_Q\(2),
	datab => \p1|mux0|ALT_INV_y[3]~56_combout\,
	datac => \p1|reg2|ALT_INV_Q\(2),
	datad => \p1|mux0|ALT_INV_y[3]~2_combout\,
	datae => \p1|reg1|ALT_INV_Q\(2),
	dataf => \p1|mux0|ALT_INV_y[2]~15_combout\,
	combout => \p1|mux0|y[2]~16_combout\);

-- Location: LABCELL_X41_Y3_N24
\p1|mux0|y[2]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[2]~17_combout\ = ( \p1|mux0|y[3]~10_combout\ & ( \p1|mux0|y[2]~16_combout\ & ( (!\p1|mux0|y[3]~8_combout\) # (\p1|reg0|Q\(2)) ) ) ) # ( !\p1|mux0|y[3]~10_combout\ & ( \p1|mux0|y[2]~16_combout\ & ( (!\p1|mux0|y[3]~8_combout\ & 
-- ((\m0|altsyncram_component|auto_generated|q_a\(2)))) # (\p1|mux0|y[3]~8_combout\ & (\p1|regG|Q[2]~DUPLICATE_q\)) ) ) ) # ( \p1|mux0|y[3]~10_combout\ & ( !\p1|mux0|y[2]~16_combout\ & ( (\p1|reg0|Q\(2) & \p1|mux0|y[3]~8_combout\) ) ) ) # ( 
-- !\p1|mux0|y[3]~10_combout\ & ( !\p1|mux0|y[2]~16_combout\ & ( (!\p1|mux0|y[3]~8_combout\ & ((\m0|altsyncram_component|auto_generated|q_a\(2)))) # (\p1|mux0|y[3]~8_combout\ & (\p1|regG|Q[2]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000000000011001100001111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|regG|ALT_INV_Q[2]~DUPLICATE_q\,
	datab => \p1|reg0|ALT_INV_Q\(2),
	datac => \m0|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datad => \p1|mux0|ALT_INV_y[3]~8_combout\,
	datae => \p1|mux0|ALT_INV_y[3]~10_combout\,
	dataf => \p1|mux0|ALT_INV_y[2]~16_combout\,
	combout => \p1|mux0|y[2]~17_combout\);

-- Location: FF_X45_Y3_N58
\p1|regDout|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[2]~17_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|DoutIn~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regDout|Q\(2));

-- Location: FF_X40_Y3_N2
\p1|regAddr|Q[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[0]~11_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regAddr|Q[0]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y3_N21
\u0|En[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|En[5]~0_combout\ = ( !\p1|regAddr|Q\(1) & ( (\p1|regAddr|Q[0]~DUPLICATE_q\ & (\p1|ff0|Q~q\ & \p1|regAddr|Q\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|regAddr|ALT_INV_Q[0]~DUPLICATE_q\,
	datab => \p1|ff0|ALT_INV_Q~q\,
	datad => \p1|regAddr|ALT_INV_Q\(2),
	dataf => \p1|regAddr|ALT_INV_Q\(1),
	combout => \u0|En[5]~0_combout\);

-- Location: FF_X37_Y3_N8
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

-- Location: MLABCELL_X37_Y3_N48
\u0|r5|Q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|r5|Q[1]~feeder_combout\ = ( \p1|regDout|Q\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|regDout|ALT_INV_Q\(1),
	combout => \u0|r5|Q[1]~feeder_combout\);

-- Location: FF_X37_Y3_N50
\u0|r5|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u0|r5|Q[1]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \u0|En[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r5|Q\(1));

-- Location: MLABCELL_X37_Y3_N0
\u0|r5|Q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|r5|Q[3]~feeder_combout\ = ( \p1|regDout|Q\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|regDout|ALT_INV_Q\(3),
	combout => \u0|r5|Q[3]~feeder_combout\);

-- Location: FF_X37_Y3_N2
\u0|r5|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u0|r5|Q[3]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \u0|En[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r5|Q\(3));

-- Location: FF_X37_Y3_N53
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

-- Location: MLABCELL_X37_Y3_N18
\u0|s5|hex[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s5|hex[6]~0_combout\ = ( \u0|r5|Q\(0) & ( (!\u0|r5|Q\(3) & (!\u0|r5|Q\(2) $ (\u0|r5|Q\(1)))) ) ) # ( !\u0|r5|Q\(0) & ( (!\u0|r5|Q\(1) & (!\u0|r5|Q\(2) $ (\u0|r5|Q\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000110000110000000011000011000011000000001100001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|r5|ALT_INV_Q\(2),
	datac => \u0|r5|ALT_INV_Q\(1),
	datad => \u0|r5|ALT_INV_Q\(3),
	dataf => \u0|r5|ALT_INV_Q\(0),
	combout => \u0|s5|hex[6]~0_combout\);

-- Location: MLABCELL_X37_Y3_N12
\u0|s5|hex[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s5|hex[5]~1_combout\ = ( \u0|r5|Q\(0) & ( !\u0|r5|Q\(3) $ (((\u0|r5|Q\(2) & !\u0|r5|Q\(1)))) ) ) # ( !\u0|r5|Q\(0) & ( (!\u0|r5|Q\(2) & (\u0|r5|Q\(1) & !\u0|r5|Q\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000011001111001100001100111100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|r5|ALT_INV_Q\(2),
	datac => \u0|r5|ALT_INV_Q\(1),
	datad => \u0|r5|ALT_INV_Q\(3),
	dataf => \u0|r5|ALT_INV_Q\(0),
	combout => \u0|s5|hex[5]~1_combout\);

-- Location: MLABCELL_X37_Y3_N42
\u0|s5|hex[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s5|hex[4]~2_combout\ = ( \u0|r5|Q\(3) & ( \u0|r5|Q\(0) & ( (!\u0|r5|Q\(1) & !\u0|r5|Q\(2)) ) ) ) # ( !\u0|r5|Q\(3) & ( \u0|r5|Q\(0) ) ) # ( !\u0|r5|Q\(3) & ( !\u0|r5|Q\(0) & ( (!\u0|r5|Q\(1) & \u0|r5|Q\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010000000000000000011111111111111111000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r5|ALT_INV_Q\(1),
	datab => \u0|r5|ALT_INV_Q\(2),
	datae => \u0|r5|ALT_INV_Q\(3),
	dataf => \u0|r5|ALT_INV_Q\(0),
	combout => \u0|s5|hex[4]~2_combout\);

-- Location: MLABCELL_X37_Y3_N21
\u0|s5|hex[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s5|hex[3]~3_combout\ = ( \u0|r5|Q\(0) & ( (!\u0|r5|Q\(1) & (!\u0|r5|Q\(2) & !\u0|r5|Q\(3))) # (\u0|r5|Q\(1) & (\u0|r5|Q\(2))) ) ) # ( !\u0|r5|Q\(0) & ( (!\u0|r5|Q\(1) & (\u0|r5|Q\(2) & !\u0|r5|Q\(3))) # (\u0|r5|Q\(1) & (!\u0|r5|Q\(2) & \u0|r5|Q\(3))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001000100001000100100010010011001000100011001100100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r5|ALT_INV_Q\(1),
	datab => \u0|r5|ALT_INV_Q\(2),
	datad => \u0|r5|ALT_INV_Q\(3),
	dataf => \u0|r5|ALT_INV_Q\(0),
	combout => \u0|s5|hex[3]~3_combout\);

-- Location: MLABCELL_X37_Y3_N36
\u0|s5|hex[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s5|hex[2]~4_combout\ = ( \u0|r5|Q\(0) & ( (\u0|r5|Q\(2) & (\u0|r5|Q\(1) & \u0|r5|Q\(3))) ) ) # ( !\u0|r5|Q\(0) & ( (!\u0|r5|Q\(2) & (\u0|r5|Q\(1) & !\u0|r5|Q\(3))) # (\u0|r5|Q\(2) & ((\u0|r5|Q\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000110011000011000011001100000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|r5|ALT_INV_Q\(2),
	datac => \u0|r5|ALT_INV_Q\(1),
	datad => \u0|r5|ALT_INV_Q\(3),
	dataf => \u0|r5|ALT_INV_Q\(0),
	combout => \u0|s5|hex[2]~4_combout\);

-- Location: MLABCELL_X37_Y3_N39
\u0|s5|hex[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s5|hex[1]~5_combout\ = ( \u0|r5|Q\(0) & ( (!\u0|r5|Q\(1) & (\u0|r5|Q\(2) & !\u0|r5|Q\(3))) # (\u0|r5|Q\(1) & ((\u0|r5|Q\(3)))) ) ) # ( !\u0|r5|Q\(0) & ( (\u0|r5|Q\(2) & ((\u0|r5|Q\(3)) # (\u0|r5|Q\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100110011000100010011001100100010010101010010001001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r5|ALT_INV_Q\(1),
	datab => \u0|r5|ALT_INV_Q\(2),
	datad => \u0|r5|ALT_INV_Q\(3),
	dataf => \u0|r5|ALT_INV_Q\(0),
	combout => \u0|s5|hex[1]~5_combout\);

-- Location: MLABCELL_X37_Y3_N15
\u0|s5|hex[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s5|hex[0]~6_combout\ = ( \u0|r5|Q\(0) & ( (!\u0|r5|Q\(1) & (!\u0|r5|Q\(2) $ (\u0|r5|Q\(3)))) # (\u0|r5|Q\(1) & (!\u0|r5|Q\(2) & \u0|r5|Q\(3))) ) ) # ( !\u0|r5|Q\(0) & ( (!\u0|r5|Q\(1) & (\u0|r5|Q\(2) & !\u0|r5|Q\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000010001000011001101000100001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r5|ALT_INV_Q\(1),
	datab => \u0|r5|ALT_INV_Q\(2),
	datad => \u0|r5|ALT_INV_Q\(3),
	dataf => \u0|r5|ALT_INV_Q\(0),
	combout => \u0|s5|hex[0]~6_combout\);

-- Location: FF_X40_Y3_N38
\p1|ff0|Q~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \p1|fsm|DoutIn~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ff0|Q~DUPLICATE_q\);

-- Location: LABCELL_X40_Y3_N3
\u0|En[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|En[4]~1_combout\ = ( \p1|regAddr|Q\(2) & ( !\p1|regAddr|Q\(1) & ( (\p1|ff0|Q~DUPLICATE_q\ & !\p1|regAddr|Q[0]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ff0|ALT_INV_Q~DUPLICATE_q\,
	datad => \p1|regAddr|ALT_INV_Q[0]~DUPLICATE_q\,
	datae => \p1|regAddr|ALT_INV_Q\(2),
	dataf => \p1|regAddr|ALT_INV_Q\(1),
	combout => \u0|En[4]~1_combout\);

-- Location: FF_X45_Y1_N5
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

-- Location: FF_X45_Y1_N8
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

-- Location: FF_X45_Y1_N2
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

-- Location: FF_X45_Y1_N13
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

-- Location: LABCELL_X44_Y1_N51
\u0|s4|hex[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s4|hex[6]~0_combout\ = ( \u0|r4|Q\(3) & ( (!\u0|r4|Q\(1) & (\u0|r4|Q\(2) & !\u0|r4|Q\(0))) ) ) # ( !\u0|r4|Q\(3) & ( (!\u0|r4|Q\(1) & (!\u0|r4|Q\(2))) # (\u0|r4|Q\(1) & (\u0|r4|Q\(2) & \u0|r4|Q\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100101101000001010010100001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r4|ALT_INV_Q\(1),
	datac => \u0|r4|ALT_INV_Q\(2),
	datad => \u0|r4|ALT_INV_Q\(0),
	dataf => \u0|r4|ALT_INV_Q\(3),
	combout => \u0|s4|hex[6]~0_combout\);

-- Location: LABCELL_X44_Y1_N45
\u0|s4|hex[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s4|hex[5]~1_combout\ = (!\u0|r4|Q\(1) & (\u0|r4|Q\(0) & (!\u0|r4|Q\(3) $ (\u0|r4|Q\(2))))) # (\u0|r4|Q\(1) & (!\u0|r4|Q\(3) & ((!\u0|r4|Q\(2)) # (\u0|r4|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011000110010000001100011001000000110001100100000011000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r4|ALT_INV_Q\(1),
	datab => \u0|r4|ALT_INV_Q\(3),
	datac => \u0|r4|ALT_INV_Q\(2),
	datad => \u0|r4|ALT_INV_Q\(0),
	combout => \u0|s4|hex[5]~1_combout\);

-- Location: LABCELL_X44_Y1_N42
\u0|s4|hex[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s4|hex[4]~2_combout\ = (!\u0|r4|Q\(1) & ((!\u0|r4|Q\(2) & ((\u0|r4|Q\(0)))) # (\u0|r4|Q\(2) & (!\u0|r4|Q\(3))))) # (\u0|r4|Q\(1) & (!\u0|r4|Q\(3) & ((\u0|r4|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101100000010001110110000001000111011000000100011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r4|ALT_INV_Q\(1),
	datab => \u0|r4|ALT_INV_Q\(3),
	datac => \u0|r4|ALT_INV_Q\(2),
	datad => \u0|r4|ALT_INV_Q\(0),
	combout => \u0|s4|hex[4]~2_combout\);

-- Location: MLABCELL_X45_Y1_N21
\u0|s4|hex[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s4|hex[3]~3_combout\ = ( \u0|r4|Q\(3) & ( (\u0|r4|Q\(1) & (!\u0|r4|Q\(2) $ (\u0|r4|Q\(0)))) ) ) # ( !\u0|r4|Q\(3) & ( (!\u0|r4|Q\(1) & (!\u0|r4|Q\(2) $ (!\u0|r4|Q\(0)))) # (\u0|r4|Q\(1) & (\u0|r4|Q\(2) & \u0|r4|Q\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100101000010101010010101010000000001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r4|ALT_INV_Q\(1),
	datac => \u0|r4|ALT_INV_Q\(2),
	datad => \u0|r4|ALT_INV_Q\(0),
	dataf => \u0|r4|ALT_INV_Q\(3),
	combout => \u0|s4|hex[3]~3_combout\);

-- Location: MLABCELL_X45_Y1_N48
\u0|s4|hex[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s4|hex[2]~4_combout\ = ( \u0|r4|Q\(2) & ( (\u0|r4|Q\(3) & ((!\u0|r4|Q\(0)) # (\u0|r4|Q\(1)))) ) ) # ( !\u0|r4|Q\(2) & ( (!\u0|r4|Q\(3) & (\u0|r4|Q\(1) & !\u0|r4|Q\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000110011000000110011001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|r4|ALT_INV_Q\(3),
	datac => \u0|r4|ALT_INV_Q\(1),
	datad => \u0|r4|ALT_INV_Q\(0),
	dataf => \u0|r4|ALT_INV_Q\(2),
	combout => \u0|s4|hex[2]~4_combout\);

-- Location: MLABCELL_X45_Y1_N9
\u0|s4|hex[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s4|hex[1]~5_combout\ = ( \u0|r4|Q\(0) & ( \u0|r4|Q\(3) & ( \u0|r4|Q\(1) ) ) ) # ( !\u0|r4|Q\(0) & ( \u0|r4|Q\(3) & ( \u0|r4|Q\(2) ) ) ) # ( \u0|r4|Q\(0) & ( !\u0|r4|Q\(3) & ( (\u0|r4|Q\(2) & !\u0|r4|Q\(1)) ) ) ) # ( !\u0|r4|Q\(0) & ( !\u0|r4|Q\(3) & ( 
-- (\u0|r4|Q\(2) & \u0|r4|Q\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011001100000011000000110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|r4|ALT_INV_Q\(2),
	datac => \u0|r4|ALT_INV_Q\(1),
	datae => \u0|r4|ALT_INV_Q\(0),
	dataf => \u0|r4|ALT_INV_Q\(3),
	combout => \u0|s4|hex[1]~5_combout\);

-- Location: MLABCELL_X45_Y1_N15
\u0|s4|hex[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s4|hex[0]~6_combout\ = ( \u0|r4|Q\(0) & ( \u0|r4|Q\(3) & ( !\u0|r4|Q\(2) $ (!\u0|r4|Q\(1)) ) ) ) # ( \u0|r4|Q\(0) & ( !\u0|r4|Q\(3) & ( (!\u0|r4|Q\(2) & !\u0|r4|Q\(1)) ) ) ) # ( !\u0|r4|Q\(0) & ( !\u0|r4|Q\(3) & ( (\u0|r4|Q\(2) & !\u0|r4|Q\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000110000001100000000000000000000000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|r4|ALT_INV_Q\(2),
	datac => \u0|r4|ALT_INV_Q\(1),
	datae => \u0|r4|ALT_INV_Q\(0),
	dataf => \u0|r4|ALT_INV_Q\(3),
	combout => \u0|s4|hex[0]~6_combout\);

-- Location: LABCELL_X40_Y3_N18
\u0|En[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|En[3]~2_combout\ = ( \p1|regAddr|Q\(1) & ( (\p1|ff0|Q~q\ & (\p1|regAddr|Q[0]~DUPLICATE_q\ & !\p1|regAddr|Q\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|ff0|ALT_INV_Q~q\,
	datac => \p1|regAddr|ALT_INV_Q[0]~DUPLICATE_q\,
	datad => \p1|regAddr|ALT_INV_Q\(2),
	dataf => \p1|regAddr|ALT_INV_Q\(1),
	combout => \u0|En[3]~2_combout\);

-- Location: FF_X44_Y1_N44
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

-- Location: FF_X44_Y1_N37
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

-- Location: FF_X44_Y1_N47
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

-- Location: FF_X44_Y1_N40
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

-- Location: MLABCELL_X45_Y1_N18
\u0|s3|hex[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s3|hex[6]~0_combout\ = ( \u0|r3|Q\(2) & ( (!\u0|r3|Q\(1) & (\u0|r3|Q\(3) & !\u0|r3|Q\(0))) # (\u0|r3|Q\(1) & (!\u0|r3|Q\(3) & \u0|r3|Q\(0))) ) ) # ( !\u0|r3|Q\(2) & ( (!\u0|r3|Q\(1) & !\u0|r3|Q\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000001100001100000000110000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|r3|ALT_INV_Q\(1),
	datac => \u0|r3|ALT_INV_Q\(3),
	datad => \u0|r3|ALT_INV_Q\(0),
	dataf => \u0|r3|ALT_INV_Q\(2),
	combout => \u0|s3|hex[6]~0_combout\);

-- Location: MLABCELL_X45_Y1_N33
\u0|s3|hex[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s3|hex[5]~1_combout\ = ( \u0|r3|Q\(2) & ( (\u0|r3|Q\(0) & (!\u0|r3|Q\(3) $ (!\u0|r3|Q\(1)))) ) ) # ( !\u0|r3|Q\(2) & ( (!\u0|r3|Q\(3) & ((\u0|r3|Q\(1)) # (\u0|r3|Q\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000101010001010100010101000010010000100100001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r3|ALT_INV_Q\(3),
	datab => \u0|r3|ALT_INV_Q\(0),
	datac => \u0|r3|ALT_INV_Q\(1),
	dataf => \u0|r3|ALT_INV_Q\(2),
	combout => \u0|s3|hex[5]~1_combout\);

-- Location: MLABCELL_X45_Y1_N36
\u0|s3|hex[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s3|hex[4]~2_combout\ = ( \u0|r3|Q\(1) & ( (!\u0|r3|Q\(3) & \u0|r3|Q\(0)) ) ) # ( !\u0|r3|Q\(1) & ( (!\u0|r3|Q\(2) & ((\u0|r3|Q\(0)))) # (\u0|r3|Q\(2) & (!\u0|r3|Q\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101000111010001110100011101000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r3|ALT_INV_Q\(3),
	datab => \u0|r3|ALT_INV_Q\(0),
	datac => \u0|r3|ALT_INV_Q\(2),
	dataf => \u0|r3|ALT_INV_Q\(1),
	combout => \u0|s3|hex[4]~2_combout\);

-- Location: MLABCELL_X45_Y1_N0
\u0|s3|hex[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s3|hex[3]~3_combout\ = ( \u0|r3|Q\(1) & ( (!\u0|r3|Q\(0) & (\u0|r3|Q\(3) & !\u0|r3|Q\(2))) # (\u0|r3|Q\(0) & ((\u0|r3|Q\(2)))) ) ) # ( !\u0|r3|Q\(1) & ( (!\u0|r3|Q\(3) & (!\u0|r3|Q\(0) $ (!\u0|r3|Q\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000001010000010100001000011010000110100001101000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r3|ALT_INV_Q\(3),
	datab => \u0|r3|ALT_INV_Q\(0),
	datac => \u0|r3|ALT_INV_Q\(2),
	dataf => \u0|r3|ALT_INV_Q\(1),
	combout => \u0|s3|hex[3]~3_combout\);

-- Location: LABCELL_X44_Y1_N54
\u0|s3|hex[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s3|hex[2]~4_combout\ = ( \u0|r3|Q\(1) & ( (!\u0|r3|Q\(2) & (!\u0|r3|Q\(0) & !\u0|r3|Q\(3))) # (\u0|r3|Q\(2) & ((\u0|r3|Q\(3)))) ) ) # ( !\u0|r3|Q\(1) & ( (!\u0|r3|Q\(0) & (\u0|r3|Q\(2) & \u0|r3|Q\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110011000000000011111100000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|r3|ALT_INV_Q\(0),
	datac => \u0|r3|ALT_INV_Q\(2),
	datad => \u0|r3|ALT_INV_Q\(3),
	dataf => \u0|r3|ALT_INV_Q\(1),
	combout => \u0|s3|hex[2]~4_combout\);

-- Location: MLABCELL_X45_Y1_N39
\u0|s3|hex[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s3|hex[1]~5_combout\ = ( \u0|r3|Q\(2) & ( (!\u0|r3|Q\(3) & (!\u0|r3|Q\(0) $ (!\u0|r3|Q\(1)))) # (\u0|r3|Q\(3) & ((!\u0|r3|Q\(0)) # (\u0|r3|Q\(1)))) ) ) # ( !\u0|r3|Q\(2) & ( (\u0|r3|Q\(3) & (\u0|r3|Q\(0) & \u0|r3|Q\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000101101101011011010110110101101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r3|ALT_INV_Q\(3),
	datab => \u0|r3|ALT_INV_Q\(0),
	datac => \u0|r3|ALT_INV_Q\(1),
	dataf => \u0|r3|ALT_INV_Q\(2),
	combout => \u0|s3|hex[1]~5_combout\);

-- Location: MLABCELL_X45_Y1_N30
\u0|s3|hex[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s3|hex[0]~6_combout\ = ( \u0|r3|Q\(1) & ( (\u0|r3|Q\(3) & (\u0|r3|Q\(0) & !\u0|r3|Q\(2))) ) ) # ( !\u0|r3|Q\(1) & ( (!\u0|r3|Q\(3) & (!\u0|r3|Q\(0) $ (!\u0|r3|Q\(2)))) # (\u0|r3|Q\(3) & (\u0|r3|Q\(0) & \u0|r3|Q\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100100101001001010010010100100010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r3|ALT_INV_Q\(3),
	datab => \u0|r3|ALT_INV_Q\(0),
	datac => \u0|r3|ALT_INV_Q\(2),
	dataf => \u0|r3|ALT_INV_Q\(1),
	combout => \u0|s3|hex[0]~6_combout\);

-- Location: LABCELL_X40_Y3_N9
\u0|En[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|En[2]~3_combout\ = ( !\p1|regAddr|Q\(2) & ( (\p1|ff0|Q~DUPLICATE_q\ & (\p1|regAddr|Q\(1) & !\p1|regAddr|Q[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000000000000000000000101000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ff0|ALT_INV_Q~DUPLICATE_q\,
	datac => \p1|regAddr|ALT_INV_Q\(1),
	datad => \p1|regAddr|ALT_INV_Q[0]~DUPLICATE_q\,
	datae => \p1|regAddr|ALT_INV_Q\(2),
	combout => \u0|En[2]~3_combout\);

-- Location: FF_X44_Y1_N17
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

-- Location: FF_X44_Y1_N32
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

-- Location: FF_X44_Y1_N35
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

-- Location: FF_X44_Y1_N14
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

-- Location: LABCELL_X44_Y1_N24
\u0|s2|hex[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s2|hex[6]~0_combout\ = ( \u0|r2|Q\(3) & ( (!\u0|r2|Q\(1) & (\u0|r2|Q\(2) & !\u0|r2|Q\(0))) ) ) # ( !\u0|r2|Q\(3) & ( (!\u0|r2|Q\(1) & (!\u0|r2|Q\(2))) # (\u0|r2|Q\(1) & (\u0|r2|Q\(2) & \u0|r2|Q\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100110001001100010011000100100100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r2|ALT_INV_Q\(1),
	datab => \u0|r2|ALT_INV_Q\(2),
	datac => \u0|r2|ALT_INV_Q\(0),
	dataf => \u0|r2|ALT_INV_Q\(3),
	combout => \u0|s2|hex[6]~0_combout\);

-- Location: LABCELL_X44_Y1_N27
\u0|s2|hex[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s2|hex[5]~1_combout\ = ( \u0|r2|Q\(0) & ( !\u0|r2|Q\(3) $ (((!\u0|r2|Q\(1) & \u0|r2|Q\(2)))) ) ) # ( !\u0|r2|Q\(0) & ( (\u0|r2|Q\(1) & (!\u0|r2|Q\(2) & !\u0|r2|Q\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000011010010110100101101001011010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r2|ALT_INV_Q\(1),
	datab => \u0|r2|ALT_INV_Q\(2),
	datac => \u0|r2|ALT_INV_Q\(3),
	dataf => \u0|r2|ALT_INV_Q\(0),
	combout => \u0|s2|hex[5]~1_combout\);

-- Location: LABCELL_X44_Y1_N48
\u0|s2|hex[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s2|hex[4]~2_combout\ = ( \u0|r2|Q\(3) & ( (!\u0|r2|Q\(2) & (\u0|r2|Q\(0) & !\u0|r2|Q\(1))) ) ) # ( !\u0|r2|Q\(3) & ( ((\u0|r2|Q\(2) & !\u0|r2|Q\(1))) # (\u0|r2|Q\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100001111001111110000111100001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|r2|ALT_INV_Q\(2),
	datac => \u0|r2|ALT_INV_Q\(0),
	datad => \u0|r2|ALT_INV_Q\(1),
	dataf => \u0|r2|ALT_INV_Q\(3),
	combout => \u0|s2|hex[4]~2_combout\);

-- Location: LABCELL_X44_Y1_N12
\u0|s2|hex[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s2|hex[3]~3_combout\ = ( \u0|r2|Q\(1) & ( (!\u0|r2|Q\(0) & (!\u0|r2|Q\(2) & \u0|r2|Q\(3))) # (\u0|r2|Q\(0) & (\u0|r2|Q\(2))) ) ) # ( !\u0|r2|Q\(1) & ( (!\u0|r2|Q\(3) & (!\u0|r2|Q\(0) $ (!\u0|r2|Q\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011000000000011001100000000000010001100110010001000110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r2|ALT_INV_Q\(0),
	datab => \u0|r2|ALT_INV_Q\(2),
	datad => \u0|r2|ALT_INV_Q\(3),
	dataf => \u0|r2|ALT_INV_Q\(1),
	combout => \u0|s2|hex[3]~3_combout\);

-- Location: LABCELL_X44_Y1_N30
\u0|s2|hex[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s2|hex[2]~4_combout\ = (!\u0|r2|Q\(3) & (\u0|r2|Q\(1) & (!\u0|r2|Q\(0) & !\u0|r2|Q\(2)))) # (\u0|r2|Q\(3) & (\u0|r2|Q\(2) & ((!\u0|r2|Q\(0)) # (\u0|r2|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000110001010000000011000101000000001100010100000000110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r2|ALT_INV_Q\(1),
	datab => \u0|r2|ALT_INV_Q\(3),
	datac => \u0|r2|ALT_INV_Q\(0),
	datad => \u0|r2|ALT_INV_Q\(2),
	combout => \u0|s2|hex[2]~4_combout\);

-- Location: LABCELL_X44_Y1_N15
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

-- Location: LABCELL_X44_Y1_N33
\u0|s2|hex[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s2|hex[0]~6_combout\ = ( \u0|r2|Q\(2) & ( (!\u0|r2|Q\(1) & (!\u0|r2|Q\(3) $ (\u0|r2|Q\(0)))) ) ) # ( !\u0|r2|Q\(2) & ( (\u0|r2|Q\(0) & (!\u0|r2|Q\(3) $ (\u0|r2|Q\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000011000000001100001111000000001100001100000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|r2|ALT_INV_Q\(3),
	datac => \u0|r2|ALT_INV_Q\(1),
	datad => \u0|r2|ALT_INV_Q\(0),
	dataf => \u0|r2|ALT_INV_Q\(2),
	combout => \u0|s2|hex[0]~6_combout\);

-- Location: LABCELL_X40_Y3_N45
\u0|En[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|En[1]~4_combout\ = ( !\p1|regAddr|Q\(1) & ( (\p1|regAddr|Q[0]~DUPLICATE_q\ & (\p1|ff0|Q~q\ & !\p1|regAddr|Q\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000100010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|regAddr|ALT_INV_Q[0]~DUPLICATE_q\,
	datab => \p1|ff0|ALT_INV_Q~q\,
	datad => \p1|regAddr|ALT_INV_Q\(2),
	dataf => \p1|regAddr|ALT_INV_Q\(1),
	combout => \u0|En[1]~4_combout\);

-- Location: FF_X44_Y1_N23
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

-- Location: FF_X44_Y1_N2
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

-- Location: FF_X44_Y1_N5
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

-- Location: FF_X44_Y1_N20
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

-- Location: LABCELL_X44_Y1_N57
\u0|s1|hex[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s1|hex[6]~0_combout\ = ( \u0|r1|Q\(3) & ( (!\u0|r1|Q\(1) & (\u0|r1|Q\(2) & !\u0|r1|Q\(0))) ) ) # ( !\u0|r1|Q\(3) & ( (!\u0|r1|Q\(1) & (!\u0|r1|Q\(2))) # (\u0|r1|Q\(1) & (\u0|r1|Q\(2) & \u0|r1|Q\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100101101000001010010100001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|ALT_INV_Q\(1),
	datac => \u0|r1|ALT_INV_Q\(2),
	datad => \u0|r1|ALT_INV_Q\(0),
	dataf => \u0|r1|ALT_INV_Q\(3),
	combout => \u0|s1|hex[6]~0_combout\);

-- Location: LABCELL_X44_Y1_N6
\u0|s1|hex[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s1|hex[5]~1_combout\ = (!\u0|r1|Q\(1) & (\u0|r1|Q\(0) & (!\u0|r1|Q\(2) $ (\u0|r1|Q\(3))))) # (\u0|r1|Q\(1) & (!\u0|r1|Q\(3) & ((!\u0|r1|Q\(2)) # (\u0|r1|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011010010010000001101001001000000110100100100000011010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|ALT_INV_Q\(1),
	datab => \u0|r1|ALT_INV_Q\(2),
	datac => \u0|r1|ALT_INV_Q\(3),
	datad => \u0|r1|ALT_INV_Q\(0),
	combout => \u0|s1|hex[5]~1_combout\);

-- Location: LABCELL_X44_Y1_N9
\u0|s1|hex[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s1|hex[4]~2_combout\ = ( \u0|r1|Q\(3) & ( (!\u0|r1|Q\(1) & (!\u0|r1|Q\(2) & \u0|r1|Q\(0))) ) ) # ( !\u0|r1|Q\(3) & ( ((!\u0|r1|Q\(1) & \u0|r1|Q\(2))) # (\u0|r1|Q\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001011111111001000101111111100000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|ALT_INV_Q\(1),
	datab => \u0|r1|ALT_INV_Q\(2),
	datad => \u0|r1|ALT_INV_Q\(0),
	dataf => \u0|r1|ALT_INV_Q\(3),
	combout => \u0|s1|hex[4]~2_combout\);

-- Location: LABCELL_X44_Y1_N18
\u0|s1|hex[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s1|hex[3]~3_combout\ = (!\u0|r1|Q\(1) & (!\u0|r1|Q\(3) & (!\u0|r1|Q\(0) $ (!\u0|r1|Q\(2))))) # (\u0|r1|Q\(1) & ((!\u0|r1|Q\(0) & (!\u0|r1|Q\(2) & \u0|r1|Q\(3))) # (\u0|r1|Q\(0) & (\u0|r1|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000100001001011000010000100101100001000010010110000100001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|ALT_INV_Q\(0),
	datab => \u0|r1|ALT_INV_Q\(2),
	datac => \u0|r1|ALT_INV_Q\(1),
	datad => \u0|r1|ALT_INV_Q\(3),
	combout => \u0|s1|hex[3]~3_combout\);

-- Location: LABCELL_X44_Y1_N0
\u0|s1|hex[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s1|hex[2]~4_combout\ = ( \u0|r1|Q\(3) & ( (\u0|r1|Q\(2) & ((!\u0|r1|Q\(0)) # (\u0|r1|Q\(1)))) ) ) # ( !\u0|r1|Q\(3) & ( (\u0|r1|Q\(1) & (!\u0|r1|Q\(0) & !\u0|r1|Q\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000000000111101010000000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|ALT_INV_Q\(1),
	datac => \u0|r1|ALT_INV_Q\(0),
	datad => \u0|r1|ALT_INV_Q\(2),
	dataf => \u0|r1|ALT_INV_Q\(3),
	combout => \u0|s1|hex[2]~4_combout\);

-- Location: LABCELL_X44_Y1_N21
\u0|s1|hex[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s1|hex[1]~5_combout\ = ( \u0|r1|Q\(3) & ( (!\u0|r1|Q\(0) & (\u0|r1|Q\(2))) # (\u0|r1|Q\(0) & ((\u0|r1|Q\(1)))) ) ) # ( !\u0|r1|Q\(3) & ( (\u0|r1|Q\(2) & (!\u0|r1|Q\(0) $ (!\u0|r1|Q\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100100010000100010010001000100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|ALT_INV_Q\(0),
	datab => \u0|r1|ALT_INV_Q\(2),
	datad => \u0|r1|ALT_INV_Q\(1),
	dataf => \u0|r1|ALT_INV_Q\(3),
	combout => \u0|s1|hex[1]~5_combout\);

-- Location: LABCELL_X44_Y1_N3
\u0|s1|hex[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s1|hex[0]~6_combout\ = ( \u0|r1|Q\(3) & ( (\u0|r1|Q\(0) & (!\u0|r1|Q\(1) $ (!\u0|r1|Q\(2)))) ) ) # ( !\u0|r1|Q\(3) & ( (!\u0|r1|Q\(1) & (!\u0|r1|Q\(2) $ (!\u0|r1|Q\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100000000010101010000000000000010110100000000001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|ALT_INV_Q\(1),
	datac => \u0|r1|ALT_INV_Q\(2),
	datad => \u0|r1|ALT_INV_Q\(0),
	dataf => \u0|r1|ALT_INV_Q\(3),
	combout => \u0|s1|hex[0]~6_combout\);

-- Location: LABCELL_X40_Y3_N42
\u0|En[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|En[0]~5_combout\ = ( !\p1|regAddr|Q\(1) & ( (!\p1|regAddr|Q[0]~DUPLICATE_q\ & (\p1|ff0|Q~q\ & !\p1|regAddr|Q\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|regAddr|ALT_INV_Q[0]~DUPLICATE_q\,
	datab => \p1|ff0|ALT_INV_Q~q\,
	datac => \p1|regAddr|ALT_INV_Q\(2),
	dataf => \p1|regAddr|ALT_INV_Q\(1),
	combout => \u0|En[0]~5_combout\);

-- Location: FF_X45_Y1_N26
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

-- Location: FF_X45_Y1_N44
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

-- Location: FF_X45_Y1_N29
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

-- Location: FF_X45_Y1_N53
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

-- Location: MLABCELL_X45_Y1_N45
\u0|s0|hex[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s0|hex[6]~0_combout\ = ( \u0|r0|Q\(0) & ( (!\u0|r0|Q\(3) & (!\u0|r0|Q\(2) $ (\u0|r0|Q\(1)))) ) ) # ( !\u0|r0|Q\(0) & ( (!\u0|r0|Q\(1) & (!\u0|r0|Q\(2) $ (\u0|r0|Q\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010100000000101001010000000010100000010100001010000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|ALT_INV_Q\(2),
	datac => \u0|r0|ALT_INV_Q\(3),
	datad => \u0|r0|ALT_INV_Q\(1),
	dataf => \u0|r0|ALT_INV_Q\(0),
	combout => \u0|s0|hex[6]~0_combout\);

-- Location: MLABCELL_X45_Y1_N54
\u0|s0|hex[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s0|hex[5]~1_combout\ = ( \u0|r0|Q\(0) & ( !\u0|r0|Q\(3) $ (((\u0|r0|Q\(2) & !\u0|r0|Q\(1)))) ) ) # ( !\u0|r0|Q\(0) & ( (!\u0|r0|Q\(3) & (!\u0|r0|Q\(2) & \u0|r0|Q\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000011000011110011001100001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|r0|ALT_INV_Q\(3),
	datac => \u0|r0|ALT_INV_Q\(2),
	datad => \u0|r0|ALT_INV_Q\(1),
	dataf => \u0|r0|ALT_INV_Q\(0),
	combout => \u0|s0|hex[5]~1_combout\);

-- Location: MLABCELL_X45_Y1_N57
\u0|s0|hex[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s0|hex[4]~2_combout\ = ( \u0|r0|Q\(0) & ( (!\u0|r0|Q\(3)) # ((!\u0|r0|Q\(2) & !\u0|r0|Q\(1))) ) ) # ( !\u0|r0|Q\(0) & ( (\u0|r0|Q\(2) & (!\u0|r0|Q\(3) & !\u0|r0|Q\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000011101110110011001110111011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|ALT_INV_Q\(2),
	datab => \u0|r0|ALT_INV_Q\(3),
	datad => \u0|r0|ALT_INV_Q\(1),
	dataf => \u0|r0|ALT_INV_Q\(0),
	combout => \u0|s0|hex[4]~2_combout\);

-- Location: MLABCELL_X45_Y1_N42
\u0|s0|hex[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s0|hex[3]~3_combout\ = ( \u0|r0|Q\(0) & ( (!\u0|r0|Q\(2) & (!\u0|r0|Q\(1) & !\u0|r0|Q\(3))) # (\u0|r0|Q\(2) & (\u0|r0|Q\(1))) ) ) # ( !\u0|r0|Q\(0) & ( (!\u0|r0|Q\(2) & (\u0|r0|Q\(1) & \u0|r0|Q\(3))) # (\u0|r0|Q\(2) & (!\u0|r0|Q\(1) & !\u0|r0|Q\(3))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000001010010100000000101010100101000001011010010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|ALT_INV_Q\(2),
	datac => \u0|r0|ALT_INV_Q\(1),
	datad => \u0|r0|ALT_INV_Q\(3),
	dataf => \u0|r0|ALT_INV_Q\(0),
	combout => \u0|s0|hex[3]~3_combout\);

-- Location: MLABCELL_X45_Y1_N24
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

-- Location: MLABCELL_X45_Y1_N27
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

-- Location: MLABCELL_X45_Y1_N51
\u0|s0|hex[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s0|hex[0]~6_combout\ = ( \u0|r0|Q\(2) & ( (!\u0|r0|Q\(1) & (!\u0|r0|Q\(3) $ (\u0|r0|Q\(0)))) ) ) # ( !\u0|r0|Q\(2) & ( (\u0|r0|Q\(0) & (!\u0|r0|Q\(1) $ (\u0|r0|Q\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100101000000001010010110100000000010101010000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|ALT_INV_Q\(1),
	datac => \u0|r0|ALT_INV_Q\(3),
	datad => \u0|r0|ALT_INV_Q\(0),
	dataf => \u0|r0|ALT_INV_Q\(2),
	combout => \u0|s0|hex[0]~6_combout\);

-- Location: FF_X40_Y2_N16
\p1|reg2|Q[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg2|Q[1]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q[1]~DUPLICATE_q\);

-- Location: FF_X43_Y1_N37
\p1|reg2|Q[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg2|Q[3]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q[3]~DUPLICATE_q\);

-- Location: FF_X41_Y1_N52
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
	ena => \p1|fsm|Selector13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q\(5));

-- Location: FF_X40_Y2_N37
\p1|reg0|Q[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \p1|reg0|Q[1]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \p1|fsm|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q[1]~DUPLICATE_q\);

-- Location: LABCELL_X44_Y3_N15
\p1|fsm|Tstep_Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Tstep_Q~0_combout\ = ( \p1|fsm|y_Q.T0~q\ & ( \p1|fsm|y_Q.TXX~q\ ) ) # ( !\p1|fsm|y_Q.T0~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|fsm|ALT_INV_y_Q.TXX~q\,
	dataf => \p1|fsm|ALT_INV_y_Q.T0~q\,
	combout => \p1|fsm|Tstep_Q~0_combout\);

-- Location: LABCELL_X40_Y3_N57
\p1|fsm|Tstep_Q[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Tstep_Q\(1) = ( \p1|fsm|y_Q.TXX~q\ ) # ( !\p1|fsm|y_Q.TXX~q\ & ( \p1|fsm|y_Q.T1~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|fsm|ALT_INV_y_Q.T1~q\,
	dataf => \p1|fsm|ALT_INV_y_Q.TXX~q\,
	combout => \p1|fsm|Tstep_Q\(1));

-- Location: LABCELL_X47_Y3_N15
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

-- Location: LABCELL_X40_Y3_N33
led_en : cyclonev_lcell_comb
-- Equation(s):
-- \led_en~combout\ = ( !\p1|regAddr|Q\(8) & ( (\p1|ff0|Q~q\ & \p1|regAddr|Q\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|ff0|ALT_INV_Q~q\,
	datad => \p1|regAddr|ALT_INV_Q\(7),
	dataf => \p1|regAddr|ALT_INV_Q\(8),
	combout => \led_en~combout\);

-- Location: FF_X47_Y3_N16
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

-- Location: MLABCELL_X45_Y2_N42
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

-- Location: FF_X45_Y2_N43
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

-- Location: MLABCELL_X37_Y2_N12
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

-- Location: FF_X37_Y2_N13
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

-- Location: MLABCELL_X37_Y2_N9
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

-- Location: FF_X37_Y2_N10
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

-- Location: MLABCELL_X37_Y2_N36
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

-- Location: FF_X37_Y2_N37
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

-- Location: MLABCELL_X37_Y3_N33
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

-- Location: FF_X37_Y3_N35
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

-- Location: MLABCELL_X37_Y3_N24
\leds0|Q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \leds0|Q[6]~feeder_combout\ = ( \p1|regDout|Q\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|regDout|ALT_INV_Q\(6),
	combout => \leds0|Q[6]~feeder_combout\);

-- Location: FF_X37_Y3_N25
\leds0|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \leds0|Q[6]~feeder_combout\,
	clrn => \key0~inputCLKENA0_outclk\,
	ena => \led_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds0|Q\(6));

-- Location: MLABCELL_X37_Y3_N54
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

-- Location: FF_X37_Y3_N55
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

-- Location: MLABCELL_X37_Y3_N57
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

-- Location: FF_X37_Y3_N59
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

-- Location: LABCELL_X40_Y14_N0
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


