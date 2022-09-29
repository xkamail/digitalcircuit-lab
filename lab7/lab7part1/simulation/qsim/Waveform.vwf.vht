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
-- Generated on "09/29/2022 10:14:03"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          lab7part1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY lab7part1_vhd_vec_tst IS
END lab7part1_vhd_vec_tst;
ARCHITECTURE lab7part1_arch OF lab7part1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL key0 : STD_LOGIC;
SIGNAL ledr : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL sw0 : STD_LOGIC;
SIGNAL sw1 : STD_LOGIC;
COMPONENT lab7part1
	PORT (
	key0 : IN STD_LOGIC;
	ledr : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	sw0 : IN STD_LOGIC;
	sw1 : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : lab7part1
	PORT MAP (
-- list connections between master ports and signals
	key0 => key0,
	ledr => ledr,
	sw0 => sw0,
	sw1 => sw1
	);

-- key0
t_prcs_key0: PROCESS
BEGIN
	key0 <= '1';
	WAIT FOR 20000 ps;
	FOR i IN 1 TO 24
	LOOP
		key0 <= '0';
		WAIT FOR 20000 ps;
		key0 <= '1';
		WAIT FOR 20000 ps;
	END LOOP;
	key0 <= '0';
WAIT;
END PROCESS t_prcs_key0;

-- sw0
t_prcs_sw0: PROCESS
BEGIN
	sw0 <= '0';
	WAIT FOR 30000 ps;
	sw0 <= '1';
WAIT;
END PROCESS t_prcs_sw0;

-- sw1
t_prcs_sw1: PROCESS
BEGIN
	sw1 <= '0';
	WAIT FOR 50000 ps;
	sw1 <= '1';
	WAIT FOR 50000 ps;
	sw1 <= '0';
	WAIT FOR 180000 ps;
	sw1 <= '1';
	WAIT FOR 200000 ps;
	sw1 <= '0';
WAIT;
END PROCESS t_prcs_sw1;
END lab7part1_arch;
