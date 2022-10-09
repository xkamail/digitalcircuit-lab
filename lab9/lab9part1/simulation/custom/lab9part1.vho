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

-- DATE "10/10/2022 02:06:06"

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
	debug_state : BUFFER std_logic_vector(1 DOWNTO 0);
	debug_I : BUFFER std_logic_vector(2 DOWNTO 0);
	debug_R0to7out : BUFFER std_logic_vector(0 TO 7);
	busWires : BUFFER std_logic_vector(8 DOWNTO 0)
	);
END lab9part1;

-- Design Ports Information
-- done	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_state[0]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_state[1]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_I[0]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_I[1]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_I[2]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_R0to7out[7]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_R0to7out[6]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_R0to7out[5]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_R0to7out[4]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_R0to7out[3]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_R0to7out[2]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_R0to7out[1]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_R0to7out[0]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busWires[0]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busWires[1]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busWires[2]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busWires[3]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busWires[4]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busWires[5]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busWires[6]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busWires[7]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busWires[8]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- run	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[6]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[7]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[8]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[4]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[5]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_debug_state : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_debug_I : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_debug_R0to7out : std_logic_vector(0 TO 7);
SIGNAL ww_busWires : std_logic_vector(8 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \data_in[7]~input_o\ : std_logic;
SIGNAL \data_in[8]~input_o\ : std_logic;
SIGNAL \fsm|y_D.T2~0_combout\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \fsm|y_Q.T2~q\ : std_logic;
SIGNAL \run~input_o\ : std_logic;
SIGNAL \fsm|Selector0~0_combout\ : std_logic;
SIGNAL \fsm|y_Q.T0~q\ : std_logic;
SIGNAL \fsm|Selector0~1_combout\ : std_logic;
SIGNAL \fsm|y_Q.T1~q\ : std_logic;
SIGNAL \fsm|y_D.T3~0_combout\ : std_logic;
SIGNAL \fsm|y_Q.T3~q\ : std_logic;
SIGNAL \fsm|Selector1~0_combout\ : std_logic;
SIGNAL \fsm|Selector2~0_combout\ : std_logic;
SIGNAL \fsm|done~combout\ : std_logic;
SIGNAL \fsm|done~0_combout\ : std_logic;
SIGNAL \fsm|debug_state~0_combout\ : std_logic;
SIGNAL \data_in[6]~input_o\ : std_logic;
SIGNAL \data_in[0]~input_o\ : std_logic;
SIGNAL \data_in[2]~input_o\ : std_logic;
SIGNAL \data_in[1]~input_o\ : std_logic;
SIGNAL \dexY|Mux0~0_combout\ : std_logic;
SIGNAL \fsm|R0toR7out[0]~0_combout\ : std_logic;
SIGNAL \dexY|Mux0~1_combout\ : std_logic;
SIGNAL \dexY|Mux0~2_combout\ : std_logic;
SIGNAL \dexY|Mux0~3_combout\ : std_logic;
SIGNAL \dexY|Mux0~4_combout\ : std_logic;
SIGNAL \dexY|Mux0~5_combout\ : std_logic;
SIGNAL \dexY|Mux0~6_combout\ : std_logic;
SIGNAL \dexY|Mux0~7_combout\ : std_logic;
SIGNAL \fsm|Mux23~0_combout\ : std_logic;
SIGNAL \fsm|Dout~combout\ : std_logic;
SIGNAL \data_in[3]~input_o\ : std_logic;
SIGNAL \fsm|Selector10~0_combout\ : std_logic;
SIGNAL \data_in[4]~input_o\ : std_logic;
SIGNAL \data_in[5]~input_o\ : std_logic;
SIGNAL \fsm|Selector10~1_combout\ : std_logic;
SIGNAL \fsm|Selector3~0_combout\ : std_logic;
SIGNAL \fsm|Selector7~0_combout\ : std_logic;
SIGNAL \fsm|Selector8~0_combout\ : std_logic;
SIGNAL \reg1|Q[0]~feeder_combout\ : std_logic;
SIGNAL \fsm|Selector9~0_combout\ : std_logic;
SIGNAL \mux0|y[0]~4_combout\ : std_logic;
SIGNAL \mux0|y[0]~3_combout\ : std_logic;
SIGNAL \reg4|Q[0]~feeder_combout\ : std_logic;
SIGNAL \fsm|Selector6~0_combout\ : std_logic;
SIGNAL \fsm|Selector4~0_combout\ : std_logic;
SIGNAL \mux0|y[0]~1_combout\ : std_logic;
SIGNAL \fsm|Selector5~0_combout\ : std_logic;
SIGNAL \reg7|Q[0]~feeder_combout\ : std_logic;
SIGNAL \fsm|Selector3~1_combout\ : std_logic;
SIGNAL \mux0|y[0]~0_combout\ : std_logic;
SIGNAL \mux0|y[0]~2_combout\ : std_logic;
SIGNAL \mux0|y[0]~5_combout\ : std_logic;
SIGNAL \mux0|y[0]~6_combout\ : std_logic;
SIGNAL \mux0|Mux9~4_combout\ : std_logic;
SIGNAL \mux0|Mux9~2_combout\ : std_logic;
SIGNAL \mux0|Mux9~1_combout\ : std_logic;
SIGNAL \mux0|Mux9~3_combout\ : std_logic;
SIGNAL \mux0|Mux9~0_combout\ : std_logic;
SIGNAL \mux0|y[8]~7_combout\ : std_logic;
SIGNAL \reg5|Q[1]~feeder_combout\ : std_logic;
SIGNAL \mux0|y[1]~8_combout\ : std_logic;
SIGNAL \mux0|y[1]~9_combout\ : std_logic;
SIGNAL \mux0|y[1]~10_combout\ : std_logic;
SIGNAL \reg3|Q[2]~feeder_combout\ : std_logic;
SIGNAL \reg7|Q[2]~feeder_combout\ : std_logic;
SIGNAL \reg4|Q[2]~feeder_combout\ : std_logic;
SIGNAL \mux0|y[2]~11_combout\ : std_logic;
SIGNAL \mux0|y[2]~12_combout\ : std_logic;
SIGNAL \mux0|y[2]~13_combout\ : std_logic;
SIGNAL \reg1|Q[3]~feeder_combout\ : std_logic;
SIGNAL \reg3|Q[3]~feeder_combout\ : std_logic;
SIGNAL \reg4|Q[3]~feeder_combout\ : std_logic;
SIGNAL \reg6|Q[3]~feeder_combout\ : std_logic;
SIGNAL \mux0|y[3]~14_combout\ : std_logic;
SIGNAL \mux0|y[3]~15_combout\ : std_logic;
SIGNAL \mux0|y[3]~16_combout\ : std_logic;
SIGNAL \reg6|Q[4]~feeder_combout\ : std_logic;
SIGNAL \reg7|Q[4]~feeder_combout\ : std_logic;
SIGNAL \mux0|y[4]~17_combout\ : std_logic;
SIGNAL \mux0|y[4]~18_combout\ : std_logic;
SIGNAL \mux0|y[4]~19_combout\ : std_logic;
SIGNAL \reg1|Q[5]~feeder_combout\ : std_logic;
SIGNAL \reg7|Q[5]~feeder_combout\ : std_logic;
SIGNAL \reg4|Q[5]~feeder_combout\ : std_logic;
SIGNAL \reg6|Q[5]~feeder_combout\ : std_logic;
SIGNAL \mux0|y[5]~20_combout\ : std_logic;
SIGNAL \mux0|y[5]~21_combout\ : std_logic;
SIGNAL \mux0|y[5]~22_combout\ : std_logic;
SIGNAL \reg6|Q[6]~feeder_combout\ : std_logic;
SIGNAL \reg4|Q[6]~feeder_combout\ : std_logic;
SIGNAL \mux0|y[6]~23_combout\ : std_logic;
SIGNAL \mux0|y[6]~24_combout\ : std_logic;
SIGNAL \mux0|y[6]~25_combout\ : std_logic;
SIGNAL \reg3|Q[7]~feeder_combout\ : std_logic;
SIGNAL \reg4|Q[7]~feeder_combout\ : std_logic;
SIGNAL \reg7|Q[7]~feeder_combout\ : std_logic;
SIGNAL \mux0|y[7]~26_combout\ : std_logic;
SIGNAL \mux0|y[7]~27_combout\ : std_logic;
SIGNAL \mux0|y[7]~28_combout\ : std_logic;
SIGNAL \reg3|Q[8]~feeder_combout\ : std_logic;
SIGNAL \mux0|y[8]~29_combout\ : std_logic;
SIGNAL \mux0|y[8]~30_combout\ : std_logic;
SIGNAL \mux0|y[8]~31_combout\ : std_logic;
SIGNAL \ir0|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg4|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg0|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg3|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg7|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg2|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg6|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg1|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg5|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \fsm|R0toR7out\ : std_logic_vector(0 TO 7);
SIGNAL \mux0|y\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \fsm|Rin\ : std_logic_vector(0 TO 7);
SIGNAL \ALT_INV_data_in[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_run~input_o\ : std_logic;
SIGNAL \fsm|ALT_INV_Rin\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \fsm|ALT_INV_Dout~combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \fsm|ALT_INV_R0toR7out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \fsm|ALT_INV_done~combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector8~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector9~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector7~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector6~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector4~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector3~1_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector10~1_combout\ : std_logic;
SIGNAL \ir0|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \fsm|ALT_INV_Selector10~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Mux23~0_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[8]~31_combout\ : std_logic;
SIGNAL \mux0|ALT_INV_y[8]~30_combout\ : std_logic;
SIGNAL \reg2|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg1|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg3|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \mux0|ALT_INV_y[8]~29_combout\ : std_logic;
SIGNAL \reg5|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg4|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg6|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg7|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg0|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
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
SIGNAL \dexY|ALT_INV_Mux0~7_combout\ : std_logic;
SIGNAL \dexY|ALT_INV_Mux0~6_combout\ : std_logic;
SIGNAL \dexY|ALT_INV_Mux0~5_combout\ : std_logic;
SIGNAL \dexY|ALT_INV_Mux0~4_combout\ : std_logic;
SIGNAL \dexY|ALT_INV_Mux0~3_combout\ : std_logic;
SIGNAL \dexY|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \dexY|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_R0toR7out[0]~0_combout\ : std_logic;
SIGNAL \dexY|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_y_Q.T3~q\ : std_logic;
SIGNAL \fsm|ALT_INV_debug_state~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_y_Q.T1~q\ : std_logic;
SIGNAL \fsm|ALT_INV_done~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_y_Q.T2~q\ : std_logic;
SIGNAL \fsm|ALT_INV_y_Q.T0~q\ : std_logic;

BEGIN

ww_data_in <= data_in;
ww_reset_n <= reset_n;
ww_clk <= clk;
ww_run <= run;
done <= ww_done;
debug_state <= ww_debug_state;
debug_I <= ww_debug_I;
debug_R0to7out <= ww_debug_R0to7out;
busWires <= ww_busWires;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_data_in[5]~input_o\ <= NOT \data_in[5]~input_o\;
\ALT_INV_data_in[4]~input_o\ <= NOT \data_in[4]~input_o\;
\ALT_INV_data_in[3]~input_o\ <= NOT \data_in[3]~input_o\;
\ALT_INV_data_in[2]~input_o\ <= NOT \data_in[2]~input_o\;
\ALT_INV_data_in[1]~input_o\ <= NOT \data_in[1]~input_o\;
\ALT_INV_data_in[0]~input_o\ <= NOT \data_in[0]~input_o\;
\ALT_INV_data_in[8]~input_o\ <= NOT \data_in[8]~input_o\;
\ALT_INV_data_in[7]~input_o\ <= NOT \data_in[7]~input_o\;
\ALT_INV_data_in[6]~input_o\ <= NOT \data_in[6]~input_o\;
\ALT_INV_run~input_o\ <= NOT \run~input_o\;
\fsm|ALT_INV_Rin\(2) <= NOT \fsm|Rin\(2);
\fsm|ALT_INV_Rin\(1) <= NOT \fsm|Rin\(1);
\fsm|ALT_INV_Rin\(3) <= NOT \fsm|Rin\(3);
\fsm|ALT_INV_Rin\(5) <= NOT \fsm|Rin\(5);
\fsm|ALT_INV_Rin\(4) <= NOT \fsm|Rin\(4);
\fsm|ALT_INV_Rin\(6) <= NOT \fsm|Rin\(6);
\fsm|ALT_INV_Rin\(7) <= NOT \fsm|Rin\(7);
\fsm|ALT_INV_Rin\(0) <= NOT \fsm|Rin\(0);
\fsm|ALT_INV_Dout~combout\ <= NOT \fsm|Dout~combout\;
\mux0|ALT_INV_y\(8) <= NOT \mux0|y\(8);
\mux0|ALT_INV_y\(7) <= NOT \mux0|y\(7);
\mux0|ALT_INV_y\(6) <= NOT \mux0|y\(6);
\mux0|ALT_INV_y\(5) <= NOT \mux0|y\(5);
\mux0|ALT_INV_y\(4) <= NOT \mux0|y\(4);
\mux0|ALT_INV_y\(3) <= NOT \mux0|y\(3);
\mux0|ALT_INV_y\(2) <= NOT \mux0|y\(2);
\mux0|ALT_INV_y\(1) <= NOT \mux0|y\(1);
\mux0|ALT_INV_y\(0) <= NOT \mux0|y\(0);
\fsm|ALT_INV_R0toR7out\(0) <= NOT \fsm|R0toR7out\(0);
\fsm|ALT_INV_R0toR7out\(1) <= NOT \fsm|R0toR7out\(1);
\fsm|ALT_INV_R0toR7out\(2) <= NOT \fsm|R0toR7out\(2);
\fsm|ALT_INV_R0toR7out\(3) <= NOT \fsm|R0toR7out\(3);
\fsm|ALT_INV_R0toR7out\(4) <= NOT \fsm|R0toR7out\(4);
\fsm|ALT_INV_R0toR7out\(5) <= NOT \fsm|R0toR7out\(5);
\fsm|ALT_INV_R0toR7out\(6) <= NOT \fsm|R0toR7out\(6);
\fsm|ALT_INV_R0toR7out\(7) <= NOT \fsm|R0toR7out\(7);
\fsm|ALT_INV_done~combout\ <= NOT \fsm|done~combout\;
\fsm|ALT_INV_Selector8~0_combout\ <= NOT \fsm|Selector8~0_combout\;
\fsm|ALT_INV_Selector9~0_combout\ <= NOT \fsm|Selector9~0_combout\;
\fsm|ALT_INV_Selector7~0_combout\ <= NOT \fsm|Selector7~0_combout\;
\fsm|ALT_INV_Selector5~0_combout\ <= NOT \fsm|Selector5~0_combout\;
\fsm|ALT_INV_Selector6~0_combout\ <= NOT \fsm|Selector6~0_combout\;
\fsm|ALT_INV_Selector4~0_combout\ <= NOT \fsm|Selector4~0_combout\;
\fsm|ALT_INV_Selector3~1_combout\ <= NOT \fsm|Selector3~1_combout\;
\fsm|ALT_INV_Selector3~0_combout\ <= NOT \fsm|Selector3~0_combout\;
\fsm|ALT_INV_Selector10~1_combout\ <= NOT \fsm|Selector10~1_combout\;
\ir0|ALT_INV_Q\(5) <= NOT \ir0|Q\(5);
\ir0|ALT_INV_Q\(4) <= NOT \ir0|Q\(4);
\fsm|ALT_INV_Selector10~0_combout\ <= NOT \fsm|Selector10~0_combout\;
\ir0|ALT_INV_Q\(3) <= NOT \ir0|Q\(3);
\fsm|ALT_INV_Mux23~0_combout\ <= NOT \fsm|Mux23~0_combout\;
\mux0|ALT_INV_y[8]~31_combout\ <= NOT \mux0|y[8]~31_combout\;
\mux0|ALT_INV_y[8]~30_combout\ <= NOT \mux0|y[8]~30_combout\;
\reg2|ALT_INV_Q\(8) <= NOT \reg2|Q\(8);
\reg1|ALT_INV_Q\(8) <= NOT \reg1|Q\(8);
\reg3|ALT_INV_Q\(8) <= NOT \reg3|Q\(8);
\mux0|ALT_INV_y[8]~29_combout\ <= NOT \mux0|y[8]~29_combout\;
\reg5|ALT_INV_Q\(8) <= NOT \reg5|Q\(8);
\reg4|ALT_INV_Q\(8) <= NOT \reg4|Q\(8);
\reg6|ALT_INV_Q\(8) <= NOT \reg6|Q\(8);
\reg7|ALT_INV_Q\(8) <= NOT \reg7|Q\(8);
\reg0|ALT_INV_Q\(8) <= NOT \reg0|Q\(8);
\mux0|ALT_INV_y[7]~28_combout\ <= NOT \mux0|y[7]~28_combout\;
\mux0|ALT_INV_y[7]~27_combout\ <= NOT \mux0|y[7]~27_combout\;
\reg2|ALT_INV_Q\(7) <= NOT \reg2|Q\(7);
\reg1|ALT_INV_Q\(7) <= NOT \reg1|Q\(7);
\reg3|ALT_INV_Q\(7) <= NOT \reg3|Q\(7);
\mux0|ALT_INV_y[7]~26_combout\ <= NOT \mux0|y[7]~26_combout\;
\reg5|ALT_INV_Q\(7) <= NOT \reg5|Q\(7);
\reg4|ALT_INV_Q\(7) <= NOT \reg4|Q\(7);
\reg6|ALT_INV_Q\(7) <= NOT \reg6|Q\(7);
\reg7|ALT_INV_Q\(7) <= NOT \reg7|Q\(7);
\reg0|ALT_INV_Q\(7) <= NOT \reg0|Q\(7);
\mux0|ALT_INV_y[6]~25_combout\ <= NOT \mux0|y[6]~25_combout\;
\mux0|ALT_INV_y[6]~24_combout\ <= NOT \mux0|y[6]~24_combout\;
\reg2|ALT_INV_Q\(6) <= NOT \reg2|Q\(6);
\reg1|ALT_INV_Q\(6) <= NOT \reg1|Q\(6);
\reg3|ALT_INV_Q\(6) <= NOT \reg3|Q\(6);
\mux0|ALT_INV_y[6]~23_combout\ <= NOT \mux0|y[6]~23_combout\;
\reg5|ALT_INV_Q\(6) <= NOT \reg5|Q\(6);
\reg4|ALT_INV_Q\(6) <= NOT \reg4|Q\(6);
\reg6|ALT_INV_Q\(6) <= NOT \reg6|Q\(6);
\reg7|ALT_INV_Q\(6) <= NOT \reg7|Q\(6);
\reg0|ALT_INV_Q\(6) <= NOT \reg0|Q\(6);
\mux0|ALT_INV_y[5]~22_combout\ <= NOT \mux0|y[5]~22_combout\;
\mux0|ALT_INV_y[5]~21_combout\ <= NOT \mux0|y[5]~21_combout\;
\reg2|ALT_INV_Q\(5) <= NOT \reg2|Q\(5);
\reg1|ALT_INV_Q\(5) <= NOT \reg1|Q\(5);
\reg3|ALT_INV_Q\(5) <= NOT \reg3|Q\(5);
\mux0|ALT_INV_y[5]~20_combout\ <= NOT \mux0|y[5]~20_combout\;
\reg5|ALT_INV_Q\(5) <= NOT \reg5|Q\(5);
\reg4|ALT_INV_Q\(5) <= NOT \reg4|Q\(5);
\reg6|ALT_INV_Q\(5) <= NOT \reg6|Q\(5);
\reg7|ALT_INV_Q\(5) <= NOT \reg7|Q\(5);
\reg0|ALT_INV_Q\(5) <= NOT \reg0|Q\(5);
\mux0|ALT_INV_y[4]~19_combout\ <= NOT \mux0|y[4]~19_combout\;
\mux0|ALT_INV_y[4]~18_combout\ <= NOT \mux0|y[4]~18_combout\;
\reg2|ALT_INV_Q\(4) <= NOT \reg2|Q\(4);
\reg1|ALT_INV_Q\(4) <= NOT \reg1|Q\(4);
\reg3|ALT_INV_Q\(4) <= NOT \reg3|Q\(4);
\mux0|ALT_INV_y[4]~17_combout\ <= NOT \mux0|y[4]~17_combout\;
\reg5|ALT_INV_Q\(4) <= NOT \reg5|Q\(4);
\reg4|ALT_INV_Q\(4) <= NOT \reg4|Q\(4);
\reg6|ALT_INV_Q\(4) <= NOT \reg6|Q\(4);
\reg7|ALT_INV_Q\(4) <= NOT \reg7|Q\(4);
\reg0|ALT_INV_Q\(4) <= NOT \reg0|Q\(4);
\mux0|ALT_INV_y[3]~16_combout\ <= NOT \mux0|y[3]~16_combout\;
\mux0|ALT_INV_y[3]~15_combout\ <= NOT \mux0|y[3]~15_combout\;
\reg2|ALT_INV_Q\(3) <= NOT \reg2|Q\(3);
\reg1|ALT_INV_Q\(3) <= NOT \reg1|Q\(3);
\reg3|ALT_INV_Q\(3) <= NOT \reg3|Q\(3);
\mux0|ALT_INV_y[3]~14_combout\ <= NOT \mux0|y[3]~14_combout\;
\reg5|ALT_INV_Q\(3) <= NOT \reg5|Q\(3);
\reg4|ALT_INV_Q\(3) <= NOT \reg4|Q\(3);
\reg6|ALT_INV_Q\(3) <= NOT \reg6|Q\(3);
\reg7|ALT_INV_Q\(3) <= NOT \reg7|Q\(3);
\reg0|ALT_INV_Q\(3) <= NOT \reg0|Q\(3);
\mux0|ALT_INV_y[2]~13_combout\ <= NOT \mux0|y[2]~13_combout\;
\mux0|ALT_INV_y[2]~12_combout\ <= NOT \mux0|y[2]~12_combout\;
\reg2|ALT_INV_Q\(2) <= NOT \reg2|Q\(2);
\reg1|ALT_INV_Q\(2) <= NOT \reg1|Q\(2);
\reg3|ALT_INV_Q\(2) <= NOT \reg3|Q\(2);
\mux0|ALT_INV_y[2]~11_combout\ <= NOT \mux0|y[2]~11_combout\;
\reg5|ALT_INV_Q\(2) <= NOT \reg5|Q\(2);
\reg4|ALT_INV_Q\(2) <= NOT \reg4|Q\(2);
\reg6|ALT_INV_Q\(2) <= NOT \reg6|Q\(2);
\reg7|ALT_INV_Q\(2) <= NOT \reg7|Q\(2);
\reg0|ALT_INV_Q\(2) <= NOT \reg0|Q\(2);
\mux0|ALT_INV_y[1]~10_combout\ <= NOT \mux0|y[1]~10_combout\;
\mux0|ALT_INV_y[1]~9_combout\ <= NOT \mux0|y[1]~9_combout\;
\reg2|ALT_INV_Q\(1) <= NOT \reg2|Q\(1);
\reg1|ALT_INV_Q\(1) <= NOT \reg1|Q\(1);
\reg3|ALT_INV_Q\(1) <= NOT \reg3|Q\(1);
\mux0|ALT_INV_y[1]~8_combout\ <= NOT \mux0|y[1]~8_combout\;
\reg5|ALT_INV_Q\(1) <= NOT \reg5|Q\(1);
\reg4|ALT_INV_Q\(1) <= NOT \reg4|Q\(1);
\reg6|ALT_INV_Q\(1) <= NOT \reg6|Q\(1);
\reg7|ALT_INV_Q\(1) <= NOT \reg7|Q\(1);
\reg0|ALT_INV_Q\(1) <= NOT \reg0|Q\(1);
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
\reg1|ALT_INV_Q\(0) <= NOT \reg1|Q\(0);
\reg3|ALT_INV_Q\(0) <= NOT \reg3|Q\(0);
\mux0|ALT_INV_y[0]~2_combout\ <= NOT \mux0|y[0]~2_combout\;
\mux0|ALT_INV_y[0]~1_combout\ <= NOT \mux0|y[0]~1_combout\;
\mux0|ALT_INV_y[0]~0_combout\ <= NOT \mux0|y[0]~0_combout\;
\reg5|ALT_INV_Q\(0) <= NOT \reg5|Q\(0);
\reg4|ALT_INV_Q\(0) <= NOT \reg4|Q\(0);
\reg6|ALT_INV_Q\(0) <= NOT \reg6|Q\(0);
\reg7|ALT_INV_Q\(0) <= NOT \reg7|Q\(0);
\reg0|ALT_INV_Q\(0) <= NOT \reg0|Q\(0);
\dexY|ALT_INV_Mux0~7_combout\ <= NOT \dexY|Mux0~7_combout\;
\dexY|ALT_INV_Mux0~6_combout\ <= NOT \dexY|Mux0~6_combout\;
\dexY|ALT_INV_Mux0~5_combout\ <= NOT \dexY|Mux0~5_combout\;
\dexY|ALT_INV_Mux0~4_combout\ <= NOT \dexY|Mux0~4_combout\;
\dexY|ALT_INV_Mux0~3_combout\ <= NOT \dexY|Mux0~3_combout\;
\dexY|ALT_INV_Mux0~2_combout\ <= NOT \dexY|Mux0~2_combout\;
\dexY|ALT_INV_Mux0~1_combout\ <= NOT \dexY|Mux0~1_combout\;
\fsm|ALT_INV_R0toR7out[0]~0_combout\ <= NOT \fsm|R0toR7out[0]~0_combout\;
\dexY|ALT_INV_Mux0~0_combout\ <= NOT \dexY|Mux0~0_combout\;
\ir0|ALT_INV_Q\(1) <= NOT \ir0|Q\(1);
\ir0|ALT_INV_Q\(0) <= NOT \ir0|Q\(0);
\ir0|ALT_INV_Q\(2) <= NOT \ir0|Q\(2);
\fsm|ALT_INV_Selector2~0_combout\ <= NOT \fsm|Selector2~0_combout\;
\fsm|ALT_INV_Selector1~0_combout\ <= NOT \fsm|Selector1~0_combout\;
\fsm|ALT_INV_y_Q.T3~q\ <= NOT \fsm|y_Q.T3~q\;
\ir0|ALT_INV_Q\(8) <= NOT \ir0|Q\(8);
\ir0|ALT_INV_Q\(7) <= NOT \ir0|Q\(7);
\ir0|ALT_INV_Q\(6) <= NOT \ir0|Q\(6);
\fsm|ALT_INV_debug_state~0_combout\ <= NOT \fsm|debug_state~0_combout\;
\fsm|ALT_INV_y_Q.T1~q\ <= NOT \fsm|y_Q.T1~q\;
\fsm|ALT_INV_done~0_combout\ <= NOT \fsm|done~0_combout\;
\fsm|ALT_INV_y_Q.T2~q\ <= NOT \fsm|y_Q.T2~q\;
\fsm|ALT_INV_y_Q.T0~q\ <= NOT \fsm|y_Q.T0~q\;

-- Location: IOOBUF_X18_Y0_N36
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

-- Location: IOOBUF_X23_Y0_N59
\debug_state[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|ALT_INV_done~0_combout\,
	devoe => ww_devoe,
	o => ww_debug_state(0));

-- Location: IOOBUF_X22_Y0_N2
\debug_state[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|ALT_INV_debug_state~0_combout\,
	devoe => ww_devoe,
	o => ww_debug_state(1));

-- Location: IOOBUF_X18_Y0_N53
\debug_I[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ir0|Q\(6),
	devoe => ww_devoe,
	o => ww_debug_I(0));

-- Location: IOOBUF_X16_Y0_N42
\debug_I[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ir0|Q\(7),
	devoe => ww_devoe,
	o => ww_debug_I(1));

-- Location: IOOBUF_X10_Y0_N76
\debug_I[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ir0|Q\(8),
	devoe => ww_devoe,
	o => ww_debug_I(2));

-- Location: IOOBUF_X22_Y0_N53
\debug_R0to7out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|R0toR7out\(7),
	devoe => ww_devoe,
	o => ww_debug_R0to7out(7));

-- Location: IOOBUF_X16_Y0_N59
\debug_R0to7out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|R0toR7out\(6),
	devoe => ww_devoe,
	o => ww_debug_R0to7out(6));

-- Location: IOOBUF_X11_Y0_N19
\debug_R0to7out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|R0toR7out\(5),
	devoe => ww_devoe,
	o => ww_debug_R0to7out(5));

-- Location: IOOBUF_X23_Y0_N42
\debug_R0to7out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|R0toR7out\(4),
	devoe => ww_devoe,
	o => ww_debug_R0to7out(4));

-- Location: IOOBUF_X22_Y0_N36
\debug_R0to7out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|R0toR7out\(3),
	devoe => ww_devoe,
	o => ww_debug_R0to7out(3));

-- Location: IOOBUF_X19_Y0_N36
\debug_R0to7out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|R0toR7out\(2),
	devoe => ww_devoe,
	o => ww_debug_R0to7out(2));

-- Location: IOOBUF_X11_Y0_N53
\debug_R0to7out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|R0toR7out\(1),
	devoe => ww_devoe,
	o => ww_debug_R0to7out(1));

-- Location: IOOBUF_X14_Y0_N2
\debug_R0to7out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|R0toR7out\(0),
	devoe => ww_devoe,
	o => ww_debug_R0to7out(0));

-- Location: IOOBUF_X16_Y0_N93
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

-- Location: IOOBUF_X12_Y0_N53
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

-- Location: IOOBUF_X12_Y0_N19
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

-- Location: IOOBUF_X12_Y0_N2
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

-- Location: IOOBUF_X14_Y0_N36
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

-- Location: IOOBUF_X19_Y0_N19
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

-- Location: IOOBUF_X11_Y0_N2
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

-- Location: IOOBUF_X14_Y0_N19
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

-- Location: IOOBUF_X12_Y0_N36
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

-- Location: IOIBUF_X14_Y0_N52
\data_in[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(7),
	o => \data_in[7]~input_o\);

-- Location: FF_X13_Y7_N35
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

-- Location: IOIBUF_X18_Y0_N1
\data_in[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(8),
	o => \data_in[8]~input_o\);

-- Location: FF_X13_Y7_N44
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

-- Location: LABCELL_X12_Y7_N21
\fsm|y_D.T2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|y_D.T2~0_combout\ = ( \fsm|y_Q.T1~q\ & ( (\ir0|Q\(7) & !\ir0|Q\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(7),
	datac => \ir0|ALT_INV_Q\(8),
	dataf => \fsm|ALT_INV_y_Q.T1~q\,
	combout => \fsm|y_D.T2~0_combout\);

-- Location: IOIBUF_X10_Y0_N92
\reset_n~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input_o\);

-- Location: FF_X12_Y7_N23
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

-- Location: IOIBUF_X18_Y0_N18
\run~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_run,
	o => \run~input_o\);

-- Location: MLABCELL_X13_Y7_N6
\fsm|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector0~0_combout\ = ( \fsm|y_Q.T0~q\ & ( \fsm|y_Q.T1~q\ & ( (\ir0|Q\(7) & !\ir0|Q\(8)) ) ) ) # ( !\fsm|y_Q.T0~q\ & ( \fsm|y_Q.T1~q\ & ( ((\ir0|Q\(7) & !\ir0|Q\(8))) # (\run~input_o\) ) ) ) # ( \fsm|y_Q.T0~q\ & ( !\fsm|y_Q.T1~q\ & ( (\fsm|y_Q.T2~q\ 
-- & (\ir0|Q\(7) & !\ir0|Q\(8))) ) ) ) # ( !\fsm|y_Q.T0~q\ & ( !\fsm|y_Q.T1~q\ & ( ((\fsm|y_Q.T2~q\ & (\ir0|Q\(7) & !\ir0|Q\(8)))) # (\run~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100110011000001010000000000111111001100110000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_y_Q.T2~q\,
	datab => \ALT_INV_run~input_o\,
	datac => \ir0|ALT_INV_Q\(7),
	datad => \ir0|ALT_INV_Q\(8),
	datae => \fsm|ALT_INV_y_Q.T0~q\,
	dataf => \fsm|ALT_INV_y_Q.T1~q\,
	combout => \fsm|Selector0~0_combout\);

-- Location: FF_X13_Y7_N8
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

-- Location: MLABCELL_X13_Y7_N51
\fsm|Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector0~1_combout\ = ( \run~input_o\ & ( !\fsm|y_Q.T0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_y_Q.T0~q\,
	dataf => \ALT_INV_run~input_o\,
	combout => \fsm|Selector0~1_combout\);

-- Location: FF_X13_Y7_N53
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

-- Location: MLABCELL_X13_Y7_N48
\fsm|y_D.T3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|y_D.T3~0_combout\ = (!\ir0|Q\(8) & (\ir0|Q\(7) & \fsm|y_Q.T2~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ir0|ALT_INV_Q\(8),
	datac => \ir0|ALT_INV_Q\(7),
	datad => \fsm|ALT_INV_y_Q.T2~q\,
	combout => \fsm|y_D.T3~0_combout\);

-- Location: FF_X13_Y7_N49
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

-- Location: MLABCELL_X13_Y7_N18
\fsm|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector1~0_combout\ = ( \ir0|Q\(7) & ( \fsm|y_Q.T3~q\ ) ) # ( !\ir0|Q\(7) & ( (\fsm|y_Q.T3~q\) # (\fsm|y_Q.T1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_y_Q.T1~q\,
	datad => \fsm|ALT_INV_y_Q.T3~q\,
	dataf => \ir0|ALT_INV_Q\(7),
	combout => \fsm|Selector1~0_combout\);

-- Location: MLABCELL_X13_Y7_N33
\fsm|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector2~0_combout\ = ( \fsm|y_Q.T1~q\ & ( (!\ir0|Q\(8) & !\ir0|Q\(7)) ) ) # ( !\fsm|y_Q.T1~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ir0|ALT_INV_Q\(8),
	datad => \ir0|ALT_INV_Q\(7),
	dataf => \fsm|ALT_INV_y_Q.T1~q\,
	combout => \fsm|Selector2~0_combout\);

-- Location: MLABCELL_X13_Y7_N27
\fsm|done\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|done~combout\ = ( \fsm|Selector2~0_combout\ & ( \fsm|Selector1~0_combout\ ) ) # ( !\fsm|Selector2~0_combout\ & ( \fsm|done~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_done~combout\,
	datad => \fsm|ALT_INV_Selector1~0_combout\,
	dataf => \fsm|ALT_INV_Selector2~0_combout\,
	combout => \fsm|done~combout\);

-- Location: LABCELL_X12_Y7_N48
\fsm|done~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|done~0_combout\ = ( \fsm|y_Q.T0~q\ & ( \fsm|y_Q.T2~q\ ) ) # ( !\fsm|y_Q.T0~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_y_Q.T2~q\,
	dataf => \fsm|ALT_INV_y_Q.T0~q\,
	combout => \fsm|done~0_combout\);

-- Location: LABCELL_X16_Y4_N27
\fsm|debug_state~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|debug_state~0_combout\ = ( \fsm|y_Q.T0~q\ & ( \fsm|y_Q.T1~q\ ) ) # ( !\fsm|y_Q.T0~q\ & ( \fsm|y_Q.T1~q\ ) ) # ( !\fsm|y_Q.T0~q\ & ( !\fsm|y_Q.T1~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \fsm|ALT_INV_y_Q.T0~q\,
	dataf => \fsm|ALT_INV_y_Q.T1~q\,
	combout => \fsm|debug_state~0_combout\);

-- Location: IOIBUF_X16_Y0_N75
\data_in[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(6),
	o => \data_in[6]~input_o\);

-- Location: FF_X13_Y7_N47
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

-- Location: IOIBUF_X11_Y0_N35
\data_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(0),
	o => \data_in[0]~input_o\);

-- Location: FF_X12_Y7_N11
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

-- Location: IOIBUF_X10_Y0_N41
\data_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(2),
	o => \data_in[2]~input_o\);

-- Location: FF_X12_Y7_N17
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

-- Location: IOIBUF_X10_Y0_N58
\data_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(1),
	o => \data_in[1]~input_o\);

-- Location: FF_X12_Y7_N32
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

-- Location: LABCELL_X12_Y7_N54
\dexY|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dexY|Mux0~0_combout\ = ( \ir0|Q\(1) & ( (\ir0|Q\(0) & \ir0|Q\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ir0|ALT_INV_Q\(0),
	datad => \ir0|ALT_INV_Q\(2),
	dataf => \ir0|ALT_INV_Q\(1),
	combout => \dexY|Mux0~0_combout\);

-- Location: MLABCELL_X13_Y7_N30
\fsm|R0toR7out[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|R0toR7out[0]~0_combout\ = ( !\ir0|Q\(7) & ( (!\ir0|Q\(8) & (\fsm|y_Q.T1~q\ & !\ir0|Q\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ir0|ALT_INV_Q\(8),
	datac => \fsm|ALT_INV_y_Q.T1~q\,
	datad => \ir0|ALT_INV_Q\(6),
	dataf => \ir0|ALT_INV_Q\(7),
	combout => \fsm|R0toR7out[0]~0_combout\);

-- Location: LABCELL_X12_Y7_N51
\fsm|R0toR7out[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|R0toR7out\(7) = ( \fsm|R0toR7out\(7) & ( (!\fsm|R0toR7out[0]~0_combout\) # (\dexY|Mux0~0_combout\) ) ) # ( !\fsm|R0toR7out\(7) & ( (\dexY|Mux0~0_combout\ & \fsm|R0toR7out[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dexY|ALT_INV_Mux0~0_combout\,
	datad => \fsm|ALT_INV_R0toR7out[0]~0_combout\,
	dataf => \fsm|ALT_INV_R0toR7out\(7),
	combout => \fsm|R0toR7out\(7));

-- Location: LABCELL_X12_Y7_N42
\dexY|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dexY|Mux0~1_combout\ = ( \ir0|Q\(1) & ( (!\ir0|Q\(0) & \ir0|Q\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ir0|ALT_INV_Q\(0),
	datad => \ir0|ALT_INV_Q\(2),
	dataf => \ir0|ALT_INV_Q\(1),
	combout => \dexY|Mux0~1_combout\);

-- Location: LABCELL_X12_Y7_N33
\fsm|R0toR7out[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|R0toR7out\(6) = ( \fsm|R0toR7out[0]~0_combout\ & ( \dexY|Mux0~1_combout\ ) ) # ( !\fsm|R0toR7out[0]~0_combout\ & ( \fsm|R0toR7out\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_R0toR7out\(6),
	datac => \dexY|ALT_INV_Mux0~1_combout\,
	dataf => \fsm|ALT_INV_R0toR7out[0]~0_combout\,
	combout => \fsm|R0toR7out\(6));

-- Location: LABCELL_X12_Y7_N3
\dexY|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dexY|Mux0~2_combout\ = ( !\ir0|Q\(1) & ( (\ir0|Q\(0) & \ir0|Q\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ir0|ALT_INV_Q\(0),
	datad => \ir0|ALT_INV_Q\(2),
	dataf => \ir0|ALT_INV_Q\(1),
	combout => \dexY|Mux0~2_combout\);

-- Location: MLABCELL_X13_Y8_N27
\fsm|R0toR7out[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|R0toR7out\(5) = ( \dexY|Mux0~2_combout\ & ( (\fsm|R0toR7out\(5)) # (\fsm|R0toR7out[0]~0_combout\) ) ) # ( !\dexY|Mux0~2_combout\ & ( (!\fsm|R0toR7out[0]~0_combout\ & \fsm|R0toR7out\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_R0toR7out[0]~0_combout\,
	datad => \fsm|ALT_INV_R0toR7out\(5),
	dataf => \dexY|ALT_INV_Mux0~2_combout\,
	combout => \fsm|R0toR7out\(5));

-- Location: LABCELL_X12_Y7_N36
\dexY|Mux0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \dexY|Mux0~3_combout\ = ( \ir0|Q\(2) & ( (!\ir0|Q\(0) & !\ir0|Q\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ir0|ALT_INV_Q\(0),
	datad => \ir0|ALT_INV_Q\(1),
	dataf => \ir0|ALT_INV_Q\(2),
	combout => \dexY|Mux0~3_combout\);

-- Location: MLABCELL_X13_Y8_N18
\fsm|R0toR7out[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|R0toR7out\(4) = ( \dexY|Mux0~3_combout\ & ( (\fsm|R0toR7out[0]~0_combout\) # (\fsm|R0toR7out\(4)) ) ) # ( !\dexY|Mux0~3_combout\ & ( (\fsm|R0toR7out\(4) & !\fsm|R0toR7out[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_R0toR7out\(4),
	datad => \fsm|ALT_INV_R0toR7out[0]~0_combout\,
	dataf => \dexY|ALT_INV_Mux0~3_combout\,
	combout => \fsm|R0toR7out\(4));

-- Location: LABCELL_X12_Y7_N57
\dexY|Mux0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \dexY|Mux0~4_combout\ = ( \ir0|Q\(1) & ( (\ir0|Q\(0) & !\ir0|Q\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ir0|ALT_INV_Q\(0),
	datac => \ir0|ALT_INV_Q\(2),
	dataf => \ir0|ALT_INV_Q\(1),
	combout => \dexY|Mux0~4_combout\);

-- Location: LABCELL_X14_Y8_N12
\fsm|R0toR7out[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|R0toR7out\(3) = (!\fsm|R0toR7out[0]~0_combout\ & (\fsm|R0toR7out\(3))) # (\fsm|R0toR7out[0]~0_combout\ & ((\dexY|Mux0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fsm|ALT_INV_R0toR7out\(3),
	datac => \dexY|ALT_INV_Mux0~4_combout\,
	datad => \fsm|ALT_INV_R0toR7out[0]~0_combout\,
	combout => \fsm|R0toR7out\(3));

-- Location: LABCELL_X12_Y7_N18
\dexY|Mux0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \dexY|Mux0~5_combout\ = ( \ir0|Q\(1) & ( (!\ir0|Q\(0) & !\ir0|Q\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ir0|ALT_INV_Q\(0),
	datad => \ir0|ALT_INV_Q\(2),
	dataf => \ir0|ALT_INV_Q\(1),
	combout => \dexY|Mux0~5_combout\);

-- Location: MLABCELL_X13_Y7_N39
\fsm|R0toR7out[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|R0toR7out\(2) = ( \dexY|Mux0~5_combout\ & ( (\fsm|R0toR7out[0]~0_combout\) # (\fsm|R0toR7out\(2)) ) ) # ( !\dexY|Mux0~5_combout\ & ( (\fsm|R0toR7out\(2) & !\fsm|R0toR7out[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_R0toR7out\(2),
	datad => \fsm|ALT_INV_R0toR7out[0]~0_combout\,
	dataf => \dexY|ALT_INV_Mux0~5_combout\,
	combout => \fsm|R0toR7out\(2));

-- Location: MLABCELL_X13_Y7_N3
\dexY|Mux0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \dexY|Mux0~6_combout\ = ( \ir0|Q\(0) & ( (!\ir0|Q\(1) & !\ir0|Q\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ir0|ALT_INV_Q\(1),
	datad => \ir0|ALT_INV_Q\(2),
	dataf => \ir0|ALT_INV_Q\(0),
	combout => \dexY|Mux0~6_combout\);

-- Location: MLABCELL_X13_Y7_N12
\fsm|R0toR7out[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|R0toR7out\(1) = ( \fsm|R0toR7out\(1) & ( (!\fsm|R0toR7out[0]~0_combout\) # (\dexY|Mux0~6_combout\) ) ) # ( !\fsm|R0toR7out\(1) & ( (\fsm|R0toR7out[0]~0_combout\ & \dexY|Mux0~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_R0toR7out[0]~0_combout\,
	datad => \dexY|ALT_INV_Mux0~6_combout\,
	dataf => \fsm|ALT_INV_R0toR7out\(1),
	combout => \fsm|R0toR7out\(1));

-- Location: LABCELL_X12_Y7_N12
\dexY|Mux0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \dexY|Mux0~7_combout\ = ( !\ir0|Q\(0) & ( (!\ir0|Q\(2) & !\ir0|Q\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ir0|ALT_INV_Q\(2),
	datad => \ir0|ALT_INV_Q\(1),
	dataf => \ir0|ALT_INV_Q\(0),
	combout => \dexY|Mux0~7_combout\);

-- Location: LABCELL_X12_Y7_N9
\fsm|R0toR7out[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|R0toR7out\(0) = ( \dexY|Mux0~7_combout\ & ( (\fsm|R0toR7out[0]~0_combout\) # (\fsm|R0toR7out\(0)) ) ) # ( !\dexY|Mux0~7_combout\ & ( (\fsm|R0toR7out\(0) & !\fsm|R0toR7out[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fsm|ALT_INV_R0toR7out\(0),
	datac => \fsm|ALT_INV_R0toR7out[0]~0_combout\,
	dataf => \dexY|ALT_INV_Mux0~7_combout\,
	combout => \fsm|R0toR7out\(0));

-- Location: LABCELL_X16_Y7_N27
\fsm|Mux23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Mux23~0_combout\ = ( !\ir0|Q\(8) & ( (\ir0|Q\(6) & !\ir0|Q\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(6),
	datad => \ir0|ALT_INV_Q\(7),
	dataf => \ir0|ALT_INV_Q\(8),
	combout => \fsm|Mux23~0_combout\);

-- Location: LABCELL_X14_Y7_N54
\fsm|Dout\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Dout~combout\ = ( \fsm|Mux23~0_combout\ & ( \fsm|y_Q.T1~q\ ) ) # ( !\fsm|Mux23~0_combout\ & ( (\fsm|y_Q.T1~q\ & \fsm|Dout~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_y_Q.T1~q\,
	datad => \fsm|ALT_INV_Dout~combout\,
	dataf => \fsm|ALT_INV_Mux23~0_combout\,
	combout => \fsm|Dout~combout\);

-- Location: IOIBUF_X19_Y0_N52
\data_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(3),
	o => \data_in[3]~input_o\);

-- Location: FF_X13_Y7_N56
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

-- Location: MLABCELL_X13_Y7_N0
\fsm|Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector10~0_combout\ = ( \fsm|y_Q.T0~q\ & ( (!\ir0|Q\(3) & \fsm|y_Q.T1~q\) ) ) # ( !\fsm|y_Q.T0~q\ & ( !\ir0|Q\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(3),
	datac => \fsm|ALT_INV_y_Q.T1~q\,
	dataf => \fsm|ALT_INV_y_Q.T0~q\,
	combout => \fsm|Selector10~0_combout\);

-- Location: IOIBUF_X19_Y0_N1
\data_in[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(4),
	o => \data_in[4]~input_o\);

-- Location: FF_X13_Y7_N17
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

-- Location: IOIBUF_X0_Y19_N4
\data_in[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(5),
	o => \data_in[5]~input_o\);

-- Location: FF_X13_Y7_N38
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

-- Location: MLABCELL_X13_Y7_N24
\fsm|Selector10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector10~1_combout\ = ( \dexY|Mux0~7_combout\ & ( (!\fsm|y_Q.T0~q\) # ((\fsm|Selector10~0_combout\ & (!\ir0|Q\(4) & !\ir0|Q\(5)))) ) ) # ( !\dexY|Mux0~7_combout\ & ( (\fsm|Selector10~0_combout\ & (!\ir0|Q\(4) & !\ir0|Q\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000010111010101010101011101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_y_Q.T0~q\,
	datab => \fsm|ALT_INV_Selector10~0_combout\,
	datac => \ir0|ALT_INV_Q\(4),
	datad => \ir0|ALT_INV_Q\(5),
	dataf => \dexY|ALT_INV_Mux0~7_combout\,
	combout => \fsm|Selector10~1_combout\);

-- Location: MLABCELL_X13_Y7_N42
\fsm|Rin[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Rin\(0) = ( \fsm|Selector2~0_combout\ & ( \fsm|Selector10~1_combout\ ) ) # ( !\fsm|Selector2~0_combout\ & ( \fsm|Rin\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fsm|ALT_INV_Selector10~1_combout\,
	datac => \fsm|ALT_INV_Rin\(0),
	dataf => \fsm|ALT_INV_Selector2~0_combout\,
	combout => \fsm|Rin\(0));

-- Location: FF_X14_Y7_N11
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

-- Location: MLABCELL_X13_Y7_N45
\fsm|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector3~0_combout\ = ( \fsm|y_Q.T1~q\ & ( \ir0|Q\(3) ) ) # ( !\fsm|y_Q.T1~q\ & ( (\ir0|Q\(3) & !\fsm|y_Q.T0~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(3),
	datac => \fsm|ALT_INV_y_Q.T0~q\,
	dataf => \fsm|ALT_INV_y_Q.T1~q\,
	combout => \fsm|Selector3~0_combout\);

-- Location: LABCELL_X12_Y7_N39
\fsm|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector7~0_combout\ = ( \fsm|y_Q.T0~q\ & ( (\fsm|Selector3~0_combout\ & (!\ir0|Q\(5) & \ir0|Q\(4))) ) ) # ( !\fsm|y_Q.T0~q\ & ( ((\fsm|Selector3~0_combout\ & (!\ir0|Q\(5) & \ir0|Q\(4)))) # (\dexY|Mux0~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101110011001100110111001100000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Selector3~0_combout\,
	datab => \dexY|ALT_INV_Mux0~4_combout\,
	datac => \ir0|ALT_INV_Q\(5),
	datad => \ir0|ALT_INV_Q\(4),
	dataf => \fsm|ALT_INV_y_Q.T0~q\,
	combout => \fsm|Selector7~0_combout\);

-- Location: LABCELL_X12_Y7_N45
\fsm|Rin[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Rin\(3) = ( \fsm|Selector7~0_combout\ & ( (\fsm|Selector2~0_combout\) # (\fsm|Rin\(3)) ) ) # ( !\fsm|Selector7~0_combout\ & ( (\fsm|Rin\(3) & !\fsm|Selector2~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_Rin\(3),
	datad => \fsm|ALT_INV_Selector2~0_combout\,
	dataf => \fsm|ALT_INV_Selector7~0_combout\,
	combout => \fsm|Rin\(3));

-- Location: FF_X16_Y9_N28
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

-- Location: MLABCELL_X13_Y7_N15
\fsm|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector8~0_combout\ = ( \dexY|Mux0~5_combout\ & ( (!\fsm|y_Q.T0~q\) # ((\fsm|Selector10~0_combout\ & (!\ir0|Q\(5) & \ir0|Q\(4)))) ) ) # ( !\dexY|Mux0~5_combout\ & ( (\fsm|Selector10~0_combout\ & (!\ir0|Q\(5) & \ir0|Q\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000011001100110111001100110011011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Selector10~0_combout\,
	datab => \fsm|ALT_INV_y_Q.T0~q\,
	datac => \ir0|ALT_INV_Q\(5),
	datad => \ir0|ALT_INV_Q\(4),
	dataf => \dexY|ALT_INV_Mux0~5_combout\,
	combout => \fsm|Selector8~0_combout\);

-- Location: LABCELL_X14_Y8_N51
\fsm|Rin[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Rin\(2) = ( \fsm|Rin\(2) & ( \fsm|Selector2~0_combout\ & ( \fsm|Selector8~0_combout\ ) ) ) # ( !\fsm|Rin\(2) & ( \fsm|Selector2~0_combout\ & ( \fsm|Selector8~0_combout\ ) ) ) # ( \fsm|Rin\(2) & ( !\fsm|Selector2~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Selector8~0_combout\,
	datae => \fsm|ALT_INV_Rin\(2),
	dataf => \fsm|ALT_INV_Selector2~0_combout\,
	combout => \fsm|Rin\(2));

-- Location: FF_X14_Y9_N19
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

-- Location: LABCELL_X14_Y8_N45
\reg1|Q[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg1|Q[0]~feeder_combout\ = ( \mux0|y\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y\(0),
	combout => \reg1|Q[0]~feeder_combout\);

-- Location: LABCELL_X14_Y8_N39
\fsm|Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector9~0_combout\ = ( \ir0|Q\(5) & ( \dexY|Mux0~6_combout\ & ( !\fsm|y_Q.T0~q\ ) ) ) # ( !\ir0|Q\(5) & ( \dexY|Mux0~6_combout\ & ( (!\fsm|y_Q.T0~q\) # ((!\ir0|Q\(4) & \fsm|Selector3~0_combout\)) ) ) ) # ( !\ir0|Q\(5) & ( !\dexY|Mux0~6_combout\ & ( 
-- (!\ir0|Q\(4) & \fsm|Selector3~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010000000000000000011110010111100101111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(4),
	datab => \fsm|ALT_INV_Selector3~0_combout\,
	datac => \fsm|ALT_INV_y_Q.T0~q\,
	datae => \ir0|ALT_INV_Q\(5),
	dataf => \dexY|ALT_INV_Mux0~6_combout\,
	combout => \fsm|Selector9~0_combout\);

-- Location: LABCELL_X14_Y8_N54
\fsm|Rin[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Rin\(1) = ( \fsm|Rin\(1) & ( \fsm|Selector2~0_combout\ & ( \fsm|Selector9~0_combout\ ) ) ) # ( !\fsm|Rin\(1) & ( \fsm|Selector2~0_combout\ & ( \fsm|Selector9~0_combout\ ) ) ) # ( \fsm|Rin\(1) & ( !\fsm|Selector2~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fsm|ALT_INV_Selector9~0_combout\,
	datae => \fsm|ALT_INV_Rin\(1),
	dataf => \fsm|ALT_INV_Selector2~0_combout\,
	combout => \fsm|Rin\(1));

-- Location: FF_X14_Y8_N46
\reg1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg1|Q[0]~feeder_combout\,
	ena => \fsm|Rin\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(0));

-- Location: LABCELL_X14_Y7_N39
\mux0|y[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[0]~4_combout\ = ( !\fsm|R0toR7out\(2) & ( !\fsm|R0toR7out\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fsm|ALT_INV_R0toR7out\(1),
	dataf => \fsm|ALT_INV_R0toR7out\(2),
	combout => \mux0|y[0]~4_combout\);

-- Location: LABCELL_X14_Y8_N15
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

-- Location: MLABCELL_X13_Y9_N54
\reg4|Q[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|Q[0]~feeder_combout\ = ( \mux0|y\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y\(0),
	combout => \reg4|Q[0]~feeder_combout\);

-- Location: LABCELL_X12_Y7_N27
\fsm|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector6~0_combout\ = ( \fsm|y_Q.T0~q\ & ( (!\ir0|Q\(4) & (\fsm|Selector10~0_combout\ & \ir0|Q\(5))) ) ) # ( !\fsm|y_Q.T0~q\ & ( ((!\ir0|Q\(4) & (\fsm|Selector10~0_combout\ & \ir0|Q\(5)))) # (\dexY|Mux0~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011111111000000101111111100000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(4),
	datab => \fsm|ALT_INV_Selector10~0_combout\,
	datac => \ir0|ALT_INV_Q\(5),
	datad => \dexY|ALT_INV_Mux0~3_combout\,
	dataf => \fsm|ALT_INV_y_Q.T0~q\,
	combout => \fsm|Selector6~0_combout\);

-- Location: LABCELL_X12_Y7_N15
\fsm|Rin[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Rin\(4) = ( \fsm|Selector2~0_combout\ & ( \fsm|Selector6~0_combout\ ) ) # ( !\fsm|Selector2~0_combout\ & ( \fsm|Rin\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Rin\(4),
	datac => \fsm|ALT_INV_Selector6~0_combout\,
	dataf => \fsm|ALT_INV_Selector2~0_combout\,
	combout => \fsm|Rin\(4));

-- Location: FF_X13_Y9_N55
\reg4|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg4|Q[0]~feeder_combout\,
	ena => \fsm|Rin\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(0));

-- Location: LABCELL_X12_Y7_N0
\fsm|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector4~0_combout\ = ( \dexY|Mux0~1_combout\ & ( (!\fsm|y_Q.T0~q\) # ((\fsm|Selector10~0_combout\ & (\ir0|Q\(4) & \ir0|Q\(5)))) ) ) # ( !\dexY|Mux0~1_combout\ & ( (\fsm|Selector10~0_combout\ & (\ir0|Q\(4) & \ir0|Q\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010111001100110011011100110011001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Selector10~0_combout\,
	datab => \fsm|ALT_INV_y_Q.T0~q\,
	datac => \ir0|ALT_INV_Q\(4),
	datad => \ir0|ALT_INV_Q\(5),
	dataf => \dexY|ALT_INV_Mux0~1_combout\,
	combout => \fsm|Selector4~0_combout\);

-- Location: LABCELL_X12_Y7_N24
\fsm|Rin[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Rin\(6) = ( \fsm|Selector2~0_combout\ & ( \fsm|Selector4~0_combout\ ) ) # ( !\fsm|Selector2~0_combout\ & ( \fsm|Rin\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_Rin\(6),
	datad => \fsm|ALT_INV_Selector4~0_combout\,
	dataf => \fsm|ALT_INV_Selector2~0_combout\,
	combout => \fsm|Rin\(6));

-- Location: FF_X14_Y9_N44
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

-- Location: MLABCELL_X13_Y8_N21
\mux0|y[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[0]~1_combout\ = ( !\fsm|R0toR7out\(4) & ( !\fsm|R0toR7out\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fsm|ALT_INV_R0toR7out\(5),
	dataf => \fsm|ALT_INV_R0toR7out\(4),
	combout => \mux0|y[0]~1_combout\);

-- Location: MLABCELL_X13_Y7_N36
\fsm|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector5~0_combout\ = ( \dexY|Mux0~2_combout\ & ( (!\fsm|y_Q.T0~q\) # ((\fsm|Selector3~0_combout\ & (!\ir0|Q\(4) & \ir0|Q\(5)))) ) ) # ( !\dexY|Mux0~2_combout\ & ( (\fsm|Selector3~0_combout\ & (!\ir0|Q\(4) & \ir0|Q\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000010101010101110101010101010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_y_Q.T0~q\,
	datab => \fsm|ALT_INV_Selector3~0_combout\,
	datac => \ir0|ALT_INV_Q\(4),
	datad => \ir0|ALT_INV_Q\(5),
	dataf => \dexY|ALT_INV_Mux0~2_combout\,
	combout => \fsm|Selector5~0_combout\);

-- Location: MLABCELL_X13_Y7_N57
\fsm|Rin[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Rin\(5) = ( \fsm|Rin\(5) & ( \fsm|Selector2~0_combout\ & ( \fsm|Selector5~0_combout\ ) ) ) # ( !\fsm|Rin\(5) & ( \fsm|Selector2~0_combout\ & ( \fsm|Selector5~0_combout\ ) ) ) # ( \fsm|Rin\(5) & ( !\fsm|Selector2~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fsm|ALT_INV_Selector5~0_combout\,
	datae => \fsm|ALT_INV_Rin\(5),
	dataf => \fsm|ALT_INV_Selector2~0_combout\,
	combout => \fsm|Rin\(5));

-- Location: FF_X14_Y9_N50
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

-- Location: LABCELL_X14_Y8_N21
\reg7|Q[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg7|Q[0]~feeder_combout\ = ( \mux0|y\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y\(0),
	combout => \reg7|Q[0]~feeder_combout\);

-- Location: MLABCELL_X13_Y7_N21
\fsm|Selector3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Selector3~1_combout\ = ( \dexY|Mux0~0_combout\ & ( (!\fsm|y_Q.T0~q\) # ((\ir0|Q\(5) & (\fsm|Selector3~0_combout\ & \ir0|Q\(4)))) ) ) # ( !\dexY|Mux0~0_combout\ & ( (\ir0|Q\(5) & (\fsm|Selector3~0_combout\ & \ir0|Q\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000111111111000000011111111100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir0|ALT_INV_Q\(5),
	datab => \fsm|ALT_INV_Selector3~0_combout\,
	datac => \ir0|ALT_INV_Q\(4),
	datad => \fsm|ALT_INV_y_Q.T0~q\,
	dataf => \dexY|ALT_INV_Mux0~0_combout\,
	combout => \fsm|Selector3~1_combout\);

-- Location: LABCELL_X14_Y8_N24
\fsm|Rin[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm|Rin\(7) = ( \fsm|Rin\(7) & ( (!\fsm|Selector2~0_combout\) # (\fsm|Selector3~1_combout\) ) ) # ( !\fsm|Rin\(7) & ( (\fsm|Selector3~1_combout\ & \fsm|Selector2~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Selector3~1_combout\,
	datac => \fsm|ALT_INV_Selector2~0_combout\,
	dataf => \fsm|ALT_INV_Rin\(7),
	combout => \fsm|Rin\(7));

-- Location: FF_X14_Y8_N23
\reg7|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg7|Q[0]~feeder_combout\,
	ena => \fsm|Rin\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|Q\(0));

-- Location: MLABCELL_X13_Y8_N57
\mux0|y[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[0]~0_combout\ = ( \fsm|R0toR7out\(6) & ( !\fsm|R0toR7out\(4) ) ) # ( !\fsm|R0toR7out\(6) & ( (!\fsm|R0toR7out\(4) & \fsm|R0toR7out\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm|ALT_INV_R0toR7out\(4),
	datad => \fsm|ALT_INV_R0toR7out\(5),
	dataf => \fsm|ALT_INV_R0toR7out\(6),
	combout => \mux0|y[0]~0_combout\);

-- Location: LABCELL_X14_Y9_N51
\mux0|y[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[0]~2_combout\ = ( \reg7|Q\(0) & ( \mux0|y[0]~0_combout\ & ( (!\mux0|y[0]~1_combout\ & ((\reg5|Q\(0)))) # (\mux0|y[0]~1_combout\ & (\reg6|Q\(0))) ) ) ) # ( !\reg7|Q\(0) & ( \mux0|y[0]~0_combout\ & ( (!\mux0|y[0]~1_combout\ & ((\reg5|Q\(0)))) # 
-- (\mux0|y[0]~1_combout\ & (\reg6|Q\(0))) ) ) ) # ( \reg7|Q\(0) & ( !\mux0|y[0]~0_combout\ & ( (\mux0|y[0]~1_combout\) # (\reg4|Q\(0)) ) ) ) # ( !\reg7|Q\(0) & ( !\mux0|y[0]~0_combout\ & ( (\reg4|Q\(0) & !\mux0|y[0]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4|ALT_INV_Q\(0),
	datab => \reg6|ALT_INV_Q\(0),
	datac => \mux0|ALT_INV_y[0]~1_combout\,
	datad => \reg5|ALT_INV_Q\(0),
	datae => \reg7|ALT_INV_Q\(0),
	dataf => \mux0|ALT_INV_y[0]~0_combout\,
	combout => \mux0|y[0]~2_combout\);

-- Location: LABCELL_X14_Y9_N21
\mux0|y[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[0]~5_combout\ = ( \mux0|y[0]~3_combout\ & ( \mux0|y[0]~2_combout\ & ( (!\mux0|y[0]~4_combout\ & ((\reg2|Q\(0)))) # (\mux0|y[0]~4_combout\ & (\reg3|Q\(0))) ) ) ) # ( !\mux0|y[0]~3_combout\ & ( \mux0|y[0]~2_combout\ & ( (\mux0|y[0]~4_combout\) # 
-- (\reg1|Q\(0)) ) ) ) # ( \mux0|y[0]~3_combout\ & ( !\mux0|y[0]~2_combout\ & ( (!\mux0|y[0]~4_combout\ & ((\reg2|Q\(0)))) # (\mux0|y[0]~4_combout\ & (\reg3|Q\(0))) ) ) ) # ( !\mux0|y[0]~3_combout\ & ( !\mux0|y[0]~2_combout\ & ( (\reg1|Q\(0) & 
-- !\mux0|y[0]~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000001100110101010100001111111111110011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg3|ALT_INV_Q\(0),
	datab => \reg2|ALT_INV_Q\(0),
	datac => \reg1|ALT_INV_Q\(0),
	datad => \mux0|ALT_INV_y[0]~4_combout\,
	datae => \mux0|ALT_INV_y[0]~3_combout\,
	dataf => \mux0|ALT_INV_y[0]~2_combout\,
	combout => \mux0|y[0]~5_combout\);

-- Location: LABCELL_X14_Y7_N9
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

-- Location: LABCELL_X14_Y7_N51
\mux0|Mux9~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|Mux9~4_combout\ = ( !\fsm|R0toR7out\(2) & ( (!\fsm|R0toR7out\(0) & (!\fsm|R0toR7out\(3) & !\fsm|R0toR7out\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fsm|ALT_INV_R0toR7out\(0),
	datac => \fsm|ALT_INV_R0toR7out\(3),
	datad => \fsm|ALT_INV_R0toR7out\(1),
	dataf => \fsm|ALT_INV_R0toR7out\(2),
	combout => \mux0|Mux9~4_combout\);

-- Location: LABCELL_X14_Y8_N9
\mux0|Mux9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|Mux9~2_combout\ = ( !\fsm|R0toR7out\(1) & ( \fsm|R0toR7out\(0) & ( (!\fsm|R0toR7out\(2) & !\fsm|R0toR7out\(3)) ) ) ) # ( \fsm|R0toR7out\(1) & ( !\fsm|R0toR7out\(0) & ( (!\fsm|R0toR7out\(2) & !\fsm|R0toR7out\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000011000000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fsm|ALT_INV_R0toR7out\(2),
	datac => \fsm|ALT_INV_R0toR7out\(3),
	datae => \fsm|ALT_INV_R0toR7out\(1),
	dataf => \fsm|ALT_INV_R0toR7out\(0),
	combout => \mux0|Mux9~2_combout\);

-- Location: LABCELL_X12_Y7_N6
\mux0|Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|Mux9~1_combout\ = ( !\fsm|R0toR7out\(5) & ( (!\fsm|R0toR7out\(6) & (!\fsm|R0toR7out\(7) & !\fsm|R0toR7out\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_R0toR7out\(6),
	datac => \fsm|ALT_INV_R0toR7out\(7),
	datad => \fsm|ALT_INV_R0toR7out\(4),
	dataf => \fsm|ALT_INV_R0toR7out\(5),
	combout => \mux0|Mux9~1_combout\);

-- Location: LABCELL_X14_Y7_N57
\mux0|Mux9~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|Mux9~3_combout\ = ( \fsm|R0toR7out\(2) & ( (!\fsm|R0toR7out\(1) & (!\fsm|R0toR7out\(0) & !\fsm|R0toR7out\(3))) ) ) # ( !\fsm|R0toR7out\(2) & ( (!\fsm|R0toR7out\(1) & (!\fsm|R0toR7out\(0) & \fsm|R0toR7out\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_R0toR7out\(1),
	datab => \fsm|ALT_INV_R0toR7out\(0),
	datad => \fsm|ALT_INV_R0toR7out\(3),
	dataf => \fsm|ALT_INV_R0toR7out\(2),
	combout => \mux0|Mux9~3_combout\);

-- Location: LABCELL_X12_Y7_N30
\mux0|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|Mux9~0_combout\ = ( \fsm|R0toR7out\(5) & ( (!\fsm|R0toR7out\(6) & (!\fsm|R0toR7out\(4) & !\fsm|R0toR7out\(7))) ) ) # ( !\fsm|R0toR7out\(5) & ( (!\fsm|R0toR7out\(6) & (!\fsm|R0toR7out\(4) $ (!\fsm|R0toR7out\(7)))) # (\fsm|R0toR7out\(6) & 
-- (!\fsm|R0toR7out\(4) & !\fsm|R0toR7out\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100001101000011010000110100010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_R0toR7out\(6),
	datab => \fsm|ALT_INV_R0toR7out\(4),
	datac => \fsm|ALT_INV_R0toR7out\(7),
	dataf => \fsm|ALT_INV_R0toR7out\(5),
	combout => \mux0|Mux9~0_combout\);

-- Location: LABCELL_X14_Y7_N3
\mux0|y[8]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[8]~7_combout\ = ( \mux0|Mux9~3_combout\ & ( \mux0|Mux9~0_combout\ & ( ((\mux0|Mux9~1_combout\) # (\fsm|Dout~combout\)) # (\mux0|Mux9~4_combout\) ) ) ) # ( !\mux0|Mux9~3_combout\ & ( \mux0|Mux9~0_combout\ & ( (((\mux0|Mux9~2_combout\ & 
-- \mux0|Mux9~1_combout\)) # (\fsm|Dout~combout\)) # (\mux0|Mux9~4_combout\) ) ) ) # ( \mux0|Mux9~3_combout\ & ( !\mux0|Mux9~0_combout\ & ( (\mux0|Mux9~1_combout\) # (\fsm|Dout~combout\) ) ) ) # ( !\mux0|Mux9~3_combout\ & ( !\mux0|Mux9~0_combout\ & ( 
-- ((\mux0|Mux9~2_combout\ & \mux0|Mux9~1_combout\)) # (\fsm|Dout~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111111001100111111111101110111011111110111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_Mux9~4_combout\,
	datab => \fsm|ALT_INV_Dout~combout\,
	datac => \mux0|ALT_INV_Mux9~2_combout\,
	datad => \mux0|ALT_INV_Mux9~1_combout\,
	datae => \mux0|ALT_INV_Mux9~3_combout\,
	dataf => \mux0|ALT_INV_Mux9~0_combout\,
	combout => \mux0|y[8]~7_combout\);

-- Location: LABCELL_X14_Y7_N48
\mux0|y[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y\(0) = ( \mux0|y\(0) & ( (!\mux0|y[8]~7_combout\) # (\mux0|y[0]~6_combout\) ) ) # ( !\mux0|y\(0) & ( (\mux0|y[0]~6_combout\ & \mux0|y[8]~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mux0|ALT_INV_y[0]~6_combout\,
	datad => \mux0|ALT_INV_y[8]~7_combout\,
	dataf => \mux0|ALT_INV_y\(0),
	combout => \mux0|y\(0));

-- Location: FF_X13_Y8_N2
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

-- Location: FF_X14_Y8_N49
\reg3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(1),
	sload => VCC,
	ena => \fsm|Rin\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(1));

-- Location: FF_X14_Y8_N38
\reg1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(1),
	sload => VCC,
	ena => \fsm|Rin\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(1));

-- Location: FF_X13_Y8_N13
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

-- Location: FF_X12_Y8_N41
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

-- Location: FF_X12_Y8_N8
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

-- Location: LABCELL_X12_Y8_N45
\reg5|Q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg5|Q[1]~feeder_combout\ = ( \mux0|y\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y\(1),
	combout => \reg5|Q[1]~feeder_combout\);

-- Location: FF_X12_Y8_N47
\reg5|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg5|Q[1]~feeder_combout\,
	ena => \fsm|Rin\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|Q\(1));

-- Location: FF_X12_Y7_N50
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

-- Location: LABCELL_X12_Y8_N18
\mux0|y[1]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[1]~8_combout\ = ( \reg5|Q\(1) & ( \reg6|Q\(1) & ( ((!\mux0|y[0]~1_combout\ & ((\reg4|Q\(1)))) # (\mux0|y[0]~1_combout\ & (\reg7|Q\(1)))) # (\mux0|y[0]~0_combout\) ) ) ) # ( !\reg5|Q\(1) & ( \reg6|Q\(1) & ( (!\mux0|y[0]~1_combout\ & 
-- (((!\mux0|y[0]~0_combout\ & \reg4|Q\(1))))) # (\mux0|y[0]~1_combout\ & (((\mux0|y[0]~0_combout\)) # (\reg7|Q\(1)))) ) ) ) # ( \reg5|Q\(1) & ( !\reg6|Q\(1) & ( (!\mux0|y[0]~1_combout\ & (((\reg4|Q\(1)) # (\mux0|y[0]~0_combout\)))) # (\mux0|y[0]~1_combout\ 
-- & (\reg7|Q\(1) & (!\mux0|y[0]~0_combout\))) ) ) ) # ( !\reg5|Q\(1) & ( !\reg6|Q\(1) & ( (!\mux0|y[0]~0_combout\ & ((!\mux0|y[0]~1_combout\ & ((\reg4|Q\(1)))) # (\mux0|y[0]~1_combout\ & (\reg7|Q\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010110000000110101011101000010101101101010001111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[0]~1_combout\,
	datab => \reg7|ALT_INV_Q\(1),
	datac => \mux0|ALT_INV_y[0]~0_combout\,
	datad => \reg4|ALT_INV_Q\(1),
	datae => \reg5|ALT_INV_Q\(1),
	dataf => \reg6|ALT_INV_Q\(1),
	combout => \mux0|y[1]~8_combout\);

-- Location: MLABCELL_X13_Y8_N15
\mux0|y[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[1]~9_combout\ = ( \reg2|Q\(1) & ( \mux0|y[1]~8_combout\ & ( (!\mux0|y[0]~4_combout\ & (((\reg1|Q\(1)) # (\mux0|y[0]~3_combout\)))) # (\mux0|y[0]~4_combout\ & (((!\mux0|y[0]~3_combout\)) # (\reg3|Q\(1)))) ) ) ) # ( !\reg2|Q\(1) & ( 
-- \mux0|y[1]~8_combout\ & ( (!\mux0|y[0]~4_combout\ & (((!\mux0|y[0]~3_combout\ & \reg1|Q\(1))))) # (\mux0|y[0]~4_combout\ & (((!\mux0|y[0]~3_combout\)) # (\reg3|Q\(1)))) ) ) ) # ( \reg2|Q\(1) & ( !\mux0|y[1]~8_combout\ & ( (!\mux0|y[0]~4_combout\ & 
-- (((\reg1|Q\(1)) # (\mux0|y[0]~3_combout\)))) # (\mux0|y[0]~4_combout\ & (\reg3|Q\(1) & (\mux0|y[0]~3_combout\))) ) ) ) # ( !\reg2|Q\(1) & ( !\mux0|y[1]~8_combout\ & ( (!\mux0|y[0]~4_combout\ & (((!\mux0|y[0]~3_combout\ & \reg1|Q\(1))))) # 
-- (\mux0|y[0]~4_combout\ & (\reg3|Q\(1) & (\mux0|y[0]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111000001000011011100110100110001111100010011110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg3|ALT_INV_Q\(1),
	datab => \mux0|ALT_INV_y[0]~4_combout\,
	datac => \mux0|ALT_INV_y[0]~3_combout\,
	datad => \reg1|ALT_INV_Q\(1),
	datae => \reg2|ALT_INV_Q\(1),
	dataf => \mux0|ALT_INV_y[1]~8_combout\,
	combout => \mux0|y[1]~9_combout\);

-- Location: MLABCELL_X13_Y8_N0
\mux0|y[1]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[1]~10_combout\ = ( \mux0|y[1]~9_combout\ & ( (!\fsm|Dout~combout\ & ((!\fsm|R0toR7out\(0)) # ((\reg0|Q\(1))))) # (\fsm|Dout~combout\ & (((\data_in[1]~input_o\)))) ) ) # ( !\mux0|y[1]~9_combout\ & ( (!\fsm|Dout~combout\ & (\fsm|R0toR7out\(0) & 
-- ((\reg0|Q\(1))))) # (\fsm|Dout~combout\ & (((\data_in[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000110100011110001011110011111000101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_R0toR7out\(0),
	datab => \fsm|ALT_INV_Dout~combout\,
	datac => \ALT_INV_data_in[1]~input_o\,
	datad => \reg0|ALT_INV_Q\(1),
	dataf => \mux0|ALT_INV_y[1]~9_combout\,
	combout => \mux0|y[1]~10_combout\);

-- Location: MLABCELL_X13_Y8_N3
\mux0|y[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y\(1) = ( \mux0|y[8]~7_combout\ & ( \mux0|y[1]~10_combout\ ) ) # ( !\mux0|y[8]~7_combout\ & ( \mux0|y\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mux0|ALT_INV_y[1]~10_combout\,
	datad => \mux0|ALT_INV_y\(1),
	dataf => \mux0|ALT_INV_y[8]~7_combout\,
	combout => \mux0|y\(1));

-- Location: FF_X13_Y8_N47
\reg0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(2),
	sload => VCC,
	ena => \fsm|Rin\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(2));

-- Location: FF_X13_Y8_N8
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

-- Location: FF_X14_Y8_N40
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

-- Location: LABCELL_X14_Y8_N0
\reg3|Q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg3|Q[2]~feeder_combout\ = ( \mux0|y\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y\(2),
	combout => \reg3|Q[2]~feeder_combout\);

-- Location: FF_X14_Y8_N1
\reg3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg3|Q[2]~feeder_combout\,
	ena => \fsm|Rin\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(2));

-- Location: FF_X13_Y8_N37
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

-- Location: LABCELL_X14_Y8_N30
\reg7|Q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg7|Q[2]~feeder_combout\ = ( \mux0|y\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y\(2),
	combout => \reg7|Q[2]~feeder_combout\);

-- Location: FF_X14_Y8_N31
\reg7|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg7|Q[2]~feeder_combout\,
	ena => \fsm|Rin\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|Q\(2));

-- Location: LABCELL_X12_Y8_N48
\reg4|Q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|Q[2]~feeder_combout\ = ( \mux0|y\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y\(2),
	combout => \reg4|Q[2]~feeder_combout\);

-- Location: FF_X12_Y8_N49
\reg4|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg4|Q[2]~feeder_combout\,
	ena => \fsm|Rin\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(2));

-- Location: FF_X14_Y9_N37
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

-- Location: MLABCELL_X13_Y8_N39
\mux0|y[2]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[2]~11_combout\ = ( \reg4|Q\(2) & ( \reg6|Q\(2) & ( (!\mux0|y[0]~1_combout\ & ((!\mux0|y[0]~0_combout\) # ((\reg5|Q\(2))))) # (\mux0|y[0]~1_combout\ & (((\reg7|Q\(2))) # (\mux0|y[0]~0_combout\))) ) ) ) # ( !\reg4|Q\(2) & ( \reg6|Q\(2) & ( 
-- (!\mux0|y[0]~1_combout\ & (\mux0|y[0]~0_combout\ & (\reg5|Q\(2)))) # (\mux0|y[0]~1_combout\ & (((\reg7|Q\(2))) # (\mux0|y[0]~0_combout\))) ) ) ) # ( \reg4|Q\(2) & ( !\reg6|Q\(2) & ( (!\mux0|y[0]~1_combout\ & ((!\mux0|y[0]~0_combout\) # ((\reg5|Q\(2))))) # 
-- (\mux0|y[0]~1_combout\ & (!\mux0|y[0]~0_combout\ & ((\reg7|Q\(2))))) ) ) ) # ( !\reg4|Q\(2) & ( !\reg6|Q\(2) & ( (!\mux0|y[0]~1_combout\ & (\mux0|y[0]~0_combout\ & (\reg5|Q\(2)))) # (\mux0|y[0]~1_combout\ & (!\mux0|y[0]~0_combout\ & ((\reg7|Q\(2))))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110100010101100111000010011010101111001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[0]~1_combout\,
	datab => \mux0|ALT_INV_y[0]~0_combout\,
	datac => \reg5|ALT_INV_Q\(2),
	datad => \reg7|ALT_INV_Q\(2),
	datae => \reg4|ALT_INV_Q\(2),
	dataf => \reg6|ALT_INV_Q\(2),
	combout => \mux0|y[2]~11_combout\);

-- Location: MLABCELL_X13_Y8_N9
\mux0|y[2]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[2]~12_combout\ = ( \reg3|Q\(2) & ( \mux0|y[2]~11_combout\ & ( ((!\mux0|y[0]~3_combout\ & ((\reg1|Q\(2)))) # (\mux0|y[0]~3_combout\ & (\reg2|Q\(2)))) # (\mux0|y[0]~4_combout\) ) ) ) # ( !\reg3|Q\(2) & ( \mux0|y[2]~11_combout\ & ( 
-- (!\mux0|y[0]~4_combout\ & ((!\mux0|y[0]~3_combout\ & ((\reg1|Q\(2)))) # (\mux0|y[0]~3_combout\ & (\reg2|Q\(2))))) # (\mux0|y[0]~4_combout\ & (((!\mux0|y[0]~3_combout\)))) ) ) ) # ( \reg3|Q\(2) & ( !\mux0|y[2]~11_combout\ & ( (!\mux0|y[0]~4_combout\ & 
-- ((!\mux0|y[0]~3_combout\ & ((\reg1|Q\(2)))) # (\mux0|y[0]~3_combout\ & (\reg2|Q\(2))))) # (\mux0|y[0]~4_combout\ & (((\mux0|y[0]~3_combout\)))) ) ) ) # ( !\reg3|Q\(2) & ( !\mux0|y[2]~11_combout\ & ( (!\mux0|y[0]~4_combout\ & ((!\mux0|y[0]~3_combout\ & 
-- ((\reg1|Q\(2)))) # (\mux0|y[0]~3_combout\ & (\reg2|Q\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010000001100000101111100111111010100000011111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|ALT_INV_Q\(2),
	datab => \reg1|ALT_INV_Q\(2),
	datac => \mux0|ALT_INV_y[0]~4_combout\,
	datad => \mux0|ALT_INV_y[0]~3_combout\,
	datae => \reg3|ALT_INV_Q\(2),
	dataf => \mux0|ALT_INV_y[2]~11_combout\,
	combout => \mux0|y[2]~12_combout\);

-- Location: MLABCELL_X13_Y8_N45
\mux0|y[2]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[2]~13_combout\ = ( \mux0|y[2]~12_combout\ & ( (!\fsm|Dout~combout\ & ((!\fsm|R0toR7out\(0)) # ((\reg0|Q\(2))))) # (\fsm|Dout~combout\ & (((\data_in[2]~input_o\)))) ) ) # ( !\mux0|y[2]~12_combout\ & ( (!\fsm|Dout~combout\ & (\fsm|R0toR7out\(0) & 
-- ((\reg0|Q\(2))))) # (\fsm|Dout~combout\ & (((\data_in[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011110001101101011111000110110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Dout~combout\,
	datab => \fsm|ALT_INV_R0toR7out\(0),
	datac => \ALT_INV_data_in[2]~input_o\,
	datad => \reg0|ALT_INV_Q\(2),
	dataf => \mux0|ALT_INV_y[2]~12_combout\,
	combout => \mux0|y[2]~13_combout\);

-- Location: MLABCELL_X13_Y8_N24
\mux0|y[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y\(2) = ( \mux0|y[8]~7_combout\ & ( \mux0|y[2]~13_combout\ ) ) # ( !\mux0|y[8]~7_combout\ & ( \mux0|y\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mux0|ALT_INV_y[2]~13_combout\,
	datac => \mux0|ALT_INV_y\(2),
	dataf => \mux0|ALT_INV_y[8]~7_combout\,
	combout => \mux0|y\(2));

-- Location: FF_X14_Y7_N17
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

-- Location: LABCELL_X12_Y9_N36
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

-- Location: FF_X12_Y9_N37
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

-- Location: LABCELL_X12_Y9_N18
\reg3|Q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg3|Q[3]~feeder_combout\ = ( \mux0|y\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y\(3),
	combout => \reg3|Q[3]~feeder_combout\);

-- Location: FF_X12_Y9_N19
\reg3|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg3|Q[3]~feeder_combout\,
	ena => \fsm|Rin\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(3));

-- Location: FF_X13_Y9_N20
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

-- Location: FF_X13_Y9_N50
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

-- Location: MLABCELL_X13_Y9_N45
\reg4|Q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|Q[3]~feeder_combout\ = ( \mux0|y\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y\(3),
	combout => \reg4|Q[3]~feeder_combout\);

-- Location: FF_X13_Y9_N47
\reg4|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg4|Q[3]~feeder_combout\,
	ena => \fsm|Rin\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(3));

-- Location: LABCELL_X12_Y9_N3
\reg6|Q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg6|Q[3]~feeder_combout\ = ( \mux0|y\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y\(3),
	combout => \reg6|Q[3]~feeder_combout\);

-- Location: FF_X12_Y9_N4
\reg6|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg6|Q[3]~feeder_combout\,
	ena => \fsm|Rin\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|Q\(3));

-- Location: FF_X14_Y8_N22
\reg7|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(3),
	sload => VCC,
	ena => \fsm|Rin\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|Q\(3));

-- Location: MLABCELL_X13_Y9_N51
\mux0|y[3]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[3]~14_combout\ = ( \mux0|y[0]~1_combout\ & ( \reg7|Q\(3) & ( (!\mux0|y[0]~0_combout\) # (\reg6|Q\(3)) ) ) ) # ( !\mux0|y[0]~1_combout\ & ( \reg7|Q\(3) & ( (!\mux0|y[0]~0_combout\ & ((\reg4|Q\(3)))) # (\mux0|y[0]~0_combout\ & (\reg5|Q\(3))) ) ) ) # 
-- ( \mux0|y[0]~1_combout\ & ( !\reg7|Q\(3) & ( (\reg6|Q\(3) & \mux0|y[0]~0_combout\) ) ) ) # ( !\mux0|y[0]~1_combout\ & ( !\reg7|Q\(3) & ( (!\mux0|y[0]~0_combout\ & ((\reg4|Q\(3)))) # (\mux0|y[0]~0_combout\ & (\reg5|Q\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000000000000111100110011010101011111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg5|ALT_INV_Q\(3),
	datab => \reg4|ALT_INV_Q\(3),
	datac => \reg6|ALT_INV_Q\(3),
	datad => \mux0|ALT_INV_y[0]~0_combout\,
	datae => \mux0|ALT_INV_y[0]~1_combout\,
	dataf => \reg7|ALT_INV_Q\(3),
	combout => \mux0|y[3]~14_combout\);

-- Location: MLABCELL_X13_Y9_N21
\mux0|y[3]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[3]~15_combout\ = ( \mux0|y[0]~3_combout\ & ( \mux0|y[3]~14_combout\ & ( (!\mux0|y[0]~4_combout\ & ((\reg2|Q\(3)))) # (\mux0|y[0]~4_combout\ & (\reg3|Q\(3))) ) ) ) # ( !\mux0|y[0]~3_combout\ & ( \mux0|y[3]~14_combout\ & ( (\mux0|y[0]~4_combout\) # 
-- (\reg1|Q\(3)) ) ) ) # ( \mux0|y[0]~3_combout\ & ( !\mux0|y[3]~14_combout\ & ( (!\mux0|y[0]~4_combout\ & ((\reg2|Q\(3)))) # (\mux0|y[0]~4_combout\ & (\reg3|Q\(3))) ) ) ) # ( !\mux0|y[0]~3_combout\ & ( !\mux0|y[3]~14_combout\ & ( (\reg1|Q\(3) & 
-- !\mux0|y[0]~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100000000111100111101110111011101110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|ALT_INV_Q\(3),
	datab => \mux0|ALT_INV_y[0]~4_combout\,
	datac => \reg3|ALT_INV_Q\(3),
	datad => \reg2|ALT_INV_Q\(3),
	datae => \mux0|ALT_INV_y[0]~3_combout\,
	dataf => \mux0|ALT_INV_y[3]~14_combout\,
	combout => \mux0|y[3]~15_combout\);

-- Location: LABCELL_X14_Y7_N15
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

-- Location: LABCELL_X14_Y7_N45
\mux0|y[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y\(3) = ( \mux0|y[3]~16_combout\ & ( (\mux0|y[8]~7_combout\) # (\mux0|y\(3)) ) ) # ( !\mux0|y[3]~16_combout\ & ( (\mux0|y\(3) & !\mux0|y[8]~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mux0|ALT_INV_y\(3),
	datad => \mux0|ALT_INV_y[8]~7_combout\,
	dataf => \mux0|ALT_INV_y[3]~16_combout\,
	combout => \mux0|y\(3));

-- Location: FF_X14_Y7_N26
\reg0|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mux0|y\(4),
	ena => \fsm|Rin\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(4));

-- Location: FF_X14_Y7_N2
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

-- Location: FF_X14_Y7_N32
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

-- Location: FF_X13_Y7_N2
\reg3|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(4),
	sload => VCC,
	ena => \fsm|Rin\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(4));

-- Location: LABCELL_X14_Y9_N45
\reg6|Q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg6|Q[4]~feeder_combout\ = ( \mux0|y\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y\(4),
	combout => \reg6|Q[4]~feeder_combout\);

-- Location: FF_X14_Y9_N47
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

-- Location: FF_X13_Y9_N8
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

-- Location: FF_X13_Y9_N38
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

-- Location: LABCELL_X14_Y8_N33
\reg7|Q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg7|Q[4]~feeder_combout\ = ( \mux0|y\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y\(4),
	combout => \reg7|Q[4]~feeder_combout\);

-- Location: FF_X14_Y8_N35
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

-- Location: MLABCELL_X13_Y9_N39
\mux0|y[4]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[4]~17_combout\ = ( \reg7|Q\(4) & ( \mux0|y[0]~0_combout\ & ( (!\mux0|y[0]~1_combout\ & ((\reg5|Q\(4)))) # (\mux0|y[0]~1_combout\ & (\reg6|Q\(4))) ) ) ) # ( !\reg7|Q\(4) & ( \mux0|y[0]~0_combout\ & ( (!\mux0|y[0]~1_combout\ & ((\reg5|Q\(4)))) # 
-- (\mux0|y[0]~1_combout\ & (\reg6|Q\(4))) ) ) ) # ( \reg7|Q\(4) & ( !\mux0|y[0]~0_combout\ & ( (\mux0|y[0]~1_combout\) # (\reg4|Q\(4)) ) ) ) # ( !\reg7|Q\(4) & ( !\mux0|y[0]~0_combout\ & ( (\reg4|Q\(4) & !\mux0|y[0]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001111110011111100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg6|ALT_INV_Q\(4),
	datab => \reg4|ALT_INV_Q\(4),
	datac => \mux0|ALT_INV_y[0]~1_combout\,
	datad => \reg5|ALT_INV_Q\(4),
	datae => \reg7|ALT_INV_Q\(4),
	dataf => \mux0|ALT_INV_y[0]~0_combout\,
	combout => \mux0|y[4]~17_combout\);

-- Location: LABCELL_X14_Y7_N33
\mux0|y[4]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[4]~18_combout\ = ( \mux0|y[0]~3_combout\ & ( \mux0|y[4]~17_combout\ & ( (!\mux0|y[0]~4_combout\ & (\reg2|Q\(4))) # (\mux0|y[0]~4_combout\ & ((\reg3|Q\(4)))) ) ) ) # ( !\mux0|y[0]~3_combout\ & ( \mux0|y[4]~17_combout\ & ( (\reg1|Q\(4)) # 
-- (\mux0|y[0]~4_combout\) ) ) ) # ( \mux0|y[0]~3_combout\ & ( !\mux0|y[4]~17_combout\ & ( (!\mux0|y[0]~4_combout\ & (\reg2|Q\(4))) # (\mux0|y[0]~4_combout\ & ((\reg3|Q\(4)))) ) ) ) # ( !\mux0|y[0]~3_combout\ & ( !\mux0|y[4]~17_combout\ & ( 
-- (!\mux0|y[0]~4_combout\ & \reg1|Q\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100010001000111011100111111001111110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|ALT_INV_Q\(4),
	datab => \mux0|ALT_INV_y[0]~4_combout\,
	datac => \reg1|ALT_INV_Q\(4),
	datad => \reg3|ALT_INV_Q\(4),
	datae => \mux0|ALT_INV_y[0]~3_combout\,
	dataf => \mux0|ALT_INV_y[4]~17_combout\,
	combout => \mux0|y[4]~18_combout\);

-- Location: LABCELL_X14_Y7_N18
\mux0|y[4]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[4]~19_combout\ = ( \mux0|y[4]~18_combout\ & ( (!\fsm|Dout~combout\ & ((!\fsm|R0toR7out\(0)) # ((\reg0|Q\(4))))) # (\fsm|Dout~combout\ & (((\data_in[4]~input_o\)))) ) ) # ( !\mux0|y[4]~18_combout\ & ( (!\fsm|Dout~combout\ & (\fsm|R0toR7out\(0) & 
-- (\reg0|Q\(4)))) # (\fsm|Dout~combout\ & (((\data_in[4]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111000001000011011110001100101111111000110010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_R0toR7out\(0),
	datab => \fsm|ALT_INV_Dout~combout\,
	datac => \reg0|ALT_INV_Q\(4),
	datad => \ALT_INV_data_in[4]~input_o\,
	dataf => \mux0|ALT_INV_y[4]~18_combout\,
	combout => \mux0|y[4]~19_combout\);

-- Location: LABCELL_X14_Y7_N24
\mux0|y[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y\(4) = ( \mux0|y\(4) & ( (!\mux0|y[8]~7_combout\) # (\mux0|y[4]~19_combout\) ) ) # ( !\mux0|y\(4) & ( (\mux0|y[4]~19_combout\ & \mux0|y[8]~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mux0|ALT_INV_y[4]~19_combout\,
	datad => \mux0|ALT_INV_y[8]~7_combout\,
	dataf => \mux0|ALT_INV_y\(4),
	combout => \mux0|y\(4));

-- Location: FF_X13_Y8_N56
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

-- Location: FF_X13_Y8_N32
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

-- Location: LABCELL_X14_Y8_N42
\reg1|Q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg1|Q[5]~feeder_combout\ = ( \mux0|y\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y\(5),
	combout => \reg1|Q[5]~feeder_combout\);

-- Location: FF_X14_Y8_N43
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

-- Location: FF_X14_Y8_N17
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

-- Location: LABCELL_X12_Y8_N0
\reg7|Q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg7|Q[5]~feeder_combout\ = ( \mux0|y\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y\(5),
	combout => \reg7|Q[5]~feeder_combout\);

-- Location: FF_X12_Y8_N1
\reg7|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg7|Q[5]~feeder_combout\,
	ena => \fsm|Rin\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|Q\(5));

-- Location: FF_X13_Y8_N50
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

-- Location: LABCELL_X12_Y8_N27
\reg4|Q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|Q[5]~feeder_combout\ = ( \mux0|y\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y\(5),
	combout => \reg4|Q[5]~feeder_combout\);

-- Location: FF_X12_Y8_N28
\reg4|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg4|Q[5]~feeder_combout\,
	ena => \fsm|Rin\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(5));

-- Location: LABCELL_X14_Y9_N0
\reg6|Q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg6|Q[5]~feeder_combout\ = ( \mux0|y\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y\(5),
	combout => \reg6|Q[5]~feeder_combout\);

-- Location: FF_X14_Y9_N1
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

-- Location: MLABCELL_X13_Y8_N51
\mux0|y[5]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[5]~20_combout\ = ( \reg4|Q\(5) & ( \reg6|Q\(5) & ( (!\mux0|y[0]~1_combout\ & ((!\mux0|y[0]~0_combout\) # ((\reg5|Q\(5))))) # (\mux0|y[0]~1_combout\ & (((\reg7|Q\(5))) # (\mux0|y[0]~0_combout\))) ) ) ) # ( !\reg4|Q\(5) & ( \reg6|Q\(5) & ( 
-- (!\mux0|y[0]~1_combout\ & (\mux0|y[0]~0_combout\ & ((\reg5|Q\(5))))) # (\mux0|y[0]~1_combout\ & (((\reg7|Q\(5))) # (\mux0|y[0]~0_combout\))) ) ) ) # ( \reg4|Q\(5) & ( !\reg6|Q\(5) & ( (!\mux0|y[0]~1_combout\ & ((!\mux0|y[0]~0_combout\) # ((\reg5|Q\(5))))) 
-- # (\mux0|y[0]~1_combout\ & (!\mux0|y[0]~0_combout\ & (\reg7|Q\(5)))) ) ) ) # ( !\reg4|Q\(5) & ( !\reg6|Q\(5) & ( (!\mux0|y[0]~1_combout\ & (\mux0|y[0]~0_combout\ & ((\reg5|Q\(5))))) # (\mux0|y[0]~1_combout\ & (!\mux0|y[0]~0_combout\ & (\reg7|Q\(5)))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110100011001010111000010101001101111001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[0]~1_combout\,
	datab => \mux0|ALT_INV_y[0]~0_combout\,
	datac => \reg7|ALT_INV_Q\(5),
	datad => \reg5|ALT_INV_Q\(5),
	datae => \reg4|ALT_INV_Q\(5),
	dataf => \reg6|ALT_INV_Q\(5),
	combout => \mux0|y[5]~20_combout\);

-- Location: MLABCELL_X13_Y8_N33
\mux0|y[5]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[5]~21_combout\ = ( \reg3|Q\(5) & ( \mux0|y[5]~20_combout\ & ( ((!\mux0|y[0]~3_combout\ & ((\reg1|Q\(5)))) # (\mux0|y[0]~3_combout\ & (\reg2|Q\(5)))) # (\mux0|y[0]~4_combout\) ) ) ) # ( !\reg3|Q\(5) & ( \mux0|y[5]~20_combout\ & ( 
-- (!\mux0|y[0]~3_combout\ & (((\reg1|Q\(5)) # (\mux0|y[0]~4_combout\)))) # (\mux0|y[0]~3_combout\ & (\reg2|Q\(5) & (!\mux0|y[0]~4_combout\))) ) ) ) # ( \reg3|Q\(5) & ( !\mux0|y[5]~20_combout\ & ( (!\mux0|y[0]~3_combout\ & (((!\mux0|y[0]~4_combout\ & 
-- \reg1|Q\(5))))) # (\mux0|y[0]~3_combout\ & (((\mux0|y[0]~4_combout\)) # (\reg2|Q\(5)))) ) ) ) # ( !\reg3|Q\(5) & ( !\mux0|y[5]~20_combout\ & ( (!\mux0|y[0]~4_combout\ & ((!\mux0|y[0]~3_combout\ & ((\reg1|Q\(5)))) # (\mux0|y[0]~3_combout\ & 
-- (\reg2|Q\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010110000000101011011010100011010101110100001111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|ALT_INV_y[0]~3_combout\,
	datab => \reg2|ALT_INV_Q\(5),
	datac => \mux0|ALT_INV_y[0]~4_combout\,
	datad => \reg1|ALT_INV_Q\(5),
	datae => \reg3|ALT_INV_Q\(5),
	dataf => \mux0|ALT_INV_y[5]~20_combout\,
	combout => \mux0|y[5]~21_combout\);

-- Location: MLABCELL_X13_Y8_N54
\mux0|y[5]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[5]~22_combout\ = ( \mux0|y[5]~21_combout\ & ( (!\fsm|Dout~combout\ & ((!\fsm|R0toR7out\(0)) # ((\reg0|Q\(5))))) # (\fsm|Dout~combout\ & (((\data_in[5]~input_o\)))) ) ) # ( !\mux0|y[5]~21_combout\ & ( (!\fsm|Dout~combout\ & (\fsm|R0toR7out\(0) & 
-- ((\reg0|Q\(5))))) # (\fsm|Dout~combout\ & (((\data_in[5]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000110100011110001011110011111000101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_R0toR7out\(0),
	datab => \fsm|ALT_INV_Dout~combout\,
	datac => \ALT_INV_data_in[5]~input_o\,
	datad => \reg0|ALT_INV_Q\(5),
	dataf => \mux0|ALT_INV_y[5]~21_combout\,
	combout => \mux0|y[5]~22_combout\);

-- Location: MLABCELL_X13_Y8_N42
\mux0|y[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y\(5) = ( \mux0|y\(5) & ( (!\mux0|y[8]~7_combout\) # (\mux0|y[5]~22_combout\) ) ) # ( !\mux0|y\(5) & ( (\mux0|y[5]~22_combout\ & \mux0|y[8]~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mux0|ALT_INV_y[5]~22_combout\,
	datad => \mux0|ALT_INV_y[8]~7_combout\,
	dataf => \mux0|ALT_INV_y\(5),
	combout => \mux0|y\(5));

-- Location: FF_X14_Y7_N29
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

-- Location: FF_X14_Y9_N8
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

-- Location: FF_X14_Y8_N29
\reg1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(6),
	sload => VCC,
	ena => \fsm|Rin\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(6));

-- Location: FF_X14_Y8_N8
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

-- Location: LABCELL_X14_Y9_N3
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

-- Location: FF_X14_Y9_N5
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

-- Location: MLABCELL_X13_Y9_N42
\reg4|Q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|Q[6]~feeder_combout\ = ( \mux0|y\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y\(6),
	combout => \reg4|Q[6]~feeder_combout\);

-- Location: FF_X13_Y9_N43
\reg4|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg4|Q[6]~feeder_combout\,
	ena => \fsm|Rin\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(6));

-- Location: FF_X14_Y9_N32
\reg5|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(6),
	sload => VCC,
	ena => \fsm|Rin\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|Q\(6));

-- Location: FF_X14_Y8_N32
\reg7|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(6),
	sload => VCC,
	ena => \fsm|Rin\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|Q\(6));

-- Location: LABCELL_X14_Y9_N33
\mux0|y[6]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[6]~23_combout\ = ( \mux0|y[0]~1_combout\ & ( \mux0|y[0]~0_combout\ & ( \reg6|Q\(6) ) ) ) # ( !\mux0|y[0]~1_combout\ & ( \mux0|y[0]~0_combout\ & ( \reg5|Q\(6) ) ) ) # ( \mux0|y[0]~1_combout\ & ( !\mux0|y[0]~0_combout\ & ( \reg7|Q\(6) ) ) ) # ( 
-- !\mux0|y[0]~1_combout\ & ( !\mux0|y[0]~0_combout\ & ( \reg4|Q\(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg6|ALT_INV_Q\(6),
	datab => \reg4|ALT_INV_Q\(6),
	datac => \reg5|ALT_INV_Q\(6),
	datad => \reg7|ALT_INV_Q\(6),
	datae => \mux0|ALT_INV_y[0]~1_combout\,
	dataf => \mux0|ALT_INV_y[0]~0_combout\,
	combout => \mux0|y[6]~23_combout\);

-- Location: LABCELL_X14_Y9_N9
\mux0|y[6]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[6]~24_combout\ = ( \reg3|Q\(6) & ( \mux0|y[6]~23_combout\ & ( ((!\mux0|y[0]~3_combout\ & ((\reg1|Q\(6)))) # (\mux0|y[0]~3_combout\ & (\reg2|Q\(6)))) # (\mux0|y[0]~4_combout\) ) ) ) # ( !\reg3|Q\(6) & ( \mux0|y[6]~23_combout\ & ( 
-- (!\mux0|y[0]~4_combout\ & ((!\mux0|y[0]~3_combout\ & ((\reg1|Q\(6)))) # (\mux0|y[0]~3_combout\ & (\reg2|Q\(6))))) # (\mux0|y[0]~4_combout\ & (((!\mux0|y[0]~3_combout\)))) ) ) ) # ( \reg3|Q\(6) & ( !\mux0|y[6]~23_combout\ & ( (!\mux0|y[0]~4_combout\ & 
-- ((!\mux0|y[0]~3_combout\ & ((\reg1|Q\(6)))) # (\mux0|y[0]~3_combout\ & (\reg2|Q\(6))))) # (\mux0|y[0]~4_combout\ & (((\mux0|y[0]~3_combout\)))) ) ) ) # ( !\reg3|Q\(6) & ( !\mux0|y[6]~23_combout\ & ( (!\mux0|y[0]~4_combout\ & ((!\mux0|y[0]~3_combout\ & 
-- ((\reg1|Q\(6)))) # (\mux0|y[0]~3_combout\ & (\reg2|Q\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100000001111100011100110100111101000011011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|ALT_INV_Q\(6),
	datab => \mux0|ALT_INV_y[0]~4_combout\,
	datac => \mux0|ALT_INV_y[0]~3_combout\,
	datad => \reg1|ALT_INV_Q\(6),
	datae => \reg3|ALT_INV_Q\(6),
	dataf => \mux0|ALT_INV_y[6]~23_combout\,
	combout => \mux0|y[6]~24_combout\);

-- Location: LABCELL_X14_Y7_N27
\mux0|y[6]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[6]~25_combout\ = ( \mux0|y[6]~24_combout\ & ( (!\fsm|Dout~combout\ & ((!\fsm|R0toR7out\(0)) # ((\reg0|Q\(6))))) # (\fsm|Dout~combout\ & (((\data_in[6]~input_o\)))) ) ) # ( !\mux0|y[6]~24_combout\ & ( (!\fsm|Dout~combout\ & (\fsm|R0toR7out\(0) & 
-- ((\reg0|Q\(6))))) # (\fsm|Dout~combout\ & (((\data_in[6]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011110001101101011111000110110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_Dout~combout\,
	datab => \fsm|ALT_INV_R0toR7out\(0),
	datac => \ALT_INV_data_in[6]~input_o\,
	datad => \reg0|ALT_INV_Q\(6),
	dataf => \mux0|ALT_INV_y[6]~24_combout\,
	combout => \mux0|y[6]~25_combout\);

-- Location: LABCELL_X14_Y7_N21
\mux0|y[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y\(6) = ( \mux0|y\(6) & ( (!\mux0|y[8]~7_combout\) # (\mux0|y[6]~25_combout\) ) ) # ( !\mux0|y\(6) & ( (\mux0|y[6]~25_combout\ & \mux0|y[8]~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mux0|ALT_INV_y[6]~25_combout\,
	datad => \mux0|ALT_INV_y[8]~7_combout\,
	dataf => \mux0|ALT_INV_y\(6),
	combout => \mux0|y\(6));

-- Location: FF_X14_Y7_N38
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

-- Location: FF_X14_Y9_N26
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

-- Location: LABCELL_X14_Y8_N3
\reg3|Q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg3|Q[7]~feeder_combout\ = ( \mux0|y\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y\(7),
	combout => \reg3|Q[7]~feeder_combout\);

-- Location: FF_X14_Y8_N4
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

-- Location: FF_X14_Y8_N58
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

-- Location: MLABCELL_X13_Y9_N27
\reg4|Q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|Q[7]~feeder_combout\ = ( \mux0|y\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y\(7),
	combout => \reg4|Q[7]~feeder_combout\);

-- Location: FF_X13_Y9_N28
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

-- Location: FF_X14_Y9_N55
\reg6|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(7),
	sload => VCC,
	ena => \fsm|Rin\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|Q\(7));

-- Location: FF_X14_Y9_N14
\reg5|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(7),
	sload => VCC,
	ena => \fsm|Rin\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|Q\(7));

-- Location: LABCELL_X14_Y8_N18
\reg7|Q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg7|Q[7]~feeder_combout\ = ( \mux0|y\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y\(7),
	combout => \reg7|Q[7]~feeder_combout\);

-- Location: FF_X14_Y8_N20
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

-- Location: LABCELL_X14_Y9_N15
\mux0|y[7]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[7]~26_combout\ = ( \reg7|Q\(7) & ( \mux0|y[0]~0_combout\ & ( (!\mux0|y[0]~1_combout\ & ((\reg5|Q\(7)))) # (\mux0|y[0]~1_combout\ & (\reg6|Q\(7))) ) ) ) # ( !\reg7|Q\(7) & ( \mux0|y[0]~0_combout\ & ( (!\mux0|y[0]~1_combout\ & ((\reg5|Q\(7)))) # 
-- (\mux0|y[0]~1_combout\ & (\reg6|Q\(7))) ) ) ) # ( \reg7|Q\(7) & ( !\mux0|y[0]~0_combout\ & ( (\mux0|y[0]~1_combout\) # (\reg4|Q\(7)) ) ) ) # ( !\reg7|Q\(7) & ( !\mux0|y[0]~0_combout\ & ( (\reg4|Q\(7) & !\mux0|y[0]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4|ALT_INV_Q\(7),
	datab => \reg6|ALT_INV_Q\(7),
	datac => \reg5|ALT_INV_Q\(7),
	datad => \mux0|ALT_INV_y[0]~1_combout\,
	datae => \reg7|ALT_INV_Q\(7),
	dataf => \mux0|ALT_INV_y[0]~0_combout\,
	combout => \mux0|y[7]~26_combout\);

-- Location: LABCELL_X14_Y9_N27
\mux0|y[7]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[7]~27_combout\ = ( \reg1|Q\(7) & ( \mux0|y[7]~26_combout\ & ( (!\mux0|y[0]~3_combout\) # ((!\mux0|y[0]~4_combout\ & (\reg2|Q\(7))) # (\mux0|y[0]~4_combout\ & ((\reg3|Q\(7))))) ) ) ) # ( !\reg1|Q\(7) & ( \mux0|y[7]~26_combout\ & ( 
-- (!\mux0|y[0]~4_combout\ & (\reg2|Q\(7) & (\mux0|y[0]~3_combout\))) # (\mux0|y[0]~4_combout\ & (((!\mux0|y[0]~3_combout\) # (\reg3|Q\(7))))) ) ) ) # ( \reg1|Q\(7) & ( !\mux0|y[7]~26_combout\ & ( (!\mux0|y[0]~4_combout\ & (((!\mux0|y[0]~3_combout\)) # 
-- (\reg2|Q\(7)))) # (\mux0|y[0]~4_combout\ & (((\mux0|y[0]~3_combout\ & \reg3|Q\(7))))) ) ) ) # ( !\reg1|Q\(7) & ( !\mux0|y[7]~26_combout\ & ( (\mux0|y[0]~3_combout\ & ((!\mux0|y[0]~4_combout\ & (\reg2|Q\(7))) # (\mux0|y[0]~4_combout\ & ((\reg3|Q\(7)))))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111110001001100011100110100001101111111010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|ALT_INV_Q\(7),
	datab => \mux0|ALT_INV_y[0]~4_combout\,
	datac => \mux0|ALT_INV_y[0]~3_combout\,
	datad => \reg3|ALT_INV_Q\(7),
	datae => \reg1|ALT_INV_Q\(7),
	dataf => \mux0|ALT_INV_y[7]~26_combout\,
	combout => \mux0|y[7]~27_combout\);

-- Location: LABCELL_X14_Y7_N36
\mux0|y[7]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[7]~28_combout\ = ( \mux0|y[7]~27_combout\ & ( (!\fsm|Dout~combout\ & (((!\fsm|R0toR7out\(0)) # (\reg0|Q\(7))))) # (\fsm|Dout~combout\ & (\data_in[7]~input_o\)) ) ) # ( !\mux0|y[7]~27_combout\ & ( (!\fsm|Dout~combout\ & (((\fsm|R0toR7out\(0) & 
-- \reg0|Q\(7))))) # (\fsm|Dout~combout\ & (\data_in[7]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101000100010001110111010001110111011101000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data_in[7]~input_o\,
	datab => \fsm|ALT_INV_Dout~combout\,
	datac => \fsm|ALT_INV_R0toR7out\(0),
	datad => \reg0|ALT_INV_Q\(7),
	dataf => \mux0|ALT_INV_y[7]~27_combout\,
	combout => \mux0|y[7]~28_combout\);

-- Location: LABCELL_X14_Y7_N6
\mux0|y[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y\(7) = ( \mux0|y\(7) & ( (!\mux0|y[8]~7_combout\) # (\mux0|y[7]~28_combout\) ) ) # ( !\mux0|y\(7) & ( (\mux0|y[7]~28_combout\ & \mux0|y[8]~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mux0|ALT_INV_y[7]~28_combout\,
	datad => \mux0|ALT_INV_y[8]~7_combout\,
	dataf => \mux0|ALT_INV_y\(7),
	combout => \mux0|y\(7));

-- Location: FF_X14_Y7_N44
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

-- Location: FF_X12_Y9_N13
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

-- Location: FF_X13_Y9_N32
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

-- Location: LABCELL_X12_Y9_N57
\reg3|Q[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg3|Q[8]~feeder_combout\ = ( \mux0|y\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux0|ALT_INV_y\(8),
	combout => \reg3|Q[8]~feeder_combout\);

-- Location: FF_X12_Y9_N58
\reg3|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg3|Q[8]~feeder_combout\,
	ena => \fsm|Rin\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(8));

-- Location: FF_X13_Y9_N2
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

-- Location: FF_X13_Y9_N14
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

-- Location: FF_X14_Y9_N59
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

-- Location: FF_X14_Y8_N19
\reg7|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mux0|y\(8),
	sload => VCC,
	ena => \fsm|Rin\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|Q\(8));

-- Location: MLABCELL_X13_Y9_N15
\mux0|y[8]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[8]~29_combout\ = ( \mux0|y[0]~0_combout\ & ( \reg7|Q\(8) & ( (!\mux0|y[0]~1_combout\ & (\reg5|Q\(8))) # (\mux0|y[0]~1_combout\ & ((\reg6|Q\(8)))) ) ) ) # ( !\mux0|y[0]~0_combout\ & ( \reg7|Q\(8) & ( (\mux0|y[0]~1_combout\) # (\reg4|Q\(8)) ) ) ) # 
-- ( \mux0|y[0]~0_combout\ & ( !\reg7|Q\(8) & ( (!\mux0|y[0]~1_combout\ & (\reg5|Q\(8))) # (\mux0|y[0]~1_combout\ & ((\reg6|Q\(8)))) ) ) ) # ( !\mux0|y[0]~0_combout\ & ( !\reg7|Q\(8) & ( (\reg4|Q\(8) & !\mux0|y[0]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000001100000011111101011111010111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4|ALT_INV_Q\(8),
	datab => \reg5|ALT_INV_Q\(8),
	datac => \mux0|ALT_INV_y[0]~1_combout\,
	datad => \reg6|ALT_INV_Q\(8),
	datae => \mux0|ALT_INV_y[0]~0_combout\,
	dataf => \reg7|ALT_INV_Q\(8),
	combout => \mux0|y[8]~29_combout\);

-- Location: MLABCELL_X13_Y9_N33
\mux0|y[8]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[8]~30_combout\ = ( \mux0|y[0]~4_combout\ & ( \mux0|y[8]~29_combout\ & ( (!\mux0|y[0]~3_combout\) # (\reg3|Q\(8)) ) ) ) # ( !\mux0|y[0]~4_combout\ & ( \mux0|y[8]~29_combout\ & ( (!\mux0|y[0]~3_combout\ & (\reg1|Q\(8))) # (\mux0|y[0]~3_combout\ & 
-- ((\reg2|Q\(8)))) ) ) ) # ( \mux0|y[0]~4_combout\ & ( !\mux0|y[8]~29_combout\ & ( (\reg3|Q\(8) & \mux0|y[0]~3_combout\) ) ) ) # ( !\mux0|y[0]~4_combout\ & ( !\mux0|y[8]~29_combout\ & ( (!\mux0|y[0]~3_combout\ & (\reg1|Q\(8))) # (\mux0|y[0]~3_combout\ & 
-- ((\reg2|Q\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011000000000000111101010101001100111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|ALT_INV_Q\(8),
	datab => \reg2|ALT_INV_Q\(8),
	datac => \reg3|ALT_INV_Q\(8),
	datad => \mux0|ALT_INV_y[0]~3_combout\,
	datae => \mux0|ALT_INV_y[0]~4_combout\,
	dataf => \mux0|ALT_INV_y[8]~29_combout\,
	combout => \mux0|y[8]~30_combout\);

-- Location: LABCELL_X14_Y7_N42
\mux0|y[8]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y[8]~31_combout\ = ( \mux0|y[8]~30_combout\ & ( (!\fsm|Dout~combout\ & ((!\fsm|R0toR7out\(0)) # ((\reg0|Q\(8))))) # (\fsm|Dout~combout\ & (((\data_in[8]~input_o\)))) ) ) # ( !\mux0|y[8]~30_combout\ & ( (!\fsm|Dout~combout\ & (\fsm|R0toR7out\(0) & 
-- ((\reg0|Q\(8))))) # (\fsm|Dout~combout\ & (((\data_in[8]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000110100011110001011110011111000101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|ALT_INV_R0toR7out\(0),
	datab => \fsm|ALT_INV_Dout~combout\,
	datac => \ALT_INV_data_in[8]~input_o\,
	datad => \reg0|ALT_INV_Q\(8),
	dataf => \mux0|ALT_INV_y[8]~30_combout\,
	combout => \mux0|y[8]~31_combout\);

-- Location: LABCELL_X14_Y7_N12
\mux0|y[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux0|y\(8) = ( \mux0|y\(8) & ( (!\mux0|y[8]~7_combout\) # (\mux0|y[8]~31_combout\) ) ) # ( !\mux0|y\(8) & ( (\mux0|y[8]~31_combout\ & \mux0|y[8]~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mux0|ALT_INV_y[8]~31_combout\,
	datad => \mux0|ALT_INV_y[8]~7_combout\,
	dataf => \mux0|ALT_INV_y\(8),
	combout => \mux0|y\(8));

-- Location: LABCELL_X53_Y30_N0
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


