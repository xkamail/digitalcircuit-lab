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

-- DATE "10/24/2022 02:15:31"

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
	ADDR : OUT std_logic_vector(8 DOWNTO 0);
	DOUT : OUT std_logic_vector(8 DOWNTO 0);
	reg_A : OUT std_logic_vector(8 DOWNTO 0);
	reg_G : OUT std_logic_vector(8 DOWNTO 0);
	reg_IR : OUT std_logic_vector(8 DOWNTO 0);
	reg_0 : OUT std_logic_vector(8 DOWNTO 0);
	reg_1 : OUT std_logic_vector(8 DOWNTO 0);
	Tstep_Q : OUT std_logic_vector(3 DOWNTO 0)
	);
END processor;

-- Design Ports Information
-- done	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busWires[0]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busWires[1]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busWires[2]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busWires[3]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busWires[4]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busWires[5]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busWires[6]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busWires[7]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busWires[8]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[0]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[1]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[2]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[3]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[4]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[5]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[6]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[7]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[8]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[0]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[1]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[2]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[3]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[4]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[5]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[6]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[7]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[8]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_A[0]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_A[1]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_A[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_A[3]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_A[4]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_A[5]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_A[6]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_A[7]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_A[8]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_G[0]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_G[1]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_G[2]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_G[3]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_G[4]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_G[5]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_G[6]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_G[7]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_G[8]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_IR[0]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_IR[1]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_IR[2]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_IR[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_IR[4]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_IR[5]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_IR[6]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_IR[7]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_IR[8]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_0[0]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_0[1]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_0[2]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_0[3]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_0[4]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_0[5]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_0[6]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_0[7]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_0[8]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_1[0]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_1[1]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_1[2]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_1[3]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_1[4]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_1[5]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_1[6]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_1[7]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_1[8]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tstep_Q[0]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tstep_Q[1]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tstep_Q[2]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tstep_Q[3]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[4]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[5]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[6]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[7]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[8]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- run	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_reg_A : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_reg_G : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_reg_IR : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_reg_0 : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_reg_1 : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_Tstep_Q : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \run~input_o\ : std_logic;
SIGNAL \data_in[7]~input_o\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \data_in[8]~input_o\ : std_logic;
SIGNAL \fsm|y_Q.T3~q\ : std_logic;
SIGNAL \data_in[6]~input_o\ : std_logic;
SIGNAL \fsm|y_D.T2~0_combout\ : std_logic;
SIGNAL \fsm|y_Q.T2~q\ : std_logic;
SIGNAL \fsm|Selector2~0_combout\ : std_logic;
SIGNAL \fsm|y_Q.T0~q\ : std_logic;
SIGNAL \fsm|y_D.T1~0_combout\ : std_logic;
SIGNAL \fsm|y_Q.T1~q\ : std_logic;
SIGNAL \fsm|Selector13~0_combout\ : std_logic;
SIGNAL \reg1|Q[0]~feeder_combout\ : std_logic;
SIGNAL \data_in[5]~input_o\ : std_logic;
SIGNAL \fsm|Selector8~0_combout\ : std_logic;
SIGNAL \data_in[3]~input_o\ : std_logic;
SIGNAL \data_in[4]~input_o\ : std_logic;
SIGNAL \fsm|Selector16~0_combout\ : std_logic;
SIGNAL \fsm|Selector6~0_combout\ : std_logic;
SIGNAL \data_in[0]~input_o\ : std_logic;
SIGNAL \fsm|Selector15~2_combout\ : std_logic;
SIGNAL \data_in[1]~input_o\ : std_logic;
SIGNAL \fsm|Selector17~0_combout\ : std_logic;
SIGNAL \data_in[2]~input_o\ : std_logic;
SIGNAL \fsm|Selector15~1_combout\ : std_logic;
SIGNAL \fsm|Selector17~1_combout\ : std_logic;
SIGNAL \fsm|Selector22~0_combout\ : std_logic;
SIGNAL \fsm|Selector16~1_combout\ : std_logic;
SIGNAL \fsm|Selector16~2_combout\ : std_logic;
SIGNAL \mux0|y[0]~1_combout\ : std_logic;
SIGNAL \fsm|Selector15~0_combout\ : std_logic;
SIGNAL \fsm|Selector15~3_combout\ : std_logic;
SIGNAL \mux0|y[0]~0_combout\ : std_logic;
SIGNAL \fsm|Selector11~0_combout\ : std_logic;
SIGNAL \fsm|Selector11~1_combout\ : std_logic;
SIGNAL \reg4|Q[0]~feeder_combout\ : std_logic;
SIGNAL \fsm|Selector9~0_combout\ : std_logic;
SIGNAL \reg5|Q[0]~feeder_combout\ : std_logic;
SIGNAL \fsm|Selector10~0_combout\ : std_logic;
SIGNAL \pc0|Add0~1_sumout\ : std_logic;
SIGNAL \fsm|Selector14~0_combout\ : std_logic;
SIGNAL \pc0|v[0]~0_combout\ : std_logic;
SIGNAL \mux0|y[0]~2_combout\ : std_logic;
SIGNAL \fsm|Selector18~0_combout\ : std_logic;
SIGNAL \fsm|Selector19~0_combout\ : std_logic;
SIGNAL \fsm|Selector20~0_combout\ : std_logic;
SIGNAL \mux0|y[0]~4_combout\ : std_logic;
SIGNAL \fsm|Selector8~1_combout\ : std_logic;
SIGNAL \fsm|Selector7~0_combout\ : std_logic;
SIGNAL \fsm|Selector15~4_combout\ : std_logic;
SIGNAL \fsm|Selector18~1_combout\ : std_logic;
SIGNAL \fsm|Selector18~2_combout\ : std_logic;
SIGNAL \mux0|y[0]~3_combout\ : std_logic;
SIGNAL \mux0|y[0]~5_combout\ : std_logic;
SIGNAL \fsm|Selector21~0_combout\ : std_logic;
SIGNAL \fsm|Selector1~1_combout\ : std_logic;
SIGNAL \fsm|Selector1~0_combout\ : std_logic;
SIGNAL \fsm|Selector1~2_combout\ : std_logic;
SIGNAL \mux0|y[0]~6_combout\ : std_logic;
SIGNAL \fsm|Mux29~0_combout\ : std_logic;
SIGNAL \fsm|Gout~combout\ : std_logic;
SIGNAL \mux0|y[0]~8_combout\ : std_logic;
SIGNAL \mux0|y[0]~7_combout\ : std_logic;
SIGNAL \mux0|y[0]~9_combout\ : std_logic;
SIGNAL \mux0|y[0]~12_combout\ : std_logic;
SIGNAL \fsm|Equal1~0_combout\ : std_logic;
SIGNAL \fsm|AddSub~combout\ : std_logic;
SIGNAL \regA|Q[0]~feeder_combout\ : std_logic;
SIGNAL \fsm|Ain~combout\ : std_logic;
SIGNAL \addsub0|Add0~38_cout\ : std_logic;
SIGNAL \addsub0|Add0~1_sumout\ : std_logic;
SIGNAL \fsm|Selector5~0_combout\ : std_logic;
SIGNAL \mux0|y[0]~10_combout\ : std_logic;
SIGNAL \mux0|y[0]~11_combout\ : std_logic;
SIGNAL \mux0|y[0]~13_combout\ : std_logic;
SIGNAL \addsub0|Add0~2\ : std_logic;
SIGNAL \addsub0|Add0~5_sumout\ : std_logic;
SIGNAL \pc0|Add0~2\ : std_logic;
SIGNAL \pc0|Add0~5_sumout\ : std_logic;
SIGNAL \mux0|y[1]~14_combout\ : std_logic;
SIGNAL \mux0|y[1]~15_combout\ : std_logic;
SIGNAL \mux0|y[1]~16_combout\ : std_logic;
SIGNAL \addsub0|Add0~6\ : std_logic;
SIGNAL \addsub0|Add0~9_sumout\ : std_logic;
SIGNAL \reg5|Q[2]~feeder_combout\ : std_logic;
SIGNAL \pc0|Add0~6\ : std_logic;
SIGNAL \pc0|Add0~9_sumout\ : std_logic;
SIGNAL \mux0|y[2]~17_combout\ : std_logic;
SIGNAL \mux0|y[2]~18_combout\ : std_logic;
SIGNAL \mux0|y[2]~19_combout\ : std_logic;
SIGNAL \reg0|Q[3]~feeder_combout\ : std_logic;
SIGNAL \addsub0|Add0~10\ : std_logic;
SIGNAL \addsub0|Add0~13_sumout\ : std_logic;
SIGNAL \reg5|Q[3]~feeder_combout\ : std_logic;
SIGNAL \reg4|Q[3]~feeder_combout\ : std_logic;
SIGNAL \pc0|Add0~10\ : std_logic;
SIGNAL \pc0|Add0~13_sumout\ : std_logic;
SIGNAL \mux0|y[3]~20_combout\ : std_logic;
SIGNAL \mux0|y[3]~21_combout\ : std_logic;
SIGNAL \mux0|y[3]~22_combout\ : std_logic;
SIGNAL \addsub0|Add0~14\ : std_logic;
SIGNAL \addsub0|Add0~17_sumout\ : std_logic;
SIGNAL \reg2|Q[4]~feeder_combout\ : std_logic;
SIGNAL \reg5|Q[4]~feeder_combout\ : std_logic;
SIGNAL \pc0|Add0~14\ : std_logic;
SIGNAL \pc0|Add0~17_sumout\ : std_logic;
SIGNAL \reg4|Q[4]~feeder_combout\ : std_logic;
SIGNAL \mux0|y[4]~23_combout\ : std_logic;
SIGNAL \mux0|y[4]~24_combout\ : std_logic;
SIGNAL \mux0|y[4]~25_combout\ : std_logic;
SIGNAL \addsub0|Add0~18\ : std_logic;
SIGNAL \addsub0|Add0~21_sumout\ : std_logic;
SIGNAL \pc0|Add0~18\ : std_logic;
SIGNAL \pc0|Add0~21_sumout\ : std_logic;
SIGNAL \mux0|y[5]~26_combout\ : std_logic;
SIGNAL \mux0|y[5]~27_combout\ : std_logic;
SIGNAL \mux0|y[5]~28_combout\ : std_logic;
SIGNAL \pc0|Add0~22\ : std_logic;
SIGNAL \pc0|Add0~25_sumout\ : std_logic;
SIGNAL \mux0|y[6]~29_combout\ : std_logic;
SIGNAL \reg1|Q[6]~feeder_combout\ : std_logic;
SIGNAL \mux0|y[6]~30_combout\ : std_logic;
SIGNAL \addsub0|Add0~22\ : std_logic;
SIGNAL \addsub0|Add0~25_sumout\ : std_logic;
SIGNAL \reg0|Q[6]~feeder_combout\ : std_logic;
SIGNAL \mux0|y[6]~31_combout\ : std_logic;
SIGNAL \pc0|Add0~26\ : std_logic;
SIGNAL \pc0|Add0~29_sumout\ : std_logic;
SIGNAL \reg4|Q[7]~feeder_combout\ : std_logic;
SIGNAL \mux0|y[7]~32_combout\ : std_logic;
SIGNAL \reg2|Q[7]~feeder_combout\ : std_logic;
SIGNAL \mux0|y[7]~33_combout\ : std_logic;
SIGNAL \addsub0|Add0~26\ : std_logic;
SIGNAL \addsub0|Add0~29_sumout\ : std_logic;
SIGNAL \mux0|y[7]~34_combout\ : std_logic;
SIGNAL \reg6|Q[8]~feeder_combout\ : std_logic;
SIGNAL \pc0|Add0~30\ : std_logic;
SIGNAL \pc0|Add0~33_sumout\ : std_logic;
SIGNAL \mux0|y[8]~35_combout\ : std_logic;
SIGNAL \reg1|Q[8]~feeder_combout\ : std_logic;
SIGNAL \mux0|y[8]~36_combout\ : std_logic;
SIGNAL \addsub0|Add0~30\ : std_logic;
SIGNAL \addsub0|Add0~33_sumout\ : std_logic;
SIGNAL \mux0|y[8]~37_combout\ : std_logic;
SIGNAL \fsm|Selector4~0_combout\ : std_logic;
SIGNAL \fsm|ADDRin~0_combout\ : std_logic;
SIGNAL \fsm|ADDRin~combout\ : std_logic;
SIGNAL \regAddr|Q[6]~feeder_combout\ : std_logic;
SIGNAL \regAddr|Q[7]~feeder_combout\ : std_logic;
SIGNAL \regAddr|Q[8]~feeder_combout\ : std_logic;
SIGNAL \pc0|v\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg4|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \regG|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg2|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg6|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \fsm|R0toR7out\ : std_logic_vector(0 TO 7);
SIGNAL \ir0|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg1|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg5|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg3|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg0|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \regAddr|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \regA|Q\ : std_logic_vector(8 DOWNTO 0);
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
SIGNAL \fsm|ALT_INV_AddSub~combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Ain~combout\ : std_logic;
SIGNAL \fsm|ALT_INV_ADDRin~combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Gout~combout\ : std_logic;
SIGNAL \fsm|ALT_INV_R0toR7out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \fsm|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_ADDRin~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector4~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Mux29~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector1~2_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector1~1_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector21~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector19~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector18~2_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector18~1_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector15~4_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector20~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector18~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector8~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector16~2_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector16~1_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector15~3_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector22~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector17~1_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector15~2_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector15~1_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector16~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector17~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector15~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector11~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector14~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_y_Q.T2~q\ : std_logic;
SIGNAL \fsm|ALT_INV_y_Q.T0~q\ : std_logic;
SIGNAL \ir0|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \regA|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \mux0|ALT_INV_y[8]~37_combout\ : std_logic;
SIGNAL \reg0|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \mux0|ALT_INV_y[8]~36_combout\ : std_logic;
SIGNAL \reg2|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg1|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg3|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \mux0|ALT_INV_y[8]~35_combout\ : std_logic;
SIGNAL \reg5|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg4|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg6|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \mux0|ALT_INV_y[7]~34_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[7]~33_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[7]~32_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[6]~31_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[6]~30_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[6]~29_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[5]~28_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[5]~27_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[5]~26_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[4]~25_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[4]~24_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[4]~23_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[3]~22_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[3]~21_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[3]~20_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[2]~19_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[2]~18_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[2]~17_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[1]~16_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[1]~15_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[1]~14_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[0]~13_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[0]~12_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[0]~11_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[0]~10_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[0]~9_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[0]~8_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[0]~7_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[0]~6_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[0]~5_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[0]~4_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[0]~3_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[0]~2_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[0]~1_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[0]~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector13~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_y_Q.T3~q\ : std_logic;
SIGNAL \fsm|ALT_INV_y_Q.T1~q\ : std_logic;
SIGNAL \regG|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \pc0|ALT_INV_v\ : std_logic_vector(8 DOWNTO 0);

BEGIN

ww_data_in <= data_in;
ww_reset_n <= reset_n;
ww_clk <= clk;
ww_run <= run;
done <= ww_done;
busWires <= ww_busWires;
ADDR <= ww_ADDR;
DOUT <= ww_DOUT;
reg_A <= ww_reg_A;
reg_G <= ww_reg_G;
reg_IR <= ww_reg_IR;
reg_0 <= ww_reg_0;
reg_1 <= ww_reg_1;
Tstep_Q <= ww_Tstep_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
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
\fsm|ALT_INV_AddSub~combout\ <= NOT \fsm|AddSub~combout\;
\fsm|ALT_INV_Ain~combout\ <= NOT \fsm|Ain~combout\;
\fsm|ALT_INV_ADDRin~combout\ <= NOT \fsm|ADDRin~combout\;
\fsm|ALT_INV_Gout~combout\ <= NOT \fsm|Gout~combout\;
\fsm|ALT_INV_R0toR7out\(7) <= NOT \fsm|R0toR7out\(7);
\fsm|ALT_INV_R0toR7out\(0) <= NOT \fsm|R0toR7out\(0);
\fsm|ALT_INV_R0toR7out\(2) <= NOT \fsm|R0toR7out\(2);
\fsm|ALT_INV_R0toR7out\(3) <= NOT \fsm|R0toR7out\(3);
\fsm|ALT_INV_R0toR7out\(1) <= NOT \fsm|R0toR7out\(1);
\fsm|ALT_INV_R0toR7out\(5) <= NOT \fsm|R0toR7out\(5);
\fsm|ALT_INV_R0toR7out\(6) <= NOT \fsm|R0toR7out\(6);
\fsm|ALT_INV_R0toR7out\(4) <= NOT \fsm|R0toR7out\(4);
\fsm|ALT_INV_Equal1~0_combout\ <= NOT \fsm|Equal1~0_combout\;
\fsm|ALT_INV_ADDRin~0_combout\ <= NOT \fsm|ADDRin~0_combout\;
\fsm|ALT_INV_Selector4~0_combout\ <= NOT \fsm|Selector4~0_combout\;
\fsm|ALT_INV_Mux29~0_combout\ <= NOT \fsm|Mux29~0_combout\;
\fsm|ALT_INV_Selector1~2_combout\ <= NOT \fsm|Selector1~2_combout\;
\fsm|ALT_INV_Selector1~1_combout\ <= NOT \fsm|Selector1~1_combout\;
\fsm|ALT_INV_Selector1~0_combout\ <= NOT \fsm|Selector1~0_combout\;
\fsm|ALT_INV_Selector21~0_combout\ <= NOT \fsm|Selector21~0_combout\;
\fsm|ALT_INV_Selector19~0_combout\ <= NOT \fsm|Selector19~0_combout\;
\fsm|ALT_INV_Selector18~2_combout\ <= NOT \fsm|Selector18~2_combout\;
\fsm|ALT_INV_Selector18~1_combout\ <= NOT \fsm|Selector18~1_combout\;
\fsm|ALT_INV_Selector15~4_combout\ <= NOT \fsm|Selector15~4_combout\;
\fsm|ALT_INV_Selector20~0_combout\ <= NOT \fsm|Selector20~0_combout\;
\fsm|ALT_INV_Selector18~0_combout\ <= NOT \fsm|Selector18~0_combout\;
\fsm|ALT_INV_Selector8~0_combout\ <= NOT \fsm|Selector8~0_combout\;
\fsm|ALT_INV_Selector16~2_combout\ <= NOT \fsm|Selector16~2_combout\;
\fsm|ALT_INV_Selector16~1_combout\ <= NOT \fsm|Selector16~1_combout\;
\fsm|ALT_INV_Selector15~3_combout\ <= NOT \fsm|Selector15~3_combout\;
\fsm|ALT_INV_Selector22~0_combout\ <= NOT \fsm|Selector22~0_combout\;
\fsm|ALT_INV_Selector17~1_combout\ <= NOT \fsm|Selector17~1_combout\;
\fsm|ALT_INV_Selector15~2_combout\ <= NOT \fsm|Selector15~2_combout\;
\fsm|ALT_INV_Selector15~1_combout\ <= NOT \fsm|Selector15~1_combout\;
\fsm|ALT_INV_Selector16~0_combout\ <= NOT \fsm|Selector16~0_combout\;
\fsm|ALT_INV_Selector17~0_combout\ <= NOT \fsm|Selector17~0_combout\;
\fsm|ALT_INV_Selector15~0_combout\ <= NOT \fsm|Selector15~0_combout\;
\fsm|ALT_INV_Selector11~0_combout\ <= NOT \fsm|Selector11~0_combout\;
\fsm|ALT_INV_Selector14~0_combout\ <= NOT \fsm|Selector14~0_combout\;
\fsm|ALT_INV_y_Q.T2~q\ <= NOT \fsm|y_Q.T2~q\;
\fsm|ALT_INV_y_Q.T0~q\ <= NOT \fsm|y_Q.T0~q\;
\ir0|ALT_INV_Q\(5) <= NOT \ir0|Q\(5);
\ir0|ALT_INV_Q\(4) <= NOT \ir0|Q\(4);
\ir0|ALT_INV_Q\(3) <= NOT \ir0|Q\(3);
\ir0|ALT_INV_Q\(2) <= NOT \ir0|Q\(2);
\ir0|ALT_INV_Q\(1) <= NOT \ir0|Q\(1);
\ir0|ALT_INV_Q\(0) <= NOT \ir0|Q\(0);
\regA|ALT_INV_Q\(8) <= NOT \regA|Q\(8);
\regA|ALT_INV_Q\(7) <= NOT \regA|Q\(7);
\regA|ALT_INV_Q\(6) <= NOT \regA|Q\(6);
\regA|ALT_INV_Q\(5) <= NOT \regA|Q\(5);
\regA|ALT_INV_Q\(4) <= NOT \regA|Q\(4);
\regA|ALT_INV_Q\(3) <= NOT \regA|Q\(3);
\regA|ALT_INV_Q\(2) <= NOT \regA|Q\(2);
\regA|ALT_INV_Q\(1) <= NOT \regA|Q\(1);
\regA|ALT_INV_Q\(0) <= NOT \regA|Q\(0);
\mux0|ALT_INV_y[8]~37_combout\ <= NOT \mux0|y[8]~37_combout\;
\reg0|ALT_INV_Q\(8) <= NOT \reg0|Q\(8);
\mux0|ALT_INV_y[8]~36_combout\ <= NOT \mux0|y[8]~36_combout\;
\reg2|ALT_INV_Q\(8) <= NOT \reg2|Q\(8);
\reg1|ALT_INV_Q\(8) <= NOT \reg1|Q\(8);
\reg3|ALT_INV_Q\(8) <= NOT \reg3|Q\(8);
\mux0|ALT_INV_y[8]~35_combout\ <= NOT \mux0|y[8]~35_combout\;
\reg5|ALT_INV_Q\(8) <= NOT \reg5|Q\(8);
\reg4|ALT_INV_Q\(8) <= NOT \reg4|Q\(8);
\reg6|ALT_INV_Q\(8) <= NOT \reg6|Q\(8);
\mux0|ALT_INV_y[7]~34_combout\ <= NOT \mux0|y[7]~34_combout\;
\reg0|ALT_INV_Q\(7) <= NOT \reg0|Q\(7);
\mux0|ALT_INV_y[7]~33_combout\ <= NOT \mux0|y[7]~33_combout\;
\reg2|ALT_INV_Q\(7) <= NOT \reg2|Q\(7);
\reg1|ALT_INV_Q\(7) <= NOT \reg1|Q\(7);
\reg3|ALT_INV_Q\(7) <= NOT \reg3|Q\(7);
\mux0|ALT_INV_y[7]~32_combout\ <= NOT \mux0|y[7]~32_combout\;
\reg5|ALT_INV_Q\(7) <= NOT \reg5|Q\(7);
\reg4|ALT_INV_Q\(7) <= NOT \reg4|Q\(7);
\reg6|ALT_INV_Q\(7) <= NOT \reg6|Q\(7);
\mux0|ALT_INV_y[6]~31_combout\ <= NOT \mux0|y[6]~31_combout\;
\reg0|ALT_INV_Q\(6) <= NOT \reg0|Q\(6);
\mux0|ALT_INV_y[6]~30_combout\ <= NOT \mux0|y[6]~30_combout\;
\reg2|ALT_INV_Q\(6) <= NOT \reg2|Q\(6);
\reg1|ALT_INV_Q\(6) <= NOT \reg1|Q\(6);
\reg3|ALT_INV_Q\(6) <= NOT \reg3|Q\(6);
\mux0|ALT_INV_y[6]~29_combout\ <= NOT \mux0|y[6]~29_combout\;
\reg5|ALT_INV_Q\(6) <= NOT \reg5|Q\(6);
\reg4|ALT_INV_Q\(6) <= NOT \reg4|Q\(6);
\reg6|ALT_INV_Q\(6) <= NOT \reg6|Q\(6);
\mux0|ALT_INV_y[5]~28_combout\ <= NOT \mux0|y[5]~28_combout\;
\reg0|ALT_INV_Q\(5) <= NOT \reg0|Q\(5);
\mux0|ALT_INV_y[5]~27_combout\ <= NOT \mux0|y[5]~27_combout\;
\reg2|ALT_INV_Q\(5) <= NOT \reg2|Q\(5);
\reg1|ALT_INV_Q\(5) <= NOT \reg1|Q\(5);
\reg3|ALT_INV_Q\(5) <= NOT \reg3|Q\(5);
\mux0|ALT_INV_y[5]~26_combout\ <= NOT \mux0|y[5]~26_combout\;
\reg5|ALT_INV_Q\(5) <= NOT \reg5|Q\(5);
\reg4|ALT_INV_Q\(5) <= NOT \reg4|Q\(5);
\reg6|ALT_INV_Q\(5) <= NOT \reg6|Q\(5);
\mux0|ALT_INV_y[4]~25_combout\ <= NOT \mux0|y[4]~25_combout\;
\reg0|ALT_INV_Q\(4) <= NOT \reg0|Q\(4);
\mux0|ALT_INV_y[4]~24_combout\ <= NOT \mux0|y[4]~24_combout\;
\reg2|ALT_INV_Q\(4) <= NOT \reg2|Q\(4);
\reg1|ALT_INV_Q\(4) <= NOT \reg1|Q\(4);
\reg3|ALT_INV_Q\(4) <= NOT \reg3|Q\(4);
\mux0|ALT_INV_y[4]~23_combout\ <= NOT \mux0|y[4]~23_combout\;
\reg5|ALT_INV_Q\(4) <= NOT \reg5|Q\(4);
\reg4|ALT_INV_Q\(4) <= NOT \reg4|Q\(4);
\reg6|ALT_INV_Q\(4) <= NOT \reg6|Q\(4);
\mux0|ALT_INV_y[3]~22_combout\ <= NOT \mux0|y[3]~22_combout\;
\reg0|ALT_INV_Q\(3) <= NOT \reg0|Q\(3);
\mux0|ALT_INV_y[3]~21_combout\ <= NOT \mux0|y[3]~21_combout\;
\reg2|ALT_INV_Q\(3) <= NOT \reg2|Q\(3);
\reg1|ALT_INV_Q\(3) <= NOT \reg1|Q\(3);
\reg3|ALT_INV_Q\(3) <= NOT \reg3|Q\(3);
\mux0|ALT_INV_y[3]~20_combout\ <= NOT \mux0|y[3]~20_combout\;
\reg5|ALT_INV_Q\(3) <= NOT \reg5|Q\(3);
\reg4|ALT_INV_Q\(3) <= NOT \reg4|Q\(3);
\reg6|ALT_INV_Q\(3) <= NOT \reg6|Q\(3);
\mux0|ALT_INV_y[2]~19_combout\ <= NOT \mux0|y[2]~19_combout\;
\reg0|ALT_INV_Q\(2) <= NOT \reg0|Q\(2);
\mux0|ALT_INV_y[2]~18_combout\ <= NOT \mux0|y[2]~18_combout\;
\reg2|ALT_INV_Q\(2) <= NOT \reg2|Q\(2);
\reg1|ALT_INV_Q\(2) <= NOT \reg1|Q\(2);
\reg3|ALT_INV_Q\(2) <= NOT \reg3|Q\(2);
\mux0|ALT_INV_y[2]~17_combout\ <= NOT \mux0|y[2]~17_combout\;
\reg5|ALT_INV_Q\(2) <= NOT \reg5|Q\(2);
\reg4|ALT_INV_Q\(2) <= NOT \reg4|Q\(2);
\reg6|ALT_INV_Q\(2) <= NOT \reg6|Q\(2);
\mux0|ALT_INV_y[1]~16_combout\ <= NOT \mux0|y[1]~16_combout\;
\reg0|ALT_INV_Q\(1) <= NOT \reg0|Q\(1);
\mux0|ALT_INV_y[1]~15_combout\ <= NOT \mux0|y[1]~15_combout\;
\reg2|ALT_INV_Q\(1) <= NOT \reg2|Q\(1);
\reg1|ALT_INV_Q\(1) <= NOT \reg1|Q\(1);
\reg3|ALT_INV_Q\(1) <= NOT \reg3|Q\(1);
\mux0|ALT_INV_y[1]~14_combout\ <= NOT \mux0|y[1]~14_combout\;
\reg5|ALT_INV_Q\(1) <= NOT \reg5|Q\(1);
\reg4|ALT_INV_Q\(1) <= NOT \reg4|Q\(1);
\reg6|ALT_INV_Q\(1) <= NOT \reg6|Q\(1);
\mux0|ALT_INV_y[0]~13_combout\ <= NOT \mux0|y[0]~13_combout\;
\mux0|ALT_INV_y[0]~12_combout\ <= NOT \mux0|y[0]~12_combout\;
\mux0|ALT_INV_y[0]~11_combout\ <= NOT \mux0|y[0]~11_combout\;
\mux0|ALT_INV_y[0]~10_combout\ <= NOT \mux0|y[0]~10_combout\;
\mux0|ALT_INV_y[0]~9_combout\ <= NOT \mux0|y[0]~9_combout\;
\mux0|ALT_INV_y[0]~8_combout\ <= NOT \mux0|y[0]~8_combout\;
\mux0|ALT_INV_y[0]~7_combout\ <= NOT \mux0|y[0]~7_combout\;
\mux0|ALT_INV_y[0]~6_combout\ <= NOT \mux0|y[0]~6_combout\;
\reg0|ALT_INV_Q\(0) <= NOT \reg0|Q\(0);
\mux0|ALT_INV_y[0]~5_combout\ <= NOT \mux0|y[0]~5_combout\;
\mux0|ALT_INV_y[0]~4_combout\ <= NOT \mux0|y[0]~4_combout\;
\mux0|ALT_INV_y[0]~3_combout\ <= NOT \mux0|y[0]~3_combout\;
\reg2|ALT_INV_Q\(0) <= NOT \reg2|Q\(0);
\reg1|ALT_INV_Q\(0) <= NOT \reg1|Q\(0);
\reg3|ALT_INV_Q\(0) <= NOT \reg3|Q\(0);
\mux0|ALT_INV_y[0]~2_combout\ <= NOT \mux0|y[0]~2_combout\;
\mux0|ALT_INV_y[0]~1_combout\ <= NOT \mux0|y[0]~1_combout\;
\mux0|ALT_INV_y[0]~0_combout\ <= NOT \mux0|y[0]~0_combout\;
\reg5|ALT_INV_Q\(0) <= NOT \reg5|Q\(0);
\reg4|ALT_INV_Q\(0) <= NOT \reg4|Q\(0);
\reg6|ALT_INV_Q\(0) <= NOT \reg6|Q\(0);
\fsm|ALT_INV_Selector13~0_combout\ <= NOT \fsm|Selector13~0_combout\;
\fsm|ALT_INV_y_Q.T3~q\ <= NOT \fsm|y_Q.T3~q\;
\ir0|ALT_INV_Q\(6) <= NOT \ir0|Q\(6);
\ir0|ALT_INV_Q\(7) <= NOT \ir0|Q\(7);
\ir0|ALT_INV_Q\(8) <= NOT \ir0|Q\(8);
\fsm|ALT_INV_y_Q.T1~q\ <= NOT \fsm|y_Q.T1~q\;
\regG|ALT_INV_Q\(8) <= NOT \regG|Q\(8);
\pc0|ALT_INV_v\(8) <= NOT \pc0|v\(8);
\regG|ALT_INV_Q\(7) <= NOT \regG|Q\(7);
\pc0|ALT_INV_v\(7) <= NOT \pc0|v\(7);
\regG|ALT_INV_Q\(6) <= NOT \regG|Q\(6);
\pc0|ALT_INV_v\(6) <= NOT \pc0|v\(6);
\regG|ALT_INV_Q\(5) <= NOT \regG|Q\(5);
\pc0|ALT_INV_v\(5) <= NOT \pc0|v\(5);
\regG|ALT_INV_Q\(4) <= NOT \regG|Q\(4);
\pc0|ALT_INV_v\(4) <= NOT \pc0|v\(4);
\regG|ALT_INV_Q\(3) <= NOT \regG|Q\(3);
\pc0|ALT_INV_v\(3) <= NOT \pc0|v\(3);
\regG|ALT_INV_Q\(2) <= NOT \regG|Q\(2);
\pc0|ALT_INV_v\(2) <= NOT \pc0|v\(2);
\regG|ALT_INV_Q\(1) <= NOT \regG|Q\(1);
\pc0|ALT_INV_v\(1) <= NOT \pc0|v\(1);
\regG|ALT_INV_Q\(0) <= NOT \regG|Q\(0);
\pc0|ALT_INV_v\(0) <= NOT \pc0|v\(0);

-- Location: IOOBUF_X33_Y0_N59
\done~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|Selector13~0_combout\,
	devoe => ww_devoe,
	o => ww_done);

-- Location: IOOBUF_X22_Y0_N19
\busWires[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux0|y[0]~13_combout\,
	devoe => ww_devoe,
	o => ww_busWires(0));

-- Location: IOOBUF_X19_Y0_N36
\busWires[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux0|y[1]~16_combout\,
	devoe => ww_devoe,
	o => ww_busWires(1));

-- Location: IOOBUF_X18_Y0_N53
\busWires[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux0|y[2]~19_combout\,
	devoe => ww_devoe,
	o => ww_busWires(2));

-- Location: IOOBUF_X18_Y0_N19
\busWires[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux0|y[3]~22_combout\,
	devoe => ww_devoe,
	o => ww_busWires(3));

-- Location: IOOBUF_X18_Y0_N36
\busWires[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux0|y[4]~25_combout\,
	devoe => ww_devoe,
	o => ww_busWires(4));

-- Location: IOOBUF_X19_Y0_N19
\busWires[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux0|y[5]~28_combout\,
	devoe => ww_devoe,
	o => ww_busWires(5));

-- Location: IOOBUF_X22_Y0_N53
\busWires[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux0|y[6]~31_combout\,
	devoe => ww_devoe,
	o => ww_busWires(6));

-- Location: IOOBUF_X18_Y0_N2
\busWires[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux0|y[7]~34_combout\,
	devoe => ww_devoe,
	o => ww_busWires(7));

-- Location: IOOBUF_X19_Y0_N2
\busWires[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux0|y[8]~37_combout\,
	devoe => ww_devoe,
	o => ww_busWires(8));

-- Location: IOOBUF_X0_Y19_N39
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

-- Location: IOOBUF_X38_Y0_N2
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

-- Location: IOOBUF_X34_Y0_N53
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

-- Location: IOOBUF_X40_Y0_N42
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

-- Location: IOOBUF_X0_Y19_N56
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

-- Location: IOOBUF_X20_Y45_N19
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

-- Location: IOOBUF_X34_Y0_N2
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

-- Location: IOOBUF_X40_Y0_N76
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

-- Location: IOOBUF_X46_Y0_N36
\DOUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DOUT(0));

-- Location: IOOBUF_X10_Y45_N2
\DOUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DOUT(1));

-- Location: IOOBUF_X54_Y21_N5
\DOUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DOUT(2));

-- Location: IOOBUF_X36_Y45_N36
\DOUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DOUT(3));

-- Location: IOOBUF_X18_Y45_N36
\DOUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DOUT(4));

-- Location: IOOBUF_X8_Y45_N76
\DOUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DOUT(5));

-- Location: IOOBUF_X54_Y14_N96
\DOUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DOUT(6));

-- Location: IOOBUF_X42_Y45_N19
\DOUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DOUT(7));

-- Location: IOOBUF_X22_Y45_N2
\DOUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DOUT(8));

-- Location: IOOBUF_X33_Y0_N42
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

-- Location: IOOBUF_X40_Y0_N93
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

-- Location: IOOBUF_X36_Y0_N53
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

-- Location: IOOBUF_X12_Y0_N19
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

-- Location: IOOBUF_X38_Y0_N53
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

-- Location: IOOBUF_X12_Y0_N2
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

-- Location: IOOBUF_X12_Y0_N36
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

-- Location: IOOBUF_X12_Y0_N53
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

-- Location: IOOBUF_X24_Y0_N19
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

-- Location: IOOBUF_X11_Y0_N19
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

-- Location: IOOBUF_X11_Y0_N53
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

-- Location: IOOBUF_X38_Y0_N36
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

-- Location: IOOBUF_X16_Y0_N42
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

-- Location: IOOBUF_X54_Y14_N45
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

-- Location: IOOBUF_X10_Y0_N76
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

-- Location: IOOBUF_X14_Y0_N36
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

-- Location: IOOBUF_X14_Y0_N2
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

-- Location: IOOBUF_X25_Y0_N2
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

-- Location: IOOBUF_X29_Y0_N19
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

-- Location: IOOBUF_X25_Y0_N53
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

-- Location: IOOBUF_X40_Y0_N59
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

-- Location: IOOBUF_X29_Y0_N2
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

-- Location: IOOBUF_X29_Y0_N53
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

-- Location: IOOBUF_X23_Y0_N59
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

-- Location: IOOBUF_X23_Y0_N76
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

-- Location: IOOBUF_X23_Y0_N42
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

-- Location: IOOBUF_X36_Y0_N19
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

-- Location: IOOBUF_X16_Y0_N59
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

-- Location: IOOBUF_X33_Y0_N76
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

-- Location: IOOBUF_X0_Y19_N22
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

-- Location: IOOBUF_X29_Y0_N36
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

-- Location: IOOBUF_X10_Y0_N93
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

-- Location: IOOBUF_X38_Y0_N19
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

-- Location: IOOBUF_X14_Y0_N19
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

-- Location: IOOBUF_X11_Y0_N36
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

-- Location: IOOBUF_X24_Y0_N2
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

-- Location: IOOBUF_X16_Y0_N76
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

-- Location: IOOBUF_X23_Y0_N93
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

-- Location: IOOBUF_X0_Y18_N79
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

-- Location: IOOBUF_X10_Y0_N59
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

-- Location: IOOBUF_X0_Y18_N62
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

-- Location: IOOBUF_X54_Y14_N79
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

-- Location: IOOBUF_X0_Y19_N5
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

-- Location: IOOBUF_X10_Y0_N42
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

-- Location: IOOBUF_X48_Y0_N59
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

-- Location: IOOBUF_X24_Y0_N53
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

-- Location: IOOBUF_X22_Y0_N2
\Tstep_Q[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|y_Q.T2~q\,
	devoe => ww_devoe,
	o => ww_Tstep_Q(2));

-- Location: IOOBUF_X43_Y0_N2
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

-- Location: IOIBUF_X33_Y0_N92
\run~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_run,
	o => \run~input_o\);

-- Location: IOIBUF_X16_Y0_N92
\data_in[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(7),
	o => \data_in[7]~input_o\);

-- Location: IOIBUF_X19_Y0_N52
\reset_n~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input_o\);

-- Location: FF_X20_Y6_N50
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

-- Location: IOIBUF_X14_Y0_N52
\data_in[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(8),
	o => \data_in[8]~input_o\);

-- Location: FF_X20_Y6_N41
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

-- Location: FF_X19_Y7_N56
\fsm|y_Q.T3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \fsm|y_Q.T2~q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|y_Q.T3~q\);

-- Location: IOIBUF_X25_Y0_N18
\data_in[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(6),
	o => \data_in[6]~input_o\);

-- Location: FF_X20_Y6_N53
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

-- Location: LABCELL_X20_Y4_N24
\fsm|y_D.T2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|y_D.T2~0_combout\ = ( \ir0|Q\(6) & ( \fsm|y_Q.T1~q\ & ( (!\fsm|y_Q.T3~q\ & (!\ir0|Q\(7) $ (!\ir0|Q\(8)))) ) ) ) # ( !\ir0|Q\(6) & ( \fsm|y_Q.T1~q\ & ( (\ir0|Q\(8) & !\fsm|y_Q.T3~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000001100000110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(7),
	datab => \ir0|ALT_INV_Q\(8),
	datac => \fsm|ALT_INV_y_Q.T3~q\,
	datae => \ir0|ALT_INV_Q\(6),
	dataf => \fsm|ALT_INV_y_Q.T1~q\,
	combout => \fsm|y_D.T2~0_combout\);

-- Location: FF_X20_Y6_N11
\fsm|y_Q.T2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \fsm|y_D.T2~0_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|y_Q.T2~q\);

-- Location: LABCELL_X21_Y6_N36
\fsm|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector2~0_combout\ = ( \fsm|Selector13~0_combout\ & ( (\run~input_o\ & !\fsm|y_Q.T0~q\) ) ) # ( !\fsm|Selector13~0_combout\ & ( (((\run~input_o\ & !\fsm|y_Q.T0~q\)) # (\fsm|y_Q.T1~q\)) # (\fsm|y_Q.T2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111100111111011111110011111101010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_run~input_o\,
	datab => \fsm|ALT_INV_y_Q.T2~q\,
	datac => \fsm|ALT_INV_y_Q.T1~q\,
	datad => \fsm|ALT_INV_y_Q.T0~q\,
	dataf => \fsm|ALT_INV_Selector13~0_combout\,
	combout => \fsm|Selector2~0_combout\);

-- Location: FF_X21_Y6_N38
\fsm|y_Q.T0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \fsm|Selector2~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|y_Q.T0~q\);

-- Location: LABCELL_X21_Y6_N0
\fsm|y_D.T1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|y_D.T1~0_combout\ = (!\fsm|y_Q.T0~q\ & \run~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_y_Q.T0~q\,
	datac => \ALT_INV_run~input_o\,
	combout => \fsm|y_D.T1~0_combout\);

-- Location: FF_X20_Y6_N29
\fsm|y_Q.T1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \fsm|y_D.T1~0_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|y_Q.T1~q\);

-- Location: LABCELL_X21_Y6_N24
\fsm|Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector13~0_combout\ = ( \fsm|y_Q.T3~q\ ) # ( !\fsm|y_Q.T3~q\ & ( (\fsm|y_Q.T1~q\ & (!\ir0|Q\(8) $ (((\ir0|Q\(6) & \ir0|Q\(7)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010000000001010101000000000111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_y_Q.T1~q\,
	datab => \ir0|ALT_INV_Q\(6),
	datac => \ir0|ALT_INV_Q\(7),
	datad => \ir0|ALT_INV_Q\(8),
	dataf => \fsm|ALT_INV_y_Q.T3~q\,
	combout => \fsm|Selector13~0_combout\);

-- Location: MLABCELL_X18_Y7_N3
\reg1|Q[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg1|Q[0]~feeder_combout\ = ( \mux0|y[0]~13_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y[0]~13_combout\,
	combout => \reg1|Q[0]~feeder_combout\);

-- Location: IOIBUF_X34_Y0_N18
\data_in[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(5),
	o => \data_in[5]~input_o\);

-- Location: FF_X20_Y6_N56
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

-- Location: LABCELL_X21_Y6_N42
\fsm|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector8~0_combout\ = ( \ir0|Q\(8) & ( \fsm|y_Q.T1~q\ & ( (!\ir0|Q\(5) & (!\ir0|Q\(7) & (\fsm|y_Q.T3~q\ & !\ir0|Q\(6)))) ) ) ) # ( !\ir0|Q\(8) & ( \fsm|y_Q.T1~q\ & ( (!\ir0|Q\(5) & ((!\ir0|Q\(7) & ((\ir0|Q\(6)))) # (\ir0|Q\(7) & ((!\ir0|Q\(6)) # 
-- (\fsm|y_Q.T3~q\))))) ) ) ) # ( \ir0|Q\(8) & ( !\fsm|y_Q.T1~q\ & ( (!\ir0|Q\(5) & (!\ir0|Q\(7) & (\fsm|y_Q.T3~q\ & !\ir0|Q\(6)))) ) ) ) # ( !\ir0|Q\(8) & ( !\fsm|y_Q.T1~q\ & ( (!\ir0|Q\(5) & (\ir0|Q\(7) & (\fsm|y_Q.T3~q\ & \ir0|Q\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000010000000000000100010100010100000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(5),
	datab => \ir0|ALT_INV_Q\(7),
	datac => \fsm|ALT_INV_y_Q.T3~q\,
	datad => \ir0|ALT_INV_Q\(6),
	datae => \ir0|ALT_INV_Q\(8),
	dataf => \fsm|ALT_INV_y_Q.T1~q\,
	combout => \fsm|Selector8~0_combout\);

-- Location: IOIBUF_X34_Y0_N35
\data_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(3),
	o => \data_in[3]~input_o\);

-- Location: FF_X21_Y6_N47
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

-- Location: IOIBUF_X25_Y0_N35
\data_in[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(4),
	o => \data_in[4]~input_o\);

-- Location: FF_X21_Y6_N56
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

-- Location: LABCELL_X21_Y6_N30
\fsm|Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector16~0_combout\ = ( !\ir0|Q\(4) & ( \ir0|Q\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ir0|ALT_INV_Q\(3),
	datae => \ir0|ALT_INV_Q\(4),
	combout => \fsm|Selector16~0_combout\);

-- Location: MLABCELL_X18_Y7_N24
\fsm|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector6~0_combout\ = (\fsm|Selector8~0_combout\ & \fsm|Selector16~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fsm|ALT_INV_Selector8~0_combout\,
	datac => \fsm|ALT_INV_Selector16~0_combout\,
	combout => \fsm|Selector6~0_combout\);

-- Location: FF_X18_Y7_N5
\reg1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg1|Q[0]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(0));

-- Location: IOIBUF_X22_Y0_N35
\data_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(0),
	o => \data_in[0]~input_o\);

-- Location: FF_X20_Y6_N14
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

-- Location: LABCELL_X20_Y6_N12
\fsm|Selector15~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector15~2_combout\ = ( \fsm|y_Q.T1~q\ & ( (!\ir0|Q\(0) & (((!\ir0|Q\(8) & !\ir0|Q\(7))) # (\fsm|y_Q.T2~q\))) ) ) # ( !\fsm|y_Q.T1~q\ & ( (\fsm|y_Q.T2~q\ & !\ir0|Q\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000010110011000000001011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(8),
	datab => \fsm|ALT_INV_y_Q.T2~q\,
	datac => \ir0|ALT_INV_Q\(7),
	datad => \ir0|ALT_INV_Q\(0),
	dataf => \fsm|ALT_INV_y_Q.T1~q\,
	combout => \fsm|Selector15~2_combout\);

-- Location: IOIBUF_X24_Y0_N35
\data_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(1),
	o => \data_in[1]~input_o\);

-- Location: FF_X20_Y6_N20
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

-- Location: LABCELL_X21_Y6_N3
\fsm|Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector17~0_combout\ = (!\ir0|Q\(3) & !\ir0|Q\(4))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ir0|ALT_INV_Q\(3),
	datad => \ir0|ALT_INV_Q\(4),
	combout => \fsm|Selector17~0_combout\);

-- Location: IOIBUF_X36_Y0_N35
\data_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(2),
	o => \data_in[2]~input_o\);

-- Location: FF_X20_Y6_N59
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

-- Location: LABCELL_X21_Y6_N6
\fsm|Selector15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector15~1_combout\ = ( \ir0|Q\(8) & ( \fsm|y_Q.T1~q\ & ( (\ir0|Q\(5) & ((!\ir0|Q\(7)) # (\ir0|Q\(6)))) ) ) ) # ( !\ir0|Q\(8) & ( \fsm|y_Q.T1~q\ & ( (\ir0|Q\(7) & (\ir0|Q\(5) & \ir0|Q\(6))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000101000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(7),
	datac => \ir0|ALT_INV_Q\(5),
	datad => \ir0|ALT_INV_Q\(6),
	datae => \ir0|ALT_INV_Q\(8),
	dataf => \fsm|ALT_INV_y_Q.T1~q\,
	combout => \fsm|Selector15~1_combout\);

-- Location: LABCELL_X20_Y6_N36
\fsm|Selector17~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector17~1_combout\ = ( \fsm|Selector15~1_combout\ & ( ((\fsm|Selector15~2_combout\ & (!\ir0|Q\(1) & \ir0|Q\(2)))) # (\fsm|Selector17~0_combout\) ) ) # ( !\fsm|Selector15~1_combout\ & ( (\fsm|Selector15~2_combout\ & (!\ir0|Q\(1) & \ir0|Q\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000001111010011110000111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Selector15~2_combout\,
	datab => \ir0|ALT_INV_Q\(1),
	datac => \fsm|ALT_INV_Selector17~0_combout\,
	datad => \ir0|ALT_INV_Q\(2),
	dataf => \fsm|ALT_INV_Selector15~1_combout\,
	combout => \fsm|Selector17~1_combout\);

-- Location: LABCELL_X21_Y6_N15
\fsm|Selector22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector22~0_combout\ = ( \ir0|Q\(7) & ( (!\fsm|y_Q.T1~q\) # (!\ir0|Q\(8)) ) ) # ( !\ir0|Q\(7) & ( (!\fsm|y_Q.T1~q\) # (!\ir0|Q\(6) $ (!\ir0|Q\(8))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111111100110011111111110011111111110011001111111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fsm|ALT_INV_y_Q.T1~q\,
	datac => \ir0|ALT_INV_Q\(6),
	datad => \ir0|ALT_INV_Q\(8),
	dataf => \ir0|ALT_INV_Q\(7),
	combout => \fsm|Selector22~0_combout\);

-- Location: LABCELL_X20_Y5_N3
\fsm|R0toR7out[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|R0toR7out\(4) = ( \fsm|Selector22~0_combout\ & ( \fsm|Selector17~1_combout\ ) ) # ( !\fsm|Selector22~0_combout\ & ( \fsm|R0toR7out\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fsm|ALT_INV_Selector17~1_combout\,
	datad => \fsm|ALT_INV_R0toR7out\(4),
	dataf => \fsm|ALT_INV_Selector22~0_combout\,
	combout => \fsm|R0toR7out\(4));

-- Location: LABCELL_X20_Y6_N18
\fsm|Selector16~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector16~1_combout\ = ( \fsm|y_Q.T1~q\ & ( (!\ir0|Q\(1) & (((!\ir0|Q\(8) & !\ir0|Q\(7))) # (\fsm|y_Q.T2~q\))) ) ) # ( !\fsm|y_Q.T1~q\ & ( (\fsm|y_Q.T2~q\ & !\ir0|Q\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000010110011000000001011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(8),
	datab => \fsm|ALT_INV_y_Q.T2~q\,
	datac => \ir0|ALT_INV_Q\(7),
	datad => \ir0|ALT_INV_Q\(1),
	dataf => \fsm|ALT_INV_y_Q.T1~q\,
	combout => \fsm|Selector16~1_combout\);

-- Location: LABCELL_X20_Y5_N27
\fsm|Selector16~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector16~2_combout\ = ( \ir0|Q\(2) & ( (!\fsm|Selector15~1_combout\ & (\fsm|Selector16~1_combout\ & (\ir0|Q\(0)))) # (\fsm|Selector15~1_combout\ & (((\fsm|Selector16~1_combout\ & \ir0|Q\(0))) # (\fsm|Selector16~0_combout\))) ) ) # ( !\ir0|Q\(2) & ( 
-- (\fsm|Selector15~1_combout\ & \fsm|Selector16~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000011010101110000001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Selector15~1_combout\,
	datab => \fsm|ALT_INV_Selector16~1_combout\,
	datac => \ir0|ALT_INV_Q\(0),
	datad => \fsm|ALT_INV_Selector16~0_combout\,
	dataf => \ir0|ALT_INV_Q\(2),
	combout => \fsm|Selector16~2_combout\);

-- Location: LABCELL_X20_Y5_N0
\fsm|R0toR7out[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|R0toR7out\(5) = ( \fsm|Selector22~0_combout\ & ( \fsm|Selector16~2_combout\ ) ) # ( !\fsm|Selector22~0_combout\ & ( \fsm|R0toR7out\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_Selector16~2_combout\,
	datad => \fsm|ALT_INV_R0toR7out\(5),
	dataf => \fsm|ALT_INV_Selector22~0_combout\,
	combout => \fsm|R0toR7out\(5));

-- Location: LABCELL_X20_Y5_N21
\mux0|y[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[0]~1_combout\ = ( !\fsm|R0toR7out\(5) & ( !\fsm|R0toR7out\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_R0toR7out\(4),
	dataf => \fsm|ALT_INV_R0toR7out\(5),
	combout => \mux0|y[0]~1_combout\);

-- Location: LABCELL_X21_Y6_N39
\fsm|Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector15~0_combout\ = (!\ir0|Q\(3) & \ir0|Q\(4))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ir0|ALT_INV_Q\(3),
	datad => \ir0|ALT_INV_Q\(4),
	combout => \fsm|Selector15~0_combout\);

-- Location: LABCELL_X20_Y6_N3
\fsm|Selector15~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector15~3_combout\ = ( \fsm|Selector15~1_combout\ & ( ((\fsm|Selector15~2_combout\ & (\ir0|Q\(1) & \ir0|Q\(2)))) # (\fsm|Selector15~0_combout\) ) ) # ( !\fsm|Selector15~1_combout\ & ( (\fsm|Selector15~2_combout\ & (\ir0|Q\(1) & \ir0|Q\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100001111000111110000111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Selector15~2_combout\,
	datab => \ir0|ALT_INV_Q\(1),
	datac => \fsm|ALT_INV_Selector15~0_combout\,
	datad => \ir0|ALT_INV_Q\(2),
	dataf => \fsm|ALT_INV_Selector15~1_combout\,
	combout => \fsm|Selector15~3_combout\);

-- Location: LABCELL_X20_Y5_N18
\fsm|R0toR7out[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|R0toR7out\(6) = ( \fsm|R0toR7out\(6) & ( (!\fsm|Selector22~0_combout\) # (\fsm|Selector15~3_combout\) ) ) # ( !\fsm|R0toR7out\(6) & ( (\fsm|Selector15~3_combout\ & \fsm|Selector22~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fsm|ALT_INV_Selector15~3_combout\,
	datac => \fsm|ALT_INV_Selector22~0_combout\,
	dataf => \fsm|ALT_INV_R0toR7out\(6),
	combout => \fsm|R0toR7out\(6));

-- Location: LABCELL_X20_Y5_N24
\mux0|y[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[0]~0_combout\ = ( !\fsm|R0toR7out\(4) & ( (\fsm|R0toR7out\(6)) # (\fsm|R0toR7out\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_R0toR7out\(5),
	datad => \fsm|ALT_INV_R0toR7out\(6),
	dataf => \fsm|ALT_INV_R0toR7out\(4),
	combout => \mux0|y[0]~0_combout\);

-- Location: LABCELL_X21_Y6_N57
\fsm|Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector11~0_combout\ = ( \fsm|y_Q.T1~q\ & ( \fsm|y_Q.T3~q\ & ( (\ir0|Q\(5) & (!\ir0|Q\(8) $ (((!\ir0|Q\(7) & !\ir0|Q\(6)))))) ) ) ) # ( !\fsm|y_Q.T1~q\ & ( \fsm|y_Q.T3~q\ & ( (\ir0|Q\(5) & ((!\ir0|Q\(7) & (\ir0|Q\(8) & !\ir0|Q\(6))) # (\ir0|Q\(7) & 
-- (!\ir0|Q\(8) & \ir0|Q\(6))))) ) ) ) # ( \fsm|y_Q.T1~q\ & ( !\fsm|y_Q.T3~q\ & ( (!\ir0|Q\(8) & (\ir0|Q\(5) & (!\ir0|Q\(7) $ (!\ir0|Q\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100100000000000001001000000000001101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(7),
	datab => \ir0|ALT_INV_Q\(8),
	datac => \ir0|ALT_INV_Q\(6),
	datad => \ir0|ALT_INV_Q\(5),
	datae => \fsm|ALT_INV_y_Q.T1~q\,
	dataf => \fsm|ALT_INV_y_Q.T3~q\,
	combout => \fsm|Selector11~0_combout\);

-- Location: LABCELL_X19_Y5_N48
\fsm|Selector11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector11~1_combout\ = ( \fsm|Selector15~0_combout\ & ( \fsm|Selector11~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fsm|ALT_INV_Selector11~0_combout\,
	dataf => \fsm|ALT_INV_Selector15~0_combout\,
	combout => \fsm|Selector11~1_combout\);

-- Location: FF_X20_Y5_N14
\reg6|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[0]~13_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|Q\(0));

-- Location: LABCELL_X21_Y5_N15
\reg4|Q[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|Q[0]~feeder_combout\ = ( \mux0|y[0]~13_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y[0]~13_combout\,
	combout => \reg4|Q[0]~feeder_combout\);

-- Location: LABCELL_X21_Y5_N6
\fsm|Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector9~0_combout\ = ( \fsm|Selector17~0_combout\ & ( \fsm|Selector11~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \fsm|ALT_INV_Selector17~0_combout\,
	dataf => \fsm|ALT_INV_Selector11~0_combout\,
	combout => \fsm|Selector9~0_combout\);

-- Location: FF_X21_Y5_N16
\reg4|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg4|Q[0]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(0));

-- Location: LABCELL_X19_Y5_N21
\reg5|Q[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg5|Q[0]~feeder_combout\ = ( \mux0|y[0]~13_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y[0]~13_combout\,
	combout => \reg5|Q[0]~feeder_combout\);

-- Location: MLABCELL_X18_Y5_N6
\fsm|Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector10~0_combout\ = ( \fsm|Selector16~0_combout\ & ( \fsm|Selector11~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Selector11~0_combout\,
	dataf => \fsm|ALT_INV_Selector16~0_combout\,
	combout => \fsm|Selector10~0_combout\);

-- Location: FF_X19_Y5_N22
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
	ena => \fsm|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|Q\(0));

-- Location: LABCELL_X20_Y5_N30
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

-- Location: LABCELL_X20_Y6_N9
\fsm|Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector14~0_combout\ = ( \fsm|y_Q.T1~q\ & ( (\fsm|y_Q.T0~q\ & ((!\ir0|Q\(7)) # ((\ir0|Q\(8)) # (\ir0|Q\(6))))) ) ) # ( !\fsm|y_Q.T1~q\ & ( \fsm|y_Q.T0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000101111110000000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(7),
	datab => \ir0|ALT_INV_Q\(6),
	datac => \ir0|ALT_INV_Q\(8),
	datad => \fsm|ALT_INV_y_Q.T0~q\,
	dataf => \fsm|ALT_INV_y_Q.T1~q\,
	combout => \fsm|Selector14~0_combout\);

-- Location: LABCELL_X21_Y6_N12
\pc0|v[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc0|v[0]~0_combout\ = ( \fsm|Selector11~0_combout\ & ( (!\fsm|Selector14~0_combout\) # ((\ir0|Q\(4) & \ir0|Q\(3))) ) ) # ( !\fsm|Selector11~0_combout\ & ( !\fsm|Selector14~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101011111010101010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Selector14~0_combout\,
	datac => \ir0|ALT_INV_Q\(4),
	datad => \ir0|ALT_INV_Q\(3),
	dataf => \fsm|ALT_INV_Selector11~0_combout\,
	combout => \pc0|v[0]~0_combout\);

-- Location: FF_X20_Y5_N32
\pc0|v[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pc0|Add0~1_sumout\,
	asdata => \mux0|y[0]~13_combout\,
	clrn => \reset_n~input_o\,
	sload => \fsm|Selector14~0_combout\,
	ena => \pc0|v[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc0|v\(0));

-- Location: LABCELL_X20_Y5_N15
\mux0|y[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[0]~2_combout\ = ( \reg5|Q\(0) & ( \pc0|v\(0) & ( (!\mux0|y[0]~1_combout\ & (((\reg4|Q\(0))) # (\mux0|y[0]~0_combout\))) # (\mux0|y[0]~1_combout\ & ((!\mux0|y[0]~0_combout\) # ((\reg6|Q\(0))))) ) ) ) # ( !\reg5|Q\(0) & ( \pc0|v\(0) & ( 
-- (!\mux0|y[0]~1_combout\ & (!\mux0|y[0]~0_combout\ & ((\reg4|Q\(0))))) # (\mux0|y[0]~1_combout\ & ((!\mux0|y[0]~0_combout\) # ((\reg6|Q\(0))))) ) ) ) # ( \reg5|Q\(0) & ( !\pc0|v\(0) & ( (!\mux0|y[0]~1_combout\ & (((\reg4|Q\(0))) # (\mux0|y[0]~0_combout\))) 
-- # (\mux0|y[0]~1_combout\ & (\mux0|y[0]~0_combout\ & (\reg6|Q\(0)))) ) ) ) # ( !\reg5|Q\(0) & ( !\pc0|v\(0) & ( (!\mux0|y[0]~1_combout\ & (!\mux0|y[0]~0_combout\ & ((\reg4|Q\(0))))) # (\mux0|y[0]~1_combout\ & (\mux0|y[0]~0_combout\ & (\reg6|Q\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001001000111010101101000101110011010110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[0]~1_combout\,
	datab => \mux0|ALT_INV_y[0]~0_combout\,
	datac => \reg6|ALT_INV_Q\(0),
	datad => \reg4|ALT_INV_Q\(0),
	datae => \reg5|ALT_INV_Q\(0),
	dataf => \pc0|ALT_INV_v\(0),
	combout => \mux0|y[0]~2_combout\);

-- Location: LABCELL_X20_Y6_N54
\fsm|Selector18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector18~0_combout\ = ( \ir0|Q\(7) & ( (\fsm|y_Q.T1~q\ & (\ir0|Q\(6) & !\ir0|Q\(5))) ) ) # ( !\ir0|Q\(7) & ( (\fsm|y_Q.T1~q\ & (\ir0|Q\(8) & !\ir0|Q\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000100010000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_y_Q.T1~q\,
	datab => \ir0|ALT_INV_Q\(8),
	datac => \ir0|ALT_INV_Q\(6),
	datad => \ir0|ALT_INV_Q\(5),
	dataf => \ir0|ALT_INV_Q\(7),
	combout => \fsm|Selector18~0_combout\);

-- Location: LABCELL_X20_Y6_N33
\fsm|Selector19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector19~0_combout\ = ( \fsm|Selector15~2_combout\ & ( (!\ir0|Q\(2) & (((\fsm|Selector18~0_combout\ & \fsm|Selector15~0_combout\)) # (\ir0|Q\(1)))) # (\ir0|Q\(2) & (\fsm|Selector18~0_combout\ & ((\fsm|Selector15~0_combout\)))) ) ) # ( 
-- !\fsm|Selector15~2_combout\ & ( (\fsm|Selector18~0_combout\ & \fsm|Selector15~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100001010001110110000101000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(2),
	datab => \fsm|ALT_INV_Selector18~0_combout\,
	datac => \ir0|ALT_INV_Q\(1),
	datad => \fsm|ALT_INV_Selector15~0_combout\,
	dataf => \fsm|ALT_INV_Selector15~2_combout\,
	combout => \fsm|Selector19~0_combout\);

-- Location: LABCELL_X20_Y6_N21
\fsm|R0toR7out[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|R0toR7out\(2) = ( \fsm|Selector19~0_combout\ & ( (\fsm|R0toR7out\(2)) # (\fsm|Selector22~0_combout\) ) ) # ( !\fsm|Selector19~0_combout\ & ( (!\fsm|Selector22~0_combout\ & \fsm|R0toR7out\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_Selector22~0_combout\,
	datad => \fsm|ALT_INV_R0toR7out\(2),
	dataf => \fsm|ALT_INV_Selector19~0_combout\,
	combout => \fsm|R0toR7out\(2));

-- Location: LABCELL_X20_Y6_N30
\fsm|Selector20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector20~0_combout\ = ( \fsm|Selector16~1_combout\ & ( (!\ir0|Q\(2) & (((\fsm|Selector18~0_combout\ & \fsm|Selector16~0_combout\)) # (\ir0|Q\(0)))) # (\ir0|Q\(2) & (\fsm|Selector18~0_combout\ & (\fsm|Selector16~0_combout\))) ) ) # ( 
-- !\fsm|Selector16~1_combout\ & ( (\fsm|Selector18~0_combout\ & \fsm|Selector16~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011101010110000001110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(2),
	datab => \fsm|ALT_INV_Selector18~0_combout\,
	datac => \fsm|ALT_INV_Selector16~0_combout\,
	datad => \ir0|ALT_INV_Q\(0),
	dataf => \fsm|ALT_INV_Selector16~1_combout\,
	combout => \fsm|Selector20~0_combout\);

-- Location: LABCELL_X20_Y6_N15
\fsm|R0toR7out[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|R0toR7out\(1) = ( \fsm|Selector22~0_combout\ & ( \fsm|Selector20~0_combout\ ) ) # ( !\fsm|Selector22~0_combout\ & ( \fsm|R0toR7out\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_Selector20~0_combout\,
	datad => \fsm|ALT_INV_R0toR7out\(1),
	dataf => \fsm|ALT_INV_Selector22~0_combout\,
	combout => \fsm|R0toR7out\(1));

-- Location: LABCELL_X20_Y7_N27
\mux0|y[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[0]~4_combout\ = ( !\fsm|R0toR7out\(1) & ( !\fsm|R0toR7out\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_R0toR7out\(2),
	dataf => \fsm|ALT_INV_R0toR7out\(1),
	combout => \mux0|y[0]~4_combout\);

-- Location: LABCELL_X20_Y7_N39
\fsm|Selector8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector8~1_combout\ = ( \ir0|Q\(4) & ( (\fsm|Selector8~0_combout\ & \ir0|Q\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Selector8~0_combout\,
	datac => \ir0|ALT_INV_Q\(3),
	dataf => \ir0|ALT_INV_Q\(4),
	combout => \fsm|Selector8~1_combout\);

-- Location: FF_X20_Y7_N20
\reg3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[0]~13_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(0));

-- Location: LABCELL_X17_Y6_N24
\fsm|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector7~0_combout\ = ( \fsm|Selector15~0_combout\ & ( \fsm|Selector8~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \fsm|ALT_INV_Selector15~0_combout\,
	dataf => \fsm|ALT_INV_Selector8~0_combout\,
	combout => \fsm|Selector7~0_combout\);

-- Location: FF_X20_Y7_N2
\reg2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[0]~13_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(0));

-- Location: LABCELL_X20_Y7_N24
\fsm|Selector15~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector15~4_combout\ = ( !\fsm|y_Q.T2~q\ & ( ((!\fsm|y_Q.T1~q\) # (\ir0|Q\(7))) # (\ir0|Q\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101011111111111110101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(8),
	datac => \ir0|ALT_INV_Q\(7),
	datad => \fsm|ALT_INV_y_Q.T1~q\,
	dataf => \fsm|ALT_INV_y_Q.T2~q\,
	combout => \fsm|Selector15~4_combout\);

-- Location: LABCELL_X20_Y6_N57
\fsm|Selector18~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector18~1_combout\ = ( \ir0|Q\(1) & ( (\ir0|Q\(0) & !\ir0|Q\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ir0|ALT_INV_Q\(0),
	datad => \ir0|ALT_INV_Q\(2),
	dataf => \ir0|ALT_INV_Q\(1),
	combout => \fsm|Selector18~1_combout\);

-- Location: LABCELL_X20_Y7_N42
\fsm|Selector18~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector18~2_combout\ = ( \fsm|Selector18~1_combout\ & ( (!\fsm|Selector15~4_combout\) # ((\fsm|Selector18~0_combout\ & (\ir0|Q\(4) & \ir0|Q\(3)))) ) ) # ( !\fsm|Selector18~1_combout\ & ( (\fsm|Selector18~0_combout\ & (\ir0|Q\(4) & \ir0|Q\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010111001100110011011100110011001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Selector18~0_combout\,
	datab => \fsm|ALT_INV_Selector15~4_combout\,
	datac => \ir0|ALT_INV_Q\(4),
	datad => \ir0|ALT_INV_Q\(3),
	dataf => \fsm|ALT_INV_Selector18~1_combout\,
	combout => \fsm|Selector18~2_combout\);

-- Location: LABCELL_X20_Y7_N30
\fsm|R0toR7out[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|R0toR7out\(3) = ( \fsm|Selector22~0_combout\ & ( \fsm|Selector18~2_combout\ ) ) # ( !\fsm|Selector22~0_combout\ & ( \fsm|R0toR7out\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fsm|ALT_INV_R0toR7out\(3),
	datac => \fsm|ALT_INV_Selector18~2_combout\,
	dataf => \fsm|ALT_INV_Selector22~0_combout\,
	combout => \fsm|R0toR7out\(3));

-- Location: LABCELL_X20_Y7_N36
\mux0|y[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[0]~3_combout\ = ( \fsm|R0toR7out\(3) & ( !\fsm|R0toR7out\(1) ) ) # ( !\fsm|R0toR7out\(3) & ( (\fsm|R0toR7out\(2) & !\fsm|R0toR7out\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fsm|ALT_INV_R0toR7out\(2),
	datac => \fsm|ALT_INV_R0toR7out\(1),
	dataf => \fsm|ALT_INV_R0toR7out\(3),
	combout => \mux0|y[0]~3_combout\);

-- Location: LABCELL_X20_Y7_N21
\mux0|y[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[0]~5_combout\ = ( \reg2|Q\(0) & ( \mux0|y[0]~3_combout\ & ( (!\mux0|y[0]~4_combout\) # (\reg3|Q\(0)) ) ) ) # ( !\reg2|Q\(0) & ( \mux0|y[0]~3_combout\ & ( (\mux0|y[0]~4_combout\ & \reg3|Q\(0)) ) ) ) # ( \reg2|Q\(0) & ( !\mux0|y[0]~3_combout\ & ( 
-- (!\mux0|y[0]~4_combout\ & (\reg1|Q\(0))) # (\mux0|y[0]~4_combout\ & ((\mux0|y[0]~2_combout\))) ) ) ) # ( !\reg2|Q\(0) & ( !\mux0|y[0]~3_combout\ & ( (!\mux0|y[0]~4_combout\ & (\reg1|Q\(0))) # (\mux0|y[0]~4_combout\ & ((\mux0|y[0]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|ALT_INV_Q\(0),
	datab => \mux0|ALT_INV_y[0]~2_combout\,
	datac => \mux0|ALT_INV_y[0]~4_combout\,
	datad => \reg3|ALT_INV_Q\(0),
	datae => \reg2|ALT_INV_Q\(0),
	dataf => \mux0|ALT_INV_y[0]~3_combout\,
	combout => \mux0|y[0]~5_combout\);

-- Location: LABCELL_X21_Y6_N21
\fsm|Selector21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector21~0_combout\ = ( \fsm|Selector17~0_combout\ & ( \fsm|Selector15~2_combout\ & ( ((!\ir0|Q\(2) & !\ir0|Q\(1))) # (\fsm|Selector18~0_combout\) ) ) ) # ( !\fsm|Selector17~0_combout\ & ( \fsm|Selector15~2_combout\ & ( (!\ir0|Q\(2) & !\ir0|Q\(1)) 
-- ) ) ) # ( \fsm|Selector17~0_combout\ & ( !\fsm|Selector15~2_combout\ & ( \fsm|Selector18~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010111110000000000001111010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Selector18~0_combout\,
	datac => \ir0|ALT_INV_Q\(2),
	datad => \ir0|ALT_INV_Q\(1),
	datae => \fsm|ALT_INV_Selector17~0_combout\,
	dataf => \fsm|ALT_INV_Selector15~2_combout\,
	combout => \fsm|Selector21~0_combout\);

-- Location: LABCELL_X21_Y6_N27
\fsm|R0toR7out[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|R0toR7out\(0) = ( \fsm|Selector21~0_combout\ & ( (\fsm|R0toR7out\(0)) # (\fsm|Selector22~0_combout\) ) ) # ( !\fsm|Selector21~0_combout\ & ( (!\fsm|Selector22~0_combout\ & \fsm|R0toR7out\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_Selector22~0_combout\,
	datad => \fsm|ALT_INV_R0toR7out\(0),
	dataf => \fsm|ALT_INV_Selector21~0_combout\,
	combout => \fsm|R0toR7out\(0));

-- Location: LABCELL_X21_Y6_N48
\fsm|Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector1~1_combout\ = ( \ir0|Q\(3) & ( \ir0|Q\(5) & ( (\ir0|Q\(4) & (\fsm|y_Q.T1~q\ & (!\ir0|Q\(7) $ (\ir0|Q\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(4),
	datab => \fsm|ALT_INV_y_Q.T1~q\,
	datac => \ir0|ALT_INV_Q\(7),
	datad => \ir0|ALT_INV_Q\(6),
	datae => \ir0|ALT_INV_Q\(3),
	dataf => \ir0|ALT_INV_Q\(5),
	combout => \fsm|Selector1~1_combout\);

-- Location: LABCELL_X20_Y6_N6
\fsm|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector1~0_combout\ = (!\fsm|y_Q.T2~q\ & (((!\ir0|Q\(6)) # (!\fsm|y_Q.T1~q\)) # (\ir0|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011010000111100001101000011110000110100001111000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(7),
	datab => \ir0|ALT_INV_Q\(6),
	datac => \fsm|ALT_INV_y_Q.T2~q\,
	datad => \fsm|ALT_INV_y_Q.T1~q\,
	combout => \fsm|Selector1~0_combout\);

-- Location: LABCELL_X20_Y6_N24
\fsm|Selector1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector1~2_combout\ = ( \ir0|Q\(2) & ( \fsm|y_Q.T0~q\ & ( ((!\fsm|Selector1~0_combout\ & (\ir0|Q\(1) & \ir0|Q\(0)))) # (\fsm|Selector1~1_combout\) ) ) ) # ( !\ir0|Q\(2) & ( \fsm|y_Q.T0~q\ & ( \fsm|Selector1~1_combout\ ) ) ) # ( \ir0|Q\(2) & ( 
-- !\fsm|y_Q.T0~q\ ) ) # ( !\ir0|Q\(2) & ( !\fsm|y_Q.T0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010101010101010101010101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Selector1~1_combout\,
	datab => \fsm|ALT_INV_Selector1~0_combout\,
	datac => \ir0|ALT_INV_Q\(1),
	datad => \ir0|ALT_INV_Q\(0),
	datae => \ir0|ALT_INV_Q\(2),
	dataf => \fsm|ALT_INV_y_Q.T0~q\,
	combout => \fsm|Selector1~2_combout\);

-- Location: LABCELL_X20_Y6_N45
\fsm|R0toR7out[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|R0toR7out\(7) = ( \fsm|Selector22~0_combout\ & ( \fsm|Selector1~2_combout\ ) ) # ( !\fsm|Selector22~0_combout\ & ( \fsm|R0toR7out\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_Selector1~2_combout\,
	datad => \fsm|ALT_INV_R0toR7out\(7),
	dataf => \fsm|ALT_INV_Selector22~0_combout\,
	combout => \fsm|R0toR7out\(7));

-- Location: LABCELL_X20_Y7_N3
\mux0|y[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[0]~6_combout\ = ( !\fsm|R0toR7out\(5) & ( !\fsm|R0toR7out\(3) & ( (!\fsm|R0toR7out\(6) & (!\fsm|R0toR7out\(4) & !\fsm|R0toR7out\(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_R0toR7out\(6),
	datac => \fsm|ALT_INV_R0toR7out\(4),
	datad => \fsm|ALT_INV_R0toR7out\(7),
	datae => \fsm|ALT_INV_R0toR7out\(5),
	dataf => \fsm|ALT_INV_R0toR7out\(3),
	combout => \mux0|y[0]~6_combout\);

-- Location: LABCELL_X20_Y6_N39
\fsm|Mux29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Mux29~0_combout\ = ( \ir0|Q\(7) & ( (!\ir0|Q\(6)) # (\ir0|Q\(8)) ) ) # ( !\ir0|Q\(7) & ( (!\ir0|Q\(8)) # (\ir0|Q\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ir0|ALT_INV_Q\(6),
	datad => \ir0|ALT_INV_Q\(8),
	dataf => \ir0|ALT_INV_Q\(7),
	combout => \fsm|Mux29~0_combout\);

-- Location: LABCELL_X19_Y7_N33
\fsm|Gout\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Gout~combout\ = ( \fsm|Gout~combout\ & ( \fsm|y_Q.T3~q\ ) ) # ( !\fsm|Gout~combout\ & ( (\fsm|y_Q.T3~q\ & !\fsm|Mux29~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_y_Q.T3~q\,
	datac => \fsm|ALT_INV_Mux29~0_combout\,
	dataf => \fsm|ALT_INV_Gout~combout\,
	combout => \fsm|Gout~combout\);

-- Location: LABCELL_X20_Y6_N0
\mux0|y[0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[0]~8_combout\ = ( !\fsm|R0toR7out\(0) & ( !\fsm|R0toR7out\(1) $ (\fsm|R0toR7out\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_R0toR7out\(1),
	datad => \fsm|ALT_INV_R0toR7out\(2),
	dataf => \fsm|ALT_INV_R0toR7out\(0),
	combout => \mux0|y[0]~8_combout\);

-- Location: LABCELL_X20_Y5_N6
\mux0|y[0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[0]~7_combout\ = ( !\fsm|R0toR7out\(5) & ( \fsm|R0toR7out\(3) & ( (!\fsm|R0toR7out\(4) & (!\fsm|R0toR7out\(7) & (!\fsm|R0toR7out\(6) & !\fsm|R0toR7out\(1)))) ) ) ) # ( \fsm|R0toR7out\(5) & ( !\fsm|R0toR7out\(3) & ( (!\fsm|R0toR7out\(4) & 
-- (!\fsm|R0toR7out\(7) & (!\fsm|R0toR7out\(6) & !\fsm|R0toR7out\(1)))) ) ) ) # ( !\fsm|R0toR7out\(5) & ( !\fsm|R0toR7out\(3) & ( (!\fsm|R0toR7out\(1) & ((!\fsm|R0toR7out\(4) & (!\fsm|R0toR7out\(7) $ (!\fsm|R0toR7out\(6)))) # (\fsm|R0toR7out\(4) & 
-- (!\fsm|R0toR7out\(7) & !\fsm|R0toR7out\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100000000000100000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_R0toR7out\(4),
	datab => \fsm|ALT_INV_R0toR7out\(7),
	datac => \fsm|ALT_INV_R0toR7out\(6),
	datad => \fsm|ALT_INV_R0toR7out\(1),
	datae => \fsm|ALT_INV_R0toR7out\(5),
	dataf => \fsm|ALT_INV_R0toR7out\(3),
	combout => \mux0|y[0]~7_combout\);

-- Location: LABCELL_X19_Y6_N12
\mux0|y[0]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[0]~9_combout\ = ( \ir0|Q\(7) & ( \mux0|y[0]~7_combout\ & ( (!\ir0|Q\(6) & (\fsm|y_Q.T1~q\ & !\ir0|Q\(8))) ) ) ) # ( \ir0|Q\(7) & ( !\mux0|y[0]~7_combout\ & ( ((!\ir0|Q\(6) & (\fsm|y_Q.T1~q\ & !\ir0|Q\(8)))) # (\mux0|y[0]~8_combout\) ) ) ) # ( 
-- !\ir0|Q\(7) & ( !\mux0|y[0]~7_combout\ & ( \mux0|y[0]~8_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001000001111111100000000000000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(6),
	datab => \fsm|ALT_INV_y_Q.T1~q\,
	datac => \ir0|ALT_INV_Q\(8),
	datad => \mux0|ALT_INV_y[0]~8_combout\,
	datae => \ir0|ALT_INV_Q\(7),
	dataf => \mux0|ALT_INV_y[0]~7_combout\,
	combout => \mux0|y[0]~9_combout\);

-- Location: LABCELL_X19_Y6_N0
\mux0|y[0]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[0]~12_combout\ = ( !\fsm|Gout~combout\ & ( !\mux0|y[0]~9_combout\ & ( (!\fsm|R0toR7out\(0) & ((!\fsm|R0toR7out\(1) $ (\fsm|R0toR7out\(2))) # (\mux0|y[0]~6_combout\))) # (\fsm|R0toR7out\(0) & (!\fsm|R0toR7out\(1) & (!\fsm|R0toR7out\(2) & 
-- \mux0|y[0]~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000011111000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_R0toR7out\(1),
	datab => \fsm|ALT_INV_R0toR7out\(2),
	datac => \fsm|ALT_INV_R0toR7out\(0),
	datad => \mux0|ALT_INV_y[0]~6_combout\,
	datae => \fsm|ALT_INV_Gout~combout\,
	dataf => \mux0|ALT_INV_y[0]~9_combout\,
	combout => \mux0|y[0]~12_combout\);

-- Location: LABCELL_X20_Y6_N51
\fsm|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Equal1~0_combout\ = ( !\ir0|Q\(7) & ( (\ir0|Q\(8) & !\ir0|Q\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ir0|ALT_INV_Q\(8),
	datad => \ir0|ALT_INV_Q\(6),
	dataf => \ir0|ALT_INV_Q\(7),
	combout => \fsm|Equal1~0_combout\);

-- Location: LABCELL_X19_Y6_N24
\fsm|AddSub\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|AddSub~combout\ = ( \fsm|Equal1~0_combout\ & ( (\fsm|y_Q.T2~q\) # (\fsm|AddSub~combout\) ) ) # ( !\fsm|Equal1~0_combout\ & ( (\fsm|AddSub~combout\ & !\fsm|y_Q.T2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_AddSub~combout\,
	datad => \fsm|ALT_INV_y_Q.T2~q\,
	dataf => \fsm|ALT_INV_Equal1~0_combout\,
	combout => \fsm|AddSub~combout\);

-- Location: MLABCELL_X18_Y6_N9
\regA|Q[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regA|Q[0]~feeder_combout\ = \mux0|y[0]~13_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[0]~13_combout\,
	combout => \regA|Q[0]~feeder_combout\);

-- Location: LABCELL_X20_Y6_N48
\fsm|Ain\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Ain~combout\ = ( \fsm|Mux29~0_combout\ & ( (!\fsm|y_Q.T1~q\ & \fsm|Ain~combout\) ) ) # ( !\fsm|Mux29~0_combout\ & ( (\fsm|Ain~combout\) # (\fsm|y_Q.T1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111100001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_y_Q.T1~q\,
	datac => \fsm|ALT_INV_Ain~combout\,
	dataf => \fsm|ALT_INV_Mux29~0_combout\,
	combout => \fsm|Ain~combout\);

-- Location: FF_X18_Y6_N11
\regA|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regA|Q[0]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regA|Q\(0));

-- Location: LABCELL_X19_Y6_N30
\addsub0|Add0~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \addsub0|Add0~38_cout\ = CARRY(( \fsm|AddSub~combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_AddSub~combout\,
	cin => GND,
	cout => \addsub0|Add0~38_cout\);

-- Location: LABCELL_X19_Y6_N33
\addsub0|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \addsub0|Add0~1_sumout\ = SUM(( !\fsm|AddSub~combout\ $ (!\mux0|y[0]~13_combout\) ) + ( \regA|Q\(0) ) + ( \addsub0|Add0~38_cout\ ))
-- \addsub0|Add0~2\ = CARRY(( !\fsm|AddSub~combout\ $ (!\mux0|y[0]~13_combout\) ) + ( \regA|Q\(0) ) + ( \addsub0|Add0~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_AddSub~combout\,
	datab => \mux0|ALT_INV_y[0]~13_combout\,
	datac => \regA|ALT_INV_Q\(0),
	cin => \addsub0|Add0~38_cout\,
	sumout => \addsub0|Add0~1_sumout\,
	cout => \addsub0|Add0~2\);

-- Location: FF_X19_Y6_N35
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
	ena => \fsm|y_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regG|Q\(0));

-- Location: LABCELL_X21_Y7_N42
\fsm|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector5~0_combout\ = ( \fsm|Selector17~0_combout\ & ( \fsm|Selector8~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Selector8~0_combout\,
	dataf => \fsm|ALT_INV_Selector17~0_combout\,
	combout => \fsm|Selector5~0_combout\);

-- Location: FF_X19_Y6_N7
\reg0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mux0|y[0]~13_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(0));

-- Location: LABCELL_X19_Y6_N27
\mux0|y[0]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[0]~10_combout\ = ( \fsm|y_Q.T1~q\ & ( (\fsm|Gout~combout\ & (((!\ir0|Q\(7)) # (\ir0|Q\(6))) # (\ir0|Q\(8)))) ) ) # ( !\fsm|y_Q.T1~q\ & ( \fsm|Gout~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111101110000000011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(8),
	datab => \ir0|ALT_INV_Q\(6),
	datac => \ir0|ALT_INV_Q\(7),
	datad => \fsm|ALT_INV_Gout~combout\,
	dataf => \fsm|ALT_INV_y_Q.T1~q\,
	combout => \mux0|y[0]~10_combout\);

-- Location: LABCELL_X19_Y6_N18
\mux0|y[0]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[0]~11_combout\ = ( \mux0|y[0]~9_combout\ & ( !\mux0|y[0]~10_combout\ ) ) # ( !\mux0|y[0]~9_combout\ & ( !\mux0|y[0]~10_combout\ & ( (((!\fsm|R0toR7out\(0)) # (!\mux0|y[0]~6_combout\)) # (\fsm|R0toR7out\(1))) # (\fsm|R0toR7out\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_R0toR7out\(2),
	datab => \fsm|ALT_INV_R0toR7out\(1),
	datac => \fsm|ALT_INV_R0toR7out\(0),
	datad => \mux0|ALT_INV_y[0]~6_combout\,
	datae => \mux0|ALT_INV_y[0]~9_combout\,
	dataf => \mux0|ALT_INV_y[0]~10_combout\,
	combout => \mux0|y[0]~11_combout\);

-- Location: LABCELL_X19_Y6_N6
\mux0|y[0]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[0]~13_combout\ = ( \reg0|Q\(0) & ( \mux0|y[0]~11_combout\ & ( (!\mux0|y[0]~12_combout\ & ((\data_in[0]~input_o\))) # (\mux0|y[0]~12_combout\ & (\mux0|y[0]~5_combout\)) ) ) ) # ( !\reg0|Q\(0) & ( \mux0|y[0]~11_combout\ & ( (!\mux0|y[0]~12_combout\ 
-- & ((\data_in[0]~input_o\))) # (\mux0|y[0]~12_combout\ & (\mux0|y[0]~5_combout\)) ) ) ) # ( \reg0|Q\(0) & ( !\mux0|y[0]~11_combout\ & ( (\regG|Q\(0)) # (\mux0|y[0]~12_combout\) ) ) ) # ( !\reg0|Q\(0) & ( !\mux0|y[0]~11_combout\ & ( (!\mux0|y[0]~12_combout\ 
-- & \regG|Q\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[0]~5_combout\,
	datab => \mux0|ALT_INV_y[0]~12_combout\,
	datac => \regG|ALT_INV_Q\(0),
	datad => \ALT_INV_data_in[0]~input_o\,
	datae => \reg0|ALT_INV_Q\(0),
	dataf => \mux0|ALT_INV_y[0]~11_combout\,
	combout => \mux0|y[0]~13_combout\);

-- Location: FF_X21_Y7_N2
\reg0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[1]~16_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(1));

-- Location: FF_X19_Y7_N2
\regA|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[1]~16_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regA|Q\(1));

-- Location: LABCELL_X19_Y6_N36
\addsub0|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \addsub0|Add0~5_sumout\ = SUM(( !\fsm|AddSub~combout\ $ (!\mux0|y[1]~16_combout\) ) + ( \regA|Q\(1) ) + ( \addsub0|Add0~2\ ))
-- \addsub0|Add0~6\ = CARRY(( !\fsm|AddSub~combout\ $ (!\mux0|y[1]~16_combout\) ) + ( \regA|Q\(1) ) + ( \addsub0|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_AddSub~combout\,
	datac => \regA|ALT_INV_Q\(1),
	datad => \mux0|ALT_INV_y[1]~16_combout\,
	cin => \addsub0|Add0~2\,
	sumout => \addsub0|Add0~5_sumout\,
	cout => \addsub0|Add0~6\);

-- Location: FF_X19_Y6_N38
\regG|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \addsub0|Add0~5_sumout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|y_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regG|Q\(1));

-- Location: FF_X18_Y7_N29
\reg1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[1]~16_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(1));

-- Location: FF_X20_Y7_N8
\reg3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[1]~16_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(1));

-- Location: FF_X20_Y7_N35
\reg2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[1]~16_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(1));

-- Location: FF_X19_Y5_N53
\reg5|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[1]~16_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|Q\(1));

-- Location: FF_X19_Y5_N37
\reg6|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[1]~16_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|Q\(1));

-- Location: FF_X18_Y5_N28
\reg4|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[1]~16_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(1));

-- Location: LABCELL_X20_Y5_N33
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

-- Location: FF_X20_Y5_N35
\pc0|v[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pc0|Add0~5_sumout\,
	asdata => \mux0|y[1]~16_combout\,
	clrn => \reset_n~input_o\,
	sload => \fsm|Selector14~0_combout\,
	ena => \pc0|v[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc0|v\(1));

-- Location: LABCELL_X19_Y5_N39
\mux0|y[1]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[1]~14_combout\ = ( \reg4|Q\(1) & ( \pc0|v\(1) & ( (!\mux0|y[0]~0_combout\) # ((!\mux0|y[0]~1_combout\ & (\reg5|Q\(1))) # (\mux0|y[0]~1_combout\ & ((\reg6|Q\(1))))) ) ) ) # ( !\reg4|Q\(1) & ( \pc0|v\(1) & ( (!\mux0|y[0]~0_combout\ & 
-- (((\mux0|y[0]~1_combout\)))) # (\mux0|y[0]~0_combout\ & ((!\mux0|y[0]~1_combout\ & (\reg5|Q\(1))) # (\mux0|y[0]~1_combout\ & ((\reg6|Q\(1)))))) ) ) ) # ( \reg4|Q\(1) & ( !\pc0|v\(1) & ( (!\mux0|y[0]~0_combout\ & (((!\mux0|y[0]~1_combout\)))) # 
-- (\mux0|y[0]~0_combout\ & ((!\mux0|y[0]~1_combout\ & (\reg5|Q\(1))) # (\mux0|y[0]~1_combout\ & ((\reg6|Q\(1)))))) ) ) ) # ( !\reg4|Q\(1) & ( !\pc0|v\(1) & ( (\mux0|y[0]~0_combout\ & ((!\mux0|y[0]~1_combout\ & (\reg5|Q\(1))) # (\mux0|y[0]~1_combout\ & 
-- ((\reg6|Q\(1)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011110111010000001100010001110011111101110111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg5|ALT_INV_Q\(1),
	datab => \mux0|ALT_INV_y[0]~0_combout\,
	datac => \reg6|ALT_INV_Q\(1),
	datad => \mux0|ALT_INV_y[0]~1_combout\,
	datae => \reg4|ALT_INV_Q\(1),
	dataf => \pc0|ALT_INV_v\(1),
	combout => \mux0|y[1]~14_combout\);

-- Location: LABCELL_X20_Y7_N9
\mux0|y[1]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[1]~15_combout\ = ( \mux0|y[1]~14_combout\ & ( \mux0|y[0]~3_combout\ & ( (!\mux0|y[0]~4_combout\ & ((\reg2|Q\(1)))) # (\mux0|y[0]~4_combout\ & (\reg3|Q\(1))) ) ) ) # ( !\mux0|y[1]~14_combout\ & ( \mux0|y[0]~3_combout\ & ( (!\mux0|y[0]~4_combout\ & 
-- ((\reg2|Q\(1)))) # (\mux0|y[0]~4_combout\ & (\reg3|Q\(1))) ) ) ) # ( \mux0|y[1]~14_combout\ & ( !\mux0|y[0]~3_combout\ & ( (\reg1|Q\(1)) # (\mux0|y[0]~4_combout\) ) ) ) # ( !\mux0|y[1]~14_combout\ & ( !\mux0|y[0]~3_combout\ & ( (!\mux0|y[0]~4_combout\ & 
-- \reg1|Q\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010011101110111011100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[0]~4_combout\,
	datab => \reg1|ALT_INV_Q\(1),
	datac => \reg3|ALT_INV_Q\(1),
	datad => \reg2|ALT_INV_Q\(1),
	datae => \mux0|ALT_INV_y[1]~14_combout\,
	dataf => \mux0|ALT_INV_y[0]~3_combout\,
	combout => \mux0|y[1]~15_combout\);

-- Location: LABCELL_X19_Y7_N3
\mux0|y[1]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[1]~16_combout\ = ( \mux0|y[1]~15_combout\ & ( \mux0|y[0]~12_combout\ & ( (\mux0|y[0]~11_combout\) # (\reg0|Q\(1)) ) ) ) # ( !\mux0|y[1]~15_combout\ & ( \mux0|y[0]~12_combout\ & ( (\reg0|Q\(1) & !\mux0|y[0]~11_combout\) ) ) ) # ( 
-- \mux0|y[1]~15_combout\ & ( !\mux0|y[0]~12_combout\ & ( (!\mux0|y[0]~11_combout\ & ((\regG|Q\(1)))) # (\mux0|y[0]~11_combout\ & (\data_in[1]~input_o\)) ) ) ) # ( !\mux0|y[1]~15_combout\ & ( !\mux0|y[0]~12_combout\ & ( (!\mux0|y[0]~11_combout\ & 
-- ((\regG|Q\(1)))) # (\mux0|y[0]~11_combout\ & (\data_in[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data_in[1]~input_o\,
	datab => \reg0|ALT_INV_Q\(1),
	datac => \regG|ALT_INV_Q\(1),
	datad => \mux0|ALT_INV_y[0]~11_combout\,
	datae => \mux0|ALT_INV_y[1]~15_combout\,
	dataf => \mux0|ALT_INV_y[0]~12_combout\,
	combout => \mux0|y[1]~16_combout\);

-- Location: FF_X19_Y7_N38
\regA|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[2]~19_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regA|Q\(2));

-- Location: LABCELL_X19_Y6_N39
\addsub0|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \addsub0|Add0~9_sumout\ = SUM(( !\fsm|AddSub~combout\ $ (!\mux0|y[2]~19_combout\) ) + ( \regA|Q\(2) ) + ( \addsub0|Add0~6\ ))
-- \addsub0|Add0~10\ = CARRY(( !\fsm|AddSub~combout\ $ (!\mux0|y[2]~19_combout\) ) + ( \regA|Q\(2) ) + ( \addsub0|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_AddSub~combout\,
	datac => \mux0|ALT_INV_y[2]~19_combout\,
	dataf => \regA|ALT_INV_Q\(2),
	cin => \addsub0|Add0~6\,
	sumout => \addsub0|Add0~9_sumout\,
	cout => \addsub0|Add0~10\);

-- Location: FF_X19_Y6_N41
\regG|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \addsub0|Add0~9_sumout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|y_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regG|Q\(2));

-- Location: FF_X21_Y7_N5
\reg0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[2]~19_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(2));

-- Location: FF_X20_Y7_N55
\reg3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[2]~19_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(2));

-- Location: FF_X18_Y7_N20
\reg1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[2]~19_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(2));

-- Location: FF_X20_Y7_N38
\reg2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[2]~19_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(2));

-- Location: LABCELL_X19_Y5_N42
\reg5|Q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg5|Q[2]~feeder_combout\ = \mux0|y[2]~19_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mux0|ALT_INV_y[2]~19_combout\,
	combout => \reg5|Q[2]~feeder_combout\);

-- Location: FF_X19_Y5_N44
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
	ena => \fsm|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|Q\(2));

-- Location: FF_X19_Y5_N31
\reg6|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[2]~19_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|Q\(2));

-- Location: FF_X18_Y5_N58
\reg4|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[2]~19_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(2));

-- Location: LABCELL_X20_Y5_N36
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

-- Location: FF_X20_Y5_N37
\pc0|v[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pc0|Add0~9_sumout\,
	asdata => \mux0|y[2]~19_combout\,
	clrn => \reset_n~input_o\,
	sload => \fsm|Selector14~0_combout\,
	ena => \pc0|v[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc0|v\(2));

-- Location: LABCELL_X19_Y5_N33
\mux0|y[2]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[2]~17_combout\ = ( \reg4|Q\(2) & ( \pc0|v\(2) & ( (!\mux0|y[0]~0_combout\) # ((!\mux0|y[0]~1_combout\ & (\reg5|Q\(2))) # (\mux0|y[0]~1_combout\ & ((\reg6|Q\(2))))) ) ) ) # ( !\reg4|Q\(2) & ( \pc0|v\(2) & ( (!\mux0|y[0]~1_combout\ & (\reg5|Q\(2) & 
-- (\mux0|y[0]~0_combout\))) # (\mux0|y[0]~1_combout\ & (((!\mux0|y[0]~0_combout\) # (\reg6|Q\(2))))) ) ) ) # ( \reg4|Q\(2) & ( !\pc0|v\(2) & ( (!\mux0|y[0]~1_combout\ & (((!\mux0|y[0]~0_combout\)) # (\reg5|Q\(2)))) # (\mux0|y[0]~1_combout\ & 
-- (((\mux0|y[0]~0_combout\ & \reg6|Q\(2))))) ) ) ) # ( !\reg4|Q\(2) & ( !\pc0|v\(2) & ( (\mux0|y[0]~0_combout\ & ((!\mux0|y[0]~1_combout\ & (\reg5|Q\(2))) # (\mux0|y[0]~1_combout\ & ((\reg6|Q\(2)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000111101000101010011101010010010101111111001011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[0]~1_combout\,
	datab => \reg5|ALT_INV_Q\(2),
	datac => \mux0|ALT_INV_y[0]~0_combout\,
	datad => \reg6|ALT_INV_Q\(2),
	datae => \reg4|ALT_INV_Q\(2),
	dataf => \pc0|ALT_INV_v\(2),
	combout => \mux0|y[2]~17_combout\);

-- Location: LABCELL_X20_Y7_N57
\mux0|y[2]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[2]~18_combout\ = ( \mux0|y[2]~17_combout\ & ( \mux0|y[0]~3_combout\ & ( (!\mux0|y[0]~4_combout\ & ((\reg2|Q\(2)))) # (\mux0|y[0]~4_combout\ & (\reg3|Q\(2))) ) ) ) # ( !\mux0|y[2]~17_combout\ & ( \mux0|y[0]~3_combout\ & ( (!\mux0|y[0]~4_combout\ & 
-- ((\reg2|Q\(2)))) # (\mux0|y[0]~4_combout\ & (\reg3|Q\(2))) ) ) ) # ( \mux0|y[2]~17_combout\ & ( !\mux0|y[0]~3_combout\ & ( (\reg1|Q\(2)) # (\mux0|y[0]~4_combout\) ) ) ) # ( !\mux0|y[2]~17_combout\ & ( !\mux0|y[0]~3_combout\ & ( (!\mux0|y[0]~4_combout\ & 
-- \reg1|Q\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010111110101111100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[0]~4_combout\,
	datab => \reg3|ALT_INV_Q\(2),
	datac => \reg1|ALT_INV_Q\(2),
	datad => \reg2|ALT_INV_Q\(2),
	datae => \mux0|ALT_INV_y[2]~17_combout\,
	dataf => \mux0|ALT_INV_y[0]~3_combout\,
	combout => \mux0|y[2]~18_combout\);

-- Location: LABCELL_X19_Y7_N39
\mux0|y[2]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[2]~19_combout\ = ( \mux0|y[2]~18_combout\ & ( \mux0|y[0]~12_combout\ & ( (\mux0|y[0]~11_combout\) # (\reg0|Q\(2)) ) ) ) # ( !\mux0|y[2]~18_combout\ & ( \mux0|y[0]~12_combout\ & ( (\reg0|Q\(2) & !\mux0|y[0]~11_combout\) ) ) ) # ( 
-- \mux0|y[2]~18_combout\ & ( !\mux0|y[0]~12_combout\ & ( (!\mux0|y[0]~11_combout\ & (\regG|Q\(2))) # (\mux0|y[0]~11_combout\ & ((\data_in[2]~input_o\))) ) ) ) # ( !\mux0|y[2]~18_combout\ & ( !\mux0|y[0]~12_combout\ & ( (!\mux0|y[0]~11_combout\ & 
-- (\regG|Q\(2))) # (\mux0|y[0]~11_combout\ & ((\data_in[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regG|ALT_INV_Q\(2),
	datab => \ALT_INV_data_in[2]~input_o\,
	datac => \reg0|ALT_INV_Q\(2),
	datad => \mux0|ALT_INV_y[0]~11_combout\,
	datae => \mux0|ALT_INV_y[2]~18_combout\,
	dataf => \mux0|ALT_INV_y[0]~12_combout\,
	combout => \mux0|y[2]~19_combout\);

-- Location: LABCELL_X21_Y7_N30
\reg0|Q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg0|Q[3]~feeder_combout\ = \mux0|y[3]~22_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mux0|ALT_INV_y[3]~22_combout\,
	combout => \reg0|Q[3]~feeder_combout\);

-- Location: FF_X21_Y7_N32
\reg0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg0|Q[3]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(3));

-- Location: FF_X19_Y7_N20
\regA|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[3]~22_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regA|Q\(3));

-- Location: LABCELL_X19_Y6_N42
\addsub0|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \addsub0|Add0~13_sumout\ = SUM(( \regA|Q\(3) ) + ( !\fsm|AddSub~combout\ $ (!\mux0|y[3]~22_combout\) ) + ( \addsub0|Add0~10\ ))
-- \addsub0|Add0~14\ = CARRY(( \regA|Q\(3) ) + ( !\fsm|AddSub~combout\ $ (!\mux0|y[3]~22_combout\) ) + ( \addsub0|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101001011010010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_AddSub~combout\,
	datac => \mux0|ALT_INV_y[3]~22_combout\,
	datad => \regA|ALT_INV_Q\(3),
	cin => \addsub0|Add0~10\,
	sumout => \addsub0|Add0~13_sumout\,
	cout => \addsub0|Add0~14\);

-- Location: FF_X19_Y6_N44
\regG|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \addsub0|Add0~13_sumout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|y_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regG|Q\(3));

-- Location: FF_X20_Y7_N14
\reg3|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[3]~22_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(3));

-- Location: FF_X20_Y7_N32
\reg2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[3]~22_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(3));

-- Location: FF_X18_Y7_N11
\reg1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[3]~22_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(3));

-- Location: FF_X19_Y5_N14
\reg6|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[3]~22_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|Q\(3));

-- Location: LABCELL_X19_Y5_N45
\reg5|Q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg5|Q[3]~feeder_combout\ = \mux0|y[3]~22_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mux0|ALT_INV_y[3]~22_combout\,
	combout => \reg5|Q[3]~feeder_combout\);

-- Location: FF_X19_Y5_N47
\reg5|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg5|Q[3]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|Q\(3));

-- Location: MLABCELL_X18_Y5_N21
\reg4|Q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|Q[3]~feeder_combout\ = \mux0|y[3]~22_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mux0|ALT_INV_y[3]~22_combout\,
	combout => \reg4|Q[3]~feeder_combout\);

-- Location: FF_X18_Y5_N22
\reg4|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg4|Q[3]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(3));

-- Location: LABCELL_X20_Y5_N39
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

-- Location: FF_X20_Y5_N41
\pc0|v[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pc0|Add0~13_sumout\,
	asdata => \mux0|y[3]~22_combout\,
	clrn => \reset_n~input_o\,
	sload => \fsm|Selector14~0_combout\,
	ena => \pc0|v[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc0|v\(3));

-- Location: LABCELL_X19_Y5_N15
\mux0|y[3]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[3]~20_combout\ = ( \reg4|Q\(3) & ( \pc0|v\(3) & ( (!\mux0|y[0]~0_combout\) # ((!\mux0|y[0]~1_combout\ & ((\reg5|Q\(3)))) # (\mux0|y[0]~1_combout\ & (\reg6|Q\(3)))) ) ) ) # ( !\reg4|Q\(3) & ( \pc0|v\(3) & ( (!\mux0|y[0]~0_combout\ & 
-- (((\mux0|y[0]~1_combout\)))) # (\mux0|y[0]~0_combout\ & ((!\mux0|y[0]~1_combout\ & ((\reg5|Q\(3)))) # (\mux0|y[0]~1_combout\ & (\reg6|Q\(3))))) ) ) ) # ( \reg4|Q\(3) & ( !\pc0|v\(3) & ( (!\mux0|y[0]~0_combout\ & (((!\mux0|y[0]~1_combout\)))) # 
-- (\mux0|y[0]~0_combout\ & ((!\mux0|y[0]~1_combout\ & ((\reg5|Q\(3)))) # (\mux0|y[0]~1_combout\ & (\reg6|Q\(3))))) ) ) ) # ( !\reg4|Q\(3) & ( !\pc0|v\(3) & ( (\mux0|y[0]~0_combout\ & ((!\mux0|y[0]~1_combout\ & ((\reg5|Q\(3)))) # (\mux0|y[0]~1_combout\ & 
-- (\reg6|Q\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001101011110001000100000101101110111010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[0]~0_combout\,
	datab => \reg6|ALT_INV_Q\(3),
	datac => \reg5|ALT_INV_Q\(3),
	datad => \mux0|ALT_INV_y[0]~1_combout\,
	datae => \reg4|ALT_INV_Q\(3),
	dataf => \pc0|ALT_INV_v\(3),
	combout => \mux0|y[3]~20_combout\);

-- Location: LABCELL_X20_Y7_N15
\mux0|y[3]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[3]~21_combout\ = ( \mux0|y[3]~20_combout\ & ( \mux0|y[0]~3_combout\ & ( (!\mux0|y[0]~4_combout\ & ((\reg2|Q\(3)))) # (\mux0|y[0]~4_combout\ & (\reg3|Q\(3))) ) ) ) # ( !\mux0|y[3]~20_combout\ & ( \mux0|y[0]~3_combout\ & ( (!\mux0|y[0]~4_combout\ & 
-- ((\reg2|Q\(3)))) # (\mux0|y[0]~4_combout\ & (\reg3|Q\(3))) ) ) ) # ( \mux0|y[3]~20_combout\ & ( !\mux0|y[0]~3_combout\ & ( (\reg1|Q\(3)) # (\mux0|y[0]~4_combout\) ) ) ) # ( !\mux0|y[3]~20_combout\ & ( !\mux0|y[0]~3_combout\ & ( (!\mux0|y[0]~4_combout\ & 
-- \reg1|Q\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010010101011111111100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[0]~4_combout\,
	datab => \reg3|ALT_INV_Q\(3),
	datac => \reg2|ALT_INV_Q\(3),
	datad => \reg1|ALT_INV_Q\(3),
	datae => \mux0|ALT_INV_y[3]~20_combout\,
	dataf => \mux0|ALT_INV_y[0]~3_combout\,
	combout => \mux0|y[3]~21_combout\);

-- Location: LABCELL_X19_Y7_N21
\mux0|y[3]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[3]~22_combout\ = ( \regG|Q\(3) & ( \mux0|y[3]~21_combout\ & ( (!\mux0|y[0]~12_combout\ & (((!\mux0|y[0]~11_combout\)) # (\data_in[3]~input_o\))) # (\mux0|y[0]~12_combout\ & (((\mux0|y[0]~11_combout\) # (\reg0|Q\(3))))) ) ) ) # ( !\regG|Q\(3) & ( 
-- \mux0|y[3]~21_combout\ & ( (!\mux0|y[0]~12_combout\ & (\data_in[3]~input_o\ & ((\mux0|y[0]~11_combout\)))) # (\mux0|y[0]~12_combout\ & (((\mux0|y[0]~11_combout\) # (\reg0|Q\(3))))) ) ) ) # ( \regG|Q\(3) & ( !\mux0|y[3]~21_combout\ & ( 
-- (!\mux0|y[0]~12_combout\ & (((!\mux0|y[0]~11_combout\)) # (\data_in[3]~input_o\))) # (\mux0|y[0]~12_combout\ & (((\reg0|Q\(3) & !\mux0|y[0]~11_combout\)))) ) ) ) # ( !\regG|Q\(3) & ( !\mux0|y[3]~21_combout\ & ( (!\mux0|y[0]~12_combout\ & 
-- (\data_in[3]~input_o\ & ((\mux0|y[0]~11_combout\)))) # (\mux0|y[0]~12_combout\ & (((\reg0|Q\(3) & !\mux0|y[0]~11_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010000111100110101000000000011010111111111001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data_in[3]~input_o\,
	datab => \reg0|ALT_INV_Q\(3),
	datac => \mux0|ALT_INV_y[0]~12_combout\,
	datad => \mux0|ALT_INV_y[0]~11_combout\,
	datae => \regG|ALT_INV_Q\(3),
	dataf => \mux0|ALT_INV_y[3]~21_combout\,
	combout => \mux0|y[3]~22_combout\);

-- Location: FF_X19_Y6_N17
\reg0|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[4]~25_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(4));

-- Location: FF_X19_Y7_N44
\regA|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[4]~25_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regA|Q\(4));

-- Location: LABCELL_X19_Y6_N45
\addsub0|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \addsub0|Add0~17_sumout\ = SUM(( !\fsm|AddSub~combout\ $ (!\mux0|y[4]~25_combout\) ) + ( \regA|Q\(4) ) + ( \addsub0|Add0~14\ ))
-- \addsub0|Add0~18\ = CARRY(( !\fsm|AddSub~combout\ $ (!\mux0|y[4]~25_combout\) ) + ( \regA|Q\(4) ) + ( \addsub0|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_AddSub~combout\,
	datac => \regA|ALT_INV_Q\(4),
	datad => \mux0|ALT_INV_y[4]~25_combout\,
	cin => \addsub0|Add0~14\,
	sumout => \addsub0|Add0~17_sumout\,
	cout => \addsub0|Add0~18\);

-- Location: FF_X19_Y6_N47
\regG|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \addsub0|Add0~17_sumout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|y_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regG|Q\(4));

-- Location: FF_X20_Y7_N50
\reg3|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[4]~25_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(4));

-- Location: LABCELL_X20_Y7_N33
\reg2|Q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg2|Q[4]~feeder_combout\ = \mux0|y[4]~25_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[4]~25_combout\,
	combout => \reg2|Q[4]~feeder_combout\);

-- Location: FF_X20_Y7_N34
\reg2|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg2|Q[4]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(4));

-- Location: FF_X18_Y7_N56
\reg1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[4]~25_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(4));

-- Location: LABCELL_X19_Y5_N18
\reg5|Q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg5|Q[4]~feeder_combout\ = \mux0|y[4]~25_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mux0|ALT_INV_y[4]~25_combout\,
	combout => \reg5|Q[4]~feeder_combout\);

-- Location: FF_X19_Y5_N19
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
	ena => \fsm|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|Q\(4));

-- Location: FF_X19_Y5_N2
\reg6|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[4]~25_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|Q\(4));

-- Location: LABCELL_X20_Y5_N42
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

-- Location: FF_X20_Y5_N44
\pc0|v[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pc0|Add0~17_sumout\,
	asdata => \mux0|y[4]~25_combout\,
	clrn => \reset_n~input_o\,
	sload => \fsm|Selector14~0_combout\,
	ena => \pc0|v[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc0|v\(4));

-- Location: MLABCELL_X18_Y6_N12
\reg4|Q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|Q[4]~feeder_combout\ = \mux0|y[4]~25_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mux0|ALT_INV_y[4]~25_combout\,
	combout => \reg4|Q[4]~feeder_combout\);

-- Location: FF_X18_Y6_N13
\reg4|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg4|Q[4]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(4));

-- Location: LABCELL_X19_Y5_N3
\mux0|y[4]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[4]~23_combout\ = ( \pc0|v\(4) & ( \reg4|Q\(4) & ( (!\mux0|y[0]~0_combout\) # ((!\mux0|y[0]~1_combout\ & (\reg5|Q\(4))) # (\mux0|y[0]~1_combout\ & ((\reg6|Q\(4))))) ) ) ) # ( !\pc0|v\(4) & ( \reg4|Q\(4) & ( (!\mux0|y[0]~1_combout\ & 
-- ((!\mux0|y[0]~0_combout\) # ((\reg5|Q\(4))))) # (\mux0|y[0]~1_combout\ & (\mux0|y[0]~0_combout\ & ((\reg6|Q\(4))))) ) ) ) # ( \pc0|v\(4) & ( !\reg4|Q\(4) & ( (!\mux0|y[0]~1_combout\ & (\mux0|y[0]~0_combout\ & (\reg5|Q\(4)))) # (\mux0|y[0]~1_combout\ & 
-- ((!\mux0|y[0]~0_combout\) # ((\reg6|Q\(4))))) ) ) ) # ( !\pc0|v\(4) & ( !\reg4|Q\(4) & ( (\mux0|y[0]~0_combout\ & ((!\mux0|y[0]~1_combout\ & (\reg5|Q\(4))) # (\mux0|y[0]~1_combout\ & ((\reg6|Q\(4)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011110001010100110111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[0]~1_combout\,
	datab => \mux0|ALT_INV_y[0]~0_combout\,
	datac => \reg5|ALT_INV_Q\(4),
	datad => \reg6|ALT_INV_Q\(4),
	datae => \pc0|ALT_INV_v\(4),
	dataf => \reg4|ALT_INV_Q\(4),
	combout => \mux0|y[4]~23_combout\);

-- Location: LABCELL_X20_Y7_N51
\mux0|y[4]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[4]~24_combout\ = ( \reg1|Q\(4) & ( \mux0|y[4]~23_combout\ & ( (!\mux0|y[0]~3_combout\) # ((!\mux0|y[0]~4_combout\ & ((\reg2|Q\(4)))) # (\mux0|y[0]~4_combout\ & (\reg3|Q\(4)))) ) ) ) # ( !\reg1|Q\(4) & ( \mux0|y[4]~23_combout\ & ( 
-- (!\mux0|y[0]~3_combout\ & (((\mux0|y[0]~4_combout\)))) # (\mux0|y[0]~3_combout\ & ((!\mux0|y[0]~4_combout\ & ((\reg2|Q\(4)))) # (\mux0|y[0]~4_combout\ & (\reg3|Q\(4))))) ) ) ) # ( \reg1|Q\(4) & ( !\mux0|y[4]~23_combout\ & ( (!\mux0|y[0]~3_combout\ & 
-- (((!\mux0|y[0]~4_combout\)))) # (\mux0|y[0]~3_combout\ & ((!\mux0|y[0]~4_combout\ & ((\reg2|Q\(4)))) # (\mux0|y[0]~4_combout\ & (\reg3|Q\(4))))) ) ) ) # ( !\reg1|Q\(4) & ( !\mux0|y[4]~23_combout\ & ( (\mux0|y[0]~3_combout\ & ((!\mux0|y[0]~4_combout\ & 
-- ((\reg2|Q\(4)))) # (\mux0|y[0]~4_combout\ & (\reg3|Q\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000101111100110000010100000011111101011111001111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg3|ALT_INV_Q\(4),
	datab => \reg2|ALT_INV_Q\(4),
	datac => \mux0|ALT_INV_y[0]~3_combout\,
	datad => \mux0|ALT_INV_y[0]~4_combout\,
	datae => \reg1|ALT_INV_Q\(4),
	dataf => \mux0|ALT_INV_y[4]~23_combout\,
	combout => \mux0|y[4]~24_combout\);

-- Location: LABCELL_X19_Y7_N45
\mux0|y[4]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[4]~25_combout\ = ( \mux0|y[0]~11_combout\ & ( \mux0|y[4]~24_combout\ & ( (\mux0|y[0]~12_combout\) # (\data_in[4]~input_o\) ) ) ) # ( !\mux0|y[0]~11_combout\ & ( \mux0|y[4]~24_combout\ & ( (!\mux0|y[0]~12_combout\ & ((\regG|Q\(4)))) # 
-- (\mux0|y[0]~12_combout\ & (\reg0|Q\(4))) ) ) ) # ( \mux0|y[0]~11_combout\ & ( !\mux0|y[4]~24_combout\ & ( (\data_in[4]~input_o\ & !\mux0|y[0]~12_combout\) ) ) ) # ( !\mux0|y[0]~11_combout\ & ( !\mux0|y[4]~24_combout\ & ( (!\mux0|y[0]~12_combout\ & 
-- ((\regG|Q\(4)))) # (\mux0|y[0]~12_combout\ & (\reg0|Q\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011010100000101000000000011111100110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data_in[4]~input_o\,
	datab => \reg0|ALT_INV_Q\(4),
	datac => \mux0|ALT_INV_y[0]~12_combout\,
	datad => \regG|ALT_INV_Q\(4),
	datae => \mux0|ALT_INV_y[0]~11_combout\,
	dataf => \mux0|ALT_INV_y[4]~24_combout\,
	combout => \mux0|y[4]~25_combout\);

-- Location: FF_X19_Y7_N26
\regA|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[5]~28_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regA|Q\(5));

-- Location: LABCELL_X19_Y6_N48
\addsub0|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \addsub0|Add0~21_sumout\ = SUM(( !\fsm|AddSub~combout\ $ (!\mux0|y[5]~28_combout\) ) + ( \regA|Q\(5) ) + ( \addsub0|Add0~18\ ))
-- \addsub0|Add0~22\ = CARRY(( !\fsm|AddSub~combout\ $ (!\mux0|y[5]~28_combout\) ) + ( \regA|Q\(5) ) + ( \addsub0|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_AddSub~combout\,
	datac => \regA|ALT_INV_Q\(5),
	datad => \mux0|ALT_INV_y[5]~28_combout\,
	cin => \addsub0|Add0~18\,
	sumout => \addsub0|Add0~21_sumout\,
	cout => \addsub0|Add0~22\);

-- Location: FF_X19_Y6_N50
\regG|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \addsub0|Add0~21_sumout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|y_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regG|Q\(5));

-- Location: FF_X19_Y6_N23
\reg0|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[5]~28_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(5));

-- Location: FF_X18_Y7_N38
\reg3|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[5]~28_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(5));

-- Location: FF_X20_Y7_N47
\reg2|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[5]~28_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(5));

-- Location: FF_X18_Y7_N8
\reg1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[5]~28_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(5));

-- Location: FF_X19_Y5_N50
\reg5|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[5]~28_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|Q\(5));

-- Location: FF_X18_Y5_N43
\reg4|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[5]~28_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(5));

-- Location: FF_X19_Y5_N56
\reg6|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[5]~28_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|Q\(5));

-- Location: LABCELL_X20_Y5_N45
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

-- Location: FF_X20_Y5_N47
\pc0|v[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pc0|Add0~21_sumout\,
	asdata => \mux0|y[5]~28_combout\,
	clrn => \reset_n~input_o\,
	sload => \fsm|Selector14~0_combout\,
	ena => \pc0|v[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc0|v\(5));

-- Location: LABCELL_X19_Y5_N57
\mux0|y[5]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[5]~26_combout\ = ( \reg6|Q\(5) & ( \pc0|v\(5) & ( ((!\mux0|y[0]~0_combout\ & ((\reg4|Q\(5)))) # (\mux0|y[0]~0_combout\ & (\reg5|Q\(5)))) # (\mux0|y[0]~1_combout\) ) ) ) # ( !\reg6|Q\(5) & ( \pc0|v\(5) & ( (!\mux0|y[0]~0_combout\ & 
-- (((\mux0|y[0]~1_combout\) # (\reg4|Q\(5))))) # (\mux0|y[0]~0_combout\ & (\reg5|Q\(5) & ((!\mux0|y[0]~1_combout\)))) ) ) ) # ( \reg6|Q\(5) & ( !\pc0|v\(5) & ( (!\mux0|y[0]~0_combout\ & (((\reg4|Q\(5) & !\mux0|y[0]~1_combout\)))) # (\mux0|y[0]~0_combout\ & 
-- (((\mux0|y[0]~1_combout\)) # (\reg5|Q\(5)))) ) ) ) # ( !\reg6|Q\(5) & ( !\pc0|v\(5) & ( (!\mux0|y[0]~1_combout\ & ((!\mux0|y[0]~0_combout\ & ((\reg4|Q\(5)))) # (\mux0|y[0]~0_combout\ & (\reg5|Q\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000111010011001100011101110011000001110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg5|ALT_INV_Q\(5),
	datab => \mux0|ALT_INV_y[0]~0_combout\,
	datac => \reg4|ALT_INV_Q\(5),
	datad => \mux0|ALT_INV_y[0]~1_combout\,
	datae => \reg6|ALT_INV_Q\(5),
	dataf => \pc0|ALT_INV_v\(5),
	combout => \mux0|y[5]~26_combout\);

-- Location: MLABCELL_X18_Y7_N39
\mux0|y[5]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[5]~27_combout\ = ( \mux0|y[5]~26_combout\ & ( \mux0|y[0]~4_combout\ & ( (!\mux0|y[0]~3_combout\) # (\reg3|Q\(5)) ) ) ) # ( !\mux0|y[5]~26_combout\ & ( \mux0|y[0]~4_combout\ & ( (\reg3|Q\(5) & \mux0|y[0]~3_combout\) ) ) ) # ( \mux0|y[5]~26_combout\ 
-- & ( !\mux0|y[0]~4_combout\ & ( (!\mux0|y[0]~3_combout\ & ((\reg1|Q\(5)))) # (\mux0|y[0]~3_combout\ & (\reg2|Q\(5))) ) ) ) # ( !\mux0|y[5]~26_combout\ & ( !\mux0|y[0]~4_combout\ & ( (!\mux0|y[0]~3_combout\ & ((\reg1|Q\(5)))) # (\mux0|y[0]~3_combout\ & 
-- (\reg2|Q\(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100000000010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg3|ALT_INV_Q\(5),
	datab => \reg2|ALT_INV_Q\(5),
	datac => \reg1|ALT_INV_Q\(5),
	datad => \mux0|ALT_INV_y[0]~3_combout\,
	datae => \mux0|ALT_INV_y[5]~26_combout\,
	dataf => \mux0|ALT_INV_y[0]~4_combout\,
	combout => \mux0|y[5]~27_combout\);

-- Location: LABCELL_X19_Y7_N27
\mux0|y[5]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[5]~28_combout\ = ( \reg0|Q\(5) & ( \mux0|y[5]~27_combout\ & ( ((!\mux0|y[0]~11_combout\ & ((\regG|Q\(5)))) # (\mux0|y[0]~11_combout\ & (\data_in[5]~input_o\))) # (\mux0|y[0]~12_combout\) ) ) ) # ( !\reg0|Q\(5) & ( \mux0|y[5]~27_combout\ & ( 
-- (!\mux0|y[0]~12_combout\ & ((!\mux0|y[0]~11_combout\ & ((\regG|Q\(5)))) # (\mux0|y[0]~11_combout\ & (\data_in[5]~input_o\)))) # (\mux0|y[0]~12_combout\ & (((\mux0|y[0]~11_combout\)))) ) ) ) # ( \reg0|Q\(5) & ( !\mux0|y[5]~27_combout\ & ( 
-- (!\mux0|y[0]~12_combout\ & ((!\mux0|y[0]~11_combout\ & ((\regG|Q\(5)))) # (\mux0|y[0]~11_combout\ & (\data_in[5]~input_o\)))) # (\mux0|y[0]~12_combout\ & (((!\mux0|y[0]~11_combout\)))) ) ) ) # ( !\reg0|Q\(5) & ( !\mux0|y[5]~27_combout\ & ( 
-- (!\mux0|y[0]~12_combout\ & ((!\mux0|y[0]~11_combout\ & ((\regG|Q\(5)))) # (\mux0|y[0]~11_combout\ & (\data_in[5]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000100010010111110010001000001010011101110101111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[0]~12_combout\,
	datab => \ALT_INV_data_in[5]~input_o\,
	datac => \regG|ALT_INV_Q\(5),
	datad => \mux0|ALT_INV_y[0]~11_combout\,
	datae => \reg0|ALT_INV_Q\(5),
	dataf => \mux0|ALT_INV_y[5]~27_combout\,
	combout => \mux0|y[5]~28_combout\);

-- Location: FF_X18_Y5_N16
\reg4|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[6]~31_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(6));

-- Location: FF_X19_Y5_N23
\reg5|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[6]~31_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|Q\(6));

-- Location: LABCELL_X20_Y5_N48
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

-- Location: FF_X20_Y5_N50
\pc0|v[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pc0|Add0~25_sumout\,
	asdata => \mux0|y[6]~31_combout\,
	clrn => \reset_n~input_o\,
	sload => \fsm|Selector14~0_combout\,
	ena => \pc0|v[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc0|v\(6));

-- Location: FF_X19_Y5_N26
\reg6|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[6]~31_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|Q\(6));

-- Location: LABCELL_X19_Y5_N27
\mux0|y[6]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[6]~29_combout\ = ( \pc0|v\(6) & ( \reg6|Q\(6) & ( ((!\mux0|y[0]~0_combout\ & (\reg4|Q\(6))) # (\mux0|y[0]~0_combout\ & ((\reg5|Q\(6))))) # (\mux0|y[0]~1_combout\) ) ) ) # ( !\pc0|v\(6) & ( \reg6|Q\(6) & ( (!\mux0|y[0]~1_combout\ & 
-- ((!\mux0|y[0]~0_combout\ & (\reg4|Q\(6))) # (\mux0|y[0]~0_combout\ & ((\reg5|Q\(6)))))) # (\mux0|y[0]~1_combout\ & (\mux0|y[0]~0_combout\)) ) ) ) # ( \pc0|v\(6) & ( !\reg6|Q\(6) & ( (!\mux0|y[0]~1_combout\ & ((!\mux0|y[0]~0_combout\ & (\reg4|Q\(6))) # 
-- (\mux0|y[0]~0_combout\ & ((\reg5|Q\(6)))))) # (\mux0|y[0]~1_combout\ & (!\mux0|y[0]~0_combout\)) ) ) ) # ( !\pc0|v\(6) & ( !\reg6|Q\(6) & ( (!\mux0|y[0]~1_combout\ & ((!\mux0|y[0]~0_combout\ & (\reg4|Q\(6))) # (\mux0|y[0]~0_combout\ & ((\reg5|Q\(6)))))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010010011000110111000011001001110110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[0]~1_combout\,
	datab => \mux0|ALT_INV_y[0]~0_combout\,
	datac => \reg4|ALT_INV_Q\(6),
	datad => \reg5|ALT_INV_Q\(6),
	datae => \pc0|ALT_INV_v\(6),
	dataf => \reg6|ALT_INV_Q\(6),
	combout => \mux0|y[6]~29_combout\);

-- Location: MLABCELL_X18_Y7_N15
\reg1|Q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg1|Q[6]~feeder_combout\ = \mux0|y[6]~31_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[6]~31_combout\,
	combout => \reg1|Q[6]~feeder_combout\);

-- Location: FF_X18_Y7_N17
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
	ena => \fsm|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(6));

-- Location: FF_X20_Y7_N40
\reg2|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[6]~31_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(6));

-- Location: FF_X18_Y7_N43
\reg3|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[6]~31_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(6));

-- Location: MLABCELL_X18_Y7_N45
\mux0|y[6]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[6]~30_combout\ = ( \reg3|Q\(6) & ( \mux0|y[0]~4_combout\ & ( (\mux0|y[6]~29_combout\) # (\mux0|y[0]~3_combout\) ) ) ) # ( !\reg3|Q\(6) & ( \mux0|y[0]~4_combout\ & ( (!\mux0|y[0]~3_combout\ & \mux0|y[6]~29_combout\) ) ) ) # ( \reg3|Q\(6) & ( 
-- !\mux0|y[0]~4_combout\ & ( (!\mux0|y[0]~3_combout\ & (\reg1|Q\(6))) # (\mux0|y[0]~3_combout\ & ((\reg2|Q\(6)))) ) ) ) # ( !\reg3|Q\(6) & ( !\mux0|y[0]~4_combout\ & ( (!\mux0|y[0]~3_combout\ & (\reg1|Q\(6))) # (\mux0|y[0]~3_combout\ & ((\reg2|Q\(6)))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100100010001000100111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[0]~3_combout\,
	datab => \mux0|ALT_INV_y[6]~29_combout\,
	datac => \reg1|ALT_INV_Q\(6),
	datad => \reg2|ALT_INV_Q\(6),
	datae => \reg3|ALT_INV_Q\(6),
	dataf => \mux0|ALT_INV_y[0]~4_combout\,
	combout => \mux0|y[6]~30_combout\);

-- Location: FF_X19_Y7_N8
\regA|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mux0|y[6]~31_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regA|Q\(6));

-- Location: LABCELL_X19_Y6_N51
\addsub0|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \addsub0|Add0~25_sumout\ = SUM(( !\fsm|AddSub~combout\ $ (!\mux0|y[6]~31_combout\) ) + ( \regA|Q\(6) ) + ( \addsub0|Add0~22\ ))
-- \addsub0|Add0~26\ = CARRY(( !\fsm|AddSub~combout\ $ (!\mux0|y[6]~31_combout\) ) + ( \regA|Q\(6) ) + ( \addsub0|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_AddSub~combout\,
	datad => \mux0|ALT_INV_y[6]~31_combout\,
	dataf => \regA|ALT_INV_Q\(6),
	cin => \addsub0|Add0~22\,
	sumout => \addsub0|Add0~25_sumout\,
	cout => \addsub0|Add0~26\);

-- Location: FF_X19_Y6_N53
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
	ena => \fsm|y_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regG|Q\(6));

-- Location: LABCELL_X21_Y7_N48
\reg0|Q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg0|Q[6]~feeder_combout\ = ( \mux0|y[6]~31_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y[6]~31_combout\,
	combout => \reg0|Q[6]~feeder_combout\);

-- Location: FF_X21_Y7_N50
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
	ena => \fsm|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(6));

-- Location: LABCELL_X19_Y7_N6
\mux0|y[6]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[6]~31_combout\ = ( \mux0|y[0]~11_combout\ & ( \mux0|y[0]~12_combout\ & ( \mux0|y[6]~30_combout\ ) ) ) # ( !\mux0|y[0]~11_combout\ & ( \mux0|y[0]~12_combout\ & ( \reg0|Q\(6) ) ) ) # ( \mux0|y[0]~11_combout\ & ( !\mux0|y[0]~12_combout\ & ( 
-- \data_in[6]~input_o\ ) ) ) # ( !\mux0|y[0]~11_combout\ & ( !\mux0|y[0]~12_combout\ & ( \regG|Q\(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data_in[6]~input_o\,
	datab => \mux0|ALT_INV_y[6]~30_combout\,
	datac => \regG|ALT_INV_Q\(6),
	datad => \reg0|ALT_INV_Q\(6),
	datae => \mux0|ALT_INV_y[0]~11_combout\,
	dataf => \mux0|ALT_INV_y[0]~12_combout\,
	combout => \mux0|y[6]~31_combout\);

-- Location: FF_X19_Y5_N8
\reg6|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[7]~34_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|Q\(7));

-- Location: LABCELL_X20_Y5_N51
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

-- Location: FF_X20_Y5_N53
\pc0|v[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pc0|Add0~29_sumout\,
	asdata => \mux0|y[7]~34_combout\,
	clrn => \reset_n~input_o\,
	sload => \fsm|Selector14~0_combout\,
	ena => \pc0|v[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc0|v\(7));

-- Location: FF_X19_Y5_N43
\reg5|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[7]~34_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|Q\(7));

-- Location: MLABCELL_X18_Y6_N33
\reg4|Q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|Q[7]~feeder_combout\ = \mux0|y[7]~34_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[7]~34_combout\,
	combout => \reg4|Q[7]~feeder_combout\);

-- Location: FF_X18_Y6_N34
\reg4|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg4|Q[7]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(7));

-- Location: LABCELL_X19_Y5_N9
\mux0|y[7]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[7]~32_combout\ = ( \reg5|Q\(7) & ( \reg4|Q\(7) & ( (!\mux0|y[0]~1_combout\) # ((!\mux0|y[0]~0_combout\ & ((\pc0|v\(7)))) # (\mux0|y[0]~0_combout\ & (\reg6|Q\(7)))) ) ) ) # ( !\reg5|Q\(7) & ( \reg4|Q\(7) & ( (!\mux0|y[0]~1_combout\ & 
-- (!\mux0|y[0]~0_combout\)) # (\mux0|y[0]~1_combout\ & ((!\mux0|y[0]~0_combout\ & ((\pc0|v\(7)))) # (\mux0|y[0]~0_combout\ & (\reg6|Q\(7))))) ) ) ) # ( \reg5|Q\(7) & ( !\reg4|Q\(7) & ( (!\mux0|y[0]~1_combout\ & (\mux0|y[0]~0_combout\)) # 
-- (\mux0|y[0]~1_combout\ & ((!\mux0|y[0]~0_combout\ & ((\pc0|v\(7)))) # (\mux0|y[0]~0_combout\ & (\reg6|Q\(7))))) ) ) ) # ( !\reg5|Q\(7) & ( !\reg4|Q\(7) & ( (\mux0|y[0]~1_combout\ & ((!\mux0|y[0]~0_combout\ & ((\pc0|v\(7)))) # (\mux0|y[0]~0_combout\ & 
-- (\reg6|Q\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101001000110110011110001001110011011010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[0]~1_combout\,
	datab => \mux0|ALT_INV_y[0]~0_combout\,
	datac => \reg6|ALT_INV_Q\(7),
	datad => \pc0|ALT_INV_v\(7),
	datae => \reg5|ALT_INV_Q\(7),
	dataf => \reg4|ALT_INV_Q\(7),
	combout => \mux0|y[7]~32_combout\);

-- Location: FF_X18_Y7_N14
\reg1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[7]~34_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(7));

-- Location: FF_X18_Y7_N50
\reg3|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[7]~34_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(7));

-- Location: LABCELL_X17_Y6_N48
\reg2|Q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg2|Q[7]~feeder_combout\ = \mux0|y[7]~34_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mux0|ALT_INV_y[7]~34_combout\,
	combout => \reg2|Q[7]~feeder_combout\);

-- Location: FF_X17_Y6_N49
\reg2|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg2|Q[7]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(7));

-- Location: MLABCELL_X18_Y7_N51
\mux0|y[7]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[7]~33_combout\ = ( \mux0|y[0]~3_combout\ & ( \reg2|Q\(7) & ( (!\mux0|y[0]~4_combout\) # (\reg3|Q\(7)) ) ) ) # ( !\mux0|y[0]~3_combout\ & ( \reg2|Q\(7) & ( (!\mux0|y[0]~4_combout\ & ((\reg1|Q\(7)))) # (\mux0|y[0]~4_combout\ & 
-- (\mux0|y[7]~32_combout\)) ) ) ) # ( \mux0|y[0]~3_combout\ & ( !\reg2|Q\(7) & ( (\mux0|y[0]~4_combout\ & \reg3|Q\(7)) ) ) ) # ( !\mux0|y[0]~3_combout\ & ( !\reg2|Q\(7) & ( (!\mux0|y[0]~4_combout\ & ((\reg1|Q\(7)))) # (\mux0|y[0]~4_combout\ & 
-- (\mux0|y[7]~32_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000000000101010100011011000110111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[0]~4_combout\,
	datab => \mux0|ALT_INV_y[7]~32_combout\,
	datac => \reg1|ALT_INV_Q\(7),
	datad => \reg3|ALT_INV_Q\(7),
	datae => \mux0|ALT_INV_y[0]~3_combout\,
	dataf => \reg2|ALT_INV_Q\(7),
	combout => \mux0|y[7]~33_combout\);

-- Location: FF_X18_Y6_N38
\regA|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mux0|y[7]~34_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regA|Q\(7));

-- Location: LABCELL_X19_Y6_N54
\addsub0|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \addsub0|Add0~29_sumout\ = SUM(( !\fsm|AddSub~combout\ $ (!\mux0|y[7]~34_combout\) ) + ( \regA|Q\(7) ) + ( \addsub0|Add0~26\ ))
-- \addsub0|Add0~30\ = CARRY(( !\fsm|AddSub~combout\ $ (!\mux0|y[7]~34_combout\) ) + ( \regA|Q\(7) ) + ( \addsub0|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_AddSub~combout\,
	datad => \mux0|ALT_INV_y[7]~34_combout\,
	dataf => \regA|ALT_INV_Q\(7),
	cin => \addsub0|Add0~26\,
	sumout => \addsub0|Add0~29_sumout\,
	cout => \addsub0|Add0~30\);

-- Location: FF_X19_Y6_N56
\regG|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \addsub0|Add0~29_sumout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|y_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regG|Q\(7));

-- Location: FF_X19_Y6_N5
\reg0|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[7]~34_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(7));

-- Location: MLABCELL_X18_Y6_N36
\mux0|y[7]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[7]~34_combout\ = ( \regG|Q\(7) & ( \reg0|Q\(7) & ( (!\mux0|y[0]~11_combout\) # ((!\mux0|y[0]~12_combout\ & ((\data_in[7]~input_o\))) # (\mux0|y[0]~12_combout\ & (\mux0|y[7]~33_combout\))) ) ) ) # ( !\regG|Q\(7) & ( \reg0|Q\(7) & ( 
-- (!\mux0|y[0]~11_combout\ & (((\mux0|y[0]~12_combout\)))) # (\mux0|y[0]~11_combout\ & ((!\mux0|y[0]~12_combout\ & ((\data_in[7]~input_o\))) # (\mux0|y[0]~12_combout\ & (\mux0|y[7]~33_combout\)))) ) ) ) # ( \regG|Q\(7) & ( !\reg0|Q\(7) & ( 
-- (!\mux0|y[0]~11_combout\ & (((!\mux0|y[0]~12_combout\)))) # (\mux0|y[0]~11_combout\ & ((!\mux0|y[0]~12_combout\ & ((\data_in[7]~input_o\))) # (\mux0|y[0]~12_combout\ & (\mux0|y[7]~33_combout\)))) ) ) ) # ( !\regG|Q\(7) & ( !\reg0|Q\(7) & ( 
-- (\mux0|y[0]~11_combout\ & ((!\mux0|y[0]~12_combout\ & ((\data_in[7]~input_o\))) # (\mux0|y[0]~12_combout\ & (\mux0|y[7]~33_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001110000011111000100001101001111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[7]~33_combout\,
	datab => \mux0|ALT_INV_y[0]~11_combout\,
	datac => \mux0|ALT_INV_y[0]~12_combout\,
	datad => \ALT_INV_data_in[7]~input_o\,
	datae => \regG|ALT_INV_Q\(7),
	dataf => \reg0|ALT_INV_Q\(7),
	combout => \mux0|y[7]~34_combout\);

-- Location: FF_X18_Y5_N32
\reg5|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[8]~37_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|Q\(8));

-- Location: LABCELL_X17_Y5_N36
\reg6|Q[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg6|Q[8]~feeder_combout\ = ( \mux0|y[8]~37_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y[8]~37_combout\,
	combout => \reg6|Q[8]~feeder_combout\);

-- Location: FF_X17_Y5_N37
\reg6|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg6|Q[8]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Selector11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|Q\(8));

-- Location: LABCELL_X20_Y5_N54
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

-- Location: FF_X20_Y5_N55
\pc0|v[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pc0|Add0~33_sumout\,
	asdata => \mux0|y[8]~37_combout\,
	clrn => \reset_n~input_o\,
	sload => \fsm|Selector14~0_combout\,
	ena => \pc0|v[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc0|v\(8));

-- Location: FF_X18_Y6_N43
\reg4|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[8]~37_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(8));

-- Location: LABCELL_X17_Y5_N54
\mux0|y[8]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[8]~35_combout\ = ( \pc0|v\(8) & ( \reg4|Q\(8) & ( (!\mux0|y[0]~0_combout\) # ((!\mux0|y[0]~1_combout\ & (\reg5|Q\(8))) # (\mux0|y[0]~1_combout\ & ((\reg6|Q\(8))))) ) ) ) # ( !\pc0|v\(8) & ( \reg4|Q\(8) & ( (!\mux0|y[0]~1_combout\ & 
-- ((!\mux0|y[0]~0_combout\) # ((\reg5|Q\(8))))) # (\mux0|y[0]~1_combout\ & (\mux0|y[0]~0_combout\ & ((\reg6|Q\(8))))) ) ) ) # ( \pc0|v\(8) & ( !\reg4|Q\(8) & ( (!\mux0|y[0]~1_combout\ & (\mux0|y[0]~0_combout\ & (\reg5|Q\(8)))) # (\mux0|y[0]~1_combout\ & 
-- ((!\mux0|y[0]~0_combout\) # ((\reg6|Q\(8))))) ) ) ) # ( !\pc0|v\(8) & ( !\reg4|Q\(8) & ( (\mux0|y[0]~0_combout\ & ((!\mux0|y[0]~1_combout\ & (\reg5|Q\(8))) # (\mux0|y[0]~1_combout\ & ((\reg6|Q\(8)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011110001010100110111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[0]~1_combout\,
	datab => \mux0|ALT_INV_y[0]~0_combout\,
	datac => \reg5|ALT_INV_Q\(8),
	datad => \reg6|ALT_INV_Q\(8),
	datae => \pc0|ALT_INV_v\(8),
	dataf => \reg4|ALT_INV_Q\(8),
	combout => \mux0|y[8]~35_combout\);

-- Location: FF_X17_Y6_N11
\reg2|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[8]~37_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(8));

-- Location: MLABCELL_X18_Y7_N33
\reg1|Q[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg1|Q[8]~feeder_combout\ = ( \mux0|y[8]~37_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y[8]~37_combout\,
	combout => \reg1|Q[8]~feeder_combout\);

-- Location: FF_X18_Y7_N35
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
	ena => \fsm|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(8));

-- Location: FF_X17_Y5_N2
\reg3|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[8]~37_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(8));

-- Location: LABCELL_X17_Y5_N0
\mux0|y[8]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[8]~36_combout\ = ( \reg3|Q\(8) & ( \mux0|y[0]~3_combout\ & ( (\reg2|Q\(8)) # (\mux0|y[0]~4_combout\) ) ) ) # ( !\reg3|Q\(8) & ( \mux0|y[0]~3_combout\ & ( (!\mux0|y[0]~4_combout\ & \reg2|Q\(8)) ) ) ) # ( \reg3|Q\(8) & ( !\mux0|y[0]~3_combout\ & ( 
-- (!\mux0|y[0]~4_combout\ & ((\reg1|Q\(8)))) # (\mux0|y[0]~4_combout\ & (\mux0|y[8]~35_combout\)) ) ) ) # ( !\reg3|Q\(8) & ( !\mux0|y[0]~3_combout\ & ( (!\mux0|y[0]~4_combout\ & ((\reg1|Q\(8)))) # (\mux0|y[0]~4_combout\ & (\mux0|y[8]~35_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100001010000010100101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[0]~4_combout\,
	datab => \mux0|ALT_INV_y[8]~35_combout\,
	datac => \reg2|ALT_INV_Q\(8),
	datad => \reg1|ALT_INV_Q\(8),
	datae => \reg3|ALT_INV_Q\(8),
	dataf => \mux0|ALT_INV_y[0]~3_combout\,
	combout => \mux0|y[8]~36_combout\);

-- Location: FF_X18_Y6_N56
\regA|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mux0|y[8]~37_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regA|Q\(8));

-- Location: LABCELL_X19_Y6_N57
\addsub0|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \addsub0|Add0~33_sumout\ = SUM(( !\fsm|AddSub~combout\ $ (!\mux0|y[8]~37_combout\) ) + ( \regA|Q\(8) ) + ( \addsub0|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_AddSub~combout\,
	datac => \regA|ALT_INV_Q\(8),
	datad => \mux0|ALT_INV_y[8]~37_combout\,
	cin => \addsub0|Add0~30\,
	sumout => \addsub0|Add0~33_sumout\);

-- Location: FF_X19_Y6_N59
\regG|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \addsub0|Add0~33_sumout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|y_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regG|Q\(8));

-- Location: FF_X19_Y6_N11
\reg0|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[8]~37_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(8));

-- Location: MLABCELL_X18_Y6_N54
\mux0|y[8]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[8]~37_combout\ = ( \regG|Q\(8) & ( \reg0|Q\(8) & ( (!\mux0|y[0]~11_combout\) # ((!\mux0|y[0]~12_combout\ & ((\data_in[8]~input_o\))) # (\mux0|y[0]~12_combout\ & (\mux0|y[8]~36_combout\))) ) ) ) # ( !\regG|Q\(8) & ( \reg0|Q\(8) & ( 
-- (!\mux0|y[0]~11_combout\ & (((\mux0|y[0]~12_combout\)))) # (\mux0|y[0]~11_combout\ & ((!\mux0|y[0]~12_combout\ & ((\data_in[8]~input_o\))) # (\mux0|y[0]~12_combout\ & (\mux0|y[8]~36_combout\)))) ) ) ) # ( \regG|Q\(8) & ( !\reg0|Q\(8) & ( 
-- (!\mux0|y[0]~11_combout\ & (((!\mux0|y[0]~12_combout\)))) # (\mux0|y[0]~11_combout\ & ((!\mux0|y[0]~12_combout\ & ((\data_in[8]~input_o\))) # (\mux0|y[0]~12_combout\ & (\mux0|y[8]~36_combout\)))) ) ) ) # ( !\regG|Q\(8) & ( !\reg0|Q\(8) & ( 
-- (\mux0|y[0]~11_combout\ & ((!\mux0|y[0]~12_combout\ & ((\data_in[8]~input_o\))) # (\mux0|y[0]~12_combout\ & (\mux0|y[8]~36_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001110000011111000100001101001111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[8]~36_combout\,
	datab => \mux0|ALT_INV_y[0]~11_combout\,
	datac => \mux0|ALT_INV_y[0]~12_combout\,
	datad => \ALT_INV_data_in[8]~input_o\,
	datae => \regG|ALT_INV_Q\(8),
	dataf => \reg0|ALT_INV_Q\(8),
	combout => \mux0|y[8]~37_combout\);

-- Location: LABCELL_X20_Y6_N42
\fsm|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector4~0_combout\ = ( \ir0|Q\(8) & ( ((!\fsm|y_Q.T1~q\) # (\ir0|Q\(7))) # (\ir0|Q\(6)) ) ) # ( !\ir0|Q\(8) & ( (!\ir0|Q\(6)) # ((!\fsm|y_Q.T1~q\) # (!\ir0|Q\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011111110111111101111111011011111110111111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(6),
	datab => \fsm|ALT_INV_y_Q.T1~q\,
	datac => \ir0|ALT_INV_Q\(7),
	dataf => \ir0|ALT_INV_Q\(8),
	combout => \fsm|Selector4~0_combout\);

-- Location: LABCELL_X19_Y7_N57
\fsm|ADDRin~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|ADDRin~0_combout\ = ( \fsm|y_Q.T3~q\ ) # ( !\fsm|y_Q.T3~q\ & ( \fsm|y_Q.T2~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111111111111100000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fsm|ALT_INV_y_Q.T2~q\,
	datae => \fsm|ALT_INV_y_Q.T3~q\,
	combout => \fsm|ADDRin~0_combout\);

-- Location: LABCELL_X19_Y7_N48
\fsm|ADDRin\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|ADDRin~combout\ = ( \fsm|ADDRin~0_combout\ & ( \fsm|ADDRin~combout\ ) ) # ( !\fsm|ADDRin~0_combout\ & ( \fsm|Selector4~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Selector4~0_combout\,
	datac => \fsm|ALT_INV_ADDRin~combout\,
	dataf => \fsm|ALT_INV_ADDRin~0_combout\,
	combout => \fsm|ADDRin~combout\);

-- Location: FF_X19_Y7_N32
\regAddr|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[0]~13_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|ADDRin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regAddr|Q\(0));

-- Location: FF_X20_Y6_N44
\regAddr|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[1]~16_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|ADDRin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regAddr|Q\(1));

-- Location: FF_X19_Y7_N16
\regAddr|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[2]~19_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|ADDRin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regAddr|Q\(2));

-- Location: FF_X19_Y7_N50
\regAddr|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[3]~22_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|ADDRin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regAddr|Q\(3));

-- Location: FF_X19_Y7_N53
\regAddr|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[4]~25_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|ADDRin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regAddr|Q\(4));

-- Location: FF_X19_Y7_N14
\regAddr|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y[5]~28_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm|ADDRin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regAddr|Q\(5));

-- Location: LABCELL_X19_Y7_N12
\regAddr|Q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regAddr|Q[6]~feeder_combout\ = \mux0|y[6]~31_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mux0|ALT_INV_y[6]~31_combout\,
	combout => \regAddr|Q[6]~feeder_combout\);

-- Location: FF_X19_Y7_N13
\regAddr|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regAddr|Q[6]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|ADDRin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regAddr|Q\(6));

-- Location: LABCELL_X19_Y7_N15
\regAddr|Q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regAddr|Q[7]~feeder_combout\ = ( \mux0|y[7]~34_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y[7]~34_combout\,
	combout => \regAddr|Q[7]~feeder_combout\);

-- Location: FF_X19_Y7_N17
\regAddr|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regAddr|Q[7]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm|ADDRin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regAddr|Q\(7));

-- Location: LABCELL_X19_Y7_N30
\regAddr|Q[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regAddr|Q[8]~feeder_combout\ = ( \mux0|y[8]~37_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y[8]~37_combout\,
	combout => \regAddr|Q[8]~feeder_combout\);

-- Location: FF_X19_Y7_N31
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
	ena => \fsm|ADDRin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regAddr|Q\(8));

-- Location: LABCELL_X43_Y8_N0
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


