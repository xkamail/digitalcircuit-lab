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

-- DATE "10/20/2022 10:31:19"

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

ENTITY 	lab9part2 IS
    PORT (
	sw0 : IN std_logic;
	sw9 : IN std_logic;
	key0 : IN std_logic;
	key1 : IN std_logic;
	hex0 : OUT std_logic_vector(0 TO 6);
	hex1 : OUT std_logic_vector(0 TO 6);
	ledr : BUFFER std_logic_vector(9 DOWNTO 0)
	);
END lab9part2;

-- Design Ports Information
-- hex0[6]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[5]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[4]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[3]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[2]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[1]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[0]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[6]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[5]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[4]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[3]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[2]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[1]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[0]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[0]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[1]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[2]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[3]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[4]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[5]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[6]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[7]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[8]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[9]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key1	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw0	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key0	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw9	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab9part2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sw0 : std_logic;
SIGNAL ww_sw9 : std_logic;
SIGNAL ww_key0 : std_logic;
SIGNAL ww_key1 : std_logic;
SIGNAL ww_hex0 : std_logic_vector(0 TO 6);
SIGNAL ww_hex1 : std_logic_vector(0 TO 6);
SIGNAL ww_ledr : std_logic_vector(9 DOWNTO 0);
SIGNAL \rom0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \rom0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \key1~input_o\ : std_logic;
SIGNAL \key1~inputCLKENA0_outclk\ : std_logic;
SIGNAL \sw9~input_o\ : std_logic;
SIGNAL \key0~input_o\ : std_logic;
SIGNAL \key0~inputCLKENA0_outclk\ : std_logic;
SIGNAL \sw0~input_o\ : std_logic;
SIGNAL \c0|v~1_combout\ : std_logic;
SIGNAL \c0|v~2_combout\ : std_logic;
SIGNAL \c0|v~3_combout\ : std_logic;
SIGNAL \c0|v~4_combout\ : std_logic;
SIGNAL \c0|v[2]~DUPLICATE_q\ : std_logic;
SIGNAL \c0|Equal0~0_combout\ : std_logic;
SIGNAL \c0|rollover_v~q\ : std_logic;
SIGNAL \c0|v~0_combout\ : std_logic;
SIGNAL \c0|v[0]~DUPLICATE_q\ : std_logic;
SIGNAL \c0|v[3]~DUPLICATE_q\ : std_logic;
SIGNAL \p1|fsm|y_D.T2~0_combout\ : std_logic;
SIGNAL \p1|fsm|y_Q.T2~q\ : std_logic;
SIGNAL \p1|fsm|Selector1~0_combout\ : std_logic;
SIGNAL \p1|fsm|y_Q.T0~q\ : std_logic;
SIGNAL \p1|fsm|y_D.T1~0_combout\ : std_logic;
SIGNAL \p1|fsm|y_Q.T1~q\ : std_logic;
SIGNAL \p1|fsm|Selector18~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector13~3_combout\ : std_logic;
SIGNAL \p1|fsm|Selector17~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector17~1_combout\ : std_logic;
SIGNAL \p1|fsm|Selector13~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector2~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector2~1_combout\ : std_logic;
SIGNAL \p1|fsm|Selector0~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector0~1_combout\ : std_logic;
SIGNAL \p1|fsm|Selector13~1_combout\ : std_logic;
SIGNAL \p1|fsm|Selector13~2_combout\ : std_logic;
SIGNAL \p1|fsm|Selector12~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector14~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector14~1_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~6_combout\ : std_logic;
SIGNAL \p1|fsm|Selector15~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector15~1_combout\ : std_logic;
SIGNAL \p1|fsm|Selector16~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector16~1_combout\ : std_logic;
SIGNAL \p1|fsm|y_D.T3~0_combout\ : std_logic;
SIGNAL \p1|fsm|y_Q.T3~q\ : std_logic;
SIGNAL \p1|fsm|Equal0~0_combout\ : std_logic;
SIGNAL \p1|fsm|Gout~combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~10_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~8_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~7_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~9_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~11_combout\ : std_logic;
SIGNAL \p1|fsm|Equal0~1_combout\ : std_logic;
SIGNAL \p1|fsm|AddSub~combout\ : std_logic;
SIGNAL \p1|fsm|Ain~combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~12_combout\ : std_logic;
SIGNAL \p1|addsub0|Add0~38_cout\ : std_logic;
SIGNAL \p1|addsub0|Add0~1_sumout\ : std_logic;
SIGNAL \p1|fsm|Selector3~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector6~0_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~4_combout\ : std_logic;
SIGNAL \p1|fsm|Selector4~0_combout\ : std_logic;
SIGNAL \p1|reg2|Q[0]~feeder_combout\ : std_logic;
SIGNAL \p1|fsm|Selector5~0_combout\ : std_logic;
SIGNAL \p1|reg5|Q[0]~feeder_combout\ : std_logic;
SIGNAL \p1|fsm|Selector8~0_combout\ : std_logic;
SIGNAL \p1|reg4|Q[0]~feeder_combout\ : std_logic;
SIGNAL \p1|fsm|Selector7~0_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~1_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector9~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector10~0_combout\ : std_logic;
SIGNAL \p1|mux0|y[0]~2_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~3_combout\ : std_logic;
SIGNAL \p1|mux0|y[0]~5_combout\ : std_logic;
SIGNAL \p1|fsm|Selector3~1_combout\ : std_logic;
SIGNAL \p1|mux0|y[0]~13_combout\ : std_logic;
SIGNAL \p1|addsub0|Add0~2\ : std_logic;
SIGNAL \p1|addsub0|Add0~5_sumout\ : std_logic;
SIGNAL \p1|reg2|Q[1]~feeder_combout\ : std_logic;
SIGNAL \p1|reg7|Q[1]~feeder_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~14_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~15_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~16_combout\ : std_logic;
SIGNAL \p1|addsub0|Add0~6\ : std_logic;
SIGNAL \p1|addsub0|Add0~9_sumout\ : std_logic;
SIGNAL \p1|reg4|Q[2]~feeder_combout\ : std_logic;
SIGNAL \p1|reg5|Q[2]~feeder_combout\ : std_logic;
SIGNAL \p1|reg7|Q[2]~feeder_combout\ : std_logic;
SIGNAL \p1|mux0|y[2]~17_combout\ : std_logic;
SIGNAL \p1|mux0|y[2]~18_combout\ : std_logic;
SIGNAL \p1|mux0|y[2]~19_combout\ : std_logic;
SIGNAL \p1|reg0|Q[2]~feeder_combout\ : std_logic;
SIGNAL \p1|addsub0|Add0~10\ : std_logic;
SIGNAL \p1|addsub0|Add0~13_sumout\ : std_logic;
SIGNAL \p1|reg2|Q[3]~feeder_combout\ : std_logic;
SIGNAL \p1|reg5|Q[3]~feeder_combout\ : std_logic;
SIGNAL \p1|reg4|Q[3]~feeder_combout\ : std_logic;
SIGNAL \p1|reg7|Q[3]~feeder_combout\ : std_logic;
SIGNAL \p1|mux0|y[3]~20_combout\ : std_logic;
SIGNAL \p1|mux0|y[3]~21_combout\ : std_logic;
SIGNAL \p1|mux0|y[3]~22_combout\ : std_logic;
SIGNAL \s0|hex[6]~0_combout\ : std_logic;
SIGNAL \s0|hex[5]~1_combout\ : std_logic;
SIGNAL \s0|hex[4]~2_combout\ : std_logic;
SIGNAL \s0|hex[3]~3_combout\ : std_logic;
SIGNAL \s0|hex[2]~4_combout\ : std_logic;
SIGNAL \s0|hex[1]~5_combout\ : std_logic;
SIGNAL \s0|hex[0]~6_combout\ : std_logic;
SIGNAL \s1|hex[6]~0_combout\ : std_logic;
SIGNAL \s1|hex[5]~1_combout\ : std_logic;
SIGNAL \s1|hex[4]~2_combout\ : std_logic;
SIGNAL \s1|hex[3]~3_combout\ : std_logic;
SIGNAL \s1|hex[2]~4_combout\ : std_logic;
SIGNAL \s1|hex[1]~5_combout\ : std_logic;
SIGNAL \s1|hex[0]~6_combout\ : std_logic;
SIGNAL \p1|addsub0|Add0~14\ : std_logic;
SIGNAL \p1|addsub0|Add0~17_sumout\ : std_logic;
SIGNAL \p1|reg2|Q[4]~feeder_combout\ : std_logic;
SIGNAL \p1|reg1|Q[4]~feeder_combout\ : std_logic;
SIGNAL \p1|reg5|Q[4]~feeder_combout\ : std_logic;
SIGNAL \p1|reg4|Q[4]~feeder_combout\ : std_logic;
SIGNAL \p1|mux0|y[4]~23_combout\ : std_logic;
SIGNAL \p1|mux0|y[4]~24_combout\ : std_logic;
SIGNAL \p1|mux0|y[4]~25_combout\ : std_logic;
SIGNAL \p1|addsub0|Add0~18\ : std_logic;
SIGNAL \p1|addsub0|Add0~21_sumout\ : std_logic;
SIGNAL \p1|mux0|y[5]~26_combout\ : std_logic;
SIGNAL \p1|mux0|y[5]~27_combout\ : std_logic;
SIGNAL \p1|mux0|y[5]~28_combout\ : std_logic;
SIGNAL \p1|regA|Q[6]~feeder_combout\ : std_logic;
SIGNAL \p1|addsub0|Add0~22\ : std_logic;
SIGNAL \p1|addsub0|Add0~25_sumout\ : std_logic;
SIGNAL \p1|reg4|Q[6]~feeder_combout\ : std_logic;
SIGNAL \p1|reg5|Q[6]~feeder_combout\ : std_logic;
SIGNAL \p1|mux0|y[6]~29_combout\ : std_logic;
SIGNAL \p1|reg1|Q[6]~feeder_combout\ : std_logic;
SIGNAL \p1|mux0|y[6]~30_combout\ : std_logic;
SIGNAL \p1|mux0|y[6]~31_combout\ : std_logic;
SIGNAL \p1|addsub0|Add0~26\ : std_logic;
SIGNAL \p1|addsub0|Add0~29_sumout\ : std_logic;
SIGNAL \p1|reg7|Q[7]~feeder_combout\ : std_logic;
SIGNAL \p1|reg4|Q[7]~feeder_combout\ : std_logic;
SIGNAL \p1|mux0|y[7]~32_combout\ : std_logic;
SIGNAL \p1|reg1|Q[7]~feeder_combout\ : std_logic;
SIGNAL \p1|mux0|y[7]~33_combout\ : std_logic;
SIGNAL \p1|mux0|y[7]~34_combout\ : std_logic;
SIGNAL \p1|addsub0|Add0~30\ : std_logic;
SIGNAL \p1|addsub0|Add0~33_sumout\ : std_logic;
SIGNAL \p1|reg5|Q[8]~feeder_combout\ : std_logic;
SIGNAL \p1|reg7|Q[8]~feeder_combout\ : std_logic;
SIGNAL \p1|mux0|y[8]~35_combout\ : std_logic;
SIGNAL \p1|mux0|y[8]~36_combout\ : std_logic;
SIGNAL \p1|mux0|y[8]~37_combout\ : std_logic;
SIGNAL \p1|fsm|Selector11~0_combout\ : std_logic;
SIGNAL \p1|reg3|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg7|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \rom0|altsyncram_component|auto_generated|q_a\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg5|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg1|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|regG|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg4|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg0|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg6|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg2|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|ir0|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \c0|v\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \p1|regA|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|fsm|R0toR7out\ : std_logic_vector(0 TO 7);
SIGNAL \c0|ALT_INV_v[2]~DUPLICATE_q\ : std_logic;
SIGNAL \c0|ALT_INV_v[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_sw9~input_o\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Ain~combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_AddSub~combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Gout~combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_R0toR7out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \p1|fsm|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \p1|regA|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \c0|ALT_INV_rollover_v~q\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_y_Q.T0~q\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector2~1_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector17~1_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector17~0_combout\ : std_logic;
SIGNAL \c0|ALT_INV_v\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \p1|fsm|ALT_INV_Selector15~1_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector15~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector14~1_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector14~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector16~1_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector16~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector13~3_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector12~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector0~1_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector18~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector13~2_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector13~1_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector13~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_y_Q.T2~q\ : std_logic;
SIGNAL \p1|ir0|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|fsm|ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_y_Q.T3~q\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[8]~37_combout\ : std_logic;
SIGNAL \p1|reg0|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|mux0|ALT_INV_y[8]~36_combout\ : std_logic;
SIGNAL \p1|reg2|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg1|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg3|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|mux0|ALT_INV_y[8]~35_combout\ : std_logic;
SIGNAL \p1|reg5|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg4|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg6|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg7|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
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
SIGNAL \p1|mux0|ALT_INV_y[2]~19_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[2]~18_combout\ : std_logic;
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
SIGNAL \p1|mux0|ALT_INV_y[1]~6_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[0]~5_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~4_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~3_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[0]~2_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~1_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~0_combout\ : std_logic;
SIGNAL \p1|regG|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \rom0|altsyncram_component|auto_generated|ALT_INV_q_a\ : std_logic_vector(8 DOWNTO 0);

BEGIN

ww_sw0 <= sw0;
ww_sw9 <= sw9;
ww_key0 <= key0;
ww_key1 <= key1;
hex0 <= ww_hex0;
hex1 <= ww_hex1;
ledr <= ww_ledr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rom0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\c0|v\(4) & \c0|v[3]~DUPLICATE_q\ & \c0|v[2]~DUPLICATE_q\ & \c0|v\(1) & \c0|v[0]~DUPLICATE_q\);

\rom0|altsyncram_component|auto_generated|q_a\(0) <= \rom0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\rom0|altsyncram_component|auto_generated|q_a\(1) <= \rom0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\rom0|altsyncram_component|auto_generated|q_a\(2) <= \rom0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\rom0|altsyncram_component|auto_generated|q_a\(3) <= \rom0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\rom0|altsyncram_component|auto_generated|q_a\(4) <= \rom0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\rom0|altsyncram_component|auto_generated|q_a\(5) <= \rom0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\rom0|altsyncram_component|auto_generated|q_a\(6) <= \rom0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\rom0|altsyncram_component|auto_generated|q_a\(7) <= \rom0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\rom0|altsyncram_component|auto_generated|q_a\(8) <= \rom0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\c0|ALT_INV_v[2]~DUPLICATE_q\ <= NOT \c0|v[2]~DUPLICATE_q\;
\c0|ALT_INV_v[0]~DUPLICATE_q\ <= NOT \c0|v[0]~DUPLICATE_q\;
\ALT_INV_sw9~input_o\ <= NOT \sw9~input_o\;
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
\c0|ALT_INV_rollover_v~q\ <= NOT \c0|rollover_v~q\;
\p1|fsm|ALT_INV_Equal0~0_combout\ <= NOT \p1|fsm|Equal0~0_combout\;
\p1|fsm|ALT_INV_y_Q.T0~q\ <= NOT \p1|fsm|y_Q.T0~q\;
\p1|fsm|ALT_INV_Selector2~1_combout\ <= NOT \p1|fsm|Selector2~1_combout\;
\p1|fsm|ALT_INV_Selector2~0_combout\ <= NOT \p1|fsm|Selector2~0_combout\;
\p1|fsm|ALT_INV_Selector17~1_combout\ <= NOT \p1|fsm|Selector17~1_combout\;
\p1|fsm|ALT_INV_Selector17~0_combout\ <= NOT \p1|fsm|Selector17~0_combout\;
\c0|ALT_INV_v\(4) <= NOT \c0|v\(4);
\c0|ALT_INV_v\(3) <= NOT \c0|v\(3);
\c0|ALT_INV_v\(2) <= NOT \c0|v\(2);
\c0|ALT_INV_v\(1) <= NOT \c0|v\(1);
\c0|ALT_INV_v\(0) <= NOT \c0|v\(0);
\p1|fsm|ALT_INV_Selector15~1_combout\ <= NOT \p1|fsm|Selector15~1_combout\;
\p1|fsm|ALT_INV_Selector15~0_combout\ <= NOT \p1|fsm|Selector15~0_combout\;
\p1|fsm|ALT_INV_Selector14~1_combout\ <= NOT \p1|fsm|Selector14~1_combout\;
\p1|fsm|ALT_INV_Selector14~0_combout\ <= NOT \p1|fsm|Selector14~0_combout\;
\p1|fsm|ALT_INV_Selector16~1_combout\ <= NOT \p1|fsm|Selector16~1_combout\;
\p1|fsm|ALT_INV_Selector16~0_combout\ <= NOT \p1|fsm|Selector16~0_combout\;
\p1|fsm|ALT_INV_Selector13~3_combout\ <= NOT \p1|fsm|Selector13~3_combout\;
\p1|fsm|ALT_INV_Selector12~0_combout\ <= NOT \p1|fsm|Selector12~0_combout\;
\p1|fsm|ALT_INV_Selector0~1_combout\ <= NOT \p1|fsm|Selector0~1_combout\;
\p1|fsm|ALT_INV_Selector0~0_combout\ <= NOT \p1|fsm|Selector0~0_combout\;
\p1|fsm|ALT_INV_Selector18~0_combout\ <= NOT \p1|fsm|Selector18~0_combout\;
\p1|fsm|ALT_INV_Selector13~2_combout\ <= NOT \p1|fsm|Selector13~2_combout\;
\p1|fsm|ALT_INV_Selector13~1_combout\ <= NOT \p1|fsm|Selector13~1_combout\;
\p1|fsm|ALT_INV_Selector13~0_combout\ <= NOT \p1|fsm|Selector13~0_combout\;
\p1|fsm|ALT_INV_y_Q.T2~q\ <= NOT \p1|fsm|y_Q.T2~q\;
\p1|ir0|ALT_INV_Q\(2) <= NOT \p1|ir0|Q\(2);
\p1|ir0|ALT_INV_Q\(1) <= NOT \p1|ir0|Q\(1);
\p1|ir0|ALT_INV_Q\(0) <= NOT \p1|ir0|Q\(0);
\p1|fsm|ALT_INV_Selector3~0_combout\ <= NOT \p1|fsm|Selector3~0_combout\;
\p1|ir0|ALT_INV_Q\(3) <= NOT \p1|ir0|Q\(3);
\p1|ir0|ALT_INV_Q\(4) <= NOT \p1|ir0|Q\(4);
\p1|ir0|ALT_INV_Q\(5) <= NOT \p1|ir0|Q\(5);
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
\p1|mux0|ALT_INV_y[3]~21_combout\ <= NOT \p1|mux0|y[3]~21_combout\;
\p1|reg2|ALT_INV_Q\(3) <= NOT \p1|reg2|Q\(3);
\p1|reg3|ALT_INV_Q\(3) <= NOT \p1|reg3|Q\(3);
\p1|mux0|ALT_INV_y[3]~20_combout\ <= NOT \p1|mux0|y[3]~20_combout\;
\p1|reg5|ALT_INV_Q\(3) <= NOT \p1|reg5|Q\(3);
\p1|reg4|ALT_INV_Q\(3) <= NOT \p1|reg4|Q\(3);
\p1|reg6|ALT_INV_Q\(3) <= NOT \p1|reg6|Q\(3);
\p1|reg7|ALT_INV_Q\(3) <= NOT \p1|reg7|Q\(3);
\p1|mux0|ALT_INV_y[2]~19_combout\ <= NOT \p1|mux0|y[2]~19_combout\;
\p1|mux0|ALT_INV_y[2]~18_combout\ <= NOT \p1|mux0|y[2]~18_combout\;
\p1|reg2|ALT_INV_Q\(2) <= NOT \p1|reg2|Q\(2);
\p1|reg3|ALT_INV_Q\(2) <= NOT \p1|reg3|Q\(2);
\p1|mux0|ALT_INV_y[2]~17_combout\ <= NOT \p1|mux0|y[2]~17_combout\;
\p1|reg5|ALT_INV_Q\(2) <= NOT \p1|reg5|Q\(2);
\p1|reg4|ALT_INV_Q\(2) <= NOT \p1|reg4|Q\(2);
\p1|reg6|ALT_INV_Q\(2) <= NOT \p1|reg6|Q\(2);
\p1|reg7|ALT_INV_Q\(2) <= NOT \p1|reg7|Q\(2);
\p1|mux0|ALT_INV_y[1]~16_combout\ <= NOT \p1|mux0|y[1]~16_combout\;
\p1|mux0|ALT_INV_y[1]~15_combout\ <= NOT \p1|mux0|y[1]~15_combout\;
\p1|reg2|ALT_INV_Q\(1) <= NOT \p1|reg2|Q\(1);
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
\p1|mux0|ALT_INV_y[0]~5_combout\ <= NOT \p1|mux0|y[0]~5_combout\;
\p1|mux0|ALT_INV_y[1]~4_combout\ <= NOT \p1|mux0|y[1]~4_combout\;
\p1|mux0|ALT_INV_y[1]~3_combout\ <= NOT \p1|mux0|y[1]~3_combout\;
\p1|reg2|ALT_INV_Q\(0) <= NOT \p1|reg2|Q\(0);
\p1|reg3|ALT_INV_Q\(0) <= NOT \p1|reg3|Q\(0);
\p1|mux0|ALT_INV_y[0]~2_combout\ <= NOT \p1|mux0|y[0]~2_combout\;
\p1|mux0|ALT_INV_y[1]~1_combout\ <= NOT \p1|mux0|y[1]~1_combout\;
\p1|mux0|ALT_INV_y[1]~0_combout\ <= NOT \p1|mux0|y[1]~0_combout\;
\p1|reg5|ALT_INV_Q\(0) <= NOT \p1|reg5|Q\(0);
\p1|reg4|ALT_INV_Q\(0) <= NOT \p1|reg4|Q\(0);
\p1|reg6|ALT_INV_Q\(0) <= NOT \p1|reg6|Q\(0);
\p1|reg7|ALT_INV_Q\(0) <= NOT \p1|reg7|Q\(0);
\p1|reg1|ALT_INV_Q\(0) <= NOT \p1|reg1|Q\(0);
\p1|reg1|ALT_INV_Q\(1) <= NOT \p1|reg1|Q\(1);
\p1|reg1|ALT_INV_Q\(2) <= NOT \p1|reg1|Q\(2);
\p1|reg1|ALT_INV_Q\(3) <= NOT \p1|reg1|Q\(3);
\p1|reg0|ALT_INV_Q\(0) <= NOT \p1|reg0|Q\(0);
\p1|reg0|ALT_INV_Q\(1) <= NOT \p1|reg0|Q\(1);
\p1|reg0|ALT_INV_Q\(2) <= NOT \p1|reg0|Q\(2);
\p1|reg0|ALT_INV_Q\(3) <= NOT \p1|reg0|Q\(3);
\p1|regG|ALT_INV_Q\(8) <= NOT \p1|regG|Q\(8);
\p1|regG|ALT_INV_Q\(7) <= NOT \p1|regG|Q\(7);
\p1|regG|ALT_INV_Q\(6) <= NOT \p1|regG|Q\(6);
\p1|regG|ALT_INV_Q\(5) <= NOT \p1|regG|Q\(5);
\p1|regG|ALT_INV_Q\(4) <= NOT \p1|regG|Q\(4);
\p1|regG|ALT_INV_Q\(3) <= NOT \p1|regG|Q\(3);
\p1|regG|ALT_INV_Q\(2) <= NOT \p1|regG|Q\(2);
\p1|regG|ALT_INV_Q\(1) <= NOT \p1|regG|Q\(1);
\p1|regG|ALT_INV_Q\(0) <= NOT \p1|regG|Q\(0);
\rom0|altsyncram_component|auto_generated|ALT_INV_q_a\(1) <= NOT \rom0|altsyncram_component|auto_generated|q_a\(1);
\rom0|altsyncram_component|auto_generated|ALT_INV_q_a\(2) <= NOT \rom0|altsyncram_component|auto_generated|q_a\(2);
\rom0|altsyncram_component|auto_generated|ALT_INV_q_a\(3) <= NOT \rom0|altsyncram_component|auto_generated|q_a\(3);
\rom0|altsyncram_component|auto_generated|ALT_INV_q_a\(4) <= NOT \rom0|altsyncram_component|auto_generated|q_a\(4);
\rom0|altsyncram_component|auto_generated|ALT_INV_q_a\(5) <= NOT \rom0|altsyncram_component|auto_generated|q_a\(5);
\rom0|altsyncram_component|auto_generated|ALT_INV_q_a\(6) <= NOT \rom0|altsyncram_component|auto_generated|q_a\(6);
\rom0|altsyncram_component|auto_generated|ALT_INV_q_a\(7) <= NOT \rom0|altsyncram_component|auto_generated|q_a\(7);
\rom0|altsyncram_component|auto_generated|ALT_INV_q_a\(8) <= NOT \rom0|altsyncram_component|auto_generated|q_a\(8);
\rom0|altsyncram_component|auto_generated|ALT_INV_q_a\(0) <= NOT \rom0|altsyncram_component|auto_generated|q_a\(0);

-- Location: IOOBUF_X46_Y0_N36
\hex0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s0|hex[6]~0_combout\,
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
	i => \s0|hex[5]~1_combout\,
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
	i => \s0|hex[4]~2_combout\,
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
	i => \s0|hex[3]~3_combout\,
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
	i => \s0|hex[2]~4_combout\,
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
	i => \s0|hex[1]~5_combout\,
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
	i => \s0|hex[0]~6_combout\,
	devoe => ww_devoe,
	o => ww_hex0(0));

-- Location: IOOBUF_X40_Y0_N76
\hex1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s1|hex[6]~0_combout\,
	devoe => ww_devoe,
	o => ww_hex1(6));

-- Location: IOOBUF_X46_Y0_N53
\hex1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s1|hex[5]~1_combout\,
	devoe => ww_devoe,
	o => ww_hex1(5));

-- Location: IOOBUF_X38_Y0_N19
\hex1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s1|hex[4]~2_combout\,
	devoe => ww_devoe,
	o => ww_hex1(4));

-- Location: IOOBUF_X36_Y0_N19
\hex1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s1|hex[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_hex1(3));

-- Location: IOOBUF_X22_Y0_N53
\hex1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s1|hex[2]~4_combout\,
	devoe => ww_devoe,
	o => ww_hex1(2));

-- Location: IOOBUF_X38_Y0_N53
\hex1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s1|hex[1]~5_combout\,
	devoe => ww_devoe,
	o => ww_hex1(1));

-- Location: IOOBUF_X48_Y0_N42
\hex1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s1|hex[0]~6_combout\,
	devoe => ww_devoe,
	o => ww_hex1(0));

-- Location: IOOBUF_X0_Y20_N56
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

-- Location: IOOBUF_X0_Y20_N39
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

-- Location: IOOBUF_X0_Y19_N22
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

-- Location: IOOBUF_X0_Y19_N5
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

-- Location: IOOBUF_X0_Y19_N56
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

-- Location: IOOBUF_X0_Y19_N39
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

-- Location: IOOBUF_X0_Y18_N45
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

-- Location: IOOBUF_X0_Y18_N62
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

-- Location: IOOBUF_X0_Y18_N96
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

-- Location: CLKCTRL_G7
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

-- Location: CLKCTRL_G6
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

-- Location: IOIBUF_X33_Y0_N41
\sw0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw0,
	o => \sw0~input_o\);

-- Location: FF_X2_Y6_N23
\c0|v[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key0~inputCLKENA0_outclk\,
	d => \c0|v~0_combout\,
	clrn => \sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c0|v\(0));

-- Location: LABCELL_X2_Y6_N24
\c0|v~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \c0|v~1_combout\ = ( \c0|v\(1) & ( !\c0|rollover_v~q\ & ( !\c0|v\(0) ) ) ) # ( !\c0|v\(1) & ( !\c0|rollover_v~q\ & ( \c0|v\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c0|ALT_INV_v\(0),
	datae => \c0|ALT_INV_v\(1),
	dataf => \c0|ALT_INV_rollover_v~q\,
	combout => \c0|v~1_combout\);

-- Location: FF_X2_Y6_N26
\c0|v[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key0~inputCLKENA0_outclk\,
	d => \c0|v~1_combout\,
	clrn => \sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c0|v\(1));

-- Location: LABCELL_X2_Y6_N54
\c0|v~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \c0|v~2_combout\ = ( \c0|v\(2) & ( !\c0|rollover_v~q\ & ( (!\c0|v\(0)) # (!\c0|v\(1)) ) ) ) # ( !\c0|v\(2) & ( !\c0|rollover_v~q\ & ( (\c0|v\(0) & \c0|v\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111110101111101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c0|ALT_INV_v\(0),
	datac => \c0|ALT_INV_v\(1),
	datae => \c0|ALT_INV_v\(2),
	dataf => \c0|ALT_INV_rollover_v~q\,
	combout => \c0|v~2_combout\);

-- Location: FF_X2_Y6_N55
\c0|v[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key0~inputCLKENA0_outclk\,
	d => \c0|v~2_combout\,
	clrn => \sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c0|v\(2));

-- Location: LABCELL_X2_Y6_N9
\c0|v~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \c0|v~3_combout\ = ( \c0|v\(3) & ( \c0|v\(2) & ( (!\c0|rollover_v~q\ & ((!\c0|v\(0)) # (!\c0|v\(1)))) ) ) ) # ( !\c0|v\(3) & ( \c0|v\(2) & ( (\c0|v\(0) & (!\c0|rollover_v~q\ & \c0|v\(1))) ) ) ) # ( \c0|v\(3) & ( !\c0|v\(2) & ( !\c0|rollover_v~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000010100001111000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c0|ALT_INV_v\(0),
	datac => \c0|ALT_INV_rollover_v~q\,
	datad => \c0|ALT_INV_v\(1),
	datae => \c0|ALT_INV_v\(3),
	dataf => \c0|ALT_INV_v\(2),
	combout => \c0|v~3_combout\);

-- Location: FF_X2_Y6_N11
\c0|v[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key0~inputCLKENA0_outclk\,
	d => \c0|v~3_combout\,
	clrn => \sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c0|v\(3));

-- Location: LABCELL_X2_Y6_N42
\c0|v~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \c0|v~4_combout\ = ( \c0|v\(4) & ( \c0|v\(2) & ( (!\c0|rollover_v~q\ & ((!\c0|v\(3)) # ((!\c0|v\(1)) # (!\c0|v[0]~DUPLICATE_q\)))) ) ) ) # ( !\c0|v\(4) & ( \c0|v\(2) & ( (!\c0|rollover_v~q\ & (\c0|v\(3) & (\c0|v\(1) & \c0|v[0]~DUPLICATE_q\))) ) ) ) # ( 
-- \c0|v\(4) & ( !\c0|v\(2) & ( !\c0|rollover_v~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000101010101010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c0|ALT_INV_rollover_v~q\,
	datab => \c0|ALT_INV_v\(3),
	datac => \c0|ALT_INV_v\(1),
	datad => \c0|ALT_INV_v[0]~DUPLICATE_q\,
	datae => \c0|ALT_INV_v\(4),
	dataf => \c0|ALT_INV_v\(2),
	combout => \c0|v~4_combout\);

-- Location: FF_X2_Y6_N44
\c0|v[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key0~inputCLKENA0_outclk\,
	d => \c0|v~4_combout\,
	clrn => \sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c0|v\(4));

-- Location: FF_X2_Y6_N56
\c0|v[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key0~inputCLKENA0_outclk\,
	d => \c0|v~2_combout\,
	clrn => \sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c0|v[2]~DUPLICATE_q\);

-- Location: LABCELL_X2_Y6_N48
\c0|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c0|Equal0~0_combout\ = ( \c0|v[2]~DUPLICATE_q\ & ( !\c0|v\(0) & ( (\c0|v\(4) & (\c0|v\(1) & \c0|v\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \c0|ALT_INV_v\(4),
	datac => \c0|ALT_INV_v\(1),
	datad => \c0|ALT_INV_v\(3),
	datae => \c0|ALT_INV_v[2]~DUPLICATE_q\,
	dataf => \c0|ALT_INV_v\(0),
	combout => \c0|Equal0~0_combout\);

-- Location: FF_X2_Y6_N50
\c0|rollover_v\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key0~inputCLKENA0_outclk\,
	d => \c0|Equal0~0_combout\,
	ena => \sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c0|rollover_v~q\);

-- Location: LABCELL_X2_Y6_N21
\c0|v~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c0|v~0_combout\ = ( !\c0|v\(0) & ( !\c0|rollover_v~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \c0|ALT_INV_v\(0),
	dataf => \c0|ALT_INV_rollover_v~q\,
	combout => \c0|v~0_combout\);

-- Location: FF_X2_Y6_N22
\c0|v[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key0~inputCLKENA0_outclk\,
	d => \c0|v~0_combout\,
	clrn => \sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c0|v[0]~DUPLICATE_q\);

-- Location: FF_X2_Y6_N10
\c0|v[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key0~inputCLKENA0_outclk\,
	d => \c0|v~3_combout\,
	clrn => \sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c0|v[3]~DUPLICATE_q\);

-- Location: M10K_X3_Y6_N0
\rom0|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000C000081000080000500040",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "inst_mem.mif",
	init_file_layout => "port_a",
	logical_ram_name => "inst_mem:rom0|altsyncram:altsyncram_component|altsyncram_q424:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 5,
	port_b_data_width => 20,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \key0~inputCLKENA0_outclk\,
	portaaddr => \rom0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \rom0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: FF_X6_Y5_N23
\p1|ir0|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	asdata => \rom0|altsyncram_component|auto_generated|q_a\(7),
	clrn => \sw0~input_o\,
	sload => VCC,
	ena => \p1|fsm|ALT_INV_y_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(7));

-- Location: FF_X6_Y5_N59
\p1|ir0|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	asdata => \rom0|altsyncram_component|auto_generated|q_a\(8),
	clrn => \sw0~input_o\,
	sload => VCC,
	ena => \p1|fsm|ALT_INV_y_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(8));

-- Location: LABCELL_X6_Y5_N12
\p1|fsm|y_D.T2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|y_D.T2~0_combout\ = ( !\p1|ir0|Q\(8) & ( (\p1|ir0|Q\(7) & \p1|fsm|y_Q.T1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|ir0|ALT_INV_Q\(7),
	datad => \p1|fsm|ALT_INV_y_Q.T1~q\,
	dataf => \p1|ir0|ALT_INV_Q\(8),
	combout => \p1|fsm|y_D.T2~0_combout\);

-- Location: FF_X6_Y5_N14
\p1|fsm|y_Q.T2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	d => \p1|fsm|y_D.T2~0_combout\,
	clrn => \sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|fsm|y_Q.T2~q\);

-- Location: LABCELL_X6_Y5_N42
\p1|fsm|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector1~0_combout\ = ( \p1|fsm|y_Q.T0~q\ & ( \p1|fsm|y_Q.T2~q\ & ( (\p1|ir0|Q\(7) & !\p1|ir0|Q\(8)) ) ) ) # ( !\p1|fsm|y_Q.T0~q\ & ( \p1|fsm|y_Q.T2~q\ & ( ((\p1|ir0|Q\(7) & !\p1|ir0|Q\(8))) # (\sw9~input_o\) ) ) ) # ( \p1|fsm|y_Q.T0~q\ & ( 
-- !\p1|fsm|y_Q.T2~q\ & ( (\p1|fsm|y_Q.T1~q\ & (\p1|ir0|Q\(7) & !\p1|ir0|Q\(8))) ) ) ) # ( !\p1|fsm|y_Q.T0~q\ & ( !\p1|fsm|y_Q.T2~q\ & ( ((\p1|fsm|y_Q.T1~q\ & (\p1|ir0|Q\(7) & !\p1|ir0|Q\(8)))) # (\sw9~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011101010101000000110000000001011111010101010000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw9~input_o\,
	datab => \p1|fsm|ALT_INV_y_Q.T1~q\,
	datac => \p1|ir0|ALT_INV_Q\(7),
	datad => \p1|ir0|ALT_INV_Q\(8),
	datae => \p1|fsm|ALT_INV_y_Q.T0~q\,
	dataf => \p1|fsm|ALT_INV_y_Q.T2~q\,
	combout => \p1|fsm|Selector1~0_combout\);

-- Location: FF_X6_Y5_N44
\p1|fsm|y_Q.T0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	d => \p1|fsm|Selector1~0_combout\,
	clrn => \sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|fsm|y_Q.T0~q\);

-- Location: LABCELL_X6_Y5_N36
\p1|fsm|y_D.T1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|y_D.T1~0_combout\ = ( \sw9~input_o\ & ( !\p1|fsm|y_Q.T0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|fsm|ALT_INV_y_Q.T0~q\,
	dataf => \ALT_INV_sw9~input_o\,
	combout => \p1|fsm|y_D.T1~0_combout\);

-- Location: FF_X6_Y5_N47
\p1|fsm|y_Q.T1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	asdata => \p1|fsm|y_D.T1~0_combout\,
	clrn => \sw0~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|fsm|y_Q.T1~q\);

-- Location: LABCELL_X5_Y5_N6
\p1|fsm|Selector18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector18~0_combout\ = ( \p1|ir0|Q\(8) & ( !\p1|fsm|y_Q.T1~q\ ) ) # ( !\p1|ir0|Q\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|fsm|ALT_INV_y_Q.T1~q\,
	dataf => \p1|ir0|ALT_INV_Q\(8),
	combout => \p1|fsm|Selector18~0_combout\);

-- Location: FF_X6_Y5_N38
\p1|ir0|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	asdata => \rom0|altsyncram_component|auto_generated|q_a\(6),
	clrn => \sw0~input_o\,
	sload => VCC,
	ena => \p1|fsm|ALT_INV_y_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(6));

-- Location: LABCELL_X6_Y5_N0
\p1|fsm|Selector13~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector13~3_combout\ = (!\p1|fsm|y_Q.T2~q\ & (((!\p1|fsm|y_Q.T1~q\) # (\p1|ir0|Q\(6))) # (\p1|ir0|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111100000000110111110000000011011111000000001101111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(7),
	datab => \p1|fsm|ALT_INV_y_Q.T1~q\,
	datac => \p1|ir0|ALT_INV_Q\(6),
	datad => \p1|fsm|ALT_INV_y_Q.T2~q\,
	combout => \p1|fsm|Selector13~3_combout\);

-- Location: FF_X5_Y5_N59
\p1|ir0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	asdata => \rom0|altsyncram_component|auto_generated|q_a\(3),
	clrn => \sw0~input_o\,
	sload => VCC,
	ena => \p1|fsm|ALT_INV_y_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(3));

-- Location: FF_X5_Y5_N5
\p1|ir0|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	asdata => \rom0|altsyncram_component|auto_generated|q_a\(4),
	clrn => \sw0~input_o\,
	sload => VCC,
	ena => \p1|fsm|ALT_INV_y_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(4));

-- Location: FF_X5_Y5_N8
\p1|ir0|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	asdata => \rom0|altsyncram_component|auto_generated|q_a\(5),
	clrn => \sw0~input_o\,
	sload => VCC,
	ena => \p1|fsm|ALT_INV_y_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(5));

-- Location: LABCELL_X6_Y5_N39
\p1|fsm|Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector17~0_combout\ = ( !\p1|ir0|Q\(5) & ( (\p1|ir0|Q\(7) & (\p1|fsm|y_Q.T1~q\ & (!\p1|ir0|Q\(3) & !\p1|ir0|Q\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(7),
	datab => \p1|fsm|ALT_INV_y_Q.T1~q\,
	datac => \p1|ir0|ALT_INV_Q\(3),
	datad => \p1|ir0|ALT_INV_Q\(4),
	dataf => \p1|ir0|ALT_INV_Q\(5),
	combout => \p1|fsm|Selector17~0_combout\);

-- Location: FF_X5_Y5_N17
\p1|ir0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	asdata => \rom0|altsyncram_component|auto_generated|q_a\(1),
	clrn => \sw0~input_o\,
	sload => VCC,
	ena => \p1|fsm|ALT_INV_y_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(1));

-- Location: FF_X5_Y5_N50
\p1|ir0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	asdata => \rom0|altsyncram_component|auto_generated|q_a\(0),
	clrn => \sw0~input_o\,
	sload => VCC,
	ena => \p1|fsm|ALT_INV_y_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(0));

-- Location: FF_X5_Y5_N29
\p1|ir0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	asdata => \rom0|altsyncram_component|auto_generated|q_a\(2),
	clrn => \sw0~input_o\,
	sload => VCC,
	ena => \p1|fsm|ALT_INV_y_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(2));

-- Location: LABCELL_X6_Y5_N27
\p1|fsm|Selector17~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector17~1_combout\ = ( \p1|ir0|Q\(2) & ( \p1|fsm|Selector17~0_combout\ ) ) # ( !\p1|ir0|Q\(2) & ( ((!\p1|fsm|Selector13~3_combout\ & (!\p1|ir0|Q\(1) & !\p1|ir0|Q\(0)))) # (\p1|fsm|Selector17~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001100110011101100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector13~3_combout\,
	datab => \p1|fsm|ALT_INV_Selector17~0_combout\,
	datac => \p1|ir0|ALT_INV_Q\(1),
	datad => \p1|ir0|ALT_INV_Q\(0),
	dataf => \p1|ir0|ALT_INV_Q\(2),
	combout => \p1|fsm|Selector17~1_combout\);

-- Location: LABCELL_X5_Y5_N33
\p1|fsm|R0toR7out[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|R0toR7out\(0) = ( \p1|fsm|Selector17~1_combout\ & ( (\p1|fsm|Selector18~0_combout\) # (\p1|fsm|R0toR7out\(0)) ) ) # ( !\p1|fsm|Selector17~1_combout\ & ( (\p1|fsm|R0toR7out\(0) & !\p1|fsm|Selector18~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|fsm|ALT_INV_R0toR7out\(0),
	datad => \p1|fsm|ALT_INV_Selector18~0_combout\,
	dataf => \p1|fsm|ALT_INV_Selector17~1_combout\,
	combout => \p1|fsm|R0toR7out\(0));

-- Location: LABCELL_X6_Y5_N30
\p1|fsm|Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector13~0_combout\ = ( \p1|ir0|Q\(2) & ( ((!\p1|ir0|Q\(7) & (\p1|fsm|y_Q.T1~q\ & !\p1|ir0|Q\(6)))) # (\p1|fsm|y_Q.T2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000101111000011110010111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(7),
	datab => \p1|fsm|ALT_INV_y_Q.T1~q\,
	datac => \p1|fsm|ALT_INV_y_Q.T2~q\,
	datad => \p1|ir0|ALT_INV_Q\(6),
	dataf => \p1|ir0|ALT_INV_Q\(2),
	combout => \p1|fsm|Selector13~0_combout\);

-- Location: LABCELL_X6_Y5_N21
\p1|fsm|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector2~0_combout\ = ( \p1|ir0|Q\(5) & ( (\p1|ir0|Q\(4) & (\p1|fsm|y_Q.T1~q\ & (\p1|ir0|Q\(3) & \p1|ir0|Q\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(4),
	datab => \p1|fsm|ALT_INV_y_Q.T1~q\,
	datac => \p1|ir0|ALT_INV_Q\(3),
	datad => \p1|ir0|ALT_INV_Q\(7),
	dataf => \p1|ir0|ALT_INV_Q\(5),
	combout => \p1|fsm|Selector2~0_combout\);

-- Location: LABCELL_X6_Y5_N57
\p1|fsm|Selector2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector2~1_combout\ = ( \p1|ir0|Q\(1) & ( ((\p1|fsm|Selector13~0_combout\ & \p1|ir0|Q\(0))) # (\p1|fsm|Selector2~0_combout\) ) ) # ( !\p1|ir0|Q\(1) & ( \p1|fsm|Selector2~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector13~0_combout\,
	datab => \p1|ir0|ALT_INV_Q\(0),
	datac => \p1|fsm|ALT_INV_Selector2~0_combout\,
	dataf => \p1|ir0|ALT_INV_Q\(1),
	combout => \p1|fsm|Selector2~1_combout\);

-- Location: LABCELL_X6_Y5_N3
\p1|fsm|R0toR7out[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|R0toR7out\(7) = ( \p1|fsm|Selector18~0_combout\ & ( \p1|fsm|Selector2~1_combout\ ) ) # ( !\p1|fsm|Selector18~0_combout\ & ( \p1|fsm|R0toR7out\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|fsm|ALT_INV_Selector2~1_combout\,
	datad => \p1|fsm|ALT_INV_R0toR7out\(7),
	dataf => \p1|fsm|ALT_INV_Selector18~0_combout\,
	combout => \p1|fsm|R0toR7out\(7));

-- Location: LABCELL_X5_Y5_N57
\p1|fsm|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector0~0_combout\ = ( \p1|ir0|Q\(5) & ( (\p1|ir0|Q\(4) & (\p1|fsm|y_Q.T1~q\ & (\p1|ir0|Q\(7) & !\p1|ir0|Q\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(4),
	datab => \p1|fsm|ALT_INV_y_Q.T1~q\,
	datac => \p1|ir0|ALT_INV_Q\(7),
	datad => \p1|ir0|ALT_INV_Q\(3),
	dataf => \p1|ir0|ALT_INV_Q\(5),
	combout => \p1|fsm|Selector0~0_combout\);

-- Location: LABCELL_X5_Y5_N36
\p1|fsm|Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector0~1_combout\ = ( \p1|ir0|Q\(0) & ( \p1|fsm|Selector0~0_combout\ ) ) # ( !\p1|ir0|Q\(0) & ( ((\p1|fsm|Selector13~0_combout\ & \p1|ir0|Q\(1))) # (\p1|fsm|Selector0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|fsm|ALT_INV_Selector13~0_combout\,
	datac => \p1|fsm|ALT_INV_Selector0~0_combout\,
	datad => \p1|ir0|ALT_INV_Q\(1),
	dataf => \p1|ir0|ALT_INV_Q\(0),
	combout => \p1|fsm|Selector0~1_combout\);

-- Location: LABCELL_X5_Y5_N39
\p1|fsm|R0toR7out[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|R0toR7out\(6) = ( \p1|fsm|Selector0~1_combout\ & ( (\p1|fsm|Selector18~0_combout\) # (\p1|fsm|R0toR7out\(6)) ) ) # ( !\p1|fsm|Selector0~1_combout\ & ( (\p1|fsm|R0toR7out\(6) & !\p1|fsm|Selector18~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|fsm|ALT_INV_R0toR7out\(6),
	datad => \p1|fsm|ALT_INV_Selector18~0_combout\,
	dataf => \p1|fsm|ALT_INV_Selector0~1_combout\,
	combout => \p1|fsm|R0toR7out\(6));

-- Location: LABCELL_X5_Y5_N18
\p1|fsm|Selector13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector13~1_combout\ = ( \p1|ir0|Q\(5) & ( (\p1|fsm|y_Q.T1~q\ & (!\p1|ir0|Q\(4) & \p1|ir0|Q\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|fsm|ALT_INV_y_Q.T1~q\,
	datac => \p1|ir0|ALT_INV_Q\(4),
	datad => \p1|ir0|ALT_INV_Q\(7),
	dataf => \p1|ir0|ALT_INV_Q\(5),
	combout => \p1|fsm|Selector13~1_combout\);

-- Location: LABCELL_X5_Y5_N48
\p1|fsm|Selector13~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector13~2_combout\ = ( \p1|fsm|Selector13~1_combout\ & ( (!\p1|ir0|Q\(3)) # ((!\p1|ir0|Q\(1) & (\p1|fsm|Selector13~0_combout\ & !\p1|ir0|Q\(0)))) ) ) # ( !\p1|fsm|Selector13~1_combout\ & ( (!\p1|ir0|Q\(1) & (\p1|fsm|Selector13~0_combout\ & 
-- !\p1|ir0|Q\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000011001110110011001100111011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(1),
	datab => \p1|ir0|ALT_INV_Q\(3),
	datac => \p1|fsm|ALT_INV_Selector13~0_combout\,
	datad => \p1|ir0|ALT_INV_Q\(0),
	dataf => \p1|fsm|ALT_INV_Selector13~1_combout\,
	combout => \p1|fsm|Selector13~2_combout\);

-- Location: LABCELL_X5_Y5_N21
\p1|fsm|R0toR7out[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|R0toR7out\(4) = ( \p1|fsm|Selector13~2_combout\ & ( (\p1|fsm|R0toR7out\(4)) # (\p1|fsm|Selector18~0_combout\) ) ) # ( !\p1|fsm|Selector13~2_combout\ & ( (!\p1|fsm|Selector18~0_combout\ & \p1|fsm|R0toR7out\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector18~0_combout\,
	datad => \p1|fsm|ALT_INV_R0toR7out\(4),
	dataf => \p1|fsm|ALT_INV_Selector13~2_combout\,
	combout => \p1|fsm|R0toR7out\(4));

-- Location: LABCELL_X5_Y5_N24
\p1|fsm|Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector12~0_combout\ = ( \p1|fsm|Selector13~1_combout\ & ( ((\p1|ir0|Q\(0) & (!\p1|ir0|Q\(1) & \p1|fsm|Selector13~0_combout\))) # (\p1|ir0|Q\(3)) ) ) # ( !\p1|fsm|Selector13~1_combout\ & ( (\p1|ir0|Q\(0) & (!\p1|ir0|Q\(1) & 
-- \p1|fsm|Selector13~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100111111110000010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(0),
	datab => \p1|ir0|ALT_INV_Q\(1),
	datac => \p1|fsm|ALT_INV_Selector13~0_combout\,
	datad => \p1|ir0|ALT_INV_Q\(3),
	dataf => \p1|fsm|ALT_INV_Selector13~1_combout\,
	combout => \p1|fsm|Selector12~0_combout\);

-- Location: LABCELL_X5_Y5_N54
\p1|fsm|R0toR7out[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|R0toR7out\(5) = ( \p1|fsm|Selector12~0_combout\ & ( (\p1|fsm|R0toR7out\(5)) # (\p1|fsm|Selector18~0_combout\) ) ) # ( !\p1|fsm|Selector12~0_combout\ & ( (!\p1|fsm|Selector18~0_combout\ & \p1|fsm|R0toR7out\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|fsm|ALT_INV_Selector18~0_combout\,
	datad => \p1|fsm|ALT_INV_R0toR7out\(5),
	dataf => \p1|fsm|ALT_INV_Selector12~0_combout\,
	combout => \p1|fsm|R0toR7out\(5));

-- Location: LABCELL_X6_Y5_N15
\p1|fsm|Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector14~0_combout\ = ( \p1|ir0|Q\(3) & ( (\p1|ir0|Q\(7) & (\p1|fsm|y_Q.T1~q\ & (!\p1|ir0|Q\(5) & \p1|ir0|Q\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(7),
	datab => \p1|fsm|ALT_INV_y_Q.T1~q\,
	datac => \p1|ir0|ALT_INV_Q\(5),
	datad => \p1|ir0|ALT_INV_Q\(4),
	dataf => \p1|ir0|ALT_INV_Q\(3),
	combout => \p1|fsm|Selector14~0_combout\);

-- Location: LABCELL_X6_Y5_N9
\p1|fsm|Selector14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector14~1_combout\ = ( \p1|ir0|Q\(1) & ( ((!\p1|ir0|Q\(2) & (!\p1|fsm|Selector13~3_combout\ & \p1|ir0|Q\(0)))) # (\p1|fsm|Selector14~0_combout\) ) ) # ( !\p1|ir0|Q\(1) & ( \p1|fsm|Selector14~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011101100110011001110110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(2),
	datab => \p1|fsm|ALT_INV_Selector14~0_combout\,
	datac => \p1|fsm|ALT_INV_Selector13~3_combout\,
	datad => \p1|ir0|ALT_INV_Q\(0),
	dataf => \p1|ir0|ALT_INV_Q\(1),
	combout => \p1|fsm|Selector14~1_combout\);

-- Location: LABCELL_X5_Y5_N42
\p1|fsm|R0toR7out[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|R0toR7out\(3) = ( \p1|fsm|R0toR7out\(3) & ( (!\p1|fsm|Selector18~0_combout\) # (\p1|fsm|Selector14~1_combout\) ) ) # ( !\p1|fsm|R0toR7out\(3) & ( (\p1|fsm|Selector14~1_combout\ & \p1|fsm|Selector18~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|fsm|ALT_INV_Selector14~1_combout\,
	datad => \p1|fsm|ALT_INV_Selector18~0_combout\,
	dataf => \p1|fsm|ALT_INV_R0toR7out\(3),
	combout => \p1|fsm|R0toR7out\(3));

-- Location: LABCELL_X5_Y5_N30
\p1|mux0|y[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~6_combout\ = ( !\p1|fsm|R0toR7out\(3) & ( (!\p1|fsm|R0toR7out\(7) & (!\p1|fsm|R0toR7out\(6) & (!\p1|fsm|R0toR7out\(4) & !\p1|fsm|R0toR7out\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_R0toR7out\(7),
	datab => \p1|fsm|ALT_INV_R0toR7out\(6),
	datac => \p1|fsm|ALT_INV_R0toR7out\(4),
	datad => \p1|fsm|ALT_INV_R0toR7out\(5),
	dataf => \p1|fsm|ALT_INV_R0toR7out\(3),
	combout => \p1|mux0|y[1]~6_combout\);

-- Location: LABCELL_X6_Y5_N48
\p1|fsm|Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector15~0_combout\ = ( !\p1|ir0|Q\(3) & ( (\p1|ir0|Q\(7) & (\p1|fsm|y_Q.T1~q\ & (\p1|ir0|Q\(4) & !\p1|ir0|Q\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(7),
	datab => \p1|fsm|ALT_INV_y_Q.T1~q\,
	datac => \p1|ir0|ALT_INV_Q\(4),
	datad => \p1|ir0|ALT_INV_Q\(5),
	dataf => \p1|ir0|ALT_INV_Q\(3),
	combout => \p1|fsm|Selector15~0_combout\);

-- Location: LABCELL_X5_Y5_N27
\p1|fsm|Selector15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector15~1_combout\ = ( \p1|fsm|Selector15~0_combout\ ) # ( !\p1|fsm|Selector15~0_combout\ & ( (!\p1|ir0|Q\(0) & (\p1|ir0|Q\(1) & (!\p1|fsm|Selector13~3_combout\ & !\p1|ir0|Q\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(0),
	datab => \p1|ir0|ALT_INV_Q\(1),
	datac => \p1|fsm|ALT_INV_Selector13~3_combout\,
	datad => \p1|ir0|ALT_INV_Q\(2),
	dataf => \p1|fsm|ALT_INV_Selector15~0_combout\,
	combout => \p1|fsm|Selector15~1_combout\);

-- Location: LABCELL_X5_Y5_N45
\p1|fsm|R0toR7out[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|R0toR7out\(2) = (!\p1|fsm|Selector18~0_combout\ & ((\p1|fsm|R0toR7out\(2)))) # (\p1|fsm|Selector18~0_combout\ & (\p1|fsm|Selector15~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector18~0_combout\,
	datab => \p1|fsm|ALT_INV_Selector15~1_combout\,
	datad => \p1|fsm|ALT_INV_R0toR7out\(2),
	combout => \p1|fsm|R0toR7out\(2));

-- Location: LABCELL_X6_Y5_N33
\p1|fsm|Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector16~0_combout\ = ( \p1|ir0|Q\(3) & ( (\p1|ir0|Q\(7) & (\p1|fsm|y_Q.T1~q\ & (!\p1|ir0|Q\(5) & !\p1|ir0|Q\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(7),
	datab => \p1|fsm|ALT_INV_y_Q.T1~q\,
	datac => \p1|ir0|ALT_INV_Q\(5),
	datad => \p1|ir0|ALT_INV_Q\(4),
	dataf => \p1|ir0|ALT_INV_Q\(3),
	combout => \p1|fsm|Selector16~0_combout\);

-- Location: LABCELL_X5_Y5_N15
\p1|fsm|Selector16~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector16~1_combout\ = ( \p1|ir0|Q\(0) & ( ((!\p1|fsm|Selector13~3_combout\ & (!\p1|ir0|Q\(2) & !\p1|ir0|Q\(1)))) # (\p1|fsm|Selector16~0_combout\) ) ) # ( !\p1|ir0|Q\(0) & ( \p1|fsm|Selector16~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111010101010101011101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector16~0_combout\,
	datab => \p1|fsm|ALT_INV_Selector13~3_combout\,
	datac => \p1|ir0|ALT_INV_Q\(2),
	datad => \p1|ir0|ALT_INV_Q\(1),
	dataf => \p1|ir0|ALT_INV_Q\(0),
	combout => \p1|fsm|Selector16~1_combout\);

-- Location: LABCELL_X5_Y5_N9
\p1|fsm|R0toR7out[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|R0toR7out\(1) = ( \p1|fsm|R0toR7out\(1) & ( (!\p1|fsm|Selector18~0_combout\) # (\p1|fsm|Selector16~1_combout\) ) ) # ( !\p1|fsm|R0toR7out\(1) & ( (\p1|fsm|Selector16~1_combout\ & \p1|fsm|Selector18~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|fsm|ALT_INV_Selector16~1_combout\,
	datad => \p1|fsm|ALT_INV_Selector18~0_combout\,
	dataf => \p1|fsm|ALT_INV_R0toR7out\(1),
	combout => \p1|fsm|R0toR7out\(1));

-- Location: LABCELL_X6_Y5_N24
\p1|fsm|y_D.T3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|y_D.T3~0_combout\ = ( \p1|fsm|y_Q.T2~q\ & ( (\p1|ir0|Q\(7) & !\p1|ir0|Q\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|ir0|ALT_INV_Q\(7),
	datad => \p1|ir0|ALT_INV_Q\(8),
	dataf => \p1|fsm|ALT_INV_y_Q.T2~q\,
	combout => \p1|fsm|y_D.T3~0_combout\);

-- Location: FF_X6_Y5_N26
\p1|fsm|y_Q.T3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	d => \p1|fsm|y_D.T3~0_combout\,
	clrn => \sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|fsm|y_Q.T3~q\);

-- Location: LABCELL_X6_Y5_N51
\p1|fsm|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Equal0~0_combout\ = ( !\p1|ir0|Q\(8) & ( \p1|ir0|Q\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \p1|ir0|ALT_INV_Q\(7),
	dataf => \p1|ir0|ALT_INV_Q\(8),
	combout => \p1|fsm|Equal0~0_combout\);

-- Location: LABCELL_X7_Y5_N51
\p1|fsm|Gout\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Gout~combout\ = ( \p1|fsm|Gout~combout\ & ( \p1|fsm|y_Q.T3~q\ ) ) # ( !\p1|fsm|Gout~combout\ & ( (\p1|fsm|y_Q.T3~q\ & \p1|fsm|Equal0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T3~q\,
	datac => \p1|fsm|ALT_INV_Equal0~0_combout\,
	dataf => \p1|fsm|ALT_INV_Gout~combout\,
	combout => \p1|fsm|Gout~combout\);

-- Location: LABCELL_X5_Y4_N0
\p1|mux0|y[1]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~10_combout\ = ( \p1|ir0|Q\(6) & ( \p1|ir0|Q\(8) & ( \p1|fsm|Gout~combout\ ) ) ) # ( !\p1|ir0|Q\(6) & ( \p1|ir0|Q\(8) & ( \p1|fsm|Gout~combout\ ) ) ) # ( \p1|ir0|Q\(6) & ( !\p1|ir0|Q\(8) & ( (\p1|fsm|Gout~combout\ & ((!\p1|fsm|y_Q.T1~q\) # 
-- (\p1|ir0|Q\(7)))) ) ) ) # ( !\p1|ir0|Q\(6) & ( !\p1|ir0|Q\(8) & ( \p1|fsm|Gout~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000010100000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T1~q\,
	datac => \p1|fsm|ALT_INV_Gout~combout\,
	datad => \p1|ir0|ALT_INV_Q\(7),
	datae => \p1|ir0|ALT_INV_Q\(6),
	dataf => \p1|ir0|ALT_INV_Q\(8),
	combout => \p1|mux0|y[1]~10_combout\);

-- Location: LABCELL_X5_Y5_N51
\p1|mux0|y[1]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~8_combout\ = ( !\p1|fsm|R0toR7out\(0) & ( !\p1|fsm|R0toR7out\(1) $ (\p1|fsm|R0toR7out\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|fsm|ALT_INV_R0toR7out\(1),
	datad => \p1|fsm|ALT_INV_R0toR7out\(2),
	dataf => \p1|fsm|ALT_INV_R0toR7out\(0),
	combout => \p1|mux0|y[1]~8_combout\);

-- Location: LABCELL_X5_Y5_N0
\p1|mux0|y[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~7_combout\ = ( !\p1|fsm|R0toR7out\(5) & ( \p1|fsm|R0toR7out\(6) & ( (!\p1|fsm|R0toR7out\(3) & (!\p1|fsm|R0toR7out\(4) & (!\p1|fsm|R0toR7out\(7) & !\p1|fsm|R0toR7out\(1)))) ) ) ) # ( \p1|fsm|R0toR7out\(5) & ( !\p1|fsm|R0toR7out\(6) & ( 
-- (!\p1|fsm|R0toR7out\(3) & (!\p1|fsm|R0toR7out\(4) & (!\p1|fsm|R0toR7out\(7) & !\p1|fsm|R0toR7out\(1)))) ) ) ) # ( !\p1|fsm|R0toR7out\(5) & ( !\p1|fsm|R0toR7out\(6) & ( (!\p1|fsm|R0toR7out\(1) & ((!\p1|fsm|R0toR7out\(3) & (!\p1|fsm|R0toR7out\(4) $ 
-- (!\p1|fsm|R0toR7out\(7)))) # (\p1|fsm|R0toR7out\(3) & (!\p1|fsm|R0toR7out\(4) & !\p1|fsm|R0toR7out\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100000000000100000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_R0toR7out\(3),
	datab => \p1|fsm|ALT_INV_R0toR7out\(4),
	datac => \p1|fsm|ALT_INV_R0toR7out\(7),
	datad => \p1|fsm|ALT_INV_R0toR7out\(1),
	datae => \p1|fsm|ALT_INV_R0toR7out\(5),
	dataf => \p1|fsm|ALT_INV_R0toR7out\(6),
	combout => \p1|mux0|y[1]~7_combout\);

-- Location: LABCELL_X5_Y4_N6
\p1|mux0|y[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~9_combout\ = ( \p1|ir0|Q\(6) & ( \p1|fsm|y_Q.T1~q\ & ( (!\p1|mux0|y[1]~8_combout\ & (!\p1|ir0|Q\(8) & ((!\p1|ir0|Q\(7))))) # (\p1|mux0|y[1]~8_combout\ & ((!\p1|mux0|y[1]~7_combout\) # ((!\p1|ir0|Q\(8) & !\p1|ir0|Q\(7))))) ) ) ) # ( 
-- !\p1|ir0|Q\(6) & ( \p1|fsm|y_Q.T1~q\ & ( (\p1|mux0|y[1]~8_combout\ & !\p1|mux0|y[1]~7_combout\) ) ) ) # ( \p1|ir0|Q\(6) & ( !\p1|fsm|y_Q.T1~q\ & ( (\p1|mux0|y[1]~8_combout\ & !\p1|mux0|y[1]~7_combout\) ) ) ) # ( !\p1|ir0|Q\(6) & ( !\p1|fsm|y_Q.T1~q\ & ( 
-- (\p1|mux0|y[1]~8_combout\ & !\p1|mux0|y[1]~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001010000010100001101110001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[1]~8_combout\,
	datab => \p1|ir0|ALT_INV_Q\(8),
	datac => \p1|mux0|ALT_INV_y[1]~7_combout\,
	datad => \p1|ir0|ALT_INV_Q\(7),
	datae => \p1|ir0|ALT_INV_Q\(6),
	dataf => \p1|fsm|ALT_INV_y_Q.T1~q\,
	combout => \p1|mux0|y[1]~9_combout\);

-- Location: LABCELL_X5_Y4_N18
\p1|mux0|y[1]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~11_combout\ = ( !\p1|mux0|y[1]~10_combout\ & ( \p1|mux0|y[1]~9_combout\ ) ) # ( !\p1|mux0|y[1]~10_combout\ & ( !\p1|mux0|y[1]~9_combout\ & ( (!\p1|fsm|R0toR7out\(0)) # ((!\p1|mux0|y[1]~6_combout\) # ((\p1|fsm|R0toR7out\(1)) # 
-- (\p1|fsm|R0toR7out\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_R0toR7out\(0),
	datab => \p1|mux0|ALT_INV_y[1]~6_combout\,
	datac => \p1|fsm|ALT_INV_R0toR7out\(2),
	datad => \p1|fsm|ALT_INV_R0toR7out\(1),
	datae => \p1|mux0|ALT_INV_y[1]~10_combout\,
	dataf => \p1|mux0|ALT_INV_y[1]~9_combout\,
	combout => \p1|mux0|y[1]~11_combout\);

-- Location: LABCELL_X6_Y5_N6
\p1|fsm|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Equal0~1_combout\ = ( !\p1|ir0|Q\(8) & ( (\p1|ir0|Q\(7) & \p1|ir0|Q\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|ir0|ALT_INV_Q\(7),
	datad => \p1|ir0|ALT_INV_Q\(6),
	dataf => \p1|ir0|ALT_INV_Q\(8),
	combout => \p1|fsm|Equal0~1_combout\);

-- Location: LABCELL_X6_Y5_N18
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

-- Location: LABCELL_X6_Y5_N54
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

-- Location: FF_X4_Y4_N14
\p1|regA|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	d => \p1|mux0|y[2]~19_combout\,
	clrn => \sw0~input_o\,
	ena => \p1|fsm|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regA|Q\(2));

-- Location: FF_X4_Y4_N55
\p1|regA|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[1]~16_combout\,
	clrn => \sw0~input_o\,
	sload => VCC,
	ena => \p1|fsm|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regA|Q\(1));

-- Location: LABCELL_X5_Y4_N12
\p1|mux0|y[1]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~12_combout\ = ( \p1|fsm|R0toR7out\(1) & ( !\p1|mux0|y[1]~9_combout\ & ( (!\p1|fsm|R0toR7out\(0) & (!\p1|fsm|Gout~combout\ & ((\p1|mux0|y[1]~6_combout\) # (\p1|fsm|R0toR7out\(2))))) ) ) ) # ( !\p1|fsm|R0toR7out\(1) & ( 
-- !\p1|mux0|y[1]~9_combout\ & ( (!\p1|fsm|Gout~combout\ & ((!\p1|fsm|R0toR7out\(0) & ((!\p1|fsm|R0toR7out\(2)) # (\p1|mux0|y[1]~6_combout\))) # (\p1|fsm|R0toR7out\(0) & (!\p1|fsm|R0toR7out\(2) & \p1|mux0|y[1]~6_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011001000000010001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_R0toR7out\(0),
	datab => \p1|fsm|ALT_INV_Gout~combout\,
	datac => \p1|fsm|ALT_INV_R0toR7out\(2),
	datad => \p1|mux0|ALT_INV_y[1]~6_combout\,
	datae => \p1|fsm|ALT_INV_R0toR7out\(1),
	dataf => \p1|mux0|ALT_INV_y[1]~9_combout\,
	combout => \p1|mux0|y[1]~12_combout\);

-- Location: FF_X4_Y4_N16
\p1|regA|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[0]~13_combout\,
	clrn => \sw0~input_o\,
	sload => VCC,
	ena => \p1|fsm|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regA|Q\(0));

-- Location: LABCELL_X5_Y4_N30
\p1|addsub0|Add0~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~38_cout\ = CARRY(( \p1|fsm|AddSub~combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|fsm|ALT_INV_AddSub~combout\,
	cin => GND,
	cout => \p1|addsub0|Add0~38_cout\);

-- Location: LABCELL_X5_Y4_N33
\p1|addsub0|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~1_sumout\ = SUM(( !\p1|fsm|AddSub~combout\ $ (!\p1|mux0|y[0]~13_combout\) ) + ( \p1|regA|Q\(0) ) + ( \p1|addsub0|Add0~38_cout\ ))
-- \p1|addsub0|Add0~2\ = CARRY(( !\p1|fsm|AddSub~combout\ $ (!\p1|mux0|y[0]~13_combout\) ) + ( \p1|regA|Q\(0) ) + ( \p1|addsub0|Add0~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_AddSub~combout\,
	datab => \p1|mux0|ALT_INV_y[0]~13_combout\,
	datac => \p1|regA|ALT_INV_Q\(0),
	cin => \p1|addsub0|Add0~38_cout\,
	sumout => \p1|addsub0|Add0~1_sumout\,
	cout => \p1|addsub0|Add0~2\);

-- Location: FF_X5_Y4_N35
\p1|regG|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	d => \p1|addsub0|Add0~1_sumout\,
	clrn => \sw0~input_o\,
	ena => \p1|fsm|y_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regG|Q\(0));

-- Location: LABCELL_X7_Y5_N21
\p1|fsm|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector3~0_combout\ = ( \p1|fsm|y_Q.T3~q\ & ( (!\p1|ir0|Q\(8) & ((\p1|ir0|Q\(7)) # (\p1|fsm|y_Q.T1~q\))) ) ) # ( !\p1|fsm|y_Q.T3~q\ & ( (\p1|fsm|y_Q.T1~q\ & (!\p1|ir0|Q\(8) & !\p1|ir0|Q\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000001010000111100000101000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T1~q\,
	datac => \p1|ir0|ALT_INV_Q\(8),
	datad => \p1|ir0|ALT_INV_Q\(7),
	dataf => \p1|fsm|ALT_INV_y_Q.T3~q\,
	combout => \p1|fsm|Selector3~0_combout\);

-- Location: LABCELL_X7_Y5_N24
\p1|fsm|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector6~0_combout\ = ( \p1|ir0|Q\(3) & ( \p1|fsm|Selector3~0_combout\ & ( (\p1|ir0|Q\(4) & !\p1|ir0|Q\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(4),
	datac => \p1|ir0|ALT_INV_Q\(5),
	datae => \p1|ir0|ALT_INV_Q\(3),
	dataf => \p1|fsm|ALT_INV_Selector3~0_combout\,
	combout => \p1|fsm|Selector6~0_combout\);

-- Location: FF_X5_Y3_N43
\p1|reg3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[0]~13_combout\,
	clrn => \sw0~input_o\,
	sload => VCC,
	ena => \p1|fsm|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(0));

-- Location: LABCELL_X5_Y3_N18
\p1|mux0|y[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~4_combout\ = ( !\p1|fsm|R0toR7out\(2) & ( !\p1|fsm|R0toR7out\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \p1|fsm|ALT_INV_R0toR7out\(1),
	dataf => \p1|fsm|ALT_INV_R0toR7out\(2),
	combout => \p1|mux0|y[1]~4_combout\);

-- Location: LABCELL_X7_Y5_N54
\p1|fsm|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector4~0_combout\ = ( \p1|ir0|Q\(3) & ( \p1|fsm|Selector3~0_combout\ & ( (!\p1|ir0|Q\(4) & !\p1|ir0|Q\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(4),
	datac => \p1|ir0|ALT_INV_Q\(5),
	datae => \p1|ir0|ALT_INV_Q\(3),
	dataf => \p1|fsm|ALT_INV_Selector3~0_combout\,
	combout => \p1|fsm|Selector4~0_combout\);

-- Location: FF_X7_Y4_N23
\p1|reg1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[0]~13_combout\,
	clrn => \sw0~input_o\,
	sload => VCC,
	ena => \p1|fsm|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(0));

-- Location: LABCELL_X7_Y3_N57
\p1|reg2|Q[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg2|Q[0]~feeder_combout\ = ( \p1|mux0|y[0]~13_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[0]~13_combout\,
	combout => \p1|reg2|Q[0]~feeder_combout\);

-- Location: LABCELL_X7_Y5_N42
\p1|fsm|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector5~0_combout\ = ( !\p1|ir0|Q\(3) & ( \p1|fsm|Selector3~0_combout\ & ( (\p1|ir0|Q\(4) & !\p1|ir0|Q\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(4),
	datac => \p1|ir0|ALT_INV_Q\(5),
	datae => \p1|ir0|ALT_INV_Q\(3),
	dataf => \p1|fsm|ALT_INV_Selector3~0_combout\,
	combout => \p1|fsm|Selector5~0_combout\);

-- Location: FF_X7_Y3_N58
\p1|reg2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	d => \p1|reg2|Q[0]~feeder_combout\,
	clrn => \sw0~input_o\,
	ena => \p1|fsm|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q\(0));

-- Location: MLABCELL_X4_Y3_N45
\p1|reg5|Q[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg5|Q[0]~feeder_combout\ = ( \p1|mux0|y[0]~13_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[0]~13_combout\,
	combout => \p1|reg5|Q[0]~feeder_combout\);

-- Location: LABCELL_X7_Y5_N9
\p1|fsm|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector8~0_combout\ = ( \p1|ir0|Q\(5) & ( \p1|fsm|Selector3~0_combout\ & ( (\p1|ir0|Q\(3) & !\p1|ir0|Q\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|ir0|ALT_INV_Q\(3),
	datad => \p1|ir0|ALT_INV_Q\(4),
	datae => \p1|ir0|ALT_INV_Q\(5),
	dataf => \p1|fsm|ALT_INV_Selector3~0_combout\,
	combout => \p1|fsm|Selector8~0_combout\);

-- Location: FF_X4_Y3_N46
\p1|reg5|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	d => \p1|reg5|Q[0]~feeder_combout\,
	clrn => \sw0~input_o\,
	ena => \p1|fsm|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(0));

-- Location: MLABCELL_X4_Y3_N57
\p1|reg4|Q[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg4|Q[0]~feeder_combout\ = ( \p1|mux0|y[0]~13_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[0]~13_combout\,
	combout => \p1|reg4|Q[0]~feeder_combout\);

-- Location: LABCELL_X7_Y5_N12
\p1|fsm|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector7~0_combout\ = ( \p1|ir0|Q\(5) & ( \p1|fsm|Selector3~0_combout\ & ( (!\p1|ir0|Q\(3) & !\p1|ir0|Q\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|ir0|ALT_INV_Q\(3),
	datac => \p1|ir0|ALT_INV_Q\(4),
	datae => \p1|ir0|ALT_INV_Q\(5),
	dataf => \p1|fsm|ALT_INV_Selector3~0_combout\,
	combout => \p1|fsm|Selector7~0_combout\);

-- Location: FF_X4_Y3_N58
\p1|reg4|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	d => \p1|reg4|Q[0]~feeder_combout\,
	clrn => \sw0~input_o\,
	ena => \p1|fsm|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg4|Q\(0));

-- Location: LABCELL_X5_Y5_N12
\p1|mux0|y[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~1_combout\ = ( !\p1|fsm|R0toR7out\(4) & ( !\p1|fsm|R0toR7out\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \p1|fsm|ALT_INV_R0toR7out\(5),
	dataf => \p1|fsm|ALT_INV_R0toR7out\(4),
	combout => \p1|mux0|y[1]~1_combout\);

-- Location: LABCELL_X5_Y3_N48
\p1|mux0|y[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~0_combout\ = ( \p1|fsm|R0toR7out\(5) & ( !\p1|fsm|R0toR7out\(4) ) ) # ( !\p1|fsm|R0toR7out\(5) & ( (!\p1|fsm|R0toR7out\(4) & \p1|fsm|R0toR7out\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|fsm|ALT_INV_R0toR7out\(4),
	datac => \p1|fsm|ALT_INV_R0toR7out\(6),
	dataf => \p1|fsm|ALT_INV_R0toR7out\(5),
	combout => \p1|mux0|y[1]~0_combout\);

-- Location: LABCELL_X7_Y5_N39
\p1|fsm|Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector9~0_combout\ = ( \p1|fsm|Selector3~0_combout\ & ( (\p1|ir0|Q\(4) & (!\p1|ir0|Q\(3) & \p1|ir0|Q\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010001000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(4),
	datab => \p1|ir0|ALT_INV_Q\(3),
	datad => \p1|ir0|ALT_INV_Q\(5),
	dataf => \p1|fsm|ALT_INV_Selector3~0_combout\,
	combout => \p1|fsm|Selector9~0_combout\);

-- Location: FF_X5_Y3_N2
\p1|reg6|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[0]~13_combout\,
	clrn => \sw0~input_o\,
	sload => VCC,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(0));

-- Location: LABCELL_X7_Y5_N18
\p1|fsm|Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector10~0_combout\ = ( \p1|fsm|Selector3~0_combout\ & ( (\p1|ir0|Q\(5) & (\p1|ir0|Q\(4) & \p1|ir0|Q\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|ir0|ALT_INV_Q\(5),
	datac => \p1|ir0|ALT_INV_Q\(4),
	datad => \p1|ir0|ALT_INV_Q\(3),
	dataf => \p1|fsm|ALT_INV_Selector3~0_combout\,
	combout => \p1|fsm|Selector10~0_combout\);

-- Location: FF_X6_Y3_N32
\p1|reg7|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[0]~13_combout\,
	clrn => \sw0~input_o\,
	sload => VCC,
	ena => \p1|fsm|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg7|Q\(0));

-- Location: LABCELL_X5_Y3_N3
\p1|mux0|y[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[0]~2_combout\ = ( \p1|reg6|Q\(0) & ( \p1|reg7|Q\(0) & ( ((!\p1|mux0|y[1]~0_combout\ & ((\p1|reg4|Q\(0)))) # (\p1|mux0|y[1]~0_combout\ & (\p1|reg5|Q\(0)))) # (\p1|mux0|y[1]~1_combout\) ) ) ) # ( !\p1|reg6|Q\(0) & ( \p1|reg7|Q\(0) & ( 
-- (!\p1|mux0|y[1]~1_combout\ & ((!\p1|mux0|y[1]~0_combout\ & ((\p1|reg4|Q\(0)))) # (\p1|mux0|y[1]~0_combout\ & (\p1|reg5|Q\(0))))) # (\p1|mux0|y[1]~1_combout\ & (((!\p1|mux0|y[1]~0_combout\)))) ) ) ) # ( \p1|reg6|Q\(0) & ( !\p1|reg7|Q\(0) & ( 
-- (!\p1|mux0|y[1]~1_combout\ & ((!\p1|mux0|y[1]~0_combout\ & ((\p1|reg4|Q\(0)))) # (\p1|mux0|y[1]~0_combout\ & (\p1|reg5|Q\(0))))) # (\p1|mux0|y[1]~1_combout\ & (((\p1|mux0|y[1]~0_combout\)))) ) ) ) # ( !\p1|reg6|Q\(0) & ( !\p1|reg7|Q\(0) & ( 
-- (!\p1|mux0|y[1]~1_combout\ & ((!\p1|mux0|y[1]~0_combout\ & ((\p1|reg4|Q\(0)))) # (\p1|mux0|y[1]~0_combout\ & (\p1|reg5|Q\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010000001100000101111100111111010100000011111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg5|ALT_INV_Q\(0),
	datab => \p1|reg4|ALT_INV_Q\(0),
	datac => \p1|mux0|ALT_INV_y[1]~1_combout\,
	datad => \p1|mux0|ALT_INV_y[1]~0_combout\,
	datae => \p1|reg6|ALT_INV_Q\(0),
	dataf => \p1|reg7|ALT_INV_Q\(0),
	combout => \p1|mux0|y[0]~2_combout\);

-- Location: LABCELL_X5_Y3_N21
\p1|mux0|y[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~3_combout\ = ( \p1|fsm|R0toR7out\(3) & ( !\p1|fsm|R0toR7out\(1) ) ) # ( !\p1|fsm|R0toR7out\(3) & ( (\p1|fsm|R0toR7out\(2) & !\p1|fsm|R0toR7out\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_R0toR7out\(2),
	datad => \p1|fsm|ALT_INV_R0toR7out\(1),
	dataf => \p1|fsm|ALT_INV_R0toR7out\(3),
	combout => \p1|mux0|y[1]~3_combout\);

-- Location: LABCELL_X5_Y3_N45
\p1|mux0|y[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[0]~5_combout\ = ( \p1|mux0|y[0]~2_combout\ & ( \p1|mux0|y[1]~3_combout\ & ( (!\p1|mux0|y[1]~4_combout\ & ((\p1|reg2|Q\(0)))) # (\p1|mux0|y[1]~4_combout\ & (\p1|reg3|Q\(0))) ) ) ) # ( !\p1|mux0|y[0]~2_combout\ & ( \p1|mux0|y[1]~3_combout\ & ( 
-- (!\p1|mux0|y[1]~4_combout\ & ((\p1|reg2|Q\(0)))) # (\p1|mux0|y[1]~4_combout\ & (\p1|reg3|Q\(0))) ) ) ) # ( \p1|mux0|y[0]~2_combout\ & ( !\p1|mux0|y[1]~3_combout\ & ( (\p1|reg1|Q\(0)) # (\p1|mux0|y[1]~4_combout\) ) ) ) # ( !\p1|mux0|y[0]~2_combout\ & ( 
-- !\p1|mux0|y[1]~3_combout\ & ( (!\p1|mux0|y[1]~4_combout\ & \p1|reg1|Q\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg3|ALT_INV_Q\(0),
	datab => \p1|mux0|ALT_INV_y[1]~4_combout\,
	datac => \p1|reg1|ALT_INV_Q\(0),
	datad => \p1|reg2|ALT_INV_Q\(0),
	datae => \p1|mux0|ALT_INV_y[0]~2_combout\,
	dataf => \p1|mux0|ALT_INV_y[1]~3_combout\,
	combout => \p1|mux0|y[0]~5_combout\);

-- Location: LABCELL_X7_Y5_N36
\p1|fsm|Selector3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector3~1_combout\ = ( \p1|fsm|Selector3~0_combout\ & ( (!\p1|ir0|Q\(4) & (!\p1|ir0|Q\(3) & !\p1|ir0|Q\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(4),
	datab => \p1|ir0|ALT_INV_Q\(3),
	datac => \p1|ir0|ALT_INV_Q\(5),
	dataf => \p1|fsm|ALT_INV_Selector3~0_combout\,
	combout => \p1|fsm|Selector3~1_combout\);

-- Location: FF_X5_Y4_N26
\p1|reg0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	d => \p1|mux0|y[0]~13_combout\,
	clrn => \sw0~input_o\,
	ena => \p1|fsm|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(0));

-- Location: LABCELL_X5_Y4_N24
\p1|mux0|y[0]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[0]~13_combout\ = ( \p1|reg0|Q\(0) & ( \p1|mux0|y[1]~11_combout\ & ( (!\p1|mux0|y[1]~12_combout\ & (\rom0|altsyncram_component|auto_generated|q_a\(0))) # (\p1|mux0|y[1]~12_combout\ & ((\p1|mux0|y[0]~5_combout\))) ) ) ) # ( !\p1|reg0|Q\(0) & ( 
-- \p1|mux0|y[1]~11_combout\ & ( (!\p1|mux0|y[1]~12_combout\ & (\rom0|altsyncram_component|auto_generated|q_a\(0))) # (\p1|mux0|y[1]~12_combout\ & ((\p1|mux0|y[0]~5_combout\))) ) ) ) # ( \p1|reg0|Q\(0) & ( !\p1|mux0|y[1]~11_combout\ & ( (\p1|regG|Q\(0)) # 
-- (\p1|mux0|y[1]~12_combout\) ) ) ) # ( !\p1|reg0|Q\(0) & ( !\p1|mux0|y[1]~11_combout\ & ( (!\p1|mux0|y[1]~12_combout\ & \p1|regG|Q\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010111110101111100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[1]~12_combout\,
	datab => \rom0|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datac => \p1|regG|ALT_INV_Q\(0),
	datad => \p1|mux0|ALT_INV_y[0]~5_combout\,
	datae => \p1|reg0|ALT_INV_Q\(0),
	dataf => \p1|mux0|ALT_INV_y[1]~11_combout\,
	combout => \p1|mux0|y[0]~13_combout\);

-- Location: LABCELL_X5_Y4_N36
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

-- Location: FF_X5_Y4_N37
\p1|regG|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	d => \p1|addsub0|Add0~5_sumout\,
	clrn => \sw0~input_o\,
	ena => \p1|fsm|y_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regG|Q\(1));

-- Location: FF_X5_Y3_N8
\p1|reg3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[1]~16_combout\,
	clrn => \sw0~input_o\,
	sload => VCC,
	ena => \p1|fsm|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(1));

-- Location: LABCELL_X7_Y4_N9
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

-- Location: FF_X7_Y4_N10
\p1|reg2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	d => \p1|reg2|Q[1]~feeder_combout\,
	clrn => \sw0~input_o\,
	ena => \p1|fsm|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q\(1));

-- Location: FF_X4_Y3_N49
\p1|reg4|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[1]~16_combout\,
	clrn => \sw0~input_o\,
	sload => VCC,
	ena => \p1|fsm|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg4|Q\(1));

-- Location: FF_X4_Y3_N7
\p1|reg5|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[1]~16_combout\,
	clrn => \sw0~input_o\,
	sload => VCC,
	ena => \p1|fsm|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(1));

-- Location: FF_X5_Y3_N38
\p1|reg6|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[1]~16_combout\,
	clrn => \sw0~input_o\,
	sload => VCC,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(1));

-- Location: LABCELL_X6_Y3_N45
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

-- Location: FF_X6_Y3_N47
\p1|reg7|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	d => \p1|reg7|Q[1]~feeder_combout\,
	clrn => \sw0~input_o\,
	ena => \p1|fsm|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg7|Q\(1));

-- Location: LABCELL_X5_Y3_N39
\p1|mux0|y[1]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~14_combout\ = ( \p1|reg6|Q\(1) & ( \p1|reg7|Q\(1) & ( ((!\p1|mux0|y[1]~0_combout\ & (\p1|reg4|Q\(1))) # (\p1|mux0|y[1]~0_combout\ & ((\p1|reg5|Q\(1))))) # (\p1|mux0|y[1]~1_combout\) ) ) ) # ( !\p1|reg6|Q\(1) & ( \p1|reg7|Q\(1) & ( 
-- (!\p1|mux0|y[1]~1_combout\ & ((!\p1|mux0|y[1]~0_combout\ & (\p1|reg4|Q\(1))) # (\p1|mux0|y[1]~0_combout\ & ((\p1|reg5|Q\(1)))))) # (\p1|mux0|y[1]~1_combout\ & (!\p1|mux0|y[1]~0_combout\)) ) ) ) # ( \p1|reg6|Q\(1) & ( !\p1|reg7|Q\(1) & ( 
-- (!\p1|mux0|y[1]~1_combout\ & ((!\p1|mux0|y[1]~0_combout\ & (\p1|reg4|Q\(1))) # (\p1|mux0|y[1]~0_combout\ & ((\p1|reg5|Q\(1)))))) # (\p1|mux0|y[1]~1_combout\ & (\p1|mux0|y[1]~0_combout\)) ) ) ) # ( !\p1|reg6|Q\(1) & ( !\p1|reg7|Q\(1) & ( 
-- (!\p1|mux0|y[1]~1_combout\ & ((!\p1|mux0|y[1]~0_combout\ & (\p1|reg4|Q\(1))) # (\p1|mux0|y[1]~0_combout\ & ((\p1|reg5|Q\(1)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000110010011101101001100011011100101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[1]~1_combout\,
	datab => \p1|mux0|ALT_INV_y[1]~0_combout\,
	datac => \p1|reg4|ALT_INV_Q\(1),
	datad => \p1|reg5|ALT_INV_Q\(1),
	datae => \p1|reg6|ALT_INV_Q\(1),
	dataf => \p1|reg7|ALT_INV_Q\(1),
	combout => \p1|mux0|y[1]~14_combout\);

-- Location: FF_X7_Y4_N32
\p1|reg1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[1]~16_combout\,
	clrn => \sw0~input_o\,
	sload => VCC,
	ena => \p1|fsm|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(1));

-- Location: LABCELL_X5_Y3_N9
\p1|mux0|y[1]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~15_combout\ = ( \p1|mux0|y[1]~14_combout\ & ( \p1|reg1|Q\(1) & ( (!\p1|mux0|y[1]~3_combout\) # ((!\p1|mux0|y[1]~4_combout\ & ((\p1|reg2|Q\(1)))) # (\p1|mux0|y[1]~4_combout\ & (\p1|reg3|Q\(1)))) ) ) ) # ( !\p1|mux0|y[1]~14_combout\ & ( 
-- \p1|reg1|Q\(1) & ( (!\p1|mux0|y[1]~4_combout\ & (((!\p1|mux0|y[1]~3_combout\) # (\p1|reg2|Q\(1))))) # (\p1|mux0|y[1]~4_combout\ & (\p1|reg3|Q\(1) & ((\p1|mux0|y[1]~3_combout\)))) ) ) ) # ( \p1|mux0|y[1]~14_combout\ & ( !\p1|reg1|Q\(1) & ( 
-- (!\p1|mux0|y[1]~4_combout\ & (((\p1|reg2|Q\(1) & \p1|mux0|y[1]~3_combout\)))) # (\p1|mux0|y[1]~4_combout\ & (((!\p1|mux0|y[1]~3_combout\)) # (\p1|reg3|Q\(1)))) ) ) ) # ( !\p1|mux0|y[1]~14_combout\ & ( !\p1|reg1|Q\(1) & ( (\p1|mux0|y[1]~3_combout\ & 
-- ((!\p1|mux0|y[1]~4_combout\ & ((\p1|reg2|Q\(1)))) # (\p1|mux0|y[1]~4_combout\ & (\p1|reg3|Q\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011011010101010001101110101010000110111111111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[1]~4_combout\,
	datab => \p1|reg3|ALT_INV_Q\(1),
	datac => \p1|reg2|ALT_INV_Q\(1),
	datad => \p1|mux0|ALT_INV_y[1]~3_combout\,
	datae => \p1|mux0|ALT_INV_y[1]~14_combout\,
	dataf => \p1|reg1|ALT_INV_Q\(1),
	combout => \p1|mux0|y[1]~15_combout\);

-- Location: FF_X4_Y4_N38
\p1|reg0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[1]~16_combout\,
	clrn => \sw0~input_o\,
	sload => VCC,
	ena => \p1|fsm|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(1));

-- Location: MLABCELL_X4_Y4_N45
\p1|mux0|y[1]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~16_combout\ = ( \p1|mux0|y[1]~11_combout\ & ( \rom0|altsyncram_component|auto_generated|q_a\(1) & ( (!\p1|mux0|y[1]~12_combout\) # (\p1|mux0|y[1]~15_combout\) ) ) ) # ( !\p1|mux0|y[1]~11_combout\ & ( 
-- \rom0|altsyncram_component|auto_generated|q_a\(1) & ( (!\p1|mux0|y[1]~12_combout\ & (\p1|regG|Q\(1))) # (\p1|mux0|y[1]~12_combout\ & ((\p1|reg0|Q\(1)))) ) ) ) # ( \p1|mux0|y[1]~11_combout\ & ( !\rom0|altsyncram_component|auto_generated|q_a\(1) & ( 
-- (\p1|mux0|y[1]~12_combout\ & \p1|mux0|y[1]~15_combout\) ) ) ) # ( !\p1|mux0|y[1]~11_combout\ & ( !\rom0|altsyncram_component|auto_generated|q_a\(1) & ( (!\p1|mux0|y[1]~12_combout\ & (\p1|regG|Q\(1))) # (\p1|mux0|y[1]~12_combout\ & ((\p1|reg0|Q\(1)))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111000000110000001101000100011101111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|regG|ALT_INV_Q\(1),
	datab => \p1|mux0|ALT_INV_y[1]~12_combout\,
	datac => \p1|mux0|ALT_INV_y[1]~15_combout\,
	datad => \p1|reg0|ALT_INV_Q\(1),
	datae => \p1|mux0|ALT_INV_y[1]~11_combout\,
	dataf => \rom0|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	combout => \p1|mux0|y[1]~16_combout\);

-- Location: LABCELL_X5_Y4_N39
\p1|addsub0|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~9_sumout\ = SUM(( !\p1|fsm|AddSub~combout\ $ (!\p1|mux0|y[2]~19_combout\) ) + ( \p1|regA|Q\(2) ) + ( \p1|addsub0|Add0~6\ ))
-- \p1|addsub0|Add0~10\ = CARRY(( !\p1|fsm|AddSub~combout\ $ (!\p1|mux0|y[2]~19_combout\) ) + ( \p1|regA|Q\(2) ) + ( \p1|addsub0|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|fsm|ALT_INV_AddSub~combout\,
	datad => \p1|mux0|ALT_INV_y[2]~19_combout\,
	dataf => \p1|regA|ALT_INV_Q\(2),
	cin => \p1|addsub0|Add0~6\,
	sumout => \p1|addsub0|Add0~9_sumout\,
	cout => \p1|addsub0|Add0~10\);

-- Location: FF_X5_Y4_N41
\p1|regG|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	d => \p1|addsub0|Add0~9_sumout\,
	clrn => \sw0~input_o\,
	ena => \p1|fsm|y_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regG|Q\(2));

-- Location: FF_X7_Y4_N5
\p1|reg1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[2]~19_combout\,
	clrn => \sw0~input_o\,
	sload => VCC,
	ena => \p1|fsm|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(2));

-- Location: FF_X7_Y4_N44
\p1|reg2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[2]~19_combout\,
	clrn => \sw0~input_o\,
	sload => VCC,
	ena => \p1|fsm|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q\(2));

-- Location: FF_X5_Y3_N56
\p1|reg3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[2]~19_combout\,
	clrn => \sw0~input_o\,
	sload => VCC,
	ena => \p1|fsm|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(2));

-- Location: FF_X5_Y3_N32
\p1|reg6|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[2]~19_combout\,
	clrn => \sw0~input_o\,
	sload => VCC,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(2));

-- Location: MLABCELL_X4_Y3_N24
\p1|reg4|Q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg4|Q[2]~feeder_combout\ = ( \p1|mux0|y[2]~19_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[2]~19_combout\,
	combout => \p1|reg4|Q[2]~feeder_combout\);

-- Location: FF_X4_Y3_N26
\p1|reg4|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	d => \p1|reg4|Q[2]~feeder_combout\,
	clrn => \sw0~input_o\,
	ena => \p1|fsm|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg4|Q\(2));

-- Location: MLABCELL_X4_Y3_N12
\p1|reg5|Q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg5|Q[2]~feeder_combout\ = ( \p1|mux0|y[2]~19_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[2]~19_combout\,
	combout => \p1|reg5|Q[2]~feeder_combout\);

-- Location: FF_X4_Y3_N13
\p1|reg5|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	d => \p1|reg5|Q[2]~feeder_combout\,
	clrn => \sw0~input_o\,
	ena => \p1|fsm|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(2));

-- Location: LABCELL_X6_Y3_N12
\p1|reg7|Q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg7|Q[2]~feeder_combout\ = ( \p1|mux0|y[2]~19_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[2]~19_combout\,
	combout => \p1|reg7|Q[2]~feeder_combout\);

-- Location: FF_X6_Y3_N13
\p1|reg7|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	d => \p1|reg7|Q[2]~feeder_combout\,
	clrn => \sw0~input_o\,
	ena => \p1|fsm|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg7|Q\(2));

-- Location: LABCELL_X5_Y3_N33
\p1|mux0|y[2]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[2]~17_combout\ = ( \p1|reg5|Q\(2) & ( \p1|reg7|Q\(2) & ( (!\p1|mux0|y[1]~1_combout\ & (((\p1|reg4|Q\(2))) # (\p1|mux0|y[1]~0_combout\))) # (\p1|mux0|y[1]~1_combout\ & ((!\p1|mux0|y[1]~0_combout\) # ((\p1|reg6|Q\(2))))) ) ) ) # ( !\p1|reg5|Q\(2) 
-- & ( \p1|reg7|Q\(2) & ( (!\p1|mux0|y[1]~1_combout\ & (!\p1|mux0|y[1]~0_combout\ & ((\p1|reg4|Q\(2))))) # (\p1|mux0|y[1]~1_combout\ & ((!\p1|mux0|y[1]~0_combout\) # ((\p1|reg6|Q\(2))))) ) ) ) # ( \p1|reg5|Q\(2) & ( !\p1|reg7|Q\(2) & ( 
-- (!\p1|mux0|y[1]~1_combout\ & (((\p1|reg4|Q\(2))) # (\p1|mux0|y[1]~0_combout\))) # (\p1|mux0|y[1]~1_combout\ & (\p1|mux0|y[1]~0_combout\ & (\p1|reg6|Q\(2)))) ) ) ) # ( !\p1|reg5|Q\(2) & ( !\p1|reg7|Q\(2) & ( (!\p1|mux0|y[1]~1_combout\ & 
-- (!\p1|mux0|y[1]~0_combout\ & ((\p1|reg4|Q\(2))))) # (\p1|mux0|y[1]~1_combout\ & (\p1|mux0|y[1]~0_combout\ & (\p1|reg6|Q\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001001000111010101101000101110011010110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[1]~1_combout\,
	datab => \p1|mux0|ALT_INV_y[1]~0_combout\,
	datac => \p1|reg6|ALT_INV_Q\(2),
	datad => \p1|reg4|ALT_INV_Q\(2),
	datae => \p1|reg5|ALT_INV_Q\(2),
	dataf => \p1|reg7|ALT_INV_Q\(2),
	combout => \p1|mux0|y[2]~17_combout\);

-- Location: LABCELL_X5_Y3_N54
\p1|mux0|y[2]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[2]~18_combout\ = ( \p1|reg3|Q\(2) & ( \p1|mux0|y[2]~17_combout\ & ( ((!\p1|mux0|y[1]~3_combout\ & (\p1|reg1|Q\(2))) # (\p1|mux0|y[1]~3_combout\ & ((\p1|reg2|Q\(2))))) # (\p1|mux0|y[1]~4_combout\) ) ) ) # ( !\p1|reg3|Q\(2) & ( 
-- \p1|mux0|y[2]~17_combout\ & ( (!\p1|mux0|y[1]~4_combout\ & ((!\p1|mux0|y[1]~3_combout\ & (\p1|reg1|Q\(2))) # (\p1|mux0|y[1]~3_combout\ & ((\p1|reg2|Q\(2)))))) # (\p1|mux0|y[1]~4_combout\ & (((!\p1|mux0|y[1]~3_combout\)))) ) ) ) # ( \p1|reg3|Q\(2) & ( 
-- !\p1|mux0|y[2]~17_combout\ & ( (!\p1|mux0|y[1]~4_combout\ & ((!\p1|mux0|y[1]~3_combout\ & (\p1|reg1|Q\(2))) # (\p1|mux0|y[1]~3_combout\ & ((\p1|reg2|Q\(2)))))) # (\p1|mux0|y[1]~4_combout\ & (((\p1|mux0|y[1]~3_combout\)))) ) ) ) # ( !\p1|reg3|Q\(2) & ( 
-- !\p1|mux0|y[2]~17_combout\ & ( (!\p1|mux0|y[1]~4_combout\ & ((!\p1|mux0|y[1]~3_combout\ & (\p1|reg1|Q\(2))) # (\p1|mux0|y[1]~3_combout\ & ((\p1|reg2|Q\(2)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001100010000110100111101110000011111000111001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg1|ALT_INV_Q\(2),
	datab => \p1|mux0|ALT_INV_y[1]~4_combout\,
	datac => \p1|mux0|ALT_INV_y[1]~3_combout\,
	datad => \p1|reg2|ALT_INV_Q\(2),
	datae => \p1|reg3|ALT_INV_Q\(2),
	dataf => \p1|mux0|ALT_INV_y[2]~17_combout\,
	combout => \p1|mux0|y[2]~18_combout\);

-- Location: MLABCELL_X4_Y4_N12
\p1|mux0|y[2]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[2]~19_combout\ = ( \rom0|altsyncram_component|auto_generated|q_a\(2) & ( \p1|mux0|y[1]~12_combout\ & ( (!\p1|mux0|y[1]~11_combout\ & (\p1|reg0|Q\(2))) # (\p1|mux0|y[1]~11_combout\ & ((\p1|mux0|y[2]~18_combout\))) ) ) ) # ( 
-- !\rom0|altsyncram_component|auto_generated|q_a\(2) & ( \p1|mux0|y[1]~12_combout\ & ( (!\p1|mux0|y[1]~11_combout\ & (\p1|reg0|Q\(2))) # (\p1|mux0|y[1]~11_combout\ & ((\p1|mux0|y[2]~18_combout\))) ) ) ) # ( \rom0|altsyncram_component|auto_generated|q_a\(2) 
-- & ( !\p1|mux0|y[1]~12_combout\ & ( (\p1|regG|Q\(2)) # (\p1|mux0|y[1]~11_combout\) ) ) ) # ( !\rom0|altsyncram_component|auto_generated|q_a\(2) & ( !\p1|mux0|y[1]~12_combout\ & ( (!\p1|mux0|y[1]~11_combout\ & \p1|regG|Q\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111101000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg0|ALT_INV_Q\(2),
	datab => \p1|mux0|ALT_INV_y[1]~11_combout\,
	datac => \p1|regG|ALT_INV_Q\(2),
	datad => \p1|mux0|ALT_INV_y[2]~18_combout\,
	datae => \rom0|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	dataf => \p1|mux0|ALT_INV_y[1]~12_combout\,
	combout => \p1|mux0|y[2]~19_combout\);

-- Location: MLABCELL_X4_Y4_N24
\p1|reg0|Q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg0|Q[2]~feeder_combout\ = ( \p1|mux0|y[2]~19_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[2]~19_combout\,
	combout => \p1|reg0|Q[2]~feeder_combout\);

-- Location: FF_X4_Y4_N26
\p1|reg0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	d => \p1|reg0|Q[2]~feeder_combout\,
	clrn => \sw0~input_o\,
	ena => \p1|fsm|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(2));

-- Location: FF_X4_Y4_N2
\p1|regA|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	d => \p1|mux0|y[3]~22_combout\,
	clrn => \sw0~input_o\,
	ena => \p1|fsm|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regA|Q\(3));

-- Location: LABCELL_X5_Y4_N42
\p1|addsub0|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~13_sumout\ = SUM(( !\p1|fsm|AddSub~combout\ $ (!\p1|mux0|y[3]~22_combout\) ) + ( \p1|regA|Q\(3) ) + ( \p1|addsub0|Add0~10\ ))
-- \p1|addsub0|Add0~14\ = CARRY(( !\p1|fsm|AddSub~combout\ $ (!\p1|mux0|y[3]~22_combout\) ) + ( \p1|regA|Q\(3) ) + ( \p1|addsub0|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|fsm|ALT_INV_AddSub~combout\,
	datad => \p1|mux0|ALT_INV_y[3]~22_combout\,
	dataf => \p1|regA|ALT_INV_Q\(3),
	cin => \p1|addsub0|Add0~10\,
	sumout => \p1|addsub0|Add0~13_sumout\,
	cout => \p1|addsub0|Add0~14\);

-- Location: FF_X5_Y4_N44
\p1|regG|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	d => \p1|addsub0|Add0~13_sumout\,
	clrn => \sw0~input_o\,
	ena => \p1|fsm|y_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regG|Q\(3));

-- Location: LABCELL_X7_Y4_N24
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

-- Location: FF_X7_Y4_N26
\p1|reg2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	d => \p1|reg2|Q[3]~feeder_combout\,
	clrn => \sw0~input_o\,
	ena => \p1|fsm|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q\(3));

-- Location: MLABCELL_X4_Y3_N15
\p1|reg5|Q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg5|Q[3]~feeder_combout\ = \p1|mux0|y[3]~22_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|mux0|ALT_INV_y[3]~22_combout\,
	combout => \p1|reg5|Q[3]~feeder_combout\);

-- Location: FF_X4_Y3_N16
\p1|reg5|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	d => \p1|reg5|Q[3]~feeder_combout\,
	clrn => \sw0~input_o\,
	ena => \p1|fsm|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(3));

-- Location: FF_X5_Y3_N14
\p1|reg6|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[3]~22_combout\,
	clrn => \sw0~input_o\,
	sload => VCC,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(3));

-- Location: MLABCELL_X4_Y3_N27
\p1|reg4|Q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg4|Q[3]~feeder_combout\ = \p1|mux0|y[3]~22_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|mux0|ALT_INV_y[3]~22_combout\,
	combout => \p1|reg4|Q[3]~feeder_combout\);

-- Location: FF_X4_Y3_N28
\p1|reg4|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	d => \p1|reg4|Q[3]~feeder_combout\,
	clrn => \sw0~input_o\,
	ena => \p1|fsm|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg4|Q\(3));

-- Location: LABCELL_X6_Y3_N3
\p1|reg7|Q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg7|Q[3]~feeder_combout\ = \p1|mux0|y[3]~22_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|mux0|ALT_INV_y[3]~22_combout\,
	combout => \p1|reg7|Q[3]~feeder_combout\);

-- Location: FF_X6_Y3_N5
\p1|reg7|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	d => \p1|reg7|Q[3]~feeder_combout\,
	clrn => \sw0~input_o\,
	ena => \p1|fsm|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg7|Q\(3));

-- Location: LABCELL_X5_Y3_N15
\p1|mux0|y[3]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[3]~20_combout\ = ( \p1|reg7|Q\(3) & ( \p1|mux0|y[1]~0_combout\ & ( (!\p1|mux0|y[1]~1_combout\ & (\p1|reg5|Q\(3))) # (\p1|mux0|y[1]~1_combout\ & ((\p1|reg6|Q\(3)))) ) ) ) # ( !\p1|reg7|Q\(3) & ( \p1|mux0|y[1]~0_combout\ & ( 
-- (!\p1|mux0|y[1]~1_combout\ & (\p1|reg5|Q\(3))) # (\p1|mux0|y[1]~1_combout\ & ((\p1|reg6|Q\(3)))) ) ) ) # ( \p1|reg7|Q\(3) & ( !\p1|mux0|y[1]~0_combout\ & ( (\p1|reg4|Q\(3)) # (\p1|mux0|y[1]~1_combout\) ) ) ) # ( !\p1|reg7|Q\(3) & ( 
-- !\p1|mux0|y[1]~0_combout\ & ( (!\p1|mux0|y[1]~1_combout\ & \p1|reg4|Q\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010010101011111111100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[1]~1_combout\,
	datab => \p1|reg5|ALT_INV_Q\(3),
	datac => \p1|reg6|ALT_INV_Q\(3),
	datad => \p1|reg4|ALT_INV_Q\(3),
	datae => \p1|reg7|ALT_INV_Q\(3),
	dataf => \p1|mux0|ALT_INV_y[1]~0_combout\,
	combout => \p1|mux0|y[3]~20_combout\);

-- Location: FF_X7_Y4_N56
\p1|reg1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[3]~22_combout\,
	clrn => \sw0~input_o\,
	sload => VCC,
	ena => \p1|fsm|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(3));

-- Location: FF_X5_Y3_N26
\p1|reg3|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[3]~22_combout\,
	clrn => \sw0~input_o\,
	sload => VCC,
	ena => \p1|fsm|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(3));

-- Location: LABCELL_X5_Y3_N24
\p1|mux0|y[3]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[3]~21_combout\ = ( \p1|reg3|Q\(3) & ( \p1|mux0|y[1]~4_combout\ & ( (\p1|mux0|y[1]~3_combout\) # (\p1|mux0|y[3]~20_combout\) ) ) ) # ( !\p1|reg3|Q\(3) & ( \p1|mux0|y[1]~4_combout\ & ( (\p1|mux0|y[3]~20_combout\ & !\p1|mux0|y[1]~3_combout\) ) ) ) 
-- # ( \p1|reg3|Q\(3) & ( !\p1|mux0|y[1]~4_combout\ & ( (!\p1|mux0|y[1]~3_combout\ & ((\p1|reg1|Q\(3)))) # (\p1|mux0|y[1]~3_combout\ & (\p1|reg2|Q\(3))) ) ) ) # ( !\p1|reg3|Q\(3) & ( !\p1|mux0|y[1]~4_combout\ & ( (!\p1|mux0|y[1]~3_combout\ & 
-- ((\p1|reg1|Q\(3)))) # (\p1|mux0|y[1]~3_combout\ & (\p1|reg2|Q\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg2|ALT_INV_Q\(3),
	datab => \p1|mux0|ALT_INV_y[3]~20_combout\,
	datac => \p1|mux0|ALT_INV_y[1]~3_combout\,
	datad => \p1|reg1|ALT_INV_Q\(3),
	datae => \p1|reg3|ALT_INV_Q\(3),
	dataf => \p1|mux0|ALT_INV_y[1]~4_combout\,
	combout => \p1|mux0|y[3]~21_combout\);

-- Location: MLABCELL_X4_Y4_N0
\p1|mux0|y[3]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[3]~22_combout\ = ( \rom0|altsyncram_component|auto_generated|q_a\(3) & ( \p1|mux0|y[3]~21_combout\ & ( ((!\p1|mux0|y[1]~12_combout\ & ((\p1|regG|Q\(3)))) # (\p1|mux0|y[1]~12_combout\ & (\p1|reg0|Q\(3)))) # (\p1|mux0|y[1]~11_combout\) ) ) ) # ( 
-- !\rom0|altsyncram_component|auto_generated|q_a\(3) & ( \p1|mux0|y[3]~21_combout\ & ( (!\p1|mux0|y[1]~12_combout\ & (!\p1|mux0|y[1]~11_combout\ & ((\p1|regG|Q\(3))))) # (\p1|mux0|y[1]~12_combout\ & (((\p1|reg0|Q\(3))) # (\p1|mux0|y[1]~11_combout\))) ) ) ) 
-- # ( \rom0|altsyncram_component|auto_generated|q_a\(3) & ( !\p1|mux0|y[3]~21_combout\ & ( (!\p1|mux0|y[1]~12_combout\ & (((\p1|regG|Q\(3))) # (\p1|mux0|y[1]~11_combout\))) # (\p1|mux0|y[1]~12_combout\ & (!\p1|mux0|y[1]~11_combout\ & (\p1|reg0|Q\(3)))) ) ) 
-- ) # ( !\rom0|altsyncram_component|auto_generated|q_a\(3) & ( !\p1|mux0|y[3]~21_combout\ & ( (!\p1|mux0|y[1]~11_combout\ & ((!\p1|mux0|y[1]~12_combout\ & ((\p1|regG|Q\(3)))) # (\p1|mux0|y[1]~12_combout\ & (\p1|reg0|Q\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001001101010111000010101100111010011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[1]~12_combout\,
	datab => \p1|mux0|ALT_INV_y[1]~11_combout\,
	datac => \p1|reg0|ALT_INV_Q\(3),
	datad => \p1|regG|ALT_INV_Q\(3),
	datae => \rom0|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	dataf => \p1|mux0|ALT_INV_y[3]~21_combout\,
	combout => \p1|mux0|y[3]~22_combout\);

-- Location: FF_X4_Y4_N35
\p1|reg0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[3]~22_combout\,
	clrn => \sw0~input_o\,
	sload => VCC,
	ena => \p1|fsm|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(3));

-- Location: MLABCELL_X4_Y4_N39
\s0|hex[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \s0|hex[6]~0_combout\ = ( !\p1|reg0|Q\(0) & ( \p1|reg0|Q\(3) & ( (\p1|reg0|Q\(2) & !\p1|reg0|Q\(1)) ) ) ) # ( \p1|reg0|Q\(0) & ( !\p1|reg0|Q\(3) & ( !\p1|reg0|Q\(2) $ (\p1|reg0|Q\(1)) ) ) ) # ( !\p1|reg0|Q\(0) & ( !\p1|reg0|Q\(3) & ( (!\p1|reg0|Q\(2) & 
-- !\p1|reg0|Q\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100101010101010101000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg0|ALT_INV_Q\(2),
	datad => \p1|reg0|ALT_INV_Q\(1),
	datae => \p1|reg0|ALT_INV_Q\(0),
	dataf => \p1|reg0|ALT_INV_Q\(3),
	combout => \s0|hex[6]~0_combout\);

-- Location: MLABCELL_X4_Y4_N6
\s0|hex[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \s0|hex[5]~1_combout\ = ( \p1|reg0|Q\(1) & ( (!\p1|reg0|Q\(3) & ((!\p1|reg0|Q\(2)) # (\p1|reg0|Q\(0)))) ) ) # ( !\p1|reg0|Q\(1) & ( (\p1|reg0|Q\(0) & (!\p1|reg0|Q\(2) $ (\p1|reg0|Q\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100101000000001010010110100000111100001010000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg0|ALT_INV_Q\(2),
	datac => \p1|reg0|ALT_INV_Q\(3),
	datad => \p1|reg0|ALT_INV_Q\(0),
	dataf => \p1|reg0|ALT_INV_Q\(1),
	combout => \s0|hex[5]~1_combout\);

-- Location: MLABCELL_X4_Y4_N54
\s0|hex[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \s0|hex[4]~2_combout\ = ( \p1|reg0|Q\(3) & ( (!\p1|reg0|Q\(2) & (!\p1|reg0|Q\(1) & \p1|reg0|Q\(0))) ) ) # ( !\p1|reg0|Q\(3) & ( ((\p1|reg0|Q\(2) & !\p1|reg0|Q\(1))) # (\p1|reg0|Q\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011111111010001001111111100000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg0|ALT_INV_Q\(2),
	datab => \p1|reg0|ALT_INV_Q\(1),
	datad => \p1|reg0|ALT_INV_Q\(0),
	dataf => \p1|reg0|ALT_INV_Q\(3),
	combout => \s0|hex[4]~2_combout\);

-- Location: MLABCELL_X4_Y4_N18
\s0|hex[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \s0|hex[3]~3_combout\ = ( \p1|reg0|Q\(2) & ( (!\p1|reg0|Q\(0) & (!\p1|reg0|Q\(3) & !\p1|reg0|Q\(1))) # (\p1|reg0|Q\(0) & ((\p1|reg0|Q\(1)))) ) ) # ( !\p1|reg0|Q\(2) & ( (!\p1|reg0|Q\(3) & (\p1|reg0|Q\(0) & !\p1|reg0|Q\(1))) # (\p1|reg0|Q\(3) & 
-- (!\p1|reg0|Q\(0) & \p1|reg0|Q\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001000100001000100100010010001000001100111000100000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg0|ALT_INV_Q\(3),
	datab => \p1|reg0|ALT_INV_Q\(0),
	datad => \p1|reg0|ALT_INV_Q\(1),
	dataf => \p1|reg0|ALT_INV_Q\(2),
	combout => \s0|hex[3]~3_combout\);

-- Location: MLABCELL_X4_Y4_N21
\s0|hex[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \s0|hex[2]~4_combout\ = ( \p1|reg0|Q\(2) & ( (\p1|reg0|Q\(3) & ((!\p1|reg0|Q\(0)) # (\p1|reg0|Q\(1)))) ) ) # ( !\p1|reg0|Q\(2) & ( (!\p1|reg0|Q\(3) & (!\p1|reg0|Q\(0) & \p1|reg0|Q\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100001000100010101010100010001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg0|ALT_INV_Q\(3),
	datab => \p1|reg0|ALT_INV_Q\(0),
	datad => \p1|reg0|ALT_INV_Q\(1),
	dataf => \p1|reg0|ALT_INV_Q\(2),
	combout => \s0|hex[2]~4_combout\);

-- Location: MLABCELL_X4_Y4_N30
\s0|hex[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \s0|hex[1]~5_combout\ = ( \p1|reg0|Q\(1) & ( \p1|reg0|Q\(3) & ( (\p1|reg0|Q\(2)) # (\p1|reg0|Q\(0)) ) ) ) # ( !\p1|reg0|Q\(1) & ( \p1|reg0|Q\(3) & ( (!\p1|reg0|Q\(0) & \p1|reg0|Q\(2)) ) ) ) # ( \p1|reg0|Q\(1) & ( !\p1|reg0|Q\(3) & ( (!\p1|reg0|Q\(0) & 
-- \p1|reg0|Q\(2)) ) ) ) # ( !\p1|reg0|Q\(1) & ( !\p1|reg0|Q\(3) & ( (\p1|reg0|Q\(0) & \p1|reg0|Q\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000011000000110000001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|reg0|ALT_INV_Q\(0),
	datac => \p1|reg0|ALT_INV_Q\(2),
	datae => \p1|reg0|ALT_INV_Q\(1),
	dataf => \p1|reg0|ALT_INV_Q\(3),
	combout => \s0|hex[1]~5_combout\);

-- Location: MLABCELL_X4_Y4_N9
\s0|hex[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \s0|hex[0]~6_combout\ = ( \p1|reg0|Q\(3) & ( (\p1|reg0|Q\(0) & (!\p1|reg0|Q\(2) $ (!\p1|reg0|Q\(1)))) ) ) # ( !\p1|reg0|Q\(3) & ( (!\p1|reg0|Q\(1) & (!\p1|reg0|Q\(2) $ (!\p1|reg0|Q\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100001001000010010000100100000000110000001100000011000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg0|ALT_INV_Q\(2),
	datab => \p1|reg0|ALT_INV_Q\(1),
	datac => \p1|reg0|ALT_INV_Q\(0),
	dataf => \p1|reg0|ALT_INV_Q\(3),
	combout => \s0|hex[0]~6_combout\);

-- Location: LABCELL_X7_Y4_N51
\s1|hex[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \s1|hex[6]~0_combout\ = ( \p1|reg1|Q\(2) & ( \p1|reg1|Q\(1) & ( (\p1|reg1|Q\(0) & !\p1|reg1|Q\(3)) ) ) ) # ( \p1|reg1|Q\(2) & ( !\p1|reg1|Q\(1) & ( (!\p1|reg1|Q\(0) & \p1|reg1|Q\(3)) ) ) ) # ( !\p1|reg1|Q\(2) & ( !\p1|reg1|Q\(1) & ( !\p1|reg1|Q\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000000001010101000000000000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg1|ALT_INV_Q\(0),
	datad => \p1|reg1|ALT_INV_Q\(3),
	datae => \p1|reg1|ALT_INV_Q\(2),
	dataf => \p1|reg1|ALT_INV_Q\(1),
	combout => \s1|hex[6]~0_combout\);

-- Location: LABCELL_X7_Y4_N57
\s1|hex[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \s1|hex[5]~1_combout\ = ( \p1|reg1|Q\(2) & ( (\p1|reg1|Q\(0) & (!\p1|reg1|Q\(1) $ (!\p1|reg1|Q\(3)))) ) ) # ( !\p1|reg1|Q\(2) & ( (!\p1|reg1|Q\(3) & ((\p1|reg1|Q\(1)) # (\p1|reg1|Q\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100000000000001010101000001011111000000000000010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg1|ALT_INV_Q\(0),
	datac => \p1|reg1|ALT_INV_Q\(1),
	datad => \p1|reg1|ALT_INV_Q\(3),
	datae => \p1|reg1|ALT_INV_Q\(2),
	combout => \s1|hex[5]~1_combout\);

-- Location: LABCELL_X7_Y4_N0
\s1|hex[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \s1|hex[4]~2_combout\ = ( \p1|reg1|Q\(2) & ( (!\p1|reg1|Q\(3) & ((!\p1|reg1|Q\(1)) # (\p1|reg1|Q\(0)))) ) ) # ( !\p1|reg1|Q\(2) & ( (\p1|reg1|Q\(0) & ((!\p1|reg1|Q\(3)) # (!\p1|reg1|Q\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001110100010101000101000001110000011101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg1|ALT_INV_Q\(3),
	datab => \p1|reg1|ALT_INV_Q\(1),
	datac => \p1|reg1|ALT_INV_Q\(0),
	datae => \p1|reg1|ALT_INV_Q\(2),
	combout => \s1|hex[4]~2_combout\);

-- Location: LABCELL_X7_Y4_N33
\s1|hex[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \s1|hex[3]~3_combout\ = (!\p1|reg1|Q\(1) & (!\p1|reg1|Q\(3) & (!\p1|reg1|Q\(2) $ (!\p1|reg1|Q\(0))))) # (\p1|reg1|Q\(1) & ((!\p1|reg1|Q\(2) & (\p1|reg1|Q\(3) & !\p1|reg1|Q\(0))) # (\p1|reg1|Q\(2) & ((\p1|reg1|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010010000011001001001000001100100100100000110010010010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg1|ALT_INV_Q\(3),
	datab => \p1|reg1|ALT_INV_Q\(2),
	datac => \p1|reg1|ALT_INV_Q\(1),
	datad => \p1|reg1|ALT_INV_Q\(0),
	combout => \s1|hex[3]~3_combout\);

-- Location: LABCELL_X7_Y4_N45
\s1|hex[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \s1|hex[2]~4_combout\ = ( \p1|reg1|Q\(2) & ( (\p1|reg1|Q\(3) & ((!\p1|reg1|Q\(0)) # (\p1|reg1|Q\(1)))) ) ) # ( !\p1|reg1|Q\(2) & ( (!\p1|reg1|Q\(0) & (\p1|reg1|Q\(1) & !\p1|reg1|Q\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000000001010111100001010000000000000000010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg1|ALT_INV_Q\(0),
	datac => \p1|reg1|ALT_INV_Q\(1),
	datad => \p1|reg1|ALT_INV_Q\(3),
	datae => \p1|reg1|ALT_INV_Q\(2),
	combout => \s1|hex[2]~4_combout\);

-- Location: LABCELL_X7_Y4_N30
\s1|hex[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \s1|hex[1]~5_combout\ = (!\p1|reg1|Q\(3) & (\p1|reg1|Q\(2) & (!\p1|reg1|Q\(0) $ (!\p1|reg1|Q\(1))))) # (\p1|reg1|Q\(3) & ((!\p1|reg1|Q\(0) & (\p1|reg1|Q\(2))) # (\p1|reg1|Q\(0) & ((\p1|reg1|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000110101000100100011010100010010001101010001001000110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg1|ALT_INV_Q\(3),
	datab => \p1|reg1|ALT_INV_Q\(2),
	datac => \p1|reg1|ALT_INV_Q\(0),
	datad => \p1|reg1|ALT_INV_Q\(1),
	combout => \s1|hex[1]~5_combout\);

-- Location: LABCELL_X7_Y4_N21
\s1|hex[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \s1|hex[0]~6_combout\ = ( \p1|reg1|Q\(0) & ( (!\p1|reg1|Q\(3) & (!\p1|reg1|Q\(1) & !\p1|reg1|Q\(2))) # (\p1|reg1|Q\(3) & (!\p1|reg1|Q\(1) $ (!\p1|reg1|Q\(2)))) ) ) # ( !\p1|reg1|Q\(0) & ( (!\p1|reg1|Q\(3) & (!\p1|reg1|Q\(1) & \p1|reg1|Q\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000101001010101000000000000101000001010010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg1|ALT_INV_Q\(3),
	datac => \p1|reg1|ALT_INV_Q\(1),
	datad => \p1|reg1|ALT_INV_Q\(2),
	datae => \p1|reg1|ALT_INV_Q\(0),
	combout => \s1|hex[0]~6_combout\);

-- Location: FF_X4_Y4_N4
\p1|regA|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[4]~25_combout\,
	clrn => \sw0~input_o\,
	sload => VCC,
	ena => \p1|fsm|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regA|Q\(4));

-- Location: LABCELL_X5_Y4_N45
\p1|addsub0|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~17_sumout\ = SUM(( !\p1|fsm|AddSub~combout\ $ (!\p1|mux0|y[4]~25_combout\) ) + ( \p1|regA|Q\(4) ) + ( \p1|addsub0|Add0~14\ ))
-- \p1|addsub0|Add0~18\ = CARRY(( !\p1|fsm|AddSub~combout\ $ (!\p1|mux0|y[4]~25_combout\) ) + ( \p1|regA|Q\(4) ) + ( \p1|addsub0|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|regA|ALT_INV_Q\(4),
	datac => \p1|fsm|ALT_INV_AddSub~combout\,
	datad => \p1|mux0|ALT_INV_y[4]~25_combout\,
	cin => \p1|addsub0|Add0~14\,
	sumout => \p1|addsub0|Add0~17_sumout\,
	cout => \p1|addsub0|Add0~18\);

-- Location: FF_X5_Y4_N46
\p1|regG|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	d => \p1|addsub0|Add0~17_sumout\,
	clrn => \sw0~input_o\,
	ena => \p1|fsm|y_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regG|Q\(4));

-- Location: FF_X6_Y4_N38
\p1|reg0|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	d => \p1|mux0|y[4]~25_combout\,
	clrn => \sw0~input_o\,
	ena => \p1|fsm|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(4));

-- Location: LABCELL_X7_Y4_N6
\p1|reg2|Q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg2|Q[4]~feeder_combout\ = \p1|mux0|y[4]~25_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|mux0|ALT_INV_y[4]~25_combout\,
	combout => \p1|reg2|Q[4]~feeder_combout\);

-- Location: FF_X7_Y4_N7
\p1|reg2|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	d => \p1|reg2|Q[4]~feeder_combout\,
	clrn => \sw0~input_o\,
	ena => \p1|fsm|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q\(4));

-- Location: LABCELL_X7_Y4_N12
\p1|reg1|Q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg1|Q[4]~feeder_combout\ = \p1|mux0|y[4]~25_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|mux0|ALT_INV_y[4]~25_combout\,
	combout => \p1|reg1|Q[4]~feeder_combout\);

-- Location: FF_X7_Y4_N14
\p1|reg1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	d => \p1|reg1|Q[4]~feeder_combout\,
	clrn => \sw0~input_o\,
	ena => \p1|fsm|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(4));

-- Location: FF_X6_Y4_N20
\p1|reg3|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[4]~25_combout\,
	clrn => \sw0~input_o\,
	sload => VCC,
	ena => \p1|fsm|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(4));

-- Location: FF_X6_Y3_N17
\p1|reg7|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[4]~25_combout\,
	clrn => \sw0~input_o\,
	sload => VCC,
	ena => \p1|fsm|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg7|Q\(4));

-- Location: FF_X6_Y3_N26
\p1|reg6|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[4]~25_combout\,
	clrn => \sw0~input_o\,
	sload => VCC,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(4));

-- Location: LABCELL_X7_Y3_N21
\p1|reg5|Q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg5|Q[4]~feeder_combout\ = ( \p1|mux0|y[4]~25_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[4]~25_combout\,
	combout => \p1|reg5|Q[4]~feeder_combout\);

-- Location: FF_X7_Y3_N23
\p1|reg5|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	d => \p1|reg5|Q[4]~feeder_combout\,
	clrn => \sw0~input_o\,
	ena => \p1|fsm|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(4));

-- Location: MLABCELL_X4_Y3_N36
\p1|reg4|Q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg4|Q[4]~feeder_combout\ = ( \p1|mux0|y[4]~25_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[4]~25_combout\,
	combout => \p1|reg4|Q[4]~feeder_combout\);

-- Location: FF_X4_Y3_N38
\p1|reg4|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	d => \p1|reg4|Q[4]~feeder_combout\,
	clrn => \sw0~input_o\,
	ena => \p1|fsm|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg4|Q\(4));

-- Location: LABCELL_X6_Y3_N27
\p1|mux0|y[4]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[4]~23_combout\ = ( \p1|reg5|Q\(4) & ( \p1|reg4|Q\(4) & ( (!\p1|mux0|y[1]~1_combout\) # ((!\p1|mux0|y[1]~0_combout\ & (\p1|reg7|Q\(4))) # (\p1|mux0|y[1]~0_combout\ & ((\p1|reg6|Q\(4))))) ) ) ) # ( !\p1|reg5|Q\(4) & ( \p1|reg4|Q\(4) & ( 
-- (!\p1|mux0|y[1]~1_combout\ & (((!\p1|mux0|y[1]~0_combout\)))) # (\p1|mux0|y[1]~1_combout\ & ((!\p1|mux0|y[1]~0_combout\ & (\p1|reg7|Q\(4))) # (\p1|mux0|y[1]~0_combout\ & ((\p1|reg6|Q\(4)))))) ) ) ) # ( \p1|reg5|Q\(4) & ( !\p1|reg4|Q\(4) & ( 
-- (!\p1|mux0|y[1]~1_combout\ & (((\p1|mux0|y[1]~0_combout\)))) # (\p1|mux0|y[1]~1_combout\ & ((!\p1|mux0|y[1]~0_combout\ & (\p1|reg7|Q\(4))) # (\p1|mux0|y[1]~0_combout\ & ((\p1|reg6|Q\(4)))))) ) ) ) # ( !\p1|reg5|Q\(4) & ( !\p1|reg4|Q\(4) & ( 
-- (\p1|mux0|y[1]~1_combout\ & ((!\p1|mux0|y[1]~0_combout\ & (\p1|reg7|Q\(4))) # (\p1|mux0|y[1]~0_combout\ & ((\p1|reg6|Q\(4)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101000110100001111110110000101101011011101010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[1]~1_combout\,
	datab => \p1|reg7|ALT_INV_Q\(4),
	datac => \p1|mux0|ALT_INV_y[1]~0_combout\,
	datad => \p1|reg6|ALT_INV_Q\(4),
	datae => \p1|reg5|ALT_INV_Q\(4),
	dataf => \p1|reg4|ALT_INV_Q\(4),
	combout => \p1|mux0|y[4]~23_combout\);

-- Location: LABCELL_X6_Y4_N18
\p1|mux0|y[4]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[4]~24_combout\ = ( \p1|reg3|Q\(4) & ( \p1|mux0|y[4]~23_combout\ & ( ((!\p1|mux0|y[1]~3_combout\ & ((\p1|reg1|Q\(4)))) # (\p1|mux0|y[1]~3_combout\ & (\p1|reg2|Q\(4)))) # (\p1|mux0|y[1]~4_combout\) ) ) ) # ( !\p1|reg3|Q\(4) & ( 
-- \p1|mux0|y[4]~23_combout\ & ( (!\p1|mux0|y[1]~3_combout\ & (((\p1|reg1|Q\(4))) # (\p1|mux0|y[1]~4_combout\))) # (\p1|mux0|y[1]~3_combout\ & (!\p1|mux0|y[1]~4_combout\ & (\p1|reg2|Q\(4)))) ) ) ) # ( \p1|reg3|Q\(4) & ( !\p1|mux0|y[4]~23_combout\ & ( 
-- (!\p1|mux0|y[1]~3_combout\ & (!\p1|mux0|y[1]~4_combout\ & ((\p1|reg1|Q\(4))))) # (\p1|mux0|y[1]~3_combout\ & (((\p1|reg2|Q\(4))) # (\p1|mux0|y[1]~4_combout\))) ) ) ) # ( !\p1|reg3|Q\(4) & ( !\p1|mux0|y[4]~23_combout\ & ( (!\p1|mux0|y[1]~4_combout\ & 
-- ((!\p1|mux0|y[1]~3_combout\ & ((\p1|reg1|Q\(4)))) # (\p1|mux0|y[1]~3_combout\ & (\p1|reg2|Q\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000101011001110100100110101011100011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[1]~3_combout\,
	datab => \p1|mux0|ALT_INV_y[1]~4_combout\,
	datac => \p1|reg2|ALT_INV_Q\(4),
	datad => \p1|reg1|ALT_INV_Q\(4),
	datae => \p1|reg3|ALT_INV_Q\(4),
	dataf => \p1|mux0|ALT_INV_y[4]~23_combout\,
	combout => \p1|mux0|y[4]~24_combout\);

-- Location: LABCELL_X6_Y4_N36
\p1|mux0|y[4]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[4]~25_combout\ = ( \p1|reg0|Q\(4) & ( \p1|mux0|y[4]~24_combout\ & ( ((!\p1|mux0|y[1]~11_combout\ & (\p1|regG|Q\(4))) # (\p1|mux0|y[1]~11_combout\ & ((\rom0|altsyncram_component|auto_generated|q_a\(4))))) # (\p1|mux0|y[1]~12_combout\) ) ) ) # ( 
-- !\p1|reg0|Q\(4) & ( \p1|mux0|y[4]~24_combout\ & ( (!\p1|mux0|y[1]~12_combout\ & ((!\p1|mux0|y[1]~11_combout\ & (\p1|regG|Q\(4))) # (\p1|mux0|y[1]~11_combout\ & ((\rom0|altsyncram_component|auto_generated|q_a\(4)))))) # (\p1|mux0|y[1]~12_combout\ & 
-- (\p1|mux0|y[1]~11_combout\)) ) ) ) # ( \p1|reg0|Q\(4) & ( !\p1|mux0|y[4]~24_combout\ & ( (!\p1|mux0|y[1]~12_combout\ & ((!\p1|mux0|y[1]~11_combout\ & (\p1|regG|Q\(4))) # (\p1|mux0|y[1]~11_combout\ & ((\rom0|altsyncram_component|auto_generated|q_a\(4)))))) 
-- # (\p1|mux0|y[1]~12_combout\ & (!\p1|mux0|y[1]~11_combout\)) ) ) ) # ( !\p1|reg0|Q\(4) & ( !\p1|mux0|y[4]~24_combout\ & ( (!\p1|mux0|y[1]~12_combout\ & ((!\p1|mux0|y[1]~11_combout\ & (\p1|regG|Q\(4))) # (\p1|mux0|y[1]~11_combout\ & 
-- ((\rom0|altsyncram_component|auto_generated|q_a\(4)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010010011000110111000011001001110110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[1]~12_combout\,
	datab => \p1|mux0|ALT_INV_y[1]~11_combout\,
	datac => \p1|regG|ALT_INV_Q\(4),
	datad => \rom0|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	datae => \p1|reg0|ALT_INV_Q\(4),
	dataf => \p1|mux0|ALT_INV_y[4]~24_combout\,
	combout => \p1|mux0|y[4]~25_combout\);

-- Location: FF_X4_Y4_N59
\p1|regA|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[5]~28_combout\,
	clrn => \sw0~input_o\,
	sload => VCC,
	ena => \p1|fsm|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regA|Q\(5));

-- Location: LABCELL_X5_Y4_N48
\p1|addsub0|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~21_sumout\ = SUM(( !\p1|fsm|AddSub~combout\ $ (!\p1|mux0|y[5]~28_combout\) ) + ( \p1|regA|Q\(5) ) + ( \p1|addsub0|Add0~18\ ))
-- \p1|addsub0|Add0~22\ = CARRY(( !\p1|fsm|AddSub~combout\ $ (!\p1|mux0|y[5]~28_combout\) ) + ( \p1|regA|Q\(5) ) + ( \p1|addsub0|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|fsm|ALT_INV_AddSub~combout\,
	datad => \p1|mux0|ALT_INV_y[5]~28_combout\,
	dataf => \p1|regA|ALT_INV_Q\(5),
	cin => \p1|addsub0|Add0~18\,
	sumout => \p1|addsub0|Add0~21_sumout\,
	cout => \p1|addsub0|Add0~22\);

-- Location: FF_X5_Y4_N50
\p1|regG|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	d => \p1|addsub0|Add0~21_sumout\,
	clrn => \sw0~input_o\,
	ena => \p1|fsm|y_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regG|Q\(5));

-- Location: FF_X6_Y4_N44
\p1|reg0|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	d => \p1|mux0|y[5]~28_combout\,
	clrn => \sw0~input_o\,
	ena => \p1|fsm|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(5));

-- Location: FF_X7_Y4_N17
\p1|reg1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[5]~28_combout\,
	clrn => \sw0~input_o\,
	sload => VCC,
	ena => \p1|fsm|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(5));

-- Location: FF_X7_Y4_N29
\p1|reg2|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[5]~28_combout\,
	clrn => \sw0~input_o\,
	sload => VCC,
	ena => \p1|fsm|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q\(5));

-- Location: FF_X6_Y4_N26
\p1|reg3|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[5]~28_combout\,
	clrn => \sw0~input_o\,
	sload => VCC,
	ena => \p1|fsm|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(5));

-- Location: FF_X6_Y3_N11
\p1|reg7|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[5]~28_combout\,
	clrn => \sw0~input_o\,
	sload => VCC,
	ena => \p1|fsm|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg7|Q\(5));

-- Location: FF_X6_Y3_N50
\p1|reg6|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[5]~28_combout\,
	clrn => \sw0~input_o\,
	sload => VCC,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(5));

-- Location: FF_X7_Y3_N29
\p1|reg5|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[5]~28_combout\,
	clrn => \sw0~input_o\,
	sload => VCC,
	ena => \p1|fsm|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(5));

-- Location: FF_X4_Y3_N5
\p1|reg4|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[5]~28_combout\,
	clrn => \sw0~input_o\,
	sload => VCC,
	ena => \p1|fsm|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg4|Q\(5));

-- Location: LABCELL_X6_Y3_N51
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

-- Location: LABCELL_X6_Y4_N24
\p1|mux0|y[5]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[5]~27_combout\ = ( \p1|reg3|Q\(5) & ( \p1|mux0|y[5]~26_combout\ & ( ((!\p1|mux0|y[1]~3_combout\ & (\p1|reg1|Q\(5))) # (\p1|mux0|y[1]~3_combout\ & ((\p1|reg2|Q\(5))))) # (\p1|mux0|y[1]~4_combout\) ) ) ) # ( !\p1|reg3|Q\(5) & ( 
-- \p1|mux0|y[5]~26_combout\ & ( (!\p1|mux0|y[1]~3_combout\ & (((\p1|reg1|Q\(5))) # (\p1|mux0|y[1]~4_combout\))) # (\p1|mux0|y[1]~3_combout\ & (!\p1|mux0|y[1]~4_combout\ & ((\p1|reg2|Q\(5))))) ) ) ) # ( \p1|reg3|Q\(5) & ( !\p1|mux0|y[5]~26_combout\ & ( 
-- (!\p1|mux0|y[1]~3_combout\ & (!\p1|mux0|y[1]~4_combout\ & (\p1|reg1|Q\(5)))) # (\p1|mux0|y[1]~3_combout\ & (((\p1|reg2|Q\(5))) # (\p1|mux0|y[1]~4_combout\))) ) ) ) # ( !\p1|reg3|Q\(5) & ( !\p1|mux0|y[5]~26_combout\ & ( (!\p1|mux0|y[1]~4_combout\ & 
-- ((!\p1|mux0|y[1]~3_combout\ & (\p1|reg1|Q\(5))) # (\p1|mux0|y[1]~3_combout\ & ((\p1|reg2|Q\(5)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000110010101110100101010011011100011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[1]~3_combout\,
	datab => \p1|mux0|ALT_INV_y[1]~4_combout\,
	datac => \p1|reg1|ALT_INV_Q\(5),
	datad => \p1|reg2|ALT_INV_Q\(5),
	datae => \p1|reg3|ALT_INV_Q\(5),
	dataf => \p1|mux0|ALT_INV_y[5]~26_combout\,
	combout => \p1|mux0|y[5]~27_combout\);

-- Location: LABCELL_X6_Y4_N42
\p1|mux0|y[5]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[5]~28_combout\ = ( \p1|reg0|Q\(5) & ( \p1|mux0|y[5]~27_combout\ & ( ((!\p1|mux0|y[1]~11_combout\ & (\p1|regG|Q\(5))) # (\p1|mux0|y[1]~11_combout\ & ((\rom0|altsyncram_component|auto_generated|q_a\(5))))) # (\p1|mux0|y[1]~12_combout\) ) ) ) # ( 
-- !\p1|reg0|Q\(5) & ( \p1|mux0|y[5]~27_combout\ & ( (!\p1|mux0|y[1]~12_combout\ & ((!\p1|mux0|y[1]~11_combout\ & (\p1|regG|Q\(5))) # (\p1|mux0|y[1]~11_combout\ & ((\rom0|altsyncram_component|auto_generated|q_a\(5)))))) # (\p1|mux0|y[1]~12_combout\ & 
-- (((\p1|mux0|y[1]~11_combout\)))) ) ) ) # ( \p1|reg0|Q\(5) & ( !\p1|mux0|y[5]~27_combout\ & ( (!\p1|mux0|y[1]~12_combout\ & ((!\p1|mux0|y[1]~11_combout\ & (\p1|regG|Q\(5))) # (\p1|mux0|y[1]~11_combout\ & 
-- ((\rom0|altsyncram_component|auto_generated|q_a\(5)))))) # (\p1|mux0|y[1]~12_combout\ & (((!\p1|mux0|y[1]~11_combout\)))) ) ) ) # ( !\p1|reg0|Q\(5) & ( !\p1|mux0|y[5]~27_combout\ & ( (!\p1|mux0|y[1]~12_combout\ & ((!\p1|mux0|y[1]~11_combout\ & 
-- (\p1|regG|Q\(5))) # (\p1|mux0|y[1]~11_combout\ & ((\rom0|altsyncram_component|auto_generated|q_a\(5)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010011100000111101000100101001011110111010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[1]~12_combout\,
	datab => \p1|regG|ALT_INV_Q\(5),
	datac => \p1|mux0|ALT_INV_y[1]~11_combout\,
	datad => \rom0|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datae => \p1|reg0|ALT_INV_Q\(5),
	dataf => \p1|mux0|ALT_INV_y[5]~27_combout\,
	combout => \p1|mux0|y[5]~28_combout\);

-- Location: MLABCELL_X4_Y4_N48
\p1|regA|Q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|regA|Q[6]~feeder_combout\ = ( \p1|mux0|y[6]~31_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[6]~31_combout\,
	combout => \p1|regA|Q[6]~feeder_combout\);

-- Location: FF_X4_Y4_N49
\p1|regA|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	d => \p1|regA|Q[6]~feeder_combout\,
	clrn => \sw0~input_o\,
	ena => \p1|fsm|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regA|Q\(6));

-- Location: LABCELL_X5_Y4_N51
\p1|addsub0|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~25_sumout\ = SUM(( !\p1|fsm|AddSub~combout\ $ (!\p1|mux0|y[6]~31_combout\) ) + ( \p1|regA|Q\(6) ) + ( \p1|addsub0|Add0~22\ ))
-- \p1|addsub0|Add0~26\ = CARRY(( !\p1|fsm|AddSub~combout\ $ (!\p1|mux0|y[6]~31_combout\) ) + ( \p1|regA|Q\(6) ) + ( \p1|addsub0|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \p1|fsm|ALT_INV_AddSub~combout\,
	datac => \p1|mux0|ALT_INV_y[6]~31_combout\,
	dataf => \p1|regA|ALT_INV_Q\(6),
	cin => \p1|addsub0|Add0~22\,
	sumout => \p1|addsub0|Add0~25_sumout\,
	cout => \p1|addsub0|Add0~26\);

-- Location: FF_X5_Y4_N52
\p1|regG|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	d => \p1|addsub0|Add0~25_sumout\,
	clrn => \sw0~input_o\,
	ena => \p1|fsm|y_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regG|Q\(6));

-- Location: FF_X6_Y4_N14
\p1|reg0|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	d => \p1|mux0|y[6]~31_combout\,
	clrn => \sw0~input_o\,
	ena => \p1|fsm|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(6));

-- Location: FF_X7_Y4_N49
\p1|reg2|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[6]~31_combout\,
	clrn => \sw0~input_o\,
	sload => VCC,
	ena => \p1|fsm|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q\(6));

-- Location: FF_X6_Y3_N2
\p1|reg7|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[6]~31_combout\,
	clrn => \sw0~input_o\,
	sload => VCC,
	ena => \p1|fsm|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg7|Q\(6));

-- Location: MLABCELL_X4_Y3_N30
\p1|reg4|Q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg4|Q[6]~feeder_combout\ = ( \p1|mux0|y[6]~31_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[6]~31_combout\,
	combout => \p1|reg4|Q[6]~feeder_combout\);

-- Location: FF_X4_Y3_N31
\p1|reg4|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	d => \p1|reg4|Q[6]~feeder_combout\,
	clrn => \sw0~input_o\,
	ena => \p1|fsm|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg4|Q\(6));

-- Location: FF_X6_Y3_N20
\p1|reg6|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[6]~31_combout\,
	clrn => \sw0~input_o\,
	sload => VCC,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(6));

-- Location: MLABCELL_X4_Y3_N18
\p1|reg5|Q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg5|Q[6]~feeder_combout\ = ( \p1|mux0|y[6]~31_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[6]~31_combout\,
	combout => \p1|reg5|Q[6]~feeder_combout\);

-- Location: FF_X4_Y3_N19
\p1|reg5|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	d => \p1|reg5|Q[6]~feeder_combout\,
	clrn => \sw0~input_o\,
	ena => \p1|fsm|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(6));

-- Location: LABCELL_X6_Y3_N21
\p1|mux0|y[6]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[6]~29_combout\ = ( \p1|reg5|Q\(6) & ( \p1|mux0|y[1]~1_combout\ & ( (!\p1|mux0|y[1]~0_combout\ & (\p1|reg7|Q\(6))) # (\p1|mux0|y[1]~0_combout\ & ((\p1|reg6|Q\(6)))) ) ) ) # ( !\p1|reg5|Q\(6) & ( \p1|mux0|y[1]~1_combout\ & ( 
-- (!\p1|mux0|y[1]~0_combout\ & (\p1|reg7|Q\(6))) # (\p1|mux0|y[1]~0_combout\ & ((\p1|reg6|Q\(6)))) ) ) ) # ( \p1|reg5|Q\(6) & ( !\p1|mux0|y[1]~1_combout\ & ( (\p1|reg4|Q\(6)) # (\p1|mux0|y[1]~0_combout\) ) ) ) # ( !\p1|reg5|Q\(6) & ( 
-- !\p1|mux0|y[1]~1_combout\ & ( (!\p1|mux0|y[1]~0_combout\ & \p1|reg4|Q\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111101000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg7|ALT_INV_Q\(6),
	datab => \p1|mux0|ALT_INV_y[1]~0_combout\,
	datac => \p1|reg4|ALT_INV_Q\(6),
	datad => \p1|reg6|ALT_INV_Q\(6),
	datae => \p1|reg5|ALT_INV_Q\(6),
	dataf => \p1|mux0|ALT_INV_y[1]~1_combout\,
	combout => \p1|mux0|y[6]~29_combout\);

-- Location: LABCELL_X7_Y4_N36
\p1|reg1|Q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg1|Q[6]~feeder_combout\ = ( \p1|mux0|y[6]~31_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[6]~31_combout\,
	combout => \p1|reg1|Q[6]~feeder_combout\);

-- Location: FF_X7_Y4_N37
\p1|reg1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	d => \p1|reg1|Q[6]~feeder_combout\,
	clrn => \sw0~input_o\,
	ena => \p1|fsm|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(6));

-- Location: FF_X6_Y4_N56
\p1|reg3|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[6]~31_combout\,
	clrn => \sw0~input_o\,
	sload => VCC,
	ena => \p1|fsm|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(6));

-- Location: LABCELL_X6_Y4_N54
\p1|mux0|y[6]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[6]~30_combout\ = ( \p1|reg3|Q\(6) & ( \p1|mux0|y[1]~4_combout\ & ( (\p1|mux0|y[6]~29_combout\) # (\p1|mux0|y[1]~3_combout\) ) ) ) # ( !\p1|reg3|Q\(6) & ( \p1|mux0|y[1]~4_combout\ & ( (!\p1|mux0|y[1]~3_combout\ & \p1|mux0|y[6]~29_combout\) ) ) ) 
-- # ( \p1|reg3|Q\(6) & ( !\p1|mux0|y[1]~4_combout\ & ( (!\p1|mux0|y[1]~3_combout\ & ((\p1|reg1|Q\(6)))) # (\p1|mux0|y[1]~3_combout\ & (\p1|reg2|Q\(6))) ) ) ) # ( !\p1|reg3|Q\(6) & ( !\p1|mux0|y[1]~4_combout\ & ( (!\p1|mux0|y[1]~3_combout\ & 
-- ((\p1|reg1|Q\(6)))) # (\p1|mux0|y[1]~3_combout\ & (\p1|reg2|Q\(6))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg2|ALT_INV_Q\(6),
	datab => \p1|mux0|ALT_INV_y[1]~3_combout\,
	datac => \p1|mux0|ALT_INV_y[6]~29_combout\,
	datad => \p1|reg1|ALT_INV_Q\(6),
	datae => \p1|reg3|ALT_INV_Q\(6),
	dataf => \p1|mux0|ALT_INV_y[1]~4_combout\,
	combout => \p1|mux0|y[6]~30_combout\);

-- Location: LABCELL_X6_Y4_N12
\p1|mux0|y[6]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[6]~31_combout\ = ( \p1|reg0|Q\(6) & ( \p1|mux0|y[6]~30_combout\ & ( ((!\p1|mux0|y[1]~11_combout\ & (\p1|regG|Q\(6))) # (\p1|mux0|y[1]~11_combout\ & ((\rom0|altsyncram_component|auto_generated|q_a\(6))))) # (\p1|mux0|y[1]~12_combout\) ) ) ) # ( 
-- !\p1|reg0|Q\(6) & ( \p1|mux0|y[6]~30_combout\ & ( (!\p1|mux0|y[1]~12_combout\ & ((!\p1|mux0|y[1]~11_combout\ & (\p1|regG|Q\(6))) # (\p1|mux0|y[1]~11_combout\ & ((\rom0|altsyncram_component|auto_generated|q_a\(6)))))) # (\p1|mux0|y[1]~12_combout\ & 
-- (\p1|mux0|y[1]~11_combout\)) ) ) ) # ( \p1|reg0|Q\(6) & ( !\p1|mux0|y[6]~30_combout\ & ( (!\p1|mux0|y[1]~12_combout\ & ((!\p1|mux0|y[1]~11_combout\ & (\p1|regG|Q\(6))) # (\p1|mux0|y[1]~11_combout\ & ((\rom0|altsyncram_component|auto_generated|q_a\(6)))))) 
-- # (\p1|mux0|y[1]~12_combout\ & (!\p1|mux0|y[1]~11_combout\)) ) ) ) # ( !\p1|reg0|Q\(6) & ( !\p1|mux0|y[6]~30_combout\ & ( (!\p1|mux0|y[1]~12_combout\ & ((!\p1|mux0|y[1]~11_combout\ & (\p1|regG|Q\(6))) # (\p1|mux0|y[1]~11_combout\ & 
-- ((\rom0|altsyncram_component|auto_generated|q_a\(6)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010010011000110111000011001001110110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[1]~12_combout\,
	datab => \p1|mux0|ALT_INV_y[1]~11_combout\,
	datac => \p1|regG|ALT_INV_Q\(6),
	datad => \rom0|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	datae => \p1|reg0|ALT_INV_Q\(6),
	dataf => \p1|mux0|ALT_INV_y[6]~30_combout\,
	combout => \p1|mux0|y[6]~31_combout\);

-- Location: FF_X4_Y4_N52
\p1|regA|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[7]~34_combout\,
	clrn => \sw0~input_o\,
	sload => VCC,
	ena => \p1|fsm|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regA|Q\(7));

-- Location: LABCELL_X5_Y4_N54
\p1|addsub0|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~29_sumout\ = SUM(( !\p1|fsm|AddSub~combout\ $ (!\p1|mux0|y[7]~34_combout\) ) + ( \p1|regA|Q\(7) ) + ( \p1|addsub0|Add0~26\ ))
-- \p1|addsub0|Add0~30\ = CARRY(( !\p1|fsm|AddSub~combout\ $ (!\p1|mux0|y[7]~34_combout\) ) + ( \p1|regA|Q\(7) ) + ( \p1|addsub0|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|fsm|ALT_INV_AddSub~combout\,
	datad => \p1|mux0|ALT_INV_y[7]~34_combout\,
	dataf => \p1|regA|ALT_INV_Q\(7),
	cin => \p1|addsub0|Add0~26\,
	sumout => \p1|addsub0|Add0~29_sumout\,
	cout => \p1|addsub0|Add0~30\);

-- Location: FF_X5_Y4_N55
\p1|regG|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	d => \p1|addsub0|Add0~29_sumout\,
	clrn => \sw0~input_o\,
	ena => \p1|fsm|y_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regG|Q\(7));

-- Location: FF_X6_Y4_N8
\p1|reg0|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	d => \p1|mux0|y[7]~34_combout\,
	clrn => \sw0~input_o\,
	ena => \p1|fsm|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(7));

-- Location: FF_X7_Y3_N8
\p1|reg5|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[7]~34_combout\,
	clrn => \sw0~input_o\,
	sload => VCC,
	ena => \p1|fsm|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(7));

-- Location: LABCELL_X6_Y3_N42
\p1|reg7|Q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg7|Q[7]~feeder_combout\ = \p1|mux0|y[7]~34_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|mux0|ALT_INV_y[7]~34_combout\,
	combout => \p1|reg7|Q[7]~feeder_combout\);

-- Location: FF_X6_Y3_N44
\p1|reg7|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	d => \p1|reg7|Q[7]~feeder_combout\,
	clrn => \sw0~input_o\,
	ena => \p1|fsm|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg7|Q\(7));

-- Location: FF_X6_Y3_N56
\p1|reg6|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[7]~34_combout\,
	clrn => \sw0~input_o\,
	sload => VCC,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(7));

-- Location: MLABCELL_X4_Y3_N33
\p1|reg4|Q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg4|Q[7]~feeder_combout\ = ( \p1|mux0|y[7]~34_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[7]~34_combout\,
	combout => \p1|reg4|Q[7]~feeder_combout\);

-- Location: FF_X4_Y3_N35
\p1|reg4|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	d => \p1|reg4|Q[7]~feeder_combout\,
	clrn => \sw0~input_o\,
	ena => \p1|fsm|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg4|Q\(7));

-- Location: LABCELL_X6_Y3_N54
\p1|mux0|y[7]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[7]~32_combout\ = ( \p1|reg6|Q\(7) & ( \p1|reg4|Q\(7) & ( (!\p1|mux0|y[1]~0_combout\ & (((!\p1|mux0|y[1]~1_combout\) # (\p1|reg7|Q\(7))))) # (\p1|mux0|y[1]~0_combout\ & (((\p1|mux0|y[1]~1_combout\)) # (\p1|reg5|Q\(7)))) ) ) ) # ( !\p1|reg6|Q\(7) 
-- & ( \p1|reg4|Q\(7) & ( (!\p1|mux0|y[1]~0_combout\ & (((!\p1|mux0|y[1]~1_combout\) # (\p1|reg7|Q\(7))))) # (\p1|mux0|y[1]~0_combout\ & (\p1|reg5|Q\(7) & (!\p1|mux0|y[1]~1_combout\))) ) ) ) # ( \p1|reg6|Q\(7) & ( !\p1|reg4|Q\(7) & ( 
-- (!\p1|mux0|y[1]~0_combout\ & (((\p1|mux0|y[1]~1_combout\ & \p1|reg7|Q\(7))))) # (\p1|mux0|y[1]~0_combout\ & (((\p1|mux0|y[1]~1_combout\)) # (\p1|reg5|Q\(7)))) ) ) ) # ( !\p1|reg6|Q\(7) & ( !\p1|reg4|Q\(7) & ( (!\p1|mux0|y[1]~0_combout\ & 
-- (((\p1|mux0|y[1]~1_combout\ & \p1|reg7|Q\(7))))) # (\p1|mux0|y[1]~0_combout\ & (\p1|reg5|Q\(7) & (!\p1|mux0|y[1]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100000100110001111111010000110111001101001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg5|ALT_INV_Q\(7),
	datab => \p1|mux0|ALT_INV_y[1]~0_combout\,
	datac => \p1|mux0|ALT_INV_y[1]~1_combout\,
	datad => \p1|reg7|ALT_INV_Q\(7),
	datae => \p1|reg6|ALT_INV_Q\(7),
	dataf => \p1|reg4|ALT_INV_Q\(7),
	combout => \p1|mux0|y[7]~32_combout\);

-- Location: FF_X7_Y4_N53
\p1|reg2|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[7]~34_combout\,
	clrn => \sw0~input_o\,
	sload => VCC,
	ena => \p1|fsm|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q\(7));

-- Location: LABCELL_X7_Y4_N39
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

-- Location: FF_X7_Y4_N40
\p1|reg1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	d => \p1|reg1|Q[7]~feeder_combout\,
	clrn => \sw0~input_o\,
	ena => \p1|fsm|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(7));

-- Location: FF_X6_Y4_N50
\p1|reg3|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[7]~34_combout\,
	clrn => \sw0~input_o\,
	sload => VCC,
	ena => \p1|fsm|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(7));

-- Location: LABCELL_X6_Y4_N48
\p1|mux0|y[7]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[7]~33_combout\ = ( \p1|reg3|Q\(7) & ( \p1|mux0|y[1]~4_combout\ & ( (\p1|mux0|y[7]~32_combout\) # (\p1|mux0|y[1]~3_combout\) ) ) ) # ( !\p1|reg3|Q\(7) & ( \p1|mux0|y[1]~4_combout\ & ( (!\p1|mux0|y[1]~3_combout\ & \p1|mux0|y[7]~32_combout\) ) ) ) 
-- # ( \p1|reg3|Q\(7) & ( !\p1|mux0|y[1]~4_combout\ & ( (!\p1|mux0|y[1]~3_combout\ & ((\p1|reg1|Q\(7)))) # (\p1|mux0|y[1]~3_combout\ & (\p1|reg2|Q\(7))) ) ) ) # ( !\p1|reg3|Q\(7) & ( !\p1|mux0|y[1]~4_combout\ & ( (!\p1|mux0|y[1]~3_combout\ & 
-- ((\p1|reg1|Q\(7)))) # (\p1|mux0|y[1]~3_combout\ & (\p1|reg2|Q\(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100100010001000100111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[1]~3_combout\,
	datab => \p1|mux0|ALT_INV_y[7]~32_combout\,
	datac => \p1|reg2|ALT_INV_Q\(7),
	datad => \p1|reg1|ALT_INV_Q\(7),
	datae => \p1|reg3|ALT_INV_Q\(7),
	dataf => \p1|mux0|ALT_INV_y[1]~4_combout\,
	combout => \p1|mux0|y[7]~33_combout\);

-- Location: LABCELL_X6_Y4_N6
\p1|mux0|y[7]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[7]~34_combout\ = ( \p1|reg0|Q\(7) & ( \p1|mux0|y[7]~33_combout\ & ( ((!\p1|mux0|y[1]~11_combout\ & (\p1|regG|Q\(7))) # (\p1|mux0|y[1]~11_combout\ & ((\rom0|altsyncram_component|auto_generated|q_a\(7))))) # (\p1|mux0|y[1]~12_combout\) ) ) ) # ( 
-- !\p1|reg0|Q\(7) & ( \p1|mux0|y[7]~33_combout\ & ( (!\p1|mux0|y[1]~12_combout\ & ((!\p1|mux0|y[1]~11_combout\ & (\p1|regG|Q\(7))) # (\p1|mux0|y[1]~11_combout\ & ((\rom0|altsyncram_component|auto_generated|q_a\(7)))))) # (\p1|mux0|y[1]~12_combout\ & 
-- (\p1|mux0|y[1]~11_combout\)) ) ) ) # ( \p1|reg0|Q\(7) & ( !\p1|mux0|y[7]~33_combout\ & ( (!\p1|mux0|y[1]~12_combout\ & ((!\p1|mux0|y[1]~11_combout\ & (\p1|regG|Q\(7))) # (\p1|mux0|y[1]~11_combout\ & ((\rom0|altsyncram_component|auto_generated|q_a\(7)))))) 
-- # (\p1|mux0|y[1]~12_combout\ & (!\p1|mux0|y[1]~11_combout\)) ) ) ) # ( !\p1|reg0|Q\(7) & ( !\p1|mux0|y[7]~33_combout\ & ( (!\p1|mux0|y[1]~12_combout\ & ((!\p1|mux0|y[1]~11_combout\ & (\p1|regG|Q\(7))) # (\p1|mux0|y[1]~11_combout\ & 
-- ((\rom0|altsyncram_component|auto_generated|q_a\(7)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010010011000110111000011001001110110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[1]~12_combout\,
	datab => \p1|mux0|ALT_INV_y[1]~11_combout\,
	datac => \p1|regG|ALT_INV_Q\(7),
	datad => \rom0|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	datae => \p1|reg0|ALT_INV_Q\(7),
	dataf => \p1|mux0|ALT_INV_y[7]~33_combout\,
	combout => \p1|mux0|y[7]~34_combout\);

-- Location: FF_X4_Y4_N44
\p1|regA|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[8]~37_combout\,
	clrn => \sw0~input_o\,
	sload => VCC,
	ena => \p1|fsm|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regA|Q\(8));

-- Location: LABCELL_X5_Y4_N57
\p1|addsub0|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~33_sumout\ = SUM(( !\p1|fsm|AddSub~combout\ $ (!\p1|mux0|y[8]~37_combout\) ) + ( \p1|regA|Q\(8) ) + ( \p1|addsub0|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|fsm|ALT_INV_AddSub~combout\,
	datad => \p1|mux0|ALT_INV_y[8]~37_combout\,
	dataf => \p1|regA|ALT_INV_Q\(8),
	cin => \p1|addsub0|Add0~30\,
	sumout => \p1|addsub0|Add0~33_sumout\);

-- Location: FF_X5_Y4_N58
\p1|regG|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	d => \p1|addsub0|Add0~33_sumout\,
	clrn => \sw0~input_o\,
	ena => \p1|fsm|y_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regG|Q\(8));

-- Location: FF_X6_Y4_N32
\p1|reg0|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	d => \p1|mux0|y[8]~37_combout\,
	clrn => \sw0~input_o\,
	ena => \p1|fsm|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(8));

-- Location: FF_X7_Y4_N25
\p1|reg2|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[8]~37_combout\,
	clrn => \sw0~input_o\,
	sload => VCC,
	ena => \p1|fsm|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q\(8));

-- Location: FF_X7_Y4_N19
\p1|reg1|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[8]~37_combout\,
	clrn => \sw0~input_o\,
	sload => VCC,
	ena => \p1|fsm|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(8));

-- Location: FF_X6_Y4_N2
\p1|reg3|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[8]~37_combout\,
	clrn => \sw0~input_o\,
	sload => VCC,
	ena => \p1|fsm|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(8));

-- Location: LABCELL_X7_Y3_N51
\p1|reg5|Q[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg5|Q[8]~feeder_combout\ = ( \p1|mux0|y[8]~37_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \p1|mux0|ALT_INV_y[8]~37_combout\,
	combout => \p1|reg5|Q[8]~feeder_combout\);

-- Location: FF_X7_Y3_N53
\p1|reg5|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	d => \p1|reg5|Q[8]~feeder_combout\,
	clrn => \sw0~input_o\,
	ena => \p1|fsm|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(8));

-- Location: LABCELL_X6_Y3_N6
\p1|reg7|Q[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|reg7|Q[8]~feeder_combout\ = \p1|mux0|y[8]~37_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \p1|mux0|ALT_INV_y[8]~37_combout\,
	combout => \p1|reg7|Q[8]~feeder_combout\);

-- Location: FF_X6_Y3_N8
\p1|reg7|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	d => \p1|reg7|Q[8]~feeder_combout\,
	clrn => \sw0~input_o\,
	ena => \p1|fsm|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg7|Q\(8));

-- Location: FF_X6_Y3_N38
\p1|reg6|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[8]~37_combout\,
	clrn => \sw0~input_o\,
	sload => VCC,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(8));

-- Location: FF_X4_Y3_N1
\p1|reg4|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1~inputCLKENA0_outclk\,
	asdata => \p1|mux0|y[8]~37_combout\,
	clrn => \sw0~input_o\,
	sload => VCC,
	ena => \p1|fsm|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg4|Q\(8));

-- Location: LABCELL_X6_Y3_N36
\p1|mux0|y[8]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[8]~35_combout\ = ( \p1|reg6|Q\(8) & ( \p1|reg4|Q\(8) & ( (!\p1|mux0|y[1]~0_combout\ & (((!\p1|mux0|y[1]~1_combout\) # (\p1|reg7|Q\(8))))) # (\p1|mux0|y[1]~0_combout\ & (((\p1|mux0|y[1]~1_combout\)) # (\p1|reg5|Q\(8)))) ) ) ) # ( !\p1|reg6|Q\(8) 
-- & ( \p1|reg4|Q\(8) & ( (!\p1|mux0|y[1]~0_combout\ & (((!\p1|mux0|y[1]~1_combout\) # (\p1|reg7|Q\(8))))) # (\p1|mux0|y[1]~0_combout\ & (\p1|reg5|Q\(8) & (!\p1|mux0|y[1]~1_combout\))) ) ) ) # ( \p1|reg6|Q\(8) & ( !\p1|reg4|Q\(8) & ( 
-- (!\p1|mux0|y[1]~0_combout\ & (((\p1|mux0|y[1]~1_combout\ & \p1|reg7|Q\(8))))) # (\p1|mux0|y[1]~0_combout\ & (((\p1|mux0|y[1]~1_combout\)) # (\p1|reg5|Q\(8)))) ) ) ) # ( !\p1|reg6|Q\(8) & ( !\p1|reg4|Q\(8) & ( (!\p1|mux0|y[1]~0_combout\ & 
-- (((\p1|mux0|y[1]~1_combout\ & \p1|reg7|Q\(8))))) # (\p1|mux0|y[1]~0_combout\ & (\p1|reg5|Q\(8) & (!\p1|mux0|y[1]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100000100110001111111010000110111001101001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg5|ALT_INV_Q\(8),
	datab => \p1|mux0|ALT_INV_y[1]~0_combout\,
	datac => \p1|mux0|ALT_INV_y[1]~1_combout\,
	datad => \p1|reg7|ALT_INV_Q\(8),
	datae => \p1|reg6|ALT_INV_Q\(8),
	dataf => \p1|reg4|ALT_INV_Q\(8),
	combout => \p1|mux0|y[8]~35_combout\);

-- Location: LABCELL_X6_Y4_N0
\p1|mux0|y[8]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[8]~36_combout\ = ( \p1|reg3|Q\(8) & ( \p1|mux0|y[8]~35_combout\ & ( ((!\p1|mux0|y[1]~3_combout\ & ((\p1|reg1|Q\(8)))) # (\p1|mux0|y[1]~3_combout\ & (\p1|reg2|Q\(8)))) # (\p1|mux0|y[1]~4_combout\) ) ) ) # ( !\p1|reg3|Q\(8) & ( 
-- \p1|mux0|y[8]~35_combout\ & ( (!\p1|mux0|y[1]~4_combout\ & ((!\p1|mux0|y[1]~3_combout\ & ((\p1|reg1|Q\(8)))) # (\p1|mux0|y[1]~3_combout\ & (\p1|reg2|Q\(8))))) # (\p1|mux0|y[1]~4_combout\ & (((!\p1|mux0|y[1]~3_combout\)))) ) ) ) # ( \p1|reg3|Q\(8) & ( 
-- !\p1|mux0|y[8]~35_combout\ & ( (!\p1|mux0|y[1]~4_combout\ & ((!\p1|mux0|y[1]~3_combout\ & ((\p1|reg1|Q\(8)))) # (\p1|mux0|y[1]~3_combout\ & (\p1|reg2|Q\(8))))) # (\p1|mux0|y[1]~4_combout\ & (((\p1|mux0|y[1]~3_combout\)))) ) ) ) # ( !\p1|reg3|Q\(8) & ( 
-- !\p1|mux0|y[8]~35_combout\ & ( (!\p1|mux0|y[1]~4_combout\ & ((!\p1|mux0|y[1]~3_combout\ & ((\p1|reg1|Q\(8)))) # (\p1|mux0|y[1]~3_combout\ & (\p1|reg2|Q\(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100000011000111011100111111010001000011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|reg2|ALT_INV_Q\(8),
	datab => \p1|mux0|ALT_INV_y[1]~4_combout\,
	datac => \p1|reg1|ALT_INV_Q\(8),
	datad => \p1|mux0|ALT_INV_y[1]~3_combout\,
	datae => \p1|reg3|ALT_INV_Q\(8),
	dataf => \p1|mux0|ALT_INV_y[8]~35_combout\,
	combout => \p1|mux0|y[8]~36_combout\);

-- Location: LABCELL_X6_Y4_N30
\p1|mux0|y[8]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[8]~37_combout\ = ( \p1|reg0|Q\(8) & ( \p1|mux0|y[8]~36_combout\ & ( ((!\p1|mux0|y[1]~11_combout\ & (\p1|regG|Q\(8))) # (\p1|mux0|y[1]~11_combout\ & ((\rom0|altsyncram_component|auto_generated|q_a\(8))))) # (\p1|mux0|y[1]~12_combout\) ) ) ) # ( 
-- !\p1|reg0|Q\(8) & ( \p1|mux0|y[8]~36_combout\ & ( (!\p1|mux0|y[1]~12_combout\ & ((!\p1|mux0|y[1]~11_combout\ & (\p1|regG|Q\(8))) # (\p1|mux0|y[1]~11_combout\ & ((\rom0|altsyncram_component|auto_generated|q_a\(8)))))) # (\p1|mux0|y[1]~12_combout\ & 
-- (((\p1|mux0|y[1]~11_combout\)))) ) ) ) # ( \p1|reg0|Q\(8) & ( !\p1|mux0|y[8]~36_combout\ & ( (!\p1|mux0|y[1]~12_combout\ & ((!\p1|mux0|y[1]~11_combout\ & (\p1|regG|Q\(8))) # (\p1|mux0|y[1]~11_combout\ & 
-- ((\rom0|altsyncram_component|auto_generated|q_a\(8)))))) # (\p1|mux0|y[1]~12_combout\ & (((!\p1|mux0|y[1]~11_combout\)))) ) ) ) # ( !\p1|reg0|Q\(8) & ( !\p1|mux0|y[8]~36_combout\ & ( (!\p1|mux0|y[1]~12_combout\ & ((!\p1|mux0|y[1]~11_combout\ & 
-- (\p1|regG|Q\(8))) # (\p1|mux0|y[1]~11_combout\ & ((\rom0|altsyncram_component|auto_generated|q_a\(8)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000110000010111110011000001010000001111110101111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|regG|ALT_INV_Q\(8),
	datab => \rom0|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datac => \p1|mux0|ALT_INV_y[1]~12_combout\,
	datad => \p1|mux0|ALT_INV_y[1]~11_combout\,
	datae => \p1|reg0|ALT_INV_Q\(8),
	dataf => \p1|mux0|ALT_INV_y[8]~36_combout\,
	combout => \p1|mux0|y[8]~37_combout\);

-- Location: LABCELL_X7_Y5_N3
\p1|fsm|Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector11~0_combout\ = ( \p1|ir0|Q\(7) & ( \p1|fsm|y_Q.T3~q\ ) ) # ( !\p1|ir0|Q\(7) & ( \p1|fsm|y_Q.T3~q\ ) ) # ( !\p1|ir0|Q\(7) & ( !\p1|fsm|y_Q.T3~q\ & ( (\p1|fsm|y_Q.T1~q\ & !\p1|ir0|Q\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T1~q\,
	datab => \p1|ir0|ALT_INV_Q\(8),
	datae => \p1|ir0|ALT_INV_Q\(7),
	dataf => \p1|fsm|ALT_INV_y_Q.T3~q\,
	combout => \p1|fsm|Selector11~0_combout\);

-- Location: LABCELL_X29_Y41_N3
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


