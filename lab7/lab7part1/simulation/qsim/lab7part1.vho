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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition"

-- DATE "09/29/2022 10:14:05"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab7part1 IS
    PORT (
	sw1 : IN std_logic;
	key0 : IN std_logic;
	sw0 : IN std_logic;
	ledr : OUT std_logic_vector(9 DOWNTO 0)
	);
END lab7part1;

-- Design Ports Information
-- ledr[0]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[1]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[2]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[3]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[4]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[5]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[6]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[7]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[8]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[9]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw0	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key0	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw1	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab7part1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sw1 : std_logic;
SIGNAL ww_key0 : std_logic;
SIGNAL ww_sw0 : std_logic;
SIGNAL ww_ledr : std_logic_vector(9 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \key0~input_o\ : std_logic;
SIGNAL \key0~inputCLKENA0_outclk\ : std_logic;
SIGNAL \sw0~input_o\ : std_logic;
SIGNAL \sw1~input_o\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \comb~8_combout\ : std_logic;
SIGNAL \f3|Q~q\ : std_logic;
SIGNAL \F~0_combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \comb~14_combout\ : std_logic;
SIGNAL \f8|Q~q\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \comb~5_combout\ : std_logic;
SIGNAL \f1|Q~q\ : std_logic;
SIGNAL \A~0_combout\ : std_logic;
SIGNAL \comb~15_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \comb~11_combout\ : std_logic;
SIGNAL \f5|Q~q\ : std_logic;
SIGNAL \comb~6_combout\ : std_logic;
SIGNAL \comb~7_combout\ : std_logic;
SIGNAL \f2|Q~q\ : std_logic;
SIGNAL \comb~12_combout\ : std_logic;
SIGNAL \f6|Q~q\ : std_logic;
SIGNAL \comb~13_combout\ : std_logic;
SIGNAL \f7|Q~q\ : std_logic;
SIGNAL \E~0_combout\ : std_logic;
SIGNAL \comb~9_combout\ : std_logic;
SIGNAL \comb~10_combout\ : std_logic;
SIGNAL \f4|Q~q\ : std_logic;
SIGNAL \G~0_combout\ : std_logic;
SIGNAL \G~1_combout\ : std_logic;
SIGNAL \comb~4_combout\ : std_logic;
SIGNAL \f0|Q~q\ : std_logic;
SIGNAL \z~0_combout\ : std_logic;
SIGNAL \z~1_combout\ : std_logic;
SIGNAL \ALT_INV_comb~3_combout\ : std_logic;
SIGNAL \ALT_INV_comb~2_combout\ : std_logic;
SIGNAL \ALT_INV_A~0_combout\ : std_logic;
SIGNAL \ALT_INV_F~0_combout\ : std_logic;
SIGNAL \ALT_INV_G~1_combout\ : std_logic;
SIGNAL \ALT_INV_G~0_combout\ : std_logic;
SIGNAL \ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \ALT_INV_E~0_combout\ : std_logic;
SIGNAL \ALT_INV_z~0_combout\ : std_logic;
SIGNAL \f8|ALT_INV_Q~q\ : std_logic;
SIGNAL \f7|ALT_INV_Q~q\ : std_logic;
SIGNAL \f6|ALT_INV_Q~q\ : std_logic;
SIGNAL \f5|ALT_INV_Q~q\ : std_logic;
SIGNAL \f4|ALT_INV_Q~q\ : std_logic;
SIGNAL \f3|ALT_INV_Q~q\ : std_logic;
SIGNAL \f2|ALT_INV_Q~q\ : std_logic;
SIGNAL \f1|ALT_INV_Q~q\ : std_logic;
SIGNAL \f0|ALT_INV_Q~q\ : std_logic;
SIGNAL \ALT_INV_comb~6_combout\ : std_logic;
SIGNAL \ALT_INV_comb~9_combout\ : std_logic;
SIGNAL \ALT_INV_comb~15_combout\ : std_logic;
SIGNAL \ALT_INV_sw0~input_o\ : std_logic;
SIGNAL \ALT_INV_sw1~input_o\ : std_logic;
SIGNAL \ALT_INV_key0~inputCLKENA0_outclk\ : std_logic;

BEGIN

ww_sw1 <= sw1;
ww_key0 <= key0;
ww_sw0 <= sw0;
ledr <= ww_ledr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_comb~3_combout\ <= NOT \comb~3_combout\;
\ALT_INV_comb~2_combout\ <= NOT \comb~2_combout\;
\ALT_INV_A~0_combout\ <= NOT \A~0_combout\;
\ALT_INV_F~0_combout\ <= NOT \F~0_combout\;
\ALT_INV_G~1_combout\ <= NOT \G~1_combout\;
\ALT_INV_G~0_combout\ <= NOT \G~0_combout\;
\ALT_INV_comb~1_combout\ <= NOT \comb~1_combout\;
\ALT_INV_comb~0_combout\ <= NOT \comb~0_combout\;
\ALT_INV_E~0_combout\ <= NOT \E~0_combout\;
\ALT_INV_z~0_combout\ <= NOT \z~0_combout\;
\f8|ALT_INV_Q~q\ <= NOT \f8|Q~q\;
\f7|ALT_INV_Q~q\ <= NOT \f7|Q~q\;
\f6|ALT_INV_Q~q\ <= NOT \f6|Q~q\;
\f5|ALT_INV_Q~q\ <= NOT \f5|Q~q\;
\f4|ALT_INV_Q~q\ <= NOT \f4|Q~q\;
\f3|ALT_INV_Q~q\ <= NOT \f3|Q~q\;
\f2|ALT_INV_Q~q\ <= NOT \f2|Q~q\;
\f1|ALT_INV_Q~q\ <= NOT \f1|Q~q\;
\f0|ALT_INV_Q~q\ <= NOT \f0|Q~q\;
\ALT_INV_comb~6_combout\ <= NOT \comb~6_combout\;
\ALT_INV_comb~9_combout\ <= NOT \comb~9_combout\;
\ALT_INV_comb~15_combout\ <= NOT \comb~15_combout\;
\ALT_INV_sw0~input_o\ <= NOT \sw0~input_o\;
\ALT_INV_sw1~input_o\ <= NOT \sw1~input_o\;
\ALT_INV_key0~inputCLKENA0_outclk\ <= NOT \key0~inputCLKENA0_outclk\;

-- Location: IOOBUF_X0_Y18_N79
\ledr[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \f0|Q~q\,
	devoe => ww_devoe,
	o => ww_ledr(0));

-- Location: IOOBUF_X0_Y18_N96
\ledr[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \f1|Q~q\,
	devoe => ww_devoe,
	o => ww_ledr(1));

-- Location: IOOBUF_X0_Y18_N62
\ledr[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \f2|Q~q\,
	devoe => ww_devoe,
	o => ww_ledr(2));

-- Location: IOOBUF_X0_Y18_N45
\ledr[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \f3|Q~q\,
	devoe => ww_devoe,
	o => ww_ledr(3));

-- Location: IOOBUF_X0_Y19_N39
\ledr[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \f4|Q~q\,
	devoe => ww_devoe,
	o => ww_ledr(4));

-- Location: IOOBUF_X0_Y19_N56
\ledr[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \f5|Q~q\,
	devoe => ww_devoe,
	o => ww_ledr(5));

-- Location: IOOBUF_X0_Y19_N5
\ledr[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \f6|Q~q\,
	devoe => ww_devoe,
	o => ww_ledr(6));

-- Location: IOOBUF_X0_Y19_N22
\ledr[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \f7|Q~q\,
	devoe => ww_devoe,
	o => ww_ledr(7));

-- Location: IOOBUF_X0_Y20_N39
\ledr[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \f8|Q~q\,
	devoe => ww_devoe,
	o => ww_ledr(8));

-- Location: IOOBUF_X0_Y20_N56
\ledr[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \z~1_combout\,
	devoe => ww_devoe,
	o => ww_ledr(9));

-- Location: IOIBUF_X10_Y0_N92
\key0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key0,
	o => \key0~input_o\);

-- Location: CLKCTRL_G5
\key0~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \key0~input_o\,
	outclk => \key0~inputCLKENA0_outclk\);

-- Location: IOIBUF_X33_Y0_N41
\sw0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw0,
	o => \sw0~input_o\);

-- Location: IOIBUF_X33_Y0_N58
\sw1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw1,
	o => \sw1~input_o\);

-- Location: MLABCELL_X4_Y15_N6
\comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = ( !\f1|Q~q\ & ( \f0|Q~q\ & ( (!\f4|Q~q\ & (!\f5|Q~q\ & !\f3|Q~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f4|ALT_INV_Q~q\,
	datab => \f5|ALT_INV_Q~q\,
	datac => \f3|ALT_INV_Q~q\,
	datae => \f1|ALT_INV_Q~q\,
	dataf => \f0|ALT_INV_Q~q\,
	combout => \comb~0_combout\);

-- Location: LABCELL_X5_Y15_N9
\comb~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~8_combout\ = ( \E~0_combout\ & ( (!\sw1~input_o\ & (\f2|Q~q\ & \comb~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sw1~input_o\,
	datac => \f2|ALT_INV_Q~q\,
	datad => \ALT_INV_comb~0_combout\,
	dataf => \ALT_INV_E~0_combout\,
	combout => \comb~8_combout\);

-- Location: FF_X5_Y15_N11
\f3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key0~inputCLKENA0_outclk\,
	d => \comb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f3|Q~q\);

-- Location: LABCELL_X5_Y15_N15
\F~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \F~0_combout\ = ( !\f3|Q~q\ & ( (!\f1|Q~q\ & (\f5|Q~q\ & !\f4|Q~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_Q~q\,
	datac => \f5|ALT_INV_Q~q\,
	datad => \f4|ALT_INV_Q~q\,
	dataf => \f3|ALT_INV_Q~q\,
	combout => \F~0_combout\);

-- Location: LABCELL_X5_Y15_N33
\comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = ( \F~0_combout\ & ( (!\f2|Q~q\ & (\E~0_combout\ & ((\A~0_combout\) # (\f0|Q~q\)))) ) ) # ( !\F~0_combout\ & ( (!\f2|Q~q\ & (\A~0_combout\ & \E~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f2|ALT_INV_Q~q\,
	datab => \f0|ALT_INV_Q~q\,
	datac => \ALT_INV_A~0_combout\,
	datad => \ALT_INV_E~0_combout\,
	dataf => \ALT_INV_F~0_combout\,
	combout => \comb~2_combout\);

-- Location: LABCELL_X5_Y15_N6
\comb~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~14_combout\ = ( \G~0_combout\ & ( (\sw1~input_o\ & (!\f6|Q~q\ & (!\f7|Q~q\ $ (!\f8|Q~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000001000000001000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f7|ALT_INV_Q~q\,
	datab => \ALT_INV_sw1~input_o\,
	datac => \f6|ALT_INV_Q~q\,
	datad => \f8|ALT_INV_Q~q\,
	dataf => \ALT_INV_G~0_combout\,
	combout => \comb~14_combout\);

-- Location: FF_X5_Y15_N8
\f8|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key0~inputCLKENA0_outclk\,
	d => \comb~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f8|Q~q\);

-- Location: LABCELL_X5_Y15_N45
\comb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = ( !\f6|Q~q\ & ( (\G~0_combout\ & (!\f8|Q~q\ $ (!\f7|Q~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G~0_combout\,
	datac => \f8|ALT_INV_Q~q\,
	datad => \f7|ALT_INV_Q~q\,
	dataf => \f6|ALT_INV_Q~q\,
	combout => \comb~3_combout\);

-- Location: LABCELL_X5_Y15_N54
\comb~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~5_combout\ = ( \G~1_combout\ & ( !\sw1~input_o\ ) ) # ( !\G~1_combout\ & ( (!\sw1~input_o\ & ((\comb~3_combout\) # (\comb~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011001100000011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sw1~input_o\,
	datac => \ALT_INV_comb~2_combout\,
	datad => \ALT_INV_comb~3_combout\,
	dataf => \ALT_INV_G~1_combout\,
	combout => \comb~5_combout\);

-- Location: FF_X5_Y15_N56
\f1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key0~inputCLKENA0_outclk\,
	d => \comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|Q~q\);

-- Location: LABCELL_X5_Y15_N27
\A~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \A~0_combout\ = ( !\f0|Q~q\ & ( (!\f1|Q~q\ & (!\f5|Q~q\ & (!\f3|Q~q\ & !\f4|Q~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_Q~q\,
	datab => \f5|ALT_INV_Q~q\,
	datac => \f3|ALT_INV_Q~q\,
	datad => \f4|ALT_INV_Q~q\,
	dataf => \f0|ALT_INV_Q~q\,
	combout => \A~0_combout\);

-- Location: LABCELL_X5_Y15_N12
\comb~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~15_combout\ = ( \f1|Q~q\ & ( (!\f3|Q~q\ & (!\f4|Q~q\ & !\f2|Q~q\)) ) ) # ( !\f1|Q~q\ & ( (!\f3|Q~q\ & (!\f4|Q~q\ $ (!\f2|Q~q\))) # (\f3|Q~q\ & (!\f4|Q~q\ & !\f2|Q~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000000001111001100000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \f3|ALT_INV_Q~q\,
	datac => \f4|ALT_INV_Q~q\,
	datad => \f2|ALT_INV_Q~q\,
	dataf => \f1|ALT_INV_Q~q\,
	combout => \comb~15_combout\);

-- Location: LABCELL_X5_Y15_N48
\comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = ( !\f5|Q~q\ & ( \comb~15_combout\ & ( (!\f7|Q~q\ & (!\f6|Q~q\ & (!\f8|Q~q\ & \f0|Q~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f7|ALT_INV_Q~q\,
	datab => \f6|ALT_INV_Q~q\,
	datac => \f8|ALT_INV_Q~q\,
	datad => \f0|ALT_INV_Q~q\,
	datae => \f5|ALT_INV_Q~q\,
	dataf => \ALT_INV_comb~15_combout\,
	combout => \comb~1_combout\);

-- Location: LABCELL_X5_Y15_N57
\comb~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~11_combout\ = ( \comb~1_combout\ & ( \sw1~input_o\ ) ) # ( !\comb~1_combout\ & ( (!\f2|Q~q\ & (\sw1~input_o\ & (\A~0_combout\ & \E~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f2|ALT_INV_Q~q\,
	datab => \ALT_INV_sw1~input_o\,
	datac => \ALT_INV_A~0_combout\,
	datad => \ALT_INV_E~0_combout\,
	dataf => \ALT_INV_comb~1_combout\,
	combout => \comb~11_combout\);

-- Location: FF_X5_Y15_N59
\f5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key0~inputCLKENA0_outclk\,
	d => \comb~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f5|Q~q\);

-- Location: LABCELL_X5_Y15_N24
\comb~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~6_combout\ = ( !\f3|Q~q\ & ( (\f1|Q~q\ & !\f4|Q~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \f1|ALT_INV_Q~q\,
	datad => \f4|ALT_INV_Q~q\,
	dataf => \f3|ALT_INV_Q~q\,
	combout => \comb~6_combout\);

-- Location: LABCELL_X5_Y15_N3
\comb~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~7_combout\ = ( !\f2|Q~q\ & ( \comb~6_combout\ & ( (!\sw1~input_o\ & (\f0|Q~q\ & (!\f5|Q~q\ & \E~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw1~input_o\,
	datab => \f0|ALT_INV_Q~q\,
	datac => \f5|ALT_INV_Q~q\,
	datad => \ALT_INV_E~0_combout\,
	datae => \f2|ALT_INV_Q~q\,
	dataf => \ALT_INV_comb~6_combout\,
	combout => \comb~7_combout\);

-- Location: FF_X5_Y15_N5
\f2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key0~inputCLKENA0_outclk\,
	d => \comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f2|Q~q\);

-- Location: LABCELL_X5_Y15_N30
\comb~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~12_combout\ = ( \F~0_combout\ & ( (!\f2|Q~q\ & (\f0|Q~q\ & (\sw1~input_o\ & \E~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f2|ALT_INV_Q~q\,
	datab => \f0|ALT_INV_Q~q\,
	datac => \ALT_INV_sw1~input_o\,
	datad => \ALT_INV_E~0_combout\,
	dataf => \ALT_INV_F~0_combout\,
	combout => \comb~12_combout\);

-- Location: FF_X5_Y15_N32
\f6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key0~inputCLKENA0_outclk\,
	d => \comb~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f6|Q~q\);

-- Location: MLABCELL_X4_Y15_N54
\comb~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~13_combout\ = ( !\f7|Q~q\ & ( \G~0_combout\ & ( (\f6|Q~q\ & (\sw1~input_o\ & !\f8|Q~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f6|ALT_INV_Q~q\,
	datac => \ALT_INV_sw1~input_o\,
	datad => \f8|ALT_INV_Q~q\,
	datae => \f7|ALT_INV_Q~q\,
	dataf => \ALT_INV_G~0_combout\,
	combout => \comb~13_combout\);

-- Location: FF_X4_Y15_N56
\f7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key0~inputCLKENA0_outclk\,
	d => \comb~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f7|Q~q\);

-- Location: LABCELL_X5_Y15_N36
\E~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \E~0_combout\ = ( !\f6|Q~q\ & ( (!\f7|Q~q\ & !\f8|Q~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \f7|ALT_INV_Q~q\,
	datad => \f8|ALT_INV_Q~q\,
	dataf => \f6|ALT_INV_Q~q\,
	combout => \E~0_combout\);

-- Location: MLABCELL_X4_Y15_N51
\comb~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~9_combout\ = ( !\f3|Q~q\ & ( \f4|Q~q\ & ( !\f1|Q~q\ ) ) ) # ( \f3|Q~q\ & ( !\f4|Q~q\ & ( !\f1|Q~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \f1|ALT_INV_Q~q\,
	datae => \f3|ALT_INV_Q~q\,
	dataf => \f4|ALT_INV_Q~q\,
	combout => \comb~9_combout\);

-- Location: LABCELL_X5_Y15_N0
\comb~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~10_combout\ = ( !\f2|Q~q\ & ( \comb~9_combout\ & ( (!\sw1~input_o\ & (\f0|Q~q\ & (\E~0_combout\ & !\f5|Q~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw1~input_o\,
	datab => \f0|ALT_INV_Q~q\,
	datac => \ALT_INV_E~0_combout\,
	datad => \f5|ALT_INV_Q~q\,
	datae => \f2|ALT_INV_Q~q\,
	dataf => \ALT_INV_comb~9_combout\,
	combout => \comb~10_combout\);

-- Location: FF_X5_Y15_N2
\f4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key0~inputCLKENA0_outclk\,
	d => \comb~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f4|Q~q\);

-- Location: LABCELL_X5_Y15_N18
\G~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G~0_combout\ = ( !\f1|Q~q\ & ( !\f3|Q~q\ & ( (!\f4|Q~q\ & (!\f5|Q~q\ & (!\f2|Q~q\ & \f0|Q~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f4|ALT_INV_Q~q\,
	datab => \f5|ALT_INV_Q~q\,
	datac => \f2|ALT_INV_Q~q\,
	datad => \f0|ALT_INV_Q~q\,
	datae => \f1|ALT_INV_Q~q\,
	dataf => \f3|ALT_INV_Q~q\,
	combout => \G~0_combout\);

-- Location: LABCELL_X5_Y15_N42
\G~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G~1_combout\ = ( \f6|Q~q\ & ( (\G~0_combout\ & (!\f8|Q~q\ & !\f7|Q~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G~0_combout\,
	datab => \f8|ALT_INV_Q~q\,
	datac => \f7|ALT_INV_Q~q\,
	dataf => \f6|ALT_INV_Q~q\,
	combout => \G~1_combout\);

-- Location: LABCELL_X5_Y15_N39
\comb~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~4_combout\ = ( \comb~2_combout\ & ( \sw0~input_o\ ) ) # ( !\comb~2_combout\ & ( (\sw0~input_o\ & (((\comb~1_combout\) # (\comb~3_combout\)) # (\G~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101010101000101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw0~input_o\,
	datab => \ALT_INV_G~1_combout\,
	datac => \ALT_INV_comb~3_combout\,
	datad => \ALT_INV_comb~1_combout\,
	dataf => \ALT_INV_comb~2_combout\,
	combout => \comb~4_combout\);

-- Location: FF_X5_Y15_N41
\f0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key0~inputCLKENA0_outclk\,
	d => \comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f0|Q~q\);

-- Location: MLABCELL_X4_Y15_N21
\z~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \z~0_combout\ = ( !\f2|Q~q\ & ( !\f6|Q~q\ & ( (!\f7|Q~q\ & (!\f8|Q~q\ $ (!\f4|Q~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f7|ALT_INV_Q~q\,
	datac => \f8|ALT_INV_Q~q\,
	datad => \f4|ALT_INV_Q~q\,
	datae => \f2|ALT_INV_Q~q\,
	dataf => \f6|ALT_INV_Q~q\,
	combout => \z~0_combout\);

-- Location: MLABCELL_X4_Y15_N12
\z~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \z~1_combout\ = ( !\f5|Q~q\ & ( !\f3|Q~q\ & ( (\f0|Q~q\ & (!\f1|Q~q\ & \z~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f0|ALT_INV_Q~q\,
	datab => \f1|ALT_INV_Q~q\,
	datac => \ALT_INV_z~0_combout\,
	datae => \f5|ALT_INV_Q~q\,
	dataf => \f3|ALT_INV_Q~q\,
	combout => \z~1_combout\);

-- Location: LABCELL_X12_Y17_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


