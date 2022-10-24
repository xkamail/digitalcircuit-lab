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
-- Generated on "10/24/2022 09:18:58"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          processor
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY processor_vhd_vec_tst IS
END processor_vhd_vec_tst;
ARCHITECTURE processor_arch OF processor_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ADDR : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL busWires : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL data_in : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL debug_addrIn : STD_LOGIC;
SIGNAL debug_pr_in : STD_LOGIC;
SIGNAL done : STD_LOGIC;
SIGNAL DOUT : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL pc_v : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL reg_0 : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL reg_1 : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL reg_5 : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL reg_A : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL reg_G : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL reg_IR : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL reset_n : STD_LOGIC;
SIGNAL run : STD_LOGIC;
SIGNAL Tstep_Q : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Wr_en : STD_LOGIC;
COMPONENT processor
	PORT (
	ADDR : BUFFER STD_LOGIC_VECTOR(8 DOWNTO 0);
	busWires : BUFFER STD_LOGIC_VECTOR(8 DOWNTO 0);
	clk : IN STD_LOGIC;
	data_in : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
	debug_addrIn : BUFFER STD_LOGIC;
	debug_pr_in : BUFFER STD_LOGIC;
	done : BUFFER STD_LOGIC;
	DOUT : BUFFER STD_LOGIC_VECTOR(8 DOWNTO 0);
	pc_v : BUFFER STD_LOGIC_VECTOR(8 DOWNTO 0);
	reg_0 : BUFFER STD_LOGIC_VECTOR(8 DOWNTO 0);
	reg_1 : BUFFER STD_LOGIC_VECTOR(8 DOWNTO 0);
	reg_5 : BUFFER STD_LOGIC_VECTOR(8 DOWNTO 0);
	reg_A : BUFFER STD_LOGIC_VECTOR(8 DOWNTO 0);
	reg_G : BUFFER STD_LOGIC_VECTOR(8 DOWNTO 0);
	reg_IR : BUFFER STD_LOGIC_VECTOR(8 DOWNTO 0);
	reset_n : IN STD_LOGIC;
	run : IN STD_LOGIC;
	Tstep_Q : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	Wr_en : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : processor
	PORT MAP (
-- list connections between master ports and signals
	ADDR => ADDR,
	busWires => busWires,
	clk => clk,
	data_in => data_in,
	debug_addrIn => debug_addrIn,
	debug_pr_in => debug_pr_in,
	done => done,
	DOUT => DOUT,
	pc_v => pc_v,
	reg_0 => reg_0,
	reg_1 => reg_1,
	reg_5 => reg_5,
	reg_A => reg_A,
	reg_G => reg_G,
	reg_IR => reg_IR,
	reset_n => reset_n,
	run => run,
	Tstep_Q => Tstep_Q,
	Wr_en => Wr_en
	);

-- reset_n
t_prcs_reset_n: PROCESS
BEGIN
	reset_n <= '0';
	WAIT FOR 20000 ps;
	reset_n <= '1';
WAIT;
END PROCESS t_prcs_reset_n;

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 800000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- run
t_prcs_run: PROCESS
BEGIN
	run <= '0';
	WAIT FOR 20000 ps;
	run <= '1';
WAIT;
END PROCESS t_prcs_run;
-- data_in[8]
t_prcs_data_in_8: PROCESS
BEGIN
	data_in(8) <= '0';
	WAIT FOR 190000 ps;
	data_in(8) <= '1';
	WAIT FOR 360000 ps;
	data_in(8) <= '0';
WAIT;
END PROCESS t_prcs_data_in_8;
-- data_in[7]
t_prcs_data_in_7: PROCESS
BEGIN
	data_in(7) <= '0';
	WAIT FOR 20000 ps;
	data_in(7) <= '1';
	WAIT FOR 30000 ps;
	data_in(7) <= '0';
	WAIT FOR 40000 ps;
	data_in(7) <= '1';
	WAIT FOR 20000 ps;
	data_in(7) <= '0';
	WAIT FOR 160000 ps;
	data_in(7) <= '1';
	WAIT FOR 40000 ps;
	data_in(7) <= '0';
	WAIT FOR 80000 ps;
	data_in(7) <= '1';
	WAIT FOR 40000 ps;
	data_in(7) <= '0';
	WAIT FOR 80000 ps;
	data_in(7) <= '1';
	WAIT FOR 40000 ps;
	data_in(7) <= '0';
WAIT;
END PROCESS t_prcs_data_in_7;
-- data_in[6]
t_prcs_data_in_6: PROCESS
BEGIN
	data_in(6) <= '0';
	WAIT FOR 150000 ps;
	data_in(6) <= '1';
	WAIT FOR 40000 ps;
	data_in(6) <= '0';
	WAIT FOR 80000 ps;
	data_in(6) <= '1';
	WAIT FOR 40000 ps;
	data_in(6) <= '0';
	WAIT FOR 80000 ps;
	data_in(6) <= '1';
	WAIT FOR 40000 ps;
	data_in(6) <= '0';
	WAIT FOR 80000 ps;
	data_in(6) <= '1';
	WAIT FOR 40000 ps;
	data_in(6) <= '0';
WAIT;
END PROCESS t_prcs_data_in_6;
-- data_in[5]
t_prcs_data_in_5: PROCESS
BEGIN
	data_in(5) <= '0';
	WAIT FOR 150000 ps;
	data_in(5) <= '1';
	WAIT FOR 40000 ps;
	data_in(5) <= '0';
	WAIT FOR 80000 ps;
	data_in(5) <= '1';
	WAIT FOR 40000 ps;
	data_in(5) <= '0';
	WAIT FOR 80000 ps;
	data_in(5) <= '1';
	WAIT FOR 40000 ps;
	data_in(5) <= '0';
	WAIT FOR 80000 ps;
	data_in(5) <= '1';
	WAIT FOR 40000 ps;
	data_in(5) <= '0';
WAIT;
END PROCESS t_prcs_data_in_5;
-- data_in[4]
t_prcs_data_in_4: PROCESS
BEGIN
	data_in(4) <= '0';
	WAIT FOR 270000 ps;
	data_in(4) <= '1';
	WAIT FOR 40000 ps;
	data_in(4) <= '0';
	WAIT FOR 80000 ps;
	data_in(4) <= '1';
	WAIT FOR 40000 ps;
	data_in(4) <= '0';
	WAIT FOR 80000 ps;
	data_in(4) <= '1';
	WAIT FOR 40000 ps;
	data_in(4) <= '0';
WAIT;
END PROCESS t_prcs_data_in_4;
-- data_in[3]
t_prcs_data_in_3: PROCESS
BEGIN
	data_in(3) <= '0';
	WAIT FOR 90000 ps;
	data_in(3) <= '1';
	WAIT FOR 20000 ps;
	data_in(3) <= '0';
	WAIT FOR 40000 ps;
	data_in(3) <= '1';
	WAIT FOR 400000 ps;
	data_in(3) <= '0';
WAIT;
END PROCESS t_prcs_data_in_3;
-- data_in[2]
t_prcs_data_in_2: PROCESS
BEGIN
	data_in(2) <= '0';
	WAIT FOR 150000 ps;
	data_in(2) <= '1';
	WAIT FOR 40000 ps;
	data_in(2) <= '0';
	WAIT FOR 80000 ps;
	data_in(2) <= '1';
	WAIT FOR 40000 ps;
	data_in(2) <= '0';
	WAIT FOR 80000 ps;
	data_in(2) <= '1';
	WAIT FOR 40000 ps;
	data_in(2) <= '0';
	WAIT FOR 80000 ps;
	data_in(2) <= '1';
	WAIT FOR 40000 ps;
	data_in(2) <= '0';
WAIT;
END PROCESS t_prcs_data_in_2;
-- data_in[1]
t_prcs_data_in_1: PROCESS
BEGIN
	data_in(1) <= '0';
	WAIT FOR 110000 ps;
	data_in(1) <= '1';
	WAIT FOR 80000 ps;
	data_in(1) <= '0';
WAIT;
END PROCESS t_prcs_data_in_1;
-- data_in[0]
t_prcs_data_in_0: PROCESS
BEGIN
	data_in(0) <= '0';
	WAIT FOR 50000 ps;
	data_in(0) <= '1';
	WAIT FOR 40000 ps;
	data_in(0) <= '0';
	WAIT FOR 20000 ps;
	data_in(0) <= '1';
	WAIT FOR 80000 ps;
	data_in(0) <= '0';
	WAIT FOR 80000 ps;
	data_in(0) <= '1';
	WAIT FOR 40000 ps;
	data_in(0) <= '0';
	WAIT FOR 80000 ps;
	data_in(0) <= '1';
	WAIT FOR 40000 ps;
	data_in(0) <= '0';
	WAIT FOR 80000 ps;
	data_in(0) <= '1';
	WAIT FOR 40000 ps;
	data_in(0) <= '0';
WAIT;
END PROCESS t_prcs_data_in_0;
END processor_arch;
