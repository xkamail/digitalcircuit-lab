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

-- DATE "10/26/2022 03:27:05"

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
	hex5 : BUFFER std_logic_vector(0 TO 6);
	hex4 : BUFFER std_logic_vector(0 TO 6);
	hex3 : BUFFER std_logic_vector(0 TO 6);
	hex2 : BUFFER std_logic_vector(0 TO 6);
	hex1 : BUFFER std_logic_vector(0 TO 6);
	hex0 : BUFFER std_logic_vector(0 TO 6);
	ledr : BUFFER std_logic_vector(8 DOWNTO 0)
	);
END lab10part4;

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
SIGNAL ww_ledr : std_logic_vector(8 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \hex5[6]~output_o\ : std_logic;
SIGNAL \hex5[5]~output_o\ : std_logic;
SIGNAL \hex5[4]~output_o\ : std_logic;
SIGNAL \hex5[3]~output_o\ : std_logic;
SIGNAL \hex5[2]~output_o\ : std_logic;
SIGNAL \hex5[1]~output_o\ : std_logic;
SIGNAL \hex5[0]~output_o\ : std_logic;
SIGNAL \hex4[6]~output_o\ : std_logic;
SIGNAL \hex4[5]~output_o\ : std_logic;
SIGNAL \hex4[4]~output_o\ : std_logic;
SIGNAL \hex4[3]~output_o\ : std_logic;
SIGNAL \hex4[2]~output_o\ : std_logic;
SIGNAL \hex4[1]~output_o\ : std_logic;
SIGNAL \hex4[0]~output_o\ : std_logic;
SIGNAL \hex3[6]~output_o\ : std_logic;
SIGNAL \hex3[5]~output_o\ : std_logic;
SIGNAL \hex3[4]~output_o\ : std_logic;
SIGNAL \hex3[3]~output_o\ : std_logic;
SIGNAL \hex3[2]~output_o\ : std_logic;
SIGNAL \hex3[1]~output_o\ : std_logic;
SIGNAL \hex3[0]~output_o\ : std_logic;
SIGNAL \hex2[6]~output_o\ : std_logic;
SIGNAL \hex2[5]~output_o\ : std_logic;
SIGNAL \hex2[4]~output_o\ : std_logic;
SIGNAL \hex2[3]~output_o\ : std_logic;
SIGNAL \hex2[2]~output_o\ : std_logic;
SIGNAL \hex2[1]~output_o\ : std_logic;
SIGNAL \hex2[0]~output_o\ : std_logic;
SIGNAL \hex1[6]~output_o\ : std_logic;
SIGNAL \hex1[5]~output_o\ : std_logic;
SIGNAL \hex1[4]~output_o\ : std_logic;
SIGNAL \hex1[3]~output_o\ : std_logic;
SIGNAL \hex1[2]~output_o\ : std_logic;
SIGNAL \hex1[1]~output_o\ : std_logic;
SIGNAL \hex1[0]~output_o\ : std_logic;
SIGNAL \hex0[6]~output_o\ : std_logic;
SIGNAL \hex0[5]~output_o\ : std_logic;
SIGNAL \hex0[4]~output_o\ : std_logic;
SIGNAL \hex0[3]~output_o\ : std_logic;
SIGNAL \hex0[2]~output_o\ : std_logic;
SIGNAL \hex0[1]~output_o\ : std_logic;
SIGNAL \hex0[0]~output_o\ : std_logic;
SIGNAL \ledr[0]~output_o\ : std_logic;
SIGNAL \ledr[1]~output_o\ : std_logic;
SIGNAL \ledr[2]~output_o\ : std_logic;
SIGNAL \ledr[3]~output_o\ : std_logic;
SIGNAL \ledr[4]~output_o\ : std_logic;
SIGNAL \ledr[5]~output_o\ : std_logic;
SIGNAL \ledr[6]~output_o\ : std_logic;
SIGNAL \ledr[7]~output_o\ : std_logic;
SIGNAL \ledr[8]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \p1|pc0|Add0~13_sumout\ : std_logic;
SIGNAL \key0~input_o\ : std_logic;
SIGNAL \p1|pc0|Add0~2\ : std_logic;
SIGNAL \p1|pc0|Add0~25_sumout\ : std_logic;
SIGNAL \p1|fsm|DoutIn~0_combout\ : std_logic;
SIGNAL \p1|mux0|y[2]~18_combout\ : std_logic;
SIGNAL \p1|fsm|DoutIn~1_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~21_combout\ : std_logic;
SIGNAL \p1|decX|Mux0~5_combout\ : std_logic;
SIGNAL \p1|fsm|y_Q.T3~q\ : std_logic;
SIGNAL \p1|mux0|y[1]~15_combout\ : std_logic;
SIGNAL \p1|fsm|Mux28~0_combout\ : std_logic;
SIGNAL \sw9~input_o\ : std_logic;
SIGNAL \ff0|Q~q\ : std_logic;
SIGNAL \p1|fsm|Selector0~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector0~1_combout\ : std_logic;
SIGNAL \p1|fsm|y_Q.T0~q\ : std_logic;
SIGNAL \p1|fsm|Selector10~0_combout\ : std_logic;
SIGNAL \p1|fsm|y_Q.TX~q\ : std_logic;
SIGNAL \p1|fsm|y_Q.TXX~q\ : std_logic;
SIGNAL \p1|fsm|y_Q.T1~q\ : std_logic;
SIGNAL \p1|fsm|Ain~0_combout\ : std_logic;
SIGNAL \p1|addsub0|Add0~38_cout\ : std_logic;
SIGNAL \p1|addsub0|Add0~34\ : std_logic;
SIGNAL \p1|addsub0|Add0~2\ : std_logic;
SIGNAL \p1|addsub0|Add0~30\ : std_logic;
SIGNAL \p1|addsub0|Add0~25_sumout\ : std_logic;
SIGNAL \p1|fsm|Gin~0_combout\ : std_logic;
SIGNAL \p1|addsub0|Add0~29_sumout\ : std_logic;
SIGNAL \p1|addsub0|Add0~33_sumout\ : std_logic;
SIGNAL \p1|fsm|Equal0~1_combout\ : std_logic;
SIGNAL \p1|fsm|Mux15~0_combout\ : std_logic;
SIGNAL \p1|pc0|v[3]~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector12~0_combout\ : std_logic;
SIGNAL \p1|decX|Mux0~3_combout\ : std_logic;
SIGNAL \p1|fsm|Selector13~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector5~1_combout\ : std_logic;
SIGNAL \p1|fsm|Selector7~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector3~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector8~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector7~2_combout\ : std_logic;
SIGNAL \p1|fsm|Selector3~1_combout\ : std_logic;
SIGNAL \p1|fsm|Selector4~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector4~1_combout\ : std_logic;
SIGNAL \p1|fsm|Selector4~2_combout\ : std_logic;
SIGNAL \p1|fsm|Selector2~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector2~1_combout\ : std_logic;
SIGNAL \p1|fsm|Selector2~2_combout\ : std_logic;
SIGNAL \p1|fsm|Selector2~3_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~3_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~4_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~22_combout\ : std_logic;
SIGNAL \p1|decX|Mux0~6_combout\ : std_logic;
SIGNAL \p1|fsm|Selector11~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector5~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector6~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector6~1_combout\ : std_logic;
SIGNAL \p1|fsm|Selector6~2_combout\ : std_logic;
SIGNAL \p1|decX|Mux0~2_combout\ : std_logic;
SIGNAL \p1|fsm|Selector7~1_combout\ : std_logic;
SIGNAL \p1|fsm|Selector7~3_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~7_combout\ : std_logic;
SIGNAL \p1|dexY|Mux0~0_combout\ : std_logic;
SIGNAL \p1|decX|Mux0~7_combout\ : std_logic;
SIGNAL \p1|fsm|Mux7~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector8~1_combout\ : std_logic;
SIGNAL \p1|fsm|Selector8~2_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~6_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~13_combout\ : std_logic;
SIGNAL \p1|fsm|Selector1~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector1~1_combout\ : std_logic;
SIGNAL \p1|fsm|Selector1~2_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~14_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~42_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~8_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~9_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~10_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~11_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~12_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~16_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~23_combout\ : std_logic;
SIGNAL \p1|decX|Mux0~4_combout\ : std_logic;
SIGNAL \p1|fsm|Selector14~0_combout\ : std_logic;
SIGNAL \p1|mux0|y[2]~19_combout\ : std_logic;
SIGNAL \p1|mux0|y[2]~20_combout\ : std_logic;
SIGNAL \p1|fsm|Selector5~3_combout\ : std_logic;
SIGNAL \p1|fsm|Selector5~4_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~1_combout\ : std_logic;
SIGNAL \p1|mux0|y[7]~30_combout\ : std_logic;
SIGNAL \p1|mux0|y[7]~31_combout\ : std_logic;
SIGNAL \p1|addsub0|Add0~26\ : std_logic;
SIGNAL \p1|addsub0|Add0~22\ : std_logic;
SIGNAL \p1|addsub0|Add0~18\ : std_logic;
SIGNAL \p1|addsub0|Add0~14\ : std_logic;
SIGNAL \p1|addsub0|Add0~9_sumout\ : std_logic;
SIGNAL \p1|mux0|y[7]~32_combout\ : std_logic;
SIGNAL \p1|fsm|y_D.T2~0_combout\ : std_logic;
SIGNAL \p1|fsm|y_Q.T2~q\ : std_logic;
SIGNAL \p1|addsub0|Add0~1_sumout\ : std_logic;
SIGNAL \p1|addsub0|Add0~10\ : std_logic;
SIGNAL \p1|addsub0|Add0~5_sumout\ : std_logic;
SIGNAL \p1|addsub0|Add0~13_sumout\ : std_logic;
SIGNAL \p1|addsub0|Add0~17_sumout\ : std_logic;
SIGNAL \p1|addsub0|Add0~21_sumout\ : std_logic;
SIGNAL \p1|fsm|Equal0~0_combout\ : std_logic;
SIGNAL \p1|fsm|Mux0~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector5~2_combout\ : std_logic;
SIGNAL \p1|mux0|y[1]~0_combout\ : std_logic;
SIGNAL \p1|mux0|y[5]~36_combout\ : std_logic;
SIGNAL \p1|mux0|y[5]~37_combout\ : std_logic;
SIGNAL \p1|mux0|y[5]~38_combout\ : std_logic;
SIGNAL \p1|decX|Mux0~1_combout\ : std_logic;
SIGNAL \p1|fsm|Selector16~0_combout\ : std_logic;
SIGNAL \p1|mux0|y[6]~39_combout\ : std_logic;
SIGNAL \p1|mux0|y[6]~40_combout\ : std_logic;
SIGNAL \p1|mux0|y[6]~41_combout\ : std_logic;
SIGNAL \p1|fsm|Selector9~0_combout\ : std_logic;
SIGNAL \p1|decX|Mux0~0_combout\ : std_logic;
SIGNAL \p1|fsm|Selector15~0_combout\ : std_logic;
SIGNAL \p1|mux0|y[4]~33_combout\ : std_logic;
SIGNAL \p1|mux0|y[4]~34_combout\ : std_logic;
SIGNAL \p1|mux0|y[4]~35_combout\ : std_logic;
SIGNAL \p1|fsm|Selector10~1_combout\ : std_logic;
SIGNAL \p1|pc0|v[3]~1_combout\ : std_logic;
SIGNAL \p1|pc0|Add0~26\ : std_logic;
SIGNAL \p1|pc0|Add0~29_sumout\ : std_logic;
SIGNAL \p1|pc0|Add0~30\ : std_logic;
SIGNAL \p1|pc0|Add0~33_sumout\ : std_logic;
SIGNAL \p1|pc0|Add0~34\ : std_logic;
SIGNAL \p1|pc0|Add0~21_sumout\ : std_logic;
SIGNAL \p1|pc0|Add0~22\ : std_logic;
SIGNAL \p1|pc0|Add0~17_sumout\ : std_logic;
SIGNAL \p1|mux0|y[8]~27_combout\ : std_logic;
SIGNAL \p1|mux0|y[8]~28_combout\ : std_logic;
SIGNAL \p1|mux0|y[8]~29_combout\ : std_logic;
SIGNAL \p1|ff0|Q~q\ : std_logic;
SIGNAL \wr_en~combout\ : std_logic;
SIGNAL \p1|fsm|Selector17~0_combout\ : std_logic;
SIGNAL \p1|mux0|y[0]~24_combout\ : std_logic;
SIGNAL \p1|mux0|y[0]~25_combout\ : std_logic;
SIGNAL \p1|mux0|y[0]~26_combout\ : std_logic;
SIGNAL \p1|pc0|Add0~14\ : std_logic;
SIGNAL \p1|pc0|Add0~9_sumout\ : std_logic;
SIGNAL \p1|pc0|Add0~10\ : std_logic;
SIGNAL \p1|pc0|Add0~5_sumout\ : std_logic;
SIGNAL \p1|pc0|Add0~6\ : std_logic;
SIGNAL \p1|pc0|Add0~1_sumout\ : std_logic;
SIGNAL \p1|mux0|y[3]~2_combout\ : std_logic;
SIGNAL \p1|mux0|y[3]~5_combout\ : std_logic;
SIGNAL \p1|mux0|y[3]~17_combout\ : std_logic;
SIGNAL \u0|Mux6~0_combout\ : std_logic;
SIGNAL \wr_en~0_combout\ : std_logic;
SIGNAL \u0|s5|hex[6]~0_combout\ : std_logic;
SIGNAL \u0|s5|hex[5]~1_combout\ : std_logic;
SIGNAL \u0|s5|hex[4]~2_combout\ : std_logic;
SIGNAL \u0|s5|hex[3]~3_combout\ : std_logic;
SIGNAL \u0|s5|hex[2]~4_combout\ : std_logic;
SIGNAL \u0|s5|hex[1]~5_combout\ : std_logic;
SIGNAL \u0|s5|hex[0]~6_combout\ : std_logic;
SIGNAL \u0|Mux5~0_combout\ : std_logic;
SIGNAL \u0|s4|hex[6]~0_combout\ : std_logic;
SIGNAL \u0|s4|hex[5]~1_combout\ : std_logic;
SIGNAL \u0|s4|hex[4]~2_combout\ : std_logic;
SIGNAL \u0|s4|hex[3]~3_combout\ : std_logic;
SIGNAL \u0|s4|hex[2]~4_combout\ : std_logic;
SIGNAL \u0|s4|hex[1]~5_combout\ : std_logic;
SIGNAL \u0|s4|hex[0]~6_combout\ : std_logic;
SIGNAL \u0|Mux4~0_combout\ : std_logic;
SIGNAL \u0|s3|hex[6]~0_combout\ : std_logic;
SIGNAL \u0|s3|hex[5]~1_combout\ : std_logic;
SIGNAL \u0|s3|hex[4]~2_combout\ : std_logic;
SIGNAL \u0|s3|hex[3]~3_combout\ : std_logic;
SIGNAL \u0|s3|hex[2]~4_combout\ : std_logic;
SIGNAL \u0|s3|hex[1]~5_combout\ : std_logic;
SIGNAL \u0|s3|hex[0]~6_combout\ : std_logic;
SIGNAL \u0|Mux3~0_combout\ : std_logic;
SIGNAL \u0|s2|hex[6]~0_combout\ : std_logic;
SIGNAL \u0|s2|hex[5]~1_combout\ : std_logic;
SIGNAL \u0|s2|hex[4]~2_combout\ : std_logic;
SIGNAL \u0|s2|hex[3]~3_combout\ : std_logic;
SIGNAL \u0|s2|hex[2]~4_combout\ : std_logic;
SIGNAL \u0|s2|hex[1]~5_combout\ : std_logic;
SIGNAL \u0|s2|hex[0]~6_combout\ : std_logic;
SIGNAL \u0|Mux2~0_combout\ : std_logic;
SIGNAL \u0|s1|hex[6]~0_combout\ : std_logic;
SIGNAL \u0|s1|hex[5]~1_combout\ : std_logic;
SIGNAL \u0|s1|hex[4]~2_combout\ : std_logic;
SIGNAL \u0|s1|hex[3]~3_combout\ : std_logic;
SIGNAL \u0|s1|hex[2]~4_combout\ : std_logic;
SIGNAL \u0|s1|hex[1]~5_combout\ : std_logic;
SIGNAL \u0|s1|hex[0]~6_combout\ : std_logic;
SIGNAL \u0|Mux0~0_combout\ : std_logic;
SIGNAL \u0|s0|hex[6]~0_combout\ : std_logic;
SIGNAL \u0|s0|hex[5]~1_combout\ : std_logic;
SIGNAL \u0|s0|hex[4]~2_combout\ : std_logic;
SIGNAL \u0|s0|hex[3]~3_combout\ : std_logic;
SIGNAL \u0|s0|hex[2]~4_combout\ : std_logic;
SIGNAL \u0|s0|hex[1]~5_combout\ : std_logic;
SIGNAL \u0|s0|hex[0]~6_combout\ : std_logic;
SIGNAL \led_en~combout\ : std_logic;
SIGNAL \u0|r0|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \p1|pc0|v\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u0|r4|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \p1|regG|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u0|r3|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \m0|altsyncram_component|auto_generated|q_a\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u0|r5|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u0|r2|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u0|r1|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \leds0|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|regDout|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|regAddr|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg6|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg4|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg5|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|ir0|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg3|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg1|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u0|En\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \p1|reg2|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg0|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|regA|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|ff0|ALT_INV_Q~q\ : std_logic;
SIGNAL \p1|regAddr|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 6);
SIGNAL \u0|r0|ALT_INV_Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u0|r1|ALT_INV_Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u0|r2|ALT_INV_Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u0|r3|ALT_INV_Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u0|r4|ALT_INV_Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u0|r5|ALT_INV_Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \p1|fsm|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \m0|altsyncram_component|auto_generated|ALT_INV_q_a\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|pc0|ALT_INV_v\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|regG|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg4|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg6|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u0|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \u0|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \u0|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \u0|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \u0|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[0]~26_combout\ : std_logic;
SIGNAL \p1|reg0|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|mux0|ALT_INV_y[0]~25_combout\ : std_logic;
SIGNAL \p1|reg2|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg1|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|reg3|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|mux0|ALT_INV_y[0]~24_combout\ : std_logic;
SIGNAL \p1|reg5|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|mux0|ALT_INV_y[1]~23_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~22_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[1]~21_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[2]~20_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[2]~19_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[2]~18_combout\ : std_logic;
SIGNAL \ALT_INV_wr_en~0_combout\ : std_logic;
SIGNAL \u0|ALT_INV_Mux6~0_combout\ : std_logic;
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
SIGNAL \p1|fsm|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \p1|decX|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \u0|ALT_INV_En\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \p1|mux0|ALT_INV_y[1]~42_combout\ : std_logic;
SIGNAL \p1|regA|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \p1|fsm|ALT_INV_Mux28~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \p1|pc0|ALT_INV_v[3]~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector10~1_combout\ : std_logic;
SIGNAL \p1|fsm|ALT_INV_Selector10~0_combout\ : std_logic;
SIGNAL \ff0|ALT_INV_Q~q\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[6]~41_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[6]~40_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[6]~39_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[5]~38_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[5]~37_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[5]~36_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[4]~35_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[4]~34_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[4]~33_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[7]~32_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[7]~31_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[7]~30_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[8]~29_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[8]~28_combout\ : std_logic;
SIGNAL \p1|mux0|ALT_INV_y[8]~27_combout\ : std_logic;

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
ledr <= ww_ledr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\m0|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \p1|regDout|Q\(3);

\m0|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\p1|regAddr|Q\(6) & \p1|regAddr|Q\(5) & \p1|regAddr|Q\(4) & \p1|regAddr|Q\(3) & \p1|regAddr|Q\(2) & \p1|regAddr|Q\(1) & \p1|regAddr|Q\(0));

\m0|altsyncram_component|auto_generated|q_a\(3) <= \m0|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \p1|regDout|Q\(2);

\m0|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\p1|regAddr|Q\(6) & \p1|regAddr|Q\(5) & \p1|regAddr|Q\(4) & \p1|regAddr|Q\(3) & \p1|regAddr|Q\(2) & \p1|regAddr|Q\(1) & \p1|regAddr|Q\(0));

\m0|altsyncram_component|auto_generated|q_a\(2) <= \m0|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \p1|regDout|Q\(1);

\m0|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\p1|regAddr|Q\(6) & \p1|regAddr|Q\(5) & \p1|regAddr|Q\(4) & \p1|regAddr|Q\(3) & \p1|regAddr|Q\(2) & \p1|regAddr|Q\(1) & \p1|regAddr|Q\(0));

\m0|altsyncram_component|auto_generated|q_a\(1) <= \m0|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \p1|regDout|Q\(0);

\m0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\p1|regAddr|Q\(6) & \p1|regAddr|Q\(5) & \p1|regAddr|Q\(4) & \p1|regAddr|Q\(3) & \p1|regAddr|Q\(2) & \p1|regAddr|Q\(1) & \p1|regAddr|Q\(0));

\m0|altsyncram_component|auto_generated|q_a\(0) <= \m0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \p1|regDout|Q\(8);

\m0|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\p1|regAddr|Q\(6) & \p1|regAddr|Q\(5) & \p1|regAddr|Q\(4) & \p1|regAddr|Q\(3) & \p1|regAddr|Q\(2) & \p1|regAddr|Q\(1) & \p1|regAddr|Q\(0));

\m0|altsyncram_component|auto_generated|q_a\(8) <= \m0|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \p1|regDout|Q\(7);

\m0|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\p1|regAddr|Q\(6) & \p1|regAddr|Q\(5) & \p1|regAddr|Q\(4) & \p1|regAddr|Q\(3) & \p1|regAddr|Q\(2) & \p1|regAddr|Q\(1) & \p1|regAddr|Q\(0));

\m0|altsyncram_component|auto_generated|q_a\(7) <= \m0|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \p1|regDout|Q\(4);

\m0|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\p1|regAddr|Q\(6) & \p1|regAddr|Q\(5) & \p1|regAddr|Q\(4) & \p1|regAddr|Q\(3) & \p1|regAddr|Q\(2) & \p1|regAddr|Q\(1) & \p1|regAddr|Q\(0));

\m0|altsyncram_component|auto_generated|q_a\(4) <= \m0|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \p1|regDout|Q\(5);

\m0|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\p1|regAddr|Q\(6) & \p1|regAddr|Q\(5) & \p1|regAddr|Q\(4) & \p1|regAddr|Q\(3) & \p1|regAddr|Q\(2) & \p1|regAddr|Q\(1) & \p1|regAddr|Q\(0));

\m0|altsyncram_component|auto_generated|q_a\(5) <= \m0|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);

\m0|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \p1|regDout|Q\(6);

\m0|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\p1|regAddr|Q\(6) & \p1|regAddr|Q\(5) & \p1|regAddr|Q\(4) & \p1|regAddr|Q\(3) & \p1|regAddr|Q\(2) & \p1|regAddr|Q\(1) & \p1|regAddr|Q\(0));

\m0|altsyncram_component|auto_generated|q_a\(6) <= \m0|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);
\p1|ff0|ALT_INV_Q~q\ <= NOT \p1|ff0|Q~q\;
\p1|regAddr|ALT_INV_Q\(7) <= NOT \p1|regAddr|Q\(7);
\p1|regAddr|ALT_INV_Q\(8) <= NOT \p1|regAddr|Q\(8);
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
\m0|altsyncram_component|auto_generated|ALT_INV_q_a\(6) <= NOT \m0|altsyncram_component|auto_generated|q_a\(6);
\p1|pc0|ALT_INV_v\(6) <= NOT \p1|pc0|v\(6);
\m0|altsyncram_component|auto_generated|ALT_INV_q_a\(5) <= NOT \m0|altsyncram_component|auto_generated|q_a\(5);
\p1|pc0|ALT_INV_v\(5) <= NOT \p1|pc0|v\(5);
\m0|altsyncram_component|auto_generated|ALT_INV_q_a\(4) <= NOT \m0|altsyncram_component|auto_generated|q_a\(4);
\p1|pc0|ALT_INV_v\(4) <= NOT \p1|pc0|v\(4);
\m0|altsyncram_component|auto_generated|ALT_INV_q_a\(7) <= NOT \m0|altsyncram_component|auto_generated|q_a\(7);
\p1|pc0|ALT_INV_v\(7) <= NOT \p1|pc0|v\(7);
\m0|altsyncram_component|auto_generated|ALT_INV_q_a\(8) <= NOT \m0|altsyncram_component|auto_generated|q_a\(8);
\p1|pc0|ALT_INV_v\(8) <= NOT \p1|pc0|v\(8);
\m0|altsyncram_component|auto_generated|ALT_INV_q_a\(0) <= NOT \m0|altsyncram_component|auto_generated|q_a\(0);
\p1|pc0|ALT_INV_v\(0) <= NOT \p1|pc0|v\(0);
\m0|altsyncram_component|auto_generated|ALT_INV_q_a\(1) <= NOT \m0|altsyncram_component|auto_generated|q_a\(1);
\p1|pc0|ALT_INV_v\(1) <= NOT \p1|pc0|v\(1);
\m0|altsyncram_component|auto_generated|ALT_INV_q_a\(2) <= NOT \m0|altsyncram_component|auto_generated|q_a\(2);
\p1|pc0|ALT_INV_v\(2) <= NOT \p1|pc0|v\(2);
\m0|altsyncram_component|auto_generated|ALT_INV_q_a\(3) <= NOT \m0|altsyncram_component|auto_generated|q_a\(3);
\p1|regG|ALT_INV_Q\(0) <= NOT \p1|regG|Q\(0);
\p1|regG|ALT_INV_Q\(2) <= NOT \p1|regG|Q\(2);
\p1|regG|ALT_INV_Q\(3) <= NOT \p1|regG|Q\(3);
\p1|regG|ALT_INV_Q\(4) <= NOT \p1|regG|Q\(4);
\p1|regG|ALT_INV_Q\(5) <= NOT \p1|regG|Q\(5);
\p1|regG|ALT_INV_Q\(6) <= NOT \p1|regG|Q\(6);
\p1|regG|ALT_INV_Q\(7) <= NOT \p1|regG|Q\(7);
\p1|regG|ALT_INV_Q\(8) <= NOT \p1|regG|Q\(8);
\p1|regG|ALT_INV_Q\(1) <= NOT \p1|regG|Q\(1);
\p1|pc0|ALT_INV_v\(3) <= NOT \p1|pc0|v\(3);
\p1|reg4|ALT_INV_Q\(8) <= NOT \p1|reg4|Q\(8);
\p1|reg6|ALT_INV_Q\(8) <= NOT \p1|reg6|Q\(8);
\u0|ALT_INV_Mux0~0_combout\ <= NOT \u0|Mux0~0_combout\;
\u0|ALT_INV_Mux2~0_combout\ <= NOT \u0|Mux2~0_combout\;
\u0|ALT_INV_Mux3~0_combout\ <= NOT \u0|Mux3~0_combout\;
\u0|ALT_INV_Mux4~0_combout\ <= NOT \u0|Mux4~0_combout\;
\u0|ALT_INV_Mux5~0_combout\ <= NOT \u0|Mux5~0_combout\;
\p1|mux0|ALT_INV_y[0]~26_combout\ <= NOT \p1|mux0|y[0]~26_combout\;
\p1|reg0|ALT_INV_Q\(0) <= NOT \p1|reg0|Q\(0);
\p1|mux0|ALT_INV_y[0]~25_combout\ <= NOT \p1|mux0|y[0]~25_combout\;
\p1|reg2|ALT_INV_Q\(0) <= NOT \p1|reg2|Q\(0);
\p1|reg1|ALT_INV_Q\(0) <= NOT \p1|reg1|Q\(0);
\p1|reg3|ALT_INV_Q\(0) <= NOT \p1|reg3|Q\(0);
\p1|mux0|ALT_INV_y[0]~24_combout\ <= NOT \p1|mux0|y[0]~24_combout\;
\p1|reg5|ALT_INV_Q\(0) <= NOT \p1|reg5|Q\(0);
\p1|reg4|ALT_INV_Q\(0) <= NOT \p1|reg4|Q\(0);
\p1|reg6|ALT_INV_Q\(0) <= NOT \p1|reg6|Q\(0);
\p1|mux0|ALT_INV_y[1]~23_combout\ <= NOT \p1|mux0|y[1]~23_combout\;
\p1|reg0|ALT_INV_Q\(1) <= NOT \p1|reg0|Q\(1);
\p1|mux0|ALT_INV_y[1]~22_combout\ <= NOT \p1|mux0|y[1]~22_combout\;
\p1|reg2|ALT_INV_Q\(1) <= NOT \p1|reg2|Q\(1);
\p1|reg1|ALT_INV_Q\(1) <= NOT \p1|reg1|Q\(1);
\p1|reg3|ALT_INV_Q\(1) <= NOT \p1|reg3|Q\(1);
\p1|mux0|ALT_INV_y[1]~21_combout\ <= NOT \p1|mux0|y[1]~21_combout\;
\p1|reg5|ALT_INV_Q\(1) <= NOT \p1|reg5|Q\(1);
\p1|reg4|ALT_INV_Q\(1) <= NOT \p1|reg4|Q\(1);
\p1|reg6|ALT_INV_Q\(1) <= NOT \p1|reg6|Q\(1);
\p1|mux0|ALT_INV_y[2]~20_combout\ <= NOT \p1|mux0|y[2]~20_combout\;
\p1|reg0|ALT_INV_Q\(2) <= NOT \p1|reg0|Q\(2);
\p1|mux0|ALT_INV_y[2]~19_combout\ <= NOT \p1|mux0|y[2]~19_combout\;
\p1|reg2|ALT_INV_Q\(2) <= NOT \p1|reg2|Q\(2);
\p1|reg1|ALT_INV_Q\(2) <= NOT \p1|reg1|Q\(2);
\p1|reg3|ALT_INV_Q\(2) <= NOT \p1|reg3|Q\(2);
\p1|mux0|ALT_INV_y[2]~18_combout\ <= NOT \p1|mux0|y[2]~18_combout\;
\p1|reg5|ALT_INV_Q\(2) <= NOT \p1|reg5|Q\(2);
\p1|reg4|ALT_INV_Q\(2) <= NOT \p1|reg4|Q\(2);
\p1|reg6|ALT_INV_Q\(2) <= NOT \p1|reg6|Q\(2);
\ALT_INV_wr_en~0_combout\ <= NOT \wr_en~0_combout\;
\u0|ALT_INV_Mux6~0_combout\ <= NOT \u0|Mux6~0_combout\;
\p1|regAddr|ALT_INV_Q\(6) <= NOT \p1|regAddr|Q\(6);
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
\p1|fsm|ALT_INV_Mux0~0_combout\ <= NOT \p1|fsm|Mux0~0_combout\;
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
\u0|ALT_INV_En\(0) <= NOT \u0|En\(0);
\u0|ALT_INV_En\(1) <= NOT \u0|En\(1);
\u0|ALT_INV_En\(2) <= NOT \u0|En\(2);
\u0|ALT_INV_En\(3) <= NOT \u0|En\(3);
\u0|ALT_INV_En\(4) <= NOT \u0|En\(4);
\u0|ALT_INV_En\(5) <= NOT \u0|En\(5);
\p1|mux0|ALT_INV_y[1]~42_combout\ <= NOT \p1|mux0|y[1]~42_combout\;
\p1|regA|ALT_INV_Q\(0) <= NOT \p1|regA|Q\(0);
\p1|regA|ALT_INV_Q\(2) <= NOT \p1|regA|Q\(2);
\p1|regA|ALT_INV_Q\(3) <= NOT \p1|regA|Q\(3);
\p1|regA|ALT_INV_Q\(4) <= NOT \p1|regA|Q\(4);
\p1|regA|ALT_INV_Q\(5) <= NOT \p1|regA|Q\(5);
\p1|regA|ALT_INV_Q\(6) <= NOT \p1|regA|Q\(6);
\p1|regA|ALT_INV_Q\(7) <= NOT \p1|regA|Q\(7);
\p1|regA|ALT_INV_Q\(8) <= NOT \p1|regA|Q\(8);
\p1|regA|ALT_INV_Q\(1) <= NOT \p1|regA|Q\(1);
\p1|fsm|ALT_INV_Mux28~0_combout\ <= NOT \p1|fsm|Mux28~0_combout\;
\p1|fsm|ALT_INV_Selector0~0_combout\ <= NOT \p1|fsm|Selector0~0_combout\;
\p1|pc0|ALT_INV_v[3]~0_combout\ <= NOT \p1|pc0|v[3]~0_combout\;
\p1|fsm|ALT_INV_Mux15~0_combout\ <= NOT \p1|fsm|Mux15~0_combout\;
\p1|fsm|ALT_INV_Selector10~1_combout\ <= NOT \p1|fsm|Selector10~1_combout\;
\p1|fsm|ALT_INV_Selector10~0_combout\ <= NOT \p1|fsm|Selector10~0_combout\;
\ff0|ALT_INV_Q~q\ <= NOT \ff0|Q~q\;
\p1|mux0|ALT_INV_y[6]~41_combout\ <= NOT \p1|mux0|y[6]~41_combout\;
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
\p1|reg0|ALT_INV_Q\(4) <= NOT \p1|reg0|Q\(4);
\p1|mux0|ALT_INV_y[4]~34_combout\ <= NOT \p1|mux0|y[4]~34_combout\;
\p1|reg2|ALT_INV_Q\(4) <= NOT \p1|reg2|Q\(4);
\p1|reg1|ALT_INV_Q\(4) <= NOT \p1|reg1|Q\(4);
\p1|reg3|ALT_INV_Q\(4) <= NOT \p1|reg3|Q\(4);
\p1|mux0|ALT_INV_y[4]~33_combout\ <= NOT \p1|mux0|y[4]~33_combout\;
\p1|reg5|ALT_INV_Q\(4) <= NOT \p1|reg5|Q\(4);
\p1|reg4|ALT_INV_Q\(4) <= NOT \p1|reg4|Q\(4);
\p1|reg6|ALT_INV_Q\(4) <= NOT \p1|reg6|Q\(4);
\p1|mux0|ALT_INV_y[7]~32_combout\ <= NOT \p1|mux0|y[7]~32_combout\;
\p1|reg0|ALT_INV_Q\(7) <= NOT \p1|reg0|Q\(7);
\p1|mux0|ALT_INV_y[7]~31_combout\ <= NOT \p1|mux0|y[7]~31_combout\;
\p1|reg2|ALT_INV_Q\(7) <= NOT \p1|reg2|Q\(7);
\p1|reg1|ALT_INV_Q\(7) <= NOT \p1|reg1|Q\(7);
\p1|reg3|ALT_INV_Q\(7) <= NOT \p1|reg3|Q\(7);
\p1|mux0|ALT_INV_y[7]~30_combout\ <= NOT \p1|mux0|y[7]~30_combout\;
\p1|reg5|ALT_INV_Q\(7) <= NOT \p1|reg5|Q\(7);
\p1|reg4|ALT_INV_Q\(7) <= NOT \p1|reg4|Q\(7);
\p1|reg6|ALT_INV_Q\(7) <= NOT \p1|reg6|Q\(7);
\p1|mux0|ALT_INV_y[8]~29_combout\ <= NOT \p1|mux0|y[8]~29_combout\;
\p1|reg0|ALT_INV_Q\(8) <= NOT \p1|reg0|Q\(8);
\p1|mux0|ALT_INV_y[8]~28_combout\ <= NOT \p1|mux0|y[8]~28_combout\;
\p1|reg2|ALT_INV_Q\(8) <= NOT \p1|reg2|Q\(8);
\p1|reg1|ALT_INV_Q\(8) <= NOT \p1|reg1|Q\(8);
\p1|reg3|ALT_INV_Q\(8) <= NOT \p1|reg3|Q\(8);
\p1|mux0|ALT_INV_y[8]~27_combout\ <= NOT \p1|mux0|y[8]~27_combout\;
\p1|reg5|ALT_INV_Q\(8) <= NOT \p1|reg5|Q\(8);

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
	o => \hex5[6]~output_o\);

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
	o => \hex5[5]~output_o\);

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
	o => \hex5[4]~output_o\);

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
	o => \hex5[3]~output_o\);

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
	o => \hex5[2]~output_o\);

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
	o => \hex5[1]~output_o\);

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
	o => \hex5[0]~output_o\);

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
	o => \hex4[6]~output_o\);

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
	o => \hex4[5]~output_o\);

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
	o => \hex4[4]~output_o\);

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
	o => \hex4[3]~output_o\);

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
	o => \hex4[2]~output_o\);

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
	o => \hex4[1]~output_o\);

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
	o => \hex4[0]~output_o\);

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
	o => \hex3[6]~output_o\);

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
	o => \hex3[5]~output_o\);

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
	o => \hex3[4]~output_o\);

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
	o => \hex3[3]~output_o\);

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
	o => \hex3[2]~output_o\);

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
	o => \hex3[1]~output_o\);

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
	o => \hex3[0]~output_o\);

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
	o => \hex2[6]~output_o\);

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
	o => \hex2[5]~output_o\);

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
	o => \hex2[4]~output_o\);

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
	o => \hex2[3]~output_o\);

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
	o => \hex2[2]~output_o\);

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
	o => \hex2[1]~output_o\);

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
	o => \hex2[0]~output_o\);

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
	o => \hex1[6]~output_o\);

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
	o => \hex1[5]~output_o\);

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
	o => \hex1[4]~output_o\);

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
	o => \hex1[3]~output_o\);

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
	o => \hex1[2]~output_o\);

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
	o => \hex1[1]~output_o\);

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
	o => \hex1[0]~output_o\);

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
	o => \hex0[6]~output_o\);

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
	o => \hex0[5]~output_o\);

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
	o => \hex0[4]~output_o\);

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
	o => \hex0[3]~output_o\);

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
	o => \hex0[2]~output_o\);

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
	o => \hex0[1]~output_o\);

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
	o => \hex0[0]~output_o\);

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
	o => \ledr[0]~output_o\);

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
	o => \ledr[1]~output_o\);

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
	o => \ledr[2]~output_o\);

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
	o => \ledr[3]~output_o\);

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
	o => \ledr[4]~output_o\);

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
	o => \ledr[5]~output_o\);

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
	o => \ledr[6]~output_o\);

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
	o => \ledr[7]~output_o\);

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
	o => \ledr[8]~output_o\);

\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\p1|pc0|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|pc0|Add0~13_sumout\ = SUM(( \p1|pc0|v\(0) ) + ( VCC ) + ( !VCC ))
-- \p1|pc0|Add0~14\ = CARRY(( \p1|pc0|v\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \p1|pc0|ALT_INV_v\(0),
	cin => GND,
	sumout => \p1|pc0|Add0~13_sumout\,
	cout => \p1|pc0|Add0~14\);

\key0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key0,
	o => \key0~input_o\);

\p1|pc0|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|pc0|Add0~1_sumout\ = SUM(( \p1|pc0|v\(3) ) + ( GND ) + ( \p1|pc0|Add0~6\ ))
-- \p1|pc0|Add0~2\ = CARRY(( \p1|pc0|v\(3) ) + ( GND ) + ( \p1|pc0|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \p1|pc0|ALT_INV_v\(3),
	cin => \p1|pc0|Add0~6\,
	sumout => \p1|pc0|Add0~1_sumout\,
	cout => \p1|pc0|Add0~2\);

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

\p1|reg6|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[4]~35_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(4));

\p1|reg6|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[6]~41_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(6));

\p1|reg4|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[6]~41_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg4|Q\(6));

\p1|reg6|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[5]~38_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(5));

\p1|reg4|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[5]~38_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg4|Q\(5));

\p1|reg5|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[5]~38_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(5));

\p1|reg6|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[7]~32_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(7));

\p1|reg4|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[7]~32_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg4|Q\(7));

\p1|reg5|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[7]~32_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(7));

\p1|fsm|DoutIn~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|DoutIn~0_combout\ = (\p1|ir0|Q\(8) & \p1|ir0|Q\(6))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(8),
	datab => \p1|ir0|ALT_INV_Q\(6),
	combout => \p1|fsm|DoutIn~0_combout\);

\p1|reg6|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[2]~20_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(2));

\p1|reg4|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[2]~20_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg4|Q\(2));

\p1|reg5|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[2]~20_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(2));

\p1|mux0|y[2]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[2]~18_combout\ = ( \p1|mux0|y[1]~0_combout\ & ( \p1|mux0|y[1]~1_combout\ & ( \p1|reg6|Q\(2) ) ) ) # ( !\p1|mux0|y[1]~0_combout\ & ( \p1|mux0|y[1]~1_combout\ & ( \p1|pc0|v\(2) ) ) ) # ( \p1|mux0|y[1]~0_combout\ & ( !\p1|mux0|y[1]~1_combout\ & ( 
-- \p1|reg5|Q\(2) ) ) ) # ( !\p1|mux0|y[1]~0_combout\ & ( !\p1|mux0|y[1]~1_combout\ & ( \p1|reg4|Q\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|pc0|ALT_INV_v\(2),
	datab => \p1|reg6|ALT_INV_Q\(2),
	datac => \p1|reg4|ALT_INV_Q\(2),
	datad => \p1|reg5|ALT_INV_Q\(2),
	datae => \p1|mux0|ALT_INV_y[1]~0_combout\,
	dataf => \p1|mux0|ALT_INV_y[1]~1_combout\,
	combout => \p1|mux0|y[2]~18_combout\);

\p1|fsm|DoutIn~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|DoutIn~1_combout\ = (\p1|ir0|Q\(8) & (\p1|ir0|Q\(6) & (!\p1|ir0|Q\(7) & \p1|fsm|y_Q.T2~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(8),
	datab => \p1|ir0|ALT_INV_Q\(6),
	datac => \p1|ir0|ALT_INV_Q\(7),
	datad => \p1|fsm|ALT_INV_y_Q.T2~q\,
	combout => \p1|fsm|DoutIn~1_combout\);

\p1|regDout|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[4]~35_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|DoutIn~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regDout|Q\(4));

\p1|reg6|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[1]~23_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(1));

\p1|reg4|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[1]~23_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg4|Q\(1));

\p1|reg5|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[1]~23_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(1));

\p1|mux0|y[1]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~21_combout\ = ( \p1|mux0|y[1]~0_combout\ & ( \p1|mux0|y[1]~1_combout\ & ( \p1|reg6|Q\(1) ) ) ) # ( !\p1|mux0|y[1]~0_combout\ & ( \p1|mux0|y[1]~1_combout\ & ( \p1|pc0|v\(1) ) ) ) # ( \p1|mux0|y[1]~0_combout\ & ( !\p1|mux0|y[1]~1_combout\ & ( 
-- \p1|reg5|Q\(1) ) ) ) # ( !\p1|mux0|y[1]~0_combout\ & ( !\p1|mux0|y[1]~1_combout\ & ( \p1|reg4|Q\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|pc0|ALT_INV_v\(1),
	datab => \p1|reg6|ALT_INV_Q\(1),
	datac => \p1|reg4|ALT_INV_Q\(1),
	datad => \p1|reg5|ALT_INV_Q\(1),
	datae => \p1|mux0|ALT_INV_y[1]~0_combout\,
	dataf => \p1|mux0|ALT_INV_y[1]~1_combout\,
	combout => \p1|mux0|y[1]~21_combout\);

\p1|reg3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[1]~23_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(1));

\p1|decX|Mux0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|decX|Mux0~5_combout\ = (\p1|ir0|Q\(3) & (!\p1|ir0|Q\(5) & !\p1|ir0|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(3),
	datab => \p1|ir0|ALT_INV_Q\(5),
	datac => \p1|ir0|ALT_INV_Q\(4),
	combout => \p1|decX|Mux0~5_combout\);

\p1|fsm|y_Q.T3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|fsm|y_Q.T2~q\,
	clrn => \key0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|fsm|y_Q.T3~q\);

\p1|mux0|y[1]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~15_combout\ = (\p1|fsm|y_Q.T3~q\ & (!\p1|ir0|Q\(8) $ (((!\p1|ir0|Q\(6) & !\p1|ir0|Q\(7))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001101010000000000110101000000000011010100000000001101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(8),
	datab => \p1|ir0|ALT_INV_Q\(6),
	datac => \p1|ir0|ALT_INV_Q\(7),
	datad => \p1|fsm|ALT_INV_y_Q.T3~q\,
	combout => \p1|mux0|y[1]~15_combout\);

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

\sw9~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw9,
	o => \sw9~input_o\);

\ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \sw9~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff0|Q~q\);

\p1|fsm|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector0~0_combout\ = (!\p1|ir0|Q\(6) & (\p1|fsm|y_Q.T1~q\ & (!\p1|ir0|Q\(8) $ (\p1|ir0|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000100000000001000010000000000100001000000000010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(8),
	datab => \p1|ir0|ALT_INV_Q\(6),
	datac => \p1|ir0|ALT_INV_Q\(7),
	datad => \p1|fsm|ALT_INV_y_Q.T1~q\,
	combout => \p1|fsm|Selector0~0_combout\);

\p1|fsm|Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector0~1_combout\ = (!\p1|fsm|y_Q.T3~q\ & (!\p1|fsm|Selector0~0_combout\ & ((\ff0|Q~q\) # (\p1|fsm|y_Q.T0~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000000000001010100000000000101010000000000010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T3~q\,
	datab => \p1|fsm|ALT_INV_y_Q.T0~q\,
	datac => \ff0|ALT_INV_Q~q\,
	datad => \p1|fsm|ALT_INV_Selector0~0_combout\,
	combout => \p1|fsm|Selector0~1_combout\);

\p1|fsm|y_Q.T0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|fsm|Selector0~1_combout\,
	clrn => \key0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|fsm|y_Q.T0~q\);

\p1|fsm|Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector10~0_combout\ = (!\p1|fsm|y_Q.T0~q\ & \ff0|Q~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T0~q\,
	datab => \ff0|ALT_INV_Q~q\,
	combout => \p1|fsm|Selector10~0_combout\);

\p1|fsm|y_Q.TX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|fsm|Selector10~0_combout\,
	clrn => \key0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|fsm|y_Q.TX~q\);

\p1|fsm|y_Q.TXX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|fsm|y_Q.TX~q\,
	clrn => \key0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|fsm|y_Q.TXX~q\);

\p1|fsm|y_Q.T1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|fsm|y_Q.TXX~q\,
	clrn => \key0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|fsm|y_Q.T1~q\);

\p1|fsm|Ain~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Ain~0_combout\ = (!\p1|ir0|Q\(8) & (\p1|ir0|Q\(7) & \p1|fsm|y_Q.T1~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(8),
	datab => \p1|ir0|ALT_INV_Q\(7),
	datac => \p1|fsm|ALT_INV_y_Q.T1~q\,
	combout => \p1|fsm|Ain~0_combout\);

\p1|regA|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[3]~17_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regA|Q\(3));

\p1|regA|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[2]~20_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regA|Q\(2));

\p1|regA|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[1]~23_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regA|Q\(1));

\p1|regA|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[0]~26_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regA|Q\(0));

\p1|addsub0|Add0~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~38_cout\ = CARRY(( (\p1|fsm|y_Q.T2~q\ & \p1|fsm|Mux28~0_combout\) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T2~q\,
	datad => \p1|fsm|ALT_INV_Mux28~0_combout\,
	cin => GND,
	cout => \p1|addsub0|Add0~38_cout\);

\p1|addsub0|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~33_sumout\ = SUM(( !\p1|mux0|y[0]~26_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|regA|Q\(0) ) + ( \p1|addsub0|Add0~38_cout\ ))
-- \p1|addsub0|Add0~34\ = CARRY(( !\p1|mux0|y[0]~26_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|regA|Q\(0) ) + ( \p1|addsub0|Add0~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T2~q\,
	datac => \p1|mux0|ALT_INV_y[0]~26_combout\,
	datad => \p1|fsm|ALT_INV_Mux28~0_combout\,
	dataf => \p1|regA|ALT_INV_Q\(0),
	cin => \p1|addsub0|Add0~38_cout\,
	sumout => \p1|addsub0|Add0~33_sumout\,
	cout => \p1|addsub0|Add0~34\);

\p1|addsub0|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~1_sumout\ = SUM(( !\p1|mux0|y[1]~23_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|regA|Q\(1) ) + ( \p1|addsub0|Add0~34\ ))
-- \p1|addsub0|Add0~2\ = CARRY(( !\p1|mux0|y[1]~23_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|regA|Q\(1) ) + ( \p1|addsub0|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T2~q\,
	datac => \p1|mux0|ALT_INV_y[1]~23_combout\,
	datad => \p1|fsm|ALT_INV_Mux28~0_combout\,
	dataf => \p1|regA|ALT_INV_Q\(1),
	cin => \p1|addsub0|Add0~34\,
	sumout => \p1|addsub0|Add0~1_sumout\,
	cout => \p1|addsub0|Add0~2\);

\p1|addsub0|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~29_sumout\ = SUM(( !\p1|mux0|y[2]~20_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|regA|Q\(2) ) + ( \p1|addsub0|Add0~2\ ))
-- \p1|addsub0|Add0~30\ = CARRY(( !\p1|mux0|y[2]~20_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|regA|Q\(2) ) + ( \p1|addsub0|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T2~q\,
	datac => \p1|mux0|ALT_INV_y[2]~20_combout\,
	datad => \p1|fsm|ALT_INV_Mux28~0_combout\,
	dataf => \p1|regA|ALT_INV_Q\(2),
	cin => \p1|addsub0|Add0~2\,
	sumout => \p1|addsub0|Add0~29_sumout\,
	cout => \p1|addsub0|Add0~30\);

\p1|addsub0|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~25_sumout\ = SUM(( !\p1|mux0|y[3]~17_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|regA|Q\(3) ) + ( \p1|addsub0|Add0~30\ ))
-- \p1|addsub0|Add0~26\ = CARRY(( !\p1|mux0|y[3]~17_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|regA|Q\(3) ) + ( \p1|addsub0|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T2~q\,
	datac => \p1|mux0|ALT_INV_y[3]~17_combout\,
	datad => \p1|fsm|ALT_INV_Mux28~0_combout\,
	dataf => \p1|regA|ALT_INV_Q\(3),
	cin => \p1|addsub0|Add0~30\,
	sumout => \p1|addsub0|Add0~25_sumout\,
	cout => \p1|addsub0|Add0~26\);

\p1|fsm|Gin~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Gin~0_combout\ = (!\p1|ir0|Q\(8) & (\p1|ir0|Q\(7) & \p1|fsm|y_Q.T2~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(8),
	datab => \p1|ir0|ALT_INV_Q\(7),
	datac => \p1|fsm|ALT_INV_y_Q.T2~q\,
	combout => \p1|fsm|Gin~0_combout\);

\p1|regG|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|addsub0|Add0~25_sumout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regG|Q\(3));

\p1|regG|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|addsub0|Add0~29_sumout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regG|Q\(2));

\p1|regG|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|addsub0|Add0~33_sumout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regG|Q\(0));

\p1|fsm|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Equal0~1_combout\ = (!\p1|regG|Q\(3) & (!\p1|regG|Q\(2) & !\p1|regG|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|regG|ALT_INV_Q\(3),
	datab => \p1|regG|ALT_INV_Q\(2),
	datac => \p1|regG|ALT_INV_Q\(0),
	combout => \p1|fsm|Equal0~1_combout\);

\p1|fsm|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Mux15~0_combout\ = (!\p1|ir0|Q\(6) & (\p1|ir0|Q\(7) & ((!\p1|fsm|Equal0~0_combout\) # (!\p1|fsm|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101000000000001010100000000000101010000000000010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(6),
	datab => \p1|fsm|ALT_INV_Equal0~0_combout\,
	datac => \p1|fsm|ALT_INV_Equal0~1_combout\,
	datad => \p1|ir0|ALT_INV_Q\(7),
	combout => \p1|fsm|Mux15~0_combout\);

\p1|pc0|v[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|pc0|v[3]~0_combout\ = (\p1|fsm|y_Q.T1~q\ & (((!\p1|ir0|Q\(6) & !\p1|ir0|Q\(7))) # (\p1|ir0|Q\(8))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011010101000000001101010100000000110101010000000011010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(8),
	datab => \p1|ir0|ALT_INV_Q\(6),
	datac => \p1|ir0|ALT_INV_Q\(7),
	datad => \p1|fsm|ALT_INV_y_Q.T1~q\,
	combout => \p1|pc0|v[3]~0_combout\);

\p1|fsm|Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector12~0_combout\ = ( \p1|pc0|v[3]~0_combout\ & ( (\p1|decX|Mux0~5_combout\ & ((!\p1|ir0|Q\(8)) # ((\p1|fsm|Mux15~0_combout\) # (\p1|mux0|y[1]~15_combout\)))) ) ) # ( !\p1|pc0|v[3]~0_combout\ & ( (\p1|decX|Mux0~5_combout\ & 
-- \p1|mux0|y[1]~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011001000110011001100000011000000110010001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(8),
	datab => \p1|decX|ALT_INV_Mux0~5_combout\,
	datac => \p1|mux0|ALT_INV_y[1]~15_combout\,
	datad => \p1|fsm|ALT_INV_Mux15~0_combout\,
	datae => \p1|pc0|ALT_INV_v[3]~0_combout\,
	combout => \p1|fsm|Selector12~0_combout\);

\p1|reg1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[1]~23_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(1));

\p1|decX|Mux0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|decX|Mux0~3_combout\ = (!\p1|ir0|Q\(3) & (!\p1|ir0|Q\(5) & \p1|ir0|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(3),
	datab => \p1|ir0|ALT_INV_Q\(5),
	datac => \p1|ir0|ALT_INV_Q\(4),
	combout => \p1|decX|Mux0~3_combout\);

\p1|fsm|Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector13~0_combout\ = ( \p1|pc0|v[3]~0_combout\ & ( (\p1|decX|Mux0~3_combout\ & ((!\p1|ir0|Q\(8)) # ((\p1|fsm|Mux15~0_combout\) # (\p1|mux0|y[1]~15_combout\)))) ) ) # ( !\p1|pc0|v[3]~0_combout\ & ( (\p1|decX|Mux0~3_combout\ & 
-- \p1|mux0|y[1]~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011001000110011001100000011000000110010001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(8),
	datab => \p1|decX|ALT_INV_Mux0~3_combout\,
	datac => \p1|mux0|ALT_INV_y[1]~15_combout\,
	datad => \p1|fsm|ALT_INV_Mux15~0_combout\,
	datae => \p1|pc0|ALT_INV_v[3]~0_combout\,
	combout => \p1|fsm|Selector13~0_combout\);

\p1|reg2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[1]~23_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q\(1));

\p1|fsm|Selector5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector5~1_combout\ = ( \p1|ir0|Q\(7) & ( \p1|fsm|y_Q.T1~q\ & ( (!\p1|ir0|Q\(8)) # ((!\p1|ir0|Q\(6) & ((!\p1|fsm|Equal0~0_combout\) # (!\p1|fsm|Equal0~1_combout\)))) ) ) ) # ( !\p1|ir0|Q\(7) & ( \p1|fsm|y_Q.T1~q\ & ( (!\p1|ir0|Q\(6)) # 
-- (\p1|ir0|Q\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011011101110111011110111011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(8),
	datab => \p1|ir0|ALT_INV_Q\(6),
	datac => \p1|fsm|ALT_INV_Equal0~0_combout\,
	datad => \p1|fsm|ALT_INV_Equal0~1_combout\,
	datae => \p1|ir0|ALT_INV_Q\(7),
	dataf => \p1|fsm|ALT_INV_y_Q.T1~q\,
	combout => \p1|fsm|Selector5~1_combout\);

\p1|regDout|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[1]~23_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|DoutIn~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regDout|Q\(1));

\p1|regAddr|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[2]~20_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regAddr|Q\(2));

\p1|regAddr|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[3]~17_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regAddr|Q\(3));

\p1|regAddr|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[4]~35_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regAddr|Q\(4));

\p1|regAddr|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[5]~38_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regAddr|Q\(5));

\p1|regAddr|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[6]~41_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regAddr|Q\(6));

\m0|altsyncram_component|auto_generated|ram_block1a1\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000000",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 128,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 7,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \wr_en~combout\,
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

\p1|ir0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \m0|altsyncram_component|auto_generated|q_a\(1),
	clrn => \key0~input_o\,
	ena => \p1|fsm|y_Q.TXX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(1));

\p1|regDout|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[0]~26_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|DoutIn~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regDout|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000012",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 128,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 7,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \wr_en~combout\,
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

\p1|ir0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \m0|altsyncram_component|auto_generated|q_a\(0),
	clrn => \key0~input_o\,
	ena => \p1|fsm|y_Q.TXX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(0));

\p1|fsm|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector7~0_combout\ = (\p1|ir0|Q\(1) & !\p1|ir0|Q\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(1),
	datab => \p1|ir0|ALT_INV_Q\(0),
	combout => \p1|fsm|Selector7~0_combout\);

\p1|fsm|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector3~0_combout\ = ( \p1|decX|Mux0~3_combout\ & ( (\p1|fsm|Selector5~1_combout\ & ((!\p1|fsm|Mux0~0_combout\) # ((!\p1|ir0|Q\(2) & \p1|fsm|Selector7~0_combout\)))) ) ) # ( !\p1|decX|Mux0~3_combout\ & ( (\p1|fsm|Mux0~0_combout\ & 
-- (!\p1|ir0|Q\(2) & (\p1|fsm|Selector5~1_combout\ & \p1|fsm|Selector7~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000010100000111000000000000001000000101000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Mux0~0_combout\,
	datab => \p1|ir0|ALT_INV_Q\(2),
	datac => \p1|fsm|ALT_INV_Selector5~1_combout\,
	datad => \p1|fsm|ALT_INV_Selector7~0_combout\,
	datae => \p1|decX|ALT_INV_Mux0~3_combout\,
	combout => \p1|fsm|Selector3~0_combout\);

\p1|fsm|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector8~0_combout\ = (\p1|fsm|y_Q.T2~q\ & (!\p1|ir0|Q\(8) $ (!\p1|ir0|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011000000110000001100000011000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(8),
	datab => \p1|ir0|ALT_INV_Q\(7),
	datac => \p1|fsm|ALT_INV_y_Q.T2~q\,
	combout => \p1|fsm|Selector8~0_combout\);

\p1|fsm|Selector7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector7~2_combout\ = (!\p1|ir0|Q\(8) & (\p1|ir0|Q\(1) & !\p1|ir0|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(8),
	datab => \p1|ir0|ALT_INV_Q\(1),
	datac => \p1|ir0|ALT_INV_Q\(0),
	combout => \p1|fsm|Selector7~2_combout\);

\p1|fsm|Selector3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector3~1_combout\ = ( \p1|decX|Mux0~3_combout\ & ( (\p1|fsm|Selector8~0_combout\ & (((!\p1|ir0|Q\(2) & \p1|fsm|Selector7~2_combout\)) # (\p1|fsm|DoutIn~0_combout\))) ) ) # ( !\p1|decX|Mux0~3_combout\ & ( (!\p1|ir0|Q\(2) & 
-- (\p1|fsm|Selector8~0_combout\ & \p1|fsm|Selector7~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000110000101100000000000010100000001100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(2),
	datab => \p1|fsm|ALT_INV_DoutIn~0_combout\,
	datac => \p1|fsm|ALT_INV_Selector8~0_combout\,
	datad => \p1|fsm|ALT_INV_Selector7~2_combout\,
	datae => \p1|decX|ALT_INV_Mux0~3_combout\,
	combout => \p1|fsm|Selector3~1_combout\);

\p1|fsm|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector4~0_combout\ = (!\p1|ir0|Q\(2) & \p1|ir0|Q\(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(2),
	datab => \p1|ir0|ALT_INV_Q\(1),
	combout => \p1|fsm|Selector4~0_combout\);

\p1|fsm|Selector4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector4~1_combout\ = ( \p1|fsm|Selector4~0_combout\ & ( (\p1|fsm|Selector5~1_combout\ & ((!\p1|fsm|Mux0~0_combout\ & ((\p1|decX|Mux0~4_combout\))) # (\p1|fsm|Mux0~0_combout\ & (\p1|ir0|Q\(0))))) ) ) # ( !\p1|fsm|Selector4~0_combout\ & ( 
-- (!\p1|fsm|Mux0~0_combout\ & (\p1|fsm|Selector5~1_combout\ & \p1|decX|Mux0~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000010000101100000000000010100000000100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Mux0~0_combout\,
	datab => \p1|ir0|ALT_INV_Q\(0),
	datac => \p1|fsm|ALT_INV_Selector5~1_combout\,
	datad => \p1|decX|ALT_INV_Mux0~4_combout\,
	datae => \p1|fsm|ALT_INV_Selector4~0_combout\,
	combout => \p1|fsm|Selector4~1_combout\);

\p1|fsm|Selector4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector4~2_combout\ = ( \p1|decX|Mux0~4_combout\ & ( \p1|fsm|Selector4~0_combout\ & ( (\p1|fsm|Selector8~0_combout\ & ((!\p1|ir0|Q\(8) & ((\p1|ir0|Q\(0)))) # (\p1|ir0|Q\(8) & (\p1|ir0|Q\(6))))) ) ) ) # ( !\p1|decX|Mux0~4_combout\ & ( 
-- \p1|fsm|Selector4~0_combout\ & ( (!\p1|ir0|Q\(8) & (\p1|ir0|Q\(0) & \p1|fsm|Selector8~0_combout\)) ) ) ) # ( \p1|decX|Mux0~4_combout\ & ( !\p1|fsm|Selector4~0_combout\ & ( (\p1|ir0|Q\(8) & (\p1|ir0|Q\(6) & \p1|fsm|Selector8~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000100000000000010100000000000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(8),
	datab => \p1|ir0|ALT_INV_Q\(6),
	datac => \p1|ir0|ALT_INV_Q\(0),
	datad => \p1|fsm|ALT_INV_Selector8~0_combout\,
	datae => \p1|decX|ALT_INV_Mux0~4_combout\,
	dataf => \p1|fsm|ALT_INV_Selector4~0_combout\,
	combout => \p1|fsm|Selector4~2_combout\);

\p1|fsm|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector2~0_combout\ = (!\p1|ir0|Q\(2) & !\p1|ir0|Q\(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(2),
	datab => \p1|ir0|ALT_INV_Q\(1),
	combout => \p1|fsm|Selector2~0_combout\);

\p1|fsm|Selector2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector2~1_combout\ = ( \p1|fsm|Selector2~0_combout\ & ( (\p1|fsm|Selector5~1_combout\ & ((!\p1|fsm|Mux0~0_combout\ & ((\p1|decX|Mux0~5_combout\))) # (\p1|fsm|Mux0~0_combout\ & (\p1|ir0|Q\(0))))) ) ) # ( !\p1|fsm|Selector2~0_combout\ & ( 
-- (!\p1|fsm|Mux0~0_combout\ & (\p1|fsm|Selector5~1_combout\ & \p1|decX|Mux0~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000010000101100000000000010100000000100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Mux0~0_combout\,
	datab => \p1|ir0|ALT_INV_Q\(0),
	datac => \p1|fsm|ALT_INV_Selector5~1_combout\,
	datad => \p1|decX|ALT_INV_Mux0~5_combout\,
	datae => \p1|fsm|ALT_INV_Selector2~0_combout\,
	combout => \p1|fsm|Selector2~1_combout\);

\p1|fsm|Selector2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector2~2_combout\ = (!\p1|ir0|Q\(8) & (!\p1|ir0|Q\(2) & (!\p1|ir0|Q\(1) & \p1|ir0|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(8),
	datab => \p1|ir0|ALT_INV_Q\(2),
	datac => \p1|ir0|ALT_INV_Q\(1),
	datad => \p1|ir0|ALT_INV_Q\(0),
	combout => \p1|fsm|Selector2~2_combout\);

\p1|fsm|Selector2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector2~3_combout\ = (\p1|fsm|Selector8~0_combout\ & (((\p1|fsm|DoutIn~0_combout\ & \p1|decX|Mux0~5_combout\)) # (\p1|fsm|Selector2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110011000000010011001100000001001100110000000100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_DoutIn~0_combout\,
	datab => \p1|fsm|ALT_INV_Selector8~0_combout\,
	datac => \p1|decX|ALT_INV_Mux0~5_combout\,
	datad => \p1|fsm|ALT_INV_Selector2~2_combout\,
	combout => \p1|fsm|Selector2~3_combout\);

\p1|mux0|y[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~3_combout\ = ( !\p1|fsm|Selector2~1_combout\ & ( !\p1|fsm|Selector2~3_combout\ & ( (((\p1|fsm|Selector4~2_combout\) # (\p1|fsm|Selector4~1_combout\)) # (\p1|fsm|Selector3~1_combout\)) # (\p1|fsm|Selector3~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector3~0_combout\,
	datab => \p1|fsm|ALT_INV_Selector3~1_combout\,
	datac => \p1|fsm|ALT_INV_Selector4~1_combout\,
	datad => \p1|fsm|ALT_INV_Selector4~2_combout\,
	datae => \p1|fsm|ALT_INV_Selector2~1_combout\,
	dataf => \p1|fsm|ALT_INV_Selector2~3_combout\,
	combout => \p1|mux0|y[1]~3_combout\);

\p1|mux0|y[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~4_combout\ = (!\p1|fsm|Selector3~0_combout\ & (!\p1|fsm|Selector3~1_combout\ & (!\p1|fsm|Selector2~1_combout\ & !\p1|fsm|Selector2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector3~0_combout\,
	datab => \p1|fsm|ALT_INV_Selector3~1_combout\,
	datac => \p1|fsm|ALT_INV_Selector2~1_combout\,
	datad => \p1|fsm|ALT_INV_Selector2~3_combout\,
	combout => \p1|mux0|y[1]~4_combout\);

\p1|mux0|y[1]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~22_combout\ = ( \p1|mux0|y[1]~3_combout\ & ( \p1|mux0|y[1]~4_combout\ & ( \p1|reg3|Q\(1) ) ) ) # ( !\p1|mux0|y[1]~3_combout\ & ( \p1|mux0|y[1]~4_combout\ & ( \p1|mux0|y[1]~21_combout\ ) ) ) # ( \p1|mux0|y[1]~3_combout\ & ( 
-- !\p1|mux0|y[1]~4_combout\ & ( \p1|reg2|Q\(1) ) ) ) # ( !\p1|mux0|y[1]~3_combout\ & ( !\p1|mux0|y[1]~4_combout\ & ( \p1|reg1|Q\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[1]~21_combout\,
	datab => \p1|reg3|ALT_INV_Q\(1),
	datac => \p1|reg1|ALT_INV_Q\(1),
	datad => \p1|reg2|ALT_INV_Q\(1),
	datae => \p1|mux0|ALT_INV_y[1]~3_combout\,
	dataf => \p1|mux0|ALT_INV_y[1]~4_combout\,
	combout => \p1|mux0|y[1]~22_combout\);

\p1|decX|Mux0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|decX|Mux0~6_combout\ = (!\p1|ir0|Q\(3) & (!\p1|ir0|Q\(5) & !\p1|ir0|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(3),
	datab => \p1|ir0|ALT_INV_Q\(5),
	datac => \p1|ir0|ALT_INV_Q\(4),
	combout => \p1|decX|Mux0~6_combout\);

\p1|fsm|Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector11~0_combout\ = ( \p1|pc0|v[3]~0_combout\ & ( (\p1|decX|Mux0~6_combout\ & ((!\p1|ir0|Q\(8)) # ((\p1|fsm|Mux15~0_combout\) # (\p1|mux0|y[1]~15_combout\)))) ) ) # ( !\p1|pc0|v[3]~0_combout\ & ( (\p1|decX|Mux0~6_combout\ & 
-- \p1|mux0|y[1]~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011001000110011001100000011000000110010001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(8),
	datab => \p1|decX|ALT_INV_Mux0~6_combout\,
	datac => \p1|mux0|ALT_INV_y[1]~15_combout\,
	datad => \p1|fsm|ALT_INV_Mux15~0_combout\,
	datae => \p1|pc0|ALT_INV_v[3]~0_combout\,
	combout => \p1|fsm|Selector11~0_combout\);

\p1|reg0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[1]~23_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(1));

\p1|fsm|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector5~0_combout\ = (\p1|ir0|Q\(2) & !\p1|ir0|Q\(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(2),
	datab => \p1|ir0|ALT_INV_Q\(1),
	combout => \p1|fsm|Selector5~0_combout\);

\p1|fsm|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector6~0_combout\ = ( \p1|decX|Mux0~1_combout\ & ( (\p1|fsm|Selector5~1_combout\ & ((!\p1|fsm|Mux0~0_combout\) # ((\p1|fsm|Selector5~0_combout\ & \p1|ir0|Q\(0))))) ) ) # ( !\p1|decX|Mux0~1_combout\ & ( (\p1|fsm|Mux0~0_combout\ & 
-- (\p1|fsm|Selector5~0_combout\ & (\p1|ir0|Q\(0) & \p1|fsm|Selector5~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000001010101100000000000000010000000010101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Mux0~0_combout\,
	datab => \p1|fsm|ALT_INV_Selector5~0_combout\,
	datac => \p1|ir0|ALT_INV_Q\(0),
	datad => \p1|fsm|ALT_INV_Selector5~1_combout\,
	datae => \p1|decX|ALT_INV_Mux0~1_combout\,
	combout => \p1|fsm|Selector6~0_combout\);

\p1|fsm|Selector6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector6~1_combout\ = (!\p1|ir0|Q\(8) & (\p1|ir0|Q\(2) & (!\p1|ir0|Q\(1) & \p1|ir0|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(8),
	datab => \p1|ir0|ALT_INV_Q\(2),
	datac => \p1|ir0|ALT_INV_Q\(1),
	datad => \p1|ir0|ALT_INV_Q\(0),
	combout => \p1|fsm|Selector6~1_combout\);

\p1|fsm|Selector6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector6~2_combout\ = (\p1|fsm|Selector8~0_combout\ & (((\p1|fsm|DoutIn~0_combout\ & \p1|decX|Mux0~1_combout\)) # (\p1|fsm|Selector6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110011000000010011001100000001001100110000000100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_DoutIn~0_combout\,
	datab => \p1|fsm|ALT_INV_Selector8~0_combout\,
	datac => \p1|decX|ALT_INV_Mux0~1_combout\,
	datad => \p1|fsm|ALT_INV_Selector6~1_combout\,
	combout => \p1|fsm|Selector6~2_combout\);

\p1|decX|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|decX|Mux0~2_combout\ = (!\p1|ir0|Q\(3) & (\p1|ir0|Q\(5) & \p1|ir0|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(3),
	datab => \p1|ir0|ALT_INV_Q\(5),
	datac => \p1|ir0|ALT_INV_Q\(4),
	combout => \p1|decX|Mux0~2_combout\);

\p1|fsm|Selector7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector7~1_combout\ = ( \p1|fsm|Selector7~0_combout\ & ( (\p1|fsm|Selector5~1_combout\ & ((!\p1|fsm|Mux0~0_combout\ & ((\p1|decX|Mux0~2_combout\))) # (\p1|fsm|Mux0~0_combout\ & (\p1|ir0|Q\(2))))) ) ) # ( !\p1|fsm|Selector7~0_combout\ & ( 
-- (!\p1|fsm|Mux0~0_combout\ & (\p1|fsm|Selector5~1_combout\ & \p1|decX|Mux0~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000010000101100000000000010100000000100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Mux0~0_combout\,
	datab => \p1|ir0|ALT_INV_Q\(2),
	datac => \p1|fsm|ALT_INV_Selector5~1_combout\,
	datad => \p1|decX|ALT_INV_Mux0~2_combout\,
	datae => \p1|fsm|ALT_INV_Selector7~0_combout\,
	combout => \p1|fsm|Selector7~1_combout\);

\p1|fsm|Selector7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector7~3_combout\ = ( \p1|fsm|Selector7~2_combout\ & ( (\p1|fsm|Selector8~0_combout\ & (((\p1|fsm|DoutIn~0_combout\ & \p1|decX|Mux0~2_combout\)) # (\p1|ir0|Q\(2)))) ) ) # ( !\p1|fsm|Selector7~2_combout\ & ( (\p1|fsm|DoutIn~0_combout\ & 
-- (\p1|fsm|Selector8~0_combout\ & \p1|decX|Mux0~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000001010000011100000000000000110000010100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(2),
	datab => \p1|fsm|ALT_INV_DoutIn~0_combout\,
	datac => \p1|fsm|ALT_INV_Selector8~0_combout\,
	datad => \p1|decX|ALT_INV_Mux0~2_combout\,
	datae => \p1|fsm|ALT_INV_Selector7~2_combout\,
	combout => \p1|fsm|Selector7~3_combout\);

\p1|mux0|y[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~7_combout\ = (!\p1|fsm|Selector6~0_combout\ & (!\p1|fsm|Selector6~2_combout\ & (!\p1|fsm|Selector7~1_combout\ & !\p1|fsm|Selector7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector6~0_combout\,
	datab => \p1|fsm|ALT_INV_Selector6~2_combout\,
	datac => \p1|fsm|ALT_INV_Selector7~1_combout\,
	datad => \p1|fsm|ALT_INV_Selector7~3_combout\,
	combout => \p1|mux0|y[1]~7_combout\);

\p1|dexY|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|dexY|Mux0~0_combout\ = (\p1|ir0|Q\(2) & (\p1|ir0|Q\(1) & \p1|ir0|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(2),
	datab => \p1|ir0|ALT_INV_Q\(1),
	datac => \p1|ir0|ALT_INV_Q\(0),
	combout => \p1|dexY|Mux0~0_combout\);

\p1|decX|Mux0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|decX|Mux0~7_combout\ = (\p1|ir0|Q\(3) & (\p1|ir0|Q\(5) & \p1|ir0|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(3),
	datab => \p1|ir0|ALT_INV_Q\(5),
	datac => \p1|ir0|ALT_INV_Q\(4),
	combout => \p1|decX|Mux0~7_combout\);

\p1|fsm|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Mux7~0_combout\ = ( !\p1|ir0|Q\(8) & ( ((!\p1|ir0|Q\(7) & (((\p1|ir0|Q\(6))) # (\p1|dexY|Mux0~0_combout\))) # (\p1|ir0|Q\(7) & (((\p1|decX|Mux0~7_combout\))))) ) ) # ( \p1|ir0|Q\(8) & ( (\p1|dexY|Mux0~0_combout\ & ((!\p1|ir0|Q\(7)) # 
-- ((!\p1|ir0|Q\(6) & ((!\p1|fsm|Equal0~1_combout\) # (!\p1|fsm|Equal0~0_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100001111001100110011001011111111000011110011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Equal0~1_combout\,
	datab => \p1|dexY|ALT_INV_Mux0~0_combout\,
	datac => \p1|fsm|ALT_INV_Equal0~0_combout\,
	datad => \p1|ir0|ALT_INV_Q\(7),
	datae => \p1|ir0|ALT_INV_Q\(8),
	dataf => \p1|ir0|ALT_INV_Q\(6),
	datag => \p1|decX|ALT_INV_Mux0~7_combout\,
	combout => \p1|fsm|Mux7~0_combout\);

\p1|fsm|Selector8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector8~1_combout\ = (!\p1|ir0|Q\(8) & (((\p1|dexY|Mux0~0_combout\)))) # (\p1|ir0|Q\(8) & (\p1|ir0|Q\(6) & ((\p1|decX|Mux0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000011011000010100001101100001010000110110000101000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(8),
	datab => \p1|ir0|ALT_INV_Q\(6),
	datac => \p1|dexY|ALT_INV_Mux0~0_combout\,
	datad => \p1|decX|ALT_INV_Mux0~7_combout\,
	combout => \p1|fsm|Selector8~1_combout\);

\p1|fsm|Selector8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector8~2_combout\ = ( \p1|fsm|Selector8~1_combout\ & ( (!\p1|fsm|Selector8~0_combout\ & (\p1|fsm|y_Q.T0~q\ & ((!\p1|fsm|y_Q.T1~q\) # (!\p1|fsm|Mux7~0_combout\)))) ) ) # ( !\p1|fsm|Selector8~1_combout\ & ( (\p1|fsm|y_Q.T0~q\ & 
-- ((!\p1|fsm|y_Q.T1~q\) # (!\p1|fsm|Mux7~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001010000011000000100000001111000010100000110000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T1~q\,
	datab => \p1|fsm|ALT_INV_Selector8~0_combout\,
	datac => \p1|fsm|ALT_INV_y_Q.T0~q\,
	datad => \p1|fsm|ALT_INV_Mux7~0_combout\,
	datae => \p1|fsm|ALT_INV_Selector8~1_combout\,
	combout => \p1|fsm|Selector8~2_combout\);

\p1|mux0|y[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~6_combout\ = (!\p1|fsm|Selector3~0_combout\ & (!\p1|fsm|Selector3~1_combout\ $ (((!\p1|fsm|Selector2~1_combout\ & !\p1|fsm|Selector2~3_combout\))))) # (\p1|fsm|Selector3~0_combout\ & (((!\p1|fsm|Selector2~1_combout\ & 
-- !\p1|fsm|Selector2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100010001000011110001000100001111000100010000111100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector3~0_combout\,
	datab => \p1|fsm|ALT_INV_Selector3~1_combout\,
	datac => \p1|fsm|ALT_INV_Selector2~1_combout\,
	datad => \p1|fsm|ALT_INV_Selector2~3_combout\,
	combout => \p1|mux0|y[1]~6_combout\);

\p1|mux0|y[1]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~13_combout\ = (!\p1|fsm|Selector5~2_combout\ & (!\p1|fsm|Selector5~4_combout\ & (!\p1|fsm|Selector4~1_combout\ & !\p1|fsm|Selector4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector5~2_combout\,
	datab => \p1|fsm|ALT_INV_Selector5~4_combout\,
	datac => \p1|fsm|ALT_INV_Selector4~1_combout\,
	datad => \p1|fsm|ALT_INV_Selector4~2_combout\,
	combout => \p1|mux0|y[1]~13_combout\);

\p1|fsm|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector1~0_combout\ = (!\p1|ir0|Q\(8) & (!\p1|ir0|Q\(2) & (!\p1|ir0|Q\(1) & !\p1|ir0|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(8),
	datab => \p1|ir0|ALT_INV_Q\(2),
	datac => \p1|ir0|ALT_INV_Q\(1),
	datad => \p1|ir0|ALT_INV_Q\(0),
	combout => \p1|fsm|Selector1~0_combout\);

\p1|fsm|Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector1~1_combout\ = (\p1|fsm|Selector8~0_combout\ & (((\p1|fsm|DoutIn~0_combout\ & \p1|decX|Mux0~6_combout\)) # (\p1|fsm|Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110011000000010011001100000001001100110000000100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_DoutIn~0_combout\,
	datab => \p1|fsm|ALT_INV_Selector8~0_combout\,
	datac => \p1|decX|ALT_INV_Mux0~6_combout\,
	datad => \p1|fsm|ALT_INV_Selector1~0_combout\,
	combout => \p1|fsm|Selector1~1_combout\);

\p1|fsm|Selector1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector1~2_combout\ = ( \p1|decX|Mux0~6_combout\ & ( !\p1|fsm|Selector1~1_combout\ & ( (!\p1|fsm|Selector5~1_combout\) # ((\p1|fsm|Mux0~0_combout\ & ((!\p1|fsm|Selector2~0_combout\) # (\p1|ir0|Q\(0))))) ) ) ) # ( !\p1|decX|Mux0~6_combout\ & ( 
-- !\p1|fsm|Selector1~1_combout\ & ( (!\p1|fsm|Mux0~0_combout\) # (((!\p1|fsm|Selector5~1_combout\) # (!\p1|fsm|Selector2~0_combout\)) # (\p1|ir0|Q\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111011111101011111000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Mux0~0_combout\,
	datab => \p1|ir0|ALT_INV_Q\(0),
	datac => \p1|fsm|ALT_INV_Selector5~1_combout\,
	datad => \p1|fsm|ALT_INV_Selector2~0_combout\,
	datae => \p1|decX|ALT_INV_Mux0~6_combout\,
	dataf => \p1|fsm|ALT_INV_Selector1~1_combout\,
	combout => \p1|fsm|Selector1~2_combout\);

\p1|mux0|y[1]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~14_combout\ = ( \p1|mux0|y[1]~13_combout\ & ( \p1|fsm|Selector1~2_combout\ & ( (!\p1|mux0|y[1]~6_combout\) # ((\p1|mux0|y[1]~7_combout\ & \p1|fsm|Selector8~2_combout\)) ) ) ) # ( !\p1|mux0|y[1]~13_combout\ & ( \p1|fsm|Selector1~2_combout\ & 
-- ( !\p1|mux0|y[1]~6_combout\ ) ) ) # ( \p1|mux0|y[1]~13_combout\ & ( !\p1|fsm|Selector1~2_combout\ & ( (\p1|mux0|y[1]~7_combout\ & (\p1|mux0|y[1]~4_combout\ & \p1|fsm|Selector8~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000111111111000000001111111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[1]~7_combout\,
	datab => \p1|mux0|ALT_INV_y[1]~4_combout\,
	datac => \p1|fsm|ALT_INV_Selector8~2_combout\,
	datad => \p1|mux0|ALT_INV_y[1]~6_combout\,
	datae => \p1|mux0|ALT_INV_y[1]~13_combout\,
	dataf => \p1|fsm|ALT_INV_Selector1~2_combout\,
	combout => \p1|mux0|y[1]~14_combout\);

\p1|mux0|y[1]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~42_combout\ = ( \p1|mux0|y[1]~14_combout\ & ( \p1|fsm|Selector1~2_combout\ & ( (\p1|fsm|y_Q.T3~q\ & (\p1|ir0|Q\(7) & !\p1|ir0|Q\(8))) ) ) ) # ( !\p1|mux0|y[1]~14_combout\ & ( \p1|fsm|Selector1~2_combout\ & ( (\p1|fsm|y_Q.T3~q\ & 
-- (\p1|ir0|Q\(7) & !\p1|ir0|Q\(8))) ) ) ) # ( \p1|mux0|y[1]~14_combout\ & ( !\p1|fsm|Selector1~2_combout\ & ( (!\p1|fsm|y_Q.T3~q\) # ((!\p1|ir0|Q\(6) $ (\p1|ir0|Q\(8))) # (\p1|ir0|Q\(7))) ) ) ) # ( !\p1|mux0|y[1]~14_combout\ & ( 
-- !\p1|fsm|Selector1~2_combout\ & ( (\p1|fsm|y_Q.T3~q\ & (\p1|ir0|Q\(7) & !\p1|ir0|Q\(8))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000111110111011111100010001000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T3~q\,
	datab => \p1|ir0|ALT_INV_Q\(7),
	datac => \p1|ir0|ALT_INV_Q\(6),
	datad => \p1|ir0|ALT_INV_Q\(8),
	datae => \p1|mux0|ALT_INV_y[1]~14_combout\,
	dataf => \p1|fsm|ALT_INV_Selector1~2_combout\,
	combout => \p1|mux0|y[1]~42_combout\);

\p1|mux0|y[1]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~8_combout\ = (!\p1|fsm|Selector6~0_combout\ & (!\p1|fsm|Selector6~2_combout\ $ (((!\p1|fsm|Selector7~1_combout\ & !\p1|fsm|Selector7~3_combout\))))) # (\p1|fsm|Selector6~0_combout\ & (((!\p1|fsm|Selector7~1_combout\ & 
-- !\p1|fsm|Selector7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100010001000011110001000100001111000100010000111100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector6~0_combout\,
	datab => \p1|fsm|ALT_INV_Selector6~2_combout\,
	datac => \p1|fsm|ALT_INV_Selector7~1_combout\,
	datad => \p1|fsm|ALT_INV_Selector7~3_combout\,
	combout => \p1|mux0|y[1]~8_combout\);

\p1|mux0|y[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~9_combout\ = (!\p1|fsm|Selector5~2_combout\ & (!\p1|fsm|Selector5~4_combout\ $ (((!\p1|fsm|Selector4~1_combout\ & !\p1|fsm|Selector4~2_combout\))))) # (\p1|fsm|Selector5~2_combout\ & (((!\p1|fsm|Selector4~1_combout\ & 
-- !\p1|fsm|Selector4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100010001000011110001000100001111000100010000111100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector5~2_combout\,
	datab => \p1|fsm|ALT_INV_Selector5~4_combout\,
	datac => \p1|fsm|ALT_INV_Selector4~1_combout\,
	datad => \p1|fsm|ALT_INV_Selector4~2_combout\,
	combout => \p1|mux0|y[1]~9_combout\);

\p1|mux0|y[1]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~10_combout\ = (!\p1|fsm|Selector5~2_combout\ & ((!\p1|fsm|Selector5~4_combout\) # ((!\p1|fsm|Selector4~1_combout\ & !\p1|fsm|Selector4~2_combout\)))) # (\p1|fsm|Selector5~2_combout\ & (((!\p1|fsm|Selector4~1_combout\ & 
-- !\p1|fsm|Selector4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100010001000111110001000100011111000100010001111100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector5~2_combout\,
	datab => \p1|fsm|ALT_INV_Selector5~4_combout\,
	datac => \p1|fsm|ALT_INV_Selector4~1_combout\,
	datad => \p1|fsm|ALT_INV_Selector4~2_combout\,
	combout => \p1|mux0|y[1]~10_combout\);

\p1|mux0|y[1]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~11_combout\ = ( !\p1|fsm|Selector2~1_combout\ & ( !\p1|fsm|Selector2~3_combout\ & ( (!\p1|fsm|Selector6~0_combout\ & ((!\p1|fsm|Selector6~2_combout\) # ((!\p1|fsm|Selector7~1_combout\ & !\p1|fsm|Selector7~3_combout\)))) # 
-- (\p1|fsm|Selector6~0_combout\ & (((!\p1|fsm|Selector7~1_combout\ & !\p1|fsm|Selector7~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100010001000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector6~0_combout\,
	datab => \p1|fsm|ALT_INV_Selector6~2_combout\,
	datac => \p1|fsm|ALT_INV_Selector7~1_combout\,
	datad => \p1|fsm|ALT_INV_Selector7~3_combout\,
	datae => \p1|fsm|ALT_INV_Selector2~1_combout\,
	dataf => \p1|fsm|ALT_INV_Selector2~3_combout\,
	combout => \p1|mux0|y[1]~11_combout\);

\p1|mux0|y[1]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~12_combout\ = ( \p1|mux0|y[1]~10_combout\ & ( \p1|mux0|y[1]~11_combout\ & ( (!\p1|mux0|y[1]~9_combout\ & ((!\p1|fsm|Selector8~2_combout\ $ (\p1|mux0|y[1]~8_combout\)))) # (\p1|mux0|y[1]~9_combout\ & (\p1|mux0|y[1]~7_combout\ & 
-- (\p1|fsm|Selector8~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100001100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[1]~7_combout\,
	datab => \p1|fsm|ALT_INV_Selector8~2_combout\,
	datac => \p1|mux0|ALT_INV_y[1]~8_combout\,
	datad => \p1|mux0|ALT_INV_y[1]~9_combout\,
	datae => \p1|mux0|ALT_INV_y[1]~10_combout\,
	dataf => \p1|mux0|ALT_INV_y[1]~11_combout\,
	combout => \p1|mux0|y[1]~12_combout\);

\p1|mux0|y[1]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~16_combout\ = ( !\p1|mux0|y[1]~15_combout\ & ( (\p1|mux0|y[1]~14_combout\ & (((!\p1|fsm|Selector1~2_combout\) # (\p1|mux0|y[1]~12_combout\)) # (\p1|mux0|y[1]~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011011111000000000000000000000000110111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[1]~6_combout\,
	datab => \p1|fsm|ALT_INV_Selector1~2_combout\,
	datac => \p1|mux0|ALT_INV_y[1]~12_combout\,
	datad => \p1|mux0|ALT_INV_y[1]~14_combout\,
	datae => \p1|mux0|ALT_INV_y[1]~15_combout\,
	combout => \p1|mux0|y[1]~16_combout\);

\p1|mux0|y[1]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~23_combout\ = ( \p1|mux0|y[1]~42_combout\ & ( \p1|mux0|y[1]~16_combout\ & ( \p1|reg0|Q\(1) ) ) ) # ( !\p1|mux0|y[1]~42_combout\ & ( \p1|mux0|y[1]~16_combout\ & ( \p1|mux0|y[1]~22_combout\ ) ) ) # ( \p1|mux0|y[1]~42_combout\ & ( 
-- !\p1|mux0|y[1]~16_combout\ & ( \p1|regG|Q\(1) ) ) ) # ( !\p1|mux0|y[1]~42_combout\ & ( !\p1|mux0|y[1]~16_combout\ & ( \m0|altsyncram_component|auto_generated|q_a\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[1]~22_combout\,
	datab => \p1|reg0|ALT_INV_Q\(1),
	datac => \m0|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datad => \p1|regG|ALT_INV_Q\(1),
	datae => \p1|mux0|ALT_INV_y[1]~42_combout\,
	dataf => \p1|mux0|ALT_INV_y[1]~16_combout\,
	combout => \p1|mux0|y[1]~23_combout\);

\p1|regAddr|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[1]~23_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regAddr|Q\(1));

\m0|altsyncram_component|auto_generated|ram_block1a4\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000000",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 128,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 7,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \wr_en~combout\,
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

\p1|ir0|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \m0|altsyncram_component|auto_generated|q_a\(4),
	clrn => \key0~input_o\,
	ena => \p1|fsm|y_Q.TXX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(4));

\p1|decX|Mux0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|decX|Mux0~4_combout\ = (\p1|ir0|Q\(3) & (!\p1|ir0|Q\(5) & \p1|ir0|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(3),
	datab => \p1|ir0|ALT_INV_Q\(5),
	datac => \p1|ir0|ALT_INV_Q\(4),
	combout => \p1|decX|Mux0~4_combout\);

\p1|fsm|Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector14~0_combout\ = ( \p1|pc0|v[3]~0_combout\ & ( (\p1|decX|Mux0~4_combout\ & ((!\p1|ir0|Q\(8)) # ((\p1|fsm|Mux15~0_combout\) # (\p1|mux0|y[1]~15_combout\)))) ) ) # ( !\p1|pc0|v[3]~0_combout\ & ( (\p1|decX|Mux0~4_combout\ & 
-- \p1|mux0|y[1]~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011001000110011001100000011000000110010001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(8),
	datab => \p1|decX|ALT_INV_Mux0~4_combout\,
	datac => \p1|mux0|ALT_INV_y[1]~15_combout\,
	datad => \p1|fsm|ALT_INV_Mux15~0_combout\,
	datae => \p1|pc0|ALT_INV_v[3]~0_combout\,
	combout => \p1|fsm|Selector14~0_combout\);

\p1|reg3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[2]~20_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(2));

\p1|reg1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[2]~20_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(2));

\p1|reg2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[2]~20_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q\(2));

\p1|mux0|y[2]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[2]~19_combout\ = ( \p1|mux0|y[1]~3_combout\ & ( \p1|mux0|y[1]~4_combout\ & ( \p1|reg3|Q\(2) ) ) ) # ( !\p1|mux0|y[1]~3_combout\ & ( \p1|mux0|y[1]~4_combout\ & ( \p1|mux0|y[2]~18_combout\ ) ) ) # ( \p1|mux0|y[1]~3_combout\ & ( 
-- !\p1|mux0|y[1]~4_combout\ & ( \p1|reg2|Q\(2) ) ) ) # ( !\p1|mux0|y[1]~3_combout\ & ( !\p1|mux0|y[1]~4_combout\ & ( \p1|reg1|Q\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[2]~18_combout\,
	datab => \p1|reg3|ALT_INV_Q\(2),
	datac => \p1|reg1|ALT_INV_Q\(2),
	datad => \p1|reg2|ALT_INV_Q\(2),
	datae => \p1|mux0|ALT_INV_y[1]~3_combout\,
	dataf => \p1|mux0|ALT_INV_y[1]~4_combout\,
	combout => \p1|mux0|y[2]~19_combout\);

\p1|reg0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[2]~20_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(2));

\p1|mux0|y[2]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[2]~20_combout\ = ( \p1|mux0|y[1]~42_combout\ & ( \p1|mux0|y[1]~16_combout\ & ( \p1|reg0|Q\(2) ) ) ) # ( !\p1|mux0|y[1]~42_combout\ & ( \p1|mux0|y[1]~16_combout\ & ( \p1|mux0|y[2]~19_combout\ ) ) ) # ( \p1|mux0|y[1]~42_combout\ & ( 
-- !\p1|mux0|y[1]~16_combout\ & ( \p1|regG|Q\(2) ) ) ) # ( !\p1|mux0|y[1]~42_combout\ & ( !\p1|mux0|y[1]~16_combout\ & ( \m0|altsyncram_component|auto_generated|q_a\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[2]~19_combout\,
	datab => \p1|reg0|ALT_INV_Q\(2),
	datac => \m0|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datad => \p1|regG|ALT_INV_Q\(2),
	datae => \p1|mux0|ALT_INV_y[1]~42_combout\,
	dataf => \p1|mux0|ALT_INV_y[1]~16_combout\,
	combout => \p1|mux0|y[2]~20_combout\);

\p1|regDout|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[2]~20_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|DoutIn~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regDout|Q\(2));

\m0|altsyncram_component|auto_generated|ram_block1a2\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000012",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 128,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 7,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \wr_en~combout\,
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

\p1|ir0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \m0|altsyncram_component|auto_generated|q_a\(2),
	clrn => \key0~input_o\,
	ena => \p1|fsm|y_Q.TXX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(2));

\p1|fsm|Selector5~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector5~3_combout\ = (!\p1|ir0|Q\(8) & (\p1|ir0|Q\(2) & (!\p1|ir0|Q\(1) & !\p1|ir0|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(8),
	datab => \p1|ir0|ALT_INV_Q\(2),
	datac => \p1|ir0|ALT_INV_Q\(1),
	datad => \p1|ir0|ALT_INV_Q\(0),
	combout => \p1|fsm|Selector5~3_combout\);

\p1|fsm|Selector5~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector5~4_combout\ = (\p1|fsm|Selector8~0_combout\ & (((\p1|decX|Mux0~0_combout\ & \p1|fsm|DoutIn~0_combout\)) # (\p1|fsm|Selector5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011111000000000001111100000000000111110000000000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|decX|ALT_INV_Mux0~0_combout\,
	datab => \p1|fsm|ALT_INV_DoutIn~0_combout\,
	datac => \p1|fsm|ALT_INV_Selector5~3_combout\,
	datad => \p1|fsm|ALT_INV_Selector8~0_combout\,
	combout => \p1|fsm|Selector5~4_combout\);

\p1|mux0|y[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~1_combout\ = (!\p1|fsm|Selector5~2_combout\ & (!\p1|fsm|Selector5~4_combout\ & (!\p1|fsm|Selector6~0_combout\ & !\p1|fsm|Selector6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector5~2_combout\,
	datab => \p1|fsm|ALT_INV_Selector5~4_combout\,
	datac => \p1|fsm|ALT_INV_Selector6~0_combout\,
	datad => \p1|fsm|ALT_INV_Selector6~2_combout\,
	combout => \p1|mux0|y[1]~1_combout\);

\p1|mux0|y[7]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[7]~30_combout\ = ( \p1|mux0|y[1]~0_combout\ & ( \p1|mux0|y[1]~1_combout\ & ( \p1|reg6|Q\(7) ) ) ) # ( !\p1|mux0|y[1]~0_combout\ & ( \p1|mux0|y[1]~1_combout\ & ( \p1|pc0|v\(7) ) ) ) # ( \p1|mux0|y[1]~0_combout\ & ( !\p1|mux0|y[1]~1_combout\ & ( 
-- \p1|reg5|Q\(7) ) ) ) # ( !\p1|mux0|y[1]~0_combout\ & ( !\p1|mux0|y[1]~1_combout\ & ( \p1|reg4|Q\(7) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|pc0|ALT_INV_v\(7),
	datab => \p1|reg6|ALT_INV_Q\(7),
	datac => \p1|reg4|ALT_INV_Q\(7),
	datad => \p1|reg5|ALT_INV_Q\(7),
	datae => \p1|mux0|ALT_INV_y[1]~0_combout\,
	dataf => \p1|mux0|ALT_INV_y[1]~1_combout\,
	combout => \p1|mux0|y[7]~30_combout\);

\p1|reg3|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[7]~32_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(7));

\p1|reg1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[7]~32_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(7));

\p1|reg2|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[7]~32_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q\(7));

\p1|mux0|y[7]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[7]~31_combout\ = ( \p1|mux0|y[1]~3_combout\ & ( \p1|mux0|y[1]~4_combout\ & ( \p1|reg3|Q\(7) ) ) ) # ( !\p1|mux0|y[1]~3_combout\ & ( \p1|mux0|y[1]~4_combout\ & ( \p1|mux0|y[7]~30_combout\ ) ) ) # ( \p1|mux0|y[1]~3_combout\ & ( 
-- !\p1|mux0|y[1]~4_combout\ & ( \p1|reg2|Q\(7) ) ) ) # ( !\p1|mux0|y[1]~3_combout\ & ( !\p1|mux0|y[1]~4_combout\ & ( \p1|reg1|Q\(7) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[7]~30_combout\,
	datab => \p1|reg3|ALT_INV_Q\(7),
	datac => \p1|reg1|ALT_INV_Q\(7),
	datad => \p1|reg2|ALT_INV_Q\(7),
	datae => \p1|mux0|ALT_INV_y[1]~3_combout\,
	dataf => \p1|mux0|ALT_INV_y[1]~4_combout\,
	combout => \p1|mux0|y[7]~31_combout\);

\p1|reg0|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[7]~32_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(7));

\p1|regA|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[7]~32_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regA|Q\(7));

\p1|regA|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[6]~41_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regA|Q\(6));

\p1|regA|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[5]~38_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regA|Q\(5));

\p1|regA|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[4]~35_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regA|Q\(4));

\p1|addsub0|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~21_sumout\ = SUM(( !\p1|mux0|y[4]~35_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|regA|Q\(4) ) + ( \p1|addsub0|Add0~26\ ))
-- \p1|addsub0|Add0~22\ = CARRY(( !\p1|mux0|y[4]~35_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|regA|Q\(4) ) + ( \p1|addsub0|Add0~26\ ))

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
	cin => \p1|addsub0|Add0~26\,
	sumout => \p1|addsub0|Add0~21_sumout\,
	cout => \p1|addsub0|Add0~22\);

\p1|addsub0|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~17_sumout\ = SUM(( !\p1|mux0|y[5]~38_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|regA|Q\(5) ) + ( \p1|addsub0|Add0~22\ ))
-- \p1|addsub0|Add0~18\ = CARRY(( !\p1|mux0|y[5]~38_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|regA|Q\(5) ) + ( \p1|addsub0|Add0~22\ ))

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
	cin => \p1|addsub0|Add0~22\,
	sumout => \p1|addsub0|Add0~17_sumout\,
	cout => \p1|addsub0|Add0~18\);

\p1|addsub0|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~13_sumout\ = SUM(( !\p1|mux0|y[6]~41_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|regA|Q\(6) ) + ( \p1|addsub0|Add0~18\ ))
-- \p1|addsub0|Add0~14\ = CARRY(( !\p1|mux0|y[6]~41_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|regA|Q\(6) ) + ( \p1|addsub0|Add0~18\ ))

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
	cin => \p1|addsub0|Add0~18\,
	sumout => \p1|addsub0|Add0~13_sumout\,
	cout => \p1|addsub0|Add0~14\);

\p1|addsub0|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~9_sumout\ = SUM(( !\p1|mux0|y[7]~32_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|regA|Q\(7) ) + ( \p1|addsub0|Add0~14\ ))
-- \p1|addsub0|Add0~10\ = CARRY(( !\p1|mux0|y[7]~32_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|regA|Q\(7) ) + ( \p1|addsub0|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T2~q\,
	datac => \p1|mux0|ALT_INV_y[7]~32_combout\,
	datad => \p1|fsm|ALT_INV_Mux28~0_combout\,
	dataf => \p1|regA|ALT_INV_Q\(7),
	cin => \p1|addsub0|Add0~14\,
	sumout => \p1|addsub0|Add0~9_sumout\,
	cout => \p1|addsub0|Add0~10\);

\p1|regG|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|addsub0|Add0~9_sumout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regG|Q\(7));

\p1|mux0|y[7]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[7]~32_combout\ = ( \p1|mux0|y[1]~42_combout\ & ( \p1|mux0|y[1]~16_combout\ & ( \p1|reg0|Q\(7) ) ) ) # ( !\p1|mux0|y[1]~42_combout\ & ( \p1|mux0|y[1]~16_combout\ & ( \p1|mux0|y[7]~31_combout\ ) ) ) # ( \p1|mux0|y[1]~42_combout\ & ( 
-- !\p1|mux0|y[1]~16_combout\ & ( \p1|regG|Q\(7) ) ) ) # ( !\p1|mux0|y[1]~42_combout\ & ( !\p1|mux0|y[1]~16_combout\ & ( \m0|altsyncram_component|auto_generated|q_a\(7) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[7]~31_combout\,
	datab => \p1|reg0|ALT_INV_Q\(7),
	datac => \m0|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	datad => \p1|regG|ALT_INV_Q\(7),
	datae => \p1|mux0|ALT_INV_y[1]~42_combout\,
	dataf => \p1|mux0|ALT_INV_y[1]~16_combout\,
	combout => \p1|mux0|y[7]~32_combout\);

\p1|regDout|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[7]~32_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|DoutIn~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regDout|Q\(7));

\m0|altsyncram_component|auto_generated|ram_block1a7\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000008",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 128,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 7,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \wr_en~combout\,
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\);

\p1|ir0|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \m0|altsyncram_component|auto_generated|q_a\(7),
	clrn => \key0~input_o\,
	ena => \p1|fsm|y_Q.TXX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(7));

\p1|fsm|y_D.T2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|y_D.T2~0_combout\ = ( !\p1|fsm|y_Q.T3~q\ & ( (\p1|fsm|y_Q.T1~q\ & ((!\p1|ir0|Q\(8) $ (!\p1|ir0|Q\(7))) # (\p1|ir0|Q\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001111011000000000000000000000000011110110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(8),
	datab => \p1|ir0|ALT_INV_Q\(6),
	datac => \p1|ir0|ALT_INV_Q\(7),
	datad => \p1|fsm|ALT_INV_y_Q.T1~q\,
	datae => \p1|fsm|ALT_INV_y_Q.T3~q\,
	combout => \p1|fsm|y_D.T2~0_combout\);

\p1|fsm|y_Q.T2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|fsm|y_D.T2~0_combout\,
	clrn => \key0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|fsm|y_Q.T2~q\);

\p1|regG|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|addsub0|Add0~1_sumout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regG|Q\(1));

\p1|regA|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[8]~29_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regA|Q\(8));

\p1|addsub0|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|addsub0|Add0~5_sumout\ = SUM(( !\p1|mux0|y[8]~29_combout\ $ (((!\p1|fsm|y_Q.T2~q\) # (!\p1|fsm|Mux28~0_combout\))) ) + ( \p1|regA|Q\(8) ) + ( \p1|addsub0|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_y_Q.T2~q\,
	datac => \p1|mux0|ALT_INV_y[8]~29_combout\,
	datad => \p1|fsm|ALT_INV_Mux28~0_combout\,
	dataf => \p1|regA|ALT_INV_Q\(8),
	cin => \p1|addsub0|Add0~10\,
	sumout => \p1|addsub0|Add0~5_sumout\);

\p1|regG|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|addsub0|Add0~5_sumout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regG|Q\(8));

\p1|regG|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|addsub0|Add0~13_sumout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regG|Q\(6));

\p1|regG|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|addsub0|Add0~17_sumout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regG|Q\(5));

\p1|regG|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|addsub0|Add0~21_sumout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regG|Q\(4));

\p1|fsm|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Equal0~0_combout\ = ( !\p1|regG|Q\(5) & ( !\p1|regG|Q\(4) & ( (!\p1|regG|Q\(1) & (!\p1|regG|Q\(8) & (!\p1|regG|Q\(7) & !\p1|regG|Q\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|regG|ALT_INV_Q\(1),
	datab => \p1|regG|ALT_INV_Q\(8),
	datac => \p1|regG|ALT_INV_Q\(7),
	datad => \p1|regG|ALT_INV_Q\(6),
	datae => \p1|regG|ALT_INV_Q\(5),
	dataf => \p1|regG|ALT_INV_Q\(4),
	combout => \p1|fsm|Equal0~0_combout\);

\p1|fsm|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Mux0~0_combout\ = ( \p1|ir0|Q\(7) & ( (\p1|ir0|Q\(8) & (!\p1|ir0|Q\(6) & ((!\p1|fsm|Equal0~0_combout\) # (!\p1|fsm|Equal0~1_combout\)))) ) ) # ( !\p1|ir0|Q\(7) & ( (!\p1|ir0|Q\(6)) # (\p1|ir0|Q\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101010001000100000011011101110111010100010001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(8),
	datab => \p1|ir0|ALT_INV_Q\(6),
	datac => \p1|fsm|ALT_INV_Equal0~0_combout\,
	datad => \p1|fsm|ALT_INV_Equal0~1_combout\,
	datae => \p1|ir0|ALT_INV_Q\(7),
	combout => \p1|fsm|Mux0~0_combout\);

\p1|fsm|Selector5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector5~2_combout\ = ( \p1|fsm|Selector5~1_combout\ & ( (!\p1|fsm|Mux0~0_combout\ & (\p1|decX|Mux0~0_combout\)) # (\p1|fsm|Mux0~0_combout\ & (((\p1|fsm|Selector5~0_combout\ & !\p1|ir0|Q\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001110100010000000000000000000100011101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|decX|ALT_INV_Mux0~0_combout\,
	datab => \p1|fsm|ALT_INV_Mux0~0_combout\,
	datac => \p1|fsm|ALT_INV_Selector5~0_combout\,
	datad => \p1|ir0|ALT_INV_Q\(0),
	datae => \p1|fsm|ALT_INV_Selector5~1_combout\,
	combout => \p1|fsm|Selector5~2_combout\);

\p1|mux0|y[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[1]~0_combout\ = ( \p1|fsm|Selector7~1_combout\ & ( \p1|fsm|Selector7~3_combout\ & ( (!\p1|fsm|Selector5~2_combout\ & !\p1|fsm|Selector5~4_combout\) ) ) ) # ( !\p1|fsm|Selector7~1_combout\ & ( \p1|fsm|Selector7~3_combout\ & ( 
-- (!\p1|fsm|Selector5~2_combout\ & !\p1|fsm|Selector5~4_combout\) ) ) ) # ( \p1|fsm|Selector7~1_combout\ & ( !\p1|fsm|Selector7~3_combout\ & ( (!\p1|fsm|Selector5~2_combout\ & !\p1|fsm|Selector5~4_combout\) ) ) ) # ( !\p1|fsm|Selector7~1_combout\ & ( 
-- !\p1|fsm|Selector7~3_combout\ & ( (!\p1|fsm|Selector5~2_combout\ & (!\p1|fsm|Selector5~4_combout\ & ((\p1|fsm|Selector6~2_combout\) # (\p1|fsm|Selector6~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|fsm|ALT_INV_Selector5~2_combout\,
	datab => \p1|fsm|ALT_INV_Selector5~4_combout\,
	datac => \p1|fsm|ALT_INV_Selector6~0_combout\,
	datad => \p1|fsm|ALT_INV_Selector6~2_combout\,
	datae => \p1|fsm|ALT_INV_Selector7~1_combout\,
	dataf => \p1|fsm|ALT_INV_Selector7~3_combout\,
	combout => \p1|mux0|y[1]~0_combout\);

\p1|mux0|y[5]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[5]~36_combout\ = ( \p1|mux0|y[1]~0_combout\ & ( \p1|mux0|y[1]~1_combout\ & ( \p1|reg6|Q\(5) ) ) ) # ( !\p1|mux0|y[1]~0_combout\ & ( \p1|mux0|y[1]~1_combout\ & ( \p1|pc0|v\(5) ) ) ) # ( \p1|mux0|y[1]~0_combout\ & ( !\p1|mux0|y[1]~1_combout\ & ( 
-- \p1|reg5|Q\(5) ) ) ) # ( !\p1|mux0|y[1]~0_combout\ & ( !\p1|mux0|y[1]~1_combout\ & ( \p1|reg4|Q\(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|pc0|ALT_INV_v\(5),
	datab => \p1|reg6|ALT_INV_Q\(5),
	datac => \p1|reg4|ALT_INV_Q\(5),
	datad => \p1|reg5|ALT_INV_Q\(5),
	datae => \p1|mux0|ALT_INV_y[1]~0_combout\,
	dataf => \p1|mux0|ALT_INV_y[1]~1_combout\,
	combout => \p1|mux0|y[5]~36_combout\);

\p1|reg3|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[5]~38_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(5));

\p1|reg1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[5]~38_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(5));

\p1|reg2|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[5]~38_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q\(5));

\p1|mux0|y[5]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[5]~37_combout\ = ( \p1|mux0|y[1]~3_combout\ & ( \p1|mux0|y[1]~4_combout\ & ( \p1|reg3|Q\(5) ) ) ) # ( !\p1|mux0|y[1]~3_combout\ & ( \p1|mux0|y[1]~4_combout\ & ( \p1|mux0|y[5]~36_combout\ ) ) ) # ( \p1|mux0|y[1]~3_combout\ & ( 
-- !\p1|mux0|y[1]~4_combout\ & ( \p1|reg2|Q\(5) ) ) ) # ( !\p1|mux0|y[1]~3_combout\ & ( !\p1|mux0|y[1]~4_combout\ & ( \p1|reg1|Q\(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[5]~36_combout\,
	datab => \p1|reg3|ALT_INV_Q\(5),
	datac => \p1|reg1|ALT_INV_Q\(5),
	datad => \p1|reg2|ALT_INV_Q\(5),
	datae => \p1|mux0|ALT_INV_y[1]~3_combout\,
	dataf => \p1|mux0|ALT_INV_y[1]~4_combout\,
	combout => \p1|mux0|y[5]~37_combout\);

\p1|reg0|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[5]~38_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(5));

\p1|mux0|y[5]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[5]~38_combout\ = ( \p1|mux0|y[1]~42_combout\ & ( \p1|mux0|y[1]~16_combout\ & ( \p1|reg0|Q\(5) ) ) ) # ( !\p1|mux0|y[1]~42_combout\ & ( \p1|mux0|y[1]~16_combout\ & ( \p1|mux0|y[5]~37_combout\ ) ) ) # ( \p1|mux0|y[1]~42_combout\ & ( 
-- !\p1|mux0|y[1]~16_combout\ & ( \p1|regG|Q\(5) ) ) ) # ( !\p1|mux0|y[1]~42_combout\ & ( !\p1|mux0|y[1]~16_combout\ & ( \m0|altsyncram_component|auto_generated|q_a\(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[5]~37_combout\,
	datab => \p1|reg0|ALT_INV_Q\(5),
	datac => \m0|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datad => \p1|regG|ALT_INV_Q\(5),
	datae => \p1|mux0|ALT_INV_y[1]~42_combout\,
	dataf => \p1|mux0|ALT_INV_y[1]~16_combout\,
	combout => \p1|mux0|y[5]~38_combout\);

\p1|regDout|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[5]~38_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|DoutIn~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regDout|Q\(5));

\m0|altsyncram_component|auto_generated|ram_block1a5\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000004",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 128,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 7,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \wr_en~combout\,
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

\p1|ir0|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \m0|altsyncram_component|auto_generated|q_a\(5),
	clrn => \key0~input_o\,
	ena => \p1|fsm|y_Q.TXX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(5));

\p1|decX|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|decX|Mux0~1_combout\ = (\p1|ir0|Q\(3) & (\p1|ir0|Q\(5) & !\p1|ir0|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(3),
	datab => \p1|ir0|ALT_INV_Q\(5),
	datac => \p1|ir0|ALT_INV_Q\(4),
	combout => \p1|decX|Mux0~1_combout\);

\p1|fsm|Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector16~0_combout\ = ( \p1|pc0|v[3]~0_combout\ & ( (\p1|decX|Mux0~1_combout\ & ((!\p1|ir0|Q\(8)) # ((\p1|fsm|Mux15~0_combout\) # (\p1|mux0|y[1]~15_combout\)))) ) ) # ( !\p1|pc0|v[3]~0_combout\ & ( (\p1|decX|Mux0~1_combout\ & 
-- \p1|mux0|y[1]~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011001000110011001100000011000000110010001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(8),
	datab => \p1|decX|ALT_INV_Mux0~1_combout\,
	datac => \p1|mux0|ALT_INV_y[1]~15_combout\,
	datad => \p1|fsm|ALT_INV_Mux15~0_combout\,
	datae => \p1|pc0|ALT_INV_v[3]~0_combout\,
	combout => \p1|fsm|Selector16~0_combout\);

\p1|reg5|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[6]~41_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(6));

\p1|mux0|y[6]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[6]~39_combout\ = ( \p1|mux0|y[1]~0_combout\ & ( \p1|mux0|y[1]~1_combout\ & ( \p1|reg6|Q\(6) ) ) ) # ( !\p1|mux0|y[1]~0_combout\ & ( \p1|mux0|y[1]~1_combout\ & ( \p1|pc0|v\(6) ) ) ) # ( \p1|mux0|y[1]~0_combout\ & ( !\p1|mux0|y[1]~1_combout\ & ( 
-- \p1|reg5|Q\(6) ) ) ) # ( !\p1|mux0|y[1]~0_combout\ & ( !\p1|mux0|y[1]~1_combout\ & ( \p1|reg4|Q\(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|pc0|ALT_INV_v\(6),
	datab => \p1|reg6|ALT_INV_Q\(6),
	datac => \p1|reg4|ALT_INV_Q\(6),
	datad => \p1|reg5|ALT_INV_Q\(6),
	datae => \p1|mux0|ALT_INV_y[1]~0_combout\,
	dataf => \p1|mux0|ALT_INV_y[1]~1_combout\,
	combout => \p1|mux0|y[6]~39_combout\);

\p1|reg3|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[6]~41_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(6));

\p1|reg1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[6]~41_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(6));

\p1|reg2|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[6]~41_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q\(6));

\p1|mux0|y[6]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[6]~40_combout\ = ( \p1|mux0|y[1]~3_combout\ & ( \p1|mux0|y[1]~4_combout\ & ( \p1|reg3|Q\(6) ) ) ) # ( !\p1|mux0|y[1]~3_combout\ & ( \p1|mux0|y[1]~4_combout\ & ( \p1|mux0|y[6]~39_combout\ ) ) ) # ( \p1|mux0|y[1]~3_combout\ & ( 
-- !\p1|mux0|y[1]~4_combout\ & ( \p1|reg2|Q\(6) ) ) ) # ( !\p1|mux0|y[1]~3_combout\ & ( !\p1|mux0|y[1]~4_combout\ & ( \p1|reg1|Q\(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[6]~39_combout\,
	datab => \p1|reg3|ALT_INV_Q\(6),
	datac => \p1|reg1|ALT_INV_Q\(6),
	datad => \p1|reg2|ALT_INV_Q\(6),
	datae => \p1|mux0|ALT_INV_y[1]~3_combout\,
	dataf => \p1|mux0|ALT_INV_y[1]~4_combout\,
	combout => \p1|mux0|y[6]~40_combout\);

\p1|reg0|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[6]~41_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(6));

\p1|mux0|y[6]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[6]~41_combout\ = ( \p1|mux0|y[1]~42_combout\ & ( \p1|mux0|y[1]~16_combout\ & ( \p1|reg0|Q\(6) ) ) ) # ( !\p1|mux0|y[1]~42_combout\ & ( \p1|mux0|y[1]~16_combout\ & ( \p1|mux0|y[6]~40_combout\ ) ) ) # ( \p1|mux0|y[1]~42_combout\ & ( 
-- !\p1|mux0|y[1]~16_combout\ & ( \p1|regG|Q\(6) ) ) ) # ( !\p1|mux0|y[1]~42_combout\ & ( !\p1|mux0|y[1]~16_combout\ & ( \m0|altsyncram_component|auto_generated|q_a\(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[6]~40_combout\,
	datab => \p1|reg0|ALT_INV_Q\(6),
	datac => \m0|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	datad => \p1|regG|ALT_INV_Q\(6),
	datae => \p1|mux0|ALT_INV_y[1]~42_combout\,
	dataf => \p1|mux0|ALT_INV_y[1]~16_combout\,
	combout => \p1|mux0|y[6]~41_combout\);

\p1|regDout|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[6]~41_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|DoutIn~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regDout|Q\(6));

\m0|altsyncram_component|auto_generated|ram_block1a6\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000000000000000000000000000001D",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 128,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 7,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \wr_en~combout\,
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

\p1|ir0|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \m0|altsyncram_component|auto_generated|q_a\(6),
	clrn => \key0~input_o\,
	ena => \p1|fsm|y_Q.TXX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(6));

\p1|fsm|Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector9~0_combout\ = ( \p1|fsm|y_Q.T0~q\ & ( (!\p1|ir0|Q\(7) & (\p1|fsm|y_Q.T1~q\ & ((\p1|ir0|Q\(6)) # (\p1|ir0|Q\(8))))) ) ) # ( !\p1|fsm|y_Q.T0~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000111000011111111111111110000000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(8),
	datab => \p1|ir0|ALT_INV_Q\(6),
	datac => \p1|ir0|ALT_INV_Q\(7),
	datad => \p1|fsm|ALT_INV_y_Q.T1~q\,
	datae => \p1|fsm|ALT_INV_y_Q.T0~q\,
	combout => \p1|fsm|Selector9~0_combout\);

\p1|regAddr|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[0]~26_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regAddr|Q\(0));

\m0|altsyncram_component|auto_generated|ram_block1a3\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000004",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 128,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 7,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \wr_en~combout\,
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

\p1|ir0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \m0|altsyncram_component|auto_generated|q_a\(3),
	clrn => \key0~input_o\,
	ena => \p1|fsm|y_Q.TXX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(3));

\p1|decX|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|decX|Mux0~0_combout\ = (!\p1|ir0|Q\(3) & (\p1|ir0|Q\(5) & !\p1|ir0|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(3),
	datab => \p1|ir0|ALT_INV_Q\(5),
	datac => \p1|ir0|ALT_INV_Q\(4),
	combout => \p1|decX|Mux0~0_combout\);

\p1|fsm|Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector15~0_combout\ = ( \p1|pc0|v[3]~0_combout\ & ( (\p1|decX|Mux0~0_combout\ & ((!\p1|ir0|Q\(8)) # ((\p1|fsm|Mux15~0_combout\) # (\p1|mux0|y[1]~15_combout\)))) ) ) # ( !\p1|pc0|v[3]~0_combout\ & ( (\p1|decX|Mux0~0_combout\ & 
-- \p1|mux0|y[1]~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101010001010101010100000101000001010100010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|decX|ALT_INV_Mux0~0_combout\,
	datab => \p1|ir0|ALT_INV_Q\(8),
	datac => \p1|mux0|ALT_INV_y[1]~15_combout\,
	datad => \p1|fsm|ALT_INV_Mux15~0_combout\,
	datae => \p1|pc0|ALT_INV_v[3]~0_combout\,
	combout => \p1|fsm|Selector15~0_combout\);

\p1|reg4|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[4]~35_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg4|Q\(4));

\p1|reg5|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[4]~35_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(4));

\p1|mux0|y[4]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[4]~33_combout\ = ( \p1|mux0|y[1]~0_combout\ & ( \p1|mux0|y[1]~1_combout\ & ( \p1|reg6|Q\(4) ) ) ) # ( !\p1|mux0|y[1]~0_combout\ & ( \p1|mux0|y[1]~1_combout\ & ( \p1|pc0|v\(4) ) ) ) # ( \p1|mux0|y[1]~0_combout\ & ( !\p1|mux0|y[1]~1_combout\ & ( 
-- \p1|reg5|Q\(4) ) ) ) # ( !\p1|mux0|y[1]~0_combout\ & ( !\p1|mux0|y[1]~1_combout\ & ( \p1|reg4|Q\(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|pc0|ALT_INV_v\(4),
	datab => \p1|reg6|ALT_INV_Q\(4),
	datac => \p1|reg4|ALT_INV_Q\(4),
	datad => \p1|reg5|ALT_INV_Q\(4),
	datae => \p1|mux0|ALT_INV_y[1]~0_combout\,
	dataf => \p1|mux0|ALT_INV_y[1]~1_combout\,
	combout => \p1|mux0|y[4]~33_combout\);

\p1|reg3|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[4]~35_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(4));

\p1|reg1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[4]~35_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(4));

\p1|reg2|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[4]~35_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q\(4));

\p1|mux0|y[4]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[4]~34_combout\ = ( \p1|mux0|y[1]~3_combout\ & ( \p1|mux0|y[1]~4_combout\ & ( \p1|reg3|Q\(4) ) ) ) # ( !\p1|mux0|y[1]~3_combout\ & ( \p1|mux0|y[1]~4_combout\ & ( \p1|mux0|y[4]~33_combout\ ) ) ) # ( \p1|mux0|y[1]~3_combout\ & ( 
-- !\p1|mux0|y[1]~4_combout\ & ( \p1|reg2|Q\(4) ) ) ) # ( !\p1|mux0|y[1]~3_combout\ & ( !\p1|mux0|y[1]~4_combout\ & ( \p1|reg1|Q\(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[4]~33_combout\,
	datab => \p1|reg3|ALT_INV_Q\(4),
	datac => \p1|reg1|ALT_INV_Q\(4),
	datad => \p1|reg2|ALT_INV_Q\(4),
	datae => \p1|mux0|ALT_INV_y[1]~3_combout\,
	dataf => \p1|mux0|ALT_INV_y[1]~4_combout\,
	combout => \p1|mux0|y[4]~34_combout\);

\p1|reg0|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[4]~35_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(4));

\p1|mux0|y[4]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[4]~35_combout\ = ( \p1|mux0|y[1]~42_combout\ & ( \p1|mux0|y[1]~16_combout\ & ( \p1|reg0|Q\(4) ) ) ) # ( !\p1|mux0|y[1]~42_combout\ & ( \p1|mux0|y[1]~16_combout\ & ( \p1|mux0|y[4]~34_combout\ ) ) ) # ( \p1|mux0|y[1]~42_combout\ & ( 
-- !\p1|mux0|y[1]~16_combout\ & ( \p1|regG|Q\(4) ) ) ) # ( !\p1|mux0|y[1]~42_combout\ & ( !\p1|mux0|y[1]~16_combout\ & ( \m0|altsyncram_component|auto_generated|q_a\(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[4]~34_combout\,
	datab => \p1|reg0|ALT_INV_Q\(4),
	datac => \m0|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	datad => \p1|regG|ALT_INV_Q\(4),
	datae => \p1|mux0|ALT_INV_y[1]~42_combout\,
	dataf => \p1|mux0|ALT_INV_y[1]~16_combout\,
	combout => \p1|mux0|y[4]~35_combout\);

\p1|fsm|Selector10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector10~1_combout\ = ( !\p1|fsm|Selector10~0_combout\ & ( ((!\p1|ir0|Q\(6)) # ((!\p1|fsm|y_Q.T1~q\) # (\p1|ir0|Q\(7)))) # (\p1|ir0|Q\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111011111000000000000000011111111110111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(8),
	datab => \p1|ir0|ALT_INV_Q\(6),
	datac => \p1|ir0|ALT_INV_Q\(7),
	datad => \p1|fsm|ALT_INV_y_Q.T1~q\,
	datae => \p1|fsm|ALT_INV_Selector10~0_combout\,
	combout => \p1|fsm|Selector10~1_combout\);

\p1|pc0|v[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|pc0|v[3]~1_combout\ = ( \p1|fsm|Mux15~0_combout\ & ( \p1|pc0|v[3]~0_combout\ & ( (!\p1|fsm|Selector10~1_combout\) # (\p1|decX|Mux0~7_combout\) ) ) ) # ( !\p1|fsm|Mux15~0_combout\ & ( \p1|pc0|v[3]~0_combout\ & ( (!\p1|fsm|Selector10~1_combout\) # 
-- ((\p1|decX|Mux0~7_combout\ & ((!\p1|ir0|Q\(8)) # (\p1|mux0|y[1]~15_combout\)))) ) ) ) # ( \p1|fsm|Mux15~0_combout\ & ( !\p1|pc0|v[3]~0_combout\ & ( (!\p1|fsm|Selector10~1_combout\) # ((\p1|decX|Mux0~7_combout\ & \p1|mux0|y[1]~15_combout\)) ) ) ) # ( 
-- !\p1|fsm|Mux15~0_combout\ & ( !\p1|pc0|v[3]~0_combout\ & ( (!\p1|fsm|Selector10~1_combout\) # ((\p1|decX|Mux0~7_combout\ & \p1|mux0|y[1]~15_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110011111100001111001111110010111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(8),
	datab => \p1|decX|ALT_INV_Mux0~7_combout\,
	datac => \p1|fsm|ALT_INV_Selector10~1_combout\,
	datad => \p1|mux0|ALT_INV_y[1]~15_combout\,
	datae => \p1|fsm|ALT_INV_Mux15~0_combout\,
	dataf => \p1|pc0|ALT_INV_v[3]~0_combout\,
	combout => \p1|pc0|v[3]~1_combout\);

\p1|pc0|v[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|pc0|Add0~25_sumout\,
	asdata => \p1|mux0|y[4]~35_combout\,
	clrn => \key0~input_o\,
	sload => \p1|fsm|Selector10~1_combout\,
	ena => \p1|pc0|v[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|pc0|v\(4));

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

\p1|pc0|v[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|pc0|Add0~29_sumout\,
	asdata => \p1|mux0|y[5]~38_combout\,
	clrn => \key0~input_o\,
	sload => \p1|fsm|Selector10~1_combout\,
	ena => \p1|pc0|v[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|pc0|v\(5));

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

\p1|pc0|v[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|pc0|Add0~33_sumout\,
	asdata => \p1|mux0|y[6]~41_combout\,
	clrn => \key0~input_o\,
	sload => \p1|fsm|Selector10~1_combout\,
	ena => \p1|pc0|v[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|pc0|v\(6));

\p1|pc0|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|pc0|Add0~21_sumout\ = SUM(( \p1|pc0|v\(7) ) + ( GND ) + ( \p1|pc0|Add0~34\ ))
-- \p1|pc0|Add0~22\ = CARRY(( \p1|pc0|v\(7) ) + ( GND ) + ( \p1|pc0|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \p1|pc0|ALT_INV_v\(7),
	cin => \p1|pc0|Add0~34\,
	sumout => \p1|pc0|Add0~21_sumout\,
	cout => \p1|pc0|Add0~22\);

\p1|pc0|v[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|pc0|Add0~21_sumout\,
	asdata => \p1|mux0|y[7]~32_combout\,
	clrn => \key0~input_o\,
	sload => \p1|fsm|Selector10~1_combout\,
	ena => \p1|pc0|v[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|pc0|v\(7));

\p1|pc0|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|pc0|Add0~17_sumout\ = SUM(( \p1|pc0|v\(8) ) + ( GND ) + ( \p1|pc0|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \p1|pc0|ALT_INV_v\(8),
	cin => \p1|pc0|Add0~22\,
	sumout => \p1|pc0|Add0~17_sumout\);

\p1|pc0|v[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|pc0|Add0~17_sumout\,
	asdata => \p1|mux0|y[8]~29_combout\,
	clrn => \key0~input_o\,
	sload => \p1|fsm|Selector10~1_combout\,
	ena => \p1|pc0|v[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|pc0|v\(8));

\p1|reg6|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[8]~29_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(8));

\p1|reg4|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[8]~29_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg4|Q\(8));

\p1|reg5|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[8]~29_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(8));

\p1|mux0|y[8]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[8]~27_combout\ = ( \p1|mux0|y[1]~0_combout\ & ( \p1|mux0|y[1]~1_combout\ & ( \p1|reg6|Q\(8) ) ) ) # ( !\p1|mux0|y[1]~0_combout\ & ( \p1|mux0|y[1]~1_combout\ & ( \p1|pc0|v\(8) ) ) ) # ( \p1|mux0|y[1]~0_combout\ & ( !\p1|mux0|y[1]~1_combout\ & ( 
-- \p1|reg5|Q\(8) ) ) ) # ( !\p1|mux0|y[1]~0_combout\ & ( !\p1|mux0|y[1]~1_combout\ & ( \p1|reg4|Q\(8) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|pc0|ALT_INV_v\(8),
	datab => \p1|reg6|ALT_INV_Q\(8),
	datac => \p1|reg4|ALT_INV_Q\(8),
	datad => \p1|reg5|ALT_INV_Q\(8),
	datae => \p1|mux0|ALT_INV_y[1]~0_combout\,
	dataf => \p1|mux0|ALT_INV_y[1]~1_combout\,
	combout => \p1|mux0|y[8]~27_combout\);

\p1|reg3|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[8]~29_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(8));

\p1|reg1|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[8]~29_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(8));

\p1|reg2|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[8]~29_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q\(8));

\p1|mux0|y[8]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[8]~28_combout\ = ( \p1|mux0|y[1]~3_combout\ & ( \p1|mux0|y[1]~4_combout\ & ( \p1|reg3|Q\(8) ) ) ) # ( !\p1|mux0|y[1]~3_combout\ & ( \p1|mux0|y[1]~4_combout\ & ( \p1|mux0|y[8]~27_combout\ ) ) ) # ( \p1|mux0|y[1]~3_combout\ & ( 
-- !\p1|mux0|y[1]~4_combout\ & ( \p1|reg2|Q\(8) ) ) ) # ( !\p1|mux0|y[1]~3_combout\ & ( !\p1|mux0|y[1]~4_combout\ & ( \p1|reg1|Q\(8) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[8]~27_combout\,
	datab => \p1|reg3|ALT_INV_Q\(8),
	datac => \p1|reg1|ALT_INV_Q\(8),
	datad => \p1|reg2|ALT_INV_Q\(8),
	datae => \p1|mux0|ALT_INV_y[1]~3_combout\,
	dataf => \p1|mux0|ALT_INV_y[1]~4_combout\,
	combout => \p1|mux0|y[8]~28_combout\);

\p1|reg0|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[8]~29_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(8));

\p1|mux0|y[8]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[8]~29_combout\ = ( \p1|mux0|y[1]~42_combout\ & ( \p1|mux0|y[1]~16_combout\ & ( \p1|reg0|Q\(8) ) ) ) # ( !\p1|mux0|y[1]~42_combout\ & ( \p1|mux0|y[1]~16_combout\ & ( \p1|mux0|y[8]~28_combout\ ) ) ) # ( \p1|mux0|y[1]~42_combout\ & ( 
-- !\p1|mux0|y[1]~16_combout\ & ( \p1|regG|Q\(8) ) ) ) # ( !\p1|mux0|y[1]~42_combout\ & ( !\p1|mux0|y[1]~16_combout\ & ( \m0|altsyncram_component|auto_generated|q_a\(8) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[8]~28_combout\,
	datab => \p1|reg0|ALT_INV_Q\(8),
	datac => \m0|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datad => \p1|regG|ALT_INV_Q\(8),
	datae => \p1|mux0|ALT_INV_y[1]~42_combout\,
	dataf => \p1|mux0|ALT_INV_y[1]~16_combout\,
	combout => \p1|mux0|y[8]~29_combout\);

\p1|regAddr|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[8]~29_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regAddr|Q\(8));

\p1|regAddr|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[7]~32_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regAddr|Q\(7));

\p1|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|fsm|DoutIn~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ff0|Q~q\);

wr_en : cyclonev_lcell_comb
-- Equation(s):
-- \wr_en~combout\ = (!\p1|regAddr|Q\(8) & (!\p1|regAddr|Q\(7) & \p1|ff0|Q~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|regAddr|ALT_INV_Q\(8),
	datab => \p1|regAddr|ALT_INV_Q\(7),
	datac => \p1|ff0|ALT_INV_Q~q\,
	combout => \wr_en~combout\);

\p1|regDout|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[8]~29_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|DoutIn~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regDout|Q\(8));

\m0|altsyncram_component|auto_generated|ram_block1a8\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000018",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 128,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 7,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \wr_en~combout\,
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \m0|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \m0|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m0|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

\p1|ir0|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \m0|altsyncram_component|auto_generated|q_a\(8),
	clrn => \key0~input_o\,
	ena => \p1|fsm|y_Q.TXX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|ir0|Q\(8));

\p1|fsm|Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|fsm|Selector17~0_combout\ = ( \p1|pc0|v[3]~0_combout\ & ( (\p1|decX|Mux0~2_combout\ & ((!\p1|ir0|Q\(8)) # ((\p1|fsm|Mux15~0_combout\) # (\p1|mux0|y[1]~15_combout\)))) ) ) # ( !\p1|pc0|v[3]~0_combout\ & ( (\p1|decX|Mux0~2_combout\ & 
-- \p1|mux0|y[1]~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011001000110011001100000011000000110010001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|ir0|ALT_INV_Q\(8),
	datab => \p1|decX|ALT_INV_Mux0~2_combout\,
	datac => \p1|mux0|ALT_INV_y[1]~15_combout\,
	datad => \p1|fsm|ALT_INV_Mux15~0_combout\,
	datae => \p1|pc0|ALT_INV_v[3]~0_combout\,
	combout => \p1|fsm|Selector17~0_combout\);

\p1|reg6|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[0]~26_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(0));

\p1|reg4|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[0]~26_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg4|Q\(0));

\p1|reg5|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[0]~26_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(0));

\p1|mux0|y[0]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[0]~24_combout\ = ( \p1|mux0|y[1]~0_combout\ & ( \p1|mux0|y[1]~1_combout\ & ( \p1|reg6|Q\(0) ) ) ) # ( !\p1|mux0|y[1]~0_combout\ & ( \p1|mux0|y[1]~1_combout\ & ( \p1|pc0|v\(0) ) ) ) # ( \p1|mux0|y[1]~0_combout\ & ( !\p1|mux0|y[1]~1_combout\ & ( 
-- \p1|reg5|Q\(0) ) ) ) # ( !\p1|mux0|y[1]~0_combout\ & ( !\p1|mux0|y[1]~1_combout\ & ( \p1|reg4|Q\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|pc0|ALT_INV_v\(0),
	datab => \p1|reg6|ALT_INV_Q\(0),
	datac => \p1|reg4|ALT_INV_Q\(0),
	datad => \p1|reg5|ALT_INV_Q\(0),
	datae => \p1|mux0|ALT_INV_y[1]~0_combout\,
	dataf => \p1|mux0|ALT_INV_y[1]~1_combout\,
	combout => \p1|mux0|y[0]~24_combout\);

\p1|reg3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[0]~26_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(0));

\p1|reg1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[0]~26_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(0));

\p1|reg2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[0]~26_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q\(0));

\p1|mux0|y[0]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[0]~25_combout\ = ( \p1|mux0|y[1]~3_combout\ & ( \p1|mux0|y[1]~4_combout\ & ( \p1|reg3|Q\(0) ) ) ) # ( !\p1|mux0|y[1]~3_combout\ & ( \p1|mux0|y[1]~4_combout\ & ( \p1|mux0|y[0]~24_combout\ ) ) ) # ( \p1|mux0|y[1]~3_combout\ & ( 
-- !\p1|mux0|y[1]~4_combout\ & ( \p1|reg2|Q\(0) ) ) ) # ( !\p1|mux0|y[1]~3_combout\ & ( !\p1|mux0|y[1]~4_combout\ & ( \p1|reg1|Q\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[0]~24_combout\,
	datab => \p1|reg3|ALT_INV_Q\(0),
	datac => \p1|reg1|ALT_INV_Q\(0),
	datad => \p1|reg2|ALT_INV_Q\(0),
	datae => \p1|mux0|ALT_INV_y[1]~3_combout\,
	dataf => \p1|mux0|ALT_INV_y[1]~4_combout\,
	combout => \p1|mux0|y[0]~25_combout\);

\p1|reg0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[0]~26_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(0));

\p1|mux0|y[0]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[0]~26_combout\ = ( \p1|mux0|y[1]~42_combout\ & ( \p1|mux0|y[1]~16_combout\ & ( \p1|reg0|Q\(0) ) ) ) # ( !\p1|mux0|y[1]~42_combout\ & ( \p1|mux0|y[1]~16_combout\ & ( \p1|mux0|y[0]~25_combout\ ) ) ) # ( \p1|mux0|y[1]~42_combout\ & ( 
-- !\p1|mux0|y[1]~16_combout\ & ( \p1|regG|Q\(0) ) ) ) # ( !\p1|mux0|y[1]~42_combout\ & ( !\p1|mux0|y[1]~16_combout\ & ( \m0|altsyncram_component|auto_generated|q_a\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[0]~25_combout\,
	datab => \p1|reg0|ALT_INV_Q\(0),
	datac => \m0|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datad => \p1|regG|ALT_INV_Q\(0),
	datae => \p1|mux0|ALT_INV_y[1]~42_combout\,
	dataf => \p1|mux0|ALT_INV_y[1]~16_combout\,
	combout => \p1|mux0|y[0]~26_combout\);

\p1|pc0|v[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|pc0|Add0~13_sumout\,
	asdata => \p1|mux0|y[0]~26_combout\,
	clrn => \key0~input_o\,
	sload => \p1|fsm|Selector10~1_combout\,
	ena => \p1|pc0|v[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|pc0|v\(0));

\p1|pc0|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|pc0|Add0~9_sumout\ = SUM(( \p1|pc0|v\(1) ) + ( GND ) + ( \p1|pc0|Add0~14\ ))
-- \p1|pc0|Add0~10\ = CARRY(( \p1|pc0|v\(1) ) + ( GND ) + ( \p1|pc0|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \p1|pc0|ALT_INV_v\(1),
	cin => \p1|pc0|Add0~14\,
	sumout => \p1|pc0|Add0~9_sumout\,
	cout => \p1|pc0|Add0~10\);

\p1|pc0|v[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|pc0|Add0~9_sumout\,
	asdata => \p1|mux0|y[1]~23_combout\,
	clrn => \key0~input_o\,
	sload => \p1|fsm|Selector10~1_combout\,
	ena => \p1|pc0|v[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|pc0|v\(1));

\p1|pc0|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|pc0|Add0~5_sumout\ = SUM(( \p1|pc0|v\(2) ) + ( GND ) + ( \p1|pc0|Add0~10\ ))
-- \p1|pc0|Add0~6\ = CARRY(( \p1|pc0|v\(2) ) + ( GND ) + ( \p1|pc0|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \p1|pc0|ALT_INV_v\(2),
	cin => \p1|pc0|Add0~10\,
	sumout => \p1|pc0|Add0~5_sumout\,
	cout => \p1|pc0|Add0~6\);

\p1|pc0|v[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|pc0|Add0~5_sumout\,
	asdata => \p1|mux0|y[2]~20_combout\,
	clrn => \key0~input_o\,
	sload => \p1|fsm|Selector10~1_combout\,
	ena => \p1|pc0|v[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|pc0|v\(2));

\p1|pc0|v[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|pc0|Add0~1_sumout\,
	asdata => \p1|mux0|y[3]~17_combout\,
	clrn => \key0~input_o\,
	sload => \p1|fsm|Selector10~1_combout\,
	ena => \p1|pc0|v[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|pc0|v\(3));

\p1|reg6|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[3]~17_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg6|Q\(3));

\p1|reg4|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[3]~17_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg4|Q\(3));

\p1|reg5|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[3]~17_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg5|Q\(3));

\p1|mux0|y[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[3]~2_combout\ = ( \p1|mux0|y[1]~0_combout\ & ( \p1|mux0|y[1]~1_combout\ & ( \p1|reg6|Q\(3) ) ) ) # ( !\p1|mux0|y[1]~0_combout\ & ( \p1|mux0|y[1]~1_combout\ & ( \p1|pc0|v\(3) ) ) ) # ( \p1|mux0|y[1]~0_combout\ & ( !\p1|mux0|y[1]~1_combout\ & ( 
-- \p1|reg5|Q\(3) ) ) ) # ( !\p1|mux0|y[1]~0_combout\ & ( !\p1|mux0|y[1]~1_combout\ & ( \p1|reg4|Q\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|pc0|ALT_INV_v\(3),
	datab => \p1|reg6|ALT_INV_Q\(3),
	datac => \p1|reg4|ALT_INV_Q\(3),
	datad => \p1|reg5|ALT_INV_Q\(3),
	datae => \p1|mux0|ALT_INV_y[1]~0_combout\,
	dataf => \p1|mux0|ALT_INV_y[1]~1_combout\,
	combout => \p1|mux0|y[3]~2_combout\);

\p1|reg3|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[3]~17_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg3|Q\(3));

\p1|reg1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[3]~17_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg1|Q\(3));

\p1|reg2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[3]~17_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg2|Q\(3));

\p1|mux0|y[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[3]~5_combout\ = ( \p1|mux0|y[1]~3_combout\ & ( \p1|mux0|y[1]~4_combout\ & ( \p1|reg3|Q\(3) ) ) ) # ( !\p1|mux0|y[1]~3_combout\ & ( \p1|mux0|y[1]~4_combout\ & ( \p1|mux0|y[3]~2_combout\ ) ) ) # ( \p1|mux0|y[1]~3_combout\ & ( 
-- !\p1|mux0|y[1]~4_combout\ & ( \p1|reg2|Q\(3) ) ) ) # ( !\p1|mux0|y[1]~3_combout\ & ( !\p1|mux0|y[1]~4_combout\ & ( \p1|reg1|Q\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[3]~2_combout\,
	datab => \p1|reg3|ALT_INV_Q\(3),
	datac => \p1|reg1|ALT_INV_Q\(3),
	datad => \p1|reg2|ALT_INV_Q\(3),
	datae => \p1|mux0|ALT_INV_y[1]~3_combout\,
	dataf => \p1|mux0|ALT_INV_y[1]~4_combout\,
	combout => \p1|mux0|y[3]~5_combout\);

\p1|reg0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[3]~17_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|reg0|Q\(3));

\p1|mux0|y[3]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \p1|mux0|y[3]~17_combout\ = ( \p1|mux0|y[1]~42_combout\ & ( \p1|mux0|y[1]~16_combout\ & ( \p1|reg0|Q\(3) ) ) ) # ( !\p1|mux0|y[1]~42_combout\ & ( \p1|mux0|y[1]~16_combout\ & ( \p1|mux0|y[3]~5_combout\ ) ) ) # ( \p1|mux0|y[1]~42_combout\ & ( 
-- !\p1|mux0|y[1]~16_combout\ & ( \p1|regG|Q\(3) ) ) ) # ( !\p1|mux0|y[1]~42_combout\ & ( !\p1|mux0|y[1]~16_combout\ & ( \m0|altsyncram_component|auto_generated|q_a\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|mux0|ALT_INV_y[3]~5_combout\,
	datab => \p1|reg0|ALT_INV_Q\(3),
	datac => \m0|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datad => \p1|regG|ALT_INV_Q\(3),
	datae => \p1|mux0|ALT_INV_y[1]~42_combout\,
	dataf => \p1|mux0|ALT_INV_y[1]~16_combout\,
	combout => \p1|mux0|y[3]~17_combout\);

\p1|regDout|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|mux0|y[3]~17_combout\,
	clrn => \key0~input_o\,
	ena => \p1|fsm|DoutIn~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p1|regDout|Q\(3));

\u0|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|Mux6~0_combout\ = (\p1|regAddr|Q\(8) & (\p1|regAddr|Q\(7) & \p1|regAddr|Q\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|regAddr|ALT_INV_Q\(8),
	datab => \p1|regAddr|ALT_INV_Q\(7),
	datac => \p1|regAddr|ALT_INV_Q\(6),
	combout => \u0|Mux6~0_combout\);

\wr_en~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \wr_en~0_combout\ = (!\p1|regAddr|Q\(8) & !\p1|regAddr|Q\(7))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|regAddr|ALT_INV_Q\(8),
	datab => \p1|regAddr|ALT_INV_Q\(7),
	combout => \wr_en~0_combout\);

\u0|En[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|En\(5) = ( \u0|En\(5) & ( \wr_en~0_combout\ ) ) # ( \u0|En\(5) & ( !\wr_en~0_combout\ & ( \u0|Mux6~0_combout\ ) ) ) # ( !\u0|En\(5) & ( !\wr_en~0_combout\ & ( \u0|Mux6~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u0|ALT_INV_Mux6~0_combout\,
	datae => \u0|ALT_INV_En\(5),
	dataf => \ALT_INV_wr_en~0_combout\,
	combout => \u0|En\(5));

\u0|r5|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|regDout|Q\(3),
	clrn => \key0~input_o\,
	ena => \u0|En\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r5|Q\(3));

\u0|r5|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|regDout|Q\(2),
	clrn => \key0~input_o\,
	ena => \u0|En\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r5|Q\(2));

\u0|r5|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|regDout|Q\(1),
	clrn => \key0~input_o\,
	ena => \u0|En\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r5|Q\(1));

\u0|r5|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|regDout|Q\(0),
	clrn => \key0~input_o\,
	ena => \u0|En\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r5|Q\(0));

\u0|s5|hex[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s5|hex[6]~0_combout\ = (!\u0|r5|Q\(0) & (!\u0|r5|Q\(1) & (!\u0|r5|Q\(3) $ (\u0|r5|Q\(2))))) # (\u0|r5|Q\(0) & (!\u0|r5|Q\(3) & (!\u0|r5|Q\(2) $ (\u0|r5|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000010000010100100001000001010010000100000101001000010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r5|ALT_INV_Q\(3),
	datab => \u0|r5|ALT_INV_Q\(2),
	datac => \u0|r5|ALT_INV_Q\(1),
	datad => \u0|r5|ALT_INV_Q\(0),
	combout => \u0|s5|hex[6]~0_combout\);

\u0|s5|hex[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s5|hex[5]~1_combout\ = (!\u0|r5|Q\(2) & (!\u0|r5|Q\(3) & ((\u0|r5|Q\(0)) # (\u0|r5|Q\(1))))) # (\u0|r5|Q\(2) & (\u0|r5|Q\(0) & (!\u0|r5|Q\(3) $ (!\u0|r5|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010011010000010001001101000001000100110100000100010011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r5|ALT_INV_Q\(3),
	datab => \u0|r5|ALT_INV_Q\(2),
	datac => \u0|r5|ALT_INV_Q\(1),
	datad => \u0|r5|ALT_INV_Q\(0),
	combout => \u0|s5|hex[5]~1_combout\);

\u0|s5|hex[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s5|hex[4]~2_combout\ = (!\u0|r5|Q\(1) & ((!\u0|r5|Q\(2) & ((\u0|r5|Q\(0)))) # (\u0|r5|Q\(2) & (!\u0|r5|Q\(3))))) # (\u0|r5|Q\(1) & (!\u0|r5|Q\(3) & ((\u0|r5|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r5|ALT_INV_Q\(3),
	datab => \u0|r5|ALT_INV_Q\(2),
	datac => \u0|r5|ALT_INV_Q\(1),
	datad => \u0|r5|ALT_INV_Q\(0),
	combout => \u0|s5|hex[4]~2_combout\);

\u0|s5|hex[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s5|hex[3]~3_combout\ = (!\u0|r5|Q\(1) & (!\u0|r5|Q\(3) & (!\u0|r5|Q\(2) $ (!\u0|r5|Q\(0))))) # (\u0|r5|Q\(1) & ((!\u0|r5|Q\(2) & (\u0|r5|Q\(3) & !\u0|r5|Q\(0))) # (\u0|r5|Q\(2) & ((\u0|r5|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010010000011001001001000001100100100100000110010010010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r5|ALT_INV_Q\(3),
	datab => \u0|r5|ALT_INV_Q\(2),
	datac => \u0|r5|ALT_INV_Q\(1),
	datad => \u0|r5|ALT_INV_Q\(0),
	combout => \u0|s5|hex[3]~3_combout\);

\u0|s5|hex[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s5|hex[2]~4_combout\ = (!\u0|r5|Q\(3) & (!\u0|r5|Q\(2) & (\u0|r5|Q\(1) & !\u0|r5|Q\(0)))) # (\u0|r5|Q\(3) & (\u0|r5|Q\(2) & ((!\u0|r5|Q\(0)) # (\u0|r5|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100100000001000110010000000100011001000000010001100100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r5|ALT_INV_Q\(3),
	datab => \u0|r5|ALT_INV_Q\(2),
	datac => \u0|r5|ALT_INV_Q\(1),
	datad => \u0|r5|ALT_INV_Q\(0),
	combout => \u0|s5|hex[2]~4_combout\);

\u0|s5|hex[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s5|hex[1]~5_combout\ = (!\u0|r5|Q\(3) & (\u0|r5|Q\(2) & (!\u0|r5|Q\(1) $ (!\u0|r5|Q\(0))))) # (\u0|r5|Q\(3) & ((!\u0|r5|Q\(0) & (\u0|r5|Q\(2))) # (\u0|r5|Q\(0) & ((\u0|r5|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100100101000100110010010100010011001001010001001100100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r5|ALT_INV_Q\(3),
	datab => \u0|r5|ALT_INV_Q\(2),
	datac => \u0|r5|ALT_INV_Q\(1),
	datad => \u0|r5|ALT_INV_Q\(0),
	combout => \u0|s5|hex[1]~5_combout\);

\u0|s5|hex[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s5|hex[0]~6_combout\ = (!\u0|r5|Q\(3) & (!\u0|r5|Q\(1) & (!\u0|r5|Q\(2) $ (!\u0|r5|Q\(0))))) # (\u0|r5|Q\(3) & (\u0|r5|Q\(0) & (!\u0|r5|Q\(2) $ (!\u0|r5|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010010100001000001001010000100000100101000010000010010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r5|ALT_INV_Q\(3),
	datab => \u0|r5|ALT_INV_Q\(2),
	datac => \u0|r5|ALT_INV_Q\(1),
	datad => \u0|r5|ALT_INV_Q\(0),
	combout => \u0|s5|hex[0]~6_combout\);

\u0|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|Mux5~0_combout\ = (\p1|regAddr|Q\(8) & (\p1|regAddr|Q\(7) & !\p1|regAddr|Q\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|regAddr|ALT_INV_Q\(8),
	datab => \p1|regAddr|ALT_INV_Q\(7),
	datac => \p1|regAddr|ALT_INV_Q\(6),
	combout => \u0|Mux5~0_combout\);

\u0|En[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|En\(4) = ( \u0|En\(4) & ( \wr_en~0_combout\ ) ) # ( \u0|En\(4) & ( !\wr_en~0_combout\ & ( \u0|Mux5~0_combout\ ) ) ) # ( !\u0|En\(4) & ( !\wr_en~0_combout\ & ( \u0|Mux5~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u0|ALT_INV_Mux5~0_combout\,
	datae => \u0|ALT_INV_En\(4),
	dataf => \ALT_INV_wr_en~0_combout\,
	combout => \u0|En\(4));

\u0|r4|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|regDout|Q\(3),
	clrn => \key0~input_o\,
	ena => \u0|En\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r4|Q\(3));

\u0|r4|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|regDout|Q\(2),
	clrn => \key0~input_o\,
	ena => \u0|En\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r4|Q\(2));

\u0|r4|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|regDout|Q\(1),
	clrn => \key0~input_o\,
	ena => \u0|En\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r4|Q\(1));

\u0|r4|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|regDout|Q\(0),
	clrn => \key0~input_o\,
	ena => \u0|En\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r4|Q\(0));

\u0|s4|hex[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s4|hex[6]~0_combout\ = (!\u0|r4|Q\(0) & (!\u0|r4|Q\(1) & (!\u0|r4|Q\(3) $ (\u0|r4|Q\(2))))) # (\u0|r4|Q\(0) & (!\u0|r4|Q\(3) & (!\u0|r4|Q\(2) $ (\u0|r4|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000010000010100100001000001010010000100000101001000010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r4|ALT_INV_Q\(3),
	datab => \u0|r4|ALT_INV_Q\(2),
	datac => \u0|r4|ALT_INV_Q\(1),
	datad => \u0|r4|ALT_INV_Q\(0),
	combout => \u0|s4|hex[6]~0_combout\);

\u0|s4|hex[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s4|hex[5]~1_combout\ = (!\u0|r4|Q\(2) & (!\u0|r4|Q\(3) & ((\u0|r4|Q\(0)) # (\u0|r4|Q\(1))))) # (\u0|r4|Q\(2) & (\u0|r4|Q\(0) & (!\u0|r4|Q\(3) $ (!\u0|r4|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010011010000010001001101000001000100110100000100010011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r4|ALT_INV_Q\(3),
	datab => \u0|r4|ALT_INV_Q\(2),
	datac => \u0|r4|ALT_INV_Q\(1),
	datad => \u0|r4|ALT_INV_Q\(0),
	combout => \u0|s4|hex[5]~1_combout\);

\u0|s4|hex[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s4|hex[4]~2_combout\ = (!\u0|r4|Q\(1) & ((!\u0|r4|Q\(2) & ((\u0|r4|Q\(0)))) # (\u0|r4|Q\(2) & (!\u0|r4|Q\(3))))) # (\u0|r4|Q\(1) & (!\u0|r4|Q\(3) & ((\u0|r4|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r4|ALT_INV_Q\(3),
	datab => \u0|r4|ALT_INV_Q\(2),
	datac => \u0|r4|ALT_INV_Q\(1),
	datad => \u0|r4|ALT_INV_Q\(0),
	combout => \u0|s4|hex[4]~2_combout\);

\u0|s4|hex[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s4|hex[3]~3_combout\ = (!\u0|r4|Q\(1) & (!\u0|r4|Q\(3) & (!\u0|r4|Q\(2) $ (!\u0|r4|Q\(0))))) # (\u0|r4|Q\(1) & ((!\u0|r4|Q\(2) & (\u0|r4|Q\(3) & !\u0|r4|Q\(0))) # (\u0|r4|Q\(2) & ((\u0|r4|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010010000011001001001000001100100100100000110010010010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r4|ALT_INV_Q\(3),
	datab => \u0|r4|ALT_INV_Q\(2),
	datac => \u0|r4|ALT_INV_Q\(1),
	datad => \u0|r4|ALT_INV_Q\(0),
	combout => \u0|s4|hex[3]~3_combout\);

\u0|s4|hex[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s4|hex[2]~4_combout\ = (!\u0|r4|Q\(3) & (!\u0|r4|Q\(2) & (\u0|r4|Q\(1) & !\u0|r4|Q\(0)))) # (\u0|r4|Q\(3) & (\u0|r4|Q\(2) & ((!\u0|r4|Q\(0)) # (\u0|r4|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100100000001000110010000000100011001000000010001100100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r4|ALT_INV_Q\(3),
	datab => \u0|r4|ALT_INV_Q\(2),
	datac => \u0|r4|ALT_INV_Q\(1),
	datad => \u0|r4|ALT_INV_Q\(0),
	combout => \u0|s4|hex[2]~4_combout\);

\u0|s4|hex[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s4|hex[1]~5_combout\ = (!\u0|r4|Q\(3) & (\u0|r4|Q\(2) & (!\u0|r4|Q\(1) $ (!\u0|r4|Q\(0))))) # (\u0|r4|Q\(3) & ((!\u0|r4|Q\(0) & (\u0|r4|Q\(2))) # (\u0|r4|Q\(0) & ((\u0|r4|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100100101000100110010010100010011001001010001001100100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r4|ALT_INV_Q\(3),
	datab => \u0|r4|ALT_INV_Q\(2),
	datac => \u0|r4|ALT_INV_Q\(1),
	datad => \u0|r4|ALT_INV_Q\(0),
	combout => \u0|s4|hex[1]~5_combout\);

\u0|s4|hex[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s4|hex[0]~6_combout\ = (!\u0|r4|Q\(3) & (!\u0|r4|Q\(1) & (!\u0|r4|Q\(2) $ (!\u0|r4|Q\(0))))) # (\u0|r4|Q\(3) & (\u0|r4|Q\(0) & (!\u0|r4|Q\(2) $ (!\u0|r4|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010010100001000001001010000100000100101000010000010010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r4|ALT_INV_Q\(3),
	datab => \u0|r4|ALT_INV_Q\(2),
	datac => \u0|r4|ALT_INV_Q\(1),
	datad => \u0|r4|ALT_INV_Q\(0),
	combout => \u0|s4|hex[0]~6_combout\);

\u0|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|Mux4~0_combout\ = (!\p1|regAddr|Q\(7) & \p1|regAddr|Q\(6))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|regAddr|ALT_INV_Q\(7),
	datab => \p1|regAddr|ALT_INV_Q\(6),
	combout => \u0|Mux4~0_combout\);

\u0|En[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|En\(3) = ( \u0|En\(3) & ( \wr_en~0_combout\ ) ) # ( \u0|En\(3) & ( !\wr_en~0_combout\ & ( \u0|Mux4~0_combout\ ) ) ) # ( !\u0|En\(3) & ( !\wr_en~0_combout\ & ( \u0|Mux4~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u0|ALT_INV_Mux4~0_combout\,
	datae => \u0|ALT_INV_En\(3),
	dataf => \ALT_INV_wr_en~0_combout\,
	combout => \u0|En\(3));

\u0|r3|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|regDout|Q\(3),
	clrn => \key0~input_o\,
	ena => \u0|En\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r3|Q\(3));

\u0|r3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|regDout|Q\(2),
	clrn => \key0~input_o\,
	ena => \u0|En\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r3|Q\(2));

\u0|r3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|regDout|Q\(1),
	clrn => \key0~input_o\,
	ena => \u0|En\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r3|Q\(1));

\u0|r3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|regDout|Q\(0),
	clrn => \key0~input_o\,
	ena => \u0|En\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r3|Q\(0));

\u0|s3|hex[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s3|hex[6]~0_combout\ = (!\u0|r3|Q\(0) & (!\u0|r3|Q\(1) & (!\u0|r3|Q\(3) $ (\u0|r3|Q\(2))))) # (\u0|r3|Q\(0) & (!\u0|r3|Q\(3) & (!\u0|r3|Q\(2) $ (\u0|r3|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000010000010100100001000001010010000100000101001000010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r3|ALT_INV_Q\(3),
	datab => \u0|r3|ALT_INV_Q\(2),
	datac => \u0|r3|ALT_INV_Q\(1),
	datad => \u0|r3|ALT_INV_Q\(0),
	combout => \u0|s3|hex[6]~0_combout\);

\u0|s3|hex[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s3|hex[5]~1_combout\ = (!\u0|r3|Q\(2) & (!\u0|r3|Q\(3) & ((\u0|r3|Q\(0)) # (\u0|r3|Q\(1))))) # (\u0|r3|Q\(2) & (\u0|r3|Q\(0) & (!\u0|r3|Q\(3) $ (!\u0|r3|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010011010000010001001101000001000100110100000100010011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r3|ALT_INV_Q\(3),
	datab => \u0|r3|ALT_INV_Q\(2),
	datac => \u0|r3|ALT_INV_Q\(1),
	datad => \u0|r3|ALT_INV_Q\(0),
	combout => \u0|s3|hex[5]~1_combout\);

\u0|s3|hex[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s3|hex[4]~2_combout\ = (!\u0|r3|Q\(1) & ((!\u0|r3|Q\(2) & ((\u0|r3|Q\(0)))) # (\u0|r3|Q\(2) & (!\u0|r3|Q\(3))))) # (\u0|r3|Q\(1) & (!\u0|r3|Q\(3) & ((\u0|r3|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r3|ALT_INV_Q\(3),
	datab => \u0|r3|ALT_INV_Q\(2),
	datac => \u0|r3|ALT_INV_Q\(1),
	datad => \u0|r3|ALT_INV_Q\(0),
	combout => \u0|s3|hex[4]~2_combout\);

\u0|s3|hex[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s3|hex[3]~3_combout\ = (!\u0|r3|Q\(1) & (!\u0|r3|Q\(3) & (!\u0|r3|Q\(2) $ (!\u0|r3|Q\(0))))) # (\u0|r3|Q\(1) & ((!\u0|r3|Q\(2) & (\u0|r3|Q\(3) & !\u0|r3|Q\(0))) # (\u0|r3|Q\(2) & ((\u0|r3|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010010000011001001001000001100100100100000110010010010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r3|ALT_INV_Q\(3),
	datab => \u0|r3|ALT_INV_Q\(2),
	datac => \u0|r3|ALT_INV_Q\(1),
	datad => \u0|r3|ALT_INV_Q\(0),
	combout => \u0|s3|hex[3]~3_combout\);

\u0|s3|hex[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s3|hex[2]~4_combout\ = (!\u0|r3|Q\(3) & (!\u0|r3|Q\(2) & (\u0|r3|Q\(1) & !\u0|r3|Q\(0)))) # (\u0|r3|Q\(3) & (\u0|r3|Q\(2) & ((!\u0|r3|Q\(0)) # (\u0|r3|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100100000001000110010000000100011001000000010001100100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r3|ALT_INV_Q\(3),
	datab => \u0|r3|ALT_INV_Q\(2),
	datac => \u0|r3|ALT_INV_Q\(1),
	datad => \u0|r3|ALT_INV_Q\(0),
	combout => \u0|s3|hex[2]~4_combout\);

\u0|s3|hex[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s3|hex[1]~5_combout\ = (!\u0|r3|Q\(3) & (\u0|r3|Q\(2) & (!\u0|r3|Q\(1) $ (!\u0|r3|Q\(0))))) # (\u0|r3|Q\(3) & ((!\u0|r3|Q\(0) & (\u0|r3|Q\(2))) # (\u0|r3|Q\(0) & ((\u0|r3|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100100101000100110010010100010011001001010001001100100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r3|ALT_INV_Q\(3),
	datab => \u0|r3|ALT_INV_Q\(2),
	datac => \u0|r3|ALT_INV_Q\(1),
	datad => \u0|r3|ALT_INV_Q\(0),
	combout => \u0|s3|hex[1]~5_combout\);

\u0|s3|hex[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s3|hex[0]~6_combout\ = (!\u0|r3|Q\(3) & (!\u0|r3|Q\(1) & (!\u0|r3|Q\(2) $ (!\u0|r3|Q\(0))))) # (\u0|r3|Q\(3) & (\u0|r3|Q\(0) & (!\u0|r3|Q\(2) $ (!\u0|r3|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010010100001000001001010000100000100101000010000010010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r3|ALT_INV_Q\(3),
	datab => \u0|r3|ALT_INV_Q\(2),
	datac => \u0|r3|ALT_INV_Q\(1),
	datad => \u0|r3|ALT_INV_Q\(0),
	combout => \u0|s3|hex[0]~6_combout\);

\u0|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|Mux3~0_combout\ = (\p1|regAddr|Q\(6)) # (\p1|regAddr|Q\(7))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|regAddr|ALT_INV_Q\(7),
	datab => \p1|regAddr|ALT_INV_Q\(6),
	combout => \u0|Mux3~0_combout\);

\u0|En[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|En\(2) = ( \u0|En\(2) & ( \wr_en~0_combout\ ) ) # ( \u0|En\(2) & ( !\wr_en~0_combout\ & ( !\u0|Mux3~0_combout\ ) ) ) # ( !\u0|En\(2) & ( !\wr_en~0_combout\ & ( !\u0|Mux3~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u0|ALT_INV_Mux3~0_combout\,
	datae => \u0|ALT_INV_En\(2),
	dataf => \ALT_INV_wr_en~0_combout\,
	combout => \u0|En\(2));

\u0|r2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|regDout|Q\(3),
	clrn => \key0~input_o\,
	ena => \u0|En\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r2|Q\(3));

\u0|r2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|regDout|Q\(2),
	clrn => \key0~input_o\,
	ena => \u0|En\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r2|Q\(2));

\u0|r2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|regDout|Q\(1),
	clrn => \key0~input_o\,
	ena => \u0|En\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r2|Q\(1));

\u0|r2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|regDout|Q\(0),
	clrn => \key0~input_o\,
	ena => \u0|En\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r2|Q\(0));

\u0|s2|hex[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s2|hex[6]~0_combout\ = (!\u0|r2|Q\(0) & (!\u0|r2|Q\(1) & (!\u0|r2|Q\(3) $ (\u0|r2|Q\(2))))) # (\u0|r2|Q\(0) & (!\u0|r2|Q\(3) & (!\u0|r2|Q\(2) $ (\u0|r2|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000010000010100100001000001010010000100000101001000010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r2|ALT_INV_Q\(3),
	datab => \u0|r2|ALT_INV_Q\(2),
	datac => \u0|r2|ALT_INV_Q\(1),
	datad => \u0|r2|ALT_INV_Q\(0),
	combout => \u0|s2|hex[6]~0_combout\);

\u0|s2|hex[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s2|hex[5]~1_combout\ = (!\u0|r2|Q\(2) & (!\u0|r2|Q\(3) & ((\u0|r2|Q\(0)) # (\u0|r2|Q\(1))))) # (\u0|r2|Q\(2) & (\u0|r2|Q\(0) & (!\u0|r2|Q\(3) $ (!\u0|r2|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010011010000010001001101000001000100110100000100010011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r2|ALT_INV_Q\(3),
	datab => \u0|r2|ALT_INV_Q\(2),
	datac => \u0|r2|ALT_INV_Q\(1),
	datad => \u0|r2|ALT_INV_Q\(0),
	combout => \u0|s2|hex[5]~1_combout\);

\u0|s2|hex[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s2|hex[4]~2_combout\ = (!\u0|r2|Q\(1) & ((!\u0|r2|Q\(2) & ((\u0|r2|Q\(0)))) # (\u0|r2|Q\(2) & (!\u0|r2|Q\(3))))) # (\u0|r2|Q\(1) & (!\u0|r2|Q\(3) & ((\u0|r2|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r2|ALT_INV_Q\(3),
	datab => \u0|r2|ALT_INV_Q\(2),
	datac => \u0|r2|ALT_INV_Q\(1),
	datad => \u0|r2|ALT_INV_Q\(0),
	combout => \u0|s2|hex[4]~2_combout\);

\u0|s2|hex[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s2|hex[3]~3_combout\ = (!\u0|r2|Q\(1) & (!\u0|r2|Q\(3) & (!\u0|r2|Q\(2) $ (!\u0|r2|Q\(0))))) # (\u0|r2|Q\(1) & ((!\u0|r2|Q\(2) & (\u0|r2|Q\(3) & !\u0|r2|Q\(0))) # (\u0|r2|Q\(2) & ((\u0|r2|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010010000011001001001000001100100100100000110010010010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r2|ALT_INV_Q\(3),
	datab => \u0|r2|ALT_INV_Q\(2),
	datac => \u0|r2|ALT_INV_Q\(1),
	datad => \u0|r2|ALT_INV_Q\(0),
	combout => \u0|s2|hex[3]~3_combout\);

\u0|s2|hex[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s2|hex[2]~4_combout\ = (!\u0|r2|Q\(3) & (!\u0|r2|Q\(2) & (\u0|r2|Q\(1) & !\u0|r2|Q\(0)))) # (\u0|r2|Q\(3) & (\u0|r2|Q\(2) & ((!\u0|r2|Q\(0)) # (\u0|r2|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100100000001000110010000000100011001000000010001100100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r2|ALT_INV_Q\(3),
	datab => \u0|r2|ALT_INV_Q\(2),
	datac => \u0|r2|ALT_INV_Q\(1),
	datad => \u0|r2|ALT_INV_Q\(0),
	combout => \u0|s2|hex[2]~4_combout\);

\u0|s2|hex[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s2|hex[1]~5_combout\ = (!\u0|r2|Q\(3) & (\u0|r2|Q\(2) & (!\u0|r2|Q\(1) $ (!\u0|r2|Q\(0))))) # (\u0|r2|Q\(3) & ((!\u0|r2|Q\(0) & (\u0|r2|Q\(2))) # (\u0|r2|Q\(0) & ((\u0|r2|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100100101000100110010010100010011001001010001001100100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r2|ALT_INV_Q\(3),
	datab => \u0|r2|ALT_INV_Q\(2),
	datac => \u0|r2|ALT_INV_Q\(1),
	datad => \u0|r2|ALT_INV_Q\(0),
	combout => \u0|s2|hex[1]~5_combout\);

\u0|s2|hex[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s2|hex[0]~6_combout\ = (!\u0|r2|Q\(3) & (!\u0|r2|Q\(1) & (!\u0|r2|Q\(2) $ (!\u0|r2|Q\(0))))) # (\u0|r2|Q\(3) & (\u0|r2|Q\(0) & (!\u0|r2|Q\(2) $ (!\u0|r2|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010010100001000001001010000100000100101000010000010010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r2|ALT_INV_Q\(3),
	datab => \u0|r2|ALT_INV_Q\(2),
	datac => \u0|r2|ALT_INV_Q\(1),
	datad => \u0|r2|ALT_INV_Q\(0),
	combout => \u0|s2|hex[0]~6_combout\);

\u0|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|Mux2~0_combout\ = (!\p1|regAddr|Q\(8) & \p1|regAddr|Q\(6))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|regAddr|ALT_INV_Q\(8),
	datab => \p1|regAddr|ALT_INV_Q\(6),
	combout => \u0|Mux2~0_combout\);

\u0|En[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|En\(1) = ( \u0|En\(1) & ( \wr_en~0_combout\ ) ) # ( \u0|En\(1) & ( !\wr_en~0_combout\ & ( \u0|Mux2~0_combout\ ) ) ) # ( !\u0|En\(1) & ( !\wr_en~0_combout\ & ( \u0|Mux2~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u0|ALT_INV_Mux2~0_combout\,
	datae => \u0|ALT_INV_En\(1),
	dataf => \ALT_INV_wr_en~0_combout\,
	combout => \u0|En\(1));

\u0|r1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|regDout|Q\(3),
	clrn => \key0~input_o\,
	ena => \u0|En\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r1|Q\(3));

\u0|r1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|regDout|Q\(2),
	clrn => \key0~input_o\,
	ena => \u0|En\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r1|Q\(2));

\u0|r1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|regDout|Q\(1),
	clrn => \key0~input_o\,
	ena => \u0|En\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r1|Q\(1));

\u0|r1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|regDout|Q\(0),
	clrn => \key0~input_o\,
	ena => \u0|En\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r1|Q\(0));

\u0|s1|hex[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s1|hex[6]~0_combout\ = (!\u0|r1|Q\(0) & (!\u0|r1|Q\(1) & (!\u0|r1|Q\(3) $ (\u0|r1|Q\(2))))) # (\u0|r1|Q\(0) & (!\u0|r1|Q\(3) & (!\u0|r1|Q\(2) $ (\u0|r1|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000010000010100100001000001010010000100000101001000010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|ALT_INV_Q\(3),
	datab => \u0|r1|ALT_INV_Q\(2),
	datac => \u0|r1|ALT_INV_Q\(1),
	datad => \u0|r1|ALT_INV_Q\(0),
	combout => \u0|s1|hex[6]~0_combout\);

\u0|s1|hex[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s1|hex[5]~1_combout\ = (!\u0|r1|Q\(2) & (!\u0|r1|Q\(3) & ((\u0|r1|Q\(0)) # (\u0|r1|Q\(1))))) # (\u0|r1|Q\(2) & (\u0|r1|Q\(0) & (!\u0|r1|Q\(3) $ (!\u0|r1|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010011010000010001001101000001000100110100000100010011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|ALT_INV_Q\(3),
	datab => \u0|r1|ALT_INV_Q\(2),
	datac => \u0|r1|ALT_INV_Q\(1),
	datad => \u0|r1|ALT_INV_Q\(0),
	combout => \u0|s1|hex[5]~1_combout\);

\u0|s1|hex[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s1|hex[4]~2_combout\ = (!\u0|r1|Q\(1) & ((!\u0|r1|Q\(2) & ((\u0|r1|Q\(0)))) # (\u0|r1|Q\(2) & (!\u0|r1|Q\(3))))) # (\u0|r1|Q\(1) & (!\u0|r1|Q\(3) & ((\u0|r1|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|ALT_INV_Q\(3),
	datab => \u0|r1|ALT_INV_Q\(2),
	datac => \u0|r1|ALT_INV_Q\(1),
	datad => \u0|r1|ALT_INV_Q\(0),
	combout => \u0|s1|hex[4]~2_combout\);

\u0|s1|hex[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s1|hex[3]~3_combout\ = (!\u0|r1|Q\(1) & (!\u0|r1|Q\(3) & (!\u0|r1|Q\(2) $ (!\u0|r1|Q\(0))))) # (\u0|r1|Q\(1) & ((!\u0|r1|Q\(2) & (\u0|r1|Q\(3) & !\u0|r1|Q\(0))) # (\u0|r1|Q\(2) & ((\u0|r1|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010010000011001001001000001100100100100000110010010010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|ALT_INV_Q\(3),
	datab => \u0|r1|ALT_INV_Q\(2),
	datac => \u0|r1|ALT_INV_Q\(1),
	datad => \u0|r1|ALT_INV_Q\(0),
	combout => \u0|s1|hex[3]~3_combout\);

\u0|s1|hex[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s1|hex[2]~4_combout\ = (!\u0|r1|Q\(3) & (!\u0|r1|Q\(2) & (\u0|r1|Q\(1) & !\u0|r1|Q\(0)))) # (\u0|r1|Q\(3) & (\u0|r1|Q\(2) & ((!\u0|r1|Q\(0)) # (\u0|r1|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100100000001000110010000000100011001000000010001100100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|ALT_INV_Q\(3),
	datab => \u0|r1|ALT_INV_Q\(2),
	datac => \u0|r1|ALT_INV_Q\(1),
	datad => \u0|r1|ALT_INV_Q\(0),
	combout => \u0|s1|hex[2]~4_combout\);

\u0|s1|hex[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s1|hex[1]~5_combout\ = (!\u0|r1|Q\(3) & (\u0|r1|Q\(2) & (!\u0|r1|Q\(1) $ (!\u0|r1|Q\(0))))) # (\u0|r1|Q\(3) & ((!\u0|r1|Q\(0) & (\u0|r1|Q\(2))) # (\u0|r1|Q\(0) & ((\u0|r1|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100100101000100110010010100010011001001010001001100100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|ALT_INV_Q\(3),
	datab => \u0|r1|ALT_INV_Q\(2),
	datac => \u0|r1|ALT_INV_Q\(1),
	datad => \u0|r1|ALT_INV_Q\(0),
	combout => \u0|s1|hex[1]~5_combout\);

\u0|s1|hex[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s1|hex[0]~6_combout\ = (!\u0|r1|Q\(3) & (!\u0|r1|Q\(1) & (!\u0|r1|Q\(2) $ (!\u0|r1|Q\(0))))) # (\u0|r1|Q\(3) & (\u0|r1|Q\(0) & (!\u0|r1|Q\(2) $ (!\u0|r1|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010010100001000001001010000100000100101000010000010010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r1|ALT_INV_Q\(3),
	datab => \u0|r1|ALT_INV_Q\(2),
	datac => \u0|r1|ALT_INV_Q\(1),
	datad => \u0|r1|ALT_INV_Q\(0),
	combout => \u0|s1|hex[0]~6_combout\);

\u0|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|Mux0~0_combout\ = (\p1|regAddr|Q\(6)) # (\p1|regAddr|Q\(8))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|regAddr|ALT_INV_Q\(8),
	datab => \p1|regAddr|ALT_INV_Q\(6),
	combout => \u0|Mux0~0_combout\);

\u0|En[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|En\(0) = ( \u0|En\(0) & ( \wr_en~0_combout\ ) ) # ( \u0|En\(0) & ( !\wr_en~0_combout\ & ( !\u0|Mux0~0_combout\ ) ) ) # ( !\u0|En\(0) & ( !\wr_en~0_combout\ & ( !\u0|Mux0~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u0|ALT_INV_Mux0~0_combout\,
	datae => \u0|ALT_INV_En\(0),
	dataf => \ALT_INV_wr_en~0_combout\,
	combout => \u0|En\(0));

\u0|r0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|regDout|Q\(3),
	clrn => \key0~input_o\,
	ena => \u0|En\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r0|Q\(3));

\u0|r0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|regDout|Q\(2),
	clrn => \key0~input_o\,
	ena => \u0|En\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r0|Q\(2));

\u0|r0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|regDout|Q\(1),
	clrn => \key0~input_o\,
	ena => \u0|En\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r0|Q\(1));

\u0|r0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|regDout|Q\(0),
	clrn => \key0~input_o\,
	ena => \u0|En\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r0|Q\(0));

\u0|s0|hex[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s0|hex[6]~0_combout\ = (!\u0|r0|Q\(0) & (!\u0|r0|Q\(1) & (!\u0|r0|Q\(3) $ (\u0|r0|Q\(2))))) # (\u0|r0|Q\(0) & (!\u0|r0|Q\(3) & (!\u0|r0|Q\(2) $ (\u0|r0|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000010000010100100001000001010010000100000101001000010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|ALT_INV_Q\(3),
	datab => \u0|r0|ALT_INV_Q\(2),
	datac => \u0|r0|ALT_INV_Q\(1),
	datad => \u0|r0|ALT_INV_Q\(0),
	combout => \u0|s0|hex[6]~0_combout\);

\u0|s0|hex[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s0|hex[5]~1_combout\ = (!\u0|r0|Q\(2) & (!\u0|r0|Q\(3) & ((\u0|r0|Q\(0)) # (\u0|r0|Q\(1))))) # (\u0|r0|Q\(2) & (\u0|r0|Q\(0) & (!\u0|r0|Q\(3) $ (!\u0|r0|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010011010000010001001101000001000100110100000100010011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|ALT_INV_Q\(3),
	datab => \u0|r0|ALT_INV_Q\(2),
	datac => \u0|r0|ALT_INV_Q\(1),
	datad => \u0|r0|ALT_INV_Q\(0),
	combout => \u0|s0|hex[5]~1_combout\);

\u0|s0|hex[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s0|hex[4]~2_combout\ = (!\u0|r0|Q\(1) & ((!\u0|r0|Q\(2) & ((\u0|r0|Q\(0)))) # (\u0|r0|Q\(2) & (!\u0|r0|Q\(3))))) # (\u0|r0|Q\(1) & (!\u0|r0|Q\(3) & ((\u0|r0|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|ALT_INV_Q\(3),
	datab => \u0|r0|ALT_INV_Q\(2),
	datac => \u0|r0|ALT_INV_Q\(1),
	datad => \u0|r0|ALT_INV_Q\(0),
	combout => \u0|s0|hex[4]~2_combout\);

\u0|s0|hex[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s0|hex[3]~3_combout\ = (!\u0|r0|Q\(1) & (!\u0|r0|Q\(3) & (!\u0|r0|Q\(2) $ (!\u0|r0|Q\(0))))) # (\u0|r0|Q\(1) & ((!\u0|r0|Q\(2) & (\u0|r0|Q\(3) & !\u0|r0|Q\(0))) # (\u0|r0|Q\(2) & ((\u0|r0|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010010000011001001001000001100100100100000110010010010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|ALT_INV_Q\(3),
	datab => \u0|r0|ALT_INV_Q\(2),
	datac => \u0|r0|ALT_INV_Q\(1),
	datad => \u0|r0|ALT_INV_Q\(0),
	combout => \u0|s0|hex[3]~3_combout\);

\u0|s0|hex[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s0|hex[2]~4_combout\ = (!\u0|r0|Q\(3) & (!\u0|r0|Q\(2) & (\u0|r0|Q\(1) & !\u0|r0|Q\(0)))) # (\u0|r0|Q\(3) & (\u0|r0|Q\(2) & ((!\u0|r0|Q\(0)) # (\u0|r0|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100100000001000110010000000100011001000000010001100100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|ALT_INV_Q\(3),
	datab => \u0|r0|ALT_INV_Q\(2),
	datac => \u0|r0|ALT_INV_Q\(1),
	datad => \u0|r0|ALT_INV_Q\(0),
	combout => \u0|s0|hex[2]~4_combout\);

\u0|s0|hex[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s0|hex[1]~5_combout\ = (!\u0|r0|Q\(3) & (\u0|r0|Q\(2) & (!\u0|r0|Q\(1) $ (!\u0|r0|Q\(0))))) # (\u0|r0|Q\(3) & ((!\u0|r0|Q\(0) & (\u0|r0|Q\(2))) # (\u0|r0|Q\(0) & ((\u0|r0|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100100101000100110010010100010011001001010001001100100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|ALT_INV_Q\(3),
	datab => \u0|r0|ALT_INV_Q\(2),
	datac => \u0|r0|ALT_INV_Q\(1),
	datad => \u0|r0|ALT_INV_Q\(0),
	combout => \u0|s0|hex[1]~5_combout\);

\u0|s0|hex[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|s0|hex[0]~6_combout\ = (!\u0|r0|Q\(3) & (!\u0|r0|Q\(1) & (!\u0|r0|Q\(2) $ (!\u0|r0|Q\(0))))) # (\u0|r0|Q\(3) & (\u0|r0|Q\(0) & (!\u0|r0|Q\(2) $ (!\u0|r0|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010010100001000001001010000100000100101000010000010010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r0|ALT_INV_Q\(3),
	datab => \u0|r0|ALT_INV_Q\(2),
	datac => \u0|r0|ALT_INV_Q\(1),
	datad => \u0|r0|ALT_INV_Q\(0),
	combout => \u0|s0|hex[0]~6_combout\);

led_en : cyclonev_lcell_comb
-- Equation(s):
-- \led_en~combout\ = (!\p1|regAddr|Q\(8) & (\p1|regAddr|Q\(7) & \p1|ff0|Q~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \p1|regAddr|ALT_INV_Q\(8),
	datab => \p1|regAddr|ALT_INV_Q\(7),
	datac => \p1|ff0|ALT_INV_Q~q\,
	combout => \led_en~combout\);

\leds0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|regDout|Q\(0),
	clrn => \key0~input_o\,
	ena => \led_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds0|Q\(0));

\leds0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|regDout|Q\(1),
	clrn => \key0~input_o\,
	ena => \led_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds0|Q\(1));

\leds0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|regDout|Q\(2),
	clrn => \key0~input_o\,
	ena => \led_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds0|Q\(2));

\leds0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|regDout|Q\(3),
	clrn => \key0~input_o\,
	ena => \led_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds0|Q\(3));

\leds0|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|regDout|Q\(4),
	clrn => \key0~input_o\,
	ena => \led_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds0|Q\(4));

\leds0|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|regDout|Q\(5),
	clrn => \key0~input_o\,
	ena => \led_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds0|Q\(5));

\leds0|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|regDout|Q\(6),
	clrn => \key0~input_o\,
	ena => \led_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds0|Q\(6));

\leds0|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|regDout|Q\(7),
	clrn => \key0~input_o\,
	ena => \led_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds0|Q\(7));

\leds0|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \p1|regDout|Q\(8),
	clrn => \key0~input_o\,
	ena => \led_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds0|Q\(8));

ww_hex5(6) <= \hex5[6]~output_o\;

ww_hex5(5) <= \hex5[5]~output_o\;

ww_hex5(4) <= \hex5[4]~output_o\;

ww_hex5(3) <= \hex5[3]~output_o\;

ww_hex5(2) <= \hex5[2]~output_o\;

ww_hex5(1) <= \hex5[1]~output_o\;

ww_hex5(0) <= \hex5[0]~output_o\;

ww_hex4(6) <= \hex4[6]~output_o\;

ww_hex4(5) <= \hex4[5]~output_o\;

ww_hex4(4) <= \hex4[4]~output_o\;

ww_hex4(3) <= \hex4[3]~output_o\;

ww_hex4(2) <= \hex4[2]~output_o\;

ww_hex4(1) <= \hex4[1]~output_o\;

ww_hex4(0) <= \hex4[0]~output_o\;

ww_hex3(6) <= \hex3[6]~output_o\;

ww_hex3(5) <= \hex3[5]~output_o\;

ww_hex3(4) <= \hex3[4]~output_o\;

ww_hex3(3) <= \hex3[3]~output_o\;

ww_hex3(2) <= \hex3[2]~output_o\;

ww_hex3(1) <= \hex3[1]~output_o\;

ww_hex3(0) <= \hex3[0]~output_o\;

ww_hex2(6) <= \hex2[6]~output_o\;

ww_hex2(5) <= \hex2[5]~output_o\;

ww_hex2(4) <= \hex2[4]~output_o\;

ww_hex2(3) <= \hex2[3]~output_o\;

ww_hex2(2) <= \hex2[2]~output_o\;

ww_hex2(1) <= \hex2[1]~output_o\;

ww_hex2(0) <= \hex2[0]~output_o\;

ww_hex1(6) <= \hex1[6]~output_o\;

ww_hex1(5) <= \hex1[5]~output_o\;

ww_hex1(4) <= \hex1[4]~output_o\;

ww_hex1(3) <= \hex1[3]~output_o\;

ww_hex1(2) <= \hex1[2]~output_o\;

ww_hex1(1) <= \hex1[1]~output_o\;

ww_hex1(0) <= \hex1[0]~output_o\;

ww_hex0(6) <= \hex0[6]~output_o\;

ww_hex0(5) <= \hex0[5]~output_o\;

ww_hex0(4) <= \hex0[4]~output_o\;

ww_hex0(3) <= \hex0[3]~output_o\;

ww_hex0(2) <= \hex0[2]~output_o\;

ww_hex0(1) <= \hex0[1]~output_o\;

ww_hex0(0) <= \hex0[0]~output_o\;

ww_ledr(0) <= \ledr[0]~output_o\;

ww_ledr(1) <= \ledr[1]~output_o\;

ww_ledr(2) <= \ledr[2]~output_o\;

ww_ledr(3) <= \ledr[3]~output_o\;

ww_ledr(4) <= \ledr[4]~output_o\;

ww_ledr(5) <= \ledr[5]~output_o\;

ww_ledr(6) <= \ledr[6]~output_o\;

ww_ledr(7) <= \ledr[7]~output_o\;

ww_ledr(8) <= \ledr[8]~output_o\;
END structure;


