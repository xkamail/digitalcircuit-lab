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
-- Generated on "10/06/2022 03:29:22"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          lab8part1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY lab8part1_vhd_vec_tst IS
END lab8part1_vhd_vec_tst;
ARCHITECTURE lab8part1_arch OF lab8part1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL addr : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL data : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL v : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL w : STD_LOGIC;
COMPONENT lab8part1
	PORT (
	addr : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	clk : IN STD_LOGIC;
	data : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	v : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	w : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : lab8part1
	PORT MAP (
-- list connections between master ports and signals
	addr => addr,
	clk => clk,
	data => data,
	v => v,
	w => w
	);
-- addr[4]
t_prcs_addr_4: PROCESS
BEGIN
	addr(4) <= '0';
	WAIT FOR 320000 ps;
	addr(4) <= '1';
	WAIT FOR 80000 ps;
	addr(4) <= '0';
	WAIT FOR 80000 ps;
	addr(4) <= '1';
	WAIT FOR 80000 ps;
	addr(4) <= '0';
WAIT;
END PROCESS t_prcs_addr_4;
-- addr[3]
t_prcs_addr_3: PROCESS
BEGIN
	addr(3) <= '0';
	WAIT FOR 320000 ps;
	addr(3) <= '1';
	WAIT FOR 80000 ps;
	addr(3) <= '0';
	WAIT FOR 80000 ps;
	addr(3) <= '1';
	WAIT FOR 80000 ps;
	addr(3) <= '0';
WAIT;
END PROCESS t_prcs_addr_3;
-- addr[2]
t_prcs_addr_2: PROCESS
BEGIN
	addr(2) <= '0';
	WAIT FOR 320000 ps;
	addr(2) <= '1';
	WAIT FOR 80000 ps;
	addr(2) <= '0';
	WAIT FOR 80000 ps;
	addr(2) <= '1';
	WAIT FOR 80000 ps;
	addr(2) <= '0';
WAIT;
END PROCESS t_prcs_addr_2;
-- addr[1]
t_prcs_addr_1: PROCESS
BEGIN
	addr(1) <= '0';
	WAIT FOR 320000 ps;
	addr(1) <= '1';
	WAIT FOR 80000 ps;
	addr(1) <= '0';
	WAIT FOR 80000 ps;
	addr(1) <= '1';
	WAIT FOR 80000 ps;
	addr(1) <= '0';
WAIT;
END PROCESS t_prcs_addr_1;
-- addr[0]
t_prcs_addr_0: PROCESS
BEGIN
	addr(0) <= '0';
	WAIT FOR 320000 ps;
	addr(0) <= '1';
	WAIT FOR 80000 ps;
	addr(0) <= '0';
	WAIT FOR 80000 ps;
	addr(0) <= '1';
	WAIT FOR 80000 ps;
	addr(0) <= '0';
WAIT;
END PROCESS t_prcs_addr_0;

-- clk
t_prcs_clk: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		clk <= '0';
		WAIT FOR 40000 ps;
		clk <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;
-- data[3]
t_prcs_data_3: PROCESS
BEGIN
	data(3) <= '0';
	WAIT FOR 160000 ps;
	data(3) <= '1';
	WAIT FOR 80000 ps;
	data(3) <= '0';
WAIT;
END PROCESS t_prcs_data_3;
-- data[2]
t_prcs_data_2: PROCESS
BEGIN
	data(2) <= '0';
	WAIT FOR 320000 ps;
	data(2) <= '1';
	WAIT FOR 80000 ps;
	data(2) <= '0';
WAIT;
END PROCESS t_prcs_data_2;
-- data[1]
t_prcs_data_1: PROCESS
BEGIN
	data(1) <= '0';
	WAIT FOR 160000 ps;
	data(1) <= '1';
	WAIT FOR 80000 ps;
	data(1) <= '0';
WAIT;
END PROCESS t_prcs_data_1;
-- data[0]
t_prcs_data_0: PROCESS
BEGIN
	data(0) <= '0';
	WAIT FOR 320000 ps;
	data(0) <= '1';
	WAIT FOR 80000 ps;
	data(0) <= '0';
WAIT;
END PROCESS t_prcs_data_0;

-- w
t_prcs_w: PROCESS
BEGIN
	w <= '0';
	WAIT FOR 160000 ps;
	w <= '1';
	WAIT FOR 80000 ps;
	w <= '0';
	WAIT FOR 80000 ps;
	w <= '1';
	WAIT FOR 80000 ps;
	w <= '0';
WAIT;
END PROCESS t_prcs_w;
END lab8part1_arch;
