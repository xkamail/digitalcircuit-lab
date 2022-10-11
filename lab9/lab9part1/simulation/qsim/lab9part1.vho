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

-- DATE "10/11/2022 22:56:04"

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

ENTITY 	lab9part1 IS
    PORT (
	sw : IN std_logic_vector(8 DOWNTO 0);
	key0 : IN std_logic;
	key1 : IN std_logic;
	sw9 : IN std_logic;
	ledr : BUFFER std_logic_vector(9 DOWNTO 0)
	);
END lab9part1;

-- Design Ports Information
-- ledr[0]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[1]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[2]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[3]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[4]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[5]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[6]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[7]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[8]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[9]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[8]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key1	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key0	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw9	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_sw : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_key0 : std_logic;
SIGNAL ww_key1 : std_logic;
SIGNAL ww_sw9 : std_logic;
SIGNAL ww_ledr : std_logic_vector(9 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \key1~input_o\ : std_logic;
SIGNAL \key1~inputCLKENA0_outclk\ : std_logic;
SIGNAL \sw9~input_o\ : std_logic;
SIGNAL \sw[8]~input_o\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \p1|fsm|y_D.T2~0_combout\ : std_logic;
SIGNAL \key0~input_o\ : std_logic;
SIGNAL \p1|fsm|y_Q.T2~q\ : std_logic;
SIGNAL \p1|fsm|Selector1~0_combout\ : std_logic;
SIGNAL \p1|fsm|y_Q.T0~q\ : std_logic;
SIGNAL \p1|fsm|y_D.T1~0_combout\ : std_logic;
SIGNAL \p1|fsm|y_Q.T1~q\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \p1|fsm|Selector14~1_combout\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \p1|fsm|Selector13~0_combout\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \p1|fsm|Selector7~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector17~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector18~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector14~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector16~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector16~1_combout\ : std_logic;
SIGNAL \p1|fsm|Selector9~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector15~0_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~8_combout\ : std_logic;
SIGNAL \p1|fsm|Selector10~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector14~2_combout\ : std_logic;
SIGNAL \p1|fsm|Selector13~1_combout\ : std_logic;
SIGNAL \p1|fsm|Selector13~2_combout\ : std_logic;
SIGNAL \p1|fsm|Selector12~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector2~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector0~0_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~7_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~9_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~6_combout\ : std_logic;
SIGNAL \p1|fsm|Equal0~0_combout\ : std_logic;
SIGNAL \p1|fsm|y_D.T3~0_combout\ : std_logic;
SIGNAL \p1|fsm|y_Q.T3~q\ : std_logic;
SIGNAL \p1|fsm|Gout~combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~10_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~11_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~4_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~0_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~1_combout\ : std_logic;
SIGNAL \p1|fsm|Selector4~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector9~1_combout\ : std_logic;
SIGNAL \p1|fsm|Selector10~1_combout\ : std_logic;
SIGNAL \p1|reg5|Q[0]~feeder_combout\ : std_logic;
SIGNAL \p1|fsm|Selector8~0_combout\ : std_logic;
SIGNAL \p1|reg4|Q[0]~feeder_combout\ : std_logic;
SIGNAL \p1|fsm|Selector7~1_combout\ : std_logic;
SIGNAL \p1|mux0|y[0]~2_combout\ : std_logic;
SIGNAL \p1|fsm|Selector6~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector5~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector4~1_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~3_combout\ : std_logic;
SIGNAL \p1|mux0|y[0]~5_combout\ : std_logic;
SIGNAL \p1|fsm|Ain~combout\ : std_logic;
SIGNAL \p1|fsm|Equal0~1_combout\ : std_logic;
SIGNAL \p1|fsm|AddSub~combout\ : std_logic;
SIGNAL \p1|addsub0|Add0~38_cout\ : std_logic;
SIGNAL \p1|addsub0|Add0~1_sumout\ : std_logic;
SIGNAL \p1|fsm|Selector3~0_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~12_combout\ : std_logic;
SIGNAL \p1|mux0|y[0]~13_combout\ : std_logic;
SIGNAL \p1|reg7|Q[1]~feeder_combout\ : std_logic;
SIGNAL \p1|reg4|Q[1]~feeder_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~14_combout\ : std_logic;
SIGNAL \p1|reg2|Q[1]~feeder_combout\ : std_logic;
SIGNAL \p1|reg1|Q[1]~feeder_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~15_combout\ : std_logic;
SIGNAL \p1|regA|Q[1]~feeder_combout\ : std_logic;
SIGNAL \p1|addsub0|Add0~2\ : std_logic;
SIGNAL \p1|addsub0|Add0~5_sumout\ : std_logic;
SIGNAL \p1|mux0|y[1]~16_combout\ : std_logic;
SIGNAL \p1|reg7|Q[2]~feeder_combout\ : std_logic;
SIGNAL \p1|reg5|Q[2]~feeder_combout\ : std_logic;
SIGNAL \p1|reg4|Q[2]~feeder_combout\ : std_logic;
SIGNAL \p1|mux0|y[2]~17_combout\ : std_logic;
SIGNAL \p1|reg1|Q[2]~feeder_combout\ : std_logic;
SIGNAL \p1|mux0|y[2]~18_combout\ : std_logic;
SIGNAL \p1|regA|Q[2]~feeder_combout\ : std_logic;
SIGNAL \p1|addsub0|Add0~6\ : std_logic;
SIGNAL \p1|addsub0|Add0~9_sumout\ : std_logic;
SIGNAL \p1|mux0|y[2]~19_combout\ : std_logic;
SIGNAL \p1|reg4|Q[3]~feeder_combout\ : std_logic;
SIGNAL \p1|reg5|Q[3]~feeder_combout\ : std_logic;
SIGNAL \p1|mux0|y[3]~20_combout\ : std_logic;
SIGNAL \p1|reg1|Q[3]~feeder_combout\ : std_logic;
SIGNAL \p1|reg2|Q[3]~feeder_combout\ : std_logic;
SIGNAL \p1|mux0|y[3]~21_combout\ : std_logic;
SIGNAL \p1|regA|Q[3]~feeder_combout\ : std_logic;
SIGNAL \p1|addsub0|Add0~10\ : std_logic;
SIGNAL \p1|addsub0|Add0~13_sumout\ : std_logic;
SIGNAL \p1|mux0|y[3]~22_combout\ : std_logic;
SIGNAL \p1|reg7|Q[4]~feeder_combout\ : std_logic;
SIGNAL \p1|mux0|y[4]~23_combout\ : std_logic;
SIGNAL \p1|reg2|Q[4]~feeder_combout\ : std_logic;
SIGNAL \p1|mux0|y[4]~24_combout\ : std_logic;
SIGNAL \p1|addsub0|Add0~14\ : std_logic;
SIGNAL \p1|addsub0|Add0~17_sumout\ : std_logic;
SIGNAL \p1|mux0|y[4]~25_combout\ : std_logic;
SIGNAL \p1|addsub0|Add0~18\ : std_logic;
SIGNAL \p1|addsub0|Add0~21_sumout\ : std_logic;
SIGNAL \p1|reg7|Q[5]~feeder_combout\ : std_logic;
SIGNAL \p1|reg5|Q[5]~feeder_combout\ : std_logic;
SIGNAL \p1|reg4|Q[5]~feeder_combout\ : std_logic;
SIGNAL \p1|mux0|y[5]~26_combout\ : std_logic;
SIGNAL \p1|reg2|Q[5]~feeder_combout\ : std_logic;
SIGNAL \p1|reg1|Q[5]~feeder_combout\ : std_logic;
SIGNAL \p1|mux0|y[5]~27_combout\ : std_logic;
SIGNAL \p1|mux0|y[5]~28_combout\ : std_logic;
SIGNAL \p1|reg7|Q[6]~feeder_combout\ : std_logic;
SIGNAL \p1|mux0|y[6]~29_combout\ : std_logic;
SIGNAL \p1|reg2|Q[6]~feeder_combout\ : std_logic;
SIGNAL \p1|mux0|y[6]~30_combout\ : std_logic;
SIGNAL \p1|addsub0|Add0~22\ : std_logic;
SIGNAL \p1|addsub0|Add0~25_sumout\ : std_logic;
SIGNAL \p1|mux0|y[6]~31_combout\ : std_logic;
SIGNAL \p1|reg7|Q[7]~feeder_combout\ : std_logic;
SIGNAL \p1|reg5|Q[7]~feeder_combout\ : std_logic;
SIGNAL \p1|mux0|y[7]~32_combout\ : std_logic;
SIGNAL \p1|reg1|Q[7]~feeder_combout\ : std_logic;
SIGNAL \p1|reg2|Q[7]~feeder_combout\ : std_logic;
SIGNAL \p1|mux0|y[7]~33_combout\ : std_logic;
SIGNAL \p1|regA|Q[7]~feeder_combout\ : std_logic;
SIGNAL \p1|addsub0|Add0~26\ : std_logic;
SIGNAL \p1|addsub0|Add0~29_sumout\ : std_logic;
SIGNAL \p1|mux0|y[7]~34_combout\ : std_logic;
SIGNAL \p1|reg5|Q[8]~feeder_combout\ : std_logic;
SIGNAL \p1|reg7|Q[8]~feeder_combout\ : std_logic;
SIGNAL \p1|reg4|Q[8]~feeder_combout\ : std_logic;
SIGNAL \p1|mux0|y[8]~35_combout\ : std_logic;
SIGNAL \p1|reg1|Q[8]~feeder_combout\ : std_logic;
SIGNAL \p1|mux0|y[8]~36_combout\ : std_logic;
SIGNAL \p1|addsub0|Add0~30\ : std_logic;
SIGNAL \p1|addsub0|Add0~33_sumout\ : std_logic;
SIGNAL \p1|mux0|y[8]~37_combout\ : std_logic;
SIGNAL \p1|fsm|Selector11~0_combout\ : std_logic;
SIGNAL \p1|reg1|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg5|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|regG|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg3|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg7|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg2|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg6|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg0|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg4|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|ir0|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|regA|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|fsm|R0toR7out\ : std_logic_vector(0 TO 7);
SIGNAL \p1|reg5|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg4|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg6|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg7|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|mux0|ALT_INV_y[2]~19_combout\ : std_logic;
SIGNAL \p1|reg0|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|mux0|ALT_INV_y[2]~18_combout\ : std_logic;
SIGNAL \p1|reg2|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg1|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg3|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|mux0|ALT_INV_y[2]~17_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~16_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~15_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~14_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[0]~13_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~12_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~11_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~10_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~9_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~8_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~7_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_y_Q.T1~q\ : std_logic;
SIGNAL \p1|ir0|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|mux0|ALT_INV_y[1]~6_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[0]~5_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~4_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~3_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[0]~2_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~1_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~0_combout\ : std_logic;
SIGNAL \p1|regG|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_sw[0]~input_o\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Ain~combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_AddSub~combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Gout~combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_R0toR7out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \p1|fsm|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \p1|regA|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|fsm|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_y_Q.T0~q\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector17~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector15~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector14~2_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector14~1_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector16~1_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector16~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector12~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector14~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector18~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector13~2_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector13~1_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector13~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_y_Q.T2~q\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector7~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector9~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector4~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector10~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_y_Q.T3~q\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[8]~37_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[8]~36_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[8]~35_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[7]~34_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[7]~33_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[7]~32_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[6]~31_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[6]~30_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[6]~29_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[5]~28_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[5]~27_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[5]~26_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[4]~25_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[4]~24_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[4]~23_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[3]~22_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[3]~21_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[3]~20_combout\ : std_logic;
SIGNAL \ALT_INV_key1~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_sw9~input_o\ : std_logic;
SIGNAL \ALT_INV_key0~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[1]~input_o\ : std_logic;

BEGIN

ww_sw <= sw;
ww_key0 <= key0;
ww_key1 <= key1;
ww_sw9 <= sw9;
ledr <= ww_ledr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\p1|reg5|ALT_INV_Q\(3) <= NOT \p1|reg5|Q\(3);
\p1|reg4|ALT_INV_Q\(3) <= NOT \p1|reg4|Q\(3);
\p1|reg6|ALT_INV_Q\(3) <= NOT \p1|reg6|Q\(3);
\p1|reg7|ALT_INV_Q\(3) <= NOT \p1|reg7|Q\(3);
\p1|mux0|ALT_INV_y[2]~19_combout\ <= NOT \p1|mux0|y[2]~19_combout\;
\p1|reg0|ALT_INV_Q\(2) <= NOT \p1|reg0|Q\(2);
\p1|mux0|ALT_INV_y[2]~18_combout\ <= NOT \p1|mux0|y[2]~18_combout\;
\p1|reg2|ALT_INV_Q\(2) <= NOT \p1|reg2|Q\(2);
\p1|reg1|ALT_INV_Q\(2) <= NOT \p1|reg1|Q\(2);
\p1|reg3|ALT_INV_Q\(2) <= NOT \p1|reg3|Q\(2);
\p1|mux0|ALT_INV_y[2]~17_combout\ <= NOT \p1|mux0|y[2]~17_combout\;
\p1|reg5|ALT_INV_Q\(2) <= NOT \p1|reg5|Q\(2);
\p1|reg4|ALT_INV_Q\(2) <= NOT \p1|reg4|Q\(2);
\p1|reg6|ALT_INV_Q\(2) <= NOT \p1|reg6|Q\(2);
\p1|reg7|ALT_INV_Q\(2) <= NOT \p1|reg7|Q\(2);
\p1|mux0|ALT_INV_y[1]~16_combout\ <= NOT \p1|mux0|y[1]~16_combout\;
\p1|reg0|ALT_INV_Q\(1) <= NOT \p1|reg0|Q\(1);
\p1|mux0|ALT_INV_y[1]~15_combout\ <= NOT \p1|mux0|y[1]~15_combout\;
\p1|reg2|ALT_INV_Q\(1) <= NOT \p1|reg2|Q\(1);
\p1|reg1|ALT_INV_Q\(1) <= NOT \p1|reg1|Q\(1);
\p1|reg3|ALT_INV_Q\(1) <= NOT \p1|reg3|Q\(1);
\p1|mux0|ALT_INV_y[1]~14_combout\ <= NOT \p1|mux0|y[1]~14_combout\;
\p1|reg5|ALT_INV_Q\(1) <= NOT \p1|reg5|Q\(1);
\p1|reg4|ALT_INV_Q\(1) <= NOT \p1|reg4|Q\(1);
\p1|reg6|ALT_INV_Q\(1) <= NOT \p1|reg6|Q\(1);
\p1|reg7|ALT_INV_Q\(1) <= NOT \p1|reg7|Q\(1);
\p1|mux0|ALT_INV_y[0]~13_combout\ <= NOT \p1|mux0|y[0]~13_combout\;
\p1|mux0|ALT_INV_y[1]~12_combout\ <= NOT \p1|mux0|y[1]~12_combout\;
\p1|mux0|ALT_INV_y[1]~11_combout\ <= NOT \p1|mux0|y[1]~11_combout\;
\p1|mux0|ALT_INV_y[1]~10_combout\ <= NOT \p1|mux0|y[1]~10_combout\;
\p1|mux0|ALT_INV_y[1]~9_combout\ <= NOT \p1|mux0|y[1]~9_combout\;
\p1|mux0|ALT_INV_y[1]~8_combout\ <= NOT \p1|mux0|y[1]~8_combout\;
\p1|mux0|ALT_INV_y[1]~7_combout\ <= NOT \p1|mux0|y[1]~7_combout\;
\p1|fsm|ALT_INV_y_Q.T1~q\ <= NOT \p1|fsm|y_Q.T1~q\;
\p1|ir0|ALT_INV_Q\(7) <= NOT \p1|ir0|Q\(7);
\p1|ir0|ALT_INV_Q\(8) <= NOT \p1|ir0|Q\(8);
\p1|ir0|ALT_INV_Q\(6) <= NOT \p1|ir0|Q\(6);
\p1|mux0|ALT_INV_y[1]~6_combout\ <= NOT \p1|mux0|y[1]~6_combout\;
\p1|reg0|ALT_INV_Q\(0) <= NOT \p1|reg0|Q\(0);
\p1|mux0|ALT_INV_y[0]~5_combout\ <= NOT \p1|mux0|y[0]~5_combout\;
\p1|mux0|ALT_INV_y[1]~4_combout\ <= NOT \p1|mux0|y[1]~4_combout\;
\p1|mux0|ALT_INV_y[1]~3_combout\ <= NOT \p1|mux0|y[1]~3_combout\;
\p1|reg2|ALT_INV_Q\(0) <= NOT \p1|reg2|Q\(0);
\p1|reg1|ALT_INV_Q\(0) <= NOT \p1|reg1|Q\(0);
\p1|reg3|ALT_INV_Q\(0) <= NOT \p1|reg3|Q\(0);
\p1|mux0|ALT_INV_y[0]~2_combout\ <= NOT \p1|mux0|y[0]~2_combout\;
\p1|mux0|ALT_INV_y[1]~1_combout\ <= NOT \p1|mux0|y[1]~1_combout\;
\p1|mux0|ALT_INV_y[1]~0_combout\ <= NOT \p1|mux0|y[1]~0_combout\;
\p1|reg5|ALT_INV_Q\(0) <= NOT \p1|reg5|Q\(0);
\p1|reg4|ALT_INV_Q\(0) <= NOT \p1|reg4|Q\(0);
\p1|reg6|ALT_INV_Q\(0) <= NOT \p1|reg6|Q\(0);
\p1|reg7|ALT_INV_Q\(0) <= NOT \p1|reg7|Q\(0);
\p1|regG|ALT_INV_Q\(8) <= NOT \p1|regG|Q\(8);
\p1|regG|ALT_INV_Q\(7) <= NOT \p1|regG|Q\(7);
\p1|regG|ALT_INV_Q\(6) <= NOT \p1|regG|Q\(6);
\p1|regG|ALT_INV_Q\(5) <= NOT \p1|regG|Q\(5);
\p1|regG|ALT_INV_Q\(4) <= NOT \p1|regG|Q\(4);
\p1|regG|ALT_INV_Q\(3) <= NOT \p1|regG|Q\(3);
\p1|regG|ALT_INV_Q\(2) <= NOT \p1|regG|Q\(2);
\p1|regG|ALT_INV_Q\(1) <= NOT \p1|regG|Q\(1);
\p1|regG|ALT_INV_Q\(0) <= NOT \p1|regG|Q\(0);
\ALT_INV_sw[0]~input_o\ <= NOT \sw[0]~input_o\;
\p1|fsm|ALT_INV_Ain~combout\ <= NOT \p1|fsm|Ain~combout\;
\p1|fsm|ALT_INV_AddSub~combout\ <= NOT \p1|fsm|AddSub~combout\;
\p1|fsm|ALT_INV_Gout~combout\ <= NOT \p1|fsm|Gout~combout\;
\p1|fsm|ALT_INV_R0toR7out\(7) <= NOT \p1|fsm|R0toR7out\(7);
\p1|fsm|ALT_INV_R0toR7out\(0) <= NOT \p1|fsm|R0toR7out\(0);
\p1|fsm|ALT_INV_R0toR7out\(2) <= NOT \p1|fsm|R0toR7out\(2);
\p1|fsm|ALT_INV_R0toR7out\(3) <= NOT \p1|fsm|R0toR7out\(3);
\p1|fsm|ALT_INV_R0toR7out\(1) <= NOT \p1|fsm|R0toR7out\(1);
\p1|fsm|ALT_INV_R0toR7out\(5) <= NOT \p1|fsm|R0toR7out\(5);
\p1|fsm|ALT_INV_R0toR7out\(6) <= NOT \p1|fsm|R0toR7out\(6);
\p1|fsm|ALT_INV_R0toR7out\(4) <= NOT \p1|fsm|R0toR7out\(4);
\p1|fsm|ALT_INV_Equal0~1_combout\ <= NOT \p1|fsm|Equal0~1_combout\;
\p1|regA|ALT_INV_Q\(8) <= NOT \p1|regA|Q\(8);
\p1|regA|ALT_INV_Q\(7) <= NOT \p1|regA|Q\(7);
\p1|regA|ALT_INV_Q\(6) <= NOT \p1|regA|Q\(6);
\p1|regA|ALT_INV_Q\(5) <= NOT \p1|regA|Q\(5);
\p1|regA|ALT_INV_Q\(4) <= NOT \p1|regA|Q\(4);
\p1|regA|ALT_INV_Q\(3) <= NOT \p1|regA|Q\(3);
\p1|regA|ALT_INV_Q\(2) <= NOT \p1|regA|Q\(2);
\p1|regA|ALT_INV_Q\(1) <= NOT \p1|regA|Q\(1);
\p1|regA|ALT_INV_Q\(0) <= NOT \p1|regA|Q\(0);
\p1|fsm|ALT_INV_Equal0~0_combout\ <= NOT \p1|fsm|Equal0~0_combout\;
\p1|fsm|ALT_INV_y_Q.T0~q\ <= NOT \p1|fsm|y_Q.T0~q\;
\p1|fsm|ALT_INV_Selector2~0_combout\ <= NOT \p1|fsm|Selector2~0_combout\;
\p1|fsm|ALT_INV_Selector17~0_combout\ <= NOT \p1|fsm|Selector17~0_combout\;
\p1|fsm|ALT_INV_Selector15~0_combout\ <= NOT \p1|fsm|Selector15~0_combout\;
\p1|fsm|ALT_INV_Selector14~2_combout\ <= NOT \p1|fsm|Selector14~2_combout\;
\p1|fsm|ALT_INV_Selector14~1_combout\ <= NOT \p1|fsm|Selector14~1_combout\;
\p1|fsm|ALT_INV_Selector16~1_combout\ <= NOT \p1|fsm|Selector16~1_combout\;
\p1|fsm|ALT_INV_Selector16~0_combout\ <= NOT \p1|fsm|Selector16~0_combout\;
\p1|fsm|ALT_INV_Selector12~0_combout\ <= NOT \p1|fsm|Selector12~0_combout\;
\p1|fsm|ALT_INV_Selector14~0_combout\ <= NOT \p1|fsm|Selector14~0_combout\;
\p1|fsm|ALT_INV_Selector0~0_combout\ <= NOT \p1|fsm|Selector0~0_combout\;
\p1|fsm|ALT_INV_Selector18~0_combout\ <= NOT \p1|fsm|Selector18~0_combout\;
\p1|fsm|ALT_INV_Selector13~2_combout\ <= NOT \p1|fsm|Selector13~2_combout\;
\p1|fsm|ALT_INV_Selector13~1_combout\ <= NOT \p1|fsm|Selector13~1_combout\;
\p1|fsm|ALT_INV_Selector13~0_combout\ <= NOT \p1|fsm|Selector13~0_combout\;
\p1|fsm|ALT_INV_y_Q.T2~q\ <= NOT \p1|fsm|y_Q.T2~q\;
\p1|ir0|ALT_INV_Q\(0) <= NOT \p1|ir0|Q\(0);
\p1|ir0|ALT_INV_Q\(1) <= NOT \p1|ir0|Q\(1);
\p1|ir0|ALT_INV_Q\(2) <= NOT \p1|ir0|Q\(2);
\p1|fsm|ALT_INV_Selector7~0_combout\ <= NOT \p1|fsm|Selector7~0_combout\;
\p1|fsm|ALT_INV_Selector9~0_combout\ <= NOT \p1|fsm|Selector9~0_combout\;
\p1|fsm|ALT_INV_Selector4~0_combout\ <= NOT \p1|fsm|Selector4~0_combout\;
\p1|ir0|ALT_INV_Q\(5) <= NOT \p1|ir0|Q\(5);
\p1|fsm|ALT_INV_Selector10~0_combout\ <= NOT \p1|fsm|Selector10~0_combout\;
\p1|ir0|ALT_INV_Q\(4) <= NOT \p1|ir0|Q\(4);
\p1|ir0|ALT_INV_Q\(3) <= NOT \p1|ir0|Q\(3);
\p1|fsm|ALT_INV_y_Q.T3~q\ <= NOT \p1|fsm|y_Q.T3~q\;
\p1|mux0|ALT_INV_y[8]~37_combout\ <= NOT \p1|mux0|y[8]~37_combout\;
\p1|reg0|ALT_INV_Q\(8) <= NOT \p1|reg0|Q\(8);
\p1|mux0|ALT_INV_y[8]~36_combout\ <= NOT \p1|mux0|y[8]~36_combout\;
\p1|reg2|ALT_INV_Q\(8) <= NOT \p1|reg2|Q\(8);
\p1|reg1|ALT_INV_Q\(8) <= NOT \p1|reg1|Q\(8);
\p1|reg3|ALT_INV_Q\(8) <= NOT \p1|reg3|Q\(8);
\p1|mux0|ALT_INV_y[8]~35_combout\ <= NOT \p1|mux0|y[8]~35_combout\;
\p1|reg5|ALT_INV_Q\(8) <= NOT \p1|reg5|Q\(8);
\p1|reg4|ALT_INV_Q\(8) <= NOT \p1|reg4|Q\(8);
\p1|reg6|ALT_INV_Q\(8) <= NOT \p1|reg6|Q\(8);
\p1|reg7|ALT_INV_Q\(8) <= NOT \p1|reg7|Q\(8);
\p1|mux0|ALT_INV_y[7]~34_combout\ <= NOT \p1|mux0|y[7]~34_combout\;
\p1|reg0|ALT_INV_Q\(7) <= NOT \p1|reg0|Q\(7);
\p1|mux0|ALT_INV_y[7]~33_combout\ <= NOT \p1|mux0|y[7]~33_combout\;
\p1|reg2|ALT_INV_Q\(7) <= NOT \p1|reg2|Q\(7);
\p1|reg1|ALT_INV_Q\(7) <= NOT \p1|reg1|Q\(7);
\p1|reg3|ALT_INV_Q\(7) <= NOT \p1|reg3|Q\(7);
\p1|mux0|ALT_INV_y[7]~32_combout\ <= NOT \p1|mux0|y[7]~32_combout\;
\p1|reg5|ALT_INV_Q\(7) <= NOT \p1|reg5|Q\(7);
\p1|reg4|ALT_INV_Q\(7) <= NOT \p1|reg4|Q\(7);
\p1|reg6|ALT_INV_Q\(7) <= NOT \p1|reg6|Q\(7);
\p1|reg7|ALT_INV_Q\(7) <= NOT \p1|reg7|Q\(7);
\p1|mux0|ALT_INV_y[6]~31_combout\ <= NOT \p1|mux0|y[6]~31_combout\;
\p1|reg0|ALT_INV_Q\(6) <= NOT \p1|reg0|Q\(6);
\p1|mux0|ALT_INV_y[6]~30_combout\ <= NOT \p1|mux0|y[6]~30_combout\;
\p1|reg2|ALT_INV_Q\(6) <= NOT \p1|reg2|Q\(6);
\p1|reg1|ALT_INV_Q\(6) <= NOT \p1|reg1|Q\(6);
\p1|reg3|ALT_INV_Q\(6) <= NOT \p1|reg3|Q\(6);
\p1|mux0|ALT_INV_y[6]~29_combout\ <= NOT \p1|mux0|y[6]~29_combout\;
\p1|reg5|ALT_INV_Q\(6) <= NOT \p1|reg5|Q\(6);
\p1|reg4|ALT_INV_Q\(6) <= NOT \p1|reg4|Q\(6);
\p1|reg6|ALT_INV_Q\(6) <= NOT \p1|reg6|Q\(6);
\p1|reg7|ALT_INV_Q\(6) <= NOT \p1|reg7|Q\(6);
\p1|mux0|ALT_INV_y[5]~28_combout\ <= NOT \p1|mux0|y[5]~28_combout\;
\p1|reg0|ALT_INV_Q\(5) <= NOT \p1|reg0|Q\(5);
\p1|mux0|ALT_INV_y[5]~27_combout\ <= NOT \p1|mux0|y[5]~27_combout\;
\p1|reg2|ALT_INV_Q\(5) <= NOT \p1|reg2|Q\(5);
\p1|reg1|ALT_INV_Q\(5) <= NOT \p1|reg1|Q\(5);
\p1|reg3|ALT_INV_Q\(5) <= NOT \p1|reg3|Q\(5);
\p1|mux0|ALT_INV_y[5]~26_combout\ <= NOT \p1|mux0|y[5]~26_combout\;
\p1|reg5|ALT_INV_Q\(5) <= NOT \p1|reg5|Q\(5);
\p1|reg4|ALT_INV_Q\(5) <= NOT \p1|reg4|Q\(5);
\p1|reg6|ALT_INV_Q\(5) <= NOT \p1|reg6|Q\(5);
\p1|reg7|ALT_INV_Q\(5) <= NOT \p1|reg7|Q\(5);
\p1|mux0|ALT_INV_y[4]~25_combout\ <= NOT \p1|mux0|y[4]~25_combout\;
\p1|reg0|ALT_INV_Q\(4) <= NOT \p1|reg0|Q\(4);
\p1|mux0|ALT_INV_y[4]~24_combout\ <= NOT \p1|mux0|y[4]~24_combout\;
\p1|reg2|ALT_INV_Q\(4) <= NOT \p1|reg2|Q\(4);
\p1|reg1|ALT_INV_Q\(4) <= NOT \p1|reg1|Q\(4);
\p1|reg3|ALT_INV_Q\(4) <= NOT \p1|reg3|Q\(4);
\p1|mux0|ALT_INV_y[4]~23_combout\ <= NOT \p1|mux0|y[4]~23_combout\;
\p1|reg5|ALT_INV_Q\(4) <= NOT \p1|reg5|Q\(4);
\p1|reg4|ALT_INV_Q\(4) <= NOT \p1|reg4|Q\(4);
\p1|reg6|ALT_INV_Q\(4) <= NOT \p1|reg6|Q\(4);
\p1|reg7|ALT_INV_Q\(4) <= NOT \p1|reg7|Q\(4);
\p1|mux0|ALT_INV_y[3]~22_combout\ <= NOT \p1|mux0|y[3]~22_combout\;
\p1|reg0|ALT_INV_Q\(3) <= NOT \p1|reg0|Q\(3);
\p1|mux0|ALT_INV_y[3]~21_combout\ <= NOT \p1|mux0|y[3]~21_combout\;
\p1|reg2|ALT_INV_Q\(3) <= NOT \p1|reg2|Q\(3);
\p1|reg1|ALT_INV_Q\(3) <= NOT \p1|reg1|Q\(3);
\p1|reg3|ALT_INV_Q\(3) <= NOT \p1|reg3|Q\(3);
\p1|mux0|ALT_INV_y[3]~20_combout\ <= NOT \p1|mux0|y[3]~20_combout\;
\ALT_INV_key1~inputCLKENA0_outclk\ <= NOT \key1~inputCLKENA0_outclk\;
\ALT_INV_sw9~input_o\ <= NOT \sw9~input_o\;
\ALT_INV_key0~input_o\ <= NOT \key0~input_o\;
\ALT_INV_sw[8]~input_o\ <= NOT \sw[8]~input_o\;
\ALT_INV_sw[7]~input_o\ <= NOT \sw[7]~input_o\;
\ALT_INV_sw[6]~input_o\ <= NOT \sw[6]~input_o\;
\ALT_INV_sw[5]~input_o\ <= NOT \sw[5]~input_o\;
\ALT_INV_sw[4]~input_o\ <= NOT \sw[4]~input_o\;
\ALT_INV_sw[3]~input_o\ <= NOT \sw[3]~input_o\;
\ALT_INV_sw[2]~input_o\ <= NOT \sw[2]~input_o\;
\ALT_INV_sw[1]~input_o\ <= NOT \sw[1]~input_o\;

-- Location: IOOBUF_X0_Y20_N39
\ledr[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|mux0|y[0]~13_combout\,
	devoe => ww_devoe,
	o => ww_ledr(0));

-- Location: IOOBUF_X0_Y20_N5
\ledr[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|mux0|y[1]~16_combout\,
	devoe => ww_devoe,
	o => ww_ledr(1));

-- Location: IOOBUF_X0_Y19_N56
\ledr[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|mux0|y[2]~19_combout\,
	devoe => ww_devoe,
	o => ww_ledr(2));

-- Location: IOOBUF_X0_Y21_N56
\ledr[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|mux0|y[3]~22_combout\,
	devoe => ww_devoe,
	o => ww_ledr(3));

-- Location: IOOBUF_X0_Y20_N22
\ledr[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|mux0|y[4]~25_combout\,
	devoe => ww_devoe,
	o => ww_ledr(4));

-- Location: IOOBUF_X0_Y20_N56
\ledr[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|mux0|y[5]~28_combout\,
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
	i => \p1|mux0|y[6]~31_combout\,
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
	i => \p1|mux0|y[7]~34_combout\,
	devoe => ww_devoe,
	o => ww_ledr(7));

-- Location: IOOBUF_X0_Y19_N39
\ledr[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|mux0|y[8]~37_combout\,
	devoe => ww_devoe,
	o => ww_ledr(8));

-- Location: IOOBUF_X0_Y18_N79
\ledr[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|fsm|Selector11~0_combout\,
	devoe => ww_devoe,
	o => ww_ledr(9));

-- Location: IOIBUF_X54_Y18_N61
\key1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key1,
	o => \key1~input_o\);

-- Location: CLKCTRL_G10
\key1~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \key1~input_o\,
	outclk => \key1~inputCLKENA0_outclk\);

-- Location: IOIBUF_X0_Y18_N44
\sw9~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw9,
	o => \sw9~input_o\);

-- Location: IOIBUF_X11_Y0_N1
\sw[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(8),
	o => \sw[8]~input_o\);

-- Location: FF_X6_Y22_N53
\p1|ir0|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	asdata => \sw[8]~input_o\,
	sload => VCC,
	ena => \p1|fsm|ALT_INV_y_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(8));

-- Location: IOIBUF_X54_Y20_N21
\sw[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

-- Location: FF_X6_Y22_N32
\p1|ir0|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	asdata => \sw[7]~input_o\,
	sload => VCC,
	ena => \p1|fsm|ALT_INV_y_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(7));

-- Location: MLABCELL_X4_Y22_N3
\p1|fsm|y_D.T2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|y_D.T2~0_combout\ = ( \p1|fsm|y_Q.T1~q\ & ( (\p1|ir0|Q\(7) & !\p1|ir0|Q\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(7),
	datac => \p1|ir0|ALT_INV_Q\(8),
	dataf => \p1|fsm|ALT_INV_y_Q.T1~q\,
	combout => \p1|fsm|y_D.T2~0_combout\);

-- Location: IOIBUF_X0_Y21_N21
\key0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key0,
	o => \key0~input_o\);

-- Location: FF_X5_Y22_N14
\p1|fsm|y_Q.T2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	asdata => \p1|fsm|y_D.T2~0_combout\,
	clrn => \key0~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|fsm|y_Q.T2~q\);

-- Location: MLABCELL_X4_Y22_N54
\p1|fsm|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector1~0_combout\ = ( \p1|fsm|y_Q.T0~q\ & ( \p1|fsm|y_Q.T2~q\ & ( (!\p1|ir0|Q\(8) & \p1|ir0|Q\(7)) ) ) ) # ( !\p1|fsm|y_Q.T0~q\ & ( \p1|fsm|y_Q.T2~q\ & ( ((!\p1|ir0|Q\(8) & \p1|ir0|Q\(7))) # (\sw9~input_o\) ) ) ) # ( \p1|fsm|y_Q.T0~q\ & ( 
-- !\p1|fsm|y_Q.T2~q\ & ( (\p1|fsm|y_Q.T1~q\ & (!\p1|ir0|Q\(8) & \p1|ir0|Q\(7))) ) ) ) # ( !\p1|fsm|y_Q.T0~q\ & ( !\p1|fsm|y_Q.T2~q\ & ( ((\p1|fsm|y_Q.T1~q\ & (!\p1|ir0|Q\(8) & \p1|ir0|Q\(7)))) # (\sw9~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101001111000000000100010000001111110011110000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T1~q\,
	datab => \p1|ir0|ALT_INV_Q\(8),
	datac => \ALT_INV_sw9~input_o\,
	datad => \p1|ir0|ALT_INV_Q\(7),
	datae => \p1|fsm|ALT_INV_y_Q.T0~q\,
	dataf => \p1|fsm|ALT_INV_y_Q.T2~q\,
	combout => \p1|fsm|Selector1~0_combout\);

-- Location: FF_X4_Y22_N56
\p1|fsm|y_Q.T0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	d => \p1|fsm|Selector1~0_combout\,
	clrn => \key0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|fsm|y_Q.T0~q\);

-- Location: MLABCELL_X4_Y22_N30
\p1|fsm|y_D.T1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|y_D.T1~0_combout\ = (\sw9~input_o\ & !\p1|fsm|y_Q.T0~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sw9~input_o\,
	datad => \p1|fsm|ALT_INV_y_Q.T0~q\,
	combout => \p1|fsm|y_D.T1~0_combout\);

-- Location: FF_X5_Y22_N41
\p1|fsm|y_Q.T1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	asdata => \p1|fsm|y_D.T1~0_combout\,
	clrn => \key0~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|fsm|y_Q.T1~q\);

-- Location: IOIBUF_X0_Y18_N61
\sw[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

-- Location: FF_X5_Y22_N23
\p1|ir0|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	asdata => \sw[5]~input_o\,
	sload => VCC,
	ena => \p1|fsm|ALT_INV_y_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(5));

-- Location: LABCELL_X5_Y22_N3
\p1|fsm|Selector14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector14~1_combout\ = ( \p1|ir0|Q\(7) & ( (\p1|fsm|y_Q.T1~q\ & !\p1|ir0|Q\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|fsm|ALT_INV_y_Q.T1~q\,
	datad => \p1|ir0|ALT_INV_Q\(5),
	dataf => \p1|ir0|ALT_INV_Q\(7),
	combout => \p1|fsm|Selector14~1_combout\);

-- Location: IOIBUF_X10_Y0_N92
\sw[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: FF_X5_Y22_N56
\p1|ir0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	asdata => \sw[2]~input_o\,
	sload => VCC,
	ena => \p1|fsm|ALT_INV_y_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(2));

-- Location: IOIBUF_X11_Y0_N18
\sw[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: FF_X5_Y22_N47
\p1|ir0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	asdata => \sw[0]~input_o\,
	sload => VCC,
	ena => \p1|fsm|ALT_INV_y_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(0));

-- Location: IOIBUF_X0_Y21_N38
\sw[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

-- Location: FF_X6_Y22_N14
\p1|ir0|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	asdata => \sw[6]~input_o\,
	sload => VCC,
	ena => \p1|fsm|ALT_INV_y_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(6));

-- Location: LABCELL_X5_Y22_N36
\p1|fsm|Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector13~0_combout\ = ( \p1|ir0|Q\(6) & ( (!\p1|ir0|Q\(0) & \p1|fsm|y_Q.T2~q\) ) ) # ( !\p1|ir0|Q\(6) & ( (!\p1|ir0|Q\(0) & (((!\p1|ir0|Q\(7) & \p1|fsm|y_Q.T1~q\)) # (\p1|fsm|y_Q.T2~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011110000001000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(7),
	datab => \p1|fsm|ALT_INV_y_Q.T1~q\,
	datac => \p1|ir0|ALT_INV_Q\(0),
	datad => \p1|fsm|ALT_INV_y_Q.T2~q\,
	dataf => \p1|ir0|ALT_INV_Q\(6),
	combout => \p1|fsm|Selector13~0_combout\);

-- Location: IOIBUF_X8_Y45_N75
\sw[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: FF_X5_Y22_N20
\p1|ir0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	asdata => \sw[1]~input_o\,
	sload => VCC,
	ena => \p1|fsm|ALT_INV_y_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(1));

-- Location: IOIBUF_X0_Y18_N95
\sw[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: FF_X5_Y22_N11
\p1|ir0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	asdata => \sw[3]~input_o\,
	sload => VCC,
	ena => \p1|fsm|ALT_INV_y_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(3));

-- Location: IOIBUF_X0_Y21_N4
\sw[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

-- Location: FF_X4_Y22_N17
\p1|ir0|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	asdata => \sw[4]~input_o\,
	sload => VCC,
	ena => \p1|fsm|ALT_INV_y_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(4));

-- Location: MLABCELL_X4_Y22_N6
\p1|fsm|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector7~0_combout\ = ( !\p1|ir0|Q\(3) & ( !\p1|ir0|Q\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \p1|ir0|ALT_INV_Q\(3),
	dataf => \p1|ir0|ALT_INV_Q\(4),
	combout => \p1|fsm|Selector7~0_combout\);

-- Location: MLABCELL_X4_Y22_N39
\p1|fsm|Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector17~0_combout\ = ( \p1|ir0|Q\(1) & ( \p1|fsm|Selector7~0_combout\ & ( \p1|fsm|Selector14~1_combout\ ) ) ) # ( !\p1|ir0|Q\(1) & ( \p1|fsm|Selector7~0_combout\ & ( ((!\p1|ir0|Q\(2) & \p1|fsm|Selector13~0_combout\)) # 
-- (\p1|fsm|Selector14~1_combout\) ) ) ) # ( !\p1|ir0|Q\(1) & ( !\p1|fsm|Selector7~0_combout\ & ( (!\p1|ir0|Q\(2) & \p1|fsm|Selector13~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000000000000001010101111101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector14~1_combout\,
	datac => \p1|ir0|ALT_INV_Q\(2),
	datad => \p1|fsm|ALT_INV_Selector13~0_combout\,
	datae => \p1|ir0|ALT_INV_Q\(1),
	dataf => \p1|fsm|ALT_INV_Selector7~0_combout\,
	combout => \p1|fsm|Selector17~0_combout\);

-- Location: LABCELL_X5_Y22_N39
\p1|fsm|Selector18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector18~0_combout\ = ( \p1|ir0|Q\(8) & ( !\p1|fsm|y_Q.T1~q\ ) ) # ( !\p1|ir0|Q\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \p1|fsm|ALT_INV_y_Q.T1~q\,
	dataf => \p1|ir0|ALT_INV_Q\(8),
	combout => \p1|fsm|Selector18~0_combout\);

-- Location: LABCELL_X5_Y22_N9
\p1|fsm|R0toR7out[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|R0toR7out\(0) = ( \p1|fsm|Selector18~0_combout\ & ( \p1|fsm|Selector17~0_combout\ ) ) # ( !\p1|fsm|Selector18~0_combout\ & ( \p1|fsm|R0toR7out\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector17~0_combout\,
	datac => \p1|fsm|ALT_INV_R0toR7out\(0),
	dataf => \p1|fsm|ALT_INV_Selector18~0_combout\,
	combout => \p1|fsm|R0toR7out\(0));

-- Location: LABCELL_X5_Y22_N27
\p1|fsm|Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector14~0_combout\ = ( \p1|ir0|Q\(7) & ( (\p1|fsm|y_Q.T2~q\ & \p1|ir0|Q\(0)) ) ) # ( !\p1|ir0|Q\(7) & ( (\p1|ir0|Q\(0) & (((!\p1|ir0|Q\(6) & \p1|fsm|y_Q.T1~q\)) # (\p1|fsm|y_Q.T2~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101111000000000010111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(6),
	datab => \p1|fsm|ALT_INV_y_Q.T1~q\,
	datac => \p1|fsm|ALT_INV_y_Q.T2~q\,
	datad => \p1|ir0|ALT_INV_Q\(0),
	dataf => \p1|ir0|ALT_INV_Q\(7),
	combout => \p1|fsm|Selector14~0_combout\);

-- Location: LABCELL_X6_Y22_N9
\p1|fsm|Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector16~0_combout\ = ( \p1|ir0|Q\(3) & ( (\p1|fsm|y_Q.T1~q\ & (\p1|ir0|Q\(7) & (!\p1|ir0|Q\(5) & !\p1|ir0|Q\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T1~q\,
	datab => \p1|ir0|ALT_INV_Q\(7),
	datac => \p1|ir0|ALT_INV_Q\(5),
	datad => \p1|ir0|ALT_INV_Q\(4),
	dataf => \p1|ir0|ALT_INV_Q\(3),
	combout => \p1|fsm|Selector16~0_combout\);

-- Location: LABCELL_X5_Y22_N6
\p1|fsm|Selector16~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector16~1_combout\ = ( \p1|fsm|Selector16~0_combout\ ) # ( !\p1|fsm|Selector16~0_combout\ & ( (\p1|fsm|Selector14~0_combout\ & (!\p1|ir0|Q\(1) & !\p1|ir0|Q\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|fsm|ALT_INV_Selector14~0_combout\,
	datac => \p1|ir0|ALT_INV_Q\(1),
	datad => \p1|ir0|ALT_INV_Q\(2),
	dataf => \p1|fsm|ALT_INV_Selector16~0_combout\,
	combout => \p1|fsm|Selector16~1_combout\);

-- Location: LABCELL_X5_Y22_N33
\p1|fsm|R0toR7out[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|R0toR7out\(1) = ( \p1|fsm|R0toR7out\(1) & ( (!\p1|fsm|Selector18~0_combout\) # (\p1|fsm|Selector16~1_combout\) ) ) # ( !\p1|fsm|R0toR7out\(1) & ( (\p1|fsm|Selector18~0_combout\ & \p1|fsm|Selector16~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|fsm|ALT_INV_Selector18~0_combout\,
	datad => \p1|fsm|ALT_INV_Selector16~1_combout\,
	dataf => \p1|fsm|ALT_INV_R0toR7out\(1),
	combout => \p1|fsm|R0toR7out\(1));

-- Location: MLABCELL_X4_Y22_N0
\p1|fsm|Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector9~0_combout\ = ( \p1|ir0|Q\(4) & ( !\p1|ir0|Q\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \p1|ir0|ALT_INV_Q\(3),
	dataf => \p1|ir0|ALT_INV_Q\(4),
	combout => \p1|fsm|Selector9~0_combout\);

-- Location: LABCELL_X5_Y22_N51
\p1|fsm|Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector15~0_combout\ = ( \p1|fsm|Selector13~0_combout\ & ( (!\p1|fsm|Selector14~1_combout\ & (!\p1|ir0|Q\(2) & ((\p1|ir0|Q\(1))))) # (\p1|fsm|Selector14~1_combout\ & (((!\p1|ir0|Q\(2) & \p1|ir0|Q\(1))) # (\p1|fsm|Selector9~0_combout\))) ) ) # ( 
-- !\p1|fsm|Selector13~0_combout\ & ( (\p1|fsm|Selector14~1_combout\ & \p1|fsm|Selector9~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101110011010000010111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector14~1_combout\,
	datab => \p1|ir0|ALT_INV_Q\(2),
	datac => \p1|fsm|ALT_INV_Selector9~0_combout\,
	datad => \p1|ir0|ALT_INV_Q\(1),
	dataf => \p1|fsm|ALT_INV_Selector13~0_combout\,
	combout => \p1|fsm|Selector15~0_combout\);

-- Location: LABCELL_X5_Y22_N57
\p1|fsm|R0toR7out[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|R0toR7out\(2) = ( \p1|fsm|Selector15~0_combout\ & ( (\p1|fsm|Selector18~0_combout\) # (\p1|fsm|R0toR7out\(2)) ) ) # ( !\p1|fsm|Selector15~0_combout\ & ( (\p1|fsm|R0toR7out\(2) & !\p1|fsm|Selector18~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|fsm|ALT_INV_R0toR7out\(2),
	datad => \p1|fsm|ALT_INV_Selector18~0_combout\,
	dataf => \p1|fsm|ALT_INV_Selector15~0_combout\,
	combout => \p1|fsm|R0toR7out\(2));

-- Location: LABCELL_X6_Y22_N57
\p1|mux0|y[1]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~8_combout\ = ( \p1|fsm|R0toR7out\(2) & ( (!\p1|fsm|R0toR7out\(0) & \p1|fsm|R0toR7out\(1)) ) ) # ( !\p1|fsm|R0toR7out\(2) & ( (!\p1|fsm|R0toR7out\(0) & !\p1|fsm|R0toR7out\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|fsm|ALT_INV_R0toR7out\(0),
	datad => \p1|fsm|ALT_INV_R0toR7out\(1),
	dataf => \p1|fsm|ALT_INV_R0toR7out\(2),
	combout => \p1|mux0|y[1]~8_combout\);

-- Location: MLABCELL_X4_Y22_N48
\p1|fsm|Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector10~0_combout\ = ( \p1|ir0|Q\(3) & ( \p1|ir0|Q\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \p1|ir0|ALT_INV_Q\(3),
	dataf => \p1|ir0|ALT_INV_Q\(4),
	combout => \p1|fsm|Selector10~0_combout\);

-- Location: LABCELL_X5_Y22_N30
\p1|fsm|Selector14~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector14~2_combout\ = ( \p1|fsm|Selector14~1_combout\ & ( ((\p1|fsm|Selector14~0_combout\ & (!\p1|ir0|Q\(2) & \p1|ir0|Q\(1)))) # (\p1|fsm|Selector10~0_combout\) ) ) # ( !\p1|fsm|Selector14~1_combout\ & ( (\p1|fsm|Selector14~0_combout\ & 
-- (!\p1|ir0|Q\(2) & \p1|ir0|Q\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000110011011100110011001101110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector14~0_combout\,
	datab => \p1|fsm|ALT_INV_Selector10~0_combout\,
	datac => \p1|ir0|ALT_INV_Q\(2),
	datad => \p1|ir0|ALT_INV_Q\(1),
	dataf => \p1|fsm|ALT_INV_Selector14~1_combout\,
	combout => \p1|fsm|Selector14~2_combout\);

-- Location: LABCELL_X5_Y22_N24
\p1|fsm|R0toR7out[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|R0toR7out\(3) = ( \p1|fsm|Selector18~0_combout\ & ( \p1|fsm|Selector14~2_combout\ ) ) # ( !\p1|fsm|Selector18~0_combout\ & ( \p1|fsm|R0toR7out\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|fsm|ALT_INV_R0toR7out\(3),
	datad => \p1|fsm|ALT_INV_Selector14~2_combout\,
	dataf => \p1|fsm|ALT_INV_Selector18~0_combout\,
	combout => \p1|fsm|R0toR7out\(3));

-- Location: LABCELL_X5_Y22_N54
\p1|fsm|Selector13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector13~1_combout\ = ( \p1|ir0|Q\(7) & ( (\p1|ir0|Q\(5) & \p1|fsm|y_Q.T1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(5),
	datac => \p1|fsm|ALT_INV_y_Q.T1~q\,
	dataf => \p1|ir0|ALT_INV_Q\(7),
	combout => \p1|fsm|Selector13~1_combout\);

-- Location: LABCELL_X5_Y22_N0
\p1|fsm|Selector13~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector13~2_combout\ = ( \p1|fsm|Selector13~0_combout\ & ( (!\p1|fsm|Selector13~1_combout\ & (\p1|ir0|Q\(2) & (!\p1|ir0|Q\(1)))) # (\p1|fsm|Selector13~1_combout\ & (((\p1|ir0|Q\(2) & !\p1|ir0|Q\(1))) # (\p1|fsm|Selector7~0_combout\))) ) ) # ( 
-- !\p1|fsm|Selector13~0_combout\ & ( (\p1|fsm|Selector13~1_combout\ & \p1|fsm|Selector7~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100110000011101010011000001110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector13~1_combout\,
	datab => \p1|ir0|ALT_INV_Q\(2),
	datac => \p1|ir0|ALT_INV_Q\(1),
	datad => \p1|fsm|ALT_INV_Selector7~0_combout\,
	dataf => \p1|fsm|ALT_INV_Selector13~0_combout\,
	combout => \p1|fsm|Selector13~2_combout\);

-- Location: LABCELL_X5_Y22_N48
\p1|fsm|R0toR7out[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|R0toR7out\(4) = ( \p1|fsm|Selector13~2_combout\ & ( (\p1|fsm|Selector18~0_combout\) # (\p1|fsm|R0toR7out\(4)) ) ) # ( !\p1|fsm|Selector13~2_combout\ & ( (\p1|fsm|R0toR7out\(4) & !\p1|fsm|Selector18~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|fsm|ALT_INV_R0toR7out\(4),
	datad => \p1|fsm|ALT_INV_Selector18~0_combout\,
	dataf => \p1|fsm|ALT_INV_Selector13~2_combout\,
	combout => \p1|fsm|R0toR7out\(4));

-- Location: LABCELL_X5_Y22_N18
\p1|fsm|Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector12~0_combout\ = ( \p1|ir0|Q\(1) & ( \p1|fsm|Selector13~1_combout\ & ( (!\p1|ir0|Q\(4) & \p1|ir0|Q\(3)) ) ) ) # ( !\p1|ir0|Q\(1) & ( \p1|fsm|Selector13~1_combout\ & ( (!\p1|ir0|Q\(4) & (((\p1|fsm|Selector14~0_combout\ & \p1|ir0|Q\(2))) # 
-- (\p1|ir0|Q\(3)))) # (\p1|ir0|Q\(4) & (\p1|fsm|Selector14~0_combout\ & ((\p1|ir0|Q\(2))))) ) ) ) # ( !\p1|ir0|Q\(1) & ( !\p1|fsm|Selector13~1_combout\ & ( (\p1|fsm|Selector14~0_combout\ & \p1|ir0|Q\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000000000000001010001110110000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(4),
	datab => \p1|fsm|ALT_INV_Selector14~0_combout\,
	datac => \p1|ir0|ALT_INV_Q\(3),
	datad => \p1|ir0|ALT_INV_Q\(2),
	datae => \p1|ir0|ALT_INV_Q\(1),
	dataf => \p1|fsm|ALT_INV_Selector13~1_combout\,
	combout => \p1|fsm|Selector12~0_combout\);

-- Location: LABCELL_X5_Y22_N15
\p1|fsm|R0toR7out[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|R0toR7out\(5) = ( \p1|fsm|Selector12~0_combout\ & ( (\p1|fsm|Selector18~0_combout\) # (\p1|fsm|R0toR7out\(5)) ) ) # ( !\p1|fsm|Selector12~0_combout\ & ( (\p1|fsm|R0toR7out\(5) & !\p1|fsm|Selector18~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|fsm|ALT_INV_R0toR7out\(5),
	datad => \p1|fsm|ALT_INV_Selector18~0_combout\,
	dataf => \p1|fsm|ALT_INV_Selector12~0_combout\,
	combout => \p1|fsm|R0toR7out\(5));

-- Location: LABCELL_X6_Y22_N27
\p1|fsm|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector2~0_combout\ = ( \p1|fsm|Selector10~0_combout\ & ( ((\p1|ir0|Q\(2) & (\p1|fsm|Selector14~0_combout\ & \p1|ir0|Q\(1)))) # (\p1|fsm|Selector13~1_combout\) ) ) # ( !\p1|fsm|Selector10~0_combout\ & ( (\p1|ir0|Q\(2) & 
-- (\p1|fsm|Selector14~0_combout\ & \p1|ir0|Q\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001101010101010101110101010101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector13~1_combout\,
	datab => \p1|ir0|ALT_INV_Q\(2),
	datac => \p1|fsm|ALT_INV_Selector14~0_combout\,
	datad => \p1|ir0|ALT_INV_Q\(1),
	dataf => \p1|fsm|ALT_INV_Selector10~0_combout\,
	combout => \p1|fsm|Selector2~0_combout\);

-- Location: LABCELL_X6_Y22_N21
\p1|fsm|R0toR7out[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|R0toR7out\(7) = ( \p1|fsm|Selector18~0_combout\ & ( \p1|fsm|Selector2~0_combout\ ) ) # ( !\p1|fsm|Selector18~0_combout\ & ( \p1|fsm|R0toR7out\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_R0toR7out\(7),
	datad => \p1|fsm|ALT_INV_Selector2~0_combout\,
	dataf => \p1|fsm|ALT_INV_Selector18~0_combout\,
	combout => \p1|fsm|R0toR7out\(7));

-- Location: MLABCELL_X4_Y22_N33
\p1|fsm|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector0~0_combout\ = ( \p1|ir0|Q\(1) & ( (!\p1|fsm|Selector13~0_combout\ & (((\p1|fsm|Selector13~1_combout\ & \p1|fsm|Selector9~0_combout\)))) # (\p1|fsm|Selector13~0_combout\ & (((\p1|fsm|Selector13~1_combout\ & \p1|fsm|Selector9~0_combout\)) # 
-- (\p1|ir0|Q\(2)))) ) ) # ( !\p1|ir0|Q\(1) & ( (\p1|fsm|Selector13~1_combout\ & \p1|fsm|Selector9~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100010001000111110001000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector13~0_combout\,
	datab => \p1|ir0|ALT_INV_Q\(2),
	datac => \p1|fsm|ALT_INV_Selector13~1_combout\,
	datad => \p1|fsm|ALT_INV_Selector9~0_combout\,
	dataf => \p1|ir0|ALT_INV_Q\(1),
	combout => \p1|fsm|Selector0~0_combout\);

-- Location: MLABCELL_X4_Y22_N45
\p1|fsm|R0toR7out[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|R0toR7out\(6) = ( \p1|fsm|Selector18~0_combout\ & ( \p1|fsm|Selector0~0_combout\ ) ) # ( !\p1|fsm|Selector18~0_combout\ & ( \p1|fsm|Selector0~0_combout\ & ( \p1|fsm|R0toR7out\(6) ) ) ) # ( !\p1|fsm|Selector18~0_combout\ & ( 
-- !\p1|fsm|Selector0~0_combout\ & ( \p1|fsm|R0toR7out\(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|fsm|ALT_INV_R0toR7out\(6),
	datae => \p1|fsm|ALT_INV_Selector18~0_combout\,
	dataf => \p1|fsm|ALT_INV_Selector0~0_combout\,
	combout => \p1|fsm|R0toR7out\(6));

-- Location: LABCELL_X5_Y22_N42
\p1|mux0|y[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~7_combout\ = ( !\p1|fsm|R0toR7out\(7) & ( \p1|fsm|R0toR7out\(6) & ( (!\p1|fsm|R0toR7out\(1) & (!\p1|fsm|R0toR7out\(3) & (!\p1|fsm|R0toR7out\(4) & !\p1|fsm|R0toR7out\(5)))) ) ) ) # ( \p1|fsm|R0toR7out\(7) & ( !\p1|fsm|R0toR7out\(6) & ( 
-- (!\p1|fsm|R0toR7out\(1) & (!\p1|fsm|R0toR7out\(3) & (!\p1|fsm|R0toR7out\(4) & !\p1|fsm|R0toR7out\(5)))) ) ) ) # ( !\p1|fsm|R0toR7out\(7) & ( !\p1|fsm|R0toR7out\(6) & ( (!\p1|fsm|R0toR7out\(1) & ((!\p1|fsm|R0toR7out\(3) & (!\p1|fsm|R0toR7out\(4) $ 
-- (!\p1|fsm|R0toR7out\(5)))) # (\p1|fsm|R0toR7out\(3) & (!\p1|fsm|R0toR7out\(4) & !\p1|fsm|R0toR7out\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100010000000100000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_R0toR7out\(1),
	datab => \p1|fsm|ALT_INV_R0toR7out\(3),
	datac => \p1|fsm|ALT_INV_R0toR7out\(4),
	datad => \p1|fsm|ALT_INV_R0toR7out\(5),
	datae => \p1|fsm|ALT_INV_R0toR7out\(7),
	dataf => \p1|fsm|ALT_INV_R0toR7out\(6),
	combout => \p1|mux0|y[1]~7_combout\);

-- Location: LABCELL_X6_Y22_N15
\p1|mux0|y[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~9_combout\ = ( \p1|mux0|y[1]~7_combout\ & ( \p1|ir0|Q\(6) & ( (\p1|fsm|y_Q.T1~q\ & (!\p1|ir0|Q\(7) & !\p1|ir0|Q\(8))) ) ) ) # ( !\p1|mux0|y[1]~7_combout\ & ( \p1|ir0|Q\(6) & ( ((\p1|fsm|y_Q.T1~q\ & (!\p1|ir0|Q\(7) & !\p1|ir0|Q\(8)))) # 
-- (\p1|mux0|y[1]~8_combout\) ) ) ) # ( !\p1|mux0|y[1]~7_combout\ & ( !\p1|ir0|Q\(6) & ( \p1|mux0|y[1]~8_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000001110011001100110101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T1~q\,
	datab => \p1|mux0|ALT_INV_y[1]~8_combout\,
	datac => \p1|ir0|ALT_INV_Q\(7),
	datad => \p1|ir0|ALT_INV_Q\(8),
	datae => \p1|mux0|ALT_INV_y[1]~7_combout\,
	dataf => \p1|ir0|ALT_INV_Q\(6),
	combout => \p1|mux0|y[1]~9_combout\);

-- Location: LABCELL_X6_Y22_N18
\p1|mux0|y[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~6_combout\ = ( !\p1|fsm|R0toR7out\(4) & ( (!\p1|fsm|R0toR7out\(7) & (!\p1|fsm|R0toR7out\(5) & (!\p1|fsm|R0toR7out\(3) & !\p1|fsm|R0toR7out\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_R0toR7out\(7),
	datab => \p1|fsm|ALT_INV_R0toR7out\(5),
	datac => \p1|fsm|ALT_INV_R0toR7out\(3),
	datad => \p1|fsm|ALT_INV_R0toR7out\(6),
	dataf => \p1|fsm|ALT_INV_R0toR7out\(4),
	combout => \p1|mux0|y[1]~6_combout\);

-- Location: LABCELL_X6_Y22_N6
\p1|fsm|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Equal0~0_combout\ = ( !\p1|ir0|Q\(8) & ( \p1|ir0|Q\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|ir0|ALT_INV_Q\(7),
	dataf => \p1|ir0|ALT_INV_Q\(8),
	combout => \p1|fsm|Equal0~0_combout\);

-- Location: LABCELL_X6_Y22_N54
\p1|fsm|y_D.T3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|y_D.T3~0_combout\ = ( \p1|fsm|y_Q.T2~q\ & ( (!\p1|ir0|Q\(8) & \p1|ir0|Q\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|ir0|ALT_INV_Q\(8),
	datad => \p1|ir0|ALT_INV_Q\(7),
	dataf => \p1|fsm|ALT_INV_y_Q.T2~q\,
	combout => \p1|fsm|y_D.T3~0_combout\);

-- Location: FF_X6_Y22_N56
\p1|fsm|y_Q.T3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	d => \p1|fsm|y_D.T3~0_combout\,
	clrn => \key0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|fsm|y_Q.T3~q\);

-- Location: LABCELL_X6_Y22_N33
\p1|fsm|Gout\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Gout~combout\ = ( \p1|fsm|Gout~combout\ & ( \p1|fsm|y_Q.T3~q\ ) ) # ( !\p1|fsm|Gout~combout\ & ( (\p1|fsm|Equal0~0_combout\ & \p1|fsm|y_Q.T3~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|fsm|ALT_INV_Equal0~0_combout\,
	datad => \p1|fsm|ALT_INV_y_Q.T3~q\,
	dataf => \p1|fsm|ALT_INV_Gout~combout\,
	combout => \p1|fsm|Gout~combout\);

-- Location: LABCELL_X6_Y22_N0
\p1|mux0|y[1]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~10_combout\ = ( \p1|ir0|Q\(6) & ( (\p1|fsm|Gout~combout\ & ((!\p1|fsm|y_Q.T1~q\) # ((\p1|ir0|Q\(8)) # (\p1|ir0|Q\(7))))) ) ) # ( !\p1|ir0|Q\(6) & ( \p1|fsm|Gout~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000101111110000000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T1~q\,
	datab => \p1|ir0|ALT_INV_Q\(7),
	datac => \p1|ir0|ALT_INV_Q\(8),
	datad => \p1|fsm|ALT_INV_Gout~combout\,
	dataf => \p1|ir0|ALT_INV_Q\(6),
	combout => \p1|mux0|y[1]~10_combout\);

-- Location: LABCELL_X6_Y22_N42
\p1|mux0|y[1]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~11_combout\ = ( \p1|fsm|R0toR7out\(0) & ( !\p1|mux0|y[1]~10_combout\ & ( (((!\p1|mux0|y[1]~6_combout\) # (\p1|fsm|R0toR7out\(2))) # (\p1|fsm|R0toR7out\(1))) # (\p1|mux0|y[1]~9_combout\) ) ) ) # ( !\p1|fsm|R0toR7out\(0) & ( 
-- !\p1|mux0|y[1]~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111110111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[1]~9_combout\,
	datab => \p1|fsm|ALT_INV_R0toR7out\(1),
	datac => \p1|fsm|ALT_INV_R0toR7out\(2),
	datad => \p1|mux0|ALT_INV_y[1]~6_combout\,
	datae => \p1|fsm|ALT_INV_R0toR7out\(0),
	dataf => \p1|mux0|ALT_INV_y[1]~10_combout\,
	combout => \p1|mux0|y[1]~11_combout\);

-- Location: LABCELL_X6_Y22_N51
\p1|mux0|y[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~4_combout\ = ( !\p1|fsm|R0toR7out\(2) & ( !\p1|fsm|R0toR7out\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_R0toR7out\(1),
	dataf => \p1|fsm|ALT_INV_R0toR7out\(2),
	combout => \p1|mux0|y[1]~4_combout\);

-- Location: MLABCELL_X4_Y22_N21
\p1|mux0|y[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~0_combout\ = ( \p1|fsm|R0toR7out\(6) & ( !\p1|fsm|R0toR7out\(4) ) ) # ( !\p1|fsm|R0toR7out\(6) & ( (!\p1|fsm|R0toR7out\(4) & \p1|fsm|R0toR7out\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|fsm|ALT_INV_R0toR7out\(4),
	datac => \p1|fsm|ALT_INV_R0toR7out\(5),
	dataf => \p1|fsm|ALT_INV_R0toR7out\(6),
	combout => \p1|mux0|y[1]~0_combout\);

-- Location: MLABCELL_X4_Y22_N27
\p1|mux0|y[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~1_combout\ = (!\p1|fsm|R0toR7out\(4) & !\p1|fsm|R0toR7out\(5))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|fsm|ALT_INV_R0toR7out\(4),
	datac => \p1|fsm|ALT_INV_R0toR7out\(5),
	combout => \p1|mux0|y[1]~1_combout\);

-- Location: LABCELL_X5_Y22_N12
\p1|fsm|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector4~0_combout\ = ( \p1|fsm|y_Q.T1~q\ & ( (!\p1|ir0|Q\(8) & ((!\p1|ir0|Q\(7)) # (\p1|fsm|y_Q.T3~q\))) ) ) # ( !\p1|fsm|y_Q.T1~q\ & ( (\p1|ir0|Q\(7) & (\p1|fsm|y_Q.T3~q\ & !\p1|ir0|Q\(8))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000010110000101100001011000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(7),
	datab => \p1|fsm|ALT_INV_y_Q.T3~q\,
	datac => \p1|ir0|ALT_INV_Q\(8),
	dataf => \p1|fsm|ALT_INV_y_Q.T1~q\,
	combout => \p1|fsm|Selector4~0_combout\);

-- Location: MLABCELL_X4_Y20_N24
\p1|fsm|Selector9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector9~1_combout\ = ( \p1|fsm|Selector9~0_combout\ & ( (\p1|fsm|Selector4~0_combout\ & \p1|ir0|Q\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|fsm|ALT_INV_Selector4~0_combout\,
	datad => \p1|ir0|ALT_INV_Q\(5),
	dataf => \p1|fsm|ALT_INV_Selector9~0_combout\,
	combout => \p1|fsm|Selector9~1_combout\);

-- Location: FF_X5_Y21_N44
\p1|reg6|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[0]~13_combout\,
	sload => VCC,
	ena => \p1|fsm|Selector9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(0));

-- Location: MLABCELL_X4_Y21_N39
\p1|fsm|Selector10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector10~1_combout\ = ( \p1|ir0|Q\(5) & ( (\p1|fsm|Selector4~0_combout\ & \p1|fsm|Selector10~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|fsm|ALT_INV_Selector4~0_combout\,
	datac => \p1|fsm|ALT_INV_Selector10~0_combout\,
	dataf => \p1|ir0|ALT_INV_Q\(5),
	combout => \p1|fsm|Selector10~1_combout\);

-- Location: FF_X4_Y21_N13
\p1|reg7|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[0]~13_combout\,
	sload => VCC,
	ena => \p1|fsm|Selector10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg7|Q\(0));

-- Location: LABCELL_X5_Y20_N6
\p1|reg5|Q[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg5|Q[0]~feeder_combout\ = \p1|mux0|y[0]~13_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|mux0|ALT_INV_y[0]~13_combout\,
	combout => \p1|reg5|Q[0]~feeder_combout\);

-- Location: MLABCELL_X4_Y22_N12
\p1|fsm|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector8~0_combout\ = ( \p1|ir0|Q\(5) & ( \p1|fsm|Selector4~0_combout\ & ( (!\p1|ir0|Q\(4) & \p1|ir0|Q\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|ir0|ALT_INV_Q\(4),
	datac => \p1|ir0|ALT_INV_Q\(3),
	datae => \p1|ir0|ALT_INV_Q\(5),
	dataf => \p1|fsm|ALT_INV_Selector4~0_combout\,
	combout => \p1|fsm|Selector8~0_combout\);

-- Location: FF_X5_Y20_N8
\p1|reg5|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	d => \p1|reg5|Q[0]~feeder_combout\,
	ena => \p1|fsm|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(0));

-- Location: LABCELL_X5_Y20_N36
\p1|reg4|Q[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg4|Q[0]~feeder_combout\ = \p1|mux0|y[0]~13_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|mux0|ALT_INV_y[0]~13_combout\,
	combout => \p1|reg4|Q[0]~feeder_combout\);

-- Location: LABCELL_X5_Y20_N30
\p1|fsm|Selector7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector7~1_combout\ = ( \p1|fsm|Selector4~0_combout\ & ( (\p1|ir0|Q\(5) & \p1|fsm|Selector7~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|ir0|ALT_INV_Q\(5),
	datac => \p1|fsm|ALT_INV_Selector7~0_combout\,
	dataf => \p1|fsm|ALT_INV_Selector4~0_combout\,
	combout => \p1|fsm|Selector7~1_combout\);

-- Location: FF_X5_Y20_N38
\p1|reg4|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	d => \p1|reg4|Q[0]~feeder_combout\,
	ena => \p1|fsm|Selector7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg4|Q\(0));

-- Location: LABCELL_X5_Y21_N45
\p1|mux0|y[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[0]~2_combout\ = ( \p1|reg5|Q\(0) & ( \p1|reg4|Q\(0) & ( (!\p1|mux0|y[1]~1_combout\) # ((!\p1|mux0|y[1]~0_combout\ & ((\p1|reg7|Q\(0)))) # (\p1|mux0|y[1]~0_combout\ & (\p1|reg6|Q\(0)))) ) ) ) # ( !\p1|reg5|Q\(0) & ( \p1|reg4|Q\(0) & ( 
-- (!\p1|mux0|y[1]~0_combout\ & ((!\p1|mux0|y[1]~1_combout\) # ((\p1|reg7|Q\(0))))) # (\p1|mux0|y[1]~0_combout\ & (\p1|mux0|y[1]~1_combout\ & (\p1|reg6|Q\(0)))) ) ) ) # ( \p1|reg5|Q\(0) & ( !\p1|reg4|Q\(0) & ( (!\p1|mux0|y[1]~0_combout\ & 
-- (\p1|mux0|y[1]~1_combout\ & ((\p1|reg7|Q\(0))))) # (\p1|mux0|y[1]~0_combout\ & ((!\p1|mux0|y[1]~1_combout\) # ((\p1|reg6|Q\(0))))) ) ) ) # ( !\p1|reg5|Q\(0) & ( !\p1|reg4|Q\(0) & ( (\p1|mux0|y[1]~1_combout\ & ((!\p1|mux0|y[1]~0_combout\ & 
-- ((\p1|reg7|Q\(0)))) # (\p1|mux0|y[1]~0_combout\ & (\p1|reg6|Q\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011010001010110011110001001101010111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[1]~0_combout\,
	datab => \p1|mux0|ALT_INV_y[1]~1_combout\,
	datac => \p1|reg6|ALT_INV_Q\(0),
	datad => \p1|reg7|ALT_INV_Q\(0),
	datae => \p1|reg5|ALT_INV_Q\(0),
	dataf => \p1|reg4|ALT_INV_Q\(0),
	combout => \p1|mux0|y[0]~2_combout\);

-- Location: MLABCELL_X4_Y22_N24
\p1|fsm|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector6~0_combout\ = ( \p1|fsm|Selector4~0_combout\ & ( (\p1|fsm|Selector10~0_combout\ & !\p1|ir0|Q\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|fsm|ALT_INV_Selector10~0_combout\,
	datad => \p1|ir0|ALT_INV_Q\(5),
	dataf => \p1|fsm|ALT_INV_Selector4~0_combout\,
	combout => \p1|fsm|Selector6~0_combout\);

-- Location: FF_X5_Y21_N32
\p1|reg3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[0]~13_combout\,
	sload => VCC,
	ena => \p1|fsm|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(0));

-- Location: MLABCELL_X4_Y21_N15
\p1|fsm|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector5~0_combout\ = ( !\p1|ir0|Q\(5) & ( (\p1|fsm|Selector4~0_combout\ & \p1|fsm|Selector9~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000000000000000000011000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|fsm|ALT_INV_Selector4~0_combout\,
	datac => \p1|fsm|ALT_INV_Selector9~0_combout\,
	datae => \p1|ir0|ALT_INV_Q\(5),
	combout => \p1|fsm|Selector5~0_combout\);

-- Location: FF_X7_Y21_N44
\p1|reg2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[0]~13_combout\,
	sload => VCC,
	ena => \p1|fsm|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q\(0));

-- Location: LABCELL_X6_Y22_N30
\p1|fsm|Selector4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector4~1_combout\ = ( \p1|fsm|Selector4~0_combout\ & ( (!\p1|ir0|Q\(5) & (\p1|ir0|Q\(3) & !\p1|ir0|Q\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(5),
	datab => \p1|ir0|ALT_INV_Q\(3),
	datac => \p1|ir0|ALT_INV_Q\(4),
	dataf => \p1|fsm|ALT_INV_Selector4~0_combout\,
	combout => \p1|fsm|Selector4~1_combout\);

-- Location: FF_X7_Y21_N1
\p1|reg1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[0]~13_combout\,
	sload => VCC,
	ena => \p1|fsm|Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(0));

-- Location: LABCELL_X5_Y21_N9
\p1|mux0|y[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~3_combout\ = ( !\p1|fsm|R0toR7out\(1) & ( (\p1|fsm|R0toR7out\(2)) # (\p1|fsm|R0toR7out\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|fsm|ALT_INV_R0toR7out\(3),
	datad => \p1|fsm|ALT_INV_R0toR7out\(2),
	dataf => \p1|fsm|ALT_INV_R0toR7out\(1),
	combout => \p1|mux0|y[1]~3_combout\);

-- Location: LABCELL_X5_Y21_N33
\p1|mux0|y[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[0]~5_combout\ = ( \p1|reg1|Q\(0) & ( \p1|mux0|y[1]~3_combout\ & ( (!\p1|mux0|y[1]~4_combout\ & ((\p1|reg2|Q\(0)))) # (\p1|mux0|y[1]~4_combout\ & (\p1|reg3|Q\(0))) ) ) ) # ( !\p1|reg1|Q\(0) & ( \p1|mux0|y[1]~3_combout\ & ( 
-- (!\p1|mux0|y[1]~4_combout\ & ((\p1|reg2|Q\(0)))) # (\p1|mux0|y[1]~4_combout\ & (\p1|reg3|Q\(0))) ) ) ) # ( \p1|reg1|Q\(0) & ( !\p1|mux0|y[1]~3_combout\ & ( (!\p1|mux0|y[1]~4_combout\) # (\p1|mux0|y[0]~2_combout\) ) ) ) # ( !\p1|reg1|Q\(0) & ( 
-- !\p1|mux0|y[1]~3_combout\ & ( (\p1|mux0|y[1]~4_combout\ & \p1|mux0|y[0]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001101110111011101100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[1]~4_combout\,
	datab => \p1|mux0|ALT_INV_y[0]~2_combout\,
	datac => \p1|reg3|ALT_INV_Q\(0),
	datad => \p1|reg2|ALT_INV_Q\(0),
	datae => \p1|reg1|ALT_INV_Q\(0),
	dataf => \p1|mux0|ALT_INV_y[1]~3_combout\,
	combout => \p1|mux0|y[0]~5_combout\);

-- Location: LABCELL_X6_Y22_N3
\p1|fsm|Ain\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Ain~combout\ = ( \p1|fsm|Equal0~0_combout\ & ( (\p1|fsm|Ain~combout\) # (\p1|fsm|y_Q.T1~q\) ) ) # ( !\p1|fsm|Equal0~0_combout\ & ( (!\p1|fsm|y_Q.T1~q\ & \p1|fsm|Ain~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|fsm|ALT_INV_y_Q.T1~q\,
	datad => \p1|fsm|ALT_INV_Ain~combout\,
	dataf => \p1|fsm|ALT_INV_Equal0~0_combout\,
	combout => \p1|fsm|Ain~combout\);

-- Location: FF_X5_Y20_N34
\p1|regA|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[0]~13_combout\,
	sload => VCC,
	ena => \p1|fsm|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regA|Q\(0));

-- Location: LABCELL_X6_Y22_N24
\p1|fsm|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Equal0~1_combout\ = ( \p1|ir0|Q\(7) & ( (!\p1|ir0|Q\(8) & \p1|ir0|Q\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|ir0|ALT_INV_Q\(8),
	datad => \p1|ir0|ALT_INV_Q\(6),
	dataf => \p1|ir0|ALT_INV_Q\(7),
	combout => \p1|fsm|Equal0~1_combout\);

-- Location: LABCELL_X6_Y22_N48
\p1|fsm|AddSub\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|AddSub~combout\ = ( \p1|fsm|Equal0~1_combout\ & ( (\p1|fsm|y_Q.T2~q\) # (\p1|fsm|AddSub~combout\) ) ) # ( !\p1|fsm|Equal0~1_combout\ & ( (\p1|fsm|AddSub~combout\ & !\p1|fsm|y_Q.T2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|fsm|ALT_INV_AddSub~combout\,
	datad => \p1|fsm|ALT_INV_y_Q.T2~q\,
	dataf => \p1|fsm|ALT_INV_Equal0~1_combout\,
	combout => \p1|fsm|AddSub~combout\);

-- Location: LABCELL_X6_Y21_N30
\p1|addsub0|Add0~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~38_cout\ = CARRY(( \p1|fsm|AddSub~combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \p1|fsm|ALT_INV_AddSub~combout\,
	cin => GND,
	cout => \p1|addsub0|Add0~38_cout\);

-- Location: LABCELL_X6_Y21_N33
\p1|addsub0|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~1_sumout\ = SUM(( !\p1|mux0|y[0]~13_combout\ $ (!\p1|fsm|AddSub~combout\) ) + ( \p1|regA|Q\(0) ) + ( \p1|addsub0|Add0~38_cout\ ))
-- \p1|addsub0|Add0~2\ = CARRY(( !\p1|mux0|y[0]~13_combout\ $ (!\p1|fsm|AddSub~combout\) ) + ( \p1|regA|Q\(0) ) + ( \p1|addsub0|Add0~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|mux0|ALT_INV_y[0]~13_combout\,
	datac => \p1|regA|ALT_INV_Q\(0),
	datad => \p1|fsm|ALT_INV_AddSub~combout\,
	cin => \p1|addsub0|Add0~38_cout\,
	sumout => \p1|addsub0|Add0~1_sumout\,
	cout => \p1|addsub0|Add0~2\);

-- Location: FF_X6_Y21_N34
\p1|regG|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	d => \p1|addsub0|Add0~1_sumout\,
	sclr => \ALT_INV_key0~input_o\,
	ena => \p1|fsm|y_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regG|Q\(0));

-- Location: LABCELL_X5_Y20_N21
\p1|fsm|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector3~0_combout\ = ( \p1|fsm|Selector7~0_combout\ & ( !\p1|ir0|Q\(5) & ( \p1|fsm|Selector4~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector4~0_combout\,
	datae => \p1|fsm|ALT_INV_Selector7~0_combout\,
	dataf => \p1|ir0|ALT_INV_Q\(5),
	combout => \p1|fsm|Selector3~0_combout\);

-- Location: FF_X6_Y21_N26
\p1|reg0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	d => \p1|mux0|y[0]~13_combout\,
	ena => \p1|fsm|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(0));

-- Location: LABCELL_X6_Y22_N36
\p1|mux0|y[1]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~12_combout\ = ( !\p1|fsm|R0toR7out\(0) & ( \p1|fsm|R0toR7out\(2) & ( (!\p1|mux0|y[1]~9_combout\ & (!\p1|fsm|Gout~combout\ & ((\p1|fsm|R0toR7out\(1)) # (\p1|mux0|y[1]~6_combout\)))) ) ) ) # ( \p1|fsm|R0toR7out\(0) & ( !\p1|fsm|R0toR7out\(2) & 
-- ( (\p1|mux0|y[1]~6_combout\ & (!\p1|fsm|R0toR7out\(1) & (!\p1|mux0|y[1]~9_combout\ & !\p1|fsm|Gout~combout\))) ) ) ) # ( !\p1|fsm|R0toR7out\(0) & ( !\p1|fsm|R0toR7out\(2) & ( (!\p1|mux0|y[1]~9_combout\ & (!\p1|fsm|Gout~combout\ & ((!\p1|fsm|R0toR7out\(1)) 
-- # (\p1|mux0|y[1]~6_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000000000000010000000000000001110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[1]~6_combout\,
	datab => \p1|fsm|ALT_INV_R0toR7out\(1),
	datac => \p1|mux0|ALT_INV_y[1]~9_combout\,
	datad => \p1|fsm|ALT_INV_Gout~combout\,
	datae => \p1|fsm|ALT_INV_R0toR7out\(0),
	dataf => \p1|fsm|ALT_INV_R0toR7out\(2),
	combout => \p1|mux0|y[1]~12_combout\);

-- Location: LABCELL_X6_Y21_N24
\p1|mux0|y[0]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[0]~13_combout\ = ( \p1|reg0|Q\(0) & ( \p1|mux0|y[1]~12_combout\ & ( (!\p1|mux0|y[1]~11_combout\) # (\p1|mux0|y[0]~5_combout\) ) ) ) # ( !\p1|reg0|Q\(0) & ( \p1|mux0|y[1]~12_combout\ & ( (\p1|mux0|y[1]~11_combout\ & \p1|mux0|y[0]~5_combout\) ) ) 
-- ) # ( \p1|reg0|Q\(0) & ( !\p1|mux0|y[1]~12_combout\ & ( (!\p1|mux0|y[1]~11_combout\ & (\p1|regG|Q\(0))) # (\p1|mux0|y[1]~11_combout\ & ((\sw[0]~input_o\))) ) ) ) # ( !\p1|reg0|Q\(0) & ( !\p1|mux0|y[1]~12_combout\ & ( (!\p1|mux0|y[1]~11_combout\ & 
-- (\p1|regG|Q\(0))) # (\p1|mux0|y[1]~11_combout\ & ((\sw[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100010001000100011011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[1]~11_combout\,
	datab => \p1|mux0|ALT_INV_y[0]~5_combout\,
	datac => \p1|regG|ALT_INV_Q\(0),
	datad => \ALT_INV_sw[0]~input_o\,
	datae => \p1|reg0|ALT_INV_Q\(0),
	dataf => \p1|mux0|ALT_INV_y[1]~12_combout\,
	combout => \p1|mux0|y[0]~13_combout\);

-- Location: MLABCELL_X4_Y21_N9
\p1|reg7|Q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg7|Q[1]~feeder_combout\ = ( \p1|mux0|y[1]~16_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[1]~16_combout\,
	combout => \p1|reg7|Q[1]~feeder_combout\);

-- Location: FF_X4_Y21_N10
\p1|reg7|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	d => \p1|reg7|Q[1]~feeder_combout\,
	ena => \p1|fsm|Selector10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg7|Q\(1));

-- Location: FF_X5_Y21_N38
\p1|reg6|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[1]~16_combout\,
	sload => VCC,
	ena => \p1|fsm|Selector9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(1));

-- Location: FF_X2_Y21_N28
\p1|reg5|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[1]~16_combout\,
	sload => VCC,
	ena => \p1|fsm|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(1));

-- Location: LABCELL_X5_Y20_N39
\p1|reg4|Q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg4|Q[1]~feeder_combout\ = \p1|mux0|y[1]~16_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|mux0|ALT_INV_y[1]~16_combout\,
	combout => \p1|reg4|Q[1]~feeder_combout\);

-- Location: FF_X5_Y20_N40
\p1|reg4|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	d => \p1|reg4|Q[1]~feeder_combout\,
	ena => \p1|fsm|Selector7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg4|Q\(1));

-- Location: LABCELL_X5_Y21_N39
\p1|mux0|y[1]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~14_combout\ = ( \p1|reg5|Q\(1) & ( \p1|reg4|Q\(1) & ( (!\p1|mux0|y[1]~1_combout\) # ((!\p1|mux0|y[1]~0_combout\ & (\p1|reg7|Q\(1))) # (\p1|mux0|y[1]~0_combout\ & ((\p1|reg6|Q\(1))))) ) ) ) # ( !\p1|reg5|Q\(1) & ( \p1|reg4|Q\(1) & ( 
-- (!\p1|mux0|y[1]~1_combout\ & (!\p1|mux0|y[1]~0_combout\)) # (\p1|mux0|y[1]~1_combout\ & ((!\p1|mux0|y[1]~0_combout\ & (\p1|reg7|Q\(1))) # (\p1|mux0|y[1]~0_combout\ & ((\p1|reg6|Q\(1)))))) ) ) ) # ( \p1|reg5|Q\(1) & ( !\p1|reg4|Q\(1) & ( 
-- (!\p1|mux0|y[1]~1_combout\ & (\p1|mux0|y[1]~0_combout\)) # (\p1|mux0|y[1]~1_combout\ & ((!\p1|mux0|y[1]~0_combout\ & (\p1|reg7|Q\(1))) # (\p1|mux0|y[1]~0_combout\ & ((\p1|reg6|Q\(1)))))) ) ) ) # ( !\p1|reg5|Q\(1) & ( !\p1|reg4|Q\(1) & ( 
-- (\p1|mux0|y[1]~1_combout\ & ((!\p1|mux0|y[1]~0_combout\ & (\p1|reg7|Q\(1))) # (\p1|mux0|y[1]~0_combout\ & ((\p1|reg6|Q\(1)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101001001100011011110001100100111011010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[1]~1_combout\,
	datab => \p1|mux0|ALT_INV_y[1]~0_combout\,
	datac => \p1|reg7|ALT_INV_Q\(1),
	datad => \p1|reg6|ALT_INV_Q\(1),
	datae => \p1|reg5|ALT_INV_Q\(1),
	dataf => \p1|reg4|ALT_INV_Q\(1),
	combout => \p1|mux0|y[1]~14_combout\);

-- Location: MLABCELL_X4_Y21_N33
\p1|reg2|Q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg2|Q[1]~feeder_combout\ = ( \p1|mux0|y[1]~16_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[1]~16_combout\,
	combout => \p1|reg2|Q[1]~feeder_combout\);

-- Location: FF_X4_Y21_N34
\p1|reg2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	d => \p1|reg2|Q[1]~feeder_combout\,
	ena => \p1|fsm|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q\(1));

-- Location: FF_X5_Y21_N50
\p1|reg3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[1]~16_combout\,
	sload => VCC,
	ena => \p1|fsm|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(1));

-- Location: LABCELL_X7_Y21_N57
\p1|reg1|Q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg1|Q[1]~feeder_combout\ = ( \p1|mux0|y[1]~16_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[1]~16_combout\,
	combout => \p1|reg1|Q[1]~feeder_combout\);

-- Location: FF_X7_Y21_N58
\p1|reg1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	d => \p1|reg1|Q[1]~feeder_combout\,
	ena => \p1|fsm|Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(1));

-- Location: LABCELL_X5_Y21_N51
\p1|mux0|y[1]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~15_combout\ = ( \p1|reg1|Q\(1) & ( \p1|mux0|y[1]~3_combout\ & ( (!\p1|mux0|y[1]~4_combout\ & (\p1|reg2|Q\(1))) # (\p1|mux0|y[1]~4_combout\ & ((\p1|reg3|Q\(1)))) ) ) ) # ( !\p1|reg1|Q\(1) & ( \p1|mux0|y[1]~3_combout\ & ( 
-- (!\p1|mux0|y[1]~4_combout\ & (\p1|reg2|Q\(1))) # (\p1|mux0|y[1]~4_combout\ & ((\p1|reg3|Q\(1)))) ) ) ) # ( \p1|reg1|Q\(1) & ( !\p1|mux0|y[1]~3_combout\ & ( (!\p1|mux0|y[1]~4_combout\) # (\p1|mux0|y[1]~14_combout\) ) ) ) # ( !\p1|reg1|Q\(1) & ( 
-- !\p1|mux0|y[1]~3_combout\ & ( (\p1|mux0|y[1]~4_combout\ & \p1|mux0|y[1]~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001101110111011101100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[1]~4_combout\,
	datab => \p1|mux0|ALT_INV_y[1]~14_combout\,
	datac => \p1|reg2|ALT_INV_Q\(1),
	datad => \p1|reg3|ALT_INV_Q\(1),
	datae => \p1|reg1|ALT_INV_Q\(1),
	dataf => \p1|mux0|ALT_INV_y[1]~3_combout\,
	combout => \p1|mux0|y[1]~15_combout\);

-- Location: LABCELL_X5_Y20_N0
\p1|regA|Q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|regA|Q[1]~feeder_combout\ = \p1|mux0|y[1]~16_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|mux0|ALT_INV_y[1]~16_combout\,
	combout => \p1|regA|Q[1]~feeder_combout\);

-- Location: FF_X5_Y20_N2
\p1|regA|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	d => \p1|regA|Q[1]~feeder_combout\,
	ena => \p1|fsm|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regA|Q\(1));

-- Location: LABCELL_X6_Y21_N36
\p1|addsub0|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~5_sumout\ = SUM(( !\p1|fsm|AddSub~combout\ $ (!\p1|mux0|y[1]~16_combout\) ) + ( \p1|regA|Q\(1) ) + ( \p1|addsub0|Add0~2\ ))
-- \p1|addsub0|Add0~6\ = CARRY(( !\p1|fsm|AddSub~combout\ $ (!\p1|mux0|y[1]~16_combout\) ) + ( \p1|regA|Q\(1) ) + ( \p1|addsub0|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|fsm|ALT_INV_AddSub~combout\,
	datad => \p1|mux0|ALT_INV_y[1]~16_combout\,
	dataf => \p1|regA|ALT_INV_Q\(1),
	cin => \p1|addsub0|Add0~2\,
	sumout => \p1|addsub0|Add0~5_sumout\,
	cout => \p1|addsub0|Add0~6\);

-- Location: FF_X6_Y21_N37
\p1|regG|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	d => \p1|addsub0|Add0~5_sumout\,
	sclr => \ALT_INV_key0~input_o\,
	ena => \p1|fsm|y_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regG|Q\(1));

-- Location: FF_X5_Y21_N26
\p1|reg0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	d => \p1|mux0|y[1]~16_combout\,
	ena => \p1|fsm|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(1));

-- Location: LABCELL_X5_Y21_N24
\p1|mux0|y[1]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~16_combout\ = ( \p1|reg0|Q\(1) & ( \p1|mux0|y[1]~12_combout\ & ( (!\p1|mux0|y[1]~11_combout\) # (\p1|mux0|y[1]~15_combout\) ) ) ) # ( !\p1|reg0|Q\(1) & ( \p1|mux0|y[1]~12_combout\ & ( (\p1|mux0|y[1]~11_combout\ & \p1|mux0|y[1]~15_combout\) ) 
-- ) ) # ( \p1|reg0|Q\(1) & ( !\p1|mux0|y[1]~12_combout\ & ( (!\p1|mux0|y[1]~11_combout\ & (\p1|regG|Q\(1))) # (\p1|mux0|y[1]~11_combout\ & ((\sw[1]~input_o\))) ) ) ) # ( !\p1|reg0|Q\(1) & ( !\p1|mux0|y[1]~12_combout\ & ( (!\p1|mux0|y[1]~11_combout\ & 
-- (\p1|regG|Q\(1))) # (\p1|mux0|y[1]~11_combout\ & ((\sw[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100010001000100011011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[1]~11_combout\,
	datab => \p1|mux0|ALT_INV_y[1]~15_combout\,
	datac => \p1|regG|ALT_INV_Q\(1),
	datad => \ALT_INV_sw[1]~input_o\,
	datae => \p1|reg0|ALT_INV_Q\(1),
	dataf => \p1|mux0|ALT_INV_y[1]~12_combout\,
	combout => \p1|mux0|y[1]~16_combout\);

-- Location: MLABCELL_X4_Y21_N24
\p1|reg7|Q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg7|Q[2]~feeder_combout\ = \p1|mux0|y[2]~19_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[2]~19_combout\,
	combout => \p1|reg7|Q[2]~feeder_combout\);

-- Location: FF_X4_Y21_N25
\p1|reg7|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	d => \p1|reg7|Q[2]~feeder_combout\,
	ena => \p1|fsm|Selector10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg7|Q\(2));

-- Location: FF_X5_Y21_N8
\p1|reg6|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[2]~19_combout\,
	sload => VCC,
	ena => \p1|fsm|Selector9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(2));

-- Location: LABCELL_X2_Y21_N57
\p1|reg5|Q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg5|Q[2]~feeder_combout\ = \p1|mux0|y[2]~19_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|mux0|ALT_INV_y[2]~19_combout\,
	combout => \p1|reg5|Q[2]~feeder_combout\);

-- Location: FF_X2_Y21_N58
\p1|reg5|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	d => \p1|reg5|Q[2]~feeder_combout\,
	ena => \p1|fsm|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(2));

-- Location: LABCELL_X5_Y20_N51
\p1|reg4|Q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg4|Q[2]~feeder_combout\ = \p1|mux0|y[2]~19_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|mux0|ALT_INV_y[2]~19_combout\,
	combout => \p1|reg4|Q[2]~feeder_combout\);

-- Location: FF_X5_Y20_N52
\p1|reg4|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	d => \p1|reg4|Q[2]~feeder_combout\,
	ena => \p1|fsm|Selector7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg4|Q\(2));

-- Location: MLABCELL_X4_Y21_N51
\p1|mux0|y[2]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[2]~17_combout\ = ( \p1|reg5|Q\(2) & ( \p1|reg4|Q\(2) & ( (!\p1|mux0|y[1]~1_combout\) # ((!\p1|mux0|y[1]~0_combout\ & (\p1|reg7|Q\(2))) # (\p1|mux0|y[1]~0_combout\ & ((\p1|reg6|Q\(2))))) ) ) ) # ( !\p1|reg5|Q\(2) & ( \p1|reg4|Q\(2) & ( 
-- (!\p1|mux0|y[1]~1_combout\ & (!\p1|mux0|y[1]~0_combout\)) # (\p1|mux0|y[1]~1_combout\ & ((!\p1|mux0|y[1]~0_combout\ & (\p1|reg7|Q\(2))) # (\p1|mux0|y[1]~0_combout\ & ((\p1|reg6|Q\(2)))))) ) ) ) # ( \p1|reg5|Q\(2) & ( !\p1|reg4|Q\(2) & ( 
-- (!\p1|mux0|y[1]~1_combout\ & (\p1|mux0|y[1]~0_combout\)) # (\p1|mux0|y[1]~1_combout\ & ((!\p1|mux0|y[1]~0_combout\ & (\p1|reg7|Q\(2))) # (\p1|mux0|y[1]~0_combout\ & ((\p1|reg6|Q\(2)))))) ) ) ) # ( !\p1|reg5|Q\(2) & ( !\p1|reg4|Q\(2) & ( 
-- (\p1|mux0|y[1]~1_combout\ & ((!\p1|mux0|y[1]~0_combout\ & (\p1|reg7|Q\(2))) # (\p1|mux0|y[1]~0_combout\ & ((\p1|reg6|Q\(2)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101001001100011011110001100100111011010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[1]~1_combout\,
	datab => \p1|mux0|ALT_INV_y[1]~0_combout\,
	datac => \p1|reg7|ALT_INV_Q\(2),
	datad => \p1|reg6|ALT_INV_Q\(2),
	datae => \p1|reg5|ALT_INV_Q\(2),
	dataf => \p1|reg4|ALT_INV_Q\(2),
	combout => \p1|mux0|y[2]~17_combout\);

-- Location: FF_X4_Y21_N49
\p1|reg2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[2]~19_combout\,
	sload => VCC,
	ena => \p1|fsm|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q\(2));

-- Location: LABCELL_X7_Y21_N36
\p1|reg1|Q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg1|Q[2]~feeder_combout\ = \p1|mux0|y[2]~19_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|mux0|ALT_INV_y[2]~19_combout\,
	combout => \p1|reg1|Q[2]~feeder_combout\);

-- Location: FF_X7_Y21_N37
\p1|reg1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	d => \p1|reg1|Q[2]~feeder_combout\,
	ena => \p1|fsm|Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(2));

-- Location: FF_X5_Y21_N20
\p1|reg3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[2]~19_combout\,
	sload => VCC,
	ena => \p1|fsm|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(2));

-- Location: LABCELL_X5_Y21_N18
\p1|mux0|y[2]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[2]~18_combout\ = ( \p1|reg3|Q\(2) & ( \p1|mux0|y[1]~3_combout\ & ( (\p1|reg2|Q\(2)) # (\p1|mux0|y[1]~4_combout\) ) ) ) # ( !\p1|reg3|Q\(2) & ( \p1|mux0|y[1]~3_combout\ & ( (!\p1|mux0|y[1]~4_combout\ & \p1|reg2|Q\(2)) ) ) ) # ( \p1|reg3|Q\(2) & 
-- ( !\p1|mux0|y[1]~3_combout\ & ( (!\p1|mux0|y[1]~4_combout\ & ((\p1|reg1|Q\(2)))) # (\p1|mux0|y[1]~4_combout\ & (\p1|mux0|y[2]~17_combout\)) ) ) ) # ( !\p1|reg3|Q\(2) & ( !\p1|mux0|y[1]~3_combout\ & ( (!\p1|mux0|y[1]~4_combout\ & ((\p1|reg1|Q\(2)))) # 
-- (\p1|mux0|y[1]~4_combout\ & (\p1|mux0|y[2]~17_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100001010000010100101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[1]~4_combout\,
	datab => \p1|mux0|ALT_INV_y[2]~17_combout\,
	datac => \p1|reg2|ALT_INV_Q\(2),
	datad => \p1|reg1|ALT_INV_Q\(2),
	datae => \p1|reg3|ALT_INV_Q\(2),
	dataf => \p1|mux0|ALT_INV_y[1]~3_combout\,
	combout => \p1|mux0|y[2]~18_combout\);

-- Location: LABCELL_X5_Y20_N3
\p1|regA|Q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|regA|Q[2]~feeder_combout\ = \p1|mux0|y[2]~19_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|mux0|ALT_INV_y[2]~19_combout\,
	combout => \p1|regA|Q[2]~feeder_combout\);

-- Location: FF_X5_Y20_N4
\p1|regA|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	d => \p1|regA|Q[2]~feeder_combout\,
	ena => \p1|fsm|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regA|Q\(2));

-- Location: LABCELL_X6_Y21_N39
\p1|addsub0|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~9_sumout\ = SUM(( !\p1|fsm|AddSub~combout\ $ (!\p1|mux0|y[2]~19_combout\) ) + ( \p1|regA|Q\(2) ) + ( \p1|addsub0|Add0~6\ ))
-- \p1|addsub0|Add0~10\ = CARRY(( !\p1|fsm|AddSub~combout\ $ (!\p1|mux0|y[2]~19_combout\) ) + ( \p1|regA|Q\(2) ) + ( \p1|addsub0|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|regA|ALT_INV_Q\(2),
	datac => \p1|fsm|ALT_INV_AddSub~combout\,
	datad => \p1|mux0|ALT_INV_y[2]~19_combout\,
	cin => \p1|addsub0|Add0~6\,
	sumout => \p1|addsub0|Add0~9_sumout\,
	cout => \p1|addsub0|Add0~10\);

-- Location: FF_X6_Y21_N40
\p1|regG|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	d => \p1|addsub0|Add0~9_sumout\,
	sclr => \ALT_INV_key0~input_o\,
	ena => \p1|fsm|y_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regG|Q\(2));

-- Location: FF_X5_Y21_N56
\p1|reg0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	d => \p1|mux0|y[2]~19_combout\,
	ena => \p1|fsm|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(2));

-- Location: LABCELL_X5_Y21_N54
\p1|mux0|y[2]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[2]~19_combout\ = ( \p1|reg0|Q\(2) & ( \p1|mux0|y[1]~12_combout\ & ( (!\p1|mux0|y[1]~11_combout\) # (\p1|mux0|y[2]~18_combout\) ) ) ) # ( !\p1|reg0|Q\(2) & ( \p1|mux0|y[1]~12_combout\ & ( (\p1|mux0|y[1]~11_combout\ & \p1|mux0|y[2]~18_combout\) ) 
-- ) ) # ( \p1|reg0|Q\(2) & ( !\p1|mux0|y[1]~12_combout\ & ( (!\p1|mux0|y[1]~11_combout\ & (\p1|regG|Q\(2))) # (\p1|mux0|y[1]~11_combout\ & ((\sw[2]~input_o\))) ) ) ) # ( !\p1|reg0|Q\(2) & ( !\p1|mux0|y[1]~12_combout\ & ( (!\p1|mux0|y[1]~11_combout\ & 
-- (\p1|regG|Q\(2))) # (\p1|mux0|y[1]~11_combout\ & ((\sw[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100010001000100011011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[1]~11_combout\,
	datab => \p1|mux0|ALT_INV_y[2]~18_combout\,
	datac => \p1|regG|ALT_INV_Q\(2),
	datad => \ALT_INV_sw[2]~input_o\,
	datae => \p1|reg0|ALT_INV_Q\(2),
	dataf => \p1|mux0|ALT_INV_y[1]~12_combout\,
	combout => \p1|mux0|y[2]~19_combout\);

-- Location: FF_X4_Y21_N22
\p1|reg7|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[3]~22_combout\,
	sload => VCC,
	ena => \p1|fsm|Selector10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg7|Q\(3));

-- Location: LABCELL_X5_Y20_N24
\p1|reg4|Q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg4|Q[3]~feeder_combout\ = \p1|mux0|y[3]~22_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|mux0|ALT_INV_y[3]~22_combout\,
	combout => \p1|reg4|Q[3]~feeder_combout\);

-- Location: FF_X5_Y20_N25
\p1|reg4|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	d => \p1|reg4|Q[3]~feeder_combout\,
	ena => \p1|fsm|Selector7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg4|Q\(3));

-- Location: FF_X5_Y21_N14
\p1|reg6|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[3]~22_combout\,
	sload => VCC,
	ena => \p1|fsm|Selector9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(3));

-- Location: LABCELL_X2_Y21_N48
\p1|reg5|Q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg5|Q[3]~feeder_combout\ = \p1|mux0|y[3]~22_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|mux0|ALT_INV_y[3]~22_combout\,
	combout => \p1|reg5|Q[3]~feeder_combout\);

-- Location: FF_X2_Y21_N49
\p1|reg5|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	d => \p1|reg5|Q[3]~feeder_combout\,
	ena => \p1|fsm|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(3));

-- Location: LABCELL_X5_Y21_N12
\p1|mux0|y[3]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[3]~20_combout\ = ( \p1|reg6|Q\(3) & ( \p1|reg5|Q\(3) & ( ((!\p1|mux0|y[1]~1_combout\ & ((\p1|reg4|Q\(3)))) # (\p1|mux0|y[1]~1_combout\ & (\p1|reg7|Q\(3)))) # (\p1|mux0|y[1]~0_combout\) ) ) ) # ( !\p1|reg6|Q\(3) & ( \p1|reg5|Q\(3) & ( 
-- (!\p1|mux0|y[1]~0_combout\ & ((!\p1|mux0|y[1]~1_combout\ & ((\p1|reg4|Q\(3)))) # (\p1|mux0|y[1]~1_combout\ & (\p1|reg7|Q\(3))))) # (\p1|mux0|y[1]~0_combout\ & (((!\p1|mux0|y[1]~1_combout\)))) ) ) ) # ( \p1|reg6|Q\(3) & ( !\p1|reg5|Q\(3) & ( 
-- (!\p1|mux0|y[1]~0_combout\ & ((!\p1|mux0|y[1]~1_combout\ & ((\p1|reg4|Q\(3)))) # (\p1|mux0|y[1]~1_combout\ & (\p1|reg7|Q\(3))))) # (\p1|mux0|y[1]~0_combout\ & (((\p1|mux0|y[1]~1_combout\)))) ) ) ) # ( !\p1|reg6|Q\(3) & ( !\p1|reg5|Q\(3) & ( 
-- (!\p1|mux0|y[1]~0_combout\ & ((!\p1|mux0|y[1]~1_combout\ & ((\p1|reg4|Q\(3)))) # (\p1|mux0|y[1]~1_combout\ & (\p1|reg7|Q\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100000011000111011100111111010001000011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg7|ALT_INV_Q\(3),
	datab => \p1|mux0|ALT_INV_y[1]~0_combout\,
	datac => \p1|reg4|ALT_INV_Q\(3),
	datad => \p1|mux0|ALT_INV_y[1]~1_combout\,
	datae => \p1|reg6|ALT_INV_Q\(3),
	dataf => \p1|reg5|ALT_INV_Q\(3),
	combout => \p1|mux0|y[3]~20_combout\);

-- Location: LABCELL_X7_Y21_N39
\p1|reg1|Q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg1|Q[3]~feeder_combout\ = \p1|mux0|y[3]~22_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[3]~22_combout\,
	combout => \p1|reg1|Q[3]~feeder_combout\);

-- Location: FF_X7_Y21_N40
\p1|reg1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	d => \p1|reg1|Q[3]~feeder_combout\,
	ena => \p1|fsm|Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(3));

-- Location: LABCELL_X7_Y21_N42
\p1|reg2|Q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg2|Q[3]~feeder_combout\ = \p1|mux0|y[3]~22_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|mux0|ALT_INV_y[3]~22_combout\,
	combout => \p1|reg2|Q[3]~feeder_combout\);

-- Location: FF_X7_Y21_N43
\p1|reg2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	d => \p1|reg2|Q[3]~feeder_combout\,
	ena => \p1|fsm|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q\(3));

-- Location: FF_X5_Y21_N2
\p1|reg3|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[3]~22_combout\,
	sload => VCC,
	ena => \p1|fsm|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(3));

-- Location: LABCELL_X5_Y21_N0
\p1|mux0|y[3]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[3]~21_combout\ = ( \p1|reg3|Q\(3) & ( \p1|mux0|y[1]~3_combout\ & ( (\p1|reg2|Q\(3)) # (\p1|mux0|y[1]~4_combout\) ) ) ) # ( !\p1|reg3|Q\(3) & ( \p1|mux0|y[1]~3_combout\ & ( (!\p1|mux0|y[1]~4_combout\ & \p1|reg2|Q\(3)) ) ) ) # ( \p1|reg3|Q\(3) & 
-- ( !\p1|mux0|y[1]~3_combout\ & ( (!\p1|mux0|y[1]~4_combout\ & ((\p1|reg1|Q\(3)))) # (\p1|mux0|y[1]~4_combout\ & (\p1|mux0|y[3]~20_combout\)) ) ) ) # ( !\p1|reg3|Q\(3) & ( !\p1|mux0|y[1]~3_combout\ & ( (!\p1|mux0|y[1]~4_combout\ & ((\p1|reg1|Q\(3)))) # 
-- (\p1|mux0|y[1]~4_combout\ & (\p1|mux0|y[3]~20_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100000000101010100101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[1]~4_combout\,
	datab => \p1|mux0|ALT_INV_y[3]~20_combout\,
	datac => \p1|reg1|ALT_INV_Q\(3),
	datad => \p1|reg2|ALT_INV_Q\(3),
	datae => \p1|reg3|ALT_INV_Q\(3),
	dataf => \p1|mux0|ALT_INV_y[1]~3_combout\,
	combout => \p1|mux0|y[3]~21_combout\);

-- Location: LABCELL_X5_Y20_N12
\p1|regA|Q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|regA|Q[3]~feeder_combout\ = \p1|mux0|y[3]~22_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|mux0|ALT_INV_y[3]~22_combout\,
	combout => \p1|regA|Q[3]~feeder_combout\);

-- Location: FF_X5_Y20_N13
\p1|regA|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	d => \p1|regA|Q[3]~feeder_combout\,
	ena => \p1|fsm|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regA|Q\(3));

-- Location: LABCELL_X6_Y21_N42
\p1|addsub0|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~13_sumout\ = SUM(( \p1|regA|Q\(3) ) + ( !\p1|mux0|y[3]~22_combout\ $ (!\p1|fsm|AddSub~combout\) ) + ( \p1|addsub0|Add0~10\ ))
-- \p1|addsub0|Add0~14\ = CARRY(( \p1|regA|Q\(3) ) + ( !\p1|mux0|y[3]~22_combout\ $ (!\p1|fsm|AddSub~combout\) ) + ( \p1|addsub0|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101001011010010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[3]~22_combout\,
	datac => \p1|fsm|ALT_INV_AddSub~combout\,
	datad => \p1|regA|ALT_INV_Q\(3),
	cin => \p1|addsub0|Add0~10\,
	sumout => \p1|addsub0|Add0~13_sumout\,
	cout => \p1|addsub0|Add0~14\);

-- Location: FF_X6_Y21_N43
\p1|regG|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	d => \p1|addsub0|Add0~13_sumout\,
	sclr => \ALT_INV_key0~input_o\,
	ena => \p1|fsm|y_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regG|Q\(3));

-- Location: FF_X6_Y21_N14
\p1|reg0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	d => \p1|mux0|y[3]~22_combout\,
	ena => \p1|fsm|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(3));

-- Location: LABCELL_X6_Y21_N12
\p1|mux0|y[3]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[3]~22_combout\ = ( \p1|reg0|Q\(3) & ( \p1|mux0|y[1]~12_combout\ & ( (!\p1|mux0|y[1]~11_combout\) # (\p1|mux0|y[3]~21_combout\) ) ) ) # ( !\p1|reg0|Q\(3) & ( \p1|mux0|y[1]~12_combout\ & ( (\p1|mux0|y[1]~11_combout\ & \p1|mux0|y[3]~21_combout\) ) 
-- ) ) # ( \p1|reg0|Q\(3) & ( !\p1|mux0|y[1]~12_combout\ & ( (!\p1|mux0|y[1]~11_combout\ & (\p1|regG|Q\(3))) # (\p1|mux0|y[1]~11_combout\ & ((\sw[3]~input_o\))) ) ) ) # ( !\p1|reg0|Q\(3) & ( !\p1|mux0|y[1]~12_combout\ & ( (!\p1|mux0|y[1]~11_combout\ & 
-- (\p1|regG|Q\(3))) # (\p1|mux0|y[1]~11_combout\ & ((\sw[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100010001000100011011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[1]~11_combout\,
	datab => \p1|mux0|ALT_INV_y[3]~21_combout\,
	datac => \p1|regG|ALT_INV_Q\(3),
	datad => \ALT_INV_sw[3]~input_o\,
	datae => \p1|reg0|ALT_INV_Q\(3),
	dataf => \p1|mux0|ALT_INV_y[1]~12_combout\,
	combout => \p1|mux0|y[3]~22_combout\);

-- Location: FF_X4_Y21_N44
\p1|reg6|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[4]~25_combout\,
	sload => VCC,
	ena => \p1|fsm|Selector9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(4));

-- Location: MLABCELL_X4_Y21_N54
\p1|reg7|Q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg7|Q[4]~feeder_combout\ = \p1|mux0|y[4]~25_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|mux0|ALT_INV_y[4]~25_combout\,
	combout => \p1|reg7|Q[4]~feeder_combout\);

-- Location: FF_X4_Y21_N56
\p1|reg7|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	d => \p1|reg7|Q[4]~feeder_combout\,
	ena => \p1|fsm|Selector10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg7|Q\(4));

-- Location: FF_X2_Y21_N7
\p1|reg5|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[4]~25_combout\,
	sload => VCC,
	ena => \p1|fsm|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(4));

-- Location: FF_X5_Y20_N29
\p1|reg4|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[4]~25_combout\,
	sload => VCC,
	ena => \p1|fsm|Selector7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg4|Q\(4));

-- Location: MLABCELL_X4_Y21_N45
\p1|mux0|y[4]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[4]~23_combout\ = ( \p1|reg5|Q\(4) & ( \p1|reg4|Q\(4) & ( (!\p1|mux0|y[1]~1_combout\) # ((!\p1|mux0|y[1]~0_combout\ & ((\p1|reg7|Q\(4)))) # (\p1|mux0|y[1]~0_combout\ & (\p1|reg6|Q\(4)))) ) ) ) # ( !\p1|reg5|Q\(4) & ( \p1|reg4|Q\(4) & ( 
-- (!\p1|mux0|y[1]~1_combout\ & (!\p1|mux0|y[1]~0_combout\)) # (\p1|mux0|y[1]~1_combout\ & ((!\p1|mux0|y[1]~0_combout\ & ((\p1|reg7|Q\(4)))) # (\p1|mux0|y[1]~0_combout\ & (\p1|reg6|Q\(4))))) ) ) ) # ( \p1|reg5|Q\(4) & ( !\p1|reg4|Q\(4) & ( 
-- (!\p1|mux0|y[1]~1_combout\ & (\p1|mux0|y[1]~0_combout\)) # (\p1|mux0|y[1]~1_combout\ & ((!\p1|mux0|y[1]~0_combout\ & ((\p1|reg7|Q\(4)))) # (\p1|mux0|y[1]~0_combout\ & (\p1|reg6|Q\(4))))) ) ) ) # ( !\p1|reg5|Q\(4) & ( !\p1|reg4|Q\(4) & ( 
-- (\p1|mux0|y[1]~1_combout\ & ((!\p1|mux0|y[1]~0_combout\ & ((\p1|reg7|Q\(4)))) # (\p1|mux0|y[1]~0_combout\ & (\p1|reg6|Q\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101001000110110011110001001110011011010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[1]~1_combout\,
	datab => \p1|mux0|ALT_INV_y[1]~0_combout\,
	datac => \p1|reg6|ALT_INV_Q\(4),
	datad => \p1|reg7|ALT_INV_Q\(4),
	datae => \p1|reg5|ALT_INV_Q\(4),
	dataf => \p1|reg4|ALT_INV_Q\(4),
	combout => \p1|mux0|y[4]~23_combout\);

-- Location: LABCELL_X7_Y21_N45
\p1|reg2|Q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg2|Q[4]~feeder_combout\ = \p1|mux0|y[4]~25_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[4]~25_combout\,
	combout => \p1|reg2|Q[4]~feeder_combout\);

-- Location: FF_X7_Y21_N46
\p1|reg2|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	d => \p1|reg2|Q[4]~feeder_combout\,
	ena => \p1|fsm|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q\(4));

-- Location: FF_X7_Y21_N8
\p1|reg1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[4]~25_combout\,
	sload => VCC,
	ena => \p1|fsm|Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(4));

-- Location: FF_X7_Y21_N26
\p1|reg3|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[4]~25_combout\,
	sload => VCC,
	ena => \p1|fsm|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(4));

-- Location: LABCELL_X7_Y21_N24
\p1|mux0|y[4]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[4]~24_combout\ = ( \p1|reg3|Q\(4) & ( \p1|mux0|y[1]~3_combout\ & ( (\p1|reg2|Q\(4)) # (\p1|mux0|y[1]~4_combout\) ) ) ) # ( !\p1|reg3|Q\(4) & ( \p1|mux0|y[1]~3_combout\ & ( (!\p1|mux0|y[1]~4_combout\ & \p1|reg2|Q\(4)) ) ) ) # ( \p1|reg3|Q\(4) & 
-- ( !\p1|mux0|y[1]~3_combout\ & ( (!\p1|mux0|y[1]~4_combout\ & ((\p1|reg1|Q\(4)))) # (\p1|mux0|y[1]~4_combout\ & (\p1|mux0|y[4]~23_combout\)) ) ) ) # ( !\p1|reg3|Q\(4) & ( !\p1|mux0|y[1]~3_combout\ & ( (!\p1|mux0|y[1]~4_combout\ & ((\p1|reg1|Q\(4)))) # 
-- (\p1|mux0|y[1]~4_combout\ & (\p1|mux0|y[4]~23_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[4]~23_combout\,
	datab => \p1|mux0|ALT_INV_y[1]~4_combout\,
	datac => \p1|reg2|ALT_INV_Q\(4),
	datad => \p1|reg1|ALT_INV_Q\(4),
	datae => \p1|reg3|ALT_INV_Q\(4),
	dataf => \p1|mux0|ALT_INV_y[1]~3_combout\,
	combout => \p1|mux0|y[4]~24_combout\);

-- Location: FF_X5_Y20_N17
\p1|regA|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[4]~25_combout\,
	sload => VCC,
	ena => \p1|fsm|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regA|Q\(4));

-- Location: LABCELL_X6_Y21_N45
\p1|addsub0|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~17_sumout\ = SUM(( !\p1|mux0|y[4]~25_combout\ $ (!\p1|fsm|AddSub~combout\) ) + ( \p1|regA|Q\(4) ) + ( \p1|addsub0|Add0~14\ ))
-- \p1|addsub0|Add0~18\ = CARRY(( !\p1|mux0|y[4]~25_combout\ $ (!\p1|fsm|AddSub~combout\) ) + ( \p1|regA|Q\(4) ) + ( \p1|addsub0|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|mux0|ALT_INV_y[4]~25_combout\,
	datac => \p1|fsm|ALT_INV_AddSub~combout\,
	dataf => \p1|regA|ALT_INV_Q\(4),
	cin => \p1|addsub0|Add0~14\,
	sumout => \p1|addsub0|Add0~17_sumout\,
	cout => \p1|addsub0|Add0~18\);

-- Location: FF_X6_Y21_N46
\p1|regG|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	d => \p1|addsub0|Add0~17_sumout\,
	sclr => \ALT_INV_key0~input_o\,
	ena => \p1|fsm|y_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regG|Q\(4));

-- Location: FF_X6_Y21_N8
\p1|reg0|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	d => \p1|mux0|y[4]~25_combout\,
	ena => \p1|fsm|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(4));

-- Location: LABCELL_X6_Y21_N6
\p1|mux0|y[4]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[4]~25_combout\ = ( \p1|reg0|Q\(4) & ( \p1|mux0|y[1]~12_combout\ & ( (!\p1|mux0|y[1]~11_combout\) # (\p1|mux0|y[4]~24_combout\) ) ) ) # ( !\p1|reg0|Q\(4) & ( \p1|mux0|y[1]~12_combout\ & ( (\p1|mux0|y[1]~11_combout\ & \p1|mux0|y[4]~24_combout\) ) 
-- ) ) # ( \p1|reg0|Q\(4) & ( !\p1|mux0|y[1]~12_combout\ & ( (!\p1|mux0|y[1]~11_combout\ & ((\p1|regG|Q\(4)))) # (\p1|mux0|y[1]~11_combout\ & (\sw[4]~input_o\)) ) ) ) # ( !\p1|reg0|Q\(4) & ( !\p1|mux0|y[1]~12_combout\ & ( (!\p1|mux0|y[1]~11_combout\ & 
-- ((\p1|regG|Q\(4)))) # (\p1|mux0|y[1]~11_combout\ & (\sw[4]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100010001000100011011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[1]~11_combout\,
	datab => \p1|mux0|ALT_INV_y[4]~24_combout\,
	datac => \ALT_INV_sw[4]~input_o\,
	datad => \p1|regG|ALT_INV_Q\(4),
	datae => \p1|reg0|ALT_INV_Q\(4),
	dataf => \p1|mux0|ALT_INV_y[1]~12_combout\,
	combout => \p1|mux0|y[4]~25_combout\);

-- Location: FF_X5_Y20_N55
\p1|regA|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[5]~28_combout\,
	sload => VCC,
	ena => \p1|fsm|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regA|Q\(5));

-- Location: LABCELL_X6_Y21_N48
\p1|addsub0|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~21_sumout\ = SUM(( !\p1|fsm|AddSub~combout\ $ (!\p1|mux0|y[5]~28_combout\) ) + ( \p1|regA|Q\(5) ) + ( \p1|addsub0|Add0~18\ ))
-- \p1|addsub0|Add0~22\ = CARRY(( !\p1|fsm|AddSub~combout\ $ (!\p1|mux0|y[5]~28_combout\) ) + ( \p1|regA|Q\(5) ) + ( \p1|addsub0|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|fsm|ALT_INV_AddSub~combout\,
	datac => \p1|regA|ALT_INV_Q\(5),
	datad => \p1|mux0|ALT_INV_y[5]~28_combout\,
	cin => \p1|addsub0|Add0~18\,
	sumout => \p1|addsub0|Add0~21_sumout\,
	cout => \p1|addsub0|Add0~22\);

-- Location: FF_X6_Y21_N50
\p1|regG|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	d => \p1|addsub0|Add0~21_sumout\,
	sclr => \ALT_INV_key0~input_o\,
	ena => \p1|fsm|y_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regG|Q\(5));

-- Location: MLABCELL_X4_Y21_N57
\p1|reg7|Q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg7|Q[5]~feeder_combout\ = \p1|mux0|y[5]~28_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|mux0|ALT_INV_y[5]~28_combout\,
	combout => \p1|reg7|Q[5]~feeder_combout\);

-- Location: FF_X4_Y21_N59
\p1|reg7|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	d => \p1|reg7|Q[5]~feeder_combout\,
	ena => \p1|fsm|Selector10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg7|Q\(5));

-- Location: FF_X4_Y21_N2
\p1|reg6|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[5]~28_combout\,
	sload => VCC,
	ena => \p1|fsm|Selector9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(5));

-- Location: LABCELL_X2_Y21_N12
\p1|reg5|Q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg5|Q[5]~feeder_combout\ = ( \p1|mux0|y[5]~28_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[5]~28_combout\,
	combout => \p1|reg5|Q[5]~feeder_combout\);

-- Location: FF_X2_Y21_N13
\p1|reg5|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	d => \p1|reg5|Q[5]~feeder_combout\,
	ena => \p1|fsm|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(5));

-- Location: LABCELL_X5_Y20_N48
\p1|reg4|Q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg4|Q[5]~feeder_combout\ = \p1|mux0|y[5]~28_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|mux0|ALT_INV_y[5]~28_combout\,
	combout => \p1|reg4|Q[5]~feeder_combout\);

-- Location: FF_X5_Y20_N49
\p1|reg4|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	d => \p1|reg4|Q[5]~feeder_combout\,
	ena => \p1|fsm|Selector7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg4|Q\(5));

-- Location: MLABCELL_X4_Y21_N3
\p1|mux0|y[5]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[5]~26_combout\ = ( \p1|reg5|Q\(5) & ( \p1|reg4|Q\(5) & ( (!\p1|mux0|y[1]~1_combout\) # ((!\p1|mux0|y[1]~0_combout\ & (\p1|reg7|Q\(5))) # (\p1|mux0|y[1]~0_combout\ & ((\p1|reg6|Q\(5))))) ) ) ) # ( !\p1|reg5|Q\(5) & ( \p1|reg4|Q\(5) & ( 
-- (!\p1|mux0|y[1]~1_combout\ & (!\p1|mux0|y[1]~0_combout\)) # (\p1|mux0|y[1]~1_combout\ & ((!\p1|mux0|y[1]~0_combout\ & (\p1|reg7|Q\(5))) # (\p1|mux0|y[1]~0_combout\ & ((\p1|reg6|Q\(5)))))) ) ) ) # ( \p1|reg5|Q\(5) & ( !\p1|reg4|Q\(5) & ( 
-- (!\p1|mux0|y[1]~1_combout\ & (\p1|mux0|y[1]~0_combout\)) # (\p1|mux0|y[1]~1_combout\ & ((!\p1|mux0|y[1]~0_combout\ & (\p1|reg7|Q\(5))) # (\p1|mux0|y[1]~0_combout\ & ((\p1|reg6|Q\(5)))))) ) ) ) # ( !\p1|reg5|Q\(5) & ( !\p1|reg4|Q\(5) & ( 
-- (\p1|mux0|y[1]~1_combout\ & ((!\p1|mux0|y[1]~0_combout\ & (\p1|reg7|Q\(5))) # (\p1|mux0|y[1]~0_combout\ & ((\p1|reg6|Q\(5)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101001001100011011110001100100111011010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[1]~1_combout\,
	datab => \p1|mux0|ALT_INV_y[1]~0_combout\,
	datac => \p1|reg7|ALT_INV_Q\(5),
	datad => \p1|reg6|ALT_INV_Q\(5),
	datae => \p1|reg5|ALT_INV_Q\(5),
	dataf => \p1|reg4|ALT_INV_Q\(5),
	combout => \p1|mux0|y[5]~26_combout\);

-- Location: LABCELL_X7_Y21_N18
\p1|reg2|Q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg2|Q[5]~feeder_combout\ = \p1|mux0|y[5]~28_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[5]~28_combout\,
	combout => \p1|reg2|Q[5]~feeder_combout\);

-- Location: FF_X7_Y21_N20
\p1|reg2|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	d => \p1|reg2|Q[5]~feeder_combout\,
	ena => \p1|fsm|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q\(5));

-- Location: LABCELL_X7_Y21_N9
\p1|reg1|Q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg1|Q[5]~feeder_combout\ = \p1|mux0|y[5]~28_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[5]~28_combout\,
	combout => \p1|reg1|Q[5]~feeder_combout\);

-- Location: FF_X7_Y21_N11
\p1|reg1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	d => \p1|reg1|Q[5]~feeder_combout\,
	ena => \p1|fsm|Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(5));

-- Location: FF_X7_Y21_N50
\p1|reg3|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[5]~28_combout\,
	sload => VCC,
	ena => \p1|fsm|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(5));

-- Location: LABCELL_X7_Y21_N48
\p1|mux0|y[5]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[5]~27_combout\ = ( \p1|reg3|Q\(5) & ( \p1|mux0|y[1]~3_combout\ & ( (\p1|reg2|Q\(5)) # (\p1|mux0|y[1]~4_combout\) ) ) ) # ( !\p1|reg3|Q\(5) & ( \p1|mux0|y[1]~3_combout\ & ( (!\p1|mux0|y[1]~4_combout\ & \p1|reg2|Q\(5)) ) ) ) # ( \p1|reg3|Q\(5) & 
-- ( !\p1|mux0|y[1]~3_combout\ & ( (!\p1|mux0|y[1]~4_combout\ & ((\p1|reg1|Q\(5)))) # (\p1|mux0|y[1]~4_combout\ & (\p1|mux0|y[5]~26_combout\)) ) ) ) # ( !\p1|reg3|Q\(5) & ( !\p1|mux0|y[1]~3_combout\ & ( (!\p1|mux0|y[1]~4_combout\ & ((\p1|reg1|Q\(5)))) # 
-- (\p1|mux0|y[1]~4_combout\ & (\p1|mux0|y[5]~26_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[5]~26_combout\,
	datab => \p1|mux0|ALT_INV_y[1]~4_combout\,
	datac => \p1|reg2|ALT_INV_Q\(5),
	datad => \p1|reg1|ALT_INV_Q\(5),
	datae => \p1|reg3|ALT_INV_Q\(5),
	dataf => \p1|mux0|ALT_INV_y[1]~3_combout\,
	combout => \p1|mux0|y[5]~27_combout\);

-- Location: FF_X6_Y21_N23
\p1|reg0|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	d => \p1|mux0|y[5]~28_combout\,
	ena => \p1|fsm|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(5));

-- Location: LABCELL_X6_Y21_N21
\p1|mux0|y[5]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[5]~28_combout\ = ( \p1|reg0|Q\(5) & ( \p1|mux0|y[1]~12_combout\ & ( (!\p1|mux0|y[1]~11_combout\) # (\p1|mux0|y[5]~27_combout\) ) ) ) # ( !\p1|reg0|Q\(5) & ( \p1|mux0|y[1]~12_combout\ & ( (\p1|mux0|y[5]~27_combout\ & \p1|mux0|y[1]~11_combout\) ) 
-- ) ) # ( \p1|reg0|Q\(5) & ( !\p1|mux0|y[1]~12_combout\ & ( (!\p1|mux0|y[1]~11_combout\ & (\p1|regG|Q\(5))) # (\p1|mux0|y[1]~11_combout\ & ((\sw[5]~input_o\))) ) ) ) # ( !\p1|reg0|Q\(5) & ( !\p1|mux0|y[1]~12_combout\ & ( (!\p1|mux0|y[1]~11_combout\ & 
-- (\p1|regG|Q\(5))) # (\p1|mux0|y[1]~11_combout\ & ((\sw[5]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|regG|ALT_INV_Q\(5),
	datab => \p1|mux0|ALT_INV_y[5]~27_combout\,
	datac => \ALT_INV_sw[5]~input_o\,
	datad => \p1|mux0|ALT_INV_y[1]~11_combout\,
	datae => \p1|reg0|ALT_INV_Q\(5),
	dataf => \p1|mux0|ALT_INV_y[1]~12_combout\,
	combout => \p1|mux0|y[5]~28_combout\);

-- Location: MLABCELL_X4_Y21_N6
\p1|reg7|Q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg7|Q[6]~feeder_combout\ = ( \p1|mux0|y[6]~31_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[6]~31_combout\,
	combout => \p1|reg7|Q[6]~feeder_combout\);

-- Location: FF_X4_Y21_N7
\p1|reg7|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	d => \p1|reg7|Q[6]~feeder_combout\,
	ena => \p1|fsm|Selector10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg7|Q\(6));

-- Location: FF_X4_Y21_N38
\p1|reg6|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[6]~31_combout\,
	sload => VCC,
	ena => \p1|fsm|Selector9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(6));

-- Location: FF_X5_Y20_N50
\p1|reg4|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[6]~31_combout\,
	sload => VCC,
	ena => \p1|fsm|Selector7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg4|Q\(6));

-- Location: FF_X2_Y21_N46
\p1|reg5|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[6]~31_combout\,
	sload => VCC,
	ena => \p1|fsm|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(6));

-- Location: MLABCELL_X4_Y21_N18
\p1|mux0|y[6]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[6]~29_combout\ = ( \p1|reg4|Q\(6) & ( \p1|reg5|Q\(6) & ( (!\p1|mux0|y[1]~1_combout\) # ((!\p1|mux0|y[1]~0_combout\ & (\p1|reg7|Q\(6))) # (\p1|mux0|y[1]~0_combout\ & ((\p1|reg6|Q\(6))))) ) ) ) # ( !\p1|reg4|Q\(6) & ( \p1|reg5|Q\(6) & ( 
-- (!\p1|mux0|y[1]~1_combout\ & (((\p1|mux0|y[1]~0_combout\)))) # (\p1|mux0|y[1]~1_combout\ & ((!\p1|mux0|y[1]~0_combout\ & (\p1|reg7|Q\(6))) # (\p1|mux0|y[1]~0_combout\ & ((\p1|reg6|Q\(6)))))) ) ) ) # ( \p1|reg4|Q\(6) & ( !\p1|reg5|Q\(6) & ( 
-- (!\p1|mux0|y[1]~1_combout\ & (((!\p1|mux0|y[1]~0_combout\)))) # (\p1|mux0|y[1]~1_combout\ & ((!\p1|mux0|y[1]~0_combout\ & (\p1|reg7|Q\(6))) # (\p1|mux0|y[1]~0_combout\ & ((\p1|reg6|Q\(6)))))) ) ) ) # ( !\p1|reg4|Q\(6) & ( !\p1|reg5|Q\(6) & ( 
-- (\p1|mux0|y[1]~1_combout\ & ((!\p1|mux0|y[1]~0_combout\ & (\p1|reg7|Q\(6))) # (\p1|mux0|y[1]~0_combout\ & ((\p1|reg6|Q\(6)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011110111010000001100010001110011111101110111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg7|ALT_INV_Q\(6),
	datab => \p1|mux0|ALT_INV_y[1]~1_combout\,
	datac => \p1|reg6|ALT_INV_Q\(6),
	datad => \p1|mux0|ALT_INV_y[1]~0_combout\,
	datae => \p1|reg4|ALT_INV_Q\(6),
	dataf => \p1|reg5|ALT_INV_Q\(6),
	combout => \p1|mux0|y[6]~29_combout\);

-- Location: LABCELL_X7_Y21_N21
\p1|reg2|Q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg2|Q[6]~feeder_combout\ = \p1|mux0|y[6]~31_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|mux0|ALT_INV_y[6]~31_combout\,
	combout => \p1|reg2|Q[6]~feeder_combout\);

-- Location: FF_X7_Y21_N23
\p1|reg2|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	d => \p1|reg2|Q[6]~feeder_combout\,
	ena => \p1|fsm|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q\(6));

-- Location: FF_X7_Y21_N32
\p1|reg1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[6]~31_combout\,
	sload => VCC,
	ena => \p1|fsm|Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(6));

-- Location: FF_X7_Y21_N14
\p1|reg3|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[6]~31_combout\,
	sload => VCC,
	ena => \p1|fsm|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(6));

-- Location: LABCELL_X7_Y21_N12
\p1|mux0|y[6]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[6]~30_combout\ = ( \p1|reg3|Q\(6) & ( \p1|mux0|y[1]~3_combout\ & ( (\p1|reg2|Q\(6)) # (\p1|mux0|y[1]~4_combout\) ) ) ) # ( !\p1|reg3|Q\(6) & ( \p1|mux0|y[1]~3_combout\ & ( (!\p1|mux0|y[1]~4_combout\ & \p1|reg2|Q\(6)) ) ) ) # ( \p1|reg3|Q\(6) & 
-- ( !\p1|mux0|y[1]~3_combout\ & ( (!\p1|mux0|y[1]~4_combout\ & ((\p1|reg1|Q\(6)))) # (\p1|mux0|y[1]~4_combout\ & (\p1|mux0|y[6]~29_combout\)) ) ) ) # ( !\p1|reg3|Q\(6) & ( !\p1|mux0|y[1]~3_combout\ & ( (!\p1|mux0|y[1]~4_combout\ & ((\p1|reg1|Q\(6)))) # 
-- (\p1|mux0|y[1]~4_combout\ & (\p1|mux0|y[6]~29_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100001010000010100101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[1]~4_combout\,
	datab => \p1|mux0|ALT_INV_y[6]~29_combout\,
	datac => \p1|reg2|ALT_INV_Q\(6),
	datad => \p1|reg1|ALT_INV_Q\(6),
	datae => \p1|reg3|ALT_INV_Q\(6),
	dataf => \p1|mux0|ALT_INV_y[1]~3_combout\,
	combout => \p1|mux0|y[6]~30_combout\);

-- Location: FF_X6_Y21_N2
\p1|reg0|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	d => \p1|mux0|y[6]~31_combout\,
	ena => \p1|fsm|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(6));

-- Location: FF_X5_Y20_N31
\p1|regA|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[6]~31_combout\,
	sload => VCC,
	ena => \p1|fsm|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regA|Q\(6));

-- Location: LABCELL_X6_Y21_N51
\p1|addsub0|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~25_sumout\ = SUM(( \p1|regA|Q\(6) ) + ( !\p1|mux0|y[6]~31_combout\ $ (!\p1|fsm|AddSub~combout\) ) + ( \p1|addsub0|Add0~22\ ))
-- \p1|addsub0|Add0~26\ = CARRY(( \p1|regA|Q\(6) ) + ( !\p1|mux0|y[6]~31_combout\ $ (!\p1|fsm|AddSub~combout\) ) + ( \p1|addsub0|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100110011001100100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[6]~31_combout\,
	datab => \p1|fsm|ALT_INV_AddSub~combout\,
	datad => \p1|regA|ALT_INV_Q\(6),
	cin => \p1|addsub0|Add0~22\,
	sumout => \p1|addsub0|Add0~25_sumout\,
	cout => \p1|addsub0|Add0~26\);

-- Location: FF_X6_Y21_N52
\p1|regG|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	d => \p1|addsub0|Add0~25_sumout\,
	sclr => \ALT_INV_key0~input_o\,
	ena => \p1|fsm|y_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regG|Q\(6));

-- Location: LABCELL_X6_Y21_N0
\p1|mux0|y[6]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[6]~31_combout\ = ( \p1|reg0|Q\(6) & ( \p1|regG|Q\(6) & ( (!\p1|mux0|y[1]~11_combout\) # ((!\p1|mux0|y[1]~12_combout\ & (\sw[6]~input_o\)) # (\p1|mux0|y[1]~12_combout\ & ((\p1|mux0|y[6]~30_combout\)))) ) ) ) # ( !\p1|reg0|Q\(6) & ( 
-- \p1|regG|Q\(6) & ( (!\p1|mux0|y[1]~12_combout\ & (((!\p1|mux0|y[1]~11_combout\)) # (\sw[6]~input_o\))) # (\p1|mux0|y[1]~12_combout\ & (((\p1|mux0|y[6]~30_combout\ & \p1|mux0|y[1]~11_combout\)))) ) ) ) # ( \p1|reg0|Q\(6) & ( !\p1|regG|Q\(6) & ( 
-- (!\p1|mux0|y[1]~12_combout\ & (\sw[6]~input_o\ & ((\p1|mux0|y[1]~11_combout\)))) # (\p1|mux0|y[1]~12_combout\ & (((!\p1|mux0|y[1]~11_combout\) # (\p1|mux0|y[6]~30_combout\)))) ) ) ) # ( !\p1|reg0|Q\(6) & ( !\p1|regG|Q\(6) & ( (\p1|mux0|y[1]~11_combout\ & 
-- ((!\p1|mux0|y[1]~12_combout\ & (\sw[6]~input_o\)) # (\p1|mux0|y[1]~12_combout\ & ((\p1|mux0|y[6]~30_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011000011110101001111110000010100111111111101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[6]~input_o\,
	datab => \p1|mux0|ALT_INV_y[6]~30_combout\,
	datac => \p1|mux0|ALT_INV_y[1]~12_combout\,
	datad => \p1|mux0|ALT_INV_y[1]~11_combout\,
	datae => \p1|reg0|ALT_INV_Q\(6),
	dataf => \p1|regG|ALT_INV_Q\(6),
	combout => \p1|mux0|y[6]~31_combout\);

-- Location: LABCELL_X7_Y20_N12
\p1|reg7|Q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg7|Q[7]~feeder_combout\ = \p1|mux0|y[7]~34_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[7]~34_combout\,
	combout => \p1|reg7|Q[7]~feeder_combout\);

-- Location: FF_X7_Y20_N14
\p1|reg7|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	d => \p1|reg7|Q[7]~feeder_combout\,
	ena => \p1|fsm|Selector10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg7|Q\(7));

-- Location: LABCELL_X5_Y20_N9
\p1|reg5|Q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg5|Q[7]~feeder_combout\ = ( \p1|mux0|y[7]~34_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[7]~34_combout\,
	combout => \p1|reg5|Q[7]~feeder_combout\);

-- Location: FF_X5_Y20_N10
\p1|reg5|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	d => \p1|reg5|Q[7]~feeder_combout\,
	ena => \p1|fsm|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(7));

-- Location: FF_X7_Y20_N47
\p1|reg6|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[7]~34_combout\,
	sload => VCC,
	ena => \p1|fsm|Selector9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(7));

-- Location: FF_X5_Y20_N26
\p1|reg4|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[7]~34_combout\,
	sload => VCC,
	ena => \p1|fsm|Selector7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg4|Q\(7));

-- Location: LABCELL_X7_Y20_N45
\p1|mux0|y[7]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[7]~32_combout\ = ( \p1|reg6|Q\(7) & ( \p1|reg4|Q\(7) & ( (!\p1|mux0|y[1]~1_combout\ & ((!\p1|mux0|y[1]~0_combout\) # ((\p1|reg5|Q\(7))))) # (\p1|mux0|y[1]~1_combout\ & (((\p1|reg7|Q\(7))) # (\p1|mux0|y[1]~0_combout\))) ) ) ) # ( !\p1|reg6|Q\(7) 
-- & ( \p1|reg4|Q\(7) & ( (!\p1|mux0|y[1]~1_combout\ & ((!\p1|mux0|y[1]~0_combout\) # ((\p1|reg5|Q\(7))))) # (\p1|mux0|y[1]~1_combout\ & (!\p1|mux0|y[1]~0_combout\ & (\p1|reg7|Q\(7)))) ) ) ) # ( \p1|reg6|Q\(7) & ( !\p1|reg4|Q\(7) & ( 
-- (!\p1|mux0|y[1]~1_combout\ & (\p1|mux0|y[1]~0_combout\ & ((\p1|reg5|Q\(7))))) # (\p1|mux0|y[1]~1_combout\ & (((\p1|reg7|Q\(7))) # (\p1|mux0|y[1]~0_combout\))) ) ) ) # ( !\p1|reg6|Q\(7) & ( !\p1|reg4|Q\(7) & ( (!\p1|mux0|y[1]~1_combout\ & 
-- (\p1|mux0|y[1]~0_combout\ & ((\p1|reg5|Q\(7))))) # (\p1|mux0|y[1]~1_combout\ & (!\p1|mux0|y[1]~0_combout\ & (\p1|reg7|Q\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000101010011011110001100101011101001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[1]~1_combout\,
	datab => \p1|mux0|ALT_INV_y[1]~0_combout\,
	datac => \p1|reg7|ALT_INV_Q\(7),
	datad => \p1|reg5|ALT_INV_Q\(7),
	datae => \p1|reg6|ALT_INV_Q\(7),
	dataf => \p1|reg4|ALT_INV_Q\(7),
	combout => \p1|mux0|y[7]~32_combout\);

-- Location: LABCELL_X6_Y20_N42
\p1|reg1|Q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg1|Q[7]~feeder_combout\ = ( \p1|mux0|y[7]~34_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[7]~34_combout\,
	combout => \p1|reg1|Q[7]~feeder_combout\);

-- Location: FF_X6_Y20_N44
\p1|reg1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	d => \p1|reg1|Q[7]~feeder_combout\,
	ena => \p1|fsm|Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(7));

-- Location: FF_X6_Y20_N20
\p1|reg3|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[7]~34_combout\,
	sload => VCC,
	ena => \p1|fsm|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(7));

-- Location: MLABCELL_X4_Y20_N36
\p1|reg2|Q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg2|Q[7]~feeder_combout\ = ( \p1|mux0|y[7]~34_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[7]~34_combout\,
	combout => \p1|reg2|Q[7]~feeder_combout\);

-- Location: FF_X4_Y20_N38
\p1|reg2|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	d => \p1|reg2|Q[7]~feeder_combout\,
	ena => \p1|fsm|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q\(7));

-- Location: LABCELL_X6_Y20_N18
\p1|mux0|y[7]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[7]~33_combout\ = ( \p1|reg3|Q\(7) & ( \p1|reg2|Q\(7) & ( ((!\p1|mux0|y[1]~4_combout\ & ((\p1|reg1|Q\(7)))) # (\p1|mux0|y[1]~4_combout\ & (\p1|mux0|y[7]~32_combout\))) # (\p1|mux0|y[1]~3_combout\) ) ) ) # ( !\p1|reg3|Q\(7) & ( \p1|reg2|Q\(7) & ( 
-- (!\p1|mux0|y[1]~4_combout\ & (((\p1|reg1|Q\(7)) # (\p1|mux0|y[1]~3_combout\)))) # (\p1|mux0|y[1]~4_combout\ & (\p1|mux0|y[7]~32_combout\ & (!\p1|mux0|y[1]~3_combout\))) ) ) ) # ( \p1|reg3|Q\(7) & ( !\p1|reg2|Q\(7) & ( (!\p1|mux0|y[1]~4_combout\ & 
-- (((!\p1|mux0|y[1]~3_combout\ & \p1|reg1|Q\(7))))) # (\p1|mux0|y[1]~4_combout\ & (((\p1|mux0|y[1]~3_combout\)) # (\p1|mux0|y[7]~32_combout\))) ) ) ) # ( !\p1|reg3|Q\(7) & ( !\p1|reg2|Q\(7) & ( (!\p1|mux0|y[1]~3_combout\ & ((!\p1|mux0|y[1]~4_combout\ & 
-- ((\p1|reg1|Q\(7)))) # (\p1|mux0|y[1]~4_combout\ & (\p1|mux0|y[7]~32_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010110000000101011011010100011010101110100001111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[1]~4_combout\,
	datab => \p1|mux0|ALT_INV_y[7]~32_combout\,
	datac => \p1|mux0|ALT_INV_y[1]~3_combout\,
	datad => \p1|reg1|ALT_INV_Q\(7),
	datae => \p1|reg3|ALT_INV_Q\(7),
	dataf => \p1|reg2|ALT_INV_Q\(7),
	combout => \p1|mux0|y[7]~33_combout\);

-- Location: LABCELL_X5_Y20_N57
\p1|regA|Q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|regA|Q[7]~feeder_combout\ = ( \p1|mux0|y[7]~34_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[7]~34_combout\,
	combout => \p1|regA|Q[7]~feeder_combout\);

-- Location: FF_X5_Y20_N58
\p1|regA|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	d => \p1|regA|Q[7]~feeder_combout\,
	ena => \p1|fsm|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regA|Q\(7));

-- Location: LABCELL_X6_Y21_N54
\p1|addsub0|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~29_sumout\ = SUM(( !\p1|fsm|AddSub~combout\ $ (!\p1|mux0|y[7]~34_combout\) ) + ( \p1|regA|Q\(7) ) + ( \p1|addsub0|Add0~26\ ))
-- \p1|addsub0|Add0~30\ = CARRY(( !\p1|fsm|AddSub~combout\ $ (!\p1|mux0|y[7]~34_combout\) ) + ( \p1|regA|Q\(7) ) + ( \p1|addsub0|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_AddSub~combout\,
	datac => \p1|regA|ALT_INV_Q\(7),
	datad => \p1|mux0|ALT_INV_y[7]~34_combout\,
	cin => \p1|addsub0|Add0~26\,
	sumout => \p1|addsub0|Add0~29_sumout\,
	cout => \p1|addsub0|Add0~30\);

-- Location: FF_X6_Y21_N55
\p1|regG|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	d => \p1|addsub0|Add0~29_sumout\,
	sclr => \ALT_INV_key0~input_o\,
	ena => \p1|fsm|y_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regG|Q\(7));

-- Location: FF_X6_Y20_N14
\p1|reg0|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	d => \p1|mux0|y[7]~34_combout\,
	ena => \p1|fsm|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(7));

-- Location: LABCELL_X6_Y20_N12
\p1|mux0|y[7]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[7]~34_combout\ = ( \p1|reg0|Q\(7) & ( \p1|mux0|y[1]~12_combout\ & ( (!\p1|mux0|y[1]~11_combout\) # (\p1|mux0|y[7]~33_combout\) ) ) ) # ( !\p1|reg0|Q\(7) & ( \p1|mux0|y[1]~12_combout\ & ( (\p1|mux0|y[1]~11_combout\ & \p1|mux0|y[7]~33_combout\) ) 
-- ) ) # ( \p1|reg0|Q\(7) & ( !\p1|mux0|y[1]~12_combout\ & ( (!\p1|mux0|y[1]~11_combout\ & (\p1|regG|Q\(7))) # (\p1|mux0|y[1]~11_combout\ & ((\sw[7]~input_o\))) ) ) ) # ( !\p1|reg0|Q\(7) & ( !\p1|mux0|y[1]~12_combout\ & ( (!\p1|mux0|y[1]~11_combout\ & 
-- (\p1|regG|Q\(7))) # (\p1|mux0|y[1]~11_combout\ & ((\sw[7]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100010001000100011011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[1]~11_combout\,
	datab => \p1|mux0|ALT_INV_y[7]~33_combout\,
	datac => \p1|regG|ALT_INV_Q\(7),
	datad => \ALT_INV_sw[7]~input_o\,
	datae => \p1|reg0|ALT_INV_Q\(7),
	dataf => \p1|mux0|ALT_INV_y[1]~12_combout\,
	combout => \p1|mux0|y[7]~34_combout\);

-- Location: LABCELL_X5_Y20_N45
\p1|reg5|Q[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg5|Q[8]~feeder_combout\ = \p1|mux0|y[8]~37_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|mux0|ALT_INV_y[8]~37_combout\,
	combout => \p1|reg5|Q[8]~feeder_combout\);

-- Location: FF_X5_Y20_N47
\p1|reg5|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	d => \p1|reg5|Q[8]~feeder_combout\,
	ena => \p1|fsm|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(8));

-- Location: MLABCELL_X4_Y20_N15
\p1|reg7|Q[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg7|Q[8]~feeder_combout\ = \p1|mux0|y[8]~37_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[8]~37_combout\,
	combout => \p1|reg7|Q[8]~feeder_combout\);

-- Location: FF_X4_Y20_N17
\p1|reg7|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	d => \p1|reg7|Q[8]~feeder_combout\,
	ena => \p1|fsm|Selector10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg7|Q\(8));

-- Location: FF_X4_Y20_N2
\p1|reg6|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[8]~37_combout\,
	sload => VCC,
	ena => \p1|fsm|Selector9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(8));

-- Location: LABCELL_X5_Y20_N27
\p1|reg4|Q[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg4|Q[8]~feeder_combout\ = \p1|mux0|y[8]~37_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|mux0|ALT_INV_y[8]~37_combout\,
	combout => \p1|reg4|Q[8]~feeder_combout\);

-- Location: FF_X5_Y20_N28
\p1|reg4|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	d => \p1|reg4|Q[8]~feeder_combout\,
	ena => \p1|fsm|Selector7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg4|Q\(8));

-- Location: MLABCELL_X4_Y20_N0
\p1|mux0|y[8]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[8]~35_combout\ = ( \p1|reg6|Q\(8) & ( \p1|reg4|Q\(8) & ( (!\p1|mux0|y[1]~1_combout\ & ((!\p1|mux0|y[1]~0_combout\) # ((\p1|reg5|Q\(8))))) # (\p1|mux0|y[1]~1_combout\ & (((\p1|reg7|Q\(8))) # (\p1|mux0|y[1]~0_combout\))) ) ) ) # ( !\p1|reg6|Q\(8) 
-- & ( \p1|reg4|Q\(8) & ( (!\p1|mux0|y[1]~1_combout\ & ((!\p1|mux0|y[1]~0_combout\) # ((\p1|reg5|Q\(8))))) # (\p1|mux0|y[1]~1_combout\ & (!\p1|mux0|y[1]~0_combout\ & ((\p1|reg7|Q\(8))))) ) ) ) # ( \p1|reg6|Q\(8) & ( !\p1|reg4|Q\(8) & ( 
-- (!\p1|mux0|y[1]~1_combout\ & (\p1|mux0|y[1]~0_combout\ & (\p1|reg5|Q\(8)))) # (\p1|mux0|y[1]~1_combout\ & (((\p1|reg7|Q\(8))) # (\p1|mux0|y[1]~0_combout\))) ) ) ) # ( !\p1|reg6|Q\(8) & ( !\p1|reg4|Q\(8) & ( (!\p1|mux0|y[1]~1_combout\ & 
-- (\p1|mux0|y[1]~0_combout\ & (\p1|reg5|Q\(8)))) # (\p1|mux0|y[1]~1_combout\ & (!\p1|mux0|y[1]~0_combout\ & ((\p1|reg7|Q\(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000100110101011110001010110011101001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[1]~1_combout\,
	datab => \p1|mux0|ALT_INV_y[1]~0_combout\,
	datac => \p1|reg5|ALT_INV_Q\(8),
	datad => \p1|reg7|ALT_INV_Q\(8),
	datae => \p1|reg6|ALT_INV_Q\(8),
	dataf => \p1|reg4|ALT_INV_Q\(8),
	combout => \p1|mux0|y[8]~35_combout\);

-- Location: LABCELL_X6_Y20_N39
\p1|reg1|Q[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg1|Q[8]~feeder_combout\ = \p1|mux0|y[8]~37_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|mux0|ALT_INV_y[8]~37_combout\,
	combout => \p1|reg1|Q[8]~feeder_combout\);

-- Location: FF_X6_Y20_N41
\p1|reg1|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	d => \p1|reg1|Q[8]~feeder_combout\,
	ena => \p1|fsm|Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(8));

-- Location: FF_X6_Y20_N50
\p1|reg3|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[8]~37_combout\,
	sload => VCC,
	ena => \p1|fsm|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(8));

-- Location: FF_X4_Y20_N31
\p1|reg2|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[8]~37_combout\,
	sload => VCC,
	ena => \p1|fsm|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q\(8));

-- Location: LABCELL_X6_Y20_N48
\p1|mux0|y[8]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[8]~36_combout\ = ( \p1|reg3|Q\(8) & ( \p1|reg2|Q\(8) & ( ((!\p1|mux0|y[1]~4_combout\ & ((\p1|reg1|Q\(8)))) # (\p1|mux0|y[1]~4_combout\ & (\p1|mux0|y[8]~35_combout\))) # (\p1|mux0|y[1]~3_combout\) ) ) ) # ( !\p1|reg3|Q\(8) & ( \p1|reg2|Q\(8) & ( 
-- (!\p1|mux0|y[1]~4_combout\ & (((\p1|reg1|Q\(8)) # (\p1|mux0|y[1]~3_combout\)))) # (\p1|mux0|y[1]~4_combout\ & (\p1|mux0|y[8]~35_combout\ & (!\p1|mux0|y[1]~3_combout\))) ) ) ) # ( \p1|reg3|Q\(8) & ( !\p1|reg2|Q\(8) & ( (!\p1|mux0|y[1]~4_combout\ & 
-- (((!\p1|mux0|y[1]~3_combout\ & \p1|reg1|Q\(8))))) # (\p1|mux0|y[1]~4_combout\ & (((\p1|mux0|y[1]~3_combout\)) # (\p1|mux0|y[8]~35_combout\))) ) ) ) # ( !\p1|reg3|Q\(8) & ( !\p1|reg2|Q\(8) & ( (!\p1|mux0|y[1]~3_combout\ & ((!\p1|mux0|y[1]~4_combout\ & 
-- ((\p1|reg1|Q\(8)))) # (\p1|mux0|y[1]~4_combout\ & (\p1|mux0|y[8]~35_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010110000000101011011010100011010101110100001111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[1]~4_combout\,
	datab => \p1|mux0|ALT_INV_y[8]~35_combout\,
	datac => \p1|mux0|ALT_INV_y[1]~3_combout\,
	datad => \p1|reg1|ALT_INV_Q\(8),
	datae => \p1|reg3|ALT_INV_Q\(8),
	dataf => \p1|reg2|ALT_INV_Q\(8),
	combout => \p1|mux0|y[8]~36_combout\);

-- Location: FF_X5_Y20_N19
\p1|regA|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[8]~37_combout\,
	sload => VCC,
	ena => \p1|fsm|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regA|Q\(8));

-- Location: LABCELL_X6_Y21_N57
\p1|addsub0|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~33_sumout\ = SUM(( !\p1|fsm|AddSub~combout\ $ (!\p1|mux0|y[8]~37_combout\) ) + ( \p1|regA|Q\(8) ) + ( \p1|addsub0|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_AddSub~combout\,
	datac => \p1|mux0|ALT_INV_y[8]~37_combout\,
	dataf => \p1|regA|ALT_INV_Q\(8),
	cin => \p1|addsub0|Add0~30\,
	sumout => \p1|addsub0|Add0~33_sumout\);

-- Location: FF_X6_Y21_N59
\p1|regG|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	d => \p1|addsub0|Add0~33_sumout\,
	sclr => \ALT_INV_key0~input_o\,
	ena => \p1|fsm|y_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regG|Q\(8));

-- Location: FF_X6_Y20_N32
\p1|reg0|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key1~inputCLKENA0_outclk\,
	d => \p1|mux0|y[8]~37_combout\,
	ena => \p1|fsm|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(8));

-- Location: LABCELL_X6_Y20_N30
\p1|mux0|y[8]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[8]~37_combout\ = ( \p1|reg0|Q\(8) & ( \p1|mux0|y[1]~11_combout\ & ( (!\p1|mux0|y[1]~12_combout\ & ((\sw[8]~input_o\))) # (\p1|mux0|y[1]~12_combout\ & (\p1|mux0|y[8]~36_combout\)) ) ) ) # ( !\p1|reg0|Q\(8) & ( \p1|mux0|y[1]~11_combout\ & ( 
-- (!\p1|mux0|y[1]~12_combout\ & ((\sw[8]~input_o\))) # (\p1|mux0|y[1]~12_combout\ & (\p1|mux0|y[8]~36_combout\)) ) ) ) # ( \p1|reg0|Q\(8) & ( !\p1|mux0|y[1]~11_combout\ & ( (\p1|regG|Q\(8)) # (\p1|mux0|y[1]~12_combout\) ) ) ) # ( !\p1|reg0|Q\(8) & ( 
-- !\p1|mux0|y[1]~11_combout\ & ( (!\p1|mux0|y[1]~12_combout\ & \p1|regG|Q\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010010101011111111100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[1]~12_combout\,
	datab => \p1|mux0|ALT_INV_y[8]~36_combout\,
	datac => \ALT_INV_sw[8]~input_o\,
	datad => \p1|regG|ALT_INV_Q\(8),
	datae => \p1|reg0|ALT_INV_Q\(8),
	dataf => \p1|mux0|ALT_INV_y[1]~11_combout\,
	combout => \p1|mux0|y[8]~37_combout\);

-- Location: MLABCELL_X4_Y22_N18
\p1|fsm|Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector11~0_combout\ = ( \p1|fsm|y_Q.T3~q\ ) # ( !\p1|fsm|y_Q.T3~q\ & ( (\p1|fsm|y_Q.T1~q\ & (!\p1|ir0|Q\(7) & !\p1|ir0|Q\(8))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T1~q\,
	datac => \p1|ir0|ALT_INV_Q\(7),
	datad => \p1|ir0|ALT_INV_Q\(8),
	dataf => \p1|fsm|ALT_INV_y_Q.T3~q\,
	combout => \p1|fsm|Selector11~0_combout\);

-- Location: LABCELL_X32_Y16_N0
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


