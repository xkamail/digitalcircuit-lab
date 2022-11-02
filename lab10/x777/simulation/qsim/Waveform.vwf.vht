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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/03/2022 01:49:23"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          x777
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY x777_vhd_vec_tst IS
END x777_vhd_vec_tst;
ARCHITECTURE x777_arch OF x777_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL d_en_flag : STD_LOGIC;
SIGNAL gt_flags : STD_LOGIC;
SIGNAL hex0 : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL hex1 : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL hex2 : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL hex3 : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL hex4 : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL hex5 : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL key0 : STD_LOGIC;
SIGNAL ledr : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL r0 : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL r1 : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL r2 : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL r3 : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL r4 : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL r_addr : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL sw : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL sw9 : STD_LOGIC;
COMPONENT x777
	PORT (
	clk : IN STD_LOGIC;
	d_en_flag : BUFFER STD_LOGIC;
	gt_flags : BUFFER STD_LOGIC;
	hex0 : BUFFER STD_LOGIC_VECTOR(0 TO 6);
	hex1 : BUFFER STD_LOGIC_VECTOR(0 TO 6);
	hex2 : BUFFER STD_LOGIC_VECTOR(0 TO 6);
	hex3 : BUFFER STD_LOGIC_VECTOR(0 TO 6);
	hex4 : BUFFER STD_LOGIC_VECTOR(0 TO 6);
	hex5 : BUFFER STD_LOGIC_VECTOR(0 TO 6);
	key0 : IN STD_LOGIC;
	ledr : BUFFER STD_LOGIC_VECTOR(8 DOWNTO 0);
	r0 : BUFFER STD_LOGIC_VECTOR(8 DOWNTO 0);
	r1 : BUFFER STD_LOGIC_VECTOR(8 DOWNTO 0);
	r2 : BUFFER STD_LOGIC_VECTOR(8 DOWNTO 0);
	r3 : BUFFER STD_LOGIC_VECTOR(8 DOWNTO 0);
	r4 : BUFFER STD_LOGIC_VECTOR(8 DOWNTO 0);
	r_addr : BUFFER STD_LOGIC_VECTOR(8 DOWNTO 0);
	sw : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
	sw9 : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : x777
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	d_en_flag => d_en_flag,
	gt_flags => gt_flags,
	hex0 => hex0,
	hex1 => hex1,
	hex2 => hex2,
	hex3 => hex3,
	hex4 => hex4,
	hex5 => hex5,
	key0 => key0,
	ledr => ledr,
	r0 => r0,
	r1 => r1,
	r2 => r2,
	r3 => r3,
	r4 => r4,
	r_addr => r_addr,
	sw => sw,
	sw9 => sw9
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 8000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- key0
t_prcs_key0: PROCESS
BEGIN
	key0 <= '0';
	WAIT FOR 20000 ps;
	key0 <= '1';
WAIT;
END PROCESS t_prcs_key0;
-- sw[8]
t_prcs_sw_8: PROCESS
BEGIN
	sw(8) <= '0';
WAIT;
END PROCESS t_prcs_sw_8;
-- sw[7]
t_prcs_sw_7: PROCESS
BEGIN
	sw(7) <= '0';
WAIT;
END PROCESS t_prcs_sw_7;
-- sw[6]
t_prcs_sw_6: PROCESS
BEGIN
	sw(6) <= '0';
WAIT;
END PROCESS t_prcs_sw_6;
-- sw[5]
t_prcs_sw_5: PROCESS
BEGIN
	sw(5) <= '0';
WAIT;
END PROCESS t_prcs_sw_5;
-- sw[4]
t_prcs_sw_4: PROCESS
BEGIN
	sw(4) <= '0';
WAIT;
END PROCESS t_prcs_sw_4;
-- sw[3]
t_prcs_sw_3: PROCESS
BEGIN
	sw(3) <= '0';
WAIT;
END PROCESS t_prcs_sw_3;
-- sw[2]
t_prcs_sw_2: PROCESS
BEGIN
	sw(2) <= '1';
	WAIT FOR 999000 ps;
	sw(2) <= '0';
WAIT;
END PROCESS t_prcs_sw_2;
-- sw[1]
t_prcs_sw_1: PROCESS
BEGIN
	sw(1) <= '0';
WAIT;
END PROCESS t_prcs_sw_1;
-- sw[0]
t_prcs_sw_0: PROCESS
BEGIN
	sw(0) <= '1';
	WAIT FOR 999000 ps;
	sw(0) <= '0';
WAIT;
END PROCESS t_prcs_sw_0;

-- sw9
t_prcs_sw9: PROCESS
BEGIN
	sw9 <= '0';
	WAIT FOR 20000 ps;
	sw9 <= '1';
WAIT;
END PROCESS t_prcs_sw9;
END x777_arch;
