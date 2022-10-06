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
-- Generated on "10/06/2022 11:05:14"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          lab7part4
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY lab7part4_vhd_vec_tst IS
END lab7part4_vhd_vec_tst;
ARCHITECTURE lab7part4_arch OF lab7part4_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk50 : STD_LOGIC;
SIGNAL d_clk : STD_LOGIC;
SIGNAL key0 : STD_LOGIC;
SIGNAL key1 : STD_LOGIC;
SIGNAL led : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL ledr : STD_LOGIC;
SIGNAL sw : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT lab7part4
	PORT (
	clk50 : IN STD_LOGIC;
	d_clk : OUT STD_LOGIC;
	key0 : IN STD_LOGIC;
	key1 : IN STD_LOGIC;
	led : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	ledr : OUT STD_LOGIC;
	sw : IN STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : lab7part4
	PORT MAP (
-- list connections between master ports and signals
	clk50 => clk50,
	d_clk => d_clk,
	key0 => key0,
	key1 => key1,
	led => led,
	ledr => ledr,
	sw => sw
	);

-- clk50
t_prcs_clk50: PROCESS
BEGIN
	FOR i IN 1 TO 62
	LOOP
		clk50 <= '0';
		WAIT FOR 10000 ps;
		clk50 <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	clk50 <= '0';
WAIT;
END PROCESS t_prcs_clk50;

-- key0
t_prcs_key0: PROCESS
BEGIN
	key0 <= '1';
WAIT;
END PROCESS t_prcs_key0;

-- key1
t_prcs_key1: PROCESS
BEGIN
	key1 <= '1';
	WAIT FOR 80000 ps;
	key1 <= '0';
	WAIT FOR 20000 ps;
	key1 <= '1';
WAIT;
END PROCESS t_prcs_key1;
-- sw[2]
t_prcs_sw_2: PROCESS
BEGIN
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
WAIT;
END PROCESS t_prcs_sw_0;
END lab7part4_arch;
