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

-- DATE "10/10/2022 18:43:45"

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

ENTITY 	lab9part1 IS
    PORT (
	data_in : IN std_logic_vector(8 DOWNTO 0);
	reset_n : IN std_logic;
	clk : IN std_logic;
	run : IN std_logic;
	done : BUFFER std_logic;
	reg_A : BUFFER std_logic_vector(8 DOWNTO 0);
	reg_G : BUFFER std_logic_vector(8 DOWNTO 0);
	reg_IR : BUFFER std_logic_vector(8 DOWNTO 0);
	reg_0 : BUFFER std_logic_vector(8 DOWNTO 0);
	reg_1 : BUFFER std_logic_vector(8 DOWNTO 0);
	Tstep_Q : BUFFER std_logic_vector(3 DOWNTO 0);
	busWires : BUFFER std_logic_vector(8 DOWNTO 0)
	);
END lab9part1;

-- Design Ports Information
-- done	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_A[0]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_A[1]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_A[2]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_A[3]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_A[4]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_A[5]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_A[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_A[7]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_A[8]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_G[0]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_G[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_G[2]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_G[3]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_G[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_G[5]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_G[6]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_G[7]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_G[8]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_IR[0]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_IR[1]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_IR[2]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_IR[3]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_IR[4]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_IR[5]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_IR[6]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_IR[7]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_IR[8]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_0[0]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_0[1]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_0[2]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_0[3]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_0[4]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_0[5]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_0[6]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_0[7]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_0[8]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_1[0]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_1[1]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_1[2]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_1[3]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_1[4]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_1[5]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_1[6]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_1[7]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_1[8]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tstep_Q[0]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tstep_Q[1]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tstep_Q[2]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tstep_Q[3]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busWires[0]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busWires[1]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busWires[2]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busWires[3]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busWires[4]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busWires[5]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busWires[6]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busWires[7]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busWires[8]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[4]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[5]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[7]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[8]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- run	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab9part1 IS
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
SIGNAL ww_reg_A : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_reg_G : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_reg_IR : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_reg_0 : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_reg_1 : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_Tstep_Q : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_busWires : std_logic_vector(8 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \data_in[8]~input_o\ : std_logic;
SIGNAL \run~input_o\ : std_logic;
SIGNAL \fsm|Selector0~1_combout\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \fsm|y_Q.T1~q\ : std_logic;
SIGNAL \data_in[7]~input_o\ : std_logic;
SIGNAL \fsm|y_D.T2~0_combout\ : std_logic;
SIGNAL \fsm|y_Q.T2~q\ : std_logic;
SIGNAL \fsm|Selector0~0_combout\ : std_logic;
SIGNAL \fsm|y_Q.T0~q\ : std_logic;
SIGNAL \fsm|Selector2~0_combout\ : std_logic;
SIGNAL \fsm|y_D.T3~0_combout\ : std_logic;
SIGNAL \fsm|y_Q.T3~q\ : std_logic;
SIGNAL \fsm|Selector1~0_combout\ : std_logic;
SIGNAL \fsm|done~combout\ : std_logic;
SIGNAL \data_in[0]~input_o\ : std_logic;
SIGNAL \data_in[1]~input_o\ : std_logic;
SIGNAL \data_in[2]~input_o\ : std_logic;
SIGNAL \data_in[3]~input_o\ : std_logic;
SIGNAL \data_in[4]~input_o\ : std_logic;
SIGNAL \data_in[5]~input_o\ : std_logic;
SIGNAL \data_in[6]~input_o\ : std_logic;
SIGNAL \fsm|R0toR7out[0]~0_combout\ : std_logic;
SIGNAL \fsm|Mux9~0_combout\ : std_logic;
SIGNAL \fsm|Mux0~0_combout\ : std_logic;
SIGNAL \fsm|Dout~combout\ : std_logic;
SIGNAL \fsm|Mux7~0_combout\ : std_logic;
SIGNAL \fsm|Mux8~0_combout\ : std_logic;
SIGNAL \mux0|y[0]~4_combout\ : std_logic;
SIGNAL \fsm|Mux6~0_combout\ : std_logic;
SIGNAL \mux0|y[0]~3_combout\ : std_logic;
SIGNAL \fsm|Selector10~1_combout\ : std_logic;
SIGNAL \fsm|Selector8~0_combout\ : std_logic;
SIGNAL \fsm|Selector8~1_combout\ : std_logic;
SIGNAL \fsm|Selector9~1_combout\ : std_logic;
SIGNAL \fsm|Selector9~0_combout\ : std_logic;
SIGNAL \fsm|Selector9~2_combout\ : std_logic;
SIGNAL \fsm|Selector7~0_combout\ : std_logic;
SIGNAL \fsm|Selector7~1_combout\ : std_logic;
SIGNAL \fsm|Mux5~0_combout\ : std_logic;
SIGNAL \fsm|Mux2~0_combout\ : std_logic;
SIGNAL \mux0|y[0]~1_combout\ : std_logic;
SIGNAL \fsm|Mux3~0_combout\ : std_logic;
SIGNAL \mux0|y[0]~0_combout\ : std_logic;
SIGNAL \fsm|Selector4~0_combout\ : std_logic;
SIGNAL \fsm|Selector4~1_combout\ : std_logic;
SIGNAL \fsm|Selector3~0_combout\ : std_logic;
SIGNAL \fsm|Selector3~1_combout\ : std_logic;
SIGNAL \fsm|Selector5~0_combout\ : std_logic;
SIGNAL \fsm|Selector10~0_combout\ : std_logic;
SIGNAL \fsm|Selector6~0_combout\ : std_logic;
SIGNAL \mux0|y[0]~2_combout\ : std_logic;
SIGNAL \mux0|y[0]~5_combout\ : std_logic;
SIGNAL \mux0|y[0]~6_combout\ : std_logic;
SIGNAL \mux0|Mux9~2_combout\ : std_logic;
SIGNAL \mux0|Mux9~4_combout\ : std_logic;
SIGNAL \fsm|Mux4~0_combout\ : std_logic;
SIGNAL \mux0|Mux9~0_combout\ : std_logic;
SIGNAL \mux0|Mux9~1_combout\ : std_logic;
SIGNAL \mux0|Mux9~3_combout\ : std_logic;
SIGNAL \mux0|y[8]~7_combout\ : std_logic;
SIGNAL \fsm|Selector10~2_combout\ : std_logic;
SIGNAL \reg3|Q[1]~feeder_combout\ : std_logic;
SIGNAL \reg1|Q[1]~feeder_combout\ : std_logic;
SIGNAL \mux0|y[1]~8_combout\ : std_logic;
SIGNAL \mux0|y[1]~9_combout\ : std_logic;
SIGNAL \mux0|y[1]~10_combout\ : std_logic;
SIGNAL \mux0|y[2]~11_combout\ : std_logic;
SIGNAL \mux0|y[2]~12_combout\ : std_logic;
SIGNAL \mux0|y[2]~13_combout\ : std_logic;
SIGNAL \reg1|Q[3]~feeder_combout\ : std_logic;
SIGNAL \reg7|Q[3]~feeder_combout\ : std_logic;
SIGNAL \mux0|y[3]~14_combout\ : std_logic;
SIGNAL \mux0|y[3]~15_combout\ : std_logic;
SIGNAL \mux0|y[3]~16_combout\ : std_logic;
SIGNAL \reg3|Q[4]~feeder_combout\ : std_logic;
SIGNAL \reg7|Q[4]~feeder_combout\ : std_logic;
SIGNAL \reg6|Q[4]~feeder_combout\ : std_logic;
SIGNAL \mux0|y[4]~17_combout\ : std_logic;
SIGNAL \mux0|y[4]~18_combout\ : std_logic;
SIGNAL \mux0|y[4]~19_combout\ : std_logic;
SIGNAL \reg1|Q[5]~feeder_combout\ : std_logic;
SIGNAL \reg6|Q[5]~feeder_combout\ : std_logic;
SIGNAL \mux0|y[5]~20_combout\ : std_logic;
SIGNAL \mux0|y[5]~21_combout\ : std_logic;
SIGNAL \mux0|y[5]~22_combout\ : std_logic;
SIGNAL \reg1|Q[6]~feeder_combout\ : std_logic;
SIGNAL \reg7|Q[6]~feeder_combout\ : std_logic;
SIGNAL \reg6|Q[6]~feeder_combout\ : std_logic;
SIGNAL \reg5|Q[6]~feeder_combout\ : std_logic;
SIGNAL \mux0|y[6]~23_combout\ : std_logic;
SIGNAL \mux0|y[6]~24_combout\ : std_logic;
SIGNAL \mux0|y[6]~25_combout\ : std_logic;
SIGNAL \reg3|Q[7]~feeder_combout\ : std_logic;
SIGNAL \reg7|Q[7]~feeder_combout\ : std_logic;
SIGNAL \reg4|Q[7]~feeder_combout\ : std_logic;
SIGNAL \reg5|Q[7]~feeder_combout\ : std_logic;
SIGNAL \reg6|Q[7]~feeder_combout\ : std_logic;
SIGNAL \mux0|y[7]~26_combout\ : std_logic;
SIGNAL \mux0|y[7]~27_combout\ : std_logic;
SIGNAL \mux0|y[7]~28_combout\ : std_logic;
SIGNAL \reg7|Q[8]~feeder_combout\ : std_logic;
SIGNAL \mux0|y[8]~29_combout\ : std_logic;
SIGNAL \mux0|y[8]~30_combout\ : std_logic;
SIGNAL \mux0|y[8]~31_combout\ : std_logic;
SIGNAL \reg4|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg0|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ir0|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg5|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \fsm|R0toR7out\ : std_logic_vector(0 TO 7);
SIGNAL \reg1|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg3|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg7|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg2|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg6|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \mux0|y\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \fsm|Rin\ : std_logic_vector(0 TO 7);
SIGNAL \reg0|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ir0|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
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
SIGNAL \fsm|ALT_INV_Rin\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \fsm|ALT_INV_R0toR7out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \fsm|ALT_INV_Dout~combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \fsm|ALT_INV_done~combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector8~1_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector8~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector7~1_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector7~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector6~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector4~1_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector4~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector3~1_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_R0toR7out[0]~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector9~2_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector9~1_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector9~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector10~2_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector10~1_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector10~0_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[8]~31_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[8]~30_combout\ : std_logic;
SIGNAL \reg2|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg3|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \mux0|ALT_INV_y[8]~29_combout\ : std_logic;
SIGNAL \reg5|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg4|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg6|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg7|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \mux0|ALT_INV_y[7]~28_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[7]~27_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[7]~26_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[6]~25_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[6]~24_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[6]~23_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[5]~22_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[5]~21_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[5]~20_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[4]~19_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[4]~18_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[4]~17_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[3]~16_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[3]~15_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[3]~14_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[2]~13_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[2]~12_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[2]~11_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[1]~10_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[1]~9_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[1]~8_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[8]~7_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_Mux9~4_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_Mux9~3_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_Mux9~2_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[0]~6_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[0]~5_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[0]~4_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[0]~3_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[0]~2_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[0]~1_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[0]~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_y_Q.T2~q\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_y_Q.T3~q\ : std_logic;
SIGNAL \fsm|ALT_INV_y_Q.T1~q\ : std_logic;
SIGNAL \fsm|ALT_INV_y_Q.T0~q\ : std_logic;
SIGNAL \reg1|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);

BEGIN

ww_data_in <= data_in;
ww_reset_n <= reset_n;
ww_clk <= clk;
ww_run <= run;
done <= ww_done;
reg_A <= ww_reg_A;
reg_G <= ww_reg_G;
reg_IR <= ww_reg_IR;
reg_0 <= ww_reg_0;
reg_1 <= ww_reg_1;
Tstep_Q <= ww_Tstep_Q;
busWires <= ww_busWires;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\reg0|ALT_INV_Q\(1) <= NOT \reg0|Q\(1);
\reg0|ALT_INV_Q\(0) <= NOT \reg0|Q\(0);
\ir0|ALT_INV_Q\(8) <= NOT \ir0|Q\(8);
\ir0|ALT_INV_Q\(7) <= NOT \ir0|Q\(7);
\ir0|ALT_INV_Q\(6) <= NOT \ir0|Q\(6);
\ir0|ALT_INV_Q\(5) <= NOT \ir0|Q\(5);
\ir0|ALT_INV_Q\(4) <= NOT \ir0|Q\(4);
\ir0|ALT_INV_Q\(3) <= NOT \ir0|Q\(3);
\ir0|ALT_INV_Q\(2) <= NOT \ir0|Q\(2);
\ir0|ALT_INV_Q\(1) <= NOT \ir0|Q\(1);
\ir0|ALT_INV_Q\(0) <= NOT \ir0|Q\(0);
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
\fsm|ALT_INV_Rin\(2) <= NOT \fsm|Rin\(2);
\fsm|ALT_INV_Rin\(3) <= NOT \fsm|Rin\(3);
\fsm|ALT_INV_Rin\(5) <= NOT \fsm|Rin\(5);
\fsm|ALT_INV_Rin\(4) <= NOT \fsm|Rin\(4);
\fsm|ALT_INV_Rin\(6) <= NOT \fsm|Rin\(6);
\fsm|ALT_INV_Rin\(7) <= NOT \fsm|Rin\(7);
\fsm|ALT_INV_R0toR7out\(7) <= NOT \fsm|R0toR7out\(7);
\fsm|ALT_INV_R0toR7out\(2) <= NOT \fsm|R0toR7out\(2);
\fsm|ALT_INV_R0toR7out\(3) <= NOT \fsm|R0toR7out\(3);
\fsm|ALT_INV_R0toR7out\(1) <= NOT \fsm|R0toR7out\(1);
\fsm|ALT_INV_R0toR7out\(5) <= NOT \fsm|R0toR7out\(5);
\fsm|ALT_INV_R0toR7out\(6) <= NOT \fsm|R0toR7out\(6);
\fsm|ALT_INV_R0toR7out\(4) <= NOT \fsm|R0toR7out\(4);
\fsm|ALT_INV_R0toR7out\(0) <= NOT \fsm|R0toR7out\(0);
\fsm|ALT_INV_Dout~combout\ <= NOT \fsm|Dout~combout\;
\fsm|ALT_INV_Rin\(1) <= NOT \fsm|Rin\(1);
\fsm|ALT_INV_Rin\(0) <= NOT \fsm|Rin\(0);
\mux0|ALT_INV_y\(8) <= NOT \mux0|y\(8);
\mux0|ALT_INV_y\(7) <= NOT \mux0|y\(7);
\mux0|ALT_INV_y\(6) <= NOT \mux0|y\(6);
\mux0|ALT_INV_y\(5) <= NOT \mux0|y\(5);
\mux0|ALT_INV_y\(4) <= NOT \mux0|y\(4);
\mux0|ALT_INV_y\(3) <= NOT \mux0|y\(3);
\mux0|ALT_INV_y\(2) <= NOT \mux0|y\(2);
\mux0|ALT_INV_y\(1) <= NOT \mux0|y\(1);
\mux0|ALT_INV_y\(0) <= NOT \mux0|y\(0);
\fsm|ALT_INV_done~combout\ <= NOT \fsm|done~combout\;
\fsm|ALT_INV_Selector8~1_combout\ <= NOT \fsm|Selector8~1_combout\;
\fsm|ALT_INV_Selector8~0_combout\ <= NOT \fsm|Selector8~0_combout\;
\fsm|ALT_INV_Selector7~1_combout\ <= NOT \fsm|Selector7~1_combout\;
\fsm|ALT_INV_Selector7~0_combout\ <= NOT \fsm|Selector7~0_combout\;
\fsm|ALT_INV_Selector5~0_combout\ <= NOT \fsm|Selector5~0_combout\;
\fsm|ALT_INV_Selector6~0_combout\ <= NOT \fsm|Selector6~0_combout\;
\fsm|ALT_INV_Selector4~1_combout\ <= NOT \fsm|Selector4~1_combout\;
\fsm|ALT_INV_Selector4~0_combout\ <= NOT \fsm|Selector4~0_combout\;
\fsm|ALT_INV_Selector3~1_combout\ <= NOT \fsm|Selector3~1_combout\;
\fsm|ALT_INV_Selector3~0_combout\ <= NOT \fsm|Selector3~0_combout\;
\fsm|ALT_INV_Mux4~0_combout\ <= NOT \fsm|Mux4~0_combout\;
\fsm|ALT_INV_Mux7~0_combout\ <= NOT \fsm|Mux7~0_combout\;
\fsm|ALT_INV_Mux6~0_combout\ <= NOT \fsm|Mux6~0_combout\;
\fsm|ALT_INV_Mux8~0_combout\ <= NOT \fsm|Mux8~0_combout\;
\fsm|ALT_INV_Mux2~0_combout\ <= NOT \fsm|Mux2~0_combout\;
\fsm|ALT_INV_Mux3~0_combout\ <= NOT \fsm|Mux3~0_combout\;
\fsm|ALT_INV_Mux5~0_combout\ <= NOT \fsm|Mux5~0_combout\;
\fsm|ALT_INV_R0toR7out[0]~0_combout\ <= NOT \fsm|R0toR7out[0]~0_combout\;
\fsm|ALT_INV_Mux9~0_combout\ <= NOT \fsm|Mux9~0_combout\;
\fsm|ALT_INV_Mux0~0_combout\ <= NOT \fsm|Mux0~0_combout\;
\fsm|ALT_INV_Selector9~2_combout\ <= NOT \fsm|Selector9~2_combout\;
\fsm|ALT_INV_Selector9~1_combout\ <= NOT \fsm|Selector9~1_combout\;
\fsm|ALT_INV_Selector9~0_combout\ <= NOT \fsm|Selector9~0_combout\;
\fsm|ALT_INV_Selector10~2_combout\ <= NOT \fsm|Selector10~2_combout\;
\fsm|ALT_INV_Selector10~1_combout\ <= NOT \fsm|Selector10~1_combout\;
\fsm|ALT_INV_Selector10~0_combout\ <= NOT \fsm|Selector10~0_combout\;
\mux0|ALT_INV_y[8]~31_combout\ <= NOT \mux0|y[8]~31_combout\;
\mux0|ALT_INV_y[8]~30_combout\ <= NOT \mux0|y[8]~30_combout\;
\reg2|ALT_INV_Q\(8) <= NOT \reg2|Q\(8);
\reg3|ALT_INV_Q\(8) <= NOT \reg3|Q\(8);
\mux0|ALT_INV_y[8]~29_combout\ <= NOT \mux0|y[8]~29_combout\;
\reg5|ALT_INV_Q\(8) <= NOT \reg5|Q\(8);
\reg4|ALT_INV_Q\(8) <= NOT \reg4|Q\(8);
\reg6|ALT_INV_Q\(8) <= NOT \reg6|Q\(8);
\reg7|ALT_INV_Q\(8) <= NOT \reg7|Q\(8);
\mux0|ALT_INV_y[7]~28_combout\ <= NOT \mux0|y[7]~28_combout\;
\mux0|ALT_INV_y[7]~27_combout\ <= NOT \mux0|y[7]~27_combout\;
\reg2|ALT_INV_Q\(7) <= NOT \reg2|Q\(7);
\reg3|ALT_INV_Q\(7) <= NOT \reg3|Q\(7);
\mux0|ALT_INV_y[7]~26_combout\ <= NOT \mux0|y[7]~26_combout\;
\reg5|ALT_INV_Q\(7) <= NOT \reg5|Q\(7);
\reg4|ALT_INV_Q\(7) <= NOT \reg4|Q\(7);
\reg6|ALT_INV_Q\(7) <= NOT \reg6|Q\(7);
\reg7|ALT_INV_Q\(7) <= NOT \reg7|Q\(7);
\mux0|ALT_INV_y[6]~25_combout\ <= NOT \mux0|y[6]~25_combout\;
\mux0|ALT_INV_y[6]~24_combout\ <= NOT \mux0|y[6]~24_combout\;
\reg2|ALT_INV_Q\(6) <= NOT \reg2|Q\(6);
\reg3|ALT_INV_Q\(6) <= NOT \reg3|Q\(6);
\mux0|ALT_INV_y[6]~23_combout\ <= NOT \mux0|y[6]~23_combout\;
\reg5|ALT_INV_Q\(6) <= NOT \reg5|Q\(6);
\reg4|ALT_INV_Q\(6) <= NOT \reg4|Q\(6);
\reg6|ALT_INV_Q\(6) <= NOT \reg6|Q\(6);
\reg7|ALT_INV_Q\(6) <= NOT \reg7|Q\(6);
\mux0|ALT_INV_y[5]~22_combout\ <= NOT \mux0|y[5]~22_combout\;
\mux0|ALT_INV_y[5]~21_combout\ <= NOT \mux0|y[5]~21_combout\;
\reg2|ALT_INV_Q\(5) <= NOT \reg2|Q\(5);
\reg3|ALT_INV_Q\(5) <= NOT \reg3|Q\(5);
\mux0|ALT_INV_y[5]~20_combout\ <= NOT \mux0|y[5]~20_combout\;
\reg5|ALT_INV_Q\(5) <= NOT \reg5|Q\(5);
\reg4|ALT_INV_Q\(5) <= NOT \reg4|Q\(5);
\reg6|ALT_INV_Q\(5) <= NOT \reg6|Q\(5);
\reg7|ALT_INV_Q\(5) <= NOT \reg7|Q\(5);
\mux0|ALT_INV_y[4]~19_combout\ <= NOT \mux0|y[4]~19_combout\;
\mux0|ALT_INV_y[4]~18_combout\ <= NOT \mux0|y[4]~18_combout\;
\reg2|ALT_INV_Q\(4) <= NOT \reg2|Q\(4);
\reg3|ALT_INV_Q\(4) <= NOT \reg3|Q\(4);
\mux0|ALT_INV_y[4]~17_combout\ <= NOT \mux0|y[4]~17_combout\;
\reg5|ALT_INV_Q\(4) <= NOT \reg5|Q\(4);
\reg4|ALT_INV_Q\(4) <= NOT \reg4|Q\(4);
\reg6|ALT_INV_Q\(4) <= NOT \reg6|Q\(4);
\reg7|ALT_INV_Q\(4) <= NOT \reg7|Q\(4);
\mux0|ALT_INV_y[3]~16_combout\ <= NOT \mux0|y[3]~16_combout\;
\mux0|ALT_INV_y[3]~15_combout\ <= NOT \mux0|y[3]~15_combout\;
\reg2|ALT_INV_Q\(3) <= NOT \reg2|Q\(3);
\reg3|ALT_INV_Q\(3) <= NOT \reg3|Q\(3);
\mux0|ALT_INV_y[3]~14_combout\ <= NOT \mux0|y[3]~14_combout\;
\reg5|ALT_INV_Q\(3) <= NOT \reg5|Q\(3);
\reg4|ALT_INV_Q\(3) <= NOT \reg4|Q\(3);
\reg6|ALT_INV_Q\(3) <= NOT \reg6|Q\(3);
\reg7|ALT_INV_Q\(3) <= NOT \reg7|Q\(3);
\mux0|ALT_INV_y[2]~13_combout\ <= NOT \mux0|y[2]~13_combout\;
\mux0|ALT_INV_y[2]~12_combout\ <= NOT \mux0|y[2]~12_combout\;
\reg2|ALT_INV_Q\(2) <= NOT \reg2|Q\(2);
\reg3|ALT_INV_Q\(2) <= NOT \reg3|Q\(2);
\mux0|ALT_INV_y[2]~11_combout\ <= NOT \mux0|y[2]~11_combout\;
\reg5|ALT_INV_Q\(2) <= NOT \reg5|Q\(2);
\reg4|ALT_INV_Q\(2) <= NOT \reg4|Q\(2);
\reg6|ALT_INV_Q\(2) <= NOT \reg6|Q\(2);
\reg7|ALT_INV_Q\(2) <= NOT \reg7|Q\(2);
\mux0|ALT_INV_y[1]~10_combout\ <= NOT \mux0|y[1]~10_combout\;
\mux0|ALT_INV_y[1]~9_combout\ <= NOT \mux0|y[1]~9_combout\;
\reg2|ALT_INV_Q\(1) <= NOT \reg2|Q\(1);
\reg3|ALT_INV_Q\(1) <= NOT \reg3|Q\(1);
\mux0|ALT_INV_y[1]~8_combout\ <= NOT \mux0|y[1]~8_combout\;
\reg5|ALT_INV_Q\(1) <= NOT \reg5|Q\(1);
\reg4|ALT_INV_Q\(1) <= NOT \reg4|Q\(1);
\reg6|ALT_INV_Q\(1) <= NOT \reg6|Q\(1);
\reg7|ALT_INV_Q\(1) <= NOT \reg7|Q\(1);
\mux0|ALT_INV_y[8]~7_combout\ <= NOT \mux0|y[8]~7_combout\;
\mux0|ALT_INV_Mux9~4_combout\ <= NOT \mux0|Mux9~4_combout\;
\mux0|ALT_INV_Mux9~3_combout\ <= NOT \mux0|Mux9~3_combout\;
\mux0|ALT_INV_Mux9~2_combout\ <= NOT \mux0|Mux9~2_combout\;
\mux0|ALT_INV_Mux9~1_combout\ <= NOT \mux0|Mux9~1_combout\;
\mux0|ALT_INV_Mux9~0_combout\ <= NOT \mux0|Mux9~0_combout\;
\mux0|ALT_INV_y[0]~6_combout\ <= NOT \mux0|y[0]~6_combout\;
\mux0|ALT_INV_y[0]~5_combout\ <= NOT \mux0|y[0]~5_combout\;
\mux0|ALT_INV_y[0]~4_combout\ <= NOT \mux0|y[0]~4_combout\;
\mux0|ALT_INV_y[0]~3_combout\ <= NOT \mux0|y[0]~3_combout\;
\reg2|ALT_INV_Q\(0) <= NOT \reg2|Q\(0);
\reg3|ALT_INV_Q\(0) <= NOT \reg3|Q\(0);
\mux0|ALT_INV_y[0]~2_combout\ <= NOT \mux0|y[0]~2_combout\;
\mux0|ALT_INV_y[0]~1_combout\ <= NOT \mux0|y[0]~1_combout\;
\mux0|ALT_INV_y[0]~0_combout\ <= NOT \mux0|y[0]~0_combout\;
\reg5|ALT_INV_Q\(0) <= NOT \reg5|Q\(0);
\reg4|ALT_INV_Q\(0) <= NOT \reg4|Q\(0);
\reg6|ALT_INV_Q\(0) <= NOT \reg6|Q\(0);
\reg7|ALT_INV_Q\(0) <= NOT \reg7|Q\(0);
\fsm|ALT_INV_y_Q.T2~q\ <= NOT \fsm|y_Q.T2~q\;
\fsm|ALT_INV_Selector2~0_combout\ <= NOT \fsm|Selector2~0_combout\;
\fsm|ALT_INV_Selector1~0_combout\ <= NOT \fsm|Selector1~0_combout\;
\fsm|ALT_INV_y_Q.T3~q\ <= NOT \fsm|y_Q.T3~q\;
\fsm|ALT_INV_y_Q.T1~q\ <= NOT \fsm|y_Q.T1~q\;
\fsm|ALT_INV_y_Q.T0~q\ <= NOT \fsm|y_Q.T0~q\;
\reg1|ALT_INV_Q\(8) <= NOT \reg1|Q\(8);
\reg1|ALT_INV_Q\(7) <= NOT \reg1|Q\(7);
\reg1|ALT_INV_Q\(6) <= NOT \reg1|Q\(6);
\reg1|ALT_INV_Q\(5) <= NOT \reg1|Q\(5);
\reg1|ALT_INV_Q\(4) <= NOT \reg1|Q\(4);
\reg1|ALT_INV_Q\(3) <= NOT \reg1|Q\(3);
\reg1|ALT_INV_Q\(2) <= NOT \reg1|Q\(2);
\reg1|ALT_INV_Q\(1) <= NOT \reg1|Q\(1);
\reg1|ALT_INV_Q\(0) <= NOT \reg1|Q\(0);
\reg0|ALT_INV_Q\(8) <= NOT \reg0|Q\(8);
\reg0|ALT_INV_Q\(7) <= NOT \reg0|Q\(7);
\reg0|ALT_INV_Q\(6) <= NOT \reg0|Q\(6);
\reg0|ALT_INV_Q\(5) <= NOT \reg0|Q\(5);
\reg0|ALT_INV_Q\(4) <= NOT \reg0|Q\(4);
\reg0|ALT_INV_Q\(3) <= NOT \reg0|Q\(3);
\reg0|ALT_INV_Q\(2) <= NOT \reg0|Q\(2);

-- Location: IOOBUF_X18_Y0_N53
\done~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|done~combout\,
	devoe => ww_devoe,
	o => ww_done);

-- Location: IOOBUF_X52_Y0_N2
\reg_A[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_reg_A(0));

-- Location: IOOBUF_X43_Y45_N19
\reg_A[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_reg_A(1));

-- Location: IOOBUF_X38_Y45_N19
\reg_A[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_reg_A(2));

-- Location: IOOBUF_X46_Y0_N53
\reg_A[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_reg_A(3));

-- Location: IOOBUF_X11_Y0_N19
\reg_A[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_reg_A(4));

-- Location: IOOBUF_X0_Y18_N62
\reg_A[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_reg_A(5));

-- Location: IOOBUF_X48_Y45_N36
\reg_A[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_reg_A(6));

-- Location: IOOBUF_X12_Y0_N53
\reg_A[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_reg_A(7));

-- Location: IOOBUF_X14_Y0_N19
\reg_A[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_reg_A(8));

-- Location: IOOBUF_X44_Y45_N36
\reg_G[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_reg_G(0));

-- Location: IOOBUF_X46_Y45_N42
\reg_G[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_reg_G(1));

-- Location: IOOBUF_X10_Y0_N76
\reg_G[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_reg_G(2));

-- Location: IOOBUF_X0_Y20_N22
\reg_G[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_reg_G(3));

-- Location: IOOBUF_X34_Y45_N19
\reg_G[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_reg_G(4));

-- Location: IOOBUF_X32_Y45_N59
\reg_G[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_reg_G(5));

-- Location: IOOBUF_X40_Y0_N59
\reg_G[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_reg_G(6));

-- Location: IOOBUF_X11_Y0_N36
\reg_G[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_reg_G(7));

-- Location: IOOBUF_X12_Y0_N19
\reg_G[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_reg_G(8));

-- Location: IOOBUF_X23_Y0_N76
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

-- Location: IOOBUF_X25_Y0_N2
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

-- Location: IOOBUF_X18_Y0_N19
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

-- Location: IOOBUF_X29_Y0_N53
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

-- Location: IOOBUF_X29_Y0_N36
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

-- Location: IOOBUF_X25_Y0_N36
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

-- Location: IOOBUF_X33_Y0_N42
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

-- Location: IOOBUF_X19_Y0_N36
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

-- Location: IOOBUF_X40_Y0_N42
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

-- Location: IOOBUF_X14_Y0_N36
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

-- Location: IOOBUF_X18_Y0_N36
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

-- Location: IOOBUF_X34_Y0_N36
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

-- Location: IOOBUF_X18_Y0_N2
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

-- Location: IOOBUF_X14_Y0_N53
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

-- Location: IOOBUF_X22_Y0_N2
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

-- Location: IOOBUF_X16_Y0_N93
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

-- Location: IOOBUF_X12_Y0_N2
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

-- Location: IOOBUF_X33_Y0_N93
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

-- Location: IOOBUF_X16_Y0_N42
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

-- Location: IOOBUF_X36_Y0_N2
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

-- Location: IOOBUF_X12_Y0_N36
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

-- Location: IOOBUF_X29_Y0_N2
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

-- Location: IOOBUF_X34_Y0_N2
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

-- Location: IOOBUF_X22_Y45_N2
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

-- Location: IOOBUF_X23_Y0_N42
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

-- Location: IOOBUF_X36_Y0_N36
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

-- Location: IOOBUF_X29_Y0_N19
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
	i => \fsm|y_Q.T0~q\,
	devoe => ww_devoe,
	o => ww_Tstep_Q(1));

-- Location: IOOBUF_X50_Y45_N36
\Tstep_Q[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Tstep_Q(2));

-- Location: IOOBUF_X20_Y45_N2
\Tstep_Q[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Tstep_Q(3));

-- Location: IOOBUF_X23_Y0_N93
\busWires[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux0|y\(0),
	devoe => ww_devoe,
	o => ww_busWires(0));

-- Location: IOOBUF_X22_Y0_N36
\busWires[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux0|y\(1),
	devoe => ww_devoe,
	o => ww_busWires(1));

-- Location: IOOBUF_X34_Y0_N19
\busWires[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux0|y\(2),
	devoe => ww_devoe,
	o => ww_busWires(2));

-- Location: IOOBUF_X24_Y0_N36
\busWires[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux0|y\(3),
	devoe => ww_devoe,
	o => ww_busWires(3));

-- Location: IOOBUF_X23_Y0_N59
\busWires[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux0|y\(4),
	devoe => ww_devoe,
	o => ww_busWires(4));

-- Location: IOOBUF_X25_Y0_N19
\busWires[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux0|y\(5),
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
	i => \mux0|y\(6),
	devoe => ww_devoe,
	o => ww_busWires(6));

-- Location: IOOBUF_X22_Y0_N19
\busWires[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux0|y\(7),
	devoe => ww_devoe,
	o => ww_busWires(7));

-- Location: IOOBUF_X24_Y0_N2
\busWires[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux0|y\(8),
	devoe => ww_devoe,
	o => ww_busWires(8));

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

-- Location: IOIBUF_X33_Y0_N58
\data_in[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(8),
	o => \data_in[8]~input_o\);

-- Location: IOIBUF_X19_Y0_N1
\run~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_run,
	o => \run~input_o\);

-- Location: LABCELL_X24_Y2_N42
\fsm|Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector0~1_combout\ = (!\fsm|y_Q.T0~q\ & \run~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_y_Q.T0~q\,
	datad => \ALT_INV_run~input_o\,
	combout => \fsm|Selector0~1_combout\);

-- Location: IOIBUF_X24_Y0_N18
\reset_n~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input_o\);

-- Location: FF_X24_Y2_N44
\fsm|y_Q.T1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \fsm|Selector0~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|y_Q.T1~q\);

-- Location: IOIBUF_X16_Y0_N58
\data_in[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(7),
	o => \data_in[7]~input_o\);

-- Location: FF_X24_Y2_N23
\ir0|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[7]~input_o\,
	sload => VCC,
	ena => \fsm|ALT_INV_y_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir0|Q\(7));

-- Location: LABCELL_X24_Y2_N12
\fsm|y_D.T2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|y_D.T2~0_combout\ = ( !\ir0|Q\(8) & ( (\ir0|Q\(7) & \fsm|y_Q.T1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ir0|ALT_INV_Q\(7),
	datac => \fsm|ALT_INV_y_Q.T1~q\,
	dataf => \ir0|ALT_INV_Q\(8),
	combout => \fsm|y_D.T2~0_combout\);

-- Location: FF_X24_Y2_N14
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

-- Location: LABCELL_X24_Y2_N36
\fsm|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector0~0_combout\ = ( !\fsm|y_Q.T0~q\ & ( \ir0|Q\(8) & ( \run~input_o\ ) ) ) # ( \fsm|y_Q.T0~q\ & ( !\ir0|Q\(8) & ( (\ir0|Q\(7) & ((\fsm|y_Q.T2~q\) # (\fsm|y_Q.T1~q\))) ) ) ) # ( !\fsm|y_Q.T0~q\ & ( !\ir0|Q\(8) & ( ((\ir0|Q\(7) & ((\fsm|y_Q.T2~q\) 
-- # (\fsm|y_Q.T1~q\)))) # (\run~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100111111000100010011001100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_y_Q.T1~q\,
	datab => \ir0|ALT_INV_Q\(7),
	datac => \ALT_INV_run~input_o\,
	datad => \fsm|ALT_INV_y_Q.T2~q\,
	datae => \fsm|ALT_INV_y_Q.T0~q\,
	dataf => \ir0|ALT_INV_Q\(8),
	combout => \fsm|Selector0~0_combout\);

-- Location: FF_X24_Y2_N38
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

-- Location: FF_X24_Y2_N26
\ir0|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[8]~input_o\,
	sload => VCC,
	ena => \fsm|ALT_INV_y_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir0|Q\(8));

-- Location: LABCELL_X24_Y2_N21
\fsm|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector2~0_combout\ = ( \fsm|y_Q.T1~q\ & ( (!\ir0|Q\(8) & !\ir0|Q\(7)) ) ) # ( !\fsm|y_Q.T1~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(8),
	datad => \ir0|ALT_INV_Q\(7),
	dataf => \fsm|ALT_INV_y_Q.T1~q\,
	combout => \fsm|Selector2~0_combout\);

-- Location: LABCELL_X24_Y2_N6
\fsm|y_D.T3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|y_D.T3~0_combout\ = ( !\ir0|Q\(8) & ( (\fsm|y_Q.T2~q\ & \ir0|Q\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fsm|ALT_INV_y_Q.T2~q\,
	datac => \ir0|ALT_INV_Q\(7),
	dataf => \ir0|ALT_INV_Q\(8),
	combout => \fsm|y_D.T3~0_combout\);

-- Location: FF_X24_Y2_N8
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

-- Location: LABCELL_X24_Y2_N15
\fsm|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector1~0_combout\ = ( \fsm|y_Q.T3~q\ ) # ( !\fsm|y_Q.T3~q\ & ( (!\ir0|Q\(7) & \fsm|y_Q.T1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ir0|ALT_INV_Q\(7),
	datad => \fsm|ALT_INV_y_Q.T1~q\,
	dataf => \fsm|ALT_INV_y_Q.T3~q\,
	combout => \fsm|Selector1~0_combout\);

-- Location: LABCELL_X24_Y2_N48
\fsm|done\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|done~combout\ = ( \fsm|Selector1~0_combout\ & ( (\fsm|done~combout\) # (\fsm|Selector2~0_combout\) ) ) # ( !\fsm|Selector1~0_combout\ & ( (!\fsm|Selector2~0_combout\ & \fsm|done~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Selector2~0_combout\,
	datac => \fsm|ALT_INV_done~combout\,
	dataf => \fsm|ALT_INV_Selector1~0_combout\,
	combout => \fsm|done~combout\);

-- Location: IOIBUF_X36_Y0_N18
\data_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(0),
	o => \data_in[0]~input_o\);

-- Location: FF_X25_Y2_N38
\ir0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[0]~input_o\,
	sload => VCC,
	ena => \fsm|ALT_INV_y_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir0|Q\(0));

-- Location: IOIBUF_X33_Y0_N75
\data_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(1),
	o => \data_in[1]~input_o\);

-- Location: FF_X25_Y2_N14
\ir0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[1]~input_o\,
	sload => VCC,
	ena => \fsm|ALT_INV_y_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir0|Q\(1));

-- Location: IOIBUF_X19_Y0_N18
\data_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(2),
	o => \data_in[2]~input_o\);

-- Location: FF_X25_Y2_N11
\ir0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[2]~input_o\,
	sload => VCC,
	ena => \fsm|ALT_INV_y_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir0|Q\(2));

-- Location: IOIBUF_X16_Y0_N75
\data_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(3),
	o => \data_in[3]~input_o\);

-- Location: FF_X24_Y2_N53
\ir0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[3]~input_o\,
	sload => VCC,
	ena => \fsm|ALT_INV_y_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir0|Q\(3));

-- Location: IOIBUF_X19_Y0_N52
\data_in[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(4),
	o => \data_in[4]~input_o\);

-- Location: FF_X25_Y2_N59
\ir0|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[4]~input_o\,
	sload => VCC,
	ena => \fsm|ALT_INV_y_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir0|Q\(4));

-- Location: IOIBUF_X14_Y0_N1
\data_in[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(5),
	o => \data_in[5]~input_o\);

-- Location: FF_X25_Y2_N56
\ir0|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[5]~input_o\,
	sload => VCC,
	ena => \fsm|ALT_INV_y_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir0|Q\(5));

-- Location: IOIBUF_X34_Y0_N52
\data_in[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(6),
	o => \data_in[6]~input_o\);

-- Location: FF_X24_Y2_N50
\ir0|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data_in[6]~input_o\,
	sload => VCC,
	ena => \fsm|ALT_INV_y_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir0|Q\(6));

-- Location: LABCELL_X24_Y2_N24
\fsm|R0toR7out[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|R0toR7out[0]~0_combout\ = ( !\ir0|Q\(7) & ( (\fsm|y_Q.T1~q\ & !\ir0|Q\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_y_Q.T1~q\,
	datad => \ir0|ALT_INV_Q\(8),
	dataf => \ir0|ALT_INV_Q\(7),
	combout => \fsm|R0toR7out[0]~0_combout\);

-- Location: LABCELL_X25_Y2_N30
\fsm|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Mux9~0_combout\ = ( !\ir0|Q\(6) & ( (!\ir0|Q\(1) & (!\ir0|Q\(0) & !\ir0|Q\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ir0|ALT_INV_Q\(1),
	datac => \ir0|ALT_INV_Q\(0),
	datad => \ir0|ALT_INV_Q\(2),
	dataf => \ir0|ALT_INV_Q\(6),
	combout => \fsm|Mux9~0_combout\);

-- Location: LABCELL_X24_Y2_N3
\fsm|R0toR7out[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|R0toR7out\(0) = ( \fsm|Mux9~0_combout\ & ( (\fsm|R0toR7out\(0)) # (\fsm|R0toR7out[0]~0_combout\) ) ) # ( !\fsm|Mux9~0_combout\ & ( (!\fsm|R0toR7out[0]~0_combout\ & \fsm|R0toR7out\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_R0toR7out[0]~0_combout\,
	datad => \fsm|ALT_INV_R0toR7out\(0),
	dataf => \fsm|ALT_INV_Mux9~0_combout\,
	combout => \fsm|R0toR7out\(0));

-- Location: LABCELL_X24_Y2_N45
\fsm|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Mux0~0_combout\ = ( \ir0|Q\(7) ) # ( !\ir0|Q\(7) & ( \ir0|Q\(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(8),
	dataf => \ir0|ALT_INV_Q\(7),
	combout => \fsm|Mux0~0_combout\);

-- Location: MLABCELL_X23_Y2_N48
\fsm|Dout\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Dout~combout\ = ( \fsm|y_Q.T1~q\ & ( (!\fsm|Mux0~0_combout\ & ((\ir0|Q\(6)))) # (\fsm|Mux0~0_combout\ & (\fsm|Dout~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Dout~combout\,
	datac => \fsm|ALT_INV_Mux0~0_combout\,
	datad => \ir0|ALT_INV_Q\(6),
	dataf => \fsm|ALT_INV_y_Q.T1~q\,
	combout => \fsm|Dout~combout\);

-- Location: LABCELL_X24_Y2_N9
\fsm|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Mux7~0_combout\ = ( !\ir0|Q\(0) & ( (!\ir0|Q\(6) & (\ir0|Q\(1) & !\ir0|Q\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(6),
	datac => \ir0|ALT_INV_Q\(1),
	datad => \ir0|ALT_INV_Q\(2),
	dataf => \ir0|ALT_INV_Q\(0),
	combout => \fsm|Mux7~0_combout\);

-- Location: MLABCELL_X23_Y2_N0
\fsm|R0toR7out[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|R0toR7out\(2) = ( \fsm|Mux7~0_combout\ & ( (\fsm|R0toR7out[0]~0_combout\) # (\fsm|R0toR7out\(2)) ) ) # ( !\fsm|Mux7~0_combout\ & ( (\fsm|R0toR7out\(2) & !\fsm|R0toR7out[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_R0toR7out\(2),
	datad => \fsm|ALT_INV_R0toR7out[0]~0_combout\,
	dataf => \fsm|ALT_INV_Mux7~0_combout\,
	combout => \fsm|R0toR7out\(2));

-- Location: MLABCELL_X23_Y2_N9
\fsm|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Mux8~0_combout\ = ( \ir0|Q\(0) & ( (!\ir0|Q\(6) & (!\ir0|Q\(2) & !\ir0|Q\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ir0|ALT_INV_Q\(6),
	datac => \ir0|ALT_INV_Q\(2),
	datad => \ir0|ALT_INV_Q\(1),
	dataf => \ir0|ALT_INV_Q\(0),
	combout => \fsm|Mux8~0_combout\);

-- Location: MLABCELL_X23_Y2_N30
\fsm|R0toR7out[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|R0toR7out\(1) = ( \fsm|Mux8~0_combout\ & ( (\fsm|R0toR7out\(1)) # (\fsm|R0toR7out[0]~0_combout\) ) ) # ( !\fsm|Mux8~0_combout\ & ( (!\fsm|R0toR7out[0]~0_combout\ & \fsm|R0toR7out\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_R0toR7out[0]~0_combout\,
	datad => \fsm|ALT_INV_R0toR7out\(1),
	dataf => \fsm|ALT_INV_Mux8~0_combout\,
	combout => \fsm|R0toR7out\(1));

-- Location: MLABCELL_X23_Y2_N57
\mux0|y[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[0]~4_combout\ = ( !\fsm|R0toR7out\(1) & ( !\fsm|R0toR7out\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fsm|ALT_INV_R0toR7out\(2),
	dataf => \fsm|ALT_INV_R0toR7out\(1),
	combout => \mux0|y[0]~4_combout\);

-- Location: LABCELL_X24_Y2_N18
\fsm|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Mux6~0_combout\ = ( \ir0|Q\(0) & ( (\ir0|Q\(1) & (!\ir0|Q\(6) & !\ir0|Q\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ir0|ALT_INV_Q\(1),
	datac => \ir0|ALT_INV_Q\(6),
	datad => \ir0|ALT_INV_Q\(2),
	dataf => \ir0|ALT_INV_Q\(0),
	combout => \fsm|Mux6~0_combout\);

-- Location: MLABCELL_X23_Y2_N45
\fsm|R0toR7out[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|R0toR7out\(3) = ( \fsm|R0toR7out\(3) & ( \fsm|Mux6~0_combout\ ) ) # ( !\fsm|R0toR7out\(3) & ( \fsm|Mux6~0_combout\ & ( \fsm|R0toR7out[0]~0_combout\ ) ) ) # ( \fsm|R0toR7out\(3) & ( !\fsm|Mux6~0_combout\ & ( !\fsm|R0toR7out[0]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_R0toR7out[0]~0_combout\,
	datae => \fsm|ALT_INV_R0toR7out\(3),
	dataf => \fsm|ALT_INV_Mux6~0_combout\,
	combout => \fsm|R0toR7out\(3));

-- Location: MLABCELL_X23_Y2_N15
\mux0|y[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[0]~3_combout\ = ( !\fsm|R0toR7out\(1) & ( (\fsm|R0toR7out\(2)) # (\fsm|R0toR7out\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_R0toR7out\(3),
	datad => \fsm|ALT_INV_R0toR7out\(2),
	dataf => \fsm|ALT_INV_R0toR7out\(1),
	combout => \mux0|y[0]~3_combout\);

-- Location: LABCELL_X24_Y2_N0
\fsm|Selector10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector10~1_combout\ = ( !\ir0|Q\(3) & ( (!\fsm|y_Q.T0~q\) # (\fsm|y_Q.T1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_y_Q.T1~q\,
	datad => \fsm|ALT_INV_y_Q.T0~q\,
	dataf => \ir0|ALT_INV_Q\(3),
	combout => \fsm|Selector10~1_combout\);

-- Location: LABCELL_X25_Y2_N12
\fsm|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector8~0_combout\ = ( !\fsm|y_Q.T0~q\ & ( (!\ir0|Q\(2) & (!\ir0|Q\(0) & \ir0|Q\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(2),
	datac => \ir0|ALT_INV_Q\(0),
	datad => \ir0|ALT_INV_Q\(1),
	dataf => \fsm|ALT_INV_y_Q.T0~q\,
	combout => \fsm|Selector8~0_combout\);

-- Location: LABCELL_X25_Y2_N0
\fsm|Selector8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector8~1_combout\ = ( \fsm|Selector8~0_combout\ ) # ( !\fsm|Selector8~0_combout\ & ( (\fsm|Selector10~1_combout\ & (!\ir0|Q\(5) & \ir0|Q\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fsm|ALT_INV_Selector10~1_combout\,
	datac => \ir0|ALT_INV_Q\(5),
	datad => \ir0|ALT_INV_Q\(4),
	dataf => \fsm|ALT_INV_Selector8~0_combout\,
	combout => \fsm|Selector8~1_combout\);

-- Location: LABCELL_X25_Y2_N33
\fsm|Rin[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Rin\(2) = ( \fsm|Rin\(2) & ( (!\fsm|Selector2~0_combout\) # (\fsm|Selector8~1_combout\) ) ) # ( !\fsm|Rin\(2) & ( (\fsm|Selector8~1_combout\ & \fsm|Selector2~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Selector8~1_combout\,
	datad => \fsm|ALT_INV_Selector2~0_combout\,
	dataf => \fsm|ALT_INV_Rin\(2),
	combout => \fsm|Rin\(2));

-- Location: FF_X23_Y4_N49
\reg2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(0),
	sload => VCC,
	ena => \fsm|Rin\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(0));

-- Location: LABCELL_X24_Y2_N33
\fsm|Selector9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector9~1_combout\ = ( \ir0|Q\(3) & ( (!\fsm|y_Q.T0~q\) # (\fsm|y_Q.T1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_y_Q.T1~q\,
	datad => \fsm|ALT_INV_y_Q.T0~q\,
	dataf => \ir0|ALT_INV_Q\(3),
	combout => \fsm|Selector9~1_combout\);

-- Location: LABCELL_X25_Y2_N42
\fsm|Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector9~0_combout\ = ( !\fsm|y_Q.T0~q\ & ( (!\ir0|Q\(1) & \ir0|Q\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ir0|ALT_INV_Q\(1),
	datad => \ir0|ALT_INV_Q\(0),
	dataf => \fsm|ALT_INV_y_Q.T0~q\,
	combout => \fsm|Selector9~0_combout\);

-- Location: LABCELL_X25_Y3_N42
\fsm|Selector9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector9~2_combout\ = ( \ir0|Q\(5) & ( \fsm|Selector9~0_combout\ & ( !\ir0|Q\(2) ) ) ) # ( !\ir0|Q\(5) & ( \fsm|Selector9~0_combout\ & ( (!\ir0|Q\(2)) # ((\fsm|Selector9~1_combout\ & !\ir0|Q\(4))) ) ) ) # ( !\ir0|Q\(5) & ( !\fsm|Selector9~0_combout\ 
-- & ( (\fsm|Selector9~1_combout\ & !\ir0|Q\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000000000000000000011110011111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fsm|ALT_INV_Selector9~1_combout\,
	datac => \ir0|ALT_INV_Q\(2),
	datad => \ir0|ALT_INV_Q\(4),
	datae => \ir0|ALT_INV_Q\(5),
	dataf => \fsm|ALT_INV_Selector9~0_combout\,
	combout => \fsm|Selector9~2_combout\);

-- Location: LABCELL_X25_Y3_N51
\fsm|Rin[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Rin\(1) = ( \fsm|Selector2~0_combout\ & ( \fsm|Selector9~2_combout\ ) ) # ( !\fsm|Selector2~0_combout\ & ( \fsm|Selector9~2_combout\ & ( \fsm|Rin\(1) ) ) ) # ( !\fsm|Selector2~0_combout\ & ( !\fsm|Selector9~2_combout\ & ( \fsm|Rin\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fsm|ALT_INV_Rin\(1),
	datae => \fsm|ALT_INV_Selector2~0_combout\,
	dataf => \fsm|ALT_INV_Selector9~2_combout\,
	combout => \fsm|Rin\(1));

-- Location: FF_X25_Y4_N29
\reg1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(0),
	sload => VCC,
	ena => \fsm|Rin\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(0));

-- Location: LABCELL_X24_Y2_N30
\fsm|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector7~0_combout\ = ( \ir0|Q\(1) & ( (!\fsm|y_Q.T0~q\ & (!\ir0|Q\(2) & \ir0|Q\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_y_Q.T0~q\,
	datac => \ir0|ALT_INV_Q\(2),
	datad => \ir0|ALT_INV_Q\(0),
	dataf => \ir0|ALT_INV_Q\(1),
	combout => \fsm|Selector7~0_combout\);

-- Location: LABCELL_X24_Y2_N54
\fsm|Selector7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector7~1_combout\ = ( \fsm|Selector7~0_combout\ ) # ( !\fsm|Selector7~0_combout\ & ( (!\ir0|Q\(5) & (\fsm|Selector9~1_combout\ & \ir0|Q\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(5),
	datac => \fsm|ALT_INV_Selector9~1_combout\,
	datad => \ir0|ALT_INV_Q\(4),
	dataf => \fsm|ALT_INV_Selector7~0_combout\,
	combout => \fsm|Selector7~1_combout\);

-- Location: LABCELL_X24_Y2_N51
\fsm|Rin[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Rin\(3) = ( \fsm|Rin\(3) & ( (!\fsm|Selector2~0_combout\) # (\fsm|Selector7~1_combout\) ) ) # ( !\fsm|Rin\(3) & ( (\fsm|Selector2~0_combout\ & \fsm|Selector7~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Selector2~0_combout\,
	datac => \fsm|ALT_INV_Selector7~1_combout\,
	dataf => \fsm|ALT_INV_Rin\(3),
	combout => \fsm|Rin\(3));

-- Location: FF_X24_Y3_N55
\reg3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(0),
	sload => VCC,
	ena => \fsm|Rin\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(0));

-- Location: LABCELL_X25_Y4_N12
\fsm|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Mux5~0_combout\ = ( !\ir0|Q\(0) & ( (!\ir0|Q\(6) & (!\ir0|Q\(1) & \ir0|Q\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(6),
	datac => \ir0|ALT_INV_Q\(1),
	datad => \ir0|ALT_INV_Q\(2),
	dataf => \ir0|ALT_INV_Q\(0),
	combout => \fsm|Mux5~0_combout\);

-- Location: LABCELL_X25_Y4_N33
\fsm|R0toR7out[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|R0toR7out\(4) = ( \fsm|Mux5~0_combout\ & ( (\fsm|R0toR7out[0]~0_combout\) # (\fsm|R0toR7out\(4)) ) ) # ( !\fsm|Mux5~0_combout\ & ( (\fsm|R0toR7out\(4) & !\fsm|R0toR7out[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_R0toR7out\(4),
	datac => \fsm|ALT_INV_R0toR7out[0]~0_combout\,
	dataf => \fsm|ALT_INV_Mux5~0_combout\,
	combout => \fsm|R0toR7out\(4));

-- Location: LABCELL_X25_Y4_N42
\fsm|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Mux2~0_combout\ = ( \ir0|Q\(2) & ( \ir0|Q\(0) & ( (!\ir0|Q\(1) & !\ir0|Q\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ir0|ALT_INV_Q\(1),
	datad => \ir0|ALT_INV_Q\(6),
	datae => \ir0|ALT_INV_Q\(2),
	dataf => \ir0|ALT_INV_Q\(0),
	combout => \fsm|Mux2~0_combout\);

-- Location: LABCELL_X25_Y4_N15
\fsm|R0toR7out[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|R0toR7out\(5) = ( \fsm|Mux2~0_combout\ & ( (\fsm|R0toR7out[0]~0_combout\) # (\fsm|R0toR7out\(5)) ) ) # ( !\fsm|Mux2~0_combout\ & ( (\fsm|R0toR7out\(5) & !\fsm|R0toR7out[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fsm|ALT_INV_R0toR7out\(5),
	datac => \fsm|ALT_INV_R0toR7out[0]~0_combout\,
	dataf => \fsm|ALT_INV_Mux2~0_combout\,
	combout => \fsm|R0toR7out\(5));

-- Location: LABCELL_X25_Y4_N30
\mux0|y[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[0]~1_combout\ = ( !\fsm|R0toR7out\(5) & ( !\fsm|R0toR7out\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_R0toR7out\(4),
	dataf => \fsm|ALT_INV_R0toR7out\(5),
	combout => \mux0|y[0]~1_combout\);

-- Location: LABCELL_X25_Y4_N54
\fsm|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Mux3~0_combout\ = ( \ir0|Q\(2) & ( !\ir0|Q\(0) & ( (\ir0|Q\(1) & !\ir0|Q\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ir0|ALT_INV_Q\(1),
	datad => \ir0|ALT_INV_Q\(6),
	datae => \ir0|ALT_INV_Q\(2),
	dataf => \ir0|ALT_INV_Q\(0),
	combout => \fsm|Mux3~0_combout\);

-- Location: LABCELL_X25_Y4_N21
\fsm|R0toR7out[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|R0toR7out\(6) = ( \fsm|Mux3~0_combout\ & ( (\fsm|R0toR7out[0]~0_combout\) # (\fsm|R0toR7out\(6)) ) ) # ( !\fsm|Mux3~0_combout\ & ( (\fsm|R0toR7out\(6) & !\fsm|R0toR7out[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_R0toR7out\(6),
	datac => \fsm|ALT_INV_R0toR7out[0]~0_combout\,
	dataf => \fsm|ALT_INV_Mux3~0_combout\,
	combout => \fsm|R0toR7out\(6));

-- Location: LABCELL_X25_Y4_N9
\mux0|y[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[0]~0_combout\ = ( \fsm|R0toR7out\(6) & ( !\fsm|R0toR7out\(4) ) ) # ( !\fsm|R0toR7out\(6) & ( !\fsm|R0toR7out\(4) & ( \fsm|R0toR7out\(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_R0toR7out\(5),
	datae => \fsm|ALT_INV_R0toR7out\(6),
	dataf => \fsm|ALT_INV_R0toR7out\(4),
	combout => \mux0|y[0]~0_combout\);

-- Location: LABCELL_X25_Y2_N39
\fsm|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector4~0_combout\ = ( !\ir0|Q\(0) & ( !\fsm|y_Q.T0~q\ & ( (\ir0|Q\(2) & \ir0|Q\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ir0|ALT_INV_Q\(2),
	datac => \ir0|ALT_INV_Q\(1),
	datae => \ir0|ALT_INV_Q\(0),
	dataf => \fsm|ALT_INV_y_Q.T0~q\,
	combout => \fsm|Selector4~0_combout\);

-- Location: LABCELL_X25_Y2_N27
\fsm|Selector4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector4~1_combout\ = ( \fsm|Selector4~0_combout\ ) # ( !\fsm|Selector4~0_combout\ & ( (\fsm|Selector10~1_combout\ & (\ir0|Q\(4) & \ir0|Q\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Selector10~1_combout\,
	datac => \ir0|ALT_INV_Q\(4),
	datad => \ir0|ALT_INV_Q\(5),
	dataf => \fsm|ALT_INV_Selector4~0_combout\,
	combout => \fsm|Selector4~1_combout\);

-- Location: LABCELL_X25_Y2_N15
\fsm|Rin[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Rin\(6) = ( \fsm|Rin\(6) & ( (!\fsm|Selector2~0_combout\) # (\fsm|Selector4~1_combout\) ) ) # ( !\fsm|Rin\(6) & ( (\fsm|Selector4~1_combout\ & \fsm|Selector2~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fsm|ALT_INV_Selector4~1_combout\,
	datad => \fsm|ALT_INV_Selector2~0_combout\,
	dataf => \fsm|ALT_INV_Rin\(6),
	combout => \fsm|Rin\(6));

-- Location: FF_X24_Y4_N14
\reg6|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(0),
	sload => VCC,
	ena => \fsm|Rin\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|Q\(0));

-- Location: LABCELL_X25_Y2_N18
\fsm|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector3~0_combout\ = ( !\fsm|y_Q.T0~q\ & ( (\ir0|Q\(1) & (\ir0|Q\(0) & \ir0|Q\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ir0|ALT_INV_Q\(1),
	datac => \ir0|ALT_INV_Q\(0),
	datad => \ir0|ALT_INV_Q\(2),
	dataf => \fsm|ALT_INV_y_Q.T0~q\,
	combout => \fsm|Selector3~0_combout\);

-- Location: LABCELL_X25_Y2_N21
\fsm|Selector3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector3~1_combout\ = ( \fsm|Selector3~0_combout\ ) # ( !\fsm|Selector3~0_combout\ & ( (\fsm|Selector9~1_combout\ & (\ir0|Q\(4) & \ir0|Q\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Selector9~1_combout\,
	datac => \ir0|ALT_INV_Q\(4),
	datad => \ir0|ALT_INV_Q\(5),
	dataf => \fsm|ALT_INV_Selector3~0_combout\,
	combout => \fsm|Selector3~1_combout\);

-- Location: LABCELL_X25_Y2_N24
\fsm|Rin[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Rin\(7) = ( \fsm|Rin\(7) & ( (!\fsm|Selector2~0_combout\) # (\fsm|Selector3~1_combout\) ) ) # ( !\fsm|Rin\(7) & ( (\fsm|Selector3~1_combout\ & \fsm|Selector2~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fsm|ALT_INV_Selector3~1_combout\,
	datad => \fsm|ALT_INV_Selector2~0_combout\,
	dataf => \fsm|ALT_INV_Rin\(7),
	combout => \fsm|Rin\(7));

-- Location: FF_X24_Y4_N10
\reg7|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(0),
	sload => VCC,
	ena => \fsm|Rin\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|Q\(0));

-- Location: LABCELL_X25_Y2_N48
\fsm|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector5~0_combout\ = ( \fsm|Selector9~0_combout\ & ( ((\fsm|Selector9~1_combout\ & (\ir0|Q\(5) & !\ir0|Q\(4)))) # (\ir0|Q\(2)) ) ) # ( !\fsm|Selector9~0_combout\ & ( (\fsm|Selector9~1_combout\ & (\ir0|Q\(5) & !\ir0|Q\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000110111001100110011011100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Selector9~1_combout\,
	datab => \ir0|ALT_INV_Q\(2),
	datac => \ir0|ALT_INV_Q\(5),
	datad => \ir0|ALT_INV_Q\(4),
	dataf => \fsm|ALT_INV_Selector9~0_combout\,
	combout => \fsm|Selector5~0_combout\);

-- Location: LABCELL_X25_Y2_N51
\fsm|Rin[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Rin\(5) = ( \fsm|Rin\(5) & ( (!\fsm|Selector2~0_combout\) # (\fsm|Selector5~0_combout\) ) ) # ( !\fsm|Rin\(5) & ( (\fsm|Selector5~0_combout\ & \fsm|Selector2~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_Selector5~0_combout\,
	datad => \fsm|ALT_INV_Selector2~0_combout\,
	dataf => \fsm|ALT_INV_Rin\(5),
	combout => \fsm|Rin\(5));

-- Location: FF_X24_Y4_N49
\reg5|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(0),
	sload => VCC,
	ena => \fsm|Rin\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|Q\(0));

-- Location: LABCELL_X25_Y2_N45
\fsm|Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector10~0_combout\ = ( !\fsm|y_Q.T0~q\ & ( (!\ir0|Q\(1) & !\ir0|Q\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ir0|ALT_INV_Q\(1),
	datad => \ir0|ALT_INV_Q\(0),
	dataf => \fsm|ALT_INV_y_Q.T0~q\,
	combout => \fsm|Selector10~0_combout\);

-- Location: LABCELL_X25_Y2_N57
\fsm|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector6~0_combout\ = ( \ir0|Q\(4) & ( \fsm|Selector10~0_combout\ & ( \ir0|Q\(2) ) ) ) # ( !\ir0|Q\(4) & ( \fsm|Selector10~0_combout\ & ( ((\ir0|Q\(5) & \fsm|Selector10~1_combout\)) # (\ir0|Q\(2)) ) ) ) # ( !\ir0|Q\(4) & ( 
-- !\fsm|Selector10~0_combout\ & ( (\ir0|Q\(5) & \fsm|Selector10~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000000000000000000011111000111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(5),
	datab => \fsm|ALT_INV_Selector10~1_combout\,
	datac => \ir0|ALT_INV_Q\(2),
	datae => \ir0|ALT_INV_Q\(4),
	dataf => \fsm|ALT_INV_Selector10~0_combout\,
	combout => \fsm|Selector6~0_combout\);

-- Location: LABCELL_X25_Y2_N3
\fsm|Rin[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Rin\(4) = ( \fsm|Rin\(4) & ( (!\fsm|Selector2~0_combout\) # (\fsm|Selector6~0_combout\) ) ) # ( !\fsm|Rin\(4) & ( (\fsm|Selector6~0_combout\ & \fsm|Selector2~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Selector6~0_combout\,
	datad => \fsm|ALT_INV_Selector2~0_combout\,
	dataf => \fsm|ALT_INV_Rin\(4),
	combout => \fsm|Rin\(4));

-- Location: FF_X25_Y4_N20
\reg4|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(0),
	sload => VCC,
	ena => \fsm|Rin\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(0));

-- Location: LABCELL_X24_Y4_N15
\mux0|y[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[0]~2_combout\ = ( \reg5|Q\(0) & ( \reg4|Q\(0) & ( (!\mux0|y[0]~1_combout\) # ((!\mux0|y[0]~0_combout\ & ((\reg7|Q\(0)))) # (\mux0|y[0]~0_combout\ & (\reg6|Q\(0)))) ) ) ) # ( !\reg5|Q\(0) & ( \reg4|Q\(0) & ( (!\mux0|y[0]~1_combout\ & 
-- (!\mux0|y[0]~0_combout\)) # (\mux0|y[0]~1_combout\ & ((!\mux0|y[0]~0_combout\ & ((\reg7|Q\(0)))) # (\mux0|y[0]~0_combout\ & (\reg6|Q\(0))))) ) ) ) # ( \reg5|Q\(0) & ( !\reg4|Q\(0) & ( (!\mux0|y[0]~1_combout\ & (\mux0|y[0]~0_combout\)) # 
-- (\mux0|y[0]~1_combout\ & ((!\mux0|y[0]~0_combout\ & ((\reg7|Q\(0)))) # (\mux0|y[0]~0_combout\ & (\reg6|Q\(0))))) ) ) ) # ( !\reg5|Q\(0) & ( !\reg4|Q\(0) & ( (\mux0|y[0]~1_combout\ & ((!\mux0|y[0]~0_combout\ & ((\reg7|Q\(0)))) # (\mux0|y[0]~0_combout\ & 
-- (\reg6|Q\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101001000110110011110001001110011011010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[0]~1_combout\,
	datab => \mux0|ALT_INV_y[0]~0_combout\,
	datac => \reg6|ALT_INV_Q\(0),
	datad => \reg7|ALT_INV_Q\(0),
	datae => \reg5|ALT_INV_Q\(0),
	dataf => \reg4|ALT_INV_Q\(0),
	combout => \mux0|y[0]~2_combout\);

-- Location: LABCELL_X24_Y4_N45
\mux0|y[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[0]~5_combout\ = ( \reg3|Q\(0) & ( \mux0|y[0]~2_combout\ & ( ((!\mux0|y[0]~3_combout\ & ((\reg1|Q\(0)))) # (\mux0|y[0]~3_combout\ & (\reg2|Q\(0)))) # (\mux0|y[0]~4_combout\) ) ) ) # ( !\reg3|Q\(0) & ( \mux0|y[0]~2_combout\ & ( 
-- (!\mux0|y[0]~4_combout\ & ((!\mux0|y[0]~3_combout\ & ((\reg1|Q\(0)))) # (\mux0|y[0]~3_combout\ & (\reg2|Q\(0))))) # (\mux0|y[0]~4_combout\ & (!\mux0|y[0]~3_combout\)) ) ) ) # ( \reg3|Q\(0) & ( !\mux0|y[0]~2_combout\ & ( (!\mux0|y[0]~4_combout\ & 
-- ((!\mux0|y[0]~3_combout\ & ((\reg1|Q\(0)))) # (\mux0|y[0]~3_combout\ & (\reg2|Q\(0))))) # (\mux0|y[0]~4_combout\ & (\mux0|y[0]~3_combout\)) ) ) ) # ( !\reg3|Q\(0) & ( !\mux0|y[0]~2_combout\ & ( (!\mux0|y[0]~4_combout\ & ((!\mux0|y[0]~3_combout\ & 
-- ((\reg1|Q\(0)))) # (\mux0|y[0]~3_combout\ & (\reg2|Q\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[0]~4_combout\,
	datab => \mux0|ALT_INV_y[0]~3_combout\,
	datac => \reg2|ALT_INV_Q\(0),
	datad => \reg1|ALT_INV_Q\(0),
	datae => \reg3|ALT_INV_Q\(0),
	dataf => \mux0|ALT_INV_y[0]~2_combout\,
	combout => \mux0|y[0]~5_combout\);

-- Location: LABCELL_X24_Y3_N21
\mux0|y[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[0]~6_combout\ = ( \mux0|y[0]~5_combout\ & ( (!\fsm|Dout~combout\ & ((!\fsm|R0toR7out\(0)) # ((\reg0|Q\(0))))) # (\fsm|Dout~combout\ & (((\data_in[0]~input_o\)))) ) ) # ( !\mux0|y[0]~5_combout\ & ( (!\fsm|Dout~combout\ & (\fsm|R0toR7out\(0) & 
-- ((\reg0|Q\(0))))) # (\fsm|Dout~combout\ & (((\data_in[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000110100011110001011110011111000101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_R0toR7out\(0),
	datab => \fsm|ALT_INV_Dout~combout\,
	datac => \ALT_INV_data_in[0]~input_o\,
	datad => \reg0|ALT_INV_Q\(0),
	dataf => \mux0|ALT_INV_y[0]~5_combout\,
	combout => \mux0|y[0]~6_combout\);

-- Location: MLABCELL_X23_Y2_N6
\mux0|Mux9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|Mux9~2_combout\ = ( \fsm|R0toR7out\(1) & ( (!\fsm|R0toR7out\(2) & (!\fsm|R0toR7out\(0) & !\fsm|R0toR7out\(3))) ) ) # ( !\fsm|R0toR7out\(1) & ( (!\fsm|R0toR7out\(2) & (\fsm|R0toR7out\(0) & !\fsm|R0toR7out\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_R0toR7out\(2),
	datac => \fsm|ALT_INV_R0toR7out\(0),
	datad => \fsm|ALT_INV_R0toR7out\(3),
	dataf => \fsm|ALT_INV_R0toR7out\(1),
	combout => \mux0|Mux9~2_combout\);

-- Location: MLABCELL_X23_Y2_N54
\mux0|Mux9~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|Mux9~4_combout\ = ( !\fsm|R0toR7out\(3) & ( (!\fsm|R0toR7out\(2) & (!\fsm|R0toR7out\(1) & !\fsm|R0toR7out\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000100010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_R0toR7out\(2),
	datab => \fsm|ALT_INV_R0toR7out\(1),
	datad => \fsm|ALT_INV_R0toR7out\(0),
	dataf => \fsm|ALT_INV_R0toR7out\(3),
	combout => \mux0|Mux9~4_combout\);

-- Location: LABCELL_X25_Y2_N9
\fsm|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Mux4~0_combout\ = ( !\ir0|Q\(6) & ( (\ir0|Q\(0) & (\ir0|Q\(1) & \ir0|Q\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(0),
	datac => \ir0|ALT_INV_Q\(1),
	datad => \ir0|ALT_INV_Q\(2),
	dataf => \ir0|ALT_INV_Q\(6),
	combout => \fsm|Mux4~0_combout\);

-- Location: LABCELL_X25_Y2_N6
\fsm|R0toR7out[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|R0toR7out\(7) = ( \fsm|Mux4~0_combout\ & ( (\fsm|R0toR7out\(7)) # (\fsm|R0toR7out[0]~0_combout\) ) ) # ( !\fsm|Mux4~0_combout\ & ( (!\fsm|R0toR7out[0]~0_combout\ & \fsm|R0toR7out\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fsm|ALT_INV_R0toR7out[0]~0_combout\,
	datad => \fsm|ALT_INV_R0toR7out\(7),
	dataf => \fsm|ALT_INV_Mux4~0_combout\,
	combout => \fsm|R0toR7out\(7));

-- Location: LABCELL_X25_Y4_N48
\mux0|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|Mux9~0_combout\ = ( !\fsm|R0toR7out\(7) & ( \fsm|R0toR7out\(5) & ( (!\fsm|R0toR7out\(6) & !\fsm|R0toR7out\(4)) ) ) ) # ( \fsm|R0toR7out\(7) & ( !\fsm|R0toR7out\(5) & ( (!\fsm|R0toR7out\(6) & !\fsm|R0toR7out\(4)) ) ) ) # ( !\fsm|R0toR7out\(7) & ( 
-- !\fsm|R0toR7out\(5) & ( !\fsm|R0toR7out\(6) $ (!\fsm|R0toR7out\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010101000001010000010100000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_R0toR7out\(6),
	datac => \fsm|ALT_INV_R0toR7out\(4),
	datae => \fsm|ALT_INV_R0toR7out\(7),
	dataf => \fsm|ALT_INV_R0toR7out\(5),
	combout => \mux0|Mux9~0_combout\);

-- Location: LABCELL_X25_Y4_N18
\mux0|Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|Mux9~1_combout\ = ( !\fsm|R0toR7out\(5) & ( (!\fsm|R0toR7out\(6) & (!\fsm|R0toR7out\(7) & !\fsm|R0toR7out\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_R0toR7out\(6),
	datab => \fsm|ALT_INV_R0toR7out\(7),
	datac => \fsm|ALT_INV_R0toR7out\(4),
	dataf => \fsm|ALT_INV_R0toR7out\(5),
	combout => \mux0|Mux9~1_combout\);

-- Location: MLABCELL_X23_Y2_N51
\mux0|Mux9~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|Mux9~3_combout\ = ( !\fsm|R0toR7out\(1) & ( (!\fsm|R0toR7out\(0) & (!\fsm|R0toR7out\(3) $ (!\fsm|R0toR7out\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011000000001100001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fsm|ALT_INV_R0toR7out\(3),
	datac => \fsm|ALT_INV_R0toR7out\(0),
	datad => \fsm|ALT_INV_R0toR7out\(2),
	dataf => \fsm|ALT_INV_R0toR7out\(1),
	combout => \mux0|Mux9~3_combout\);

-- Location: MLABCELL_X23_Y2_N36
\mux0|y[8]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[8]~7_combout\ = ( \mux0|Mux9~1_combout\ & ( \mux0|Mux9~3_combout\ ) ) # ( !\mux0|Mux9~1_combout\ & ( \mux0|Mux9~3_combout\ & ( ((\mux0|Mux9~4_combout\ & \mux0|Mux9~0_combout\)) # (\fsm|Dout~combout\) ) ) ) # ( \mux0|Mux9~1_combout\ & ( 
-- !\mux0|Mux9~3_combout\ & ( (((\mux0|Mux9~4_combout\ & \mux0|Mux9~0_combout\)) # (\mux0|Mux9~2_combout\)) # (\fsm|Dout~combout\) ) ) ) # ( !\mux0|Mux9~1_combout\ & ( !\mux0|Mux9~3_combout\ & ( ((\mux0|Mux9~4_combout\ & \mux0|Mux9~0_combout\)) # 
-- (\fsm|Dout~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011111011101110111111101010101010111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Dout~combout\,
	datab => \mux0|ALT_INV_Mux9~2_combout\,
	datac => \mux0|ALT_INV_Mux9~4_combout\,
	datad => \mux0|ALT_INV_Mux9~0_combout\,
	datae => \mux0|ALT_INV_Mux9~1_combout\,
	dataf => \mux0|ALT_INV_Mux9~3_combout\,
	combout => \mux0|y[8]~7_combout\);

-- Location: LABCELL_X24_Y3_N18
\mux0|y[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y\(0) = ( \mux0|y[8]~7_combout\ & ( \mux0|y[0]~6_combout\ ) ) # ( !\mux0|y[8]~7_combout\ & ( \mux0|y\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mux0|ALT_INV_y[0]~6_combout\,
	datad => \mux0|ALT_INV_y\(0),
	dataf => \mux0|ALT_INV_y[8]~7_combout\,
	combout => \mux0|y\(0));

-- Location: LABCELL_X24_Y2_N27
\fsm|Selector10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector10~2_combout\ = ( \fsm|Selector10~0_combout\ & ( (!\ir0|Q\(2)) # ((!\ir0|Q\(5) & (!\ir0|Q\(4) & \fsm|Selector10~1_combout\))) ) ) # ( !\fsm|Selector10~0_combout\ & ( (!\ir0|Q\(5) & (!\ir0|Q\(4) & \fsm|Selector10~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100011111111000010001111111100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(5),
	datab => \ir0|ALT_INV_Q\(4),
	datac => \fsm|ALT_INV_Selector10~1_combout\,
	datad => \ir0|ALT_INV_Q\(2),
	dataf => \fsm|ALT_INV_Selector10~0_combout\,
	combout => \fsm|Selector10~2_combout\);

-- Location: LABCELL_X24_Y2_N57
\fsm|Rin[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Rin\(0) = ( \fsm|Selector2~0_combout\ & ( \fsm|Selector10~2_combout\ ) ) # ( !\fsm|Selector2~0_combout\ & ( \fsm|Rin\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fsm|ALT_INV_Selector10~2_combout\,
	datad => \fsm|ALT_INV_Rin\(0),
	dataf => \fsm|ALT_INV_Selector2~0_combout\,
	combout => \fsm|Rin\(0));

-- Location: FF_X24_Y3_N23
\reg0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(0),
	sload => VCC,
	ena => \fsm|Rin\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(0));

-- Location: FF_X23_Y4_N44
\reg2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(1),
	sload => VCC,
	ena => \fsm|Rin\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(1));

-- Location: LABCELL_X21_Y4_N24
\reg3|Q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg3|Q[1]~feeder_combout\ = ( \mux0|y\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y\(1),
	combout => \reg3|Q[1]~feeder_combout\);

-- Location: FF_X21_Y4_N25
\reg3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg3|Q[1]~feeder_combout\,
	ena => \fsm|Rin\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(1));

-- Location: LABCELL_X25_Y4_N24
\reg1|Q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg1|Q[1]~feeder_combout\ = \mux0|y\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mux0|ALT_INV_y\(1),
	combout => \reg1|Q[1]~feeder_combout\);

-- Location: FF_X25_Y4_N26
\reg1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg1|Q[1]~feeder_combout\,
	ena => \fsm|Rin\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(1));

-- Location: FF_X24_Y4_N29
\reg7|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(1),
	sload => VCC,
	ena => \fsm|Rin\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|Q\(1));

-- Location: FF_X23_Y4_N22
\reg4|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(1),
	sload => VCC,
	ena => \fsm|Rin\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(1));

-- Location: FF_X23_Y4_N37
\reg5|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(1),
	sload => VCC,
	ena => \fsm|Rin\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|Q\(1));

-- Location: FF_X24_Y4_N41
\reg6|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(1),
	sload => VCC,
	ena => \fsm|Rin\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|Q\(1));

-- Location: MLABCELL_X23_Y4_N51
\mux0|y[1]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[1]~8_combout\ = ( \mux0|y[0]~0_combout\ & ( \mux0|y[0]~1_combout\ & ( \reg6|Q\(1) ) ) ) # ( !\mux0|y[0]~0_combout\ & ( \mux0|y[0]~1_combout\ & ( \reg7|Q\(1) ) ) ) # ( \mux0|y[0]~0_combout\ & ( !\mux0|y[0]~1_combout\ & ( \reg5|Q\(1) ) ) ) # ( 
-- !\mux0|y[0]~0_combout\ & ( !\mux0|y[0]~1_combout\ & ( \reg4|Q\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg7|ALT_INV_Q\(1),
	datab => \reg4|ALT_INV_Q\(1),
	datac => \reg5|ALT_INV_Q\(1),
	datad => \reg6|ALT_INV_Q\(1),
	datae => \mux0|ALT_INV_y[0]~0_combout\,
	dataf => \mux0|ALT_INV_y[0]~1_combout\,
	combout => \mux0|y[1]~8_combout\);

-- Location: MLABCELL_X23_Y4_N45
\mux0|y[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[1]~9_combout\ = ( \reg1|Q\(1) & ( \mux0|y[1]~8_combout\ & ( (!\mux0|y[0]~3_combout\) # ((!\mux0|y[0]~4_combout\ & (\reg2|Q\(1))) # (\mux0|y[0]~4_combout\ & ((\reg3|Q\(1))))) ) ) ) # ( !\reg1|Q\(1) & ( \mux0|y[1]~8_combout\ & ( 
-- (!\mux0|y[0]~3_combout\ & (((\mux0|y[0]~4_combout\)))) # (\mux0|y[0]~3_combout\ & ((!\mux0|y[0]~4_combout\ & (\reg2|Q\(1))) # (\mux0|y[0]~4_combout\ & ((\reg3|Q\(1)))))) ) ) ) # ( \reg1|Q\(1) & ( !\mux0|y[1]~8_combout\ & ( (!\mux0|y[0]~3_combout\ & 
-- (((!\mux0|y[0]~4_combout\)))) # (\mux0|y[0]~3_combout\ & ((!\mux0|y[0]~4_combout\ & (\reg2|Q\(1))) # (\mux0|y[0]~4_combout\ & ((\reg3|Q\(1)))))) ) ) ) # ( !\reg1|Q\(1) & ( !\mux0|y[1]~8_combout\ & ( (\mux0|y[0]~3_combout\ & ((!\mux0|y[0]~4_combout\ & 
-- (\reg2|Q\(1))) # (\mux0|y[0]~4_combout\ & ((\reg3|Q\(1)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101101110110000010100010001101011111011101110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[0]~3_combout\,
	datab => \reg2|ALT_INV_Q\(1),
	datac => \reg3|ALT_INV_Q\(1),
	datad => \mux0|ALT_INV_y[0]~4_combout\,
	datae => \reg1|ALT_INV_Q\(1),
	dataf => \mux0|ALT_INV_y[1]~8_combout\,
	combout => \mux0|y[1]~9_combout\);

-- Location: MLABCELL_X23_Y2_N33
\mux0|y[1]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[1]~10_combout\ = ( \mux0|y[1]~9_combout\ & ( (!\fsm|Dout~combout\ & (((!\fsm|R0toR7out\(0)) # (\reg0|Q\(1))))) # (\fsm|Dout~combout\ & (\data_in[1]~input_o\)) ) ) # ( !\mux0|y[1]~9_combout\ & ( (!\fsm|Dout~combout\ & (((\fsm|R0toR7out\(0) & 
-- \reg0|Q\(1))))) # (\fsm|Dout~combout\ & (\data_in[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110101000001010011010111000101111101011100010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data_in[1]~input_o\,
	datab => \fsm|ALT_INV_R0toR7out\(0),
	datac => \fsm|ALT_INV_Dout~combout\,
	datad => \reg0|ALT_INV_Q\(1),
	dataf => \mux0|ALT_INV_y[1]~9_combout\,
	combout => \mux0|y[1]~10_combout\);

-- Location: MLABCELL_X23_Y2_N18
\mux0|y[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y\(1) = ( \mux0|y\(1) & ( (!\mux0|y[8]~7_combout\) # (\mux0|y[1]~10_combout\) ) ) # ( !\mux0|y\(1) & ( (\mux0|y[1]~10_combout\ & \mux0|y[8]~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mux0|ALT_INV_y[1]~10_combout\,
	datad => \mux0|ALT_INV_y[8]~7_combout\,
	dataf => \mux0|ALT_INV_y\(1),
	combout => \mux0|y\(1));

-- Location: FF_X23_Y2_N34
\reg0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(1),
	sload => VCC,
	ena => \fsm|Rin\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(1));

-- Location: FF_X24_Y3_N5
\reg3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(2),
	sload => VCC,
	ena => \fsm|Rin\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(2));

-- Location: FF_X24_Y3_N8
\reg2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(2),
	sload => VCC,
	ena => \fsm|Rin\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(2));

-- Location: FF_X25_Y3_N17
\reg1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(2),
	sload => VCC,
	ena => \fsm|Rin\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(2));

-- Location: FF_X24_Y4_N25
\reg7|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(2),
	sload => VCC,
	ena => \fsm|Rin\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|Q\(2));

-- Location: FF_X25_Y4_N56
\reg4|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(2),
	sload => VCC,
	ena => \fsm|Rin\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(2));

-- Location: FF_X25_Y4_N38
\reg5|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(2),
	sload => VCC,
	ena => \fsm|Rin\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|Q\(2));

-- Location: FF_X24_Y4_N16
\reg6|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(2),
	sload => VCC,
	ena => \fsm|Rin\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|Q\(2));

-- Location: LABCELL_X25_Y4_N39
\mux0|y[2]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[2]~11_combout\ = ( \reg5|Q\(2) & ( \reg6|Q\(2) & ( ((!\mux0|y[0]~1_combout\ & ((\reg4|Q\(2)))) # (\mux0|y[0]~1_combout\ & (\reg7|Q\(2)))) # (\mux0|y[0]~0_combout\) ) ) ) # ( !\reg5|Q\(2) & ( \reg6|Q\(2) & ( (!\mux0|y[0]~1_combout\ & 
-- (!\mux0|y[0]~0_combout\ & ((\reg4|Q\(2))))) # (\mux0|y[0]~1_combout\ & (((\reg7|Q\(2))) # (\mux0|y[0]~0_combout\))) ) ) ) # ( \reg5|Q\(2) & ( !\reg6|Q\(2) & ( (!\mux0|y[0]~1_combout\ & (((\reg4|Q\(2))) # (\mux0|y[0]~0_combout\))) # (\mux0|y[0]~1_combout\ 
-- & (!\mux0|y[0]~0_combout\ & (\reg7|Q\(2)))) ) ) ) # ( !\reg5|Q\(2) & ( !\reg6|Q\(2) & ( (!\mux0|y[0]~0_combout\ & ((!\mux0|y[0]~1_combout\ & ((\reg4|Q\(2)))) # (\mux0|y[0]~1_combout\ & (\reg7|Q\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001001101010111000010101100111010011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[0]~1_combout\,
	datab => \mux0|ALT_INV_y[0]~0_combout\,
	datac => \reg7|ALT_INV_Q\(2),
	datad => \reg4|ALT_INV_Q\(2),
	datae => \reg5|ALT_INV_Q\(2),
	dataf => \reg6|ALT_INV_Q\(2),
	combout => \mux0|y[2]~11_combout\);

-- Location: LABCELL_X24_Y3_N9
\mux0|y[2]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[2]~12_combout\ = ( \reg1|Q\(2) & ( \mux0|y[2]~11_combout\ & ( (!\mux0|y[0]~3_combout\) # ((!\mux0|y[0]~4_combout\ & ((\reg2|Q\(2)))) # (\mux0|y[0]~4_combout\ & (\reg3|Q\(2)))) ) ) ) # ( !\reg1|Q\(2) & ( \mux0|y[2]~11_combout\ & ( 
-- (!\mux0|y[0]~4_combout\ & (((\reg2|Q\(2) & \mux0|y[0]~3_combout\)))) # (\mux0|y[0]~4_combout\ & (((!\mux0|y[0]~3_combout\)) # (\reg3|Q\(2)))) ) ) ) # ( \reg1|Q\(2) & ( !\mux0|y[2]~11_combout\ & ( (!\mux0|y[0]~4_combout\ & (((!\mux0|y[0]~3_combout\) # 
-- (\reg2|Q\(2))))) # (\mux0|y[0]~4_combout\ & (\reg3|Q\(2) & ((\mux0|y[0]~3_combout\)))) ) ) ) # ( !\reg1|Q\(2) & ( !\mux0|y[2]~11_combout\ & ( (\mux0|y[0]~3_combout\ & ((!\mux0|y[0]~4_combout\ & ((\reg2|Q\(2)))) # (\mux0|y[0]~4_combout\ & (\reg3|Q\(2))))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110101111100000011010100001111001101011111111100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg3|ALT_INV_Q\(2),
	datab => \reg2|ALT_INV_Q\(2),
	datac => \mux0|ALT_INV_y[0]~4_combout\,
	datad => \mux0|ALT_INV_y[0]~3_combout\,
	datae => \reg1|ALT_INV_Q\(2),
	dataf => \mux0|ALT_INV_y[2]~11_combout\,
	combout => \mux0|y[2]~12_combout\);

-- Location: LABCELL_X24_Y3_N0
\mux0|y[2]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[2]~13_combout\ = ( \reg0|Q\(2) & ( \mux0|y[2]~12_combout\ & ( (!\fsm|Dout~combout\) # (\data_in[2]~input_o\) ) ) ) # ( !\reg0|Q\(2) & ( \mux0|y[2]~12_combout\ & ( (!\fsm|Dout~combout\ & (!\fsm|R0toR7out\(0))) # (\fsm|Dout~combout\ & 
-- ((\data_in[2]~input_o\))) ) ) ) # ( \reg0|Q\(2) & ( !\mux0|y[2]~12_combout\ & ( (!\fsm|Dout~combout\ & (\fsm|R0toR7out\(0))) # (\fsm|Dout~combout\ & ((\data_in[2]~input_o\))) ) ) ) # ( !\reg0|Q\(2) & ( !\mux0|y[2]~12_combout\ & ( (\fsm|Dout~combout\ & 
-- \data_in[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010001110100011110001011100010111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_R0toR7out\(0),
	datab => \fsm|ALT_INV_Dout~combout\,
	datac => \ALT_INV_data_in[2]~input_o\,
	datae => \reg0|ALT_INV_Q\(2),
	dataf => \mux0|ALT_INV_y[2]~12_combout\,
	combout => \mux0|y[2]~13_combout\);

-- Location: LABCELL_X24_Y3_N48
\mux0|y[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y\(2) = ( \mux0|y[8]~7_combout\ & ( \mux0|y[2]~13_combout\ ) ) # ( !\mux0|y[8]~7_combout\ & ( \mux0|y\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mux0|ALT_INV_y[2]~13_combout\,
	datad => \mux0|ALT_INV_y\(2),
	dataf => \mux0|ALT_INV_y[8]~7_combout\,
	combout => \mux0|y\(2));

-- Location: FF_X24_Y3_N50
\reg0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mux0|y\(2),
	ena => \fsm|Rin\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(2));

-- Location: LABCELL_X25_Y3_N33
\reg1|Q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg1|Q[3]~feeder_combout\ = ( \mux0|y\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y\(3),
	combout => \reg1|Q[3]~feeder_combout\);

-- Location: FF_X25_Y3_N35
\reg1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg1|Q[3]~feeder_combout\,
	ena => \fsm|Rin\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(3));

-- Location: FF_X24_Y3_N32
\reg2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(3),
	sload => VCC,
	ena => \fsm|Rin\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(3));

-- Location: FF_X24_Y3_N26
\reg3|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(3),
	sload => VCC,
	ena => \fsm|Rin\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(3));

-- Location: FF_X25_Y4_N44
\reg4|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(3),
	sload => VCC,
	ena => \fsm|Rin\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(3));

-- Location: LABCELL_X24_Y4_N18
\reg7|Q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg7|Q[3]~feeder_combout\ = ( \mux0|y\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y\(3),
	combout => \reg7|Q[3]~feeder_combout\);

-- Location: FF_X24_Y4_N19
\reg7|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg7|Q[3]~feeder_combout\,
	ena => \fsm|Rin\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|Q\(3));

-- Location: FF_X25_Y4_N2
\reg5|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(3),
	sload => VCC,
	ena => \fsm|Rin\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|Q\(3));

-- Location: FF_X26_Y4_N26
\reg6|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(3),
	sload => VCC,
	ena => \fsm|Rin\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|Q\(3));

-- Location: LABCELL_X25_Y4_N3
\mux0|y[3]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[3]~14_combout\ = ( \reg5|Q\(3) & ( \reg6|Q\(3) & ( ((!\mux0|y[0]~1_combout\ & (\reg4|Q\(3))) # (\mux0|y[0]~1_combout\ & ((\reg7|Q\(3))))) # (\mux0|y[0]~0_combout\) ) ) ) # ( !\reg5|Q\(3) & ( \reg6|Q\(3) & ( (!\mux0|y[0]~1_combout\ & (\reg4|Q\(3) & 
-- ((!\mux0|y[0]~0_combout\)))) # (\mux0|y[0]~1_combout\ & (((\mux0|y[0]~0_combout\) # (\reg7|Q\(3))))) ) ) ) # ( \reg5|Q\(3) & ( !\reg6|Q\(3) & ( (!\mux0|y[0]~1_combout\ & (((\mux0|y[0]~0_combout\)) # (\reg4|Q\(3)))) # (\mux0|y[0]~1_combout\ & 
-- (((\reg7|Q\(3) & !\mux0|y[0]~0_combout\)))) ) ) ) # ( !\reg5|Q\(3) & ( !\reg6|Q\(3) & ( (!\mux0|y[0]~0_combout\ & ((!\mux0|y[0]~1_combout\ & (\reg4|Q\(3))) # (\mux0|y[0]~1_combout\ & ((\reg7|Q\(3)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000001001111010101000100111010101010010011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[0]~1_combout\,
	datab => \reg4|ALT_INV_Q\(3),
	datac => \reg7|ALT_INV_Q\(3),
	datad => \mux0|ALT_INV_y[0]~0_combout\,
	datae => \reg5|ALT_INV_Q\(3),
	dataf => \reg6|ALT_INV_Q\(3),
	combout => \mux0|y[3]~14_combout\);

-- Location: LABCELL_X24_Y3_N33
\mux0|y[3]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[3]~15_combout\ = ( \mux0|y[0]~3_combout\ & ( \mux0|y[3]~14_combout\ & ( (!\mux0|y[0]~4_combout\ & (\reg2|Q\(3))) # (\mux0|y[0]~4_combout\ & ((\reg3|Q\(3)))) ) ) ) # ( !\mux0|y[0]~3_combout\ & ( \mux0|y[3]~14_combout\ & ( (\mux0|y[0]~4_combout\) # 
-- (\reg1|Q\(3)) ) ) ) # ( \mux0|y[0]~3_combout\ & ( !\mux0|y[3]~14_combout\ & ( (!\mux0|y[0]~4_combout\ & (\reg2|Q\(3))) # (\mux0|y[0]~4_combout\ & ((\reg3|Q\(3)))) ) ) ) # ( !\mux0|y[0]~3_combout\ & ( !\mux0|y[3]~14_combout\ & ( (\reg1|Q\(3) & 
-- !\mux0|y[0]~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000001100000011111101011111010111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|ALT_INV_Q\(3),
	datab => \reg2|ALT_INV_Q\(3),
	datac => \mux0|ALT_INV_y[0]~4_combout\,
	datad => \reg3|ALT_INV_Q\(3),
	datae => \mux0|ALT_INV_y[0]~3_combout\,
	dataf => \mux0|ALT_INV_y[3]~14_combout\,
	combout => \mux0|y[3]~15_combout\);

-- Location: LABCELL_X24_Y3_N51
\mux0|y[3]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[3]~16_combout\ = ( \mux0|y[3]~15_combout\ & ( (!\fsm|Dout~combout\ & ((!\fsm|R0toR7out\(0)) # ((\reg0|Q\(3))))) # (\fsm|Dout~combout\ & (((\data_in[3]~input_o\)))) ) ) # ( !\mux0|y[3]~15_combout\ & ( (!\fsm|Dout~combout\ & (\fsm|R0toR7out\(0) & 
-- ((\reg0|Q\(3))))) # (\fsm|Dout~combout\ & (((\data_in[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000110100011110001011110011111000101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_R0toR7out\(0),
	datab => \fsm|ALT_INV_Dout~combout\,
	datac => \ALT_INV_data_in[3]~input_o\,
	datad => \reg0|ALT_INV_Q\(3),
	dataf => \mux0|ALT_INV_y[3]~15_combout\,
	combout => \mux0|y[3]~16_combout\);

-- Location: LABCELL_X24_Y3_N42
\mux0|y[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y\(3) = ( \mux0|y\(3) & ( (!\mux0|y[8]~7_combout\) # (\mux0|y[3]~16_combout\) ) ) # ( !\mux0|y\(3) & ( (\mux0|y[8]~7_combout\ & \mux0|y[3]~16_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mux0|ALT_INV_y[8]~7_combout\,
	datad => \mux0|ALT_INV_y[3]~16_combout\,
	dataf => \mux0|ALT_INV_y\(3),
	combout => \mux0|y\(3));

-- Location: FF_X24_Y3_N53
\reg0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(3),
	sload => VCC,
	ena => \fsm|Rin\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(3));

-- Location: FF_X23_Y4_N32
\reg2|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(4),
	sload => VCC,
	ena => \fsm|Rin\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(4));

-- Location: LABCELL_X21_Y4_N42
\reg3|Q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg3|Q[4]~feeder_combout\ = \mux0|y\(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mux0|ALT_INV_y\(4),
	combout => \reg3|Q[4]~feeder_combout\);

-- Location: FF_X21_Y4_N43
\reg3|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg3|Q[4]~feeder_combout\,
	ena => \fsm|Rin\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(4));

-- Location: FF_X25_Y4_N8
\reg1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(4),
	sload => VCC,
	ena => \fsm|Rin\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(4));

-- Location: FF_X23_Y4_N56
\reg4|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(4),
	sload => VCC,
	ena => \fsm|Rin\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(4));

-- Location: FF_X23_Y4_N8
\reg5|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(4),
	sload => VCC,
	ena => \fsm|Rin\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|Q\(4));

-- Location: LABCELL_X24_Y4_N9
\reg7|Q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg7|Q[4]~feeder_combout\ = \mux0|y\(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mux0|ALT_INV_y\(4),
	combout => \reg7|Q[4]~feeder_combout\);

-- Location: FF_X24_Y4_N11
\reg7|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg7|Q[4]~feeder_combout\,
	ena => \fsm|Rin\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|Q\(4));

-- Location: LABCELL_X24_Y4_N33
\reg6|Q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg6|Q[4]~feeder_combout\ = \mux0|y\(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mux0|ALT_INV_y\(4),
	combout => \reg6|Q[4]~feeder_combout\);

-- Location: FF_X24_Y4_N35
\reg6|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg6|Q[4]~feeder_combout\,
	ena => \fsm|Rin\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|Q\(4));

-- Location: MLABCELL_X23_Y4_N39
\mux0|y[4]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[4]~17_combout\ = ( \mux0|y[0]~0_combout\ & ( \reg6|Q\(4) & ( (\mux0|y[0]~1_combout\) # (\reg5|Q\(4)) ) ) ) # ( !\mux0|y[0]~0_combout\ & ( \reg6|Q\(4) & ( (!\mux0|y[0]~1_combout\ & (\reg4|Q\(4))) # (\mux0|y[0]~1_combout\ & ((\reg7|Q\(4)))) ) ) ) # 
-- ( \mux0|y[0]~0_combout\ & ( !\reg6|Q\(4) & ( (\reg5|Q\(4) & !\mux0|y[0]~1_combout\) ) ) ) # ( !\mux0|y[0]~0_combout\ & ( !\reg6|Q\(4) & ( (!\mux0|y[0]~1_combout\ & (\reg4|Q\(4))) # (\mux0|y[0]~1_combout\ & ((\reg7|Q\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111001100000011000001010000010111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4|ALT_INV_Q\(4),
	datab => \reg5|ALT_INV_Q\(4),
	datac => \mux0|ALT_INV_y[0]~1_combout\,
	datad => \reg7|ALT_INV_Q\(4),
	datae => \mux0|ALT_INV_y[0]~0_combout\,
	dataf => \reg6|ALT_INV_Q\(4),
	combout => \mux0|y[4]~17_combout\);

-- Location: MLABCELL_X23_Y4_N33
\mux0|y[4]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[4]~18_combout\ = ( \reg1|Q\(4) & ( \mux0|y[4]~17_combout\ & ( (!\mux0|y[0]~3_combout\) # ((!\mux0|y[0]~4_combout\ & (\reg2|Q\(4))) # (\mux0|y[0]~4_combout\ & ((\reg3|Q\(4))))) ) ) ) # ( !\reg1|Q\(4) & ( \mux0|y[4]~17_combout\ & ( 
-- (!\mux0|y[0]~4_combout\ & (\reg2|Q\(4) & (\mux0|y[0]~3_combout\))) # (\mux0|y[0]~4_combout\ & (((!\mux0|y[0]~3_combout\) # (\reg3|Q\(4))))) ) ) ) # ( \reg1|Q\(4) & ( !\mux0|y[4]~17_combout\ & ( (!\mux0|y[0]~4_combout\ & (((!\mux0|y[0]~3_combout\)) # 
-- (\reg2|Q\(4)))) # (\mux0|y[0]~4_combout\ & (((\mux0|y[0]~3_combout\ & \reg3|Q\(4))))) ) ) ) # ( !\reg1|Q\(4) & ( !\mux0|y[4]~17_combout\ & ( (\mux0|y[0]~3_combout\ & ((!\mux0|y[0]~4_combout\ & (\reg2|Q\(4))) # (\mux0|y[0]~4_combout\ & ((\reg3|Q\(4)))))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000111101000101010011101010010010101111111001011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[0]~4_combout\,
	datab => \reg2|ALT_INV_Q\(4),
	datac => \mux0|ALT_INV_y[0]~3_combout\,
	datad => \reg3|ALT_INV_Q\(4),
	datae => \reg1|ALT_INV_Q\(4),
	dataf => \mux0|ALT_INV_y[4]~17_combout\,
	combout => \mux0|y[4]~18_combout\);

-- Location: MLABCELL_X23_Y2_N21
\mux0|y[4]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[4]~19_combout\ = ( \mux0|y[4]~18_combout\ & ( (!\fsm|Dout~combout\ & ((!\fsm|R0toR7out\(0)) # ((\reg0|Q\(4))))) # (\fsm|Dout~combout\ & (((\data_in[4]~input_o\)))) ) ) # ( !\mux0|y[4]~18_combout\ & ( (!\fsm|Dout~combout\ & (\fsm|R0toR7out\(0) & 
-- ((\reg0|Q\(4))))) # (\fsm|Dout~combout\ & (((\data_in[4]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000110100011110001011110011111000101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_R0toR7out\(0),
	datab => \fsm|ALT_INV_Dout~combout\,
	datac => \ALT_INV_data_in[4]~input_o\,
	datad => \reg0|ALT_INV_Q\(4),
	dataf => \mux0|ALT_INV_y[4]~18_combout\,
	combout => \mux0|y[4]~19_combout\);

-- Location: MLABCELL_X23_Y2_N3
\mux0|y[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y\(4) = (!\mux0|y[8]~7_combout\ & ((\mux0|y\(4)))) # (\mux0|y[8]~7_combout\ & (\mux0|y[4]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[8]~7_combout\,
	datab => \mux0|ALT_INV_y[4]~19_combout\,
	datad => \mux0|ALT_INV_y\(4),
	combout => \mux0|y\(4));

-- Location: FF_X23_Y2_N23
\reg0|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(4),
	sload => VCC,
	ena => \fsm|Rin\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(4));

-- Location: LABCELL_X25_Y3_N39
\reg1|Q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg1|Q[5]~feeder_combout\ = \mux0|y\(5)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mux0|ALT_INV_y\(5),
	combout => \reg1|Q[5]~feeder_combout\);

-- Location: FF_X25_Y3_N41
\reg1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg1|Q[5]~feeder_combout\,
	ena => \fsm|Rin\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(5));

-- Location: FF_X24_Y3_N14
\reg2|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(5),
	sload => VCC,
	ena => \fsm|Rin\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(5));

-- Location: FF_X24_Y3_N59
\reg3|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(5),
	sload => VCC,
	ena => \fsm|Rin\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(5));

-- Location: FF_X24_Y4_N44
\reg5|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(5),
	sload => VCC,
	ena => \fsm|Rin\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|Q\(5));

-- Location: LABCELL_X24_Y4_N30
\reg6|Q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg6|Q[5]~feeder_combout\ = \mux0|y\(5)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mux0|ALT_INV_y\(5),
	combout => \reg6|Q[5]~feeder_combout\);

-- Location: FF_X24_Y4_N32
\reg6|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg6|Q[5]~feeder_combout\,
	ena => \fsm|Rin\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|Q\(5));

-- Location: FF_X24_Y4_N22
\reg7|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(5),
	sload => VCC,
	ena => \fsm|Rin\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|Q\(5));

-- Location: FF_X25_Y4_N58
\reg4|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(5),
	sload => VCC,
	ena => \fsm|Rin\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(5));

-- Location: LABCELL_X24_Y4_N51
\mux0|y[5]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[5]~20_combout\ = ( \reg7|Q\(5) & ( \reg4|Q\(5) & ( (!\mux0|y[0]~0_combout\) # ((!\mux0|y[0]~1_combout\ & (\reg5|Q\(5))) # (\mux0|y[0]~1_combout\ & ((\reg6|Q\(5))))) ) ) ) # ( !\reg7|Q\(5) & ( \reg4|Q\(5) & ( (!\mux0|y[0]~0_combout\ & 
-- (((!\mux0|y[0]~1_combout\)))) # (\mux0|y[0]~0_combout\ & ((!\mux0|y[0]~1_combout\ & (\reg5|Q\(5))) # (\mux0|y[0]~1_combout\ & ((\reg6|Q\(5)))))) ) ) ) # ( \reg7|Q\(5) & ( !\reg4|Q\(5) & ( (!\mux0|y[0]~0_combout\ & (((\mux0|y[0]~1_combout\)))) # 
-- (\mux0|y[0]~0_combout\ & ((!\mux0|y[0]~1_combout\ & (\reg5|Q\(5))) # (\mux0|y[0]~1_combout\ & ((\reg6|Q\(5)))))) ) ) ) # ( !\reg7|Q\(5) & ( !\reg4|Q\(5) & ( (\mux0|y[0]~0_combout\ & ((!\mux0|y[0]~1_combout\ & (\reg5|Q\(5))) # (\mux0|y[0]~1_combout\ & 
-- ((\reg6|Q\(5)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101000100011010111110111011000001011011101110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[0]~0_combout\,
	datab => \reg5|ALT_INV_Q\(5),
	datac => \reg6|ALT_INV_Q\(5),
	datad => \mux0|ALT_INV_y[0]~1_combout\,
	datae => \reg7|ALT_INV_Q\(5),
	dataf => \reg4|ALT_INV_Q\(5),
	combout => \mux0|y[5]~20_combout\);

-- Location: LABCELL_X24_Y3_N15
\mux0|y[5]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[5]~21_combout\ = ( \reg3|Q\(5) & ( \mux0|y[5]~20_combout\ & ( ((!\mux0|y[0]~3_combout\ & (\reg1|Q\(5))) # (\mux0|y[0]~3_combout\ & ((\reg2|Q\(5))))) # (\mux0|y[0]~4_combout\) ) ) ) # ( !\reg3|Q\(5) & ( \mux0|y[5]~20_combout\ & ( 
-- (!\mux0|y[0]~4_combout\ & ((!\mux0|y[0]~3_combout\ & (\reg1|Q\(5))) # (\mux0|y[0]~3_combout\ & ((\reg2|Q\(5)))))) # (\mux0|y[0]~4_combout\ & (((!\mux0|y[0]~3_combout\)))) ) ) ) # ( \reg3|Q\(5) & ( !\mux0|y[5]~20_combout\ & ( (!\mux0|y[0]~4_combout\ & 
-- ((!\mux0|y[0]~3_combout\ & (\reg1|Q\(5))) # (\mux0|y[0]~3_combout\ & ((\reg2|Q\(5)))))) # (\mux0|y[0]~4_combout\ & (((\mux0|y[0]~3_combout\)))) ) ) ) # ( !\reg3|Q\(5) & ( !\mux0|y[5]~20_combout\ & ( (!\mux0|y[0]~4_combout\ & ((!\mux0|y[0]~3_combout\ & 
-- (\reg1|Q\(5))) # (\mux0|y[0]~3_combout\ & ((\reg2|Q\(5)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100010001000011111101110111000011000111011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|ALT_INV_Q\(5),
	datab => \mux0|ALT_INV_y[0]~4_combout\,
	datac => \reg2|ALT_INV_Q\(5),
	datad => \mux0|ALT_INV_y[0]~3_combout\,
	datae => \reg3|ALT_INV_Q\(5),
	dataf => \mux0|ALT_INV_y[5]~20_combout\,
	combout => \mux0|y[5]~21_combout\);

-- Location: LABCELL_X24_Y3_N45
\mux0|y[5]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[5]~22_combout\ = ( \mux0|y[5]~21_combout\ & ( (!\fsm|Dout~combout\ & ((!\fsm|R0toR7out\(0)) # ((\reg0|Q\(5))))) # (\fsm|Dout~combout\ & (((\data_in[5]~input_o\)))) ) ) # ( !\mux0|y[5]~21_combout\ & ( (!\fsm|Dout~combout\ & (\fsm|R0toR7out\(0) & 
-- ((\reg0|Q\(5))))) # (\fsm|Dout~combout\ & (((\data_in[5]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011110001101101011111000110110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Dout~combout\,
	datab => \fsm|ALT_INV_R0toR7out\(0),
	datac => \ALT_INV_data_in[5]~input_o\,
	datad => \reg0|ALT_INV_Q\(5),
	dataf => \mux0|ALT_INV_y[5]~21_combout\,
	combout => \mux0|y[5]~22_combout\);

-- Location: LABCELL_X24_Y3_N27
\mux0|y[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y\(5) = ( \mux0|y\(5) & ( \mux0|y[8]~7_combout\ & ( \mux0|y[5]~22_combout\ ) ) ) # ( !\mux0|y\(5) & ( \mux0|y[8]~7_combout\ & ( \mux0|y[5]~22_combout\ ) ) ) # ( \mux0|y\(5) & ( !\mux0|y[8]~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mux0|ALT_INV_y[5]~22_combout\,
	datae => \mux0|ALT_INV_y\(5),
	dataf => \mux0|ALT_INV_y[8]~7_combout\,
	combout => \mux0|y\(5));

-- Location: FF_X24_Y3_N47
\reg0|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(5),
	sload => VCC,
	ena => \fsm|Rin\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(5));

-- Location: FF_X23_Y3_N53
\reg2|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(6),
	sload => VCC,
	ena => \fsm|Rin\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(6));

-- Location: FF_X23_Y3_N8
\reg3|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(6),
	sload => VCC,
	ena => \fsm|Rin\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(6));

-- Location: LABCELL_X25_Y3_N57
\reg1|Q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg1|Q[6]~feeder_combout\ = ( \mux0|y\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y\(6),
	combout => \reg1|Q[6]~feeder_combout\);

-- Location: FF_X25_Y3_N59
\reg1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg1|Q[6]~feeder_combout\,
	ena => \fsm|Rin\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(6));

-- Location: LABCELL_X24_Y4_N6
\reg7|Q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg7|Q[6]~feeder_combout\ = ( \mux0|y\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y\(6),
	combout => \reg7|Q[6]~feeder_combout\);

-- Location: FF_X24_Y4_N8
\reg7|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg7|Q[6]~feeder_combout\,
	ena => \fsm|Rin\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|Q\(6));

-- Location: LABCELL_X24_Y4_N0
\reg6|Q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg6|Q[6]~feeder_combout\ = ( \mux0|y\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y\(6),
	combout => \reg6|Q[6]~feeder_combout\);

-- Location: FF_X24_Y4_N2
\reg6|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg6|Q[6]~feeder_combout\,
	ena => \fsm|Rin\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|Q\(6));

-- Location: LABCELL_X24_Y4_N54
\reg5|Q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg5|Q[6]~feeder_combout\ = ( \mux0|y\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y\(6),
	combout => \reg5|Q[6]~feeder_combout\);

-- Location: FF_X24_Y4_N56
\reg5|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg5|Q[6]~feeder_combout\,
	ena => \fsm|Rin\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|Q\(6));

-- Location: FF_X25_Y4_N47
\reg4|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(6),
	sload => VCC,
	ena => \fsm|Rin\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(6));

-- Location: LABCELL_X24_Y4_N36
\mux0|y[6]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[6]~23_combout\ = ( \reg5|Q\(6) & ( \reg4|Q\(6) & ( (!\mux0|y[0]~1_combout\) # ((!\mux0|y[0]~0_combout\ & (\reg7|Q\(6))) # (\mux0|y[0]~0_combout\ & ((\reg6|Q\(6))))) ) ) ) # ( !\reg5|Q\(6) & ( \reg4|Q\(6) & ( (!\mux0|y[0]~1_combout\ & 
-- (((!\mux0|y[0]~0_combout\)))) # (\mux0|y[0]~1_combout\ & ((!\mux0|y[0]~0_combout\ & (\reg7|Q\(6))) # (\mux0|y[0]~0_combout\ & ((\reg6|Q\(6)))))) ) ) ) # ( \reg5|Q\(6) & ( !\reg4|Q\(6) & ( (!\mux0|y[0]~1_combout\ & (((\mux0|y[0]~0_combout\)))) # 
-- (\mux0|y[0]~1_combout\ & ((!\mux0|y[0]~0_combout\ & (\reg7|Q\(6))) # (\mux0|y[0]~0_combout\ & ((\reg6|Q\(6)))))) ) ) ) # ( !\reg5|Q\(6) & ( !\reg4|Q\(6) & ( (\mux0|y[0]~1_combout\ & ((!\mux0|y[0]~0_combout\ & (\reg7|Q\(6))) # (\mux0|y[0]~0_combout\ & 
-- ((\reg6|Q\(6)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101000100011010111110111011000001011011101110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[0]~1_combout\,
	datab => \reg7|ALT_INV_Q\(6),
	datac => \reg6|ALT_INV_Q\(6),
	datad => \mux0|ALT_INV_y[0]~0_combout\,
	datae => \reg5|ALT_INV_Q\(6),
	dataf => \reg4|ALT_INV_Q\(6),
	combout => \mux0|y[6]~23_combout\);

-- Location: MLABCELL_X23_Y3_N42
\mux0|y[6]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[6]~24_combout\ = ( \reg1|Q\(6) & ( \mux0|y[6]~23_combout\ & ( (!\mux0|y[0]~3_combout\) # ((!\mux0|y[0]~4_combout\ & (\reg2|Q\(6))) # (\mux0|y[0]~4_combout\ & ((\reg3|Q\(6))))) ) ) ) # ( !\reg1|Q\(6) & ( \mux0|y[6]~23_combout\ & ( 
-- (!\mux0|y[0]~3_combout\ & (((\mux0|y[0]~4_combout\)))) # (\mux0|y[0]~3_combout\ & ((!\mux0|y[0]~4_combout\ & (\reg2|Q\(6))) # (\mux0|y[0]~4_combout\ & ((\reg3|Q\(6)))))) ) ) ) # ( \reg1|Q\(6) & ( !\mux0|y[6]~23_combout\ & ( (!\mux0|y[0]~3_combout\ & 
-- (((!\mux0|y[0]~4_combout\)))) # (\mux0|y[0]~3_combout\ & ((!\mux0|y[0]~4_combout\ & (\reg2|Q\(6))) # (\mux0|y[0]~4_combout\ & ((\reg3|Q\(6)))))) ) ) ) # ( !\reg1|Q\(6) & ( !\mux0|y[6]~23_combout\ & ( (\mux0|y[0]~3_combout\ & ((!\mux0|y[0]~4_combout\ & 
-- (\reg2|Q\(6))) # (\mux0|y[0]~4_combout\ & ((\reg3|Q\(6)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011111101010000001100000101111100111111010111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|ALT_INV_Q\(6),
	datab => \reg3|ALT_INV_Q\(6),
	datac => \mux0|ALT_INV_y[0]~3_combout\,
	datad => \mux0|ALT_INV_y[0]~4_combout\,
	datae => \reg1|ALT_INV_Q\(6),
	dataf => \mux0|ALT_INV_y[6]~23_combout\,
	combout => \mux0|y[6]~24_combout\);

-- Location: MLABCELL_X23_Y3_N15
\mux0|y[6]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[6]~25_combout\ = ( \reg0|Q\(6) & ( \mux0|y[6]~24_combout\ & ( (!\fsm|Dout~combout\) # (\data_in[6]~input_o\) ) ) ) # ( !\reg0|Q\(6) & ( \mux0|y[6]~24_combout\ & ( (!\fsm|Dout~combout\ & (!\fsm|R0toR7out\(0))) # (\fsm|Dout~combout\ & 
-- ((\data_in[6]~input_o\))) ) ) ) # ( \reg0|Q\(6) & ( !\mux0|y[6]~24_combout\ & ( (!\fsm|Dout~combout\ & (\fsm|R0toR7out\(0))) # (\fsm|Dout~combout\ & ((\data_in[6]~input_o\))) ) ) ) # ( !\reg0|Q\(6) & ( !\mux0|y[6]~24_combout\ & ( (\fsm|Dout~combout\ & 
-- \data_in[6]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010001110100011110001011100010111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_R0toR7out\(0),
	datab => \fsm|ALT_INV_Dout~combout\,
	datac => \ALT_INV_data_in[6]~input_o\,
	datae => \reg0|ALT_INV_Q\(6),
	dataf => \mux0|ALT_INV_y[6]~24_combout\,
	combout => \mux0|y[6]~25_combout\);

-- Location: MLABCELL_X23_Y3_N39
\mux0|y[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y\(6) = ( \mux0|y[8]~7_combout\ & ( \mux0|y\(6) & ( \mux0|y[6]~25_combout\ ) ) ) # ( !\mux0|y[8]~7_combout\ & ( \mux0|y\(6) ) ) # ( \mux0|y[8]~7_combout\ & ( !\mux0|y\(6) & ( \mux0|y[6]~25_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mux0|ALT_INV_y[6]~25_combout\,
	datae => \mux0|ALT_INV_y[8]~7_combout\,
	dataf => \mux0|ALT_INV_y\(6),
	combout => \mux0|y\(6));

-- Location: FF_X23_Y3_N14
\reg0|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(6),
	sload => VCC,
	ena => \fsm|Rin\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(6));

-- Location: FF_X23_Y4_N14
\reg2|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(7),
	sload => VCC,
	ena => \fsm|Rin\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(7));

-- Location: LABCELL_X21_Y4_N30
\reg3|Q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg3|Q[7]~feeder_combout\ = \mux0|y\(7)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mux0|ALT_INV_y\(7),
	combout => \reg3|Q[7]~feeder_combout\);

-- Location: FF_X21_Y4_N31
\reg3|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg3|Q[7]~feeder_combout\,
	ena => \fsm|Rin\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(7));

-- Location: FF_X25_Y4_N53
\reg1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(7),
	sload => VCC,
	ena => \fsm|Rin\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(7));

-- Location: LABCELL_X24_Y4_N21
\reg7|Q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg7|Q[7]~feeder_combout\ = \mux0|y\(7)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mux0|ALT_INV_y\(7),
	combout => \reg7|Q[7]~feeder_combout\);

-- Location: FF_X24_Y4_N23
\reg7|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg7|Q[7]~feeder_combout\,
	ena => \fsm|Rin\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|Q\(7));

-- Location: MLABCELL_X23_Y4_N24
\reg4|Q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|Q[7]~feeder_combout\ = \mux0|y\(7)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mux0|ALT_INV_y\(7),
	combout => \reg4|Q[7]~feeder_combout\);

-- Location: FF_X23_Y4_N25
\reg4|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg4|Q[7]~feeder_combout\,
	ena => \fsm|Rin\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(7));

-- Location: MLABCELL_X23_Y4_N0
\reg5|Q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg5|Q[7]~feeder_combout\ = \mux0|y\(7)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mux0|ALT_INV_y\(7),
	combout => \reg5|Q[7]~feeder_combout\);

-- Location: FF_X23_Y4_N1
\reg5|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg5|Q[7]~feeder_combout\,
	ena => \fsm|Rin\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|Q\(7));

-- Location: LABCELL_X24_Y4_N3
\reg6|Q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg6|Q[7]~feeder_combout\ = \mux0|y\(7)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mux0|ALT_INV_y\(7),
	combout => \reg6|Q[7]~feeder_combout\);

-- Location: FF_X24_Y4_N5
\reg6|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg6|Q[7]~feeder_combout\,
	ena => \fsm|Rin\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|Q\(7));

-- Location: MLABCELL_X23_Y4_N9
\mux0|y[7]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[7]~26_combout\ = ( \mux0|y[0]~0_combout\ & ( \mux0|y[0]~1_combout\ & ( \reg6|Q\(7) ) ) ) # ( !\mux0|y[0]~0_combout\ & ( \mux0|y[0]~1_combout\ & ( \reg7|Q\(7) ) ) ) # ( \mux0|y[0]~0_combout\ & ( !\mux0|y[0]~1_combout\ & ( \reg5|Q\(7) ) ) ) # ( 
-- !\mux0|y[0]~0_combout\ & ( !\mux0|y[0]~1_combout\ & ( \reg4|Q\(7) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg7|ALT_INV_Q\(7),
	datab => \reg4|ALT_INV_Q\(7),
	datac => \reg5|ALT_INV_Q\(7),
	datad => \reg6|ALT_INV_Q\(7),
	datae => \mux0|ALT_INV_y[0]~0_combout\,
	dataf => \mux0|ALT_INV_y[0]~1_combout\,
	combout => \mux0|y[7]~26_combout\);

-- Location: MLABCELL_X23_Y4_N15
\mux0|y[7]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[7]~27_combout\ = ( \reg1|Q\(7) & ( \mux0|y[7]~26_combout\ & ( (!\mux0|y[0]~3_combout\) # ((!\mux0|y[0]~4_combout\ & (\reg2|Q\(7))) # (\mux0|y[0]~4_combout\ & ((\reg3|Q\(7))))) ) ) ) # ( !\reg1|Q\(7) & ( \mux0|y[7]~26_combout\ & ( 
-- (!\mux0|y[0]~3_combout\ & (((\mux0|y[0]~4_combout\)))) # (\mux0|y[0]~3_combout\ & ((!\mux0|y[0]~4_combout\ & (\reg2|Q\(7))) # (\mux0|y[0]~4_combout\ & ((\reg3|Q\(7)))))) ) ) ) # ( \reg1|Q\(7) & ( !\mux0|y[7]~26_combout\ & ( (!\mux0|y[0]~3_combout\ & 
-- (((!\mux0|y[0]~4_combout\)))) # (\mux0|y[0]~3_combout\ & ((!\mux0|y[0]~4_combout\ & (\reg2|Q\(7))) # (\mux0|y[0]~4_combout\ & ((\reg3|Q\(7)))))) ) ) ) # ( !\reg1|Q\(7) & ( !\mux0|y[7]~26_combout\ & ( (\mux0|y[0]~3_combout\ & ((!\mux0|y[0]~4_combout\ & 
-- (\reg2|Q\(7))) # (\mux0|y[0]~4_combout\ & ((\reg3|Q\(7)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101101110110000010100010001101011111011101110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[0]~3_combout\,
	datab => \reg2|ALT_INV_Q\(7),
	datac => \reg3|ALT_INV_Q\(7),
	datad => \mux0|ALT_INV_y[0]~4_combout\,
	datae => \reg1|ALT_INV_Q\(7),
	dataf => \mux0|ALT_INV_y[7]~26_combout\,
	combout => \mux0|y[7]~27_combout\);

-- Location: MLABCELL_X23_Y2_N12
\mux0|y[7]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[7]~28_combout\ = ( \mux0|y[7]~27_combout\ & ( (!\fsm|Dout~combout\ & ((!\fsm|R0toR7out\(0)) # ((\reg0|Q\(7))))) # (\fsm|Dout~combout\ & (((\data_in[7]~input_o\)))) ) ) # ( !\mux0|y[7]~27_combout\ & ( (!\fsm|Dout~combout\ & (\fsm|R0toR7out\(0) & 
-- (\reg0|Q\(7)))) # (\fsm|Dout~combout\ & (((\data_in[7]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011111000100000001111110110000101111111011000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_R0toR7out\(0),
	datab => \reg0|ALT_INV_Q\(7),
	datac => \fsm|ALT_INV_Dout~combout\,
	datad => \ALT_INV_data_in[7]~input_o\,
	dataf => \mux0|ALT_INV_y[7]~27_combout\,
	combout => \mux0|y[7]~28_combout\);

-- Location: MLABCELL_X23_Y2_N24
\mux0|y[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y\(7) = ( \mux0|y[8]~7_combout\ & ( \mux0|y\(7) & ( \mux0|y[7]~28_combout\ ) ) ) # ( !\mux0|y[8]~7_combout\ & ( \mux0|y\(7) ) ) # ( \mux0|y[8]~7_combout\ & ( !\mux0|y\(7) & ( \mux0|y[7]~28_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mux0|ALT_INV_y[7]~28_combout\,
	datae => \mux0|ALT_INV_y[8]~7_combout\,
	dataf => \mux0|ALT_INV_y\(7),
	combout => \mux0|y\(7));

-- Location: FF_X23_Y2_N41
\reg0|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(7),
	sload => VCC,
	ena => \fsm|Rin\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(7));

-- Location: FF_X25_Y3_N11
\reg1|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(8),
	sload => VCC,
	ena => \fsm|Rin\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(8));

-- Location: FF_X25_Y3_N20
\reg2|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(8),
	sload => VCC,
	ena => \fsm|Rin\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(8));

-- Location: FF_X25_Y3_N5
\reg3|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(8),
	sload => VCC,
	ena => \fsm|Rin\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(8));

-- Location: FF_X26_Y4_N2
\reg5|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(8),
	sload => VCC,
	ena => \fsm|Rin\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|Q\(8));

-- Location: FF_X26_Y4_N44
\reg6|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(8),
	sload => VCC,
	ena => \fsm|Rin\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|Q\(8));

-- Location: FF_X26_Y4_N56
\reg4|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(8),
	sload => VCC,
	ena => \fsm|Rin\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(8));

-- Location: LABCELL_X24_Y4_N27
\reg7|Q[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg7|Q[8]~feeder_combout\ = \mux0|y\(8)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mux0|ALT_INV_y\(8),
	combout => \reg7|Q[8]~feeder_combout\);

-- Location: FF_X24_Y4_N28
\reg7|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg7|Q[8]~feeder_combout\,
	ena => \fsm|Rin\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|Q\(8));

-- Location: LABCELL_X26_Y4_N6
\mux0|y[8]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[8]~29_combout\ = ( \reg4|Q\(8) & ( \reg7|Q\(8) & ( (!\mux0|y[0]~0_combout\) # ((!\mux0|y[0]~1_combout\ & (\reg5|Q\(8))) # (\mux0|y[0]~1_combout\ & ((\reg6|Q\(8))))) ) ) ) # ( !\reg4|Q\(8) & ( \reg7|Q\(8) & ( (!\mux0|y[0]~1_combout\ & 
-- (\mux0|y[0]~0_combout\ & (\reg5|Q\(8)))) # (\mux0|y[0]~1_combout\ & ((!\mux0|y[0]~0_combout\) # ((\reg6|Q\(8))))) ) ) ) # ( \reg4|Q\(8) & ( !\reg7|Q\(8) & ( (!\mux0|y[0]~1_combout\ & ((!\mux0|y[0]~0_combout\) # ((\reg5|Q\(8))))) # (\mux0|y[0]~1_combout\ & 
-- (\mux0|y[0]~0_combout\ & ((\reg6|Q\(8))))) ) ) ) # ( !\reg4|Q\(8) & ( !\reg7|Q\(8) & ( (\mux0|y[0]~0_combout\ & ((!\mux0|y[0]~1_combout\ & (\reg5|Q\(8))) # (\mux0|y[0]~1_combout\ & ((\reg6|Q\(8)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011100010101001101101000110010101111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[0]~1_combout\,
	datab => \mux0|ALT_INV_y[0]~0_combout\,
	datac => \reg5|ALT_INV_Q\(8),
	datad => \reg6|ALT_INV_Q\(8),
	datae => \reg4|ALT_INV_Q\(8),
	dataf => \reg7|ALT_INV_Q\(8),
	combout => \mux0|y[8]~29_combout\);

-- Location: LABCELL_X25_Y3_N24
\mux0|y[8]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[8]~30_combout\ = ( \reg3|Q\(8) & ( \mux0|y[8]~29_combout\ & ( ((!\mux0|y[0]~3_combout\ & (\reg1|Q\(8))) # (\mux0|y[0]~3_combout\ & ((\reg2|Q\(8))))) # (\mux0|y[0]~4_combout\) ) ) ) # ( !\reg3|Q\(8) & ( \mux0|y[8]~29_combout\ & ( 
-- (!\mux0|y[0]~3_combout\ & (((\mux0|y[0]~4_combout\)) # (\reg1|Q\(8)))) # (\mux0|y[0]~3_combout\ & (((\reg2|Q\(8) & !\mux0|y[0]~4_combout\)))) ) ) ) # ( \reg3|Q\(8) & ( !\mux0|y[8]~29_combout\ & ( (!\mux0|y[0]~3_combout\ & (\reg1|Q\(8) & 
-- ((!\mux0|y[0]~4_combout\)))) # (\mux0|y[0]~3_combout\ & (((\mux0|y[0]~4_combout\) # (\reg2|Q\(8))))) ) ) ) # ( !\reg3|Q\(8) & ( !\mux0|y[8]~29_combout\ & ( (!\mux0|y[0]~4_combout\ & ((!\mux0|y[0]~3_combout\ & (\reg1|Q\(8))) # (\mux0|y[0]~3_combout\ & 
-- ((\reg2|Q\(8)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000001001110101010100100111101010100010011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[0]~3_combout\,
	datab => \reg1|ALT_INV_Q\(8),
	datac => \reg2|ALT_INV_Q\(8),
	datad => \mux0|ALT_INV_y[0]~4_combout\,
	datae => \reg3|ALT_INV_Q\(8),
	dataf => \mux0|ALT_INV_y[8]~29_combout\,
	combout => \mux0|y[8]~30_combout\);

-- Location: LABCELL_X24_Y3_N36
\mux0|y[8]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[8]~31_combout\ = ( \mux0|y[8]~30_combout\ & ( (!\fsm|Dout~combout\ & ((!\fsm|R0toR7out\(0)) # ((\reg0|Q\(8))))) # (\fsm|Dout~combout\ & (((\data_in[8]~input_o\)))) ) ) # ( !\mux0|y[8]~30_combout\ & ( (!\fsm|Dout~combout\ & (\fsm|R0toR7out\(0) & 
-- ((\reg0|Q\(8))))) # (\fsm|Dout~combout\ & (((\data_in[8]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010011000000110101001110100011111100111010001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_R0toR7out\(0),
	datab => \ALT_INV_data_in[8]~input_o\,
	datac => \fsm|ALT_INV_Dout~combout\,
	datad => \reg0|ALT_INV_Q\(8),
	dataf => \mux0|ALT_INV_y[8]~30_combout\,
	combout => \mux0|y[8]~31_combout\);

-- Location: LABCELL_X24_Y3_N39
\mux0|y[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y\(8) = ( \mux0|y[8]~7_combout\ & ( \mux0|y[8]~31_combout\ ) ) # ( !\mux0|y[8]~7_combout\ & ( \mux0|y\(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mux0|ALT_INV_y[8]~31_combout\,
	datad => \mux0|ALT_INV_y\(8),
	dataf => \mux0|ALT_INV_y[8]~7_combout\,
	combout => \mux0|y\(8));

-- Location: FF_X24_Y3_N37
\reg0|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(8),
	sload => VCC,
	ena => \fsm|Rin\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(8));

-- Location: LABCELL_X26_Y11_N0
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


