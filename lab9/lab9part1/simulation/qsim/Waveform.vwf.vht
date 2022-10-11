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
-- Generated on "10/11/2022 22:51:24"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          lab9part1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY lab9part1_vhd_vec_tst IS
END lab9part1_vhd_vec_tst;
ARCHITECTURE lab9part1_arch OF lab9part1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL key0 : STD_LOGIC;
SIGNAL key1 : STD_LOGIC;
SIGNAL ledr : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL sw : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL sw9 : STD_LOGIC;
COMPONENT lab9part1
	PORT (
	key0 : IN STD_LOGIC;
	key1 : IN STD_LOGIC;
	ledr : BUFFER STD_LOGIC_VECTOR(9 DOWNTO 0);
	sw : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
	sw9 : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : lab9part1
	PORT MAP (
-- list connections between master ports and signals
	key0 => key0,
	key1 => key1,
	ledr => ledr,
	sw => sw,
	sw9 => sw9
	);
END lab9part1_arch;
