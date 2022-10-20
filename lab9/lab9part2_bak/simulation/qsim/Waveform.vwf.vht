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
-- Generated on "10/11/2022 23:44:32"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          lab9part2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY lab9part2_vhd_vec_tst IS
END lab9part2_vhd_vec_tst;
ARCHITECTURE lab9part2_arch OF lab9part2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL data_in : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL key0 : STD_LOGIC;
SIGNAL key1 : STD_LOGIC;
SIGNAL ledr : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL sw0 : STD_LOGIC;
SIGNAL sw9 : STD_LOGIC;
COMPONENT lab9part2
	PORT (
	data_in : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	key0 : IN STD_LOGIC;
	key1 : IN STD_LOGIC;
	ledr : BUFFER STD_LOGIC_VECTOR(9 DOWNTO 0);
	sw0 : IN STD_LOGIC;
	sw9 : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : lab9part2
	PORT MAP (
-- list connections between master ports and signals
	data_in => data_in,
	key0 => key0,
	key1 => key1,
	ledr => ledr,
	sw0 => sw0,
	sw9 => sw9
	);

-- key0
t_prcs_key0: PROCESS
BEGIN
	key0 <= '0';
	WAIT FOR 20000 ps;
	key0 <= '1';
	WAIT FOR 10000 ps;
	key0 <= '0';
	WAIT FOR 10000 ps;
	key0 <= '1';
	WAIT FOR 10000 ps;
	key0 <= '0';
	WAIT FOR 10000 ps;
	key0 <= '1';
	WAIT FOR 10000 ps;
	key0 <= '0';
	WAIT FOR 30000 ps;
	key0 <= '1';
	WAIT FOR 10000 ps;
	key0 <= '0';
	WAIT FOR 70000 ps;
	key0 <= '1';
	WAIT FOR 10000 ps;
	key0 <= '0';
	WAIT FOR 20000 ps;
	key0 <= '1';
	WAIT FOR 10000 ps;
	key0 <= '0';
WAIT;
END PROCESS t_prcs_key0;

-- key1
t_prcs_key1: PROCESS
BEGIN
LOOP
	key1 <= '0';
	WAIT FOR 10000 ps;
	key1 <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_key1;

-- sw9
t_prcs_sw9: PROCESS
BEGIN
	sw9 <= '0';
	WAIT FOR 20000 ps;
	sw9 <= '1';
	WAIT FOR 20000 ps;
	sw9 <= '0';
	WAIT FOR 20000 ps;
	sw9 <= '1';
	WAIT FOR 20000 ps;
	sw9 <= '0';
	WAIT FOR 20000 ps;
	sw9 <= '1';
	WAIT FOR 20000 ps;
	sw9 <= '0';
	WAIT FOR 60000 ps;
	sw9 <= '1';
	WAIT FOR 20000 ps;
	sw9 <= '0';
WAIT;
END PROCESS t_prcs_sw9;

-- sw0
t_prcs_sw0: PROCESS
BEGIN
	sw0 <= '0';
	WAIT FOR 20000 ps;
	sw0 <= '1';
WAIT;
END PROCESS t_prcs_sw0;
END lab9part2_arch;
