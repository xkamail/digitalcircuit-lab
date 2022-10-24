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

-- DATE "10/24/2022 14:45:02"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for Custom VHDL only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	processor IS
    PORT (
	data_in : IN std_logic_vector(8 DOWNTO 0);
	reset_n : IN std_logic;
	clk : IN std_logic;
	run : IN std_logic;
	done : BUFFER std_logic;
	busWires : BUFFER std_logic_vector(8 DOWNTO 0);
	ADDR : BUFFER std_logic_vector(8 DOWNTO 0);
	DOUT : BUFFER std_logic_vector(8 DOWNTO 0);
	Wr_en : BUFFER std_logic;
	reg_A : BUFFER std_logic_vector(8 DOWNTO 0);
	reg_G : BUFFER std_logic_vector(8 DOWNTO 0);
	reg_IR : BUFFER std_logic_vector(8 DOWNTO 0);
	reg_0 : BUFFER std_logic_vector(8 DOWNTO 0);
	reg_1 : BUFFER std_logic_vector(8 DOWNTO 0);
	reg_5 : BUFFER std_logic_vector(8 DOWNTO 0);
	debug_pr_in : BUFFER std_logic;
	debug_addrIn : BUFFER std_logic;
	pc_v : BUFFER std_logic_vector(8 DOWNTO 0);
	Tstep_Q : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END processor;

-- Design Ports Information
-- done	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busWires[0]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busWires[1]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busWires[2]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busWires[3]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busWires[4]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busWires[5]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busWires[6]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busWires[7]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busWires[8]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[1]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[2]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[3]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[4]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[5]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[6]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[7]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[8]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[0]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[1]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[2]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[3]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[4]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[5]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[6]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[7]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[8]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Wr_en	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_A[0]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_A[1]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_A[2]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_A[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_A[4]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_A[5]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_A[6]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_A[7]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_A[8]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_G[0]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_G[1]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_G[2]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_G[3]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_G[4]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_G[5]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_G[6]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_G[7]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_G[8]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_IR[0]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_IR[1]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_IR[2]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_IR[3]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_IR[4]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_IR[5]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_IR[6]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_IR[7]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_IR[8]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_0[0]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_0[1]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_0[2]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_0[3]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_0[4]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_0[5]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_0[6]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_0[7]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_0[8]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_1[0]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_1[1]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_1[2]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_1[3]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_1[4]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_1[5]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_1[6]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_1[7]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_1[8]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_5[0]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_5[1]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_5[2]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_5[3]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_5[4]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_5[5]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_5[6]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_5[7]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_5[8]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_pr_in	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_addrIn	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_v[0]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_v[1]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_v[2]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_v[3]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_v[4]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_v[5]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_v[6]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_v[7]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_v[8]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tstep_Q[0]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tstep_Q[1]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tstep_Q[2]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tstep_Q[3]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[4]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[5]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[6]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[7]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[8]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- run	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF processor IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_data_in : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_run : std_logic;
SIGNAL ww_done : std_logic;
SIGNAL ww_busWires : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_ADDR : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_DOUT : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_Wr_en : std_logic;
SIGNAL ww_reg_A : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_reg_G : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_reg_IR : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_reg_0 : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_reg_1 : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_reg_5 : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_debug_pr_in : std_logic;
SIGNAL ww_debug_addrIn : std_logic;
SIGNAL ww_pc_v : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_Tstep_Q : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \data_in[6]~input_o\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \run~input_o\ : std_logic;
SIGNAL \fsm|Selector10~1_combout\ : std_logic;
SIGNAL \fsm|y_Q.T1~q\ : std_logic;
SIGNAL \fsm|y_D.T2~0_combout\ : std_logic;
SIGNAL \fsm|y_Q.T2~q\ : std_logic;
SIGNAL \fsm|Selector0~0_combout\ : std_logic;
SIGNAL \fsm|y_Q.T0~q\ : std_logic;
SIGNAL \data_in[8]~input_o\ : std_logic;
SIGNAL \data_in[7]~input_o\ : std_logic;
SIGNAL \fsm|y_Q.T2~DUPLICATE_q\ : std_logic;
SIGNAL \fsm|y_D.T3~0_combout\ : std_logic;
SIGNAL \fsm|y_Q.T3~q\ : std_logic;
SIGNAL \fsm|Selector11~0_combout\ : std_logic;
SIGNAL \fsm|Mux37~0_combout\ : std_logic;
SIGNAL \fsm|Selector5~1_combout\ : std_logic;
SIGNAL \addsub0|Add0~38_cout\ : std_logic;
SIGNAL \addsub0|Add0~1_sumout\ : std_logic;
SIGNAL \fsm|Gin~0_combout\ : std_logic;
SIGNAL \data_in[3]~input_o\ : std_logic;
SIGNAL \data_in[4]~input_o\ : std_logic;
SIGNAL \fsm|Selector5~4_combout\ : std_logic;
SIGNAL \fsm|Selector6~1_combout\ : std_logic;
SIGNAL \data_in[1]~input_o\ : std_logic;
SIGNAL \data_in[0]~input_o\ : std_logic;
SIGNAL \data_in[2]~input_o\ : std_logic;
SIGNAL \fsm|Selector3~2_combout\ : std_logic;
SIGNAL \data_in[5]~input_o\ : std_logic;
SIGNAL \fsm|Selector3~3_combout\ : std_logic;
SIGNAL \reg0|Q[1]~feeder_combout\ : std_logic;
SIGNAL \reg3|Q[1]~feeder_combout\ : std_logic;
SIGNAL \fsm|Selector18~0_combout\ : std_logic;
SIGNAL \fsm|Selector17~1_combout\ : std_logic;
SIGNAL \fsm|Selector13~0_combout\ : std_logic;
SIGNAL \fsm|Selector3~0_combout\ : std_logic;
SIGNAL \fsm|Selector15~0_combout\ : std_logic;
SIGNAL \fsm|Selector5~5_combout\ : std_logic;
SIGNAL \fsm|Selector6~2_combout\ : std_logic;
SIGNAL \mux0|y[0]~45_combout\ : std_logic;
SIGNAL \fsm|Selector5~0_combout\ : std_logic;
SIGNAL \fsm|Selector6~0_combout\ : std_logic;
SIGNAL \fsm|Selector5~2_combout\ : std_logic;
SIGNAL \fsm|Selector6~3_combout\ : std_logic;
SIGNAL \fsm|Selector5~6_combout\ : std_logic;
SIGNAL \mux0|y[0]~44_combout\ : std_logic;
SIGNAL \mux0|y[0]~1_combout\ : std_logic;
SIGNAL \pc0|Add0~1_sumout\ : std_logic;
SIGNAL \fsm|Selector10~0_combout\ : std_logic;
SIGNAL \pc0|v[1]~1_combout\ : std_logic;
SIGNAL \fsm|Selector10~2_combout\ : std_logic;
SIGNAL \fsm|Equal1~2_combout\ : std_logic;
SIGNAL \pc0|v[1]~0_combout\ : std_logic;
SIGNAL \decX|Mux0~1_combout\ : std_logic;
SIGNAL \pc0|v[1]~2_combout\ : std_logic;
SIGNAL \pc0|Add0~2\ : std_logic;
SIGNAL \pc0|Add0~5_sumout\ : std_logic;
SIGNAL \reg6|Q[1]~feeder_combout\ : std_logic;
SIGNAL \decX|Mux0~0_combout\ : std_logic;
SIGNAL \fsm|Selector18~1_combout\ : std_logic;
SIGNAL \reg5|Q[1]~feeder_combout\ : std_logic;
SIGNAL \fsm|Selector17~2_combout\ : std_logic;
SIGNAL \fsm|Selector16~0_combout\ : std_logic;
SIGNAL \fsm|Selector7~0_combout\ : std_logic;
SIGNAL \fsm|Selector5~7_combout\ : std_logic;
SIGNAL \fsm|Selector6~4_combout\ : std_logic;
SIGNAL \fsm|Selector7~1_combout\ : std_logic;
SIGNAL \fsm|Selector7~2_combout\ : std_logic;
SIGNAL \fsm|Selector7~3_combout\ : std_logic;
SIGNAL \mux0|y[0]~0_combout\ : std_logic;
SIGNAL \mux0|y[1]~15_combout\ : std_logic;
SIGNAL \fsm|Selector2~0_combout\ : std_logic;
SIGNAL \fsm|Selector13~1_combout\ : std_logic;
SIGNAL \fsm|Selector2~2_combout\ : std_logic;
SIGNAL \mux0|y[0]~47_combout\ : std_logic;
SIGNAL \fsm|Selector3~1_combout\ : std_logic;
SIGNAL \fsm|Selector2~3_combout\ : std_logic;
SIGNAL \mux0|y[0]~46_combout\ : std_logic;
SIGNAL \fsm|Selector2~1_combout\ : std_logic;
SIGNAL \mux0|y[0]~3_combout\ : std_logic;
SIGNAL \fsm|Selector14~0_combout\ : std_logic;
SIGNAL \mux0|y[1]~16_combout\ : std_logic;
SIGNAL \mux0|y[0]~11_combout\ : std_logic;
SIGNAL \fsm|Dout~0_combout\ : std_logic;
SIGNAL \fsm|Selector5~8_combout\ : std_logic;
SIGNAL \fsm|Selector1~2_combout\ : std_logic;
SIGNAL \fsm|Selector1~0_combout\ : std_logic;
SIGNAL \fsm|Selector6~5_combout\ : std_logic;
SIGNAL \fsm|Selector1~4_combout\ : std_logic;
SIGNAL \fsm|Selector1~1_combout\ : std_logic;
SIGNAL \fsm|Selector12~0_combout\ : std_logic;
SIGNAL \fsm|Selector1~3_combout\ : std_logic;
SIGNAL \mux0|y[0]~39_combout\ : std_logic;
SIGNAL \fsm|Selector4~0_combout\ : std_logic;
SIGNAL \fsm|Selector4~1_combout\ : std_logic;
SIGNAL \mux0|y[0]~49_combout\ : std_logic;
SIGNAL \fsm|Selector4~2_combout\ : std_logic;
SIGNAL \mux0|y[0]~48_combout\ : std_logic;
SIGNAL \mux0|y[0]~9_combout\ : std_logic;
SIGNAL \dexY|Mux0~0_combout\ : std_logic;
SIGNAL \fsm|Mux8~0_combout\ : std_logic;
SIGNAL \fsm|Selector8~0_combout\ : std_logic;
SIGNAL \fsm|Selector8~1_combout\ : std_logic;
SIGNAL \mux0|y[0]~43_combout\ : std_logic;
SIGNAL \mux0|y[0]~42_combout\ : std_logic;
SIGNAL \mux0|y[0]~8_combout\ : std_logic;
SIGNAL \mux0|y[0]~12_combout\ : std_logic;
SIGNAL \fsm|Selector2~4_combout\ : std_logic;
SIGNAL \mux0|y[0]~4_combout\ : std_logic;
SIGNAL \mux0|y[0]~10_combout\ : std_logic;
SIGNAL \fsm|Selector7~4_combout\ : std_logic;
SIGNAL \fsm|Selector7~5_combout\ : std_logic;
SIGNAL \fsm|Selector6~6_combout\ : std_logic;
SIGNAL \fsm|Selector6~7_combout\ : std_logic;
SIGNAL \fsm|Selector4~3_combout\ : std_logic;
SIGNAL \mux0|y[0]~6_combout\ : std_logic;
SIGNAL \fsm|Selector2~5_combout\ : std_logic;
SIGNAL \fsm|Selector2~6_combout\ : std_logic;
SIGNAL \mux0|y[0]~5_combout\ : std_logic;
SIGNAL \mux0|y[0]~7_combout\ : std_logic;
SIGNAL \mux0|y[0]~13_combout\ : std_logic;
SIGNAL \mux0|y[1]~17_combout\ : std_logic;
SIGNAL \addsub0|Add0~2\ : std_logic;
SIGNAL \addsub0|Add0~33_sumout\ : std_logic;
SIGNAL \reg0|Q[2]~feeder_combout\ : std_logic;
SIGNAL \reg3|Q[2]~feeder_combout\ : std_logic;
SIGNAL \pc0|Add0~6\ : std_logic;
SIGNAL \pc0|Add0~9_sumout\ : std_logic;
SIGNAL \reg5|Q[2]~feeder_combout\ : std_logic;
SIGNAL \reg6|Q[2]~feeder_combout\ : std_logic;
SIGNAL \mux0|y[2]~18_combout\ : std_logic;
SIGNAL \mux0|y[2]~19_combout\ : std_logic;
SIGNAL \mux0|y[2]~20_combout\ : std_logic;
SIGNAL \addsub0|Add0~34\ : std_logic;
SIGNAL \addsub0|Add0~29_sumout\ : std_logic;
SIGNAL \fsm|Equal1~1_combout\ : std_logic;
SIGNAL \fsm|Selector5~3_combout\ : std_logic;
SIGNAL \fsm|Selector3~4_combout\ : std_logic;
SIGNAL \mux0|y[0]~2_combout\ : std_logic;
SIGNAL \reg1|Q[4]~feeder_combout\ : std_logic;
SIGNAL \reg3|Q[4]~feeder_combout\ : std_logic;
SIGNAL \pc0|Add0~10\ : std_logic;
SIGNAL \pc0|Add0~13_sumout\ : std_logic;
SIGNAL \addsub0|Add0~30\ : std_logic;
SIGNAL \addsub0|Add0~5_sumout\ : std_logic;
SIGNAL \reg3|Q[3]~feeder_combout\ : std_logic;
SIGNAL \reg6|Q[3]~feeder_combout\ : std_logic;
SIGNAL \mux0|y[3]~21_combout\ : std_logic;
SIGNAL \mux0|y[3]~22_combout\ : std_logic;
SIGNAL \mux0|y[3]~23_combout\ : std_logic;
SIGNAL \pc0|Add0~14\ : std_logic;
SIGNAL \pc0|Add0~17_sumout\ : std_logic;
SIGNAL \reg5|Q[4]~feeder_combout\ : std_logic;
SIGNAL \mux0|y[4]~24_combout\ : std_logic;
SIGNAL \mux0|y[4]~25_combout\ : std_logic;
SIGNAL \mux0|y[4]~26_combout\ : std_logic;
SIGNAL \addsub0|Add0~6\ : std_logic;
SIGNAL \addsub0|Add0~9_sumout\ : std_logic;
SIGNAL \reg1|Q[7]~feeder_combout\ : std_logic;
SIGNAL \reg3|Q[7]~feeder_combout\ : std_logic;
SIGNAL \pc0|Add0~18\ : std_logic;
SIGNAL \pc0|Add0~21_sumout\ : std_logic;
SIGNAL \addsub0|Add0~10\ : std_logic;
SIGNAL \addsub0|Add0~13_sumout\ : std_logic;
SIGNAL \reg0|Q[5]~feeder_combout\ : std_logic;
SIGNAL \reg5|Q[5]~feeder_combout\ : std_logic;
SIGNAL \mux0|y[5]~27_combout\ : std_logic;
SIGNAL \mux0|y[5]~28_combout\ : std_logic;
SIGNAL \mux0|y[5]~29_combout\ : std_logic;
SIGNAL \pc0|Add0~22\ : std_logic;
SIGNAL \pc0|Add0~25_sumout\ : std_logic;
SIGNAL \addsub0|Add0~14\ : std_logic;
SIGNAL \addsub0|Add0~25_sumout\ : std_logic;
SIGNAL \reg3|Q[6]~feeder_combout\ : std_logic;
SIGNAL \reg1|Q[6]~feeder_combout\ : std_logic;
SIGNAL \mux0|y[6]~30_combout\ : std_logic;
SIGNAL \mux0|y[6]~31_combout\ : std_logic;
SIGNAL \reg0|Q[6]~feeder_combout\ : std_logic;
SIGNAL \mux0|y[6]~32_combout\ : std_logic;
SIGNAL \pc0|Add0~26\ : std_logic;
SIGNAL \pc0|Add0~29_sumout\ : std_logic;
SIGNAL \reg6|Q[7]~feeder_combout\ : std_logic;
SIGNAL \mux0|y[7]~33_combout\ : std_logic;
SIGNAL \mux0|y[7]~34_combout\ : std_logic;
SIGNAL \mux0|y[7]~35_combout\ : std_logic;
SIGNAL \addsub0|Add0~26\ : std_logic;
SIGNAL \addsub0|Add0~17_sumout\ : std_logic;
SIGNAL \reg0|Q[8]~feeder_combout\ : std_logic;
SIGNAL \reg3|Q[8]~feeder_combout\ : std_logic;
SIGNAL \reg1|Q[8]~feeder_combout\ : std_logic;
SIGNAL \pc0|Add0~30\ : std_logic;
SIGNAL \pc0|Add0~33_sumout\ : std_logic;
SIGNAL \reg5|Q[8]~feeder_combout\ : std_logic;
SIGNAL \mux0|y[8]~36_combout\ : std_logic;
SIGNAL \mux0|y[8]~37_combout\ : std_logic;
SIGNAL \mux0|y[8]~38_combout\ : std_logic;
SIGNAL \addsub0|Add0~18\ : std_logic;
SIGNAL \addsub0|Add0~21_sumout\ : std_logic;
SIGNAL \fsm|Equal1~0_combout\ : std_logic;
SIGNAL \fsm|Selector17~0_combout\ : std_logic;
SIGNAL \fsm|Selector12~1_combout\ : std_logic;
SIGNAL \mux0|y[0]~41_combout\ : std_logic;
SIGNAL \reg5|Q[0]~feeder_combout\ : std_logic;
SIGNAL \mux0|y[0]~40_combout\ : std_logic;
SIGNAL \mux0|y[0]~50_combout\ : std_logic;
SIGNAL \mux0|y[0]~14_combout\ : std_logic;
SIGNAL \regAddr|Q[0]~feeder_combout\ : std_logic;
SIGNAL \fsm|Selector9~0_combout\ : std_logic;
SIGNAL \regAddr|Q[1]~feeder_combout\ : std_logic;
SIGNAL \regAddr|Q[4]~feeder_combout\ : std_logic;
SIGNAL \regAddr|Q[8]~feeder_combout\ : std_logic;
SIGNAL \fsm|Wr_en~0_combout\ : std_logic;
SIGNAL \regDout|Q[1]~feeder_combout\ : std_logic;
SIGNAL \regDout|Q[2]~feeder_combout\ : std_logic;
SIGNAL \regDout|Q[3]~feeder_combout\ : std_logic;
SIGNAL \regDout|Q[4]~feeder_combout\ : std_logic;
SIGNAL \regDout|Q[5]~feeder_combout\ : std_logic;
SIGNAL \regDout|Q[6]~feeder_combout\ : std_logic;
SIGNAL \reg4|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \regG|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg1|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg5|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \pc0|v\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ir0|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg2|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg6|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg3|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg0|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \regAddr|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \regDout|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \regA|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg2|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg1|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg3|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \mux0|ALT_INV_y[1]~15_combout\ : std_logic;
SIGNAL \reg5|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg4|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg6|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \mux0|ALT_INV_y[0]~14_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[0]~13_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[0]~12_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[0]~11_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[0]~10_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[0]~9_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[0]~8_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[0]~7_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[0]~6_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[0]~5_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector8~1_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector8~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \dexY|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \decX|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_y_Q.T0~q\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector2~6_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector2~5_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector7~5_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector7~4_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector6~7_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector6~6_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Dout~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector1~3_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector1~2_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector1~1_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector12~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector6~5_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector5~8_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[0]~4_combout\ : std_logic;
SIGNAL \reg0|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \mux0|ALT_INV_y[0]~3_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[0]~2_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector2~4_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector2~3_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector2~2_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector2~1_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector4~3_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector4~2_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector4~1_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector3~4_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector3~3_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector3~2_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector4~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector3~1_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[0]~1_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[0]~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector5~7_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector5~6_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector5~5_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector7~3_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector7~2_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector7~1_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector6~4_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector6~3_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector6~2_combout\ : std_logic;
SIGNAL \ir0|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \fsm|ALT_INV_Selector6~1_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector5~4_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector5~3_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector7~0_combout\ : std_logic;
SIGNAL \decX|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector6~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector5~2_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector5~1_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector11~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_y_Q.T1~q\ : std_logic;
SIGNAL \fsm|ALT_INV_y_Q.T2~q\ : std_logic;
SIGNAL \fsm|ALT_INV_y_Q.T3~q\ : std_logic;
SIGNAL \mux0|ALT_INV_y[0]~50_combout\ : std_logic;
SIGNAL \pc0|ALT_INV_v\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \regG|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \fsm|ALT_INV_y_Q.T2~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_run~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[0]~input_o\ : std_logic;
SIGNAL \mux0|ALT_INV_y[0]~49_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[0]~48_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[0]~47_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[0]~46_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[0]~45_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[0]~44_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[0]~43_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[0]~42_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[0]~41_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[0]~40_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector1~4_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[0]~39_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Mux37~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector13~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector18~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector17~1_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector17~0_combout\ : std_logic;
SIGNAL \pc0|ALT_INV_v[1]~1_combout\ : std_logic;
SIGNAL \pc0|ALT_INV_v[1]~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector10~2_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector10~0_combout\ : std_logic;
SIGNAL \regA|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \mux0|ALT_INV_y[8]~38_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[8]~37_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[8]~36_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[7]~35_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[7]~34_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[7]~33_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[6]~32_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[6]~31_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[6]~30_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[5]~29_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[5]~28_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[5]~27_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[4]~26_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[4]~25_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[4]~24_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[3]~23_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[3]~22_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[3]~21_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[2]~20_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[2]~19_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[2]~18_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[1]~17_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[1]~16_combout\ : std_logic;

BEGIN

ww_data_in <= data_in;
ww_reset_n <= reset_n;
ww_clk <= clk;
ww_run <= run;
done <= ww_done;
busWires <= ww_busWires;
ADDR <= ww_ADDR;
DOUT <= ww_DOUT;
Wr_en <= ww_Wr_en;
reg_A <= ww_reg_A;
reg_G <= ww_reg_G;
reg_IR <= ww_reg_IR;
reg_0 <= ww_reg_0;
reg_1 <= ww_reg_1;
reg_5 <= ww_reg_5;
debug_pr_in <= ww_debug_pr_in;
debug_addrIn <= ww_debug_addrIn;
pc_v <= ww_pc_v;
Tstep_Q <= ww_Tstep_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\reg2|ALT_INV_Q\(1) <= NOT \reg2|Q\(1);
\reg1|ALT_INV_Q\(1) <= NOT \reg1|Q\(1);
\reg3|ALT_INV_Q\(1) <= NOT \reg3|Q\(1);
\mux0|ALT_INV_y[1]~15_combout\ <= NOT \mux0|y[1]~15_combout\;
\reg5|ALT_INV_Q\(1) <= NOT \reg5|Q\(1);
\reg4|ALT_INV_Q\(1) <= NOT \reg4|Q\(1);
\reg6|ALT_INV_Q\(1) <= NOT \reg6|Q\(1);
\mux0|ALT_INV_y[0]~14_combout\ <= NOT \mux0|y[0]~14_combout\;
\mux0|ALT_INV_y[0]~13_combout\ <= NOT \mux0|y[0]~13_combout\;
\mux0|ALT_INV_y[0]~12_combout\ <= NOT \mux0|y[0]~12_combout\;
\mux0|ALT_INV_y[0]~11_combout\ <= NOT \mux0|y[0]~11_combout\;
\mux0|ALT_INV_y[0]~10_combout\ <= NOT \mux0|y[0]~10_combout\;
\mux0|ALT_INV_y[0]~9_combout\ <= NOT \mux0|y[0]~9_combout\;
\mux0|ALT_INV_y[0]~8_combout\ <= NOT \mux0|y[0]~8_combout\;
\mux0|ALT_INV_y[0]~7_combout\ <= NOT \mux0|y[0]~7_combout\;
\mux0|ALT_INV_y[0]~6_combout\ <= NOT \mux0|y[0]~6_combout\;
\mux0|ALT_INV_y[0]~5_combout\ <= NOT \mux0|y[0]~5_combout\;
\fsm|ALT_INV_Selector8~1_combout\ <= NOT \fsm|Selector8~1_combout\;
\fsm|ALT_INV_Selector8~0_combout\ <= NOT \fsm|Selector8~0_combout\;
\fsm|ALT_INV_Mux8~0_combout\ <= NOT \fsm|Mux8~0_combout\;
\dexY|ALT_INV_Mux0~0_combout\ <= NOT \dexY|Mux0~0_combout\;
\decX|ALT_INV_Mux0~1_combout\ <= NOT \decX|Mux0~1_combout\;
\fsm|ALT_INV_y_Q.T0~q\ <= NOT \fsm|y_Q.T0~q\;
\fsm|ALT_INV_Selector2~6_combout\ <= NOT \fsm|Selector2~6_combout\;
\fsm|ALT_INV_Selector2~5_combout\ <= NOT \fsm|Selector2~5_combout\;
\fsm|ALT_INV_Selector7~5_combout\ <= NOT \fsm|Selector7~5_combout\;
\fsm|ALT_INV_Selector7~4_combout\ <= NOT \fsm|Selector7~4_combout\;
\fsm|ALT_INV_Selector6~7_combout\ <= NOT \fsm|Selector6~7_combout\;
\fsm|ALT_INV_Selector6~6_combout\ <= NOT \fsm|Selector6~6_combout\;
\fsm|ALT_INV_Dout~0_combout\ <= NOT \fsm|Dout~0_combout\;
\fsm|ALT_INV_Selector1~3_combout\ <= NOT \fsm|Selector1~3_combout\;
\fsm|ALT_INV_Selector1~2_combout\ <= NOT \fsm|Selector1~2_combout\;
\fsm|ALT_INV_Selector1~1_combout\ <= NOT \fsm|Selector1~1_combout\;
\fsm|ALT_INV_Selector1~0_combout\ <= NOT \fsm|Selector1~0_combout\;
\fsm|ALT_INV_Selector12~0_combout\ <= NOT \fsm|Selector12~0_combout\;
\fsm|ALT_INV_Selector6~5_combout\ <= NOT \fsm|Selector6~5_combout\;
\fsm|ALT_INV_Selector5~8_combout\ <= NOT \fsm|Selector5~8_combout\;
\fsm|ALT_INV_Equal1~2_combout\ <= NOT \fsm|Equal1~2_combout\;
\mux0|ALT_INV_y[0]~4_combout\ <= NOT \mux0|y[0]~4_combout\;
\reg0|ALT_INV_Q\(0) <= NOT \reg0|Q\(0);
\mux0|ALT_INV_y[0]~3_combout\ <= NOT \mux0|y[0]~3_combout\;
\mux0|ALT_INV_y[0]~2_combout\ <= NOT \mux0|y[0]~2_combout\;
\fsm|ALT_INV_Selector2~4_combout\ <= NOT \fsm|Selector2~4_combout\;
\fsm|ALT_INV_Selector2~3_combout\ <= NOT \fsm|Selector2~3_combout\;
\fsm|ALT_INV_Selector2~2_combout\ <= NOT \fsm|Selector2~2_combout\;
\fsm|ALT_INV_Selector2~1_combout\ <= NOT \fsm|Selector2~1_combout\;
\fsm|ALT_INV_Selector2~0_combout\ <= NOT \fsm|Selector2~0_combout\;
\fsm|ALT_INV_Selector4~3_combout\ <= NOT \fsm|Selector4~3_combout\;
\fsm|ALT_INV_Selector4~2_combout\ <= NOT \fsm|Selector4~2_combout\;
\fsm|ALT_INV_Selector4~1_combout\ <= NOT \fsm|Selector4~1_combout\;
\fsm|ALT_INV_Selector3~4_combout\ <= NOT \fsm|Selector3~4_combout\;
\fsm|ALT_INV_Selector3~3_combout\ <= NOT \fsm|Selector3~3_combout\;
\fsm|ALT_INV_Selector3~2_combout\ <= NOT \fsm|Selector3~2_combout\;
\fsm|ALT_INV_Selector4~0_combout\ <= NOT \fsm|Selector4~0_combout\;
\fsm|ALT_INV_Selector3~1_combout\ <= NOT \fsm|Selector3~1_combout\;
\fsm|ALT_INV_Selector3~0_combout\ <= NOT \fsm|Selector3~0_combout\;
\reg2|ALT_INV_Q\(0) <= NOT \reg2|Q\(0);
\reg1|ALT_INV_Q\(0) <= NOT \reg1|Q\(0);
\reg3|ALT_INV_Q\(0) <= NOT \reg3|Q\(0);
\mux0|ALT_INV_y[0]~1_combout\ <= NOT \mux0|y[0]~1_combout\;
\mux0|ALT_INV_y[0]~0_combout\ <= NOT \mux0|y[0]~0_combout\;
\fsm|ALT_INV_Selector5~7_combout\ <= NOT \fsm|Selector5~7_combout\;
\fsm|ALT_INV_Selector5~6_combout\ <= NOT \fsm|Selector5~6_combout\;
\fsm|ALT_INV_Selector5~5_combout\ <= NOT \fsm|Selector5~5_combout\;
\fsm|ALT_INV_Selector7~3_combout\ <= NOT \fsm|Selector7~3_combout\;
\fsm|ALT_INV_Selector7~2_combout\ <= NOT \fsm|Selector7~2_combout\;
\fsm|ALT_INV_Selector7~1_combout\ <= NOT \fsm|Selector7~1_combout\;
\fsm|ALT_INV_Selector6~4_combout\ <= NOT \fsm|Selector6~4_combout\;
\fsm|ALT_INV_Selector6~3_combout\ <= NOT \fsm|Selector6~3_combout\;
\fsm|ALT_INV_Selector6~2_combout\ <= NOT \fsm|Selector6~2_combout\;
\ir0|ALT_INV_Q\(1) <= NOT \ir0|Q\(1);
\ir0|ALT_INV_Q\(2) <= NOT \ir0|Q\(2);
\ir0|ALT_INV_Q\(0) <= NOT \ir0|Q\(0);
\fsm|ALT_INV_Selector6~1_combout\ <= NOT \fsm|Selector6~1_combout\;
\fsm|ALT_INV_Selector5~4_combout\ <= NOT \fsm|Selector5~4_combout\;
\fsm|ALT_INV_Selector5~3_combout\ <= NOT \fsm|Selector5~3_combout\;
\fsm|ALT_INV_Selector7~0_combout\ <= NOT \fsm|Selector7~0_combout\;
\decX|ALT_INV_Mux0~0_combout\ <= NOT \decX|Mux0~0_combout\;
\fsm|ALT_INV_Selector6~0_combout\ <= NOT \fsm|Selector6~0_combout\;
\fsm|ALT_INV_Selector5~2_combout\ <= NOT \fsm|Selector5~2_combout\;
\fsm|ALT_INV_Selector5~1_combout\ <= NOT \fsm|Selector5~1_combout\;
\fsm|ALT_INV_Equal1~1_combout\ <= NOT \fsm|Equal1~1_combout\;
\fsm|ALT_INV_Equal1~0_combout\ <= NOT \fsm|Equal1~0_combout\;
\ir0|ALT_INV_Q\(3) <= NOT \ir0|Q\(3);
\fsm|ALT_INV_Selector5~0_combout\ <= NOT \fsm|Selector5~0_combout\;
\ir0|ALT_INV_Q\(4) <= NOT \ir0|Q\(4);
\ir0|ALT_INV_Q\(5) <= NOT \ir0|Q\(5);
\reg5|ALT_INV_Q\(0) <= NOT \reg5|Q\(0);
\reg4|ALT_INV_Q\(0) <= NOT \reg4|Q\(0);
\reg6|ALT_INV_Q\(0) <= NOT \reg6|Q\(0);
\fsm|ALT_INV_Selector11~0_combout\ <= NOT \fsm|Selector11~0_combout\;
\fsm|ALT_INV_y_Q.T1~q\ <= NOT \fsm|y_Q.T1~q\;
\ir0|ALT_INV_Q\(7) <= NOT \ir0|Q\(7);
\ir0|ALT_INV_Q\(8) <= NOT \ir0|Q\(8);
\ir0|ALT_INV_Q\(6) <= NOT \ir0|Q\(6);
\fsm|ALT_INV_y_Q.T2~q\ <= NOT \fsm|y_Q.T2~q\;
\fsm|ALT_INV_y_Q.T3~q\ <= NOT \fsm|y_Q.T3~q\;
\mux0|ALT_INV_y[0]~50_combout\ <= NOT \mux0|y[0]~50_combout\;
\pc0|ALT_INV_v\(8) <= NOT \pc0|v\(8);
\pc0|ALT_INV_v\(7) <= NOT \pc0|v\(7);
\pc0|ALT_INV_v\(6) <= NOT \pc0|v\(6);
\pc0|ALT_INV_v\(5) <= NOT \pc0|v\(5);
\pc0|ALT_INV_v\(4) <= NOT \pc0|v\(4);
\pc0|ALT_INV_v\(3) <= NOT \pc0|v\(3);
\pc0|ALT_INV_v\(2) <= NOT \pc0|v\(2);
\pc0|ALT_INV_v\(1) <= NOT \pc0|v\(1);
\regG|ALT_INV_Q\(1) <= NOT \regG|Q\(1);
\regG|ALT_INV_Q\(2) <= NOT \regG|Q\(2);
\regG|ALT_INV_Q\(6) <= NOT \regG|Q\(6);
\regG|ALT_INV_Q\(8) <= NOT \regG|Q\(8);
\regG|ALT_INV_Q\(7) <= NOT \regG|Q\(7);
\regG|ALT_INV_Q\(5) <= NOT \regG|Q\(5);
\regG|ALT_INV_Q\(4) <= NOT \regG|Q\(4);
\regG|ALT_INV_Q\(3) <= NOT \regG|Q\(3);
\pc0|ALT_INV_v\(0) <= NOT \pc0|v\(0);
\regG|ALT_INV_Q\(0) <= NOT \regG|Q\(0);
\fsm|ALT_INV_y_Q.T2~DUPLICATE_q\ <= NOT \fsm|y_Q.T2~DUPLICATE_q\;
\ALT_INV_run~input_o\ <= NOT \run~input_o\;
\ALT_INV_data_in[8]~input_o\ <= NOT \data_in[8]~input_o\;
\ALT_INV_data_in[7]~input_o\ <= NOT \data_in[7]~input_o\;
\ALT_INV_data_in[6]~input_o\ <= NOT \data_in[6]~input_o\;
\ALT_INV_data_in[5]~input_o\ <= NOT \data_in[5]~input_o\;
\ALT_INV_data_in[4]~input_o\ <= NOT \data_in[4]~input_o\;
\ALT_INV_data_in[3]~input_o\ <= NOT \data_in[3]~input_o\;
\ALT_INV_data_in[2]~input_o\ <= NOT \data_in[2]~input_o\;
\ALT_INV_data_in[1]~input_o\ <= NOT \data_in[1]~input_o\;
\ALT_INV_data_in[0]~input_o\ <= NOT \data_in[0]~input_o\;
\mux0|ALT_INV_y[0]~49_combout\ <= NOT \mux0|y[0]~49_combout\;
\mux0|ALT_INV_y[0]~48_combout\ <= NOT \mux0|y[0]~48_combout\;
\mux0|ALT_INV_y[0]~47_combout\ <= NOT \mux0|y[0]~47_combout\;
\mux0|ALT_INV_y[0]~46_combout\ <= NOT \mux0|y[0]~46_combout\;
\mux0|ALT_INV_y[0]~45_combout\ <= NOT \mux0|y[0]~45_combout\;
\mux0|ALT_INV_y[0]~44_combout\ <= NOT \mux0|y[0]~44_combout\;
\mux0|ALT_INV_y[0]~43_combout\ <= NOT \mux0|y[0]~43_combout\;
\mux0|ALT_INV_y[0]~42_combout\ <= NOT \mux0|y[0]~42_combout\;
\mux0|ALT_INV_y[0]~41_combout\ <= NOT \mux0|y[0]~41_combout\;
\mux0|ALT_INV_y[0]~40_combout\ <= NOT \mux0|y[0]~40_combout\;
\fsm|ALT_INV_Selector1~4_combout\ <= NOT \fsm|Selector1~4_combout\;
\mux0|ALT_INV_y[0]~39_combout\ <= NOT \mux0|y[0]~39_combout\;
\fsm|ALT_INV_Mux37~0_combout\ <= NOT \fsm|Mux37~0_combout\;
\fsm|ALT_INV_Selector13~0_combout\ <= NOT \fsm|Selector13~0_combout\;
\fsm|ALT_INV_Selector18~0_combout\ <= NOT \fsm|Selector18~0_combout\;
\fsm|ALT_INV_Selector17~1_combout\ <= NOT \fsm|Selector17~1_combout\;
\fsm|ALT_INV_Selector17~0_combout\ <= NOT \fsm|Selector17~0_combout\;
\pc0|ALT_INV_v[1]~1_combout\ <= NOT \pc0|v[1]~1_combout\;
\pc0|ALT_INV_v[1]~0_combout\ <= NOT \pc0|v[1]~0_combout\;
\fsm|ALT_INV_Selector10~2_combout\ <= NOT \fsm|Selector10~2_combout\;
\fsm|ALT_INV_Selector10~0_combout\ <= NOT \fsm|Selector10~0_combout\;
\regA|ALT_INV_Q\(8) <= NOT \regA|Q\(8);
\regA|ALT_INV_Q\(7) <= NOT \regA|Q\(7);
\regA|ALT_INV_Q\(6) <= NOT \regA|Q\(6);
\regA|ALT_INV_Q\(5) <= NOT \regA|Q\(5);
\regA|ALT_INV_Q\(4) <= NOT \regA|Q\(4);
\regA|ALT_INV_Q\(3) <= NOT \regA|Q\(3);
\regA|ALT_INV_Q\(2) <= NOT \regA|Q\(2);
\regA|ALT_INV_Q\(1) <= NOT \regA|Q\(1);
\regA|ALT_INV_Q\(0) <= NOT \regA|Q\(0);
\mux0|ALT_INV_y[8]~38_combout\ <= NOT \mux0|y[8]~38_combout\;
\reg0|ALT_INV_Q\(8) <= NOT \reg0|Q\(8);
\mux0|ALT_INV_y[8]~37_combout\ <= NOT \mux0|y[8]~37_combout\;
\reg2|ALT_INV_Q\(8) <= NOT \reg2|Q\(8);
\reg1|ALT_INV_Q\(8) <= NOT \reg1|Q\(8);
\reg3|ALT_INV_Q\(8) <= NOT \reg3|Q\(8);
\mux0|ALT_INV_y[8]~36_combout\ <= NOT \mux0|y[8]~36_combout\;
\reg5|ALT_INV_Q\(8) <= NOT \reg5|Q\(8);
\reg4|ALT_INV_Q\(8) <= NOT \reg4|Q\(8);
\reg6|ALT_INV_Q\(8) <= NOT \reg6|Q\(8);
\mux0|ALT_INV_y[7]~35_combout\ <= NOT \mux0|y[7]~35_combout\;
\reg0|ALT_INV_Q\(7) <= NOT \reg0|Q\(7);
\mux0|ALT_INV_y[7]~34_combout\ <= NOT \mux0|y[7]~34_combout\;
\reg2|ALT_INV_Q\(7) <= NOT \reg2|Q\(7);
\reg1|ALT_INV_Q\(7) <= NOT \reg1|Q\(7);
\reg3|ALT_INV_Q\(7) <= NOT \reg3|Q\(7);
\mux0|ALT_INV_y[7]~33_combout\ <= NOT \mux0|y[7]~33_combout\;
\reg5|ALT_INV_Q\(7) <= NOT \reg5|Q\(7);
\reg4|ALT_INV_Q\(7) <= NOT \reg4|Q\(7);
\reg6|ALT_INV_Q\(7) <= NOT \reg6|Q\(7);
\mux0|ALT_INV_y[6]~32_combout\ <= NOT \mux0|y[6]~32_combout\;
\reg0|ALT_INV_Q\(6) <= NOT \reg0|Q\(6);
\mux0|ALT_INV_y[6]~31_combout\ <= NOT \mux0|y[6]~31_combout\;
\reg2|ALT_INV_Q\(6) <= NOT \reg2|Q\(6);
\reg1|ALT_INV_Q\(6) <= NOT \reg1|Q\(6);
\reg3|ALT_INV_Q\(6) <= NOT \reg3|Q\(6);
\mux0|ALT_INV_y[6]~30_combout\ <= NOT \mux0|y[6]~30_combout\;
\reg5|ALT_INV_Q\(6) <= NOT \reg5|Q\(6);
\reg4|ALT_INV_Q\(6) <= NOT \reg4|Q\(6);
\reg6|ALT_INV_Q\(6) <= NOT \reg6|Q\(6);
\mux0|ALT_INV_y[5]~29_combout\ <= NOT \mux0|y[5]~29_combout\;
\reg0|ALT_INV_Q\(5) <= NOT \reg0|Q\(5);
\mux0|ALT_INV_y[5]~28_combout\ <= NOT \mux0|y[5]~28_combout\;
\reg2|ALT_INV_Q\(5) <= NOT \reg2|Q\(5);
\reg1|ALT_INV_Q\(5) <= NOT \reg1|Q\(5);
\reg3|ALT_INV_Q\(5) <= NOT \reg3|Q\(5);
\mux0|ALT_INV_y[5]~27_combout\ <= NOT \mux0|y[5]~27_combout\;
\reg5|ALT_INV_Q\(5) <= NOT \reg5|Q\(5);
\reg4|ALT_INV_Q\(5) <= NOT \reg4|Q\(5);
\reg6|ALT_INV_Q\(5) <= NOT \reg6|Q\(5);
\mux0|ALT_INV_y[4]~26_combout\ <= NOT \mux0|y[4]~26_combout\;
\reg0|ALT_INV_Q\(4) <= NOT \reg0|Q\(4);
\mux0|ALT_INV_y[4]~25_combout\ <= NOT \mux0|y[4]~25_combout\;
\reg2|ALT_INV_Q\(4) <= NOT \reg2|Q\(4);
\reg1|ALT_INV_Q\(4) <= NOT \reg1|Q\(4);
\reg3|ALT_INV_Q\(4) <= NOT \reg3|Q\(4);
\mux0|ALT_INV_y[4]~24_combout\ <= NOT \mux0|y[4]~24_combout\;
\reg5|ALT_INV_Q\(4) <= NOT \reg5|Q\(4);
\reg4|ALT_INV_Q\(4) <= NOT \reg4|Q\(4);
\reg6|ALT_INV_Q\(4) <= NOT \reg6|Q\(4);
\mux0|ALT_INV_y[3]~23_combout\ <= NOT \mux0|y[3]~23_combout\;
\reg0|ALT_INV_Q\(3) <= NOT \reg0|Q\(3);
\mux0|ALT_INV_y[3]~22_combout\ <= NOT \mux0|y[3]~22_combout\;
\reg2|ALT_INV_Q\(3) <= NOT \reg2|Q\(3);
\reg1|ALT_INV_Q\(3) <= NOT \reg1|Q\(3);
\reg3|ALT_INV_Q\(3) <= NOT \reg3|Q\(3);
\mux0|ALT_INV_y[3]~21_combout\ <= NOT \mux0|y[3]~21_combout\;
\reg5|ALT_INV_Q\(3) <= NOT \reg5|Q\(3);
\reg4|ALT_INV_Q\(3) <= NOT \reg4|Q\(3);
\reg6|ALT_INV_Q\(3) <= NOT \reg6|Q\(3);
\mux0|ALT_INV_y[2]~20_combout\ <= NOT \mux0|y[2]~20_combout\;
\reg0|ALT_INV_Q\(2) <= NOT \reg0|Q\(2);
\mux0|ALT_INV_y[2]~19_combout\ <= NOT \mux0|y[2]~19_combout\;
\reg2|ALT_INV_Q\(2) <= NOT \reg2|Q\(2);
\reg1|ALT_INV_Q\(2) <= NOT \reg1|Q\(2);
\reg3|ALT_INV_Q\(2) <= NOT \reg3|Q\(2);
\mux0|ALT_INV_y[2]~18_combout\ <= NOT \mux0|y[2]~18_combout\;
\reg5|ALT_INV_Q\(2) <= NOT \reg5|Q\(2);
\reg4|ALT_INV_Q\(2) <= NOT \reg4|Q\(2);
\reg6|ALT_INV_Q\(2) <= NOT \reg6|Q\(2);
\mux0|ALT_INV_y[1]~17_combout\ <= NOT \mux0|y[1]~17_combout\;
\reg0|ALT_INV_Q\(1) <= NOT \reg0|Q\(1);
\mux0|ALT_INV_y[1]~16_combout\ <= NOT \mux0|y[1]~16_combout\;

-- Location: IOOBUF_X18_Y0_N36
\done~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|Selector11~0_combout\,
	devoe => ww_devoe,
	o => ww_done);

-- Location: IOOBUF_X12_Y0_N53
\busWires[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux0|y[0]~14_combout\,
	devoe => ww_devoe,
	o => ww_busWires(0));

-- Location: IOOBUF_X0_Y19_N56
\busWires[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux0|y[1]~17_combout\,
	devoe => ww_devoe,
	o => ww_busWires(1));

-- Location: IOOBUF_X19_Y0_N53
\busWires[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux0|y[2]~20_combout\,
	devoe => ww_devoe,
	o => ww_busWires(2));

-- Location: IOOBUF_X12_Y0_N19
\busWires[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux0|y[3]~23_combout\,
	devoe => ww_devoe,
	o => ww_busWires(3));

-- Location: IOOBUF_X10_Y0_N93
\busWires[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux0|y[4]~26_combout\,
	devoe => ww_devoe,
	o => ww_busWires(4));

-- Location: IOOBUF_X16_Y0_N42
\busWires[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux0|y[5]~29_combout\,
	devoe => ww_devoe,
	o => ww_busWires(5));

-- Location: IOOBUF_X23_Y0_N42
\busWires[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux0|y[6]~32_combout\,
	devoe => ww_devoe,
	o => ww_busWires(6));

-- Location: IOOBUF_X36_Y0_N53
\busWires[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux0|y[7]~35_combout\,
	devoe => ww_devoe,
	o => ww_busWires(7));

-- Location: IOOBUF_X18_Y0_N53
\busWires[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux0|y[8]~38_combout\,
	devoe => ww_devoe,
	o => ww_busWires(8));

-- Location: IOOBUF_X46_Y0_N19
\ADDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regAddr|Q\(0),
	devoe => ww_devoe,
	o => ww_ADDR(0));

-- Location: IOOBUF_X25_Y0_N19
\ADDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regAddr|Q\(1),
	devoe => ww_devoe,
	o => ww_ADDR(1));

-- Location: IOOBUF_X25_Y0_N36
\ADDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regAddr|Q\(2),
	devoe => ww_devoe,
	o => ww_ADDR(2));

-- Location: IOOBUF_X11_Y0_N53
\ADDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regAddr|Q\(3),
	devoe => ww_devoe,
	o => ww_ADDR(3));

-- Location: IOOBUF_X25_Y0_N2
\ADDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regAddr|Q\(4),
	devoe => ww_devoe,
	o => ww_ADDR(4));

-- Location: IOOBUF_X36_Y0_N2
\ADDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regAddr|Q\(5),
	devoe => ww_devoe,
	o => ww_ADDR(5));

-- Location: IOOBUF_X24_Y0_N36
\ADDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regAddr|Q\(6),
	devoe => ww_devoe,
	o => ww_ADDR(6));

-- Location: IOOBUF_X0_Y20_N56
\ADDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regAddr|Q\(7),
	devoe => ww_devoe,
	o => ww_ADDR(7));

-- Location: IOOBUF_X54_Y14_N79
\ADDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regAddr|Q\(8),
	devoe => ww_devoe,
	o => ww_ADDR(8));

-- Location: IOOBUF_X19_Y0_N19
\DOUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regDout|Q\(0),
	devoe => ww_devoe,
	o => ww_DOUT(0));

-- Location: IOOBUF_X38_Y0_N19
\DOUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regDout|Q\(1),
	devoe => ww_devoe,
	o => ww_DOUT(1));

-- Location: IOOBUF_X48_Y0_N76
\DOUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regDout|Q\(2),
	devoe => ww_devoe,
	o => ww_DOUT(2));

-- Location: IOOBUF_X22_Y0_N53
\DOUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regDout|Q\(3),
	devoe => ww_devoe,
	o => ww_DOUT(3));

-- Location: IOOBUF_X34_Y0_N2
\DOUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regDout|Q\(4),
	devoe => ww_devoe,
	o => ww_DOUT(4));

-- Location: IOOBUF_X38_Y0_N36
\DOUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regDout|Q\(5),
	devoe => ww_devoe,
	o => ww_DOUT(5));

-- Location: IOOBUF_X34_Y0_N19
\DOUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regDout|Q\(6),
	devoe => ww_devoe,
	o => ww_DOUT(6));

-- Location: IOOBUF_X38_Y0_N53
\DOUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regDout|Q\(7),
	devoe => ww_devoe,
	o => ww_DOUT(7));

-- Location: IOOBUF_X23_Y0_N76
\DOUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regDout|Q\(8),
	devoe => ww_devoe,
	o => ww_DOUT(8));

-- Location: IOOBUF_X44_Y0_N53
\Wr_en~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|Wr_en~0_combout\,
	devoe => ww_devoe,
	o => ww_Wr_en);

-- Location: IOOBUF_X43_Y0_N2
\reg_A[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regA|Q\(0),
	devoe => ww_devoe,
	o => ww_reg_A(0));

-- Location: IOOBUF_X11_Y0_N2
\reg_A[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regA|Q\(1),
	devoe => ww_devoe,
	o => ww_reg_A(1));

-- Location: IOOBUF_X33_Y0_N93
\reg_A[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regA|Q\(2),
	devoe => ww_devoe,
	o => ww_reg_A(2));

-- Location: IOOBUF_X40_Y0_N59
\reg_A[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regA|Q\(3),
	devoe => ww_devoe,
	o => ww_reg_A(3));

-- Location: IOOBUF_X0_Y18_N62
\reg_A[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regA|Q\(4),
	devoe => ww_devoe,
	o => ww_reg_A(4));

-- Location: IOOBUF_X44_Y0_N36
\reg_A[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regA|Q\(5),
	devoe => ww_devoe,
	o => ww_reg_A(5));

-- Location: IOOBUF_X48_Y0_N59
\reg_A[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regA|Q\(6),
	devoe => ww_devoe,
	o => ww_reg_A(6));

-- Location: IOOBUF_X10_Y0_N42
\reg_A[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regA|Q\(7),
	devoe => ww_devoe,
	o => ww_reg_A(7));

-- Location: IOOBUF_X0_Y20_N39
\reg_A[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regA|Q\(8),
	devoe => ww_devoe,
	o => ww_reg_A(8));

-- Location: IOOBUF_X54_Y14_N62
\reg_G[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regG|Q\(0),
	devoe => ww_devoe,
	o => ww_reg_G(0));

-- Location: IOOBUF_X54_Y14_N45
\reg_G[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regG|Q\(1),
	devoe => ww_devoe,
	o => ww_reg_G(1));

-- Location: IOOBUF_X54_Y16_N22
\reg_G[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regG|Q\(2),
	devoe => ww_devoe,
	o => ww_reg_G(2));

-- Location: IOOBUF_X36_Y0_N36
\reg_G[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regG|Q\(3),
	devoe => ww_devoe,
	o => ww_reg_G(3));

-- Location: IOOBUF_X0_Y18_N96
\reg_G[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regG|Q\(4),
	devoe => ww_devoe,
	o => ww_reg_G(4));

-- Location: IOOBUF_X0_Y19_N5
\reg_G[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regG|Q\(5),
	devoe => ww_devoe,
	o => ww_reg_G(5));

-- Location: IOOBUF_X54_Y14_N96
\reg_G[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regG|Q\(6),
	devoe => ww_devoe,
	o => ww_reg_G(6));

-- Location: IOOBUF_X22_Y0_N2
\reg_G[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regG|Q\(7),
	devoe => ww_devoe,
	o => ww_reg_G(7));

-- Location: IOOBUF_X50_Y0_N36
\reg_G[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regG|Q\(8),
	devoe => ww_devoe,
	o => ww_reg_G(8));

-- Location: IOOBUF_X0_Y20_N5
\reg_IR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ir0|Q\(0),
	devoe => ww_devoe,
	o => ww_reg_IR(0));

-- Location: IOOBUF_X33_Y0_N76
\reg_IR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ir0|Q\(1),
	devoe => ww_devoe,
	o => ww_reg_IR(1));

-- Location: IOOBUF_X10_Y45_N36
\reg_IR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ir0|Q\(2),
	devoe => ww_devoe,
	o => ww_reg_IR(2));

-- Location: IOOBUF_X14_Y0_N36
\reg_IR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ir0|Q\(3),
	devoe => ww_devoe,
	o => ww_reg_IR(3));

-- Location: IOOBUF_X34_Y0_N36
\reg_IR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ir0|Q\(4),
	devoe => ww_devoe,
	o => ww_reg_IR(4));

-- Location: IOOBUF_X50_Y0_N53
\reg_IR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ir0|Q\(5),
	devoe => ww_devoe,
	o => ww_reg_IR(5));

-- Location: IOOBUF_X12_Y0_N36
\reg_IR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ir0|Q\(6),
	devoe => ww_devoe,
	o => ww_reg_IR(6));

-- Location: IOOBUF_X11_Y0_N19
\reg_IR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ir0|Q\(7),
	devoe => ww_devoe,
	o => ww_reg_IR(7));

-- Location: IOOBUF_X18_Y0_N2
\reg_IR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ir0|Q\(8),
	devoe => ww_devoe,
	o => ww_reg_IR(8));

-- Location: IOOBUF_X33_Y0_N42
\reg_0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg0|Q\(0),
	devoe => ww_devoe,
	o => ww_reg_0(0));

-- Location: IOOBUF_X19_Y0_N36
\reg_0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg0|Q\(1),
	devoe => ww_devoe,
	o => ww_reg_0(1));

-- Location: IOOBUF_X33_Y0_N59
\reg_0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg0|Q\(2),
	devoe => ww_devoe,
	o => ww_reg_0(2));

-- Location: IOOBUF_X0_Y21_N39
\reg_0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg0|Q\(3),
	devoe => ww_devoe,
	o => ww_reg_0(3));

-- Location: IOOBUF_X40_Y0_N93
\reg_0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg0|Q\(4),
	devoe => ww_devoe,
	o => ww_reg_0(4));

-- Location: IOOBUF_X0_Y19_N39
\reg_0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg0|Q\(5),
	devoe => ww_devoe,
	o => ww_reg_0(5));

-- Location: IOOBUF_X16_Y0_N76
\reg_0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg0|Q\(6),
	devoe => ww_devoe,
	o => ww_reg_0(6));

-- Location: IOOBUF_X22_Y0_N19
\reg_0[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg0|Q\(7),
	devoe => ww_devoe,
	o => ww_reg_0(7));

-- Location: IOOBUF_X38_Y0_N2
\reg_0[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg0|Q\(8),
	devoe => ww_devoe,
	o => ww_reg_0(8));

-- Location: IOOBUF_X54_Y15_N56
\reg_1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|Q\(0),
	devoe => ww_devoe,
	o => ww_reg_1(0));

-- Location: IOOBUF_X25_Y0_N53
\reg_1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|Q\(1),
	devoe => ww_devoe,
	o => ww_reg_1(1));

-- Location: IOOBUF_X43_Y0_N19
\reg_1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|Q\(2),
	devoe => ww_devoe,
	o => ww_reg_1(2));

-- Location: IOOBUF_X24_Y0_N19
\reg_1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|Q\(3),
	devoe => ww_devoe,
	o => ww_reg_1(3));

-- Location: IOOBUF_X34_Y0_N53
\reg_1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|Q\(4),
	devoe => ww_devoe,
	o => ww_reg_1(4));

-- Location: IOOBUF_X40_Y0_N42
\reg_1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|Q\(5),
	devoe => ww_devoe,
	o => ww_reg_1(5));

-- Location: IOOBUF_X14_Y0_N2
\reg_1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|Q\(6),
	devoe => ww_devoe,
	o => ww_reg_1(6));

-- Location: IOOBUF_X36_Y0_N19
\reg_1[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|Q\(7),
	devoe => ww_devoe,
	o => ww_reg_1(7));

-- Location: IOOBUF_X0_Y21_N5
\reg_1[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|Q\(8),
	devoe => ww_devoe,
	o => ww_reg_1(8));

-- Location: IOOBUF_X54_Y15_N22
\reg_5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg5|Q\(0),
	devoe => ww_devoe,
	o => ww_reg_5(0));

-- Location: IOOBUF_X50_Y0_N19
\reg_5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg5|Q\(1),
	devoe => ww_devoe,
	o => ww_reg_5(1));

-- Location: IOOBUF_X10_Y0_N59
\reg_5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg5|Q\(2),
	devoe => ww_devoe,
	o => ww_reg_5(2));

-- Location: IOOBUF_X46_Y0_N2
\reg_5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg5|Q\(3),
	devoe => ww_devoe,
	o => ww_reg_5(3));

-- Location: IOOBUF_X29_Y0_N2
\reg_5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg5|Q\(4),
	devoe => ww_devoe,
	o => ww_reg_5(4));

-- Location: IOOBUF_X14_Y0_N19
\reg_5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg5|Q\(5),
	devoe => ww_devoe,
	o => ww_reg_5(5));

-- Location: IOOBUF_X52_Y0_N36
\reg_5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg5|Q\(6),
	devoe => ww_devoe,
	o => ww_reg_5(6));

-- Location: IOOBUF_X24_Y0_N53
\reg_5[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg5|Q\(7),
	devoe => ww_devoe,
	o => ww_reg_5(7));

-- Location: IOOBUF_X16_Y0_N93
\reg_5[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg5|Q\(8),
	devoe => ww_devoe,
	o => ww_reg_5(8));

-- Location: IOOBUF_X23_Y0_N59
\debug_pr_in~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|Selector10~0_combout\,
	devoe => ww_devoe,
	o => ww_debug_pr_in);

-- Location: IOOBUF_X18_Y0_N19
\debug_addrIn~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|Selector9~0_combout\,
	devoe => ww_devoe,
	o => ww_debug_addrIn);

-- Location: IOOBUF_X43_Y0_N36
\pc_v[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pc0|v\(0),
	devoe => ww_devoe,
	o => ww_pc_v(0));

-- Location: IOOBUF_X46_Y0_N36
\pc_v[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pc0|v\(1),
	devoe => ww_devoe,
	o => ww_pc_v(1));

-- Location: IOOBUF_X0_Y18_N45
\pc_v[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pc0|v\(2),
	devoe => ww_devoe,
	o => ww_pc_v(2));

-- Location: IOOBUF_X29_Y0_N36
\pc_v[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pc0|v\(3),
	devoe => ww_devoe,
	o => ww_pc_v(3));

-- Location: IOOBUF_X29_Y0_N19
\pc_v[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pc0|v\(4),
	devoe => ww_devoe,
	o => ww_pc_v(4));

-- Location: IOOBUF_X50_Y0_N2
\pc_v[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pc0|v\(5),
	devoe => ww_devoe,
	o => ww_pc_v(5));

-- Location: IOOBUF_X24_Y0_N2
\pc_v[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pc0|v\(6),
	devoe => ww_devoe,
	o => ww_pc_v(6));

-- Location: IOOBUF_X43_Y0_N53
\pc_v[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pc0|v\(7),
	devoe => ww_devoe,
	o => ww_pc_v(7));

-- Location: IOOBUF_X22_Y0_N36
\pc_v[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pc0|v\(8),
	devoe => ww_devoe,
	o => ww_pc_v(8));

-- Location: IOOBUF_X14_Y0_N53
\Tstep_Q[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|y_Q.T0~q\,
	devoe => ww_devoe,
	o => ww_Tstep_Q(0));

-- Location: IOOBUF_X16_Y0_N59
\Tstep_Q[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|y_Q.T1~q\,
	devoe => ww_devoe,
	o => ww_Tstep_Q(1));

-- Location: IOOBUF_X0_Y18_N79
\Tstep_Q[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|y_Q.T2~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Tstep_Q(2));

-- Location: IOOBUF_X29_Y0_N53
\Tstep_Q[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|y_Q.T3~q\,
	devoe => ww_devoe,
	o => ww_Tstep_Q(3));

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

-- Location: IOIBUF_X12_Y0_N1
\data_in[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(6),
	o => \data_in[6]~input_o\);

-- Location: IOIBUF_X19_Y0_N1
\reset_n~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input_o\);

-- Location: IOIBUF_X11_Y0_N35
\run~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_run,
	o => \run~input_o\);

-- Location: LABCELL_X12_Y9_N33
\fsm|Selector10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector10~1_combout\ = ( \run~input_o\ & ( !\fsm|y_Q.T0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fsm|ALT_INV_y_Q.T0~q\,
	dataf => \ALT_INV_run~input_o\,
	combout => \fsm|Selector10~1_combout\);

-- Location: FF_X12_Y9_N35
\fsm|y_Q.T1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \fsm|Selector10~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|y_Q.T1~q\);

-- Location: LABCELL_X12_Y8_N0
\fsm|y_D.T2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|y_D.T2~0_combout\ = ( !\fsm|Selector11~0_combout\ & ( \fsm|y_Q.T1~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fsm|ALT_INV_y_Q.T1~q\,
	dataf => \fsm|ALT_INV_Selector11~0_combout\,
	combout => \fsm|y_D.T2~0_combout\);

-- Location: FF_X12_Y8_N1
\fsm|y_Q.T2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \fsm|y_D.T2~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|y_Q.T2~q\);

-- Location: LABCELL_X14_Y6_N6
\fsm|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector0~0_combout\ = ( \run~input_o\ & ( (!\fsm|y_Q.T0~q\) # ((!\fsm|Selector11~0_combout\ & ((\fsm|y_Q.T1~q\) # (\fsm|y_Q.T2~q\)))) ) ) # ( !\run~input_o\ & ( (!\fsm|Selector11~0_combout\ & ((\fsm|y_Q.T1~q\) # (\fsm|y_Q.T2~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000001110000011100000111000011111111011100001111111101110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_y_Q.T2~q\,
	datab => \fsm|ALT_INV_y_Q.T1~q\,
	datac => \fsm|ALT_INV_Selector11~0_combout\,
	datad => \fsm|ALT_INV_y_Q.T0~q\,
	dataf => \ALT_INV_run~input_o\,
	combout => \fsm|Selector0~0_combout\);

-- Location: FF_X14_Y6_N8
\fsm|y_Q.T0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \fsm|Selector0~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|y_Q.T0~q\);

-- Location: FF_X13_Y8_N32
\ir0|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[6]~input_o\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|ALT_INV_y_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir0|Q\(6));

-- Location: IOIBUF_X46_Y0_N52
\data_in[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(8),
	o => \data_in[8]~input_o\);

-- Location: FF_X13_Y8_N8
\ir0|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[8]~input_o\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|ALT_INV_y_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir0|Q\(8));

-- Location: IOIBUF_X44_Y0_N1
\data_in[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(7),
	o => \data_in[7]~input_o\);

-- Location: FF_X13_Y8_N14
\ir0|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[7]~input_o\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|ALT_INV_y_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir0|Q\(7));

-- Location: FF_X12_Y8_N2
\fsm|y_Q.T2~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \fsm|y_D.T2~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|y_Q.T2~DUPLICATE_q\);

-- Location: LABCELL_X17_Y7_N30
\fsm|y_D.T3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|y_D.T3~0_combout\ = ( !\fsm|Selector11~0_combout\ & ( \fsm|y_Q.T2~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_y_Q.T2~DUPLICATE_q\,
	dataf => \fsm|ALT_INV_Selector11~0_combout\,
	combout => \fsm|y_D.T3~0_combout\);

-- Location: FF_X17_Y7_N31
\fsm|y_Q.T3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \fsm|y_D.T3~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|y_Q.T3~q\);

-- Location: LABCELL_X14_Y6_N0
\fsm|Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector11~0_combout\ = ( \fsm|y_Q.T1~q\ & ( \fsm|y_Q.T2~q\ & ( (!\ir0|Q\(8) $ (((\ir0|Q\(6) & \ir0|Q\(7))))) # (\fsm|y_Q.T3~q\) ) ) ) # ( !\fsm|y_Q.T1~q\ & ( \fsm|y_Q.T2~q\ & ( ((!\ir0|Q\(6) & (!\ir0|Q\(8) & \ir0|Q\(7)))) # (\fsm|y_Q.T3~q\) ) ) ) # 
-- ( \fsm|y_Q.T1~q\ & ( !\fsm|y_Q.T2~q\ & ( ((!\ir0|Q\(8) & ((!\ir0|Q\(7)))) # (\ir0|Q\(8) & (\ir0|Q\(6) & \ir0|Q\(7)))) # (\fsm|y_Q.T3~q\) ) ) ) # ( !\fsm|y_Q.T1~q\ & ( !\fsm|y_Q.T2~q\ & ( \fsm|y_Q.T3~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111110000011111111100001000111111111100100111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(6),
	datab => \ir0|ALT_INV_Q\(8),
	datac => \ir0|ALT_INV_Q\(7),
	datad => \fsm|ALT_INV_y_Q.T3~q\,
	datae => \fsm|ALT_INV_y_Q.T1~q\,
	dataf => \fsm|ALT_INV_y_Q.T2~q\,
	combout => \fsm|Selector11~0_combout\);

-- Location: LABCELL_X17_Y7_N39
\fsm|Mux37~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Mux37~0_combout\ = (!\ir0|Q\(7) & (!\ir0|Q\(6) & \ir0|Q\(8)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(7),
	datac => \ir0|ALT_INV_Q\(6),
	datad => \ir0|ALT_INV_Q\(8),
	combout => \fsm|Mux37~0_combout\);

-- Location: LABCELL_X12_Y8_N6
\fsm|Selector5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector5~1_combout\ = ( \ir0|Q\(7) & ( (\fsm|y_Q.T1~q\ & (\ir0|Q\(6) & !\ir0|Q\(8))) ) ) # ( !\ir0|Q\(7) & ( (\fsm|y_Q.T1~q\ & (!\ir0|Q\(6) & \ir0|Q\(8))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fsm|ALT_INV_y_Q.T1~q\,
	datac => \ir0|ALT_INV_Q\(6),
	datad => \ir0|ALT_INV_Q\(8),
	dataf => \ir0|ALT_INV_Q\(7),
	combout => \fsm|Selector5~1_combout\);

-- Location: FF_X13_Y7_N32
\regA|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mux0|y[0]~14_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Selector5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regA|Q\(0));

-- Location: LABCELL_X14_Y8_N30
\addsub0|Add0~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \addsub0|Add0~38_cout\ = CARRY(( (\fsm|y_Q.T2~q\ & \fsm|Mux37~0_combout\) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_y_Q.T2~q\,
	datac => \fsm|ALT_INV_Mux37~0_combout\,
	cin => GND,
	cout => \addsub0|Add0~38_cout\);

-- Location: LABCELL_X14_Y8_N33
\addsub0|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \addsub0|Add0~1_sumout\ = SUM(( !\mux0|y[0]~14_combout\ $ (((!\fsm|y_Q.T2~q\) # (!\fsm|Mux37~0_combout\))) ) + ( \regA|Q\(0) ) + ( \addsub0|Add0~38_cout\ ))
-- \addsub0|Add0~2\ = CARRY(( !\mux0|y[0]~14_combout\ $ (((!\fsm|y_Q.T2~q\) # (!\fsm|Mux37~0_combout\))) ) + ( \regA|Q\(0) ) + ( \addsub0|Add0~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_y_Q.T2~q\,
	datac => \mux0|ALT_INV_y[0]~14_combout\,
	datad => \fsm|ALT_INV_Mux37~0_combout\,
	dataf => \regA|ALT_INV_Q\(0),
	cin => \addsub0|Add0~38_cout\,
	sumout => \addsub0|Add0~1_sumout\,
	cout => \addsub0|Add0~2\);

-- Location: LABCELL_X17_Y7_N33
\fsm|Gin~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Gin~0_combout\ = ( \ir0|Q\(6) & ( (\fsm|y_Q.T2~DUPLICATE_q\ & (\ir0|Q\(7) & !\ir0|Q\(8))) ) ) # ( !\ir0|Q\(6) & ( (\fsm|y_Q.T2~DUPLICATE_q\ & (!\ir0|Q\(7) & \ir0|Q\(8))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_y_Q.T2~DUPLICATE_q\,
	datac => \ir0|ALT_INV_Q\(7),
	datad => \ir0|ALT_INV_Q\(8),
	dataf => \ir0|ALT_INV_Q\(6),
	combout => \fsm|Gin~0_combout\);

-- Location: FF_X14_Y8_N35
\regG|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \addsub0|Add0~1_sumout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regG|Q\(0));

-- Location: IOIBUF_X0_Y21_N21
\data_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(3),
	o => \data_in[3]~input_o\);

-- Location: FF_X13_Y8_N41
\ir0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[3]~input_o\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|ALT_INV_y_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir0|Q\(3));

-- Location: FF_X13_Y9_N35
\reg0|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[4]~26_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(4));

-- Location: IOIBUF_X40_Y0_N75
\data_in[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(4),
	o => \data_in[4]~input_o\);

-- Location: LABCELL_X12_Y9_N21
\fsm|Selector5~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector5~4_combout\ = ( \ir0|Q\(6) & ( (!\ir0|Q\(8) & (\fsm|y_Q.T1~q\ & !\ir0|Q\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(8),
	datac => \fsm|ALT_INV_y_Q.T1~q\,
	datad => \ir0|ALT_INV_Q\(7),
	dataf => \ir0|ALT_INV_Q\(6),
	combout => \fsm|Selector5~4_combout\);

-- Location: LABCELL_X12_Y9_N27
\fsm|Selector6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector6~1_combout\ = ( \ir0|Q\(6) & ( (\ir0|Q\(7) & !\ir0|Q\(8)) ) ) # ( !\ir0|Q\(6) & ( (!\ir0|Q\(7) & \ir0|Q\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ir0|ALT_INV_Q\(7),
	datad => \ir0|ALT_INV_Q\(8),
	dataf => \ir0|ALT_INV_Q\(6),
	combout => \fsm|Selector6~1_combout\);

-- Location: IOIBUF_X10_Y0_N75
\data_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(1),
	o => \data_in[1]~input_o\);

-- Location: FF_X12_Y8_N26
\ir0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[1]~input_o\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|ALT_INV_y_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir0|Q\(1));

-- Location: IOIBUF_X0_Y19_N21
\data_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(0),
	o => \data_in[0]~input_o\);

-- Location: FF_X12_Y8_N47
\ir0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[0]~input_o\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|ALT_INV_y_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir0|Q\(0));

-- Location: IOIBUF_X23_Y0_N92
\data_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(2),
	o => \data_in[2]~input_o\);

-- Location: FF_X12_Y8_N53
\ir0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[2]~input_o\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|ALT_INV_y_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir0|Q\(2));

-- Location: LABCELL_X12_Y8_N9
\fsm|Selector3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector3~2_combout\ = ( !\ir0|Q\(2) & ( (\ir0|Q\(1) & !\ir0|Q\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(1),
	datad => \ir0|ALT_INV_Q\(0),
	dataf => \ir0|ALT_INV_Q\(2),
	combout => \fsm|Selector3~2_combout\);

-- Location: FF_X13_Y8_N26
\ir0|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[4]~input_o\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|ALT_INV_y_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir0|Q\(4));

-- Location: IOIBUF_X51_Y0_N35
\data_in[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(5),
	o => \data_in[5]~input_o\);

-- Location: FF_X13_Y8_N20
\ir0|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[5]~input_o\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|ALT_INV_y_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir0|Q\(5));

-- Location: MLABCELL_X13_Y8_N33
\fsm|Selector3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector3~3_combout\ = ( \ir0|Q\(8) & ( !\ir0|Q\(5) & ( (!\ir0|Q\(3) & (!\ir0|Q\(6) & (\ir0|Q\(7) & \ir0|Q\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(3),
	datab => \ir0|ALT_INV_Q\(6),
	datac => \ir0|ALT_INV_Q\(7),
	datad => \ir0|ALT_INV_Q\(4),
	datae => \ir0|ALT_INV_Q\(8),
	dataf => \ir0|ALT_INV_Q\(5),
	combout => \fsm|Selector3~3_combout\);

-- Location: LABCELL_X17_Y7_N42
\reg0|Q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg0|Q[1]~feeder_combout\ = ( \mux0|y[1]~17_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y[1]~17_combout\,
	combout => \reg0|Q[1]~feeder_combout\);

-- Location: FF_X17_Y7_N44
\reg0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg0|Q[1]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Selector12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(1));

-- Location: LABCELL_X14_Y9_N30
\reg3|Q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg3|Q[1]~feeder_combout\ = ( \mux0|y[1]~17_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y[1]~17_combout\,
	combout => \reg3|Q[1]~feeder_combout\);

-- Location: LABCELL_X14_Y6_N39
\fsm|Selector18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector18~0_combout\ = ( \fsm|y_Q.T2~q\ & ( (!\ir0|Q\(6) & ((!\ir0|Q\(7) & ((!\ir0|Q\(8)) # (!\fsm|y_Q.T3~q\))) # (\ir0|Q\(7) & (\ir0|Q\(8))))) ) ) # ( !\fsm|y_Q.T2~q\ & ( (!\ir0|Q\(6) & (((!\ir0|Q\(8)) # (!\fsm|y_Q.T3~q\)) # (\ir0|Q\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110100000000111111010000000010111001000000001011100100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(7),
	datab => \ir0|ALT_INV_Q\(8),
	datac => \fsm|ALT_INV_y_Q.T3~q\,
	datad => \ir0|ALT_INV_Q\(6),
	dataf => \fsm|ALT_INV_y_Q.T2~q\,
	combout => \fsm|Selector18~0_combout\);

-- Location: LABCELL_X14_Y6_N42
\fsm|Selector17~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector17~1_combout\ = ( \ir0|Q\(8) & ( \fsm|Equal1~1_combout\ & ( (\fsm|y_Q.T1~q\ & ((!\ir0|Q\(7)) # ((!\ir0|Q\(6)) # (\fsm|Equal1~0_combout\)))) ) ) ) # ( !\ir0|Q\(8) & ( \fsm|Equal1~1_combout\ & ( (\ir0|Q\(7) & \fsm|y_Q.T1~q\) ) ) ) # ( 
-- \ir0|Q\(8) & ( !\fsm|Equal1~1_combout\ & ( (\fsm|y_Q.T1~q\ & ((!\ir0|Q\(7)) # (!\ir0|Q\(6)))) ) ) ) # ( !\ir0|Q\(8) & ( !\fsm|Equal1~1_combout\ & ( (\ir0|Q\(7) & \fsm|y_Q.T1~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001001100110010001000010001000100010011001100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(7),
	datab => \fsm|ALT_INV_y_Q.T1~q\,
	datac => \fsm|ALT_INV_Equal1~0_combout\,
	datad => \ir0|ALT_INV_Q\(6),
	datae => \ir0|ALT_INV_Q\(8),
	dataf => \fsm|ALT_INV_Equal1~1_combout\,
	combout => \fsm|Selector17~1_combout\);

-- Location: LABCELL_X14_Y9_N48
\fsm|Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector13~0_combout\ = ( \ir0|Q\(7) & ( \ir0|Q\(8) & ( (!\fsm|y_Q.T3~q\ & (\fsm|y_Q.T0~q\ & !\fsm|y_Q.T2~DUPLICATE_q\)) ) ) ) # ( !\ir0|Q\(7) & ( \ir0|Q\(8) & ( (\fsm|y_Q.T0~q\ & ((!\ir0|Q\(6)) # (!\fsm|y_Q.T3~q\))) ) ) ) # ( \ir0|Q\(7) & ( 
-- !\ir0|Q\(8) & ( (\fsm|y_Q.T0~q\ & ((!\ir0|Q\(6)) # (!\fsm|y_Q.T2~DUPLICATE_q\))) ) ) ) # ( !\ir0|Q\(7) & ( !\ir0|Q\(8) & ( (!\fsm|y_Q.T3~q\ & (\fsm|y_Q.T0~q\ & !\fsm|y_Q.T2~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011110000101000001110000011100000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(6),
	datab => \fsm|ALT_INV_y_Q.T3~q\,
	datac => \fsm|ALT_INV_y_Q.T0~q\,
	datad => \fsm|ALT_INV_y_Q.T2~DUPLICATE_q\,
	datae => \ir0|ALT_INV_Q\(7),
	dataf => \ir0|ALT_INV_Q\(8),
	combout => \fsm|Selector13~0_combout\);

-- Location: MLABCELL_X13_Y6_N42
\fsm|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector3~0_combout\ = ( \ir0|Q\(4) & ( !\ir0|Q\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ir0|ALT_INV_Q\(5),
	dataf => \ir0|ALT_INV_Q\(4),
	combout => \fsm|Selector3~0_combout\);

-- Location: MLABCELL_X13_Y6_N48
\fsm|Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector15~0_combout\ = ( \fsm|Selector13~0_combout\ & ( \fsm|Selector3~0_combout\ & ( (\ir0|Q\(3) & (!\fsm|Selector17~1_combout\ & ((!\fsm|Selector18~0_combout\) # (\fsm|Selector17~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(3),
	datab => \fsm|ALT_INV_Selector17~0_combout\,
	datac => \fsm|ALT_INV_Selector18~0_combout\,
	datad => \fsm|ALT_INV_Selector17~1_combout\,
	datae => \fsm|ALT_INV_Selector13~0_combout\,
	dataf => \fsm|ALT_INV_Selector3~0_combout\,
	combout => \fsm|Selector15~0_combout\);

-- Location: FF_X14_Y9_N31
\reg3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg3|Q[1]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(1));

-- Location: LABCELL_X12_Y8_N36
\fsm|Selector5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector5~5_combout\ = ( \ir0|Q\(2) & ( (!\ir0|Q\(1) & !\ir0|Q\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ir0|ALT_INV_Q\(1),
	datad => \ir0|ALT_INV_Q\(0),
	dataf => \ir0|ALT_INV_Q\(2),
	combout => \fsm|Selector5~5_combout\);

-- Location: LABCELL_X12_Y8_N30
\fsm|Selector6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector6~2_combout\ = ( \ir0|Q\(2) & ( (!\ir0|Q\(1) & \ir0|Q\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ir0|ALT_INV_Q\(1),
	datad => \ir0|ALT_INV_Q\(0),
	dataf => \ir0|ALT_INV_Q\(2),
	combout => \fsm|Selector6~2_combout\);

-- Location: LABCELL_X12_Y7_N57
\mux0|y[0]~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[0]~45_combout\ = ( !\fsm|Selector6~2_combout\ & ( !\fsm|Selector5~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_Selector5~5_combout\,
	dataf => \fsm|ALT_INV_Selector6~2_combout\,
	combout => \mux0|y[0]~45_combout\);

-- Location: MLABCELL_X13_Y8_N3
\fsm|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector5~0_combout\ = ( \ir0|Q\(5) & ( !\ir0|Q\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ir0|ALT_INV_Q\(4),
	dataf => \ir0|ALT_INV_Q\(5),
	combout => \fsm|Selector5~0_combout\);

-- Location: MLABCELL_X13_Y6_N39
\fsm|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector6~0_combout\ = ( \fsm|y_Q.T1~q\ & ( \fsm|Selector5~0_combout\ & ( (\ir0|Q\(3) & ((!\ir0|Q\(8) & (\ir0|Q\(6) & \ir0|Q\(7))) # (\ir0|Q\(8) & (!\ir0|Q\(6) & !\ir0|Q\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(8),
	datab => \ir0|ALT_INV_Q\(6),
	datac => \ir0|ALT_INV_Q\(7),
	datad => \ir0|ALT_INV_Q\(3),
	datae => \fsm|ALT_INV_y_Q.T1~q\,
	dataf => \fsm|ALT_INV_Selector5~0_combout\,
	combout => \fsm|Selector6~0_combout\);

-- Location: LABCELL_X12_Y9_N15
\fsm|Selector5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector5~2_combout\ = ( \fsm|y_Q.T1~q\ & ( \fsm|Selector5~0_combout\ & ( (!\ir0|Q\(3) & ((!\ir0|Q\(7) & (!\ir0|Q\(6) & \ir0|Q\(8))) # (\ir0|Q\(7) & (\ir0|Q\(6) & !\ir0|Q\(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(7),
	datab => \ir0|ALT_INV_Q\(6),
	datac => \ir0|ALT_INV_Q\(3),
	datad => \ir0|ALT_INV_Q\(8),
	datae => \fsm|ALT_INV_y_Q.T1~q\,
	dataf => \fsm|ALT_INV_Selector5~0_combout\,
	combout => \fsm|Selector5~2_combout\);

-- Location: MLABCELL_X13_Y8_N21
\fsm|Selector6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector6~3_combout\ = ( \ir0|Q\(8) & ( \ir0|Q\(5) & ( (\ir0|Q\(3) & (!\ir0|Q\(6) & (\ir0|Q\(7) & !\ir0|Q\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(3),
	datab => \ir0|ALT_INV_Q\(6),
	datac => \ir0|ALT_INV_Q\(7),
	datad => \ir0|ALT_INV_Q\(4),
	datae => \ir0|ALT_INV_Q\(8),
	dataf => \ir0|ALT_INV_Q\(5),
	combout => \fsm|Selector6~3_combout\);

-- Location: MLABCELL_X13_Y8_N27
\fsm|Selector5~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector5~6_combout\ = ( \ir0|Q\(8) & ( \ir0|Q\(5) & ( (!\ir0|Q\(3) & (!\ir0|Q\(6) & (\ir0|Q\(7) & !\ir0|Q\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(3),
	datab => \ir0|ALT_INV_Q\(6),
	datac => \ir0|ALT_INV_Q\(7),
	datad => \ir0|ALT_INV_Q\(4),
	datae => \ir0|ALT_INV_Q\(8),
	dataf => \ir0|ALT_INV_Q\(5),
	combout => \fsm|Selector5~6_combout\);

-- Location: LABCELL_X12_Y7_N24
\mux0|y[0]~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[0]~44_combout\ = ( \fsm|Selector5~5_combout\ & ( \fsm|Selector5~6_combout\ & ( \fsm|y_Q.T2~DUPLICATE_q\ ) ) ) # ( !\fsm|Selector5~5_combout\ & ( \fsm|Selector5~6_combout\ & ( \fsm|y_Q.T2~DUPLICATE_q\ ) ) ) # ( \fsm|Selector5~5_combout\ & ( 
-- !\fsm|Selector5~6_combout\ & ( (\fsm|y_Q.T2~DUPLICATE_q\ & ((\fsm|Selector6~1_combout\) # (\fsm|Selector6~3_combout\))) ) ) ) # ( !\fsm|Selector5~5_combout\ & ( !\fsm|Selector5~6_combout\ & ( (\fsm|y_Q.T2~DUPLICATE_q\ & (((\fsm|Selector6~2_combout\ & 
-- \fsm|Selector6~1_combout\)) # (\fsm|Selector6~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010101000001010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_y_Q.T2~DUPLICATE_q\,
	datab => \fsm|ALT_INV_Selector6~2_combout\,
	datac => \fsm|ALT_INV_Selector6~3_combout\,
	datad => \fsm|ALT_INV_Selector6~1_combout\,
	datae => \fsm|ALT_INV_Selector5~5_combout\,
	dataf => \fsm|ALT_INV_Selector5~6_combout\,
	combout => \mux0|y[0]~44_combout\);

-- Location: LABCELL_X12_Y7_N18
\mux0|y[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[0]~1_combout\ = ( !\fsm|Selector5~2_combout\ & ( !\mux0|y[0]~44_combout\ & ( (!\fsm|Selector6~0_combout\ & (((!\fsm|Selector5~3_combout\ & !\fsm|Selector5~4_combout\)) # (\mux0|y[0]~45_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000000110000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Selector5~3_combout\,
	datab => \mux0|ALT_INV_y[0]~45_combout\,
	datac => \fsm|ALT_INV_Selector6~0_combout\,
	datad => \fsm|ALT_INV_Selector5~4_combout\,
	datae => \fsm|ALT_INV_Selector5~2_combout\,
	dataf => \mux0|ALT_INV_y[0]~44_combout\,
	combout => \mux0|y[0]~1_combout\);

-- Location: LABCELL_X14_Y8_N0
\pc0|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc0|Add0~1_sumout\ = SUM(( \pc0|v\(0) ) + ( VCC ) + ( !VCC ))
-- \pc0|Add0~2\ = CARRY(( \pc0|v\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pc0|ALT_INV_v\(0),
	cin => GND,
	sumout => \pc0|Add0~1_sumout\,
	cout => \pc0|Add0~2\);

-- Location: LABCELL_X14_Y6_N24
\fsm|Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector10~0_combout\ = ( \fsm|y_Q.T1~q\ & ( \run~input_o\ & ( (!\fsm|y_Q.T0~q\) # ((!\ir0|Q\(6) & (!\ir0|Q\(8) & \ir0|Q\(7)))) ) ) ) # ( !\fsm|y_Q.T1~q\ & ( \run~input_o\ & ( !\fsm|y_Q.T0~q\ ) ) ) # ( \fsm|y_Q.T1~q\ & ( !\run~input_o\ & ( 
-- (!\ir0|Q\(6) & (!\ir0|Q\(8) & \ir0|Q\(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000100011111111000000001111111100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(6),
	datab => \ir0|ALT_INV_Q\(8),
	datac => \ir0|ALT_INV_Q\(7),
	datad => \fsm|ALT_INV_y_Q.T0~q\,
	datae => \fsm|ALT_INV_y_Q.T1~q\,
	dataf => \ALT_INV_run~input_o\,
	combout => \fsm|Selector10~0_combout\);

-- Location: LABCELL_X12_Y8_N54
\pc0|v[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc0|v[1]~1_combout\ = ( \fsm|y_Q.T3~q\ & ( (!\ir0|Q\(8) & (\ir0|Q\(7) & ((\fsm|y_Q.T2~DUPLICATE_q\) # (\ir0|Q\(6))))) # (\ir0|Q\(8) & (!\ir0|Q\(7) & ((!\ir0|Q\(6)) # (\fsm|y_Q.T2~DUPLICATE_q\)))) ) ) # ( !\fsm|y_Q.T3~q\ & ( (\fsm|y_Q.T2~DUPLICATE_q\ & 
-- ((!\ir0|Q\(8) & (\ir0|Q\(7) & !\ir0|Q\(6))) # (\ir0|Q\(8) & (!\ir0|Q\(7) & \ir0|Q\(6))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100100000000000010010001000010011001100100001001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(8),
	datab => \ir0|ALT_INV_Q\(7),
	datac => \ir0|ALT_INV_Q\(6),
	datad => \fsm|ALT_INV_y_Q.T2~DUPLICATE_q\,
	dataf => \fsm|ALT_INV_y_Q.T3~q\,
	combout => \pc0|v[1]~1_combout\);

-- Location: LABCELL_X12_Y8_N51
\fsm|Selector10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector10~2_combout\ = ( !\ir0|Q\(6) & ( (!\ir0|Q\(8) & (\fsm|y_Q.T1~q\ & \ir0|Q\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(8),
	datab => \fsm|ALT_INV_y_Q.T1~q\,
	datac => \ir0|ALT_INV_Q\(7),
	dataf => \ir0|ALT_INV_Q\(6),
	combout => \fsm|Selector10~2_combout\);

-- Location: MLABCELL_X13_Y9_N9
\fsm|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Equal1~2_combout\ = ( \fsm|Equal1~0_combout\ & ( \fsm|Equal1~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_Equal1~1_combout\,
	dataf => \fsm|ALT_INV_Equal1~0_combout\,
	combout => \fsm|Equal1~2_combout\);

-- Location: LABCELL_X12_Y8_N45
\pc0|v[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc0|v[1]~0_combout\ = ( \ir0|Q\(7) & ( (\ir0|Q\(6) & (\fsm|y_Q.T1~q\ & (!\fsm|Equal1~2_combout\ & \ir0|Q\(8)))) ) ) # ( !\ir0|Q\(7) & ( (\ir0|Q\(6) & (\fsm|y_Q.T1~q\ & !\ir0|Q\(8))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000100010000000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(6),
	datab => \fsm|ALT_INV_y_Q.T1~q\,
	datac => \fsm|ALT_INV_Equal1~2_combout\,
	datad => \ir0|ALT_INV_Q\(8),
	dataf => \ir0|ALT_INV_Q\(7),
	combout => \pc0|v[1]~0_combout\);

-- Location: MLABCELL_X13_Y6_N27
\decX|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decX|Mux0~1_combout\ = ( \ir0|Q\(3) & ( (\ir0|Q\(5) & \ir0|Q\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ir0|ALT_INV_Q\(5),
	datac => \ir0|ALT_INV_Q\(4),
	dataf => \ir0|ALT_INV_Q\(3),
	combout => \decX|Mux0~1_combout\);

-- Location: LABCELL_X12_Y8_N24
\pc0|v[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc0|v[1]~2_combout\ = ( \pc0|v[1]~0_combout\ & ( \decX|Mux0~1_combout\ ) ) # ( !\pc0|v[1]~0_combout\ & ( \decX|Mux0~1_combout\ & ( (((!\fsm|y_Q.T0~q\ & \run~input_o\)) # (\fsm|Selector10~2_combout\)) # (\pc0|v[1]~1_combout\) ) ) ) # ( 
-- \pc0|v[1]~0_combout\ & ( !\decX|Mux0~1_combout\ & ( ((!\fsm|y_Q.T0~q\ & \run~input_o\)) # (\fsm|Selector10~2_combout\) ) ) ) # ( !\pc0|v[1]~0_combout\ & ( !\decX|Mux0~1_combout\ & ( ((!\fsm|y_Q.T0~q\ & \run~input_o\)) # (\fsm|Selector10~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001011111111001000101111111100101111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_y_Q.T0~q\,
	datab => \ALT_INV_run~input_o\,
	datac => \pc0|ALT_INV_v[1]~1_combout\,
	datad => \fsm|ALT_INV_Selector10~2_combout\,
	datae => \pc0|ALT_INV_v[1]~0_combout\,
	dataf => \decX|ALT_INV_Mux0~1_combout\,
	combout => \pc0|v[1]~2_combout\);

-- Location: FF_X14_Y8_N2
\pc0|v[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pc0|Add0~1_sumout\,
	asdata => \mux0|y[0]~14_combout\,
	clrn => \reset_n~input_o\,
	sload => \fsm|ALT_INV_Selector10~0_combout\,
	ena => \pc0|v[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc0|v\(0));

-- Location: LABCELL_X14_Y8_N3
\pc0|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc0|Add0~5_sumout\ = SUM(( \pc0|v\(1) ) + ( GND ) + ( \pc0|Add0~2\ ))
-- \pc0|Add0~6\ = CARRY(( \pc0|v\(1) ) + ( GND ) + ( \pc0|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pc0|ALT_INV_v\(1),
	cin => \pc0|Add0~2\,
	sumout => \pc0|Add0~5_sumout\,
	cout => \pc0|Add0~6\);

-- Location: FF_X14_Y8_N5
\pc0|v[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pc0|Add0~5_sumout\,
	asdata => \mux0|y[1]~17_combout\,
	clrn => \reset_n~input_o\,
	sload => \fsm|ALT_INV_Selector10~0_combout\,
	ena => \pc0|v[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc0|v\(1));

-- Location: LABCELL_X14_Y7_N3
\reg6|Q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg6|Q[1]~feeder_combout\ = ( \mux0|y[1]~17_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y[1]~17_combout\,
	combout => \reg6|Q[1]~feeder_combout\);

-- Location: MLABCELL_X13_Y6_N45
\decX|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decX|Mux0~0_combout\ = ( \ir0|Q\(4) & ( \ir0|Q\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ir0|ALT_INV_Q\(5),
	dataf => \ir0|ALT_INV_Q\(4),
	combout => \decX|Mux0~0_combout\);

-- Location: LABCELL_X14_Y7_N12
\fsm|Selector18~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector18~1_combout\ = ( \fsm|Selector17~0_combout\ & ( !\fsm|Selector17~1_combout\ & ( (\fsm|Selector13~0_combout\ & (!\ir0|Q\(3) & \decX|Mux0~0_combout\)) ) ) ) # ( !\fsm|Selector17~0_combout\ & ( !\fsm|Selector17~1_combout\ & ( 
-- (\fsm|Selector13~0_combout\ & (!\ir0|Q\(3) & (!\fsm|Selector18~0_combout\ & \decX|Mux0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Selector13~0_combout\,
	datab => \ir0|ALT_INV_Q\(3),
	datac => \fsm|ALT_INV_Selector18~0_combout\,
	datad => \decX|ALT_INV_Mux0~0_combout\,
	datae => \fsm|ALT_INV_Selector17~0_combout\,
	dataf => \fsm|ALT_INV_Selector17~1_combout\,
	combout => \fsm|Selector18~1_combout\);

-- Location: FF_X14_Y7_N4
\reg6|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg6|Q[1]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Selector18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|Q\(1));

-- Location: LABCELL_X16_Y7_N39
\reg5|Q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg5|Q[1]~feeder_combout\ = ( \mux0|y[1]~17_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y[1]~17_combout\,
	combout => \reg5|Q[1]~feeder_combout\);

-- Location: MLABCELL_X13_Y6_N51
\fsm|Selector17~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector17~2_combout\ = ( \fsm|Selector13~0_combout\ & ( \fsm|Selector5~0_combout\ & ( (\ir0|Q\(3) & (!\fsm|Selector17~1_combout\ & ((!\fsm|Selector18~0_combout\) # (\fsm|Selector17~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(3),
	datab => \fsm|ALT_INV_Selector17~0_combout\,
	datac => \fsm|ALT_INV_Selector17~1_combout\,
	datad => \fsm|ALT_INV_Selector18~0_combout\,
	datae => \fsm|ALT_INV_Selector13~0_combout\,
	dataf => \fsm|ALT_INV_Selector5~0_combout\,
	combout => \fsm|Selector17~2_combout\);

-- Location: FF_X16_Y7_N41
\reg5|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg5|Q[1]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Selector17~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|Q\(1));

-- Location: LABCELL_X14_Y7_N33
\fsm|Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector16~0_combout\ = ( \fsm|Selector17~0_combout\ & ( \fsm|Selector13~0_combout\ & ( (\fsm|Selector5~0_combout\ & (!\fsm|Selector17~1_combout\ & !\ir0|Q\(3))) ) ) ) # ( !\fsm|Selector17~0_combout\ & ( \fsm|Selector13~0_combout\ & ( 
-- (\fsm|Selector5~0_combout\ & (!\fsm|Selector17~1_combout\ & (!\ir0|Q\(3) & !\fsm|Selector18~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Selector5~0_combout\,
	datab => \fsm|ALT_INV_Selector17~1_combout\,
	datac => \ir0|ALT_INV_Q\(3),
	datad => \fsm|ALT_INV_Selector18~0_combout\,
	datae => \fsm|ALT_INV_Selector17~0_combout\,
	dataf => \fsm|ALT_INV_Selector13~0_combout\,
	combout => \fsm|Selector16~0_combout\);

-- Location: FF_X12_Y7_N32
\reg4|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[1]~17_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(1));

-- Location: MLABCELL_X13_Y6_N18
\fsm|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector7~0_combout\ = ( \decX|Mux0~0_combout\ & ( \fsm|y_Q.T1~q\ & ( (!\ir0|Q\(3) & ((!\ir0|Q\(8) & (\ir0|Q\(7) & \ir0|Q\(6))) # (\ir0|Q\(8) & (!\ir0|Q\(7) & !\ir0|Q\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(8),
	datab => \ir0|ALT_INV_Q\(7),
	datac => \ir0|ALT_INV_Q\(3),
	datad => \ir0|ALT_INV_Q\(6),
	datae => \decX|ALT_INV_Mux0~0_combout\,
	dataf => \fsm|ALT_INV_y_Q.T1~q\,
	combout => \fsm|Selector7~0_combout\);

-- Location: LABCELL_X12_Y7_N9
\fsm|Selector5~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector5~7_combout\ = ( \fsm|Selector5~5_combout\ & ( \fsm|Selector5~6_combout\ & ( (!\fsm|Selector5~4_combout\ & (!\fsm|Selector5~3_combout\ & !\fsm|y_Q.T2~DUPLICATE_q\)) ) ) ) # ( !\fsm|Selector5~5_combout\ & ( \fsm|Selector5~6_combout\ & ( 
-- !\fsm|y_Q.T2~DUPLICATE_q\ ) ) ) # ( \fsm|Selector5~5_combout\ & ( !\fsm|Selector5~6_combout\ & ( (!\fsm|Selector5~4_combout\ & (!\fsm|Selector5~3_combout\ & ((!\fsm|Selector6~1_combout\) # (!\fsm|y_Q.T2~DUPLICATE_q\)))) ) ) ) # ( 
-- !\fsm|Selector5~5_combout\ & ( !\fsm|Selector5~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111110000001000000011111111000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Selector6~1_combout\,
	datab => \fsm|ALT_INV_Selector5~4_combout\,
	datac => \fsm|ALT_INV_Selector5~3_combout\,
	datad => \fsm|ALT_INV_y_Q.T2~DUPLICATE_q\,
	datae => \fsm|ALT_INV_Selector5~5_combout\,
	dataf => \fsm|ALT_INV_Selector5~6_combout\,
	combout => \fsm|Selector5~7_combout\);

-- Location: LABCELL_X12_Y7_N3
\fsm|Selector6~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector6~4_combout\ = ( \fsm|Selector6~1_combout\ & ( \fsm|Selector5~3_combout\ & ( (!\fsm|Selector6~2_combout\ & ((!\fsm|Selector6~3_combout\) # (!\fsm|y_Q.T2~DUPLICATE_q\))) ) ) ) # ( !\fsm|Selector6~1_combout\ & ( \fsm|Selector5~3_combout\ & ( 
-- (!\fsm|Selector6~2_combout\ & ((!\fsm|Selector6~3_combout\) # (!\fsm|y_Q.T2~DUPLICATE_q\))) ) ) ) # ( \fsm|Selector6~1_combout\ & ( !\fsm|Selector5~3_combout\ & ( (!\fsm|Selector6~2_combout\ & ((!\fsm|Selector6~3_combout\) # 
-- ((!\fsm|y_Q.T2~DUPLICATE_q\)))) # (\fsm|Selector6~2_combout\ & (((!\fsm|Selector5~4_combout\ & !\fsm|y_Q.T2~DUPLICATE_q\)))) ) ) ) # ( !\fsm|Selector6~1_combout\ & ( !\fsm|Selector5~3_combout\ & ( (!\fsm|Selector6~3_combout\ & 
-- ((!\fsm|Selector6~2_combout\) # ((!\fsm|Selector5~4_combout\)))) # (\fsm|Selector6~3_combout\ & (!\fsm|y_Q.T2~DUPLICATE_q\ & ((!\fsm|Selector6~2_combout\) # (!\fsm|Selector5~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110010101000111111001000100011001100100010001100110010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Selector6~3_combout\,
	datab => \fsm|ALT_INV_Selector6~2_combout\,
	datac => \fsm|ALT_INV_Selector5~4_combout\,
	datad => \fsm|ALT_INV_y_Q.T2~DUPLICATE_q\,
	datae => \fsm|ALT_INV_Selector6~1_combout\,
	dataf => \fsm|ALT_INV_Selector5~3_combout\,
	combout => \fsm|Selector6~4_combout\);

-- Location: LABCELL_X12_Y8_N33
\fsm|Selector7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector7~1_combout\ = ( \ir0|Q\(1) & ( (\ir0|Q\(2) & !\ir0|Q\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(2),
	datad => \ir0|ALT_INV_Q\(0),
	dataf => \ir0|ALT_INV_Q\(1),
	combout => \fsm|Selector7~1_combout\);

-- Location: MLABCELL_X13_Y8_N9
\fsm|Selector7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector7~2_combout\ = ( \ir0|Q\(8) & ( \ir0|Q\(5) & ( (!\ir0|Q\(3) & (!\ir0|Q\(6) & (\ir0|Q\(7) & \ir0|Q\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(3),
	datab => \ir0|ALT_INV_Q\(6),
	datac => \ir0|ALT_INV_Q\(7),
	datad => \ir0|ALT_INV_Q\(4),
	datae => \ir0|ALT_INV_Q\(8),
	dataf => \ir0|ALT_INV_Q\(5),
	combout => \fsm|Selector7~2_combout\);

-- Location: LABCELL_X12_Y7_N6
\fsm|Selector7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector7~3_combout\ = ( \fsm|Selector7~1_combout\ & ( \fsm|Selector7~2_combout\ & ( (!\fsm|Selector5~4_combout\ & (!\fsm|y_Q.T2~DUPLICATE_q\ & !\fsm|Selector5~3_combout\)) ) ) ) # ( !\fsm|Selector7~1_combout\ & ( \fsm|Selector7~2_combout\ & ( 
-- !\fsm|y_Q.T2~DUPLICATE_q\ ) ) ) # ( \fsm|Selector7~1_combout\ & ( !\fsm|Selector7~2_combout\ & ( (!\fsm|Selector5~4_combout\ & (!\fsm|Selector5~3_combout\ & ((!\fsm|Selector6~1_combout\) # (!\fsm|y_Q.T2~DUPLICATE_q\)))) ) ) ) # ( 
-- !\fsm|Selector7~1_combout\ & ( !\fsm|Selector7~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111110010000000000011110000111100001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Selector6~1_combout\,
	datab => \fsm|ALT_INV_Selector5~4_combout\,
	datac => \fsm|ALT_INV_y_Q.T2~DUPLICATE_q\,
	datad => \fsm|ALT_INV_Selector5~3_combout\,
	datae => \fsm|ALT_INV_Selector7~1_combout\,
	dataf => \fsm|ALT_INV_Selector7~2_combout\,
	combout => \fsm|Selector7~3_combout\);

-- Location: LABCELL_X12_Y7_N42
\mux0|y[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[0]~0_combout\ = ( \fsm|Selector6~4_combout\ & ( \fsm|Selector7~3_combout\ & ( (!\fsm|Selector5~2_combout\ & (\fsm|Selector5~7_combout\ & ((\fsm|Selector7~0_combout\) # (\fsm|Selector6~0_combout\)))) ) ) ) # ( !\fsm|Selector6~4_combout\ & ( 
-- \fsm|Selector7~3_combout\ & ( (!\fsm|Selector5~2_combout\ & \fsm|Selector5~7_combout\) ) ) ) # ( \fsm|Selector6~4_combout\ & ( !\fsm|Selector7~3_combout\ & ( (!\fsm|Selector5~2_combout\ & \fsm|Selector5~7_combout\) ) ) ) # ( !\fsm|Selector6~4_combout\ & ( 
-- !\fsm|Selector7~3_combout\ & ( (!\fsm|Selector5~2_combout\ & \fsm|Selector5~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Selector6~0_combout\,
	datab => \fsm|ALT_INV_Selector5~2_combout\,
	datac => \fsm|ALT_INV_Selector7~0_combout\,
	datad => \fsm|ALT_INV_Selector5~7_combout\,
	datae => \fsm|ALT_INV_Selector6~4_combout\,
	dataf => \fsm|ALT_INV_Selector7~3_combout\,
	combout => \mux0|y[0]~0_combout\);

-- Location: LABCELL_X12_Y7_N30
\mux0|y[1]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[1]~15_combout\ = ( \reg4|Q\(1) & ( \mux0|y[0]~0_combout\ & ( (!\mux0|y[0]~1_combout\ & ((\reg5|Q\(1)))) # (\mux0|y[0]~1_combout\ & (\reg6|Q\(1))) ) ) ) # ( !\reg4|Q\(1) & ( \mux0|y[0]~0_combout\ & ( (!\mux0|y[0]~1_combout\ & ((\reg5|Q\(1)))) # 
-- (\mux0|y[0]~1_combout\ & (\reg6|Q\(1))) ) ) ) # ( \reg4|Q\(1) & ( !\mux0|y[0]~0_combout\ & ( (!\mux0|y[0]~1_combout\) # (\pc0|v\(1)) ) ) ) # ( !\reg4|Q\(1) & ( !\mux0|y[0]~0_combout\ & ( (\mux0|y[0]~1_combout\ & \pc0|v\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001101110111011101100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[0]~1_combout\,
	datab => \pc0|ALT_INV_v\(1),
	datac => \reg6|ALT_INV_Q\(1),
	datad => \reg5|ALT_INV_Q\(1),
	datae => \reg4|ALT_INV_Q\(1),
	dataf => \mux0|ALT_INV_y[0]~0_combout\,
	combout => \mux0|y[1]~15_combout\);

-- Location: MLABCELL_X13_Y6_N24
\fsm|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector2~0_combout\ = ( !\ir0|Q\(4) & ( (!\ir0|Q\(5) & \ir0|Q\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ir0|ALT_INV_Q\(5),
	datac => \ir0|ALT_INV_Q\(3),
	dataf => \ir0|ALT_INV_Q\(4),
	combout => \fsm|Selector2~0_combout\);

-- Location: MLABCELL_X13_Y6_N3
\fsm|Selector13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector13~1_combout\ = ( \fsm|Selector2~0_combout\ & ( (!\fsm|Selector17~1_combout\ & (\fsm|Selector13~0_combout\ & ((!\fsm|Selector18~0_combout\) # (\fsm|Selector17~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101100000000000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Selector18~0_combout\,
	datab => \fsm|ALT_INV_Selector17~0_combout\,
	datac => \fsm|ALT_INV_Selector17~1_combout\,
	datad => \fsm|ALT_INV_Selector13~0_combout\,
	dataf => \fsm|ALT_INV_Selector2~0_combout\,
	combout => \fsm|Selector13~1_combout\);

-- Location: FF_X13_Y8_N59
\reg1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[1]~17_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(1));

-- Location: LABCELL_X12_Y8_N3
\fsm|Selector2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector2~2_combout\ = ( !\ir0|Q\(2) & ( (!\ir0|Q\(1) & \ir0|Q\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(1),
	datad => \ir0|ALT_INV_Q\(0),
	dataf => \ir0|ALT_INV_Q\(2),
	combout => \fsm|Selector2~2_combout\);

-- Location: LABCELL_X12_Y8_N57
\mux0|y[0]~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[0]~47_combout\ = ( !\fsm|Selector2~2_combout\ & ( !\fsm|Selector3~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_Selector3~2_combout\,
	dataf => \fsm|ALT_INV_Selector2~2_combout\,
	combout => \mux0|y[0]~47_combout\);

-- Location: LABCELL_X12_Y9_N12
\fsm|Selector3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector3~1_combout\ = ( \fsm|y_Q.T1~q\ & ( \fsm|Selector3~0_combout\ & ( (!\ir0|Q\(3) & ((!\ir0|Q\(7) & (!\ir0|Q\(6) & \ir0|Q\(8))) # (\ir0|Q\(7) & (\ir0|Q\(6) & !\ir0|Q\(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(7),
	datab => \ir0|ALT_INV_Q\(6),
	datac => \ir0|ALT_INV_Q\(8),
	datad => \ir0|ALT_INV_Q\(3),
	datae => \fsm|ALT_INV_y_Q.T1~q\,
	dataf => \fsm|ALT_INV_Selector3~0_combout\,
	combout => \fsm|Selector3~1_combout\);

-- Location: MLABCELL_X13_Y8_N15
\fsm|Selector2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector2~3_combout\ = ( \ir0|Q\(8) & ( !\ir0|Q\(5) & ( (!\ir0|Q\(6) & (\ir0|Q\(7) & (\ir0|Q\(3) & !\ir0|Q\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(6),
	datab => \ir0|ALT_INV_Q\(7),
	datac => \ir0|ALT_INV_Q\(3),
	datad => \ir0|ALT_INV_Q\(4),
	datae => \ir0|ALT_INV_Q\(8),
	dataf => \ir0|ALT_INV_Q\(5),
	combout => \fsm|Selector2~3_combout\);

-- Location: LABCELL_X12_Y9_N54
\mux0|y[0]~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[0]~46_combout\ = ( \fsm|Selector3~3_combout\ & ( \fsm|Selector2~3_combout\ & ( \fsm|y_Q.T2~DUPLICATE_q\ ) ) ) # ( !\fsm|Selector3~3_combout\ & ( \fsm|Selector2~3_combout\ & ( \fsm|y_Q.T2~DUPLICATE_q\ ) ) ) # ( \fsm|Selector3~3_combout\ & ( 
-- !\fsm|Selector2~3_combout\ & ( \fsm|y_Q.T2~DUPLICATE_q\ ) ) ) # ( !\fsm|Selector3~3_combout\ & ( !\fsm|Selector2~3_combout\ & ( (\fsm|Selector6~1_combout\ & (\fsm|y_Q.T2~DUPLICATE_q\ & ((\fsm|Selector3~2_combout\) # (\fsm|Selector2~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010101000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Selector6~1_combout\,
	datab => \fsm|ALT_INV_Selector2~2_combout\,
	datac => \fsm|ALT_INV_Selector3~2_combout\,
	datad => \fsm|ALT_INV_y_Q.T2~DUPLICATE_q\,
	datae => \fsm|ALT_INV_Selector3~3_combout\,
	dataf => \fsm|ALT_INV_Selector2~3_combout\,
	combout => \mux0|y[0]~46_combout\);

-- Location: LABCELL_X12_Y9_N30
\fsm|Selector2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector2~1_combout\ = ( \fsm|Selector2~0_combout\ & ( (\fsm|y_Q.T1~q\ & ((!\ir0|Q\(8) & (\ir0|Q\(6) & \ir0|Q\(7))) # (\ir0|Q\(8) & (!\ir0|Q\(6) & !\ir0|Q\(7))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000100000010000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(8),
	datab => \ir0|ALT_INV_Q\(6),
	datac => \fsm|ALT_INV_y_Q.T1~q\,
	datad => \ir0|ALT_INV_Q\(7),
	dataf => \fsm|ALT_INV_Selector2~0_combout\,
	combout => \fsm|Selector2~1_combout\);

-- Location: LABCELL_X12_Y9_N48
\mux0|y[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[0]~3_combout\ = ( !\mux0|y[0]~46_combout\ & ( !\fsm|Selector2~1_combout\ & ( (!\fsm|Selector3~1_combout\ & (((!\fsm|Selector5~4_combout\ & !\fsm|Selector5~3_combout\)) # (\mux0|y[0]~47_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000111100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Selector5~4_combout\,
	datab => \fsm|ALT_INV_Selector5~3_combout\,
	datac => \mux0|ALT_INV_y[0]~47_combout\,
	datad => \fsm|ALT_INV_Selector3~1_combout\,
	datae => \mux0|ALT_INV_y[0]~46_combout\,
	dataf => \fsm|ALT_INV_Selector2~1_combout\,
	combout => \mux0|y[0]~3_combout\);

-- Location: MLABCELL_X13_Y6_N54
\fsm|Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector14~0_combout\ = ( \fsm|Selector13~0_combout\ & ( \fsm|Selector3~0_combout\ & ( (!\ir0|Q\(3) & (!\fsm|Selector17~1_combout\ & ((!\fsm|Selector18~0_combout\) # (\fsm|Selector17~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(3),
	datab => \fsm|ALT_INV_Selector17~0_combout\,
	datac => \fsm|ALT_INV_Selector18~0_combout\,
	datad => \fsm|ALT_INV_Selector17~1_combout\,
	datae => \fsm|ALT_INV_Selector13~0_combout\,
	dataf => \fsm|ALT_INV_Selector3~0_combout\,
	combout => \fsm|Selector14~0_combout\);

-- Location: FF_X12_Y7_N38
\reg2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[1]~17_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(1));

-- Location: LABCELL_X12_Y7_N36
\mux0|y[1]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[1]~16_combout\ = ( \reg2|Q\(1) & ( \mux0|y[0]~2_combout\ & ( (!\mux0|y[0]~3_combout\) # (\reg3|Q\(1)) ) ) ) # ( !\reg2|Q\(1) & ( \mux0|y[0]~2_combout\ & ( (\reg3|Q\(1) & \mux0|y[0]~3_combout\) ) ) ) # ( \reg2|Q\(1) & ( !\mux0|y[0]~2_combout\ & ( 
-- (!\mux0|y[0]~3_combout\ & ((\reg1|Q\(1)))) # (\mux0|y[0]~3_combout\ & (\mux0|y[1]~15_combout\)) ) ) ) # ( !\reg2|Q\(1) & ( !\mux0|y[0]~2_combout\ & ( (!\mux0|y[0]~3_combout\ & ((\reg1|Q\(1)))) # (\mux0|y[0]~3_combout\ & (\mux0|y[1]~15_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100000000010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg3|ALT_INV_Q\(1),
	datab => \mux0|ALT_INV_y[1]~15_combout\,
	datac => \reg1|ALT_INV_Q\(1),
	datad => \mux0|ALT_INV_y[0]~3_combout\,
	datae => \reg2|ALT_INV_Q\(1),
	dataf => \mux0|ALT_INV_y[0]~2_combout\,
	combout => \mux0|y[1]~16_combout\);

-- Location: MLABCELL_X13_Y9_N21
\mux0|y[0]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[0]~11_combout\ = ( \fsm|y_Q.T3~q\ & ( (!\ir0|Q\(7) & (!\ir0|Q\(6) & \ir0|Q\(8))) # (\ir0|Q\(7) & (\ir0|Q\(6) & !\ir0|Q\(8))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101101000000000010110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(7),
	datac => \ir0|ALT_INV_Q\(6),
	datad => \ir0|ALT_INV_Q\(8),
	dataf => \fsm|ALT_INV_y_Q.T3~q\,
	combout => \mux0|y[0]~11_combout\);

-- Location: LABCELL_X14_Y6_N51
\fsm|Dout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Dout~0_combout\ = ( \ir0|Q\(7) & ( (\fsm|y_Q.T2~q\ & (!\ir0|Q\(8) & !\ir0|Q\(6))) ) ) # ( !\ir0|Q\(7) & ( (\fsm|y_Q.T2~q\ & (\ir0|Q\(8) & \ir0|Q\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_y_Q.T2~q\,
	datac => \ir0|ALT_INV_Q\(8),
	datad => \ir0|ALT_INV_Q\(6),
	dataf => \ir0|ALT_INV_Q\(7),
	combout => \fsm|Dout~0_combout\);

-- Location: LABCELL_X14_Y6_N36
\fsm|Selector5~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector5~8_combout\ = ( \ir0|Q\(6) & ( (\ir0|Q\(7) & (!\ir0|Q\(8) & (!\ir0|Q\(3) & \fsm|y_Q.T1~q\))) ) ) # ( !\ir0|Q\(6) & ( (!\ir0|Q\(7) & (\ir0|Q\(8) & (!\ir0|Q\(3) & \fsm|y_Q.T1~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(7),
	datab => \ir0|ALT_INV_Q\(8),
	datac => \ir0|ALT_INV_Q\(3),
	datad => \fsm|ALT_INV_y_Q.T1~q\,
	dataf => \ir0|ALT_INV_Q\(6),
	combout => \fsm|Selector5~8_combout\);

-- Location: LABCELL_X12_Y8_N48
\fsm|Selector1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector1~2_combout\ = ( !\ir0|Q\(1) & ( (!\ir0|Q\(2) & !\ir0|Q\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ir0|ALT_INV_Q\(2),
	datad => \ir0|ALT_INV_Q\(0),
	dataf => \ir0|ALT_INV_Q\(1),
	combout => \fsm|Selector1~2_combout\);

-- Location: LABCELL_X14_Y6_N48
\fsm|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector1~0_combout\ = ( !\ir0|Q\(5) & ( (!\ir0|Q\(3) & \fsm|y_Q.T2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ir0|ALT_INV_Q\(3),
	datad => \fsm|ALT_INV_y_Q.T2~q\,
	dataf => \ir0|ALT_INV_Q\(5),
	combout => \fsm|Selector1~0_combout\);

-- Location: LABCELL_X14_Y6_N15
\fsm|Selector6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector6~5_combout\ = ( \ir0|Q\(7) & ( (!\ir0|Q\(6) & (\ir0|Q\(8) & !\ir0|Q\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ir0|ALT_INV_Q\(6),
	datac => \ir0|ALT_INV_Q\(8),
	datad => \ir0|ALT_INV_Q\(4),
	dataf => \ir0|ALT_INV_Q\(7),
	combout => \fsm|Selector6~5_combout\);

-- Location: LABCELL_X14_Y6_N9
\fsm|Selector1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector1~4_combout\ = ( \ir0|Q\(7) & ( (!\ir0|Q\(8) & (\fsm|y_Q.T2~q\ & ((\ir0|Q\(6))))) # (\ir0|Q\(8) & (((\fsm|y_Q.T1~q\)))) ) ) # ( !\ir0|Q\(7) & ( (!\ir0|Q\(6) & (\fsm|y_Q.T2~q\ & ((\ir0|Q\(8))))) # (\ir0|Q\(6) & (((\fsm|y_Q.T1~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110011000001010011001100000011010100110000001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_y_Q.T2~q\,
	datab => \fsm|ALT_INV_y_Q.T1~q\,
	datac => \ir0|ALT_INV_Q\(8),
	datad => \ir0|ALT_INV_Q\(6),
	dataf => \ir0|ALT_INV_Q\(7),
	combout => \fsm|Selector1~4_combout\);

-- Location: LABCELL_X14_Y6_N54
\fsm|Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector1~1_combout\ = ( \fsm|Selector1~4_combout\ & ( \fsm|Equal1~0_combout\ & ( (!\ir0|Q\(7)) # ((!\ir0|Q\(6)) # ((!\fsm|Equal1~1_combout\) # (!\ir0|Q\(8)))) ) ) ) # ( \fsm|Selector1~4_combout\ & ( !\fsm|Equal1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(7),
	datab => \ir0|ALT_INV_Q\(6),
	datac => \fsm|ALT_INV_Equal1~1_combout\,
	datad => \ir0|ALT_INV_Q\(8),
	datae => \fsm|ALT_INV_Selector1~4_combout\,
	dataf => \fsm|ALT_INV_Equal1~0_combout\,
	combout => \fsm|Selector1~1_combout\);

-- Location: LABCELL_X14_Y6_N12
\fsm|Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector12~0_combout\ = ( !\ir0|Q\(5) & ( !\ir0|Q\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ir0|ALT_INV_Q\(4),
	dataf => \ir0|ALT_INV_Q\(5),
	combout => \fsm|Selector12~0_combout\);

-- Location: LABCELL_X14_Y6_N30
\fsm|Selector1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector1~3_combout\ = ( \fsm|Selector1~1_combout\ & ( \fsm|Selector12~0_combout\ & ( (!\fsm|Selector5~8_combout\ & (!\fsm|Selector1~2_combout\ & ((!\fsm|Selector1~0_combout\) # (!\fsm|Selector6~5_combout\)))) ) ) ) # ( !\fsm|Selector1~1_combout\ & ( 
-- \fsm|Selector12~0_combout\ & ( (!\fsm|Selector5~8_combout\ & ((!\fsm|Selector1~0_combout\) # (!\fsm|Selector6~5_combout\))) ) ) ) # ( \fsm|Selector1~1_combout\ & ( !\fsm|Selector12~0_combout\ & ( (!\fsm|Selector1~2_combout\ & ((!\fsm|Selector1~0_combout\) 
-- # (!\fsm|Selector6~5_combout\))) ) ) ) # ( !\fsm|Selector1~1_combout\ & ( !\fsm|Selector12~0_combout\ & ( (!\fsm|Selector1~0_combout\) # (!\fsm|Selector6~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000110011001100000010101010101000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Selector5~8_combout\,
	datab => \fsm|ALT_INV_Selector1~2_combout\,
	datac => \fsm|ALT_INV_Selector1~0_combout\,
	datad => \fsm|ALT_INV_Selector6~5_combout\,
	datae => \fsm|ALT_INV_Selector1~1_combout\,
	dataf => \fsm|ALT_INV_Selector12~0_combout\,
	combout => \fsm|Selector1~3_combout\);

-- Location: MLABCELL_X13_Y7_N54
\mux0|y[0]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[0]~39_combout\ = ( !\fsm|Dout~0_combout\ & ( \fsm|Selector1~3_combout\ & ( \mux0|y[0]~11_combout\ ) ) ) # ( !\fsm|Dout~0_combout\ & ( !\fsm|Selector1~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mux0|ALT_INV_y[0]~11_combout\,
	datae => \fsm|ALT_INV_Dout~0_combout\,
	dataf => \fsm|ALT_INV_Selector1~3_combout\,
	combout => \mux0|y[0]~39_combout\);

-- Location: MLABCELL_X13_Y6_N36
\fsm|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector4~0_combout\ = ( \fsm|y_Q.T1~q\ & ( \fsm|Selector3~0_combout\ & ( (\ir0|Q\(3) & ((!\ir0|Q\(8) & (\ir0|Q\(6) & \ir0|Q\(7))) # (\ir0|Q\(8) & (!\ir0|Q\(6) & !\ir0|Q\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(8),
	datab => \ir0|ALT_INV_Q\(6),
	datac => \ir0|ALT_INV_Q\(3),
	datad => \ir0|ALT_INV_Q\(7),
	datae => \fsm|ALT_INV_y_Q.T1~q\,
	dataf => \fsm|ALT_INV_Selector3~0_combout\,
	combout => \fsm|Selector4~0_combout\);

-- Location: LABCELL_X12_Y8_N39
\fsm|Selector4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector4~1_combout\ = ( !\ir0|Q\(2) & ( (\ir0|Q\(1) & \ir0|Q\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(1),
	datad => \ir0|ALT_INV_Q\(0),
	dataf => \ir0|ALT_INV_Q\(2),
	combout => \fsm|Selector4~1_combout\);

-- Location: LABCELL_X12_Y8_N12
\mux0|y[0]~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[0]~49_combout\ = ( !\fsm|Selector4~1_combout\ & ( !\fsm|Selector5~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fsm|ALT_INV_Selector5~5_combout\,
	dataf => \fsm|ALT_INV_Selector4~1_combout\,
	combout => \mux0|y[0]~49_combout\);

-- Location: MLABCELL_X13_Y8_N36
\fsm|Selector4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector4~2_combout\ = ( \ir0|Q\(8) & ( !\ir0|Q\(5) & ( (\ir0|Q\(3) & (!\ir0|Q\(6) & (\ir0|Q\(4) & \ir0|Q\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(3),
	datab => \ir0|ALT_INV_Q\(6),
	datac => \ir0|ALT_INV_Q\(4),
	datad => \ir0|ALT_INV_Q\(7),
	datae => \ir0|ALT_INV_Q\(8),
	dataf => \ir0|ALT_INV_Q\(5),
	combout => \fsm|Selector4~2_combout\);

-- Location: MLABCELL_X13_Y8_N42
\mux0|y[0]~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[0]~48_combout\ = ( \fsm|Selector5~6_combout\ & ( \fsm|Selector6~1_combout\ & ( \fsm|y_Q.T2~q\ ) ) ) # ( !\fsm|Selector5~6_combout\ & ( \fsm|Selector6~1_combout\ & ( (\fsm|y_Q.T2~q\ & (((\fsm|Selector4~2_combout\) # (\fsm|Selector4~1_combout\)) # 
-- (\fsm|Selector5~5_combout\))) ) ) ) # ( \fsm|Selector5~6_combout\ & ( !\fsm|Selector6~1_combout\ & ( \fsm|y_Q.T2~q\ ) ) ) # ( !\fsm|Selector5~6_combout\ & ( !\fsm|Selector6~1_combout\ & ( (\fsm|y_Q.T2~q\ & \fsm|Selector4~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011001100110011001100010011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Selector5~5_combout\,
	datab => \fsm|ALT_INV_y_Q.T2~q\,
	datac => \fsm|ALT_INV_Selector4~1_combout\,
	datad => \fsm|ALT_INV_Selector4~2_combout\,
	datae => \fsm|ALT_INV_Selector5~6_combout\,
	dataf => \fsm|ALT_INV_Selector6~1_combout\,
	combout => \mux0|y[0]~48_combout\);

-- Location: MLABCELL_X13_Y8_N48
\mux0|y[0]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[0]~9_combout\ = ( \fsm|Selector5~4_combout\ & ( !\mux0|y[0]~48_combout\ & ( (!\fsm|Selector4~0_combout\ & (\mux0|y[0]~49_combout\ & !\fsm|Selector5~2_combout\)) ) ) ) # ( !\fsm|Selector5~4_combout\ & ( !\mux0|y[0]~48_combout\ & ( 
-- (!\fsm|Selector4~0_combout\ & (!\fsm|Selector5~2_combout\ & ((!\fsm|Selector5~3_combout\) # (\mux0|y[0]~49_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101000000000000010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Selector4~0_combout\,
	datab => \fsm|ALT_INV_Selector5~3_combout\,
	datac => \mux0|ALT_INV_y[0]~49_combout\,
	datad => \fsm|ALT_INV_Selector5~2_combout\,
	datae => \fsm|ALT_INV_Selector5~4_combout\,
	dataf => \mux0|ALT_INV_y[0]~48_combout\,
	combout => \mux0|y[0]~9_combout\);

-- Location: LABCELL_X12_Y8_N15
\dexY|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dexY|Mux0~0_combout\ = ( \ir0|Q\(1) & ( (\ir0|Q\(2) & \ir0|Q\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(2),
	datad => \ir0|ALT_INV_Q\(0),
	dataf => \ir0|ALT_INV_Q\(1),
	combout => \dexY|Mux0~0_combout\);

-- Location: MLABCELL_X13_Y9_N36
\fsm|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Mux8~0_combout\ = ( \decX|Mux0~1_combout\ & ( \fsm|Equal1~2_combout\ & ( (!\ir0|Q\(7) & ((!\ir0|Q\(6) & ((\ir0|Q\(8)))) # (\ir0|Q\(6) & (\dexY|Mux0~0_combout\)))) # (\ir0|Q\(7) & ((!\ir0|Q\(8)) # ((\dexY|Mux0~0_combout\ & !\ir0|Q\(6))))) ) ) ) # ( 
-- !\decX|Mux0~1_combout\ & ( \fsm|Equal1~2_combout\ & ( (!\ir0|Q\(7) & (\dexY|Mux0~0_combout\ & ((\ir0|Q\(6))))) # (\ir0|Q\(7) & (!\ir0|Q\(6) & ((!\ir0|Q\(8)) # (\dexY|Mux0~0_combout\)))) ) ) ) # ( \decX|Mux0~1_combout\ & ( !\fsm|Equal1~2_combout\ & ( 
-- (!\ir0|Q\(7) & ((!\ir0|Q\(6) & ((\ir0|Q\(8)))) # (\ir0|Q\(6) & (\dexY|Mux0~0_combout\)))) # (\ir0|Q\(7) & (((!\ir0|Q\(8))) # (\dexY|Mux0~0_combout\))) ) ) ) # ( !\decX|Mux0~1_combout\ & ( !\fsm|Equal1~2_combout\ & ( (!\ir0|Q\(7) & (\dexY|Mux0~0_combout\ & 
-- ((\ir0|Q\(6))))) # (\ir0|Q\(7) & ((!\ir0|Q\(8) & ((!\ir0|Q\(6)))) # (\ir0|Q\(8) & (\dexY|Mux0~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000100100011010110110111001101010001001000100101101101110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(7),
	datab => \dexY|ALT_INV_Mux0~0_combout\,
	datac => \ir0|ALT_INV_Q\(8),
	datad => \ir0|ALT_INV_Q\(6),
	datae => \decX|ALT_INV_Mux0~1_combout\,
	dataf => \fsm|ALT_INV_Equal1~2_combout\,
	combout => \fsm|Mux8~0_combout\);

-- Location: LABCELL_X12_Y8_N18
\fsm|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector8~0_combout\ = ( \fsm|y_Q.T2~DUPLICATE_q\ & ( \decX|Mux0~1_combout\ & ( (!\ir0|Q\(8) & (\dexY|Mux0~0_combout\ & (\ir0|Q\(6) & \ir0|Q\(7)))) # (\ir0|Q\(8) & (!\ir0|Q\(6) & ((\ir0|Q\(7)) # (\dexY|Mux0~0_combout\)))) ) ) ) # ( 
-- \fsm|y_Q.T2~DUPLICATE_q\ & ( !\decX|Mux0~1_combout\ & ( (\dexY|Mux0~0_combout\ & ((!\ir0|Q\(8) & (\ir0|Q\(6) & \ir0|Q\(7))) # (\ir0|Q\(8) & (!\ir0|Q\(6) & !\ir0|Q\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000001000000000000000000001000001010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(8),
	datab => \dexY|ALT_INV_Mux0~0_combout\,
	datac => \ir0|ALT_INV_Q\(6),
	datad => \ir0|ALT_INV_Q\(7),
	datae => \fsm|ALT_INV_y_Q.T2~DUPLICATE_q\,
	dataf => \decX|ALT_INV_Mux0~1_combout\,
	combout => \fsm|Selector8~0_combout\);

-- Location: MLABCELL_X13_Y9_N12
\fsm|Selector8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector8~1_combout\ = ( !\fsm|Selector8~0_combout\ & ( (\fsm|y_Q.T0~q\ & ((!\fsm|y_Q.T1~q\) # (!\fsm|Mux8~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001100000011110000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fsm|ALT_INV_y_Q.T1~q\,
	datac => \fsm|ALT_INV_y_Q.T0~q\,
	datad => \fsm|ALT_INV_Mux8~0_combout\,
	dataf => \fsm|ALT_INV_Selector8~0_combout\,
	combout => \fsm|Selector8~1_combout\);

-- Location: LABCELL_X12_Y8_N42
\mux0|y[0]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[0]~43_combout\ = (!\fsm|Selector7~1_combout\ & !\fsm|Selector6~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_Selector7~1_combout\,
	datad => \fsm|ALT_INV_Selector6~2_combout\,
	combout => \mux0|y[0]~43_combout\);

-- Location: MLABCELL_X13_Y8_N54
\mux0|y[0]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[0]~42_combout\ = ( \fsm|Selector7~2_combout\ & ( \fsm|Selector6~1_combout\ & ( \fsm|y_Q.T2~q\ ) ) ) # ( !\fsm|Selector7~2_combout\ & ( \fsm|Selector6~1_combout\ & ( (\fsm|y_Q.T2~q\ & (((\fsm|Selector7~1_combout\) # (\fsm|Selector6~3_combout\)) # 
-- (\fsm|Selector6~2_combout\))) ) ) ) # ( \fsm|Selector7~2_combout\ & ( !\fsm|Selector6~1_combout\ & ( \fsm|y_Q.T2~q\ ) ) ) # ( !\fsm|Selector7~2_combout\ & ( !\fsm|Selector6~1_combout\ & ( (\fsm|y_Q.T2~q\ & \fsm|Selector6~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011001100110011001100010011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Selector6~2_combout\,
	datab => \fsm|ALT_INV_y_Q.T2~q\,
	datac => \fsm|ALT_INV_Selector6~3_combout\,
	datad => \fsm|ALT_INV_Selector7~1_combout\,
	datae => \fsm|ALT_INV_Selector7~2_combout\,
	dataf => \fsm|ALT_INV_Selector6~1_combout\,
	combout => \mux0|y[0]~42_combout\);

-- Location: MLABCELL_X13_Y7_N6
\mux0|y[0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[0]~8_combout\ = ( \fsm|Selector5~4_combout\ & ( !\mux0|y[0]~42_combout\ & ( (!\fsm|Selector7~0_combout\ & (!\fsm|Selector6~0_combout\ & \mux0|y[0]~43_combout\)) ) ) ) # ( !\fsm|Selector5~4_combout\ & ( !\mux0|y[0]~42_combout\ & ( 
-- (!\fsm|Selector7~0_combout\ & (!\fsm|Selector6~0_combout\ & ((!\fsm|Selector5~3_combout\) # (\mux0|y[0]~43_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010100000000000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Selector7~0_combout\,
	datab => \fsm|ALT_INV_Selector5~3_combout\,
	datac => \fsm|ALT_INV_Selector6~0_combout\,
	datad => \mux0|ALT_INV_y[0]~43_combout\,
	datae => \fsm|ALT_INV_Selector5~4_combout\,
	dataf => \mux0|ALT_INV_y[0]~42_combout\,
	combout => \mux0|y[0]~8_combout\);

-- Location: MLABCELL_X13_Y7_N48
\mux0|y[0]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[0]~12_combout\ = ( \fsm|Selector8~1_combout\ & ( \mux0|y[0]~8_combout\ & ( (\mux0|y[0]~39_combout\ & (((\mux0|y[0]~3_combout\ & \mux0|y[0]~9_combout\)) # (\mux0|y[0]~11_combout\))) ) ) ) # ( !\fsm|Selector8~1_combout\ & ( \mux0|y[0]~8_combout\ & ( 
-- (\mux0|y[0]~11_combout\ & \mux0|y[0]~39_combout\) ) ) ) # ( \fsm|Selector8~1_combout\ & ( !\mux0|y[0]~8_combout\ & ( (\mux0|y[0]~11_combout\ & \mux0|y[0]~39_combout\) ) ) ) # ( !\fsm|Selector8~1_combout\ & ( !\mux0|y[0]~8_combout\ & ( 
-- (\mux0|y[0]~11_combout\ & \mux0|y[0]~39_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[0]~3_combout\,
	datab => \mux0|ALT_INV_y[0]~11_combout\,
	datac => \mux0|ALT_INV_y[0]~39_combout\,
	datad => \mux0|ALT_INV_y[0]~9_combout\,
	datae => \fsm|ALT_INV_Selector8~1_combout\,
	dataf => \mux0|ALT_INV_y[0]~8_combout\,
	combout => \mux0|y[0]~12_combout\);

-- Location: LABCELL_X12_Y9_N9
\fsm|Selector2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector2~4_combout\ = ( \fsm|Selector2~2_combout\ & ( \fsm|Selector2~3_combout\ & ( (!\fsm|Selector5~3_combout\ & (!\fsm|y_Q.T2~DUPLICATE_q\ & !\fsm|Selector5~4_combout\)) ) ) ) # ( !\fsm|Selector2~2_combout\ & ( \fsm|Selector2~3_combout\ & ( 
-- !\fsm|y_Q.T2~DUPLICATE_q\ ) ) ) # ( \fsm|Selector2~2_combout\ & ( !\fsm|Selector2~3_combout\ & ( (!\fsm|Selector5~3_combout\ & (!\fsm|Selector5~4_combout\ & ((!\fsm|Selector6~1_combout\) # (!\fsm|y_Q.T2~DUPLICATE_q\)))) ) ) ) # ( 
-- !\fsm|Selector2~2_combout\ & ( !\fsm|Selector2~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111110010000000000011110000111100001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Selector6~1_combout\,
	datab => \fsm|ALT_INV_Selector5~3_combout\,
	datac => \fsm|ALT_INV_y_Q.T2~DUPLICATE_q\,
	datad => \fsm|ALT_INV_Selector5~4_combout\,
	datae => \fsm|ALT_INV_Selector2~2_combout\,
	dataf => \fsm|ALT_INV_Selector2~3_combout\,
	combout => \fsm|Selector2~4_combout\);

-- Location: LABCELL_X12_Y9_N18
\mux0|y[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[0]~4_combout\ = ( \fsm|Selector2~1_combout\ & ( (!\fsm|Selector3~1_combout\ & \fsm|Selector3~4_combout\) ) ) # ( !\fsm|Selector2~1_combout\ & ( !\fsm|Selector2~4_combout\ $ (((!\fsm|Selector3~4_combout\) # (\fsm|Selector3~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011110011000011001111001100001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fsm|ALT_INV_Selector3~1_combout\,
	datac => \fsm|ALT_INV_Selector3~4_combout\,
	datad => \fsm|ALT_INV_Selector2~4_combout\,
	dataf => \fsm|ALT_INV_Selector2~1_combout\,
	combout => \mux0|y[0]~4_combout\);

-- Location: MLABCELL_X13_Y7_N42
\mux0|y[0]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[0]~10_combout\ = ( \fsm|Selector8~1_combout\ & ( \mux0|y[0]~8_combout\ & ( (!\fsm|Selector1~3_combout\ & (\mux0|y[0]~9_combout\ & (\mux0|y[0]~3_combout\))) # (\fsm|Selector1~3_combout\ & (((!\mux0|y[0]~4_combout\)) # (\mux0|y[0]~9_combout\))) ) ) 
-- ) # ( !\fsm|Selector8~1_combout\ & ( \mux0|y[0]~8_combout\ & ( (\fsm|Selector1~3_combout\ & !\mux0|y[0]~4_combout\) ) ) ) # ( \fsm|Selector8~1_combout\ & ( !\mux0|y[0]~8_combout\ & ( (\fsm|Selector1~3_combout\ & !\mux0|y[0]~4_combout\) ) ) ) # ( 
-- !\fsm|Selector8~1_combout\ & ( !\mux0|y[0]~8_combout\ & ( (\fsm|Selector1~3_combout\ & !\mux0|y[0]~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101000000000101011100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Selector1~3_combout\,
	datab => \mux0|ALT_INV_y[0]~9_combout\,
	datac => \mux0|ALT_INV_y[0]~3_combout\,
	datad => \mux0|ALT_INV_y[0]~4_combout\,
	datae => \fsm|ALT_INV_Selector8~1_combout\,
	dataf => \mux0|ALT_INV_y[0]~8_combout\,
	combout => \mux0|y[0]~10_combout\);

-- Location: LABCELL_X12_Y7_N54
\fsm|Selector7~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector7~4_combout\ = ( \fsm|Selector5~4_combout\ & ( ((\fsm|y_Q.T2~DUPLICATE_q\ & \fsm|Selector7~2_combout\)) # (\fsm|Selector7~1_combout\) ) ) # ( !\fsm|Selector5~4_combout\ & ( (\fsm|y_Q.T2~DUPLICATE_q\ & (((\fsm|Selector7~1_combout\ & 
-- \fsm|Selector6~1_combout\)) # (\fsm|Selector7~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010101000100010001010100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_y_Q.T2~DUPLICATE_q\,
	datab => \fsm|ALT_INV_Selector7~2_combout\,
	datac => \fsm|ALT_INV_Selector7~1_combout\,
	datad => \fsm|ALT_INV_Selector6~1_combout\,
	dataf => \fsm|ALT_INV_Selector5~4_combout\,
	combout => \fsm|Selector7~4_combout\);

-- Location: MLABCELL_X13_Y9_N24
\fsm|Selector7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector7~5_combout\ = ( \decX|Mux0~0_combout\ & ( !\fsm|Selector7~4_combout\ & ( (!\fsm|Selector7~1_combout\ & (((!\fsm|Selector5~1_combout\) # (\ir0|Q\(3))))) # (\fsm|Selector7~1_combout\ & (!\fsm|Selector5~3_combout\ & 
-- ((!\fsm|Selector5~1_combout\) # (\ir0|Q\(3))))) ) ) ) # ( !\decX|Mux0~0_combout\ & ( !\fsm|Selector7~4_combout\ & ( (!\fsm|Selector7~1_combout\) # (!\fsm|Selector5~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011100000111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Selector7~1_combout\,
	datab => \fsm|ALT_INV_Selector5~3_combout\,
	datac => \ir0|ALT_INV_Q\(3),
	datad => \fsm|ALT_INV_Selector5~1_combout\,
	datae => \decX|ALT_INV_Mux0~0_combout\,
	dataf => \fsm|ALT_INV_Selector7~4_combout\,
	combout => \fsm|Selector7~5_combout\);

-- Location: MLABCELL_X13_Y8_N0
\fsm|Selector6~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector6~6_combout\ = ( \fsm|Selector6~1_combout\ & ( (!\fsm|y_Q.T2~q\ & (((\fsm|Selector6~2_combout\ & \fsm|Selector5~4_combout\)))) # (\fsm|y_Q.T2~q\ & (((\fsm|Selector6~2_combout\)) # (\fsm|Selector6~3_combout\))) ) ) # ( 
-- !\fsm|Selector6~1_combout\ & ( (!\fsm|Selector6~3_combout\ & (((\fsm|Selector6~2_combout\ & \fsm|Selector5~4_combout\)))) # (\fsm|Selector6~3_combout\ & (((\fsm|Selector6~2_combout\ & \fsm|Selector5~4_combout\)) # (\fsm|y_Q.T2~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011111000100010001111100010011000111110001001100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Selector6~3_combout\,
	datab => \fsm|ALT_INV_y_Q.T2~q\,
	datac => \fsm|ALT_INV_Selector6~2_combout\,
	datad => \fsm|ALT_INV_Selector5~4_combout\,
	dataf => \fsm|ALT_INV_Selector6~1_combout\,
	combout => \fsm|Selector6~6_combout\);

-- Location: MLABCELL_X13_Y9_N48
\fsm|Selector6~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector6~7_combout\ = ( \fsm|Selector6~2_combout\ & ( !\fsm|Selector6~6_combout\ & ( (!\fsm|Selector5~3_combout\ & ((!\ir0|Q\(3)) # ((!\fsm|Selector5~0_combout\) # (!\fsm|Selector5~1_combout\)))) ) ) ) # ( !\fsm|Selector6~2_combout\ & ( 
-- !\fsm|Selector6~6_combout\ & ( (!\ir0|Q\(3)) # ((!\fsm|Selector5~0_combout\) # (!\fsm|Selector5~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011111110111111100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(3),
	datab => \fsm|ALT_INV_Selector5~0_combout\,
	datac => \fsm|ALT_INV_Selector5~1_combout\,
	datad => \fsm|ALT_INV_Selector5~3_combout\,
	datae => \fsm|ALT_INV_Selector6~2_combout\,
	dataf => \fsm|ALT_INV_Selector6~6_combout\,
	combout => \fsm|Selector6~7_combout\);

-- Location: LABCELL_X12_Y9_N6
\fsm|Selector4~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector4~3_combout\ = ( \fsm|Selector4~1_combout\ & ( \fsm|Selector4~2_combout\ & ( (!\fsm|Selector5~3_combout\ & (!\fsm|Selector5~4_combout\ & !\fsm|y_Q.T2~DUPLICATE_q\)) ) ) ) # ( !\fsm|Selector4~1_combout\ & ( \fsm|Selector4~2_combout\ & ( 
-- !\fsm|y_Q.T2~DUPLICATE_q\ ) ) ) # ( \fsm|Selector4~1_combout\ & ( !\fsm|Selector4~2_combout\ & ( (!\fsm|Selector5~3_combout\ & (!\fsm|Selector5~4_combout\ & ((!\fsm|Selector6~1_combout\) # (!\fsm|y_Q.T2~DUPLICATE_q\)))) ) ) ) # ( 
-- !\fsm|Selector4~1_combout\ & ( !\fsm|Selector4~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111110000001000000011111111000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Selector6~1_combout\,
	datab => \fsm|ALT_INV_Selector5~3_combout\,
	datac => \fsm|ALT_INV_Selector5~4_combout\,
	datad => \fsm|ALT_INV_y_Q.T2~DUPLICATE_q\,
	datae => \fsm|ALT_INV_Selector4~1_combout\,
	dataf => \fsm|ALT_INV_Selector4~2_combout\,
	combout => \fsm|Selector4~3_combout\);

-- Location: MLABCELL_X13_Y9_N15
\mux0|y[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[0]~6_combout\ = ( \fsm|Selector5~7_combout\ & ( (!\fsm|Selector5~2_combout\) # ((\fsm|Selector4~3_combout\ & !\fsm|Selector4~0_combout\)) ) ) # ( !\fsm|Selector5~7_combout\ & ( (\fsm|Selector4~3_combout\ & !\fsm|Selector4~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000011111111010100001111111101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Selector4~3_combout\,
	datac => \fsm|ALT_INV_Selector4~0_combout\,
	datad => \fsm|ALT_INV_Selector5~2_combout\,
	dataf => \fsm|ALT_INV_Selector5~7_combout\,
	combout => \mux0|y[0]~6_combout\);

-- Location: LABCELL_X12_Y9_N24
\fsm|Selector2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector2~5_combout\ = ( \fsm|Selector2~3_combout\ & ( ((\fsm|Selector5~4_combout\ & \fsm|Selector2~2_combout\)) # (\fsm|y_Q.T2~DUPLICATE_q\) ) ) # ( !\fsm|Selector2~3_combout\ & ( (\fsm|Selector2~2_combout\ & (((\fsm|y_Q.T2~DUPLICATE_q\ & 
-- \fsm|Selector6~1_combout\)) # (\fsm|Selector5~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010111000000000101011100110011011101110011001101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Selector5~4_combout\,
	datab => \fsm|ALT_INV_y_Q.T2~DUPLICATE_q\,
	datac => \fsm|ALT_INV_Selector6~1_combout\,
	datad => \fsm|ALT_INV_Selector2~2_combout\,
	dataf => \fsm|ALT_INV_Selector2~3_combout\,
	combout => \fsm|Selector2~5_combout\);

-- Location: MLABCELL_X13_Y9_N0
\fsm|Selector2~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector2~6_combout\ = ( \fsm|Selector2~2_combout\ & ( !\fsm|Selector2~5_combout\ & ( (!\fsm|Selector5~3_combout\ & ((!\fsm|Selector2~0_combout\) # (!\fsm|Selector5~1_combout\))) ) ) ) # ( !\fsm|Selector2~2_combout\ & ( !\fsm|Selector2~5_combout\ & ( 
-- (!\fsm|Selector2~0_combout\) # (!\fsm|Selector5~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000110011001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fsm|ALT_INV_Selector5~3_combout\,
	datac => \fsm|ALT_INV_Selector2~0_combout\,
	datad => \fsm|ALT_INV_Selector5~1_combout\,
	datae => \fsm|ALT_INV_Selector2~2_combout\,
	dataf => \fsm|ALT_INV_Selector2~5_combout\,
	combout => \fsm|Selector2~6_combout\);

-- Location: MLABCELL_X13_Y9_N18
\mux0|y[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[0]~5_combout\ = ( \fsm|Selector5~7_combout\ & ( !\fsm|Selector5~2_combout\ $ (((\fsm|Selector4~3_combout\ & !\fsm|Selector4~0_combout\))) ) ) # ( !\fsm|Selector5~7_combout\ & ( (\fsm|Selector4~3_combout\ & !\fsm|Selector4~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011000011110011001100001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fsm|ALT_INV_Selector5~2_combout\,
	datac => \fsm|ALT_INV_Selector4~3_combout\,
	datad => \fsm|ALT_INV_Selector4~0_combout\,
	dataf => \fsm|ALT_INV_Selector5~7_combout\,
	combout => \mux0|y[0]~5_combout\);

-- Location: MLABCELL_X13_Y9_N54
\mux0|y[0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[0]~7_combout\ = ( \fsm|Selector2~6_combout\ & ( \mux0|y[0]~5_combout\ & ( (\fsm|Selector7~5_combout\ & (\fsm|Selector8~1_combout\ & (\fsm|Selector6~7_combout\ & \mux0|y[0]~6_combout\))) ) ) ) # ( \fsm|Selector2~6_combout\ & ( 
-- !\mux0|y[0]~5_combout\ & ( (\mux0|y[0]~6_combout\ & ((!\fsm|Selector7~5_combout\ & (\fsm|Selector8~1_combout\ & \fsm|Selector6~7_combout\)) # (\fsm|Selector7~5_combout\ & (!\fsm|Selector8~1_combout\ $ (!\fsm|Selector6~7_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001011000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Selector7~5_combout\,
	datab => \fsm|ALT_INV_Selector8~1_combout\,
	datac => \fsm|ALT_INV_Selector6~7_combout\,
	datad => \mux0|ALT_INV_y[0]~6_combout\,
	datae => \fsm|ALT_INV_Selector2~6_combout\,
	dataf => \mux0|ALT_INV_y[0]~5_combout\,
	combout => \mux0|y[0]~7_combout\);

-- Location: MLABCELL_X13_Y7_N24
\mux0|y[0]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[0]~13_combout\ = ( \mux0|y[0]~10_combout\ & ( \mux0|y[0]~7_combout\ & ( (!\mux0|y[0]~11_combout\ & !\fsm|Dout~0_combout\) ) ) ) # ( \mux0|y[0]~10_combout\ & ( !\mux0|y[0]~7_combout\ & ( (!\mux0|y[0]~11_combout\ & (!\fsm|Dout~0_combout\ & 
-- ((!\fsm|Selector1~3_combout\) # (\mux0|y[0]~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000001100000000000000000000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Selector1~3_combout\,
	datab => \mux0|ALT_INV_y[0]~11_combout\,
	datac => \fsm|ALT_INV_Dout~0_combout\,
	datad => \mux0|ALT_INV_y[0]~4_combout\,
	datae => \mux0|ALT_INV_y[0]~10_combout\,
	dataf => \mux0|ALT_INV_y[0]~7_combout\,
	combout => \mux0|y[0]~13_combout\);

-- Location: MLABCELL_X13_Y7_N36
\mux0|y[1]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[1]~17_combout\ = ( \mux0|y[0]~12_combout\ & ( \mux0|y[0]~13_combout\ & ( \reg0|Q\(1) ) ) ) # ( !\mux0|y[0]~12_combout\ & ( \mux0|y[0]~13_combout\ & ( \mux0|y[1]~16_combout\ ) ) ) # ( \mux0|y[0]~12_combout\ & ( !\mux0|y[0]~13_combout\ & ( 
-- \regG|Q\(1) ) ) ) # ( !\mux0|y[0]~12_combout\ & ( !\mux0|y[0]~13_combout\ & ( \data_in[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg0|ALT_INV_Q\(1),
	datab => \ALT_INV_data_in[1]~input_o\,
	datac => \mux0|ALT_INV_y[1]~16_combout\,
	datad => \regG|ALT_INV_Q\(1),
	datae => \mux0|ALT_INV_y[0]~12_combout\,
	dataf => \mux0|ALT_INV_y[0]~13_combout\,
	combout => \mux0|y[1]~17_combout\);

-- Location: FF_X13_Y7_N38
\regA|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mux0|y[1]~17_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Selector5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regA|Q\(1));

-- Location: LABCELL_X14_Y8_N36
\addsub0|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \addsub0|Add0~33_sumout\ = SUM(( !\mux0|y[1]~17_combout\ $ (((!\fsm|y_Q.T2~q\) # (!\fsm|Mux37~0_combout\))) ) + ( \regA|Q\(1) ) + ( \addsub0|Add0~2\ ))
-- \addsub0|Add0~34\ = CARRY(( !\mux0|y[1]~17_combout\ $ (((!\fsm|y_Q.T2~q\) # (!\fsm|Mux37~0_combout\))) ) + ( \regA|Q\(1) ) + ( \addsub0|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_y_Q.T2~q\,
	datac => \mux0|ALT_INV_y[1]~17_combout\,
	datad => \fsm|ALT_INV_Mux37~0_combout\,
	dataf => \regA|ALT_INV_Q\(1),
	cin => \addsub0|Add0~2\,
	sumout => \addsub0|Add0~33_sumout\,
	cout => \addsub0|Add0~34\);

-- Location: FF_X14_Y8_N38
\regG|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \addsub0|Add0~33_sumout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regG|Q\(1));

-- Location: LABCELL_X17_Y7_N45
\reg0|Q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg0|Q[2]~feeder_combout\ = ( \mux0|y[2]~20_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y[2]~20_combout\,
	combout => \reg0|Q[2]~feeder_combout\);

-- Location: FF_X17_Y7_N47
\reg0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg0|Q[2]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Selector12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(2));

-- Location: FF_X13_Y8_N53
\reg1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[2]~20_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(2));

-- Location: LABCELL_X14_Y5_N0
\reg3|Q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg3|Q[2]~feeder_combout\ = ( \mux0|y[2]~20_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y[2]~20_combout\,
	combout => \reg3|Q[2]~feeder_combout\);

-- Location: FF_X14_Y5_N1
\reg3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg3|Q[2]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(2));

-- Location: FF_X13_Y6_N8
\reg2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[2]~20_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(2));

-- Location: LABCELL_X14_Y8_N6
\pc0|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc0|Add0~9_sumout\ = SUM(( \pc0|v\(2) ) + ( GND ) + ( \pc0|Add0~6\ ))
-- \pc0|Add0~10\ = CARRY(( \pc0|v\(2) ) + ( GND ) + ( \pc0|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pc0|ALT_INV_v\(2),
	cin => \pc0|Add0~6\,
	sumout => \pc0|Add0~9_sumout\,
	cout => \pc0|Add0~10\);

-- Location: FF_X14_Y8_N8
\pc0|v[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pc0|Add0~9_sumout\,
	asdata => \mux0|y[2]~20_combout\,
	clrn => \reset_n~input_o\,
	sload => \fsm|ALT_INV_Selector10~0_combout\,
	ena => \pc0|v[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc0|v\(2));

-- Location: LABCELL_X16_Y7_N45
\reg5|Q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg5|Q[2]~feeder_combout\ = ( \mux0|y[2]~20_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y[2]~20_combout\,
	combout => \reg5|Q[2]~feeder_combout\);

-- Location: FF_X16_Y7_N47
\reg5|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg5|Q[2]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Selector17~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|Q\(2));

-- Location: LABCELL_X14_Y7_N9
\reg6|Q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg6|Q[2]~feeder_combout\ = ( \mux0|y[2]~20_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y[2]~20_combout\,
	combout => \reg6|Q[2]~feeder_combout\);

-- Location: FF_X14_Y7_N10
\reg6|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg6|Q[2]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Selector18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|Q\(2));

-- Location: FF_X13_Y6_N32
\reg4|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[2]~20_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(2));

-- Location: MLABCELL_X13_Y6_N30
\mux0|y[2]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[2]~18_combout\ = ( \reg4|Q\(2) & ( \mux0|y[0]~0_combout\ & ( (!\mux0|y[0]~1_combout\ & (\reg5|Q\(2))) # (\mux0|y[0]~1_combout\ & ((\reg6|Q\(2)))) ) ) ) # ( !\reg4|Q\(2) & ( \mux0|y[0]~0_combout\ & ( (!\mux0|y[0]~1_combout\ & (\reg5|Q\(2))) # 
-- (\mux0|y[0]~1_combout\ & ((\reg6|Q\(2)))) ) ) ) # ( \reg4|Q\(2) & ( !\mux0|y[0]~0_combout\ & ( (!\mux0|y[0]~1_combout\) # (\pc0|v\(2)) ) ) ) # ( !\reg4|Q\(2) & ( !\mux0|y[0]~0_combout\ & ( (\pc0|v\(2) & \mux0|y[0]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111110101010100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc0|ALT_INV_v\(2),
	datab => \reg5|ALT_INV_Q\(2),
	datac => \reg6|ALT_INV_Q\(2),
	datad => \mux0|ALT_INV_y[0]~1_combout\,
	datae => \reg4|ALT_INV_Q\(2),
	dataf => \mux0|ALT_INV_y[0]~0_combout\,
	combout => \mux0|y[2]~18_combout\);

-- Location: MLABCELL_X13_Y6_N6
\mux0|y[2]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[2]~19_combout\ = ( \reg2|Q\(2) & ( \mux0|y[2]~18_combout\ & ( (!\mux0|y[0]~2_combout\ & (((\mux0|y[0]~3_combout\)) # (\reg1|Q\(2)))) # (\mux0|y[0]~2_combout\ & (((!\mux0|y[0]~3_combout\) # (\reg3|Q\(2))))) ) ) ) # ( !\reg2|Q\(2) & ( 
-- \mux0|y[2]~18_combout\ & ( (!\mux0|y[0]~2_combout\ & (((\mux0|y[0]~3_combout\)) # (\reg1|Q\(2)))) # (\mux0|y[0]~2_combout\ & (((\reg3|Q\(2) & \mux0|y[0]~3_combout\)))) ) ) ) # ( \reg2|Q\(2) & ( !\mux0|y[2]~18_combout\ & ( (!\mux0|y[0]~2_combout\ & 
-- (\reg1|Q\(2) & ((!\mux0|y[0]~3_combout\)))) # (\mux0|y[0]~2_combout\ & (((!\mux0|y[0]~3_combout\) # (\reg3|Q\(2))))) ) ) ) # ( !\reg2|Q\(2) & ( !\mux0|y[2]~18_combout\ & ( (!\mux0|y[0]~2_combout\ & (\reg1|Q\(2) & ((!\mux0|y[0]~3_combout\)))) # 
-- (\mux0|y[0]~2_combout\ & (((\reg3|Q\(2) & \mux0|y[0]~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000011010111110000001101010000111100110101111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|ALT_INV_Q\(2),
	datab => \reg3|ALT_INV_Q\(2),
	datac => \mux0|ALT_INV_y[0]~2_combout\,
	datad => \mux0|ALT_INV_y[0]~3_combout\,
	datae => \reg2|ALT_INV_Q\(2),
	dataf => \mux0|ALT_INV_y[2]~18_combout\,
	combout => \mux0|y[2]~19_combout\);

-- Location: LABCELL_X14_Y7_N42
\mux0|y[2]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[2]~20_combout\ = ( \mux0|y[2]~19_combout\ & ( \mux0|y[0]~13_combout\ & ( (!\mux0|y[0]~12_combout\) # (\reg0|Q\(2)) ) ) ) # ( !\mux0|y[2]~19_combout\ & ( \mux0|y[0]~13_combout\ & ( (\reg0|Q\(2) & \mux0|y[0]~12_combout\) ) ) ) # ( 
-- \mux0|y[2]~19_combout\ & ( !\mux0|y[0]~13_combout\ & ( (!\mux0|y[0]~12_combout\ & (\data_in[2]~input_o\)) # (\mux0|y[0]~12_combout\ & ((\regG|Q\(2)))) ) ) ) # ( !\mux0|y[2]~19_combout\ & ( !\mux0|y[0]~13_combout\ & ( (!\mux0|y[0]~12_combout\ & 
-- (\data_in[2]~input_o\)) # (\mux0|y[0]~12_combout\ & ((\regG|Q\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100000000010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg0|ALT_INV_Q\(2),
	datab => \ALT_INV_data_in[2]~input_o\,
	datac => \regG|ALT_INV_Q\(2),
	datad => \mux0|ALT_INV_y[0]~12_combout\,
	datae => \mux0|ALT_INV_y[2]~19_combout\,
	dataf => \mux0|ALT_INV_y[0]~13_combout\,
	combout => \mux0|y[2]~20_combout\);

-- Location: FF_X14_Y7_N44
\regA|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mux0|y[2]~20_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Selector5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regA|Q\(2));

-- Location: LABCELL_X14_Y8_N39
\addsub0|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \addsub0|Add0~29_sumout\ = SUM(( !\mux0|y[2]~20_combout\ $ (((!\fsm|y_Q.T2~q\) # (!\fsm|Mux37~0_combout\))) ) + ( \regA|Q\(2) ) + ( \addsub0|Add0~34\ ))
-- \addsub0|Add0~30\ = CARRY(( !\mux0|y[2]~20_combout\ $ (((!\fsm|y_Q.T2~q\) # (!\fsm|Mux37~0_combout\))) ) + ( \regA|Q\(2) ) + ( \addsub0|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_y_Q.T2~q\,
	datac => \mux0|ALT_INV_y[2]~20_combout\,
	datad => \fsm|ALT_INV_Mux37~0_combout\,
	dataf => \regA|ALT_INV_Q\(2),
	cin => \addsub0|Add0~34\,
	sumout => \addsub0|Add0~29_sumout\,
	cout => \addsub0|Add0~30\);

-- Location: FF_X14_Y8_N41
\regG|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \addsub0|Add0~29_sumout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regG|Q\(2));

-- Location: MLABCELL_X13_Y9_N6
\fsm|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Equal1~1_combout\ = ( !\regG|Q\(2) & ( (!\regG|Q\(0) & !\regG|Q\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \regG|ALT_INV_Q\(0),
	datad => \regG|ALT_INV_Q\(1),
	dataf => \regG|ALT_INV_Q\(2),
	combout => \fsm|Equal1~1_combout\);

-- Location: MLABCELL_X13_Y9_N42
\fsm|Selector5~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector5~3_combout\ = ( \ir0|Q\(6) & ( \fsm|Equal1~1_combout\ & ( (\ir0|Q\(8) & (\fsm|y_Q.T1~q\ & ((!\ir0|Q\(7)) # (!\fsm|Equal1~0_combout\)))) ) ) ) # ( !\ir0|Q\(6) & ( \fsm|Equal1~1_combout\ & ( (\ir0|Q\(8) & (\fsm|y_Q.T1~q\ & \ir0|Q\(7))) ) ) ) # 
-- ( \ir0|Q\(6) & ( !\fsm|Equal1~1_combout\ & ( (\ir0|Q\(8) & \fsm|y_Q.T1~q\) ) ) ) # ( !\ir0|Q\(6) & ( !\fsm|Equal1~1_combout\ & ( (\ir0|Q\(8) & (\fsm|y_Q.T1~q\ & \ir0|Q\(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000100010001000100000001000000010001000100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(8),
	datab => \fsm|ALT_INV_y_Q.T1~q\,
	datac => \ir0|ALT_INV_Q\(7),
	datad => \fsm|ALT_INV_Equal1~0_combout\,
	datae => \ir0|ALT_INV_Q\(6),
	dataf => \fsm|ALT_INV_Equal1~1_combout\,
	combout => \fsm|Selector5~3_combout\);

-- Location: LABCELL_X12_Y9_N0
\fsm|Selector3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector3~4_combout\ = ( \fsm|Selector3~3_combout\ & ( \fsm|Selector5~3_combout\ & ( (!\fsm|Selector3~2_combout\ & !\fsm|y_Q.T2~DUPLICATE_q\) ) ) ) # ( !\fsm|Selector3~3_combout\ & ( \fsm|Selector5~3_combout\ & ( !\fsm|Selector3~2_combout\ ) ) ) # ( 
-- \fsm|Selector3~3_combout\ & ( !\fsm|Selector5~3_combout\ & ( (!\fsm|y_Q.T2~DUPLICATE_q\ & ((!\fsm|Selector5~4_combout\) # (!\fsm|Selector3~2_combout\))) ) ) ) # ( !\fsm|Selector3~3_combout\ & ( !\fsm|Selector5~3_combout\ & ( (!\fsm|Selector3~2_combout\) # 
-- ((!\fsm|Selector5~4_combout\ & ((!\fsm|Selector6~1_combout\) # (!\fsm|y_Q.T2~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111000111110100000000011110000111100001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Selector5~4_combout\,
	datab => \fsm|ALT_INV_Selector6~1_combout\,
	datac => \fsm|ALT_INV_Selector3~2_combout\,
	datad => \fsm|ALT_INV_y_Q.T2~DUPLICATE_q\,
	datae => \fsm|ALT_INV_Selector3~3_combout\,
	dataf => \fsm|ALT_INV_Selector5~3_combout\,
	combout => \fsm|Selector3~4_combout\);

-- Location: LABCELL_X12_Y9_N42
\mux0|y[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[0]~2_combout\ = ( \fsm|Selector4~0_combout\ & ( \fsm|Selector4~3_combout\ & ( (!\fsm|Selector2~1_combout\ & \fsm|Selector2~4_combout\) ) ) ) # ( !\fsm|Selector4~0_combout\ & ( \fsm|Selector4~3_combout\ & ( (!\fsm|Selector2~1_combout\ & 
-- (\fsm|Selector2~4_combout\ & ((!\fsm|Selector3~4_combout\) # (\fsm|Selector3~1_combout\)))) ) ) ) # ( \fsm|Selector4~0_combout\ & ( !\fsm|Selector4~3_combout\ & ( (!\fsm|Selector2~1_combout\ & \fsm|Selector2~4_combout\) ) ) ) # ( 
-- !\fsm|Selector4~0_combout\ & ( !\fsm|Selector4~3_combout\ & ( (!\fsm|Selector2~1_combout\ & \fsm|Selector2~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001000000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Selector3~4_combout\,
	datab => \fsm|ALT_INV_Selector2~1_combout\,
	datac => \fsm|ALT_INV_Selector2~4_combout\,
	datad => \fsm|ALT_INV_Selector3~1_combout\,
	datae => \fsm|ALT_INV_Selector4~0_combout\,
	dataf => \fsm|ALT_INV_Selector4~3_combout\,
	combout => \mux0|y[0]~2_combout\);

-- Location: LABCELL_X14_Y9_N18
\reg1|Q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg1|Q[4]~feeder_combout\ = ( \mux0|y[4]~26_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y[4]~26_combout\,
	combout => \reg1|Q[4]~feeder_combout\);

-- Location: FF_X14_Y9_N20
\reg1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg1|Q[4]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Selector13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(4));

-- Location: LABCELL_X14_Y9_N12
\reg3|Q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg3|Q[4]~feeder_combout\ = ( \mux0|y[4]~26_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y[4]~26_combout\,
	combout => \reg3|Q[4]~feeder_combout\);

-- Location: FF_X14_Y9_N13
\reg3|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg3|Q[4]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(4));

-- Location: FF_X12_Y7_N50
\reg2|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[4]~26_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(4));

-- Location: LABCELL_X14_Y8_N9
\pc0|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc0|Add0~13_sumout\ = SUM(( \pc0|v\(3) ) + ( GND ) + ( \pc0|Add0~10\ ))
-- \pc0|Add0~14\ = CARRY(( \pc0|v\(3) ) + ( GND ) + ( \pc0|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pc0|ALT_INV_v\(3),
	cin => \pc0|Add0~10\,
	sumout => \pc0|Add0~13_sumout\,
	cout => \pc0|Add0~14\);

-- Location: FF_X13_Y9_N29
\reg0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[3]~23_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(3));

-- Location: FF_X14_Y7_N26
\regA|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mux0|y[3]~23_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Selector5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regA|Q\(3));

-- Location: LABCELL_X14_Y8_N42
\addsub0|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \addsub0|Add0~5_sumout\ = SUM(( !\mux0|y[3]~23_combout\ $ (((!\fsm|y_Q.T2~q\) # (!\fsm|Mux37~0_combout\))) ) + ( \regA|Q\(3) ) + ( \addsub0|Add0~30\ ))
-- \addsub0|Add0~6\ = CARRY(( !\mux0|y[3]~23_combout\ $ (((!\fsm|y_Q.T2~q\) # (!\fsm|Mux37~0_combout\))) ) + ( \regA|Q\(3) ) + ( \addsub0|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_y_Q.T2~q\,
	datab => \mux0|ALT_INV_y[3]~23_combout\,
	datad => \fsm|ALT_INV_Mux37~0_combout\,
	dataf => \regA|ALT_INV_Q\(3),
	cin => \addsub0|Add0~30\,
	sumout => \addsub0|Add0~5_sumout\,
	cout => \addsub0|Add0~6\);

-- Location: FF_X14_Y8_N44
\regG|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \addsub0|Add0~5_sumout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regG|Q\(3));

-- Location: LABCELL_X16_Y6_N0
\reg3|Q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg3|Q[3]~feeder_combout\ = ( \mux0|y[3]~23_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y[3]~23_combout\,
	combout => \reg3|Q[3]~feeder_combout\);

-- Location: FF_X16_Y6_N1
\reg3|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg3|Q[3]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(3));

-- Location: FF_X14_Y9_N11
\reg1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[3]~23_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(3));

-- Location: FF_X13_Y5_N38
\reg2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[3]~23_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(3));

-- Location: LABCELL_X14_Y7_N48
\reg6|Q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg6|Q[3]~feeder_combout\ = ( \mux0|y[3]~23_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y[3]~23_combout\,
	combout => \reg6|Q[3]~feeder_combout\);

-- Location: FF_X14_Y7_N49
\reg6|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg6|Q[3]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Selector18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|Q\(3));

-- Location: FF_X13_Y9_N41
\reg5|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[3]~23_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector17~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|Q\(3));

-- Location: FF_X13_Y5_N32
\reg4|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[3]~23_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(3));

-- Location: MLABCELL_X13_Y5_N30
\mux0|y[3]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[3]~21_combout\ = ( \reg4|Q\(3) & ( \mux0|y[0]~0_combout\ & ( (!\mux0|y[0]~1_combout\ & ((\reg5|Q\(3)))) # (\mux0|y[0]~1_combout\ & (\reg6|Q\(3))) ) ) ) # ( !\reg4|Q\(3) & ( \mux0|y[0]~0_combout\ & ( (!\mux0|y[0]~1_combout\ & ((\reg5|Q\(3)))) # 
-- (\mux0|y[0]~1_combout\ & (\reg6|Q\(3))) ) ) ) # ( \reg4|Q\(3) & ( !\mux0|y[0]~0_combout\ & ( (!\mux0|y[0]~1_combout\) # (\pc0|v\(3)) ) ) ) # ( !\reg4|Q\(3) & ( !\mux0|y[0]~0_combout\ & ( (\pc0|v\(3) & \mux0|y[0]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111110101010100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc0|ALT_INV_v\(3),
	datab => \reg6|ALT_INV_Q\(3),
	datac => \reg5|ALT_INV_Q\(3),
	datad => \mux0|ALT_INV_y[0]~1_combout\,
	datae => \reg4|ALT_INV_Q\(3),
	dataf => \mux0|ALT_INV_y[0]~0_combout\,
	combout => \mux0|y[3]~21_combout\);

-- Location: MLABCELL_X13_Y5_N36
\mux0|y[3]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[3]~22_combout\ = ( \reg2|Q\(3) & ( \mux0|y[3]~21_combout\ & ( (!\mux0|y[0]~3_combout\ & (((\mux0|y[0]~2_combout\) # (\reg1|Q\(3))))) # (\mux0|y[0]~3_combout\ & (((!\mux0|y[0]~2_combout\)) # (\reg3|Q\(3)))) ) ) ) # ( !\reg2|Q\(3) & ( 
-- \mux0|y[3]~21_combout\ & ( (!\mux0|y[0]~3_combout\ & (((\reg1|Q\(3) & !\mux0|y[0]~2_combout\)))) # (\mux0|y[0]~3_combout\ & (((!\mux0|y[0]~2_combout\)) # (\reg3|Q\(3)))) ) ) ) # ( \reg2|Q\(3) & ( !\mux0|y[3]~21_combout\ & ( (!\mux0|y[0]~3_combout\ & 
-- (((\mux0|y[0]~2_combout\) # (\reg1|Q\(3))))) # (\mux0|y[0]~3_combout\ & (\reg3|Q\(3) & ((\mux0|y[0]~2_combout\)))) ) ) ) # ( !\reg2|Q\(3) & ( !\mux0|y[3]~21_combout\ & ( (!\mux0|y[0]~3_combout\ & (((\reg1|Q\(3) & !\mux0|y[0]~2_combout\)))) # 
-- (\mux0|y[0]~3_combout\ & (\reg3|Q\(3) & ((\mux0|y[0]~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000101001100001111010100111111000001010011111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg3|ALT_INV_Q\(3),
	datab => \reg1|ALT_INV_Q\(3),
	datac => \mux0|ALT_INV_y[0]~3_combout\,
	datad => \mux0|ALT_INV_y[0]~2_combout\,
	datae => \reg2|ALT_INV_Q\(3),
	dataf => \mux0|ALT_INV_y[3]~21_combout\,
	combout => \mux0|y[3]~22_combout\);

-- Location: LABCELL_X14_Y7_N24
\mux0|y[3]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[3]~23_combout\ = ( \mux0|y[3]~22_combout\ & ( \mux0|y[0]~13_combout\ & ( (!\mux0|y[0]~12_combout\) # (\reg0|Q\(3)) ) ) ) # ( !\mux0|y[3]~22_combout\ & ( \mux0|y[0]~13_combout\ & ( (\mux0|y[0]~12_combout\ & \reg0|Q\(3)) ) ) ) # ( 
-- \mux0|y[3]~22_combout\ & ( !\mux0|y[0]~13_combout\ & ( (!\mux0|y[0]~12_combout\ & (\data_in[3]~input_o\)) # (\mux0|y[0]~12_combout\ & ((\regG|Q\(3)))) ) ) ) # ( !\mux0|y[3]~22_combout\ & ( !\mux0|y[0]~13_combout\ & ( (!\mux0|y[0]~12_combout\ & 
-- (\data_in[3]~input_o\)) # (\mux0|y[0]~12_combout\ & ((\regG|Q\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011100000011000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data_in[3]~input_o\,
	datab => \mux0|ALT_INV_y[0]~12_combout\,
	datac => \reg0|ALT_INV_Q\(3),
	datad => \regG|ALT_INV_Q\(3),
	datae => \mux0|ALT_INV_y[3]~22_combout\,
	dataf => \mux0|ALT_INV_y[0]~13_combout\,
	combout => \mux0|y[3]~23_combout\);

-- Location: FF_X14_Y8_N11
\pc0|v[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pc0|Add0~13_sumout\,
	asdata => \mux0|y[3]~23_combout\,
	clrn => \reset_n~input_o\,
	sload => \fsm|ALT_INV_Selector10~0_combout\,
	ena => \pc0|v[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc0|v\(3));

-- Location: LABCELL_X14_Y8_N12
\pc0|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc0|Add0~17_sumout\ = SUM(( \pc0|v\(4) ) + ( GND ) + ( \pc0|Add0~14\ ))
-- \pc0|Add0~18\ = CARRY(( \pc0|v\(4) ) + ( GND ) + ( \pc0|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pc0|ALT_INV_v\(4),
	cin => \pc0|Add0~14\,
	sumout => \pc0|Add0~17_sumout\,
	cout => \pc0|Add0~18\);

-- Location: FF_X14_Y8_N14
\pc0|v[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pc0|Add0~17_sumout\,
	asdata => \mux0|y[4]~26_combout\,
	clrn => \reset_n~input_o\,
	sload => \fsm|ALT_INV_Selector10~0_combout\,
	ena => \pc0|v[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc0|v\(4));

-- Location: FF_X14_Y7_N31
\reg6|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[4]~26_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|Q\(4));

-- Location: LABCELL_X16_Y7_N48
\reg5|Q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg5|Q[4]~feeder_combout\ = ( \mux0|y[4]~26_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y[4]~26_combout\,
	combout => \reg5|Q[4]~feeder_combout\);

-- Location: FF_X16_Y7_N50
\reg5|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg5|Q[4]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Selector17~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|Q\(4));

-- Location: FF_X12_Y7_N14
\reg4|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[4]~26_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(4));

-- Location: LABCELL_X12_Y7_N12
\mux0|y[4]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[4]~24_combout\ = ( \reg4|Q\(4) & ( \mux0|y[0]~1_combout\ & ( (!\mux0|y[0]~0_combout\ & (\pc0|v\(4))) # (\mux0|y[0]~0_combout\ & ((\reg6|Q\(4)))) ) ) ) # ( !\reg4|Q\(4) & ( \mux0|y[0]~1_combout\ & ( (!\mux0|y[0]~0_combout\ & (\pc0|v\(4))) # 
-- (\mux0|y[0]~0_combout\ & ((\reg6|Q\(4)))) ) ) ) # ( \reg4|Q\(4) & ( !\mux0|y[0]~1_combout\ & ( (!\mux0|y[0]~0_combout\) # (\reg5|Q\(4)) ) ) ) # ( !\reg4|Q\(4) & ( !\mux0|y[0]~1_combout\ & ( (\reg5|Q\(4) & \mux0|y[0]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111110000111101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc0|ALT_INV_v\(4),
	datab => \reg6|ALT_INV_Q\(4),
	datac => \reg5|ALT_INV_Q\(4),
	datad => \mux0|ALT_INV_y[0]~0_combout\,
	datae => \reg4|ALT_INV_Q\(4),
	dataf => \mux0|ALT_INV_y[0]~1_combout\,
	combout => \mux0|y[4]~24_combout\);

-- Location: LABCELL_X12_Y7_N48
\mux0|y[4]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[4]~25_combout\ = ( \reg2|Q\(4) & ( \mux0|y[4]~24_combout\ & ( (!\mux0|y[0]~2_combout\ & (((\mux0|y[0]~3_combout\)) # (\reg1|Q\(4)))) # (\mux0|y[0]~2_combout\ & (((!\mux0|y[0]~3_combout\) # (\reg3|Q\(4))))) ) ) ) # ( !\reg2|Q\(4) & ( 
-- \mux0|y[4]~24_combout\ & ( (!\mux0|y[0]~2_combout\ & (((\mux0|y[0]~3_combout\)) # (\reg1|Q\(4)))) # (\mux0|y[0]~2_combout\ & (((\reg3|Q\(4) & \mux0|y[0]~3_combout\)))) ) ) ) # ( \reg2|Q\(4) & ( !\mux0|y[4]~24_combout\ & ( (!\mux0|y[0]~2_combout\ & 
-- (\reg1|Q\(4) & ((!\mux0|y[0]~3_combout\)))) # (\mux0|y[0]~2_combout\ & (((!\mux0|y[0]~3_combout\) # (\reg3|Q\(4))))) ) ) ) # ( !\reg2|Q\(4) & ( !\mux0|y[4]~24_combout\ & ( (!\mux0|y[0]~2_combout\ & (\reg1|Q\(4) & ((!\mux0|y[0]~3_combout\)))) # 
-- (\mux0|y[0]~2_combout\ & (((\reg3|Q\(4) & \mux0|y[0]~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000101011101110000010100100010101011110111011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[0]~2_combout\,
	datab => \reg1|ALT_INV_Q\(4),
	datac => \reg3|ALT_INV_Q\(4),
	datad => \mux0|ALT_INV_y[0]~3_combout\,
	datae => \reg2|ALT_INV_Q\(4),
	dataf => \mux0|ALT_INV_y[4]~24_combout\,
	combout => \mux0|y[4]~25_combout\);

-- Location: MLABCELL_X13_Y7_N12
\mux0|y[4]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[4]~26_combout\ = ( \mux0|y[0]~12_combout\ & ( \mux0|y[0]~13_combout\ & ( \reg0|Q\(4) ) ) ) # ( !\mux0|y[0]~12_combout\ & ( \mux0|y[0]~13_combout\ & ( \mux0|y[4]~25_combout\ ) ) ) # ( \mux0|y[0]~12_combout\ & ( !\mux0|y[0]~13_combout\ & ( 
-- \regG|Q\(4) ) ) ) # ( !\mux0|y[0]~12_combout\ & ( !\mux0|y[0]~13_combout\ & ( \data_in[4]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg0|ALT_INV_Q\(4),
	datab => \ALT_INV_data_in[4]~input_o\,
	datac => \regG|ALT_INV_Q\(4),
	datad => \mux0|ALT_INV_y[4]~25_combout\,
	datae => \mux0|ALT_INV_y[0]~12_combout\,
	dataf => \mux0|ALT_INV_y[0]~13_combout\,
	combout => \mux0|y[4]~26_combout\);

-- Location: FF_X13_Y7_N14
\regA|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mux0|y[4]~26_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Selector5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regA|Q\(4));

-- Location: LABCELL_X14_Y8_N45
\addsub0|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \addsub0|Add0~9_sumout\ = SUM(( !\mux0|y[4]~26_combout\ $ (((!\fsm|y_Q.T2~q\) # (!\fsm|Mux37~0_combout\))) ) + ( \regA|Q\(4) ) + ( \addsub0|Add0~6\ ))
-- \addsub0|Add0~10\ = CARRY(( !\mux0|y[4]~26_combout\ $ (((!\fsm|y_Q.T2~q\) # (!\fsm|Mux37~0_combout\))) ) + ( \regA|Q\(4) ) + ( \addsub0|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_y_Q.T2~q\,
	datac => \mux0|ALT_INV_y[4]~26_combout\,
	datad => \fsm|ALT_INV_Mux37~0_combout\,
	dataf => \regA|ALT_INV_Q\(4),
	cin => \addsub0|Add0~6\,
	sumout => \addsub0|Add0~9_sumout\,
	cout => \addsub0|Add0~10\);

-- Location: FF_X14_Y8_N47
\regG|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \addsub0|Add0~9_sumout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regG|Q\(4));

-- Location: FF_X17_Y7_N53
\reg0|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[7]~35_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(7));

-- Location: LABCELL_X14_Y9_N42
\reg1|Q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg1|Q[7]~feeder_combout\ = ( \mux0|y[7]~35_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y[7]~35_combout\,
	combout => \reg1|Q[7]~feeder_combout\);

-- Location: FF_X14_Y9_N44
\reg1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg1|Q[7]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Selector13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(7));

-- Location: LABCELL_X14_Y9_N36
\reg3|Q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg3|Q[7]~feeder_combout\ = ( \mux0|y[7]~35_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y[7]~35_combout\,
	combout => \reg3|Q[7]~feeder_combout\);

-- Location: FF_X14_Y9_N37
\reg3|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg3|Q[7]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(7));

-- Location: FF_X13_Y5_N14
\reg2|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[7]~35_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(7));

-- Location: LABCELL_X14_Y8_N15
\pc0|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc0|Add0~21_sumout\ = SUM(( \pc0|v\(5) ) + ( GND ) + ( \pc0|Add0~18\ ))
-- \pc0|Add0~22\ = CARRY(( \pc0|v\(5) ) + ( GND ) + ( \pc0|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pc0|ALT_INV_v\(5),
	cin => \pc0|Add0~18\,
	sumout => \pc0|Add0~21_sumout\,
	cout => \pc0|Add0~22\);

-- Location: FF_X14_Y7_N38
\regA|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mux0|y[5]~29_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Selector5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regA|Q\(5));

-- Location: LABCELL_X14_Y8_N48
\addsub0|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \addsub0|Add0~13_sumout\ = SUM(( !\mux0|y[5]~29_combout\ $ (((!\fsm|y_Q.T2~q\) # (!\fsm|Mux37~0_combout\))) ) + ( \regA|Q\(5) ) + ( \addsub0|Add0~10\ ))
-- \addsub0|Add0~14\ = CARRY(( !\mux0|y[5]~29_combout\ $ (((!\fsm|y_Q.T2~q\) # (!\fsm|Mux37~0_combout\))) ) + ( \regA|Q\(5) ) + ( \addsub0|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_y_Q.T2~q\,
	datac => \mux0|ALT_INV_y[5]~29_combout\,
	datad => \fsm|ALT_INV_Mux37~0_combout\,
	dataf => \regA|ALT_INV_Q\(5),
	cin => \addsub0|Add0~10\,
	sumout => \addsub0|Add0~13_sumout\,
	cout => \addsub0|Add0~14\);

-- Location: FF_X14_Y8_N50
\regG|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \addsub0|Add0~13_sumout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regG|Q\(5));

-- Location: LABCELL_X17_Y7_N48
\reg0|Q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg0|Q[5]~feeder_combout\ = ( \mux0|y[5]~29_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y[5]~29_combout\,
	combout => \reg0|Q[5]~feeder_combout\);

-- Location: FF_X17_Y7_N50
\reg0|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg0|Q[5]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Selector12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(5));

-- Location: FF_X14_Y9_N2
\reg1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[5]~29_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(5));

-- Location: FF_X14_Y9_N25
\reg3|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[5]~29_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(5));

-- Location: FF_X13_Y5_N20
\reg2|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[5]~29_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(5));

-- Location: LABCELL_X16_Y7_N57
\reg5|Q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg5|Q[5]~feeder_combout\ = ( \mux0|y[5]~29_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y[5]~29_combout\,
	combout => \reg5|Q[5]~feeder_combout\);

-- Location: FF_X16_Y7_N59
\reg5|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg5|Q[5]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Selector17~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|Q\(5));

-- Location: FF_X14_Y7_N7
\reg6|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[5]~29_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|Q\(5));

-- Location: FF_X13_Y5_N44
\reg4|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[5]~29_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(5));

-- Location: MLABCELL_X13_Y5_N42
\mux0|y[5]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[5]~27_combout\ = ( \reg4|Q\(5) & ( \mux0|y[0]~0_combout\ & ( (!\mux0|y[0]~1_combout\ & (\reg5|Q\(5))) # (\mux0|y[0]~1_combout\ & ((\reg6|Q\(5)))) ) ) ) # ( !\reg4|Q\(5) & ( \mux0|y[0]~0_combout\ & ( (!\mux0|y[0]~1_combout\ & (\reg5|Q\(5))) # 
-- (\mux0|y[0]~1_combout\ & ((\reg6|Q\(5)))) ) ) ) # ( \reg4|Q\(5) & ( !\mux0|y[0]~0_combout\ & ( (!\mux0|y[0]~1_combout\) # (\pc0|v\(5)) ) ) ) # ( !\reg4|Q\(5) & ( !\mux0|y[0]~0_combout\ & ( (\pc0|v\(5) & \mux0|y[0]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111110101010100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc0|ALT_INV_v\(5),
	datab => \reg5|ALT_INV_Q\(5),
	datac => \reg6|ALT_INV_Q\(5),
	datad => \mux0|ALT_INV_y[0]~1_combout\,
	datae => \reg4|ALT_INV_Q\(5),
	dataf => \mux0|ALT_INV_y[0]~0_combout\,
	combout => \mux0|y[5]~27_combout\);

-- Location: MLABCELL_X13_Y5_N18
\mux0|y[5]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[5]~28_combout\ = ( \reg2|Q\(5) & ( \mux0|y[5]~27_combout\ & ( (!\mux0|y[0]~3_combout\ & (((\mux0|y[0]~2_combout\)) # (\reg1|Q\(5)))) # (\mux0|y[0]~3_combout\ & (((!\mux0|y[0]~2_combout\) # (\reg3|Q\(5))))) ) ) ) # ( !\reg2|Q\(5) & ( 
-- \mux0|y[5]~27_combout\ & ( (!\mux0|y[0]~3_combout\ & (\reg1|Q\(5) & ((!\mux0|y[0]~2_combout\)))) # (\mux0|y[0]~3_combout\ & (((!\mux0|y[0]~2_combout\) # (\reg3|Q\(5))))) ) ) ) # ( \reg2|Q\(5) & ( !\mux0|y[5]~27_combout\ & ( (!\mux0|y[0]~3_combout\ & 
-- (((\mux0|y[0]~2_combout\)) # (\reg1|Q\(5)))) # (\mux0|y[0]~3_combout\ & (((\reg3|Q\(5) & \mux0|y[0]~2_combout\)))) ) ) ) # ( !\reg2|Q\(5) & ( !\mux0|y[5]~27_combout\ & ( (!\mux0|y[0]~3_combout\ & (\reg1|Q\(5) & ((!\mux0|y[0]~2_combout\)))) # 
-- (\mux0|y[0]~3_combout\ & (((\reg3|Q\(5) & \mux0|y[0]~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000011010100001111001101011111000000110101111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|ALT_INV_Q\(5),
	datab => \reg3|ALT_INV_Q\(5),
	datac => \mux0|ALT_INV_y[0]~3_combout\,
	datad => \mux0|ALT_INV_y[0]~2_combout\,
	datae => \reg2|ALT_INV_Q\(5),
	dataf => \mux0|ALT_INV_y[5]~27_combout\,
	combout => \mux0|y[5]~28_combout\);

-- Location: LABCELL_X14_Y7_N36
\mux0|y[5]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[5]~29_combout\ = ( \mux0|y[5]~28_combout\ & ( \mux0|y[0]~13_combout\ & ( (!\mux0|y[0]~12_combout\) # (\reg0|Q\(5)) ) ) ) # ( !\mux0|y[5]~28_combout\ & ( \mux0|y[0]~13_combout\ & ( (\reg0|Q\(5) & \mux0|y[0]~12_combout\) ) ) ) # ( 
-- \mux0|y[5]~28_combout\ & ( !\mux0|y[0]~13_combout\ & ( (!\mux0|y[0]~12_combout\ & ((\data_in[5]~input_o\))) # (\mux0|y[0]~12_combout\ & (\regG|Q\(5))) ) ) ) # ( !\mux0|y[5]~28_combout\ & ( !\mux0|y[0]~13_combout\ & ( (!\mux0|y[0]~12_combout\ & 
-- ((\data_in[5]~input_o\))) # (\mux0|y[0]~12_combout\ & (\regG|Q\(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100000000000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regG|ALT_INV_Q\(5),
	datab => \ALT_INV_data_in[5]~input_o\,
	datac => \reg0|ALT_INV_Q\(5),
	datad => \mux0|ALT_INV_y[0]~12_combout\,
	datae => \mux0|ALT_INV_y[5]~28_combout\,
	dataf => \mux0|ALT_INV_y[0]~13_combout\,
	combout => \mux0|y[5]~29_combout\);

-- Location: FF_X14_Y8_N17
\pc0|v[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pc0|Add0~21_sumout\,
	asdata => \mux0|y[5]~29_combout\,
	clrn => \reset_n~input_o\,
	sload => \fsm|ALT_INV_Selector10~0_combout\,
	ena => \pc0|v[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc0|v\(5));

-- Location: LABCELL_X14_Y8_N18
\pc0|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc0|Add0~25_sumout\ = SUM(( \pc0|v\(6) ) + ( GND ) + ( \pc0|Add0~22\ ))
-- \pc0|Add0~26\ = CARRY(( \pc0|v\(6) ) + ( GND ) + ( \pc0|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pc0|ALT_INV_v\(6),
	cin => \pc0|Add0~22\,
	sumout => \pc0|Add0~25_sumout\,
	cout => \pc0|Add0~26\);

-- Location: FF_X13_Y7_N20
\regA|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mux0|y[6]~32_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Selector5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regA|Q\(6));

-- Location: LABCELL_X14_Y8_N51
\addsub0|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \addsub0|Add0~25_sumout\ = SUM(( !\mux0|y[6]~32_combout\ $ (((!\fsm|y_Q.T2~q\) # (!\fsm|Mux37~0_combout\))) ) + ( \regA|Q\(6) ) + ( \addsub0|Add0~14\ ))
-- \addsub0|Add0~26\ = CARRY(( !\mux0|y[6]~32_combout\ $ (((!\fsm|y_Q.T2~q\) # (!\fsm|Mux37~0_combout\))) ) + ( \regA|Q\(6) ) + ( \addsub0|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_y_Q.T2~q\,
	datac => \mux0|ALT_INV_y[6]~32_combout\,
	datad => \fsm|ALT_INV_Mux37~0_combout\,
	dataf => \regA|ALT_INV_Q\(6),
	cin => \addsub0|Add0~14\,
	sumout => \addsub0|Add0~25_sumout\,
	cout => \addsub0|Add0~26\);

-- Location: FF_X14_Y8_N53
\regG|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \addsub0|Add0~25_sumout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regG|Q\(6));

-- Location: LABCELL_X14_Y9_N27
\reg3|Q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg3|Q[6]~feeder_combout\ = ( \mux0|y[6]~32_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y[6]~32_combout\,
	combout => \reg3|Q[6]~feeder_combout\);

-- Location: FF_X14_Y9_N29
\reg3|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg3|Q[6]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(6));

-- Location: LABCELL_X14_Y9_N3
\reg1|Q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg1|Q[6]~feeder_combout\ = ( \mux0|y[6]~32_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y[6]~32_combout\,
	combout => \reg1|Q[6]~feeder_combout\);

-- Location: FF_X14_Y9_N5
\reg1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg1|Q[6]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Selector13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(6));

-- Location: FF_X13_Y5_N2
\reg2|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[6]~32_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(6));

-- Location: FF_X14_Y6_N35
\reg5|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[6]~32_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector17~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|Q\(6));

-- Location: FF_X14_Y7_N16
\reg6|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[6]~32_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|Q\(6));

-- Location: FF_X13_Y5_N26
\reg4|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[6]~32_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(6));

-- Location: MLABCELL_X13_Y5_N24
\mux0|y[6]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[6]~30_combout\ = ( \reg4|Q\(6) & ( \mux0|y[0]~0_combout\ & ( (!\mux0|y[0]~1_combout\ & (\reg5|Q\(6))) # (\mux0|y[0]~1_combout\ & ((\reg6|Q\(6)))) ) ) ) # ( !\reg4|Q\(6) & ( \mux0|y[0]~0_combout\ & ( (!\mux0|y[0]~1_combout\ & (\reg5|Q\(6))) # 
-- (\mux0|y[0]~1_combout\ & ((\reg6|Q\(6)))) ) ) ) # ( \reg4|Q\(6) & ( !\mux0|y[0]~0_combout\ & ( (!\mux0|y[0]~1_combout\) # (\pc0|v\(6)) ) ) ) # ( !\reg4|Q\(6) & ( !\mux0|y[0]~0_combout\ & ( (\pc0|v\(6) & \mux0|y[0]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111110101010100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc0|ALT_INV_v\(6),
	datab => \reg5|ALT_INV_Q\(6),
	datac => \reg6|ALT_INV_Q\(6),
	datad => \mux0|ALT_INV_y[0]~1_combout\,
	datae => \reg4|ALT_INV_Q\(6),
	dataf => \mux0|ALT_INV_y[0]~0_combout\,
	combout => \mux0|y[6]~30_combout\);

-- Location: MLABCELL_X13_Y5_N0
\mux0|y[6]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[6]~31_combout\ = ( \reg2|Q\(6) & ( \mux0|y[6]~30_combout\ & ( (!\mux0|y[0]~3_combout\ & (((\mux0|y[0]~2_combout\) # (\reg1|Q\(6))))) # (\mux0|y[0]~3_combout\ & (((!\mux0|y[0]~2_combout\)) # (\reg3|Q\(6)))) ) ) ) # ( !\reg2|Q\(6) & ( 
-- \mux0|y[6]~30_combout\ & ( (!\mux0|y[0]~3_combout\ & (((\reg1|Q\(6) & !\mux0|y[0]~2_combout\)))) # (\mux0|y[0]~3_combout\ & (((!\mux0|y[0]~2_combout\)) # (\reg3|Q\(6)))) ) ) ) # ( \reg2|Q\(6) & ( !\mux0|y[6]~30_combout\ & ( (!\mux0|y[0]~3_combout\ & 
-- (((\mux0|y[0]~2_combout\) # (\reg1|Q\(6))))) # (\mux0|y[0]~3_combout\ & (\reg3|Q\(6) & ((\mux0|y[0]~2_combout\)))) ) ) ) # ( !\reg2|Q\(6) & ( !\mux0|y[6]~30_combout\ & ( (!\mux0|y[0]~3_combout\ & (((\reg1|Q\(6) & !\mux0|y[0]~2_combout\)))) # 
-- (\mux0|y[0]~3_combout\ & (\reg3|Q\(6) & ((\mux0|y[0]~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000101001100001111010100111111000001010011111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg3|ALT_INV_Q\(6),
	datab => \reg1|ALT_INV_Q\(6),
	datac => \mux0|ALT_INV_y[0]~3_combout\,
	datad => \mux0|ALT_INV_y[0]~2_combout\,
	datae => \reg2|ALT_INV_Q\(6),
	dataf => \mux0|ALT_INV_y[6]~30_combout\,
	combout => \mux0|y[6]~31_combout\);

-- Location: LABCELL_X17_Y7_N24
\reg0|Q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg0|Q[6]~feeder_combout\ = ( \mux0|y[6]~32_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y[6]~32_combout\,
	combout => \reg0|Q[6]~feeder_combout\);

-- Location: FF_X17_Y7_N26
\reg0|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg0|Q[6]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Selector12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(6));

-- Location: MLABCELL_X13_Y7_N18
\mux0|y[6]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[6]~32_combout\ = ( \reg0|Q\(6) & ( \mux0|y[0]~13_combout\ & ( (\mux0|y[6]~31_combout\) # (\mux0|y[0]~12_combout\) ) ) ) # ( !\reg0|Q\(6) & ( \mux0|y[0]~13_combout\ & ( (!\mux0|y[0]~12_combout\ & \mux0|y[6]~31_combout\) ) ) ) # ( \reg0|Q\(6) & ( 
-- !\mux0|y[0]~13_combout\ & ( (!\mux0|y[0]~12_combout\ & ((\data_in[6]~input_o\))) # (\mux0|y[0]~12_combout\ & (\regG|Q\(6))) ) ) ) # ( !\reg0|Q\(6) & ( !\mux0|y[0]~13_combout\ & ( (!\mux0|y[0]~12_combout\ & ((\data_in[6]~input_o\))) # 
-- (\mux0|y[0]~12_combout\ & (\regG|Q\(6))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regG|ALT_INV_Q\(6),
	datab => \ALT_INV_data_in[6]~input_o\,
	datac => \mux0|ALT_INV_y[0]~12_combout\,
	datad => \mux0|ALT_INV_y[6]~31_combout\,
	datae => \reg0|ALT_INV_Q\(6),
	dataf => \mux0|ALT_INV_y[0]~13_combout\,
	combout => \mux0|y[6]~32_combout\);

-- Location: FF_X14_Y8_N20
\pc0|v[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pc0|Add0~25_sumout\,
	asdata => \mux0|y[6]~32_combout\,
	clrn => \reset_n~input_o\,
	sload => \fsm|ALT_INV_Selector10~0_combout\,
	ena => \pc0|v[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc0|v\(6));

-- Location: LABCELL_X14_Y8_N21
\pc0|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc0|Add0~29_sumout\ = SUM(( \pc0|v\(7) ) + ( GND ) + ( \pc0|Add0~26\ ))
-- \pc0|Add0~30\ = CARRY(( \pc0|v\(7) ) + ( GND ) + ( \pc0|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pc0|ALT_INV_v\(7),
	cin => \pc0|Add0~26\,
	sumout => \pc0|Add0~29_sumout\,
	cout => \pc0|Add0~30\);

-- Location: FF_X14_Y8_N23
\pc0|v[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pc0|Add0~29_sumout\,
	asdata => \mux0|y[7]~35_combout\,
	clrn => \reset_n~input_o\,
	sload => \fsm|ALT_INV_Selector10~0_combout\,
	ena => \pc0|v[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc0|v\(7));

-- Location: LABCELL_X14_Y7_N51
\reg6|Q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg6|Q[7]~feeder_combout\ = ( \mux0|y[7]~35_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y[7]~35_combout\,
	combout => \reg6|Q[7]~feeder_combout\);

-- Location: FF_X14_Y7_N52
\reg6|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg6|Q[7]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Selector18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|Q\(7));

-- Location: FF_X16_Y7_N35
\reg5|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[7]~35_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector17~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|Q\(7));

-- Location: FF_X13_Y5_N8
\reg4|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[7]~35_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(7));

-- Location: MLABCELL_X13_Y5_N6
\mux0|y[7]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[7]~33_combout\ = ( \reg4|Q\(7) & ( \mux0|y[0]~0_combout\ & ( (!\mux0|y[0]~1_combout\ & ((\reg5|Q\(7)))) # (\mux0|y[0]~1_combout\ & (\reg6|Q\(7))) ) ) ) # ( !\reg4|Q\(7) & ( \mux0|y[0]~0_combout\ & ( (!\mux0|y[0]~1_combout\ & ((\reg5|Q\(7)))) # 
-- (\mux0|y[0]~1_combout\ & (\reg6|Q\(7))) ) ) ) # ( \reg4|Q\(7) & ( !\mux0|y[0]~0_combout\ & ( (!\mux0|y[0]~1_combout\) # (\pc0|v\(7)) ) ) ) # ( !\reg4|Q\(7) & ( !\mux0|y[0]~0_combout\ & ( (\pc0|v\(7) & \mux0|y[0]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111110101010100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc0|ALT_INV_v\(7),
	datab => \reg6|ALT_INV_Q\(7),
	datac => \reg5|ALT_INV_Q\(7),
	datad => \mux0|ALT_INV_y[0]~1_combout\,
	datae => \reg4|ALT_INV_Q\(7),
	dataf => \mux0|ALT_INV_y[0]~0_combout\,
	combout => \mux0|y[7]~33_combout\);

-- Location: MLABCELL_X13_Y5_N12
\mux0|y[7]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[7]~34_combout\ = ( \reg2|Q\(7) & ( \mux0|y[7]~33_combout\ & ( (!\mux0|y[0]~3_combout\ & (((\mux0|y[0]~2_combout\)) # (\reg1|Q\(7)))) # (\mux0|y[0]~3_combout\ & (((!\mux0|y[0]~2_combout\) # (\reg3|Q\(7))))) ) ) ) # ( !\reg2|Q\(7) & ( 
-- \mux0|y[7]~33_combout\ & ( (!\mux0|y[0]~3_combout\ & (\reg1|Q\(7) & ((!\mux0|y[0]~2_combout\)))) # (\mux0|y[0]~3_combout\ & (((!\mux0|y[0]~2_combout\) # (\reg3|Q\(7))))) ) ) ) # ( \reg2|Q\(7) & ( !\mux0|y[7]~33_combout\ & ( (!\mux0|y[0]~3_combout\ & 
-- (((\mux0|y[0]~2_combout\)) # (\reg1|Q\(7)))) # (\mux0|y[0]~3_combout\ & (((\reg3|Q\(7) & \mux0|y[0]~2_combout\)))) ) ) ) # ( !\reg2|Q\(7) & ( !\mux0|y[7]~33_combout\ & ( (!\mux0|y[0]~3_combout\ & (\reg1|Q\(7) & ((!\mux0|y[0]~2_combout\)))) # 
-- (\mux0|y[0]~3_combout\ & (((\reg3|Q\(7) & \mux0|y[0]~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000011010100001111001101011111000000110101111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|ALT_INV_Q\(7),
	datab => \reg3|ALT_INV_Q\(7),
	datac => \mux0|ALT_INV_y[0]~3_combout\,
	datad => \mux0|ALT_INV_y[0]~2_combout\,
	datae => \reg2|ALT_INV_Q\(7),
	dataf => \mux0|ALT_INV_y[7]~33_combout\,
	combout => \mux0|y[7]~34_combout\);

-- Location: LABCELL_X14_Y7_N18
\mux0|y[7]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[7]~35_combout\ = ( \mux0|y[0]~12_combout\ & ( \mux0|y[0]~13_combout\ & ( \reg0|Q\(7) ) ) ) # ( !\mux0|y[0]~12_combout\ & ( \mux0|y[0]~13_combout\ & ( \mux0|y[7]~34_combout\ ) ) ) # ( \mux0|y[0]~12_combout\ & ( !\mux0|y[0]~13_combout\ & ( 
-- \regG|Q\(7) ) ) ) # ( !\mux0|y[0]~12_combout\ & ( !\mux0|y[0]~13_combout\ & ( \data_in[7]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data_in[7]~input_o\,
	datab => \reg0|ALT_INV_Q\(7),
	datac => \mux0|ALT_INV_y[7]~34_combout\,
	datad => \regG|ALT_INV_Q\(7),
	datae => \mux0|ALT_INV_y[0]~12_combout\,
	dataf => \mux0|ALT_INV_y[0]~13_combout\,
	combout => \mux0|y[7]~35_combout\);

-- Location: FF_X14_Y7_N20
\regA|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mux0|y[7]~35_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Selector5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regA|Q\(7));

-- Location: LABCELL_X14_Y8_N54
\addsub0|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \addsub0|Add0~17_sumout\ = SUM(( !\mux0|y[7]~35_combout\ $ (((!\fsm|y_Q.T2~q\) # (!\fsm|Mux37~0_combout\))) ) + ( \regA|Q\(7) ) + ( \addsub0|Add0~26\ ))
-- \addsub0|Add0~18\ = CARRY(( !\mux0|y[7]~35_combout\ $ (((!\fsm|y_Q.T2~q\) # (!\fsm|Mux37~0_combout\))) ) + ( \regA|Q\(7) ) + ( \addsub0|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_y_Q.T2~q\,
	datab => \regA|ALT_INV_Q\(7),
	datac => \mux0|ALT_INV_y[7]~35_combout\,
	datad => \fsm|ALT_INV_Mux37~0_combout\,
	cin => \addsub0|Add0~26\,
	sumout => \addsub0|Add0~17_sumout\,
	cout => \addsub0|Add0~18\);

-- Location: FF_X14_Y8_N56
\regG|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \addsub0|Add0~17_sumout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regG|Q\(7));

-- Location: LABCELL_X17_Y7_N27
\reg0|Q[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg0|Q[8]~feeder_combout\ = ( \mux0|y[8]~38_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y[8]~38_combout\,
	combout => \reg0|Q[8]~feeder_combout\);

-- Location: FF_X17_Y7_N29
\reg0|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg0|Q[8]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Selector12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(8));

-- Location: LABCELL_X14_Y9_N39
\reg3|Q[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg3|Q[8]~feeder_combout\ = ( \mux0|y[8]~38_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y[8]~38_combout\,
	combout => \reg3|Q[8]~feeder_combout\);

-- Location: FF_X14_Y9_N40
\reg3|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg3|Q[8]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(8));

-- Location: LABCELL_X14_Y9_N45
\reg1|Q[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg1|Q[8]~feeder_combout\ = ( \mux0|y[8]~38_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y[8]~38_combout\,
	combout => \reg1|Q[8]~feeder_combout\);

-- Location: FF_X14_Y9_N47
\reg1|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg1|Q[8]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Selector13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(8));

-- Location: FF_X13_Y6_N14
\reg2|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[8]~38_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(8));

-- Location: LABCELL_X14_Y8_N24
\pc0|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc0|Add0~33_sumout\ = SUM(( \pc0|v\(8) ) + ( GND ) + ( \pc0|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pc0|ALT_INV_v\(8),
	cin => \pc0|Add0~30\,
	sumout => \pc0|Add0~33_sumout\);

-- Location: FF_X14_Y8_N26
\pc0|v[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pc0|Add0~33_sumout\,
	asdata => \mux0|y[8]~38_combout\,
	clrn => \reset_n~input_o\,
	sload => \fsm|ALT_INV_Selector10~0_combout\,
	ena => \pc0|v[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc0|v\(8));

-- Location: LABCELL_X16_Y7_N6
\reg5|Q[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg5|Q[8]~feeder_combout\ = ( \mux0|y[8]~38_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y[8]~38_combout\,
	combout => \reg5|Q[8]~feeder_combout\);

-- Location: FF_X16_Y7_N8
\reg5|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg5|Q[8]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Selector17~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|Q\(8));

-- Location: FF_X14_Y7_N1
\reg6|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[8]~38_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|Q\(8));

-- Location: FF_X12_Y6_N5
\reg4|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[8]~38_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(8));

-- Location: LABCELL_X12_Y6_N3
\mux0|y[8]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[8]~36_combout\ = ( \reg4|Q\(8) & ( \mux0|y[0]~0_combout\ & ( (!\mux0|y[0]~1_combout\ & (\reg5|Q\(8))) # (\mux0|y[0]~1_combout\ & ((\reg6|Q\(8)))) ) ) ) # ( !\reg4|Q\(8) & ( \mux0|y[0]~0_combout\ & ( (!\mux0|y[0]~1_combout\ & (\reg5|Q\(8))) # 
-- (\mux0|y[0]~1_combout\ & ((\reg6|Q\(8)))) ) ) ) # ( \reg4|Q\(8) & ( !\mux0|y[0]~0_combout\ & ( (!\mux0|y[0]~1_combout\) # (\pc0|v\(8)) ) ) ) # ( !\reg4|Q\(8) & ( !\mux0|y[0]~0_combout\ & ( (\pc0|v\(8) & \mux0|y[0]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111110101010100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc0|ALT_INV_v\(8),
	datab => \reg5|ALT_INV_Q\(8),
	datac => \reg6|ALT_INV_Q\(8),
	datad => \mux0|ALT_INV_y[0]~1_combout\,
	datae => \reg4|ALT_INV_Q\(8),
	dataf => \mux0|ALT_INV_y[0]~0_combout\,
	combout => \mux0|y[8]~36_combout\);

-- Location: MLABCELL_X13_Y6_N12
\mux0|y[8]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[8]~37_combout\ = ( \reg2|Q\(8) & ( \mux0|y[8]~36_combout\ & ( (!\mux0|y[0]~2_combout\ & (((\mux0|y[0]~3_combout\) # (\reg1|Q\(8))))) # (\mux0|y[0]~2_combout\ & (((!\mux0|y[0]~3_combout\)) # (\reg3|Q\(8)))) ) ) ) # ( !\reg2|Q\(8) & ( 
-- \mux0|y[8]~36_combout\ & ( (!\mux0|y[0]~2_combout\ & (((\mux0|y[0]~3_combout\) # (\reg1|Q\(8))))) # (\mux0|y[0]~2_combout\ & (\reg3|Q\(8) & ((\mux0|y[0]~3_combout\)))) ) ) ) # ( \reg2|Q\(8) & ( !\mux0|y[8]~36_combout\ & ( (!\mux0|y[0]~2_combout\ & 
-- (((\reg1|Q\(8) & !\mux0|y[0]~3_combout\)))) # (\mux0|y[0]~2_combout\ & (((!\mux0|y[0]~3_combout\)) # (\reg3|Q\(8)))) ) ) ) # ( !\reg2|Q\(8) & ( !\mux0|y[8]~36_combout\ & ( (!\mux0|y[0]~2_combout\ & (((\reg1|Q\(8) & !\mux0|y[0]~3_combout\)))) # 
-- (\mux0|y[0]~2_combout\ & (\reg3|Q\(8) & ((\mux0|y[0]~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000101001111110000010100110000111101010011111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg3|ALT_INV_Q\(8),
	datab => \reg1|ALT_INV_Q\(8),
	datac => \mux0|ALT_INV_y[0]~2_combout\,
	datad => \mux0|ALT_INV_y[0]~3_combout\,
	datae => \reg2|ALT_INV_Q\(8),
	dataf => \mux0|ALT_INV_y[8]~36_combout\,
	combout => \mux0|y[8]~37_combout\);

-- Location: LABCELL_X14_Y7_N54
\mux0|y[8]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[8]~38_combout\ = ( \regG|Q\(8) & ( \mux0|y[8]~37_combout\ & ( (!\mux0|y[0]~12_combout\ & (((\mux0|y[0]~13_combout\)) # (\data_in[8]~input_o\))) # (\mux0|y[0]~12_combout\ & (((!\mux0|y[0]~13_combout\) # (\reg0|Q\(8))))) ) ) ) # ( !\regG|Q\(8) & ( 
-- \mux0|y[8]~37_combout\ & ( (!\mux0|y[0]~12_combout\ & (((\mux0|y[0]~13_combout\)) # (\data_in[8]~input_o\))) # (\mux0|y[0]~12_combout\ & (((\reg0|Q\(8) & \mux0|y[0]~13_combout\)))) ) ) ) # ( \regG|Q\(8) & ( !\mux0|y[8]~37_combout\ & ( 
-- (!\mux0|y[0]~12_combout\ & (\data_in[8]~input_o\ & ((!\mux0|y[0]~13_combout\)))) # (\mux0|y[0]~12_combout\ & (((!\mux0|y[0]~13_combout\) # (\reg0|Q\(8))))) ) ) ) # ( !\regG|Q\(8) & ( !\mux0|y[8]~37_combout\ & ( (!\mux0|y[0]~12_combout\ & 
-- (\data_in[8]~input_o\ & ((!\mux0|y[0]~13_combout\)))) # (\mux0|y[0]~12_combout\ & (((\reg0|Q\(8) & \mux0|y[0]~13_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000011011101110000001101000100110011110111011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data_in[8]~input_o\,
	datab => \mux0|ALT_INV_y[0]~12_combout\,
	datac => \reg0|ALT_INV_Q\(8),
	datad => \mux0|ALT_INV_y[0]~13_combout\,
	datae => \regG|ALT_INV_Q\(8),
	dataf => \mux0|ALT_INV_y[8]~37_combout\,
	combout => \mux0|y[8]~38_combout\);

-- Location: FF_X14_Y7_N56
\regA|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mux0|y[8]~38_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Selector5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regA|Q\(8));

-- Location: LABCELL_X14_Y8_N57
\addsub0|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \addsub0|Add0~21_sumout\ = SUM(( !\mux0|y[8]~38_combout\ $ (((!\fsm|y_Q.T2~q\) # (!\fsm|Mux37~0_combout\))) ) + ( \regA|Q\(8) ) + ( \addsub0|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_y_Q.T2~q\,
	datac => \mux0|ALT_INV_y[8]~38_combout\,
	datad => \fsm|ALT_INV_Mux37~0_combout\,
	dataf => \regA|ALT_INV_Q\(8),
	cin => \addsub0|Add0~18\,
	sumout => \addsub0|Add0~21_sumout\);

-- Location: FF_X14_Y8_N59
\regG|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \addsub0|Add0~21_sumout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regG|Q\(8));

-- Location: MLABCELL_X13_Y9_N30
\fsm|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Equal1~0_combout\ = ( !\regG|Q\(5) & ( !\regG|Q\(8) & ( (!\regG|Q\(4) & (!\regG|Q\(3) & (!\regG|Q\(7) & !\regG|Q\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regG|ALT_INV_Q\(4),
	datab => \regG|ALT_INV_Q\(3),
	datac => \regG|ALT_INV_Q\(7),
	datad => \regG|ALT_INV_Q\(6),
	datae => \regG|ALT_INV_Q\(5),
	dataf => \regG|ALT_INV_Q\(8),
	combout => \fsm|Equal1~0_combout\);

-- Location: LABCELL_X14_Y6_N18
\fsm|Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector17~0_combout\ = ( \fsm|y_Q.T1~q\ & ( \fsm|Equal1~1_combout\ & ( (!\fsm|Equal1~0_combout\ & (\ir0|Q\(6) & (\ir0|Q\(7) & \ir0|Q\(8)))) ) ) ) # ( \fsm|y_Q.T1~q\ & ( !\fsm|Equal1~1_combout\ & ( (\ir0|Q\(6) & (\ir0|Q\(7) & \ir0|Q\(8))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001100000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Equal1~0_combout\,
	datab => \ir0|ALT_INV_Q\(6),
	datac => \ir0|ALT_INV_Q\(7),
	datad => \ir0|ALT_INV_Q\(8),
	datae => \fsm|ALT_INV_y_Q.T1~q\,
	dataf => \fsm|ALT_INV_Equal1~1_combout\,
	combout => \fsm|Selector17~0_combout\);

-- Location: MLABCELL_X13_Y6_N57
\fsm|Selector12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector12~1_combout\ = ( \fsm|Selector13~0_combout\ & ( \fsm|Selector12~0_combout\ & ( (!\ir0|Q\(3) & (!\fsm|Selector17~1_combout\ & ((!\fsm|Selector18~0_combout\) # (\fsm|Selector17~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(3),
	datab => \fsm|ALT_INV_Selector17~0_combout\,
	datac => \fsm|ALT_INV_Selector17~1_combout\,
	datad => \fsm|ALT_INV_Selector18~0_combout\,
	datae => \fsm|ALT_INV_Selector13~0_combout\,
	dataf => \fsm|ALT_INV_Selector12~0_combout\,
	combout => \fsm|Selector12~1_combout\);

-- Location: FF_X17_Y7_N38
\reg0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[0]~14_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(0));

-- Location: FF_X13_Y7_N2
\reg3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[0]~14_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(0));

-- Location: FF_X13_Y6_N2
\reg4|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[0]~14_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(0));

-- Location: MLABCELL_X13_Y6_N0
\mux0|y[0]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[0]~41_combout\ = ( \mux0|y[0]~1_combout\ & ( \pc0|v\(0) ) ) # ( !\mux0|y[0]~1_combout\ & ( \reg4|Q\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pc0|ALT_INV_v\(0),
	datad => \reg4|ALT_INV_Q\(0),
	dataf => \mux0|ALT_INV_y[0]~1_combout\,
	combout => \mux0|y[0]~41_combout\);

-- Location: LABCELL_X16_Y7_N0
\reg5|Q[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg5|Q[0]~feeder_combout\ = ( \mux0|y[0]~14_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y[0]~14_combout\,
	combout => \reg5|Q[0]~feeder_combout\);

-- Location: FF_X16_Y7_N2
\reg5|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg5|Q[0]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Selector17~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|Q\(0));

-- Location: FF_X13_Y8_N47
\reg1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[0]~14_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(0));

-- Location: FF_X12_Y9_N38
\reg6|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[0]~14_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|Q\(0));

-- Location: LABCELL_X12_Y9_N36
\mux0|y[0]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[0]~40_combout\ = ( \reg6|Q\(0) & ( \mux0|y[0]~1_combout\ & ( (\mux0|y[0]~3_combout\) # (\reg1|Q\(0)) ) ) ) # ( !\reg6|Q\(0) & ( \mux0|y[0]~1_combout\ & ( (\reg1|Q\(0) & !\mux0|y[0]~3_combout\) ) ) ) # ( \reg6|Q\(0) & ( !\mux0|y[0]~1_combout\ & ( 
-- (!\mux0|y[0]~3_combout\ & ((\reg1|Q\(0)))) # (\mux0|y[0]~3_combout\ & (\reg5|Q\(0))) ) ) ) # ( !\reg6|Q\(0) & ( !\mux0|y[0]~1_combout\ & ( (!\mux0|y[0]~3_combout\ & ((\reg1|Q\(0)))) # (\mux0|y[0]~3_combout\ & (\reg5|Q\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg5|ALT_INV_Q\(0),
	datab => \reg1|ALT_INV_Q\(0),
	datac => \mux0|ALT_INV_y[0]~3_combout\,
	datae => \reg6|ALT_INV_Q\(0),
	dataf => \mux0|ALT_INV_y[0]~1_combout\,
	combout => \mux0|y[0]~40_combout\);

-- Location: FF_X12_Y7_N46
\reg2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[0]~14_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(0));

-- Location: MLABCELL_X13_Y7_N0
\mux0|y[0]~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[0]~50_combout\ = ( !\mux0|y[0]~3_combout\ & ( (((!\mux0|y[0]~2_combout\ & ((\mux0|y[0]~40_combout\))) # (\mux0|y[0]~2_combout\ & (\reg2|Q\(0))))) ) ) # ( \mux0|y[0]~3_combout\ & ( (!\mux0|y[0]~2_combout\ & (((!\mux0|y[0]~0_combout\ & 
-- (\mux0|y[0]~41_combout\)) # (\mux0|y[0]~0_combout\ & ((\mux0|y[0]~40_combout\)))))) # (\mux0|y[0]~2_combout\ & (\reg3|Q\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111001100000101010111111111000011110011111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg3|ALT_INV_Q\(0),
	datab => \mux0|ALT_INV_y[0]~41_combout\,
	datac => \mux0|ALT_INV_y[0]~0_combout\,
	datad => \mux0|ALT_INV_y[0]~2_combout\,
	datae => \mux0|ALT_INV_y[0]~3_combout\,
	dataf => \mux0|ALT_INV_y[0]~40_combout\,
	datag => \reg2|ALT_INV_Q\(0),
	combout => \mux0|y[0]~50_combout\);

-- Location: MLABCELL_X13_Y7_N30
\mux0|y[0]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[0]~14_combout\ = ( \mux0|y[0]~50_combout\ & ( \mux0|y[0]~13_combout\ & ( (!\mux0|y[0]~12_combout\) # (\reg0|Q\(0)) ) ) ) # ( !\mux0|y[0]~50_combout\ & ( \mux0|y[0]~13_combout\ & ( (\reg0|Q\(0) & \mux0|y[0]~12_combout\) ) ) ) # ( 
-- \mux0|y[0]~50_combout\ & ( !\mux0|y[0]~13_combout\ & ( (!\mux0|y[0]~12_combout\ & ((\data_in[0]~input_o\))) # (\mux0|y[0]~12_combout\ & (\regG|Q\(0))) ) ) ) # ( !\mux0|y[0]~50_combout\ & ( !\mux0|y[0]~13_combout\ & ( (!\mux0|y[0]~12_combout\ & 
-- ((\data_in[0]~input_o\))) # (\mux0|y[0]~12_combout\ & (\regG|Q\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regG|ALT_INV_Q\(0),
	datab => \reg0|ALT_INV_Q\(0),
	datac => \mux0|ALT_INV_y[0]~12_combout\,
	datad => \ALT_INV_data_in[0]~input_o\,
	datae => \mux0|ALT_INV_y[0]~50_combout\,
	dataf => \mux0|ALT_INV_y[0]~13_combout\,
	combout => \mux0|y[0]~14_combout\);

-- Location: LABCELL_X16_Y7_N12
\regAddr|Q[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regAddr|Q[0]~feeder_combout\ = ( \mux0|y[0]~14_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y[0]~14_combout\,
	combout => \regAddr|Q[0]~feeder_combout\);

-- Location: LABCELL_X17_Y7_N36
\fsm|Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector9~0_combout\ = ( \fsm|y_Q.T0~q\ & ( (\fsm|y_Q.T1~q\ & ((!\ir0|Q\(7) & (\ir0|Q\(6) & \ir0|Q\(8))) # (\ir0|Q\(7) & (!\ir0|Q\(6))))) ) ) # ( !\fsm|y_Q.T0~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000100000001100000010000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(7),
	datab => \ir0|ALT_INV_Q\(6),
	datac => \fsm|ALT_INV_y_Q.T1~q\,
	datad => \ir0|ALT_INV_Q\(8),
	dataf => \fsm|ALT_INV_y_Q.T0~q\,
	combout => \fsm|Selector9~0_combout\);

-- Location: FF_X16_Y7_N13
\regAddr|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regAddr|Q[0]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regAddr|Q\(0));

-- Location: LABCELL_X16_Y7_N18
\regAddr|Q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regAddr|Q[1]~feeder_combout\ = ( \mux0|y[1]~17_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y[1]~17_combout\,
	combout => \regAddr|Q[1]~feeder_combout\);

-- Location: FF_X16_Y7_N19
\regAddr|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regAddr|Q[1]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regAddr|Q\(1));

-- Location: FF_X14_Y6_N58
\regAddr|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[2]~20_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regAddr|Q\(2));

-- Location: FF_X14_Y6_N46
\regAddr|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[3]~23_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regAddr|Q\(3));

-- Location: LABCELL_X16_Y7_N24
\regAddr|Q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regAddr|Q[4]~feeder_combout\ = ( \mux0|y[4]~26_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y[4]~26_combout\,
	combout => \regAddr|Q[4]~feeder_combout\);

-- Location: FF_X16_Y7_N25
\regAddr|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regAddr|Q[4]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regAddr|Q\(4));

-- Location: FF_X14_Y6_N22
\regAddr|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[5]~29_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regAddr|Q\(5));

-- Location: FF_X14_Y6_N4
\regAddr|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[6]~32_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regAddr|Q\(6));

-- Location: FF_X12_Y8_N23
\regAddr|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[7]~35_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regAddr|Q\(7));

-- Location: LABCELL_X16_Y7_N27
\regAddr|Q[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regAddr|Q[8]~feeder_combout\ = ( \mux0|y[8]~38_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y[8]~38_combout\,
	combout => \regAddr|Q[8]~feeder_combout\);

-- Location: FF_X16_Y7_N28
\regAddr|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regAddr|Q[8]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regAddr|Q\(8));

-- Location: LABCELL_X17_Y7_N57
\fsm|Wr_en~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Wr_en~0_combout\ = ( \ir0|Q\(8) & ( (\fsm|y_Q.T2~DUPLICATE_q\ & (\ir0|Q\(7) & !\ir0|Q\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000001000000000000000000000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_y_Q.T2~DUPLICATE_q\,
	datab => \ir0|ALT_INV_Q\(7),
	datac => \ir0|ALT_INV_Q\(6),
	datae => \ir0|ALT_INV_Q\(8),
	combout => \fsm|Wr_en~0_combout\);

-- Location: FF_X17_Y7_N4
\regDout|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[0]~14_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Wr_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regDout|Q\(0));

-- Location: LABCELL_X17_Y7_N0
\regDout|Q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regDout|Q[1]~feeder_combout\ = ( \mux0|y[1]~17_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y[1]~17_combout\,
	combout => \regDout|Q[1]~feeder_combout\);

-- Location: FF_X17_Y7_N1
\regDout|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regDout|Q[1]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Wr_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regDout|Q\(1));

-- Location: LABCELL_X17_Y7_N6
\regDout|Q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regDout|Q[2]~feeder_combout\ = ( \mux0|y[2]~20_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y[2]~20_combout\,
	combout => \regDout|Q[2]~feeder_combout\);

-- Location: FF_X17_Y7_N7
\regDout|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regDout|Q[2]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Wr_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regDout|Q\(2));

-- Location: LABCELL_X17_Y7_N9
\regDout|Q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regDout|Q[3]~feeder_combout\ = ( \mux0|y[3]~23_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y[3]~23_combout\,
	combout => \regDout|Q[3]~feeder_combout\);

-- Location: FF_X17_Y7_N11
\regDout|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regDout|Q[3]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Wr_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regDout|Q\(3));

-- Location: LABCELL_X17_Y7_N12
\regDout|Q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regDout|Q[4]~feeder_combout\ = ( \mux0|y[4]~26_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y[4]~26_combout\,
	combout => \regDout|Q[4]~feeder_combout\);

-- Location: FF_X17_Y7_N13
\regDout|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regDout|Q[4]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Wr_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regDout|Q\(4));

-- Location: LABCELL_X17_Y7_N15
\regDout|Q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regDout|Q[5]~feeder_combout\ = ( \mux0|y[5]~29_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y[5]~29_combout\,
	combout => \regDout|Q[5]~feeder_combout\);

-- Location: FF_X17_Y7_N16
\regDout|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regDout|Q[5]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Wr_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regDout|Q\(5));

-- Location: LABCELL_X17_Y7_N21
\regDout|Q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regDout|Q[6]~feeder_combout\ = ( \mux0|y[6]~32_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y[6]~32_combout\,
	combout => \regDout|Q[6]~feeder_combout\);

-- Location: FF_X17_Y7_N22
\regDout|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regDout|Q[6]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Wr_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regDout|Q\(6));

-- Location: FF_X17_Y7_N19
\regDout|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[7]~35_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Wr_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regDout|Q\(7));

-- Location: FF_X17_Y7_N56
\regDout|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[8]~38_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Wr_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regDout|Q\(8));

-- Location: LABCELL_X52_Y24_N0
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


