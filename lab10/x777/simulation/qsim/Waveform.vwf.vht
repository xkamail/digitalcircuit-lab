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
-- Generated on "11/03/2022 10:11:13"
                                                             
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
SIGNAL hex0 : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL hex1 : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL hex2 : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL hex3 : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL hex4 : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL hex5 : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL key0 : STD_LOGIC;
SIGNAL ledr : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL sw9 : STD_LOGIC;
COMPONENT x777
	PORT (
	clk : IN STD_LOGIC;
	hex0 : OUT STD_LOGIC_VECTOR(0 TO 6);
	hex1 : OUT STD_LOGIC_VECTOR(0 TO 6);
	hex2 : OUT STD_LOGIC_VECTOR(0 TO 6);
	hex3 : OUT STD_LOGIC_VECTOR(0 TO 6);
	hex4 : OUT STD_LOGIC_VECTOR(0 TO 6);
	hex5 : OUT STD_LOGIC_VECTOR(0 TO 6);
	key0 : IN STD_LOGIC;
	ledr : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	sw9 : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : x777
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	hex0 => hex0,
	hex1 => hex1,
	hex2 => hex2,
	hex3 => hex3,
	hex4 => hex4,
	hex5 => hex5,
	key0 => key0,
	ledr => ledr,
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
	WAIT FOR 40000 ps;
	key0 <= '1';
WAIT;
END PROCESS t_prcs_key0;

-- sw9
t_prcs_sw9: PROCESS
BEGIN
	sw9 <= '1';
WAIT;
END PROCESS t_prcs_sw9;
END x777_arch;
