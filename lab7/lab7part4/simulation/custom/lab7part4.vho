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

-- DATE "09/29/2022 12:04:10"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for Custom VHDL only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab7part4 IS
    PORT (
	sw : IN std_logic_vector(2 DOWNTO 0);
	key1 : IN std_logic;
	key0 : IN std_logic;
	clk50 : IN std_logic;
	led : BUFFER std_logic_vector(1 DOWNTO 0);
	ledr : BUFFER std_logic
	);
END lab7part4;

-- Design Ports Information
-- key1	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk50	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[0]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[1]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key0	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab7part4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sw : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_key1 : std_logic;
SIGNAL ww_key0 : std_logic;
SIGNAL ww_clk50 : std_logic;
SIGNAL ww_led : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ledr : std_logic;
SIGNAL \key1~input_o\ : std_logic;
SIGNAL \clk50~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \key0~input_o\ : std_logic;
SIGNAL \key0~inputCLKENA0_outclk\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \c2|q~1_combout\ : std_logic;
SIGNAL \c2|q~0_combout\ : std_logic;
SIGNAL \y_Q~6feeder_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \y_Q~6_q\ : std_logic;
SIGNAL \y_Q~4feeder_combout\ : std_logic;
SIGNAL \y_Q~4_q\ : std_logic;
SIGNAL \y_Q.B~0_combout\ : std_logic;
SIGNAL \c2|q\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_key0~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_sw[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_y_Q.B~0_combout\ : std_logic;
SIGNAL \ALT_INV_y_Q~6_q\ : std_logic;
SIGNAL \ALT_INV_y_Q~4_q\ : std_logic;
SIGNAL \c2|ALT_INV_q\ : std_logic_vector(1 DOWNTO 0);

BEGIN

ww_sw <= sw;
ww_key1 <= key1;
ww_key0 <= key0;
ww_clk50 <= clk50;
led <= ww_led;
ledr <= ww_ledr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_key0~inputCLKENA0_outclk\ <= NOT \key0~inputCLKENA0_outclk\;
\ALT_INV_sw[2]~input_o\ <= NOT \sw[2]~input_o\;
\ALT_INV_sw[1]~input_o\ <= NOT \sw[1]~input_o\;
\ALT_INV_sw[0]~input_o\ <= NOT \sw[0]~input_o\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_y_Q.B~0_combout\ <= NOT \y_Q.B~0_combout\;
\ALT_INV_y_Q~6_q\ <= NOT \y_Q~6_q\;
\ALT_INV_y_Q~4_q\ <= NOT \y_Q~4_q\;
\c2|ALT_INV_q\(1) <= NOT \c2|q\(1);
\c2|ALT_INV_q\(0) <= NOT \c2|q\(0);

-- Location: IOOBUF_X0_Y18_N79
\led[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \c2|q\(0),
	devoe => ww_devoe,
	o => ww_led(0));

-- Location: IOOBUF_X0_Y18_N96
\led[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \c2|q\(1),
	devoe => ww_devoe,
	o => ww_led(1));

-- Location: IOOBUF_X0_Y20_N56
\ledr~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y_Q.B~0_combout\,
	devoe => ww_devoe,
	o => ww_ledr);

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
\sw[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\sw[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: IOIBUF_X33_Y0_N58
\sw[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: LABCELL_X16_Y4_N39
\c2|q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \c2|q~1_combout\ = ( \c2|q\(1) & ( \sw[1]~input_o\ & ( (!\c2|q\(0) & (!\sw[0]~input_o\ $ (\sw[2]~input_o\))) ) ) ) # ( !\c2|q\(1) & ( \sw[1]~input_o\ & ( \c2|q\(0) ) ) ) # ( \c2|q\(1) & ( !\sw[1]~input_o\ & ( !\c2|q\(0) ) ) ) # ( !\c2|q\(1) & ( 
-- !\sw[1]~input_o\ & ( (\c2|q\(0) & ((\sw[2]~input_o\) # (\sw[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101101010101010101001010101010101011010000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c2|ALT_INV_q\(0),
	datac => \ALT_INV_sw[0]~input_o\,
	datad => \ALT_INV_sw[2]~input_o\,
	datae => \c2|ALT_INV_q\(1),
	dataf => \ALT_INV_sw[1]~input_o\,
	combout => \c2|q~1_combout\);

-- Location: FF_X16_Y4_N41
\c2|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key0~inputCLKENA0_outclk\,
	d => \c2|q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c2|q\(1));

-- Location: LABCELL_X16_Y4_N54
\c2|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c2|q~0_combout\ = ( !\c2|q\(0) & ( \sw[2]~input_o\ & ( (!\c2|q\(1) $ (!\sw[1]~input_o\)) # (\sw[0]~input_o\) ) ) ) # ( !\c2|q\(0) & ( !\sw[2]~input_o\ & ( (!\c2|q\(1)) # ((!\sw[1]~input_o\) # (!\sw[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111100000000000000000000111100111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \c2|ALT_INV_q\(1),
	datac => \ALT_INV_sw[1]~input_o\,
	datad => \ALT_INV_sw[0]~input_o\,
	datae => \c2|ALT_INV_q\(0),
	dataf => \ALT_INV_sw[2]~input_o\,
	combout => \c2|q~0_combout\);

-- Location: FF_X16_Y4_N56
\c2|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key0~inputCLKENA0_outclk\,
	d => \c2|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c2|q\(0));

-- Location: LABCELL_X16_Y4_N51
\y_Q~6feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \y_Q~6feeder_combout\ = ( \y_Q.B~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_y_Q.B~0_combout\,
	combout => \y_Q~6feeder_combout\);

-- Location: LABCELL_X16_Y4_N42
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( \c2|q\(0) & ( \c2|q\(1) & ( !\sw[0]~input_o\ $ (((!\sw[1]~input_o\) # (\sw[2]~input_o\))) ) ) ) # ( !\c2|q\(0) & ( \c2|q\(1) & ( (\sw[1]~input_o\ & (!\sw[2]~input_o\ $ (!\sw[0]~input_o\))) ) ) ) # ( \c2|q\(0) & ( !\c2|q\(1) & ( 
-- (!\sw[2]~input_o\ & (!\sw[0]~input_o\ & !\sw[1]~input_o\)) ) ) ) # ( !\c2|q\(0) & ( !\c2|q\(1) & ( (\sw[2]~input_o\ & (!\sw[0]~input_o\ & !\sw[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000100000001000000000000110000001100011100100111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[2]~input_o\,
	datab => \ALT_INV_sw[0]~input_o\,
	datac => \ALT_INV_sw[1]~input_o\,
	datae => \c2|ALT_INV_q\(0),
	dataf => \c2|ALT_INV_q\(1),
	combout => \Equal0~0_combout\);

-- Location: FF_X16_Y4_N52
\y_Q~6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key0~inputCLKENA0_outclk\,
	d => \y_Q~6feeder_combout\,
	clrn => \ALT_INV_Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_Q~6_q\);

-- Location: LABCELL_X16_Y4_N48
\y_Q~4feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \y_Q~4feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \y_Q~4feeder_combout\);

-- Location: FF_X16_Y4_N50
\y_Q~4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key0~inputCLKENA0_outclk\,
	d => \y_Q~4feeder_combout\,
	clrn => \ALT_INV_Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_Q~4_q\);

-- Location: LABCELL_X16_Y4_N30
\y_Q.B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \y_Q.B~0_combout\ = ( !\y_Q~6_q\ & ( \y_Q~4_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_y_Q~6_q\,
	dataf => \ALT_INV_y_Q~4_q\,
	combout => \y_Q.B~0_combout\);

-- Location: IOIBUF_X11_Y0_N35
\key1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key1,
	o => \key1~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\clk50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk50,
	o => \clk50~input_o\);

-- Location: LABCELL_X48_Y41_N3
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


