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

-- DATE "09/29/2022 10:29:38"

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

ENTITY 	lab7part3 IS
    PORT (
	sw1 : IN std_logic;
	key0 : IN std_logic;
	sw0 : IN std_logic;
	ledr : OUT std_logic_vector(9 DOWNTO 0)
	);
END lab7part3;

-- Design Ports Information
-- ledr[0]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[1]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[2]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[3]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[4]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[5]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[6]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[7]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[8]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[9]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw1	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key0	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw0	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab7part3 IS
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
SIGNAL \sw1~input_o\ : std_logic;
SIGNAL \u1|temp[0]~feeder_combout\ : std_logic;
SIGNAL \sw0~input_o\ : std_logic;
SIGNAL \u1|temp[1]~feeder_combout\ : std_logic;
SIGNAL \u1|temp[1]~DUPLICATE_q\ : std_logic;
SIGNAL \u1|temp[2]~DUPLICATE_q\ : std_logic;
SIGNAL \u2|temp[0]~0_combout\ : std_logic;
SIGNAL \u2|temp[1]~feeder_combout\ : std_logic;
SIGNAL \u2|temp[1]~DUPLICATE_q\ : std_logic;
SIGNAL \u2|temp[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \z~0_combout\ : std_logic;
SIGNAL \u1|temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u2|temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u1|ALT_INV_temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u2|ALT_INV_temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u2|ALT_INV_temp[2]~DUPLICATE_q\ : std_logic;
SIGNAL \u2|ALT_INV_temp[1]~DUPLICATE_q\ : std_logic;
SIGNAL \u1|ALT_INV_temp[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_key0~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_sw1~input_o\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;

BEGIN

ww_sw1 <= sw1;
ww_key0 <= key0;
ww_sw0 <= sw0;
ledr <= ww_ledr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\u1|ALT_INV_temp\(2) <= NOT \u1|temp\(2);
\u1|ALT_INV_temp\(3) <= NOT \u1|temp\(3);
\u2|ALT_INV_temp\(0) <= NOT \u2|temp\(0);
\u1|ALT_INV_temp\(0) <= NOT \u1|temp\(0);
\u2|ALT_INV_temp[2]~DUPLICATE_q\ <= NOT \u2|temp[2]~DUPLICATE_q\;
\u2|ALT_INV_temp[1]~DUPLICATE_q\ <= NOT \u2|temp[1]~DUPLICATE_q\;
\u1|ALT_INV_temp[1]~DUPLICATE_q\ <= NOT \u1|temp[1]~DUPLICATE_q\;
\ALT_INV_key0~inputCLKENA0_outclk\ <= NOT \key0~inputCLKENA0_outclk\;
\ALT_INV_sw1~input_o\ <= NOT \sw1~input_o\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\u2|ALT_INV_temp\(3) <= NOT \u2|temp\(3);

-- Location: IOOBUF_X23_Y0_N42
\ledr[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|temp\(0),
	devoe => ww_devoe,
	o => ww_ledr(0));

-- Location: IOOBUF_X24_Y0_N36
\ledr[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|temp\(1),
	devoe => ww_devoe,
	o => ww_ledr(1));

-- Location: IOOBUF_X23_Y0_N93
\ledr[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|temp\(2),
	devoe => ww_devoe,
	o => ww_ledr(2));

-- Location: IOOBUF_X24_Y0_N2
\ledr[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|temp\(3),
	devoe => ww_devoe,
	o => ww_ledr(3));

-- Location: IOOBUF_X24_Y0_N53
\ledr[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|temp\(0),
	devoe => ww_devoe,
	o => ww_ledr(4));

-- Location: IOOBUF_X22_Y0_N36
\ledr[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|temp\(1),
	devoe => ww_devoe,
	o => ww_ledr(5));

-- Location: IOOBUF_X23_Y0_N76
\ledr[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|temp\(2),
	devoe => ww_devoe,
	o => ww_ledr(6));

-- Location: IOOBUF_X24_Y0_N19
\ledr[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|temp\(3),
	devoe => ww_devoe,
	o => ww_ledr(7));

-- Location: IOOBUF_X33_Y0_N59
\ledr[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ledr(8));

-- Location: IOOBUF_X23_Y0_N59
\ledr[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \z~0_combout\,
	devoe => ww_devoe,
	o => ww_ledr(9));

-- Location: IOIBUF_X54_Y18_N61
\key0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key0,
	o => \key0~input_o\);

-- Location: CLKCTRL_G10
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

-- Location: IOIBUF_X22_Y0_N52
\sw1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw1,
	o => \sw1~input_o\);

-- Location: MLABCELL_X23_Y1_N45
\u1|temp[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|temp[0]~feeder_combout\ = ( \sw1~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_sw1~input_o\,
	combout => \u1|temp[0]~feeder_combout\);

-- Location: IOIBUF_X22_Y0_N18
\sw0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw0,
	o => \sw0~input_o\);

-- Location: FF_X23_Y1_N47
\u1|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key0~inputCLKENA0_outclk\,
	d => \u1|temp[0]~feeder_combout\,
	clrn => \sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|temp\(0));

-- Location: MLABCELL_X23_Y1_N6
\u1|temp[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|temp[1]~feeder_combout\ = \u1|temp\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|ALT_INV_temp\(0),
	combout => \u1|temp[1]~feeder_combout\);

-- Location: FF_X23_Y1_N7
\u1|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key0~inputCLKENA0_outclk\,
	d => \u1|temp[1]~feeder_combout\,
	clrn => \sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|temp\(1));

-- Location: FF_X23_Y1_N8
\u1|temp[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key0~inputCLKENA0_outclk\,
	d => \u1|temp[1]~feeder_combout\,
	clrn => \sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|temp[1]~DUPLICATE_q\);

-- Location: FF_X23_Y1_N49
\u1|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key0~inputCLKENA0_outclk\,
	asdata => \u1|temp[1]~DUPLICATE_q\,
	clrn => \sw0~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|temp\(2));

-- Location: FF_X23_Y1_N50
\u1|temp[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key0~inputCLKENA0_outclk\,
	asdata => \u1|temp[1]~DUPLICATE_q\,
	clrn => \sw0~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|temp[2]~DUPLICATE_q\);

-- Location: FF_X23_Y1_N53
\u1|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key0~inputCLKENA0_outclk\,
	asdata => \u1|temp[2]~DUPLICATE_q\,
	clrn => \sw0~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|temp\(3));

-- Location: MLABCELL_X23_Y1_N39
\u2|temp[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|temp[0]~0_combout\ = ( !\sw1~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_sw1~input_o\,
	combout => \u2|temp[0]~0_combout\);

-- Location: FF_X23_Y1_N41
\u2|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key0~inputCLKENA0_outclk\,
	d => \u2|temp[0]~0_combout\,
	clrn => \sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|temp\(0));

-- Location: MLABCELL_X23_Y1_N12
\u2|temp[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|temp[1]~feeder_combout\ = \u2|temp\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|ALT_INV_temp\(0),
	combout => \u2|temp[1]~feeder_combout\);

-- Location: FF_X23_Y1_N13
\u2|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key0~inputCLKENA0_outclk\,
	d => \u2|temp[1]~feeder_combout\,
	clrn => \sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|temp\(1));

-- Location: FF_X23_Y1_N14
\u2|temp[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key0~inputCLKENA0_outclk\,
	d => \u2|temp[1]~feeder_combout\,
	clrn => \sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|temp[1]~DUPLICATE_q\);

-- Location: FF_X23_Y1_N58
\u2|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key0~inputCLKENA0_outclk\,
	asdata => \u2|temp[1]~DUPLICATE_q\,
	clrn => \sw0~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|temp\(2));

-- Location: FF_X23_Y1_N59
\u2|temp[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key0~inputCLKENA0_outclk\,
	asdata => \u2|temp[1]~DUPLICATE_q\,
	clrn => \sw0~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|temp[2]~DUPLICATE_q\);

-- Location: FF_X23_Y1_N56
\u2|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key0~inputCLKENA0_outclk\,
	asdata => \u2|temp[2]~DUPLICATE_q\,
	clrn => \sw0~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|temp\(3));

-- Location: MLABCELL_X23_Y1_N51
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( \u1|temp\(2) & ( \u1|temp[1]~DUPLICATE_q\ & ( (\u1|temp\(3) & \u1|temp\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_temp\(3),
	datac => \u1|ALT_INV_temp\(0),
	datae => \u1|ALT_INV_temp\(2),
	dataf => \u1|ALT_INV_temp[1]~DUPLICATE_q\,
	combout => \Equal0~0_combout\);

-- Location: MLABCELL_X23_Y1_N54
\z~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \z~0_combout\ = ( \u2|temp[2]~DUPLICATE_q\ & ( \u2|temp[1]~DUPLICATE_q\ & ( ((\u2|temp\(0) & \u2|temp\(3))) # (\Equal0~0_combout\) ) ) ) # ( !\u2|temp[2]~DUPLICATE_q\ & ( \u2|temp[1]~DUPLICATE_q\ & ( \Equal0~0_combout\ ) ) ) # ( \u2|temp[2]~DUPLICATE_q\ & 
-- ( !\u2|temp[1]~DUPLICATE_q\ & ( \Equal0~0_combout\ ) ) ) # ( !\u2|temp[2]~DUPLICATE_q\ & ( !\u2|temp[1]~DUPLICATE_q\ & ( \Equal0~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \u2|ALT_INV_temp\(0),
	datac => \u2|ALT_INV_temp\(3),
	datae => \u2|ALT_INV_temp[2]~DUPLICATE_q\,
	dataf => \u2|ALT_INV_temp[1]~DUPLICATE_q\,
	combout => \z~0_combout\);

-- Location: LABCELL_X39_Y8_N0
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


