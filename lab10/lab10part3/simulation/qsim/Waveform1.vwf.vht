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
-- Generated on "10/26/2022 01:17:52"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          lab10part3
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY lab10part3_vhd_vec_tst IS
END lab10part3_vhd_vec_tst;
ARCHITECTURE lab10part3_arch OF lab10part3_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ADDR : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL data_in : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL DOUT : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL IR : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL key0 : STD_LOGIC;
SIGNAL ledr : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL p_W : STD_LOGIC;
SIGNAL reg_0 : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL reg_1 : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL reg_2 : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL reg_3 : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL reg_4 : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL reg_5 : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL reg_7 : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL sw9 : STD_LOGIC;
SIGNAL Tstep_Q : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT lab10part3
	PORT (
	ADDR : BUFFER STD_LOGIC_VECTOR(8 DOWNTO 0);
	clk : IN STD_LOGIC;
	data_in : BUFFER STD_LOGIC_VECTOR(8 DOWNTO 0);
	DOUT : BUFFER STD_LOGIC_VECTOR(8 DOWNTO 0);
	IR : BUFFER STD_LOGIC_VECTOR(8 DOWNTO 0);
	key0 : IN STD_LOGIC;
	ledr : BUFFER STD_LOGIC_VECTOR(8 DOWNTO 0);
	p_W : BUFFER STD_LOGIC;
	reg_0 : BUFFER STD_LOGIC_VECTOR(8 DOWNTO 0);
	reg_1 : BUFFER STD_LOGIC_VECTOR(8 DOWNTO 0);
	reg_2 : BUFFER STD_LOGIC_VECTOR(8 DOWNTO 0);
	reg_3 : BUFFER STD_LOGIC_VECTOR(8 DOWNTO 0);
	reg_4 : BUFFER STD_LOGIC_VECTOR(8 DOWNTO 0);
	reg_5 : BUFFER STD_LOGIC_VECTOR(8 DOWNTO 0);
	reg_7 : BUFFER STD_LOGIC_VECTOR(8 DOWNTO 0);
	sw9 : IN STD_LOGIC;
	Tstep_Q : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : lab10part3
	PORT MAP (
-- list connections between master ports and signals
	ADDR => ADDR,
	clk => clk,
	data_in => data_in,
	DOUT => DOUT,
	IR => IR,
	key0 => key0,
	ledr => ledr,
	p_W => p_W,
	reg_0 => reg_0,
	reg_1 => reg_1,
	reg_2 => reg_2,
	reg_3 => reg_3,
	reg_4 => reg_4,
	reg_5 => reg_5,
	reg_7 => reg_7,
	sw9 => sw9,
	Tstep_Q => Tstep_Q
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 6000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- key0
t_prcs_key0: PROCESS
BEGIN
	key0 <= '0';
	WAIT FOR 10000 ps;
	key0 <= '1';
WAIT;
END PROCESS t_prcs_key0;

-- sw9
t_prcs_sw9: PROCESS
BEGIN
	sw9 <= '0';
	WAIT FOR 20000 ps;
	sw9 <= '1';
WAIT;
END PROCESS t_prcs_sw9;
END lab10part3_arch;
