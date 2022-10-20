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
-- Generated on "10/19/2022 19:16:23"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          lab8part3
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY lab8part3_vhd_vec_tst IS
END lab8part3_vhd_vec_tst;
ARCHITECTURE lab8part3_arch OF lab8part3_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL d_out : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL hex0 : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL hex2 : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL hex4 : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL hex5 : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL key0 : STD_LOGIC;
SIGNAL sw : STD_LOGIC_VECTOR(9 DOWNTO 0);
COMPONENT lab8part3
	PORT (
	d_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	hex0 : OUT STD_LOGIC_VECTOR(0 TO 6);
	hex2 : OUT STD_LOGIC_VECTOR(0 TO 6);
	hex4 : OUT STD_LOGIC_VECTOR(0 TO 6);
	hex5 : OUT STD_LOGIC_VECTOR(0 TO 6);
	key0 : IN STD_LOGIC;
	sw : IN STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : lab8part3
	PORT MAP (
-- list connections between master ports and signals
	d_out => d_out,
	hex0 => hex0,
	hex2 => hex2,
	hex4 => hex4,
	hex5 => hex5,
	key0 => key0,
	sw => sw
	);

-- key0
t_prcs_key0: PROCESS
BEGIN
LOOP
	key0 <= '0';
	WAIT FOR 20000 ps;
	key0 <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_key0;

-- sw[9]
t_prcs_sw_9: PROCESS
BEGIN
	sw(9) <= '0';
	WAIT FOR 30000 ps;
	sw(9) <= '1';
	WAIT FOR 20000 ps;
	sw(9) <= '0';
	WAIT FOR 60000 ps;
	sw(9) <= '1';
	WAIT FOR 20000 ps;
	sw(9) <= '0';
WAIT;
END PROCESS t_prcs_sw_9;

-- sw[8]
t_prcs_sw_8: PROCESS
BEGIN
	sw(8) <= '0';
	WAIT FOR 110000 ps;
	sw(8) <= '1';
	WAIT FOR 70000 ps;
	sw(8) <= '0';
WAIT;
END PROCESS t_prcs_sw_8;

-- sw[7]
t_prcs_sw_7: PROCESS
BEGIN
	sw(7) <= '0';
	WAIT FOR 110000 ps;
	sw(7) <= '1';
	WAIT FOR 70000 ps;
	sw(7) <= '0';
WAIT;
END PROCESS t_prcs_sw_7;

-- sw[6]
t_prcs_sw_6: PROCESS
BEGIN
	sw(6) <= '0';
	WAIT FOR 110000 ps;
	sw(6) <= '1';
	WAIT FOR 70000 ps;
	sw(6) <= '0';
WAIT;
END PROCESS t_prcs_sw_6;

-- sw[5]
t_prcs_sw_5: PROCESS
BEGIN
	sw(5) <= '0';
	WAIT FOR 110000 ps;
	sw(5) <= '1';
	WAIT FOR 70000 ps;
	sw(5) <= '0';
	WAIT FOR 50000 ps;
	sw(5) <= '1';
	WAIT FOR 20000 ps;
	sw(5) <= '0';
WAIT;
END PROCESS t_prcs_sw_5;

-- sw[4]
t_prcs_sw_4: PROCESS
BEGIN
	sw(4) <= '0';
	WAIT FOR 30000 ps;
	sw(4) <= '1';
	WAIT FOR 180000 ps;
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
	WAIT FOR 110000 ps;
	sw(2) <= '0';
	WAIT FOR 160000 ps;
	sw(2) <= '1';
WAIT;
END PROCESS t_prcs_sw_2;

-- sw[1]
t_prcs_sw_1: PROCESS
BEGIN
	sw(1) <= '0';
	WAIT FOR 110000 ps;
	sw(1) <= '1';
	WAIT FOR 160000 ps;
	sw(1) <= '0';
WAIT;
END PROCESS t_prcs_sw_1;

-- sw[0]
t_prcs_sw_0: PROCESS
BEGIN
	sw(0) <= '1';
	WAIT FOR 110000 ps;
	sw(0) <= '0';
	WAIT FOR 160000 ps;
	sw(0) <= '1';
WAIT;
END PROCESS t_prcs_sw_0;
END lab8part3_arch;
