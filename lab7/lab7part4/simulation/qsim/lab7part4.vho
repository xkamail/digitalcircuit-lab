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

-- DATE "10/06/2022 11:05:17"

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

ENTITY 	lab7part4 IS
    PORT (
	sw : IN std_logic_vector(2 DOWNTO 0);
	key1 : IN std_logic;
	key0 : IN std_logic;
	clk50 : IN std_logic;
	led : OUT std_logic_vector(2 DOWNTO 0);
	d_clk : OUT std_logic;
	ledr : OUT std_logic
	);
END lab7part4;

-- Design Ports Information
-- led[0]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[1]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[2]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_clk	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key1	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key0	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk50	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_led : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_d_clk : std_logic;
SIGNAL ww_ledr : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk50~input_o\ : std_logic;
SIGNAL \key0~input_o\ : std_logic;
SIGNAL \clk50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \u1|i[0]~DUPLICATE_q\ : std_logic;
SIGNAL \u1|i[1]~DUPLICATE_q\ : std_logic;
SIGNAL \u1|i~1_combout\ : std_logic;
SIGNAL \u1|i[2]~DUPLICATE_q\ : std_logic;
SIGNAL \u1|i~0_combout\ : std_logic;
SIGNAL \u1|i~2_combout\ : std_logic;
SIGNAL \u1|trig~0_combout\ : std_logic;
SIGNAL \u1|trig~feeder_combout\ : std_logic;
SIGNAL \u1|trig~q\ : std_logic;
SIGNAL \key1~input_o\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \u2|temp~2_combout\ : std_logic;
SIGNAL \u3|q~0_combout\ : std_logic;
SIGNAL \count_en~combout\ : std_logic;
SIGNAL \u3|q~1_combout\ : std_logic;
SIGNAL \u3|q[1]~feeder_combout\ : std_logic;
SIGNAL \u3|q~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \y_Q~8_combout\ : std_logic;
SIGNAL \y_Q~5_q\ : std_logic;
SIGNAL \y_Q~9_combout\ : std_logic;
SIGNAL \y_Q~6_q\ : std_logic;
SIGNAL \u2|temp[1]~4_combout\ : std_logic;
SIGNAL \u2|temp~3_combout\ : std_logic;
SIGNAL \u2|temp[2]~feeder_combout\ : std_logic;
SIGNAL \u2|temp~0_combout\ : std_logic;
SIGNAL \u2|temp~1_combout\ : std_logic;
SIGNAL \y_Q~7_combout\ : std_logic;
SIGNAL \y_Q~4feeder_combout\ : std_logic;
SIGNAL \y_Q~4_q\ : std_logic;
SIGNAL \z~0_combout\ : std_logic;
SIGNAL \u1|i\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u2|temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u3|q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u1|ALT_INV_i\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_y_Q~7_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \u3|ALT_INV_q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u2|ALT_INV_temp\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \ALT_INV_z~0_combout\ : std_logic;
SIGNAL \u1|ALT_INV_trig~q\ : std_logic;
SIGNAL \ALT_INV_y_Q~6_q\ : std_logic;
SIGNAL \ALT_INV_y_Q~5_q\ : std_logic;
SIGNAL \ALT_INV_y_Q~4_q\ : std_logic;
SIGNAL \u1|ALT_INV_trig~0_combout\ : std_logic;
SIGNAL \u2|ALT_INV_temp~0_combout\ : std_logic;
SIGNAL \u3|ALT_INV_q~1_combout\ : std_logic;
SIGNAL \u2|ALT_INV_temp~2_combout\ : std_logic;
SIGNAL \u2|ALT_INV_temp~3_combout\ : std_logic;
SIGNAL \ALT_INV_sw[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_key1~input_o\ : std_logic;
SIGNAL \ALT_INV_key0~input_o\ : std_logic;
SIGNAL \u1|ALT_INV_i[1]~DUPLICATE_q\ : std_logic;
SIGNAL \u1|ALT_INV_i[0]~DUPLICATE_q\ : std_logic;
SIGNAL \u1|ALT_INV_i[2]~DUPLICATE_q\ : std_logic;

BEGIN

ww_sw <= sw;
ww_key1 <= key1;
ww_key0 <= key0;
ww_clk50 <= clk50;
led <= ww_led;
d_clk <= ww_d_clk;
ledr <= ww_ledr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\u1|ALT_INV_i\(0) <= NOT \u1|i\(0);
\ALT_INV_y_Q~7_combout\ <= NOT \y_Q~7_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\u3|ALT_INV_q\(2) <= NOT \u3|q\(2);
\u3|ALT_INV_q\(1) <= NOT \u3|q\(1);
\u3|ALT_INV_q\(0) <= NOT \u3|q\(0);
\u2|ALT_INV_temp\(3) <= NOT \u2|temp\(3);
\ALT_INV_z~0_combout\ <= NOT \z~0_combout\;
\u1|ALT_INV_trig~q\ <= NOT \u1|trig~q\;
\ALT_INV_y_Q~6_q\ <= NOT \y_Q~6_q\;
\ALT_INV_y_Q~5_q\ <= NOT \y_Q~5_q\;
\ALT_INV_y_Q~4_q\ <= NOT \y_Q~4_q\;
\u1|ALT_INV_i\(2) <= NOT \u1|i\(2);
\u1|ALT_INV_i\(1) <= NOT \u1|i\(1);
\u1|ALT_INV_trig~0_combout\ <= NOT \u1|trig~0_combout\;
\u2|ALT_INV_temp\(2) <= NOT \u2|temp\(2);
\u2|ALT_INV_temp~0_combout\ <= NOT \u2|temp~0_combout\;
\u3|ALT_INV_q~1_combout\ <= NOT \u3|q~1_combout\;
\u2|ALT_INV_temp\(1) <= NOT \u2|temp\(1);
\u2|ALT_INV_temp~2_combout\ <= NOT \u2|temp~2_combout\;
\u2|ALT_INV_temp~3_combout\ <= NOT \u2|temp~3_combout\;
\ALT_INV_sw[0]~input_o\ <= NOT \sw[0]~input_o\;
\ALT_INV_sw[1]~input_o\ <= NOT \sw[1]~input_o\;
\ALT_INV_sw[2]~input_o\ <= NOT \sw[2]~input_o\;
\ALT_INV_key1~input_o\ <= NOT \key1~input_o\;
\ALT_INV_key0~input_o\ <= NOT \key0~input_o\;
\u1|ALT_INV_i[1]~DUPLICATE_q\ <= NOT \u1|i[1]~DUPLICATE_q\;
\u1|ALT_INV_i[0]~DUPLICATE_q\ <= NOT \u1|i[0]~DUPLICATE_q\;
\u1|ALT_INV_i[2]~DUPLICATE_q\ <= NOT \u1|i[2]~DUPLICATE_q\;

-- Location: IOOBUF_X0_Y18_N79
\led[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y_Q~4_q\,
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
	i => \y_Q~5_q\,
	devoe => ww_devoe,
	o => ww_led(1));

-- Location: IOOBUF_X0_Y18_N62
\led[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y_Q~6_q\,
	devoe => ww_devoe,
	o => ww_led(2));

-- Location: IOOBUF_X19_Y0_N2
\d_clk~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|trig~q\,
	devoe => ww_devoe,
	o => ww_d_clk);

-- Location: IOOBUF_X0_Y20_N56
\ledr~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_z~0_combout\,
	devoe => ww_devoe,
	o => ww_ledr);

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

-- Location: CLKCTRL_G6
\clk50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk50~input_o\,
	outclk => \clk50~inputCLKENA0_outclk\);

-- Location: FF_X21_Y1_N50
\u1|i[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputCLKENA0_outclk\,
	d => \u1|i~0_combout\,
	clrn => \key0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|i[0]~DUPLICATE_q\);

-- Location: FF_X21_Y1_N47
\u1|i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputCLKENA0_outclk\,
	d => \u1|i~1_combout\,
	clrn => \key0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|i\(2));

-- Location: FF_X21_Y1_N31
\u1|i[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputCLKENA0_outclk\,
	d => \u1|i~2_combout\,
	clrn => \key0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|i[1]~DUPLICATE_q\);

-- Location: LABCELL_X21_Y1_N45
\u1|i~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|i~1_combout\ = ( \u1|i\(2) & ( \u1|i[1]~DUPLICATE_q\ & ( \u1|i[0]~DUPLICATE_q\ ) ) ) # ( !\u1|i\(2) & ( \u1|i[1]~DUPLICATE_q\ & ( !\u1|i[0]~DUPLICATE_q\ ) ) ) # ( \u1|i\(2) & ( !\u1|i[1]~DUPLICATE_q\ & ( \u1|i[0]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111111111111000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|ALT_INV_i[0]~DUPLICATE_q\,
	datae => \u1|ALT_INV_i\(2),
	dataf => \u1|ALT_INV_i[1]~DUPLICATE_q\,
	combout => \u1|i~1_combout\);

-- Location: FF_X21_Y1_N46
\u1|i[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputCLKENA0_outclk\,
	d => \u1|i~1_combout\,
	clrn => \key0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|i[2]~DUPLICATE_q\);

-- Location: LABCELL_X21_Y1_N48
\u1|i~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|i~0_combout\ = ( !\u1|i\(0) & ( \u1|i[1]~DUPLICATE_q\ ) ) # ( !\u1|i\(0) & ( !\u1|i[1]~DUPLICATE_q\ & ( !\u1|i[2]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|ALT_INV_i[2]~DUPLICATE_q\,
	datae => \u1|ALT_INV_i\(0),
	dataf => \u1|ALT_INV_i[1]~DUPLICATE_q\,
	combout => \u1|i~0_combout\);

-- Location: FF_X21_Y1_N49
\u1|i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputCLKENA0_outclk\,
	d => \u1|i~0_combout\,
	clrn => \key0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|i\(0));

-- Location: LABCELL_X21_Y1_N30
\u1|i~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|i~2_combout\ = ( \u1|i\(1) & ( \u1|i[2]~DUPLICATE_q\ & ( \u1|i\(0) ) ) ) # ( \u1|i\(1) & ( !\u1|i[2]~DUPLICATE_q\ & ( \u1|i\(0) ) ) ) # ( !\u1|i\(1) & ( !\u1|i[2]~DUPLICATE_q\ & ( !\u1|i\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000000001111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|ALT_INV_i\(0),
	datae => \u1|ALT_INV_i\(1),
	dataf => \u1|ALT_INV_i[2]~DUPLICATE_q\,
	combout => \u1|i~2_combout\);

-- Location: FF_X21_Y1_N32
\u1|i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputCLKENA0_outclk\,
	d => \u1|i~2_combout\,
	clrn => \key0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|i\(1));

-- Location: LABCELL_X21_Y1_N57
\u1|trig~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|trig~0_combout\ = ( \u1|i\(2) & ( \u1|trig~q\ & ( (!\key0~input_o\) # ((!\u1|i\(1) & !\u1|i[0]~DUPLICATE_q\)) ) ) ) # ( !\u1|i\(2) & ( \u1|trig~q\ & ( !\key0~input_o\ ) ) ) # ( \u1|i\(2) & ( !\u1|trig~q\ & ( (\key0~input_o\ & (!\u1|i\(1) & 
-- !\u1|i[0]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000000000010101010101010101111101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key0~input_o\,
	datac => \u1|ALT_INV_i\(1),
	datad => \u1|ALT_INV_i[0]~DUPLICATE_q\,
	datae => \u1|ALT_INV_i\(2),
	dataf => \u1|ALT_INV_trig~q\,
	combout => \u1|trig~0_combout\);

-- Location: LABCELL_X21_Y1_N24
\u1|trig~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|trig~feeder_combout\ = ( \u1|trig~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u1|ALT_INV_trig~0_combout\,
	combout => \u1|trig~feeder_combout\);

-- Location: FF_X21_Y1_N26
\u1|trig\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~input_o\,
	d => \u1|trig~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|trig~q\);

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

-- Location: LABCELL_X20_Y1_N30
\u2|temp~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|temp~2_combout\ = ( \sw[2]~input_o\ & ( (\sw[1]~input_o\ & (!\key1~input_o\ & !\sw[0]~input_o\)) ) ) # ( !\sw[2]~input_o\ & ( (!\sw[1]~input_o\ & (!\key1~input_o\ & !\sw[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000010001000000000010001000000000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[1]~input_o\,
	datab => \ALT_INV_key1~input_o\,
	datad => \ALT_INV_sw[0]~input_o\,
	datae => \ALT_INV_sw[2]~input_o\,
	combout => \u2|temp~2_combout\);

-- Location: LABCELL_X19_Y1_N48
\u3|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|q~0_combout\ = ( \sw[1]~input_o\ & ( \u3|q\(2) & ( (!\u3|q\(0) & ((!\sw[2]~input_o\ $ (!\sw[0]~input_o\)) # (\u3|q\(1)))) ) ) ) # ( !\sw[1]~input_o\ & ( \u3|q\(2) & ( (!\u3|q\(0) & ((!\sw[0]~input_o\) # (\u3|q\(1)))) ) ) ) # ( \sw[1]~input_o\ & ( 
-- !\u3|q\(2) & ( !\u3|q\(0) ) ) ) # ( !\sw[1]~input_o\ & ( !\u3|q\(2) & ( (!\u3|q\(0) & (((!\u3|q\(1)) # (\sw[0]~input_o\)) # (\sw[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000001110000111100001111000011000000111100000110000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[2]~input_o\,
	datab => \ALT_INV_sw[0]~input_o\,
	datac => \u3|ALT_INV_q\(0),
	datad => \u3|ALT_INV_q\(1),
	datae => \ALT_INV_sw[1]~input_o\,
	dataf => \u3|ALT_INV_q\(2),
	combout => \u3|q~0_combout\);

-- Location: LABCELL_X19_Y1_N42
count_en : cyclonev_lcell_comb
-- Equation(s):
-- \count_en~combout\ = ( \y_Q~6_q\ & ( \y_Q~5_q\ & ( !\y_Q~4_q\ ) ) ) # ( \y_Q~6_q\ & ( !\y_Q~5_q\ & ( !\y_Q~4_q\ ) ) ) # ( !\y_Q~6_q\ & ( !\y_Q~5_q\ & ( \y_Q~4_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_y_Q~4_q\,
	datae => \ALT_INV_y_Q~6_q\,
	dataf => \ALT_INV_y_Q~5_q\,
	combout => \count_en~combout\);

-- Location: FF_X19_Y1_N38
\u3|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|trig~q\,
	asdata => \u3|q~0_combout\,
	clrn => \key1~input_o\,
	sload => VCC,
	ena => \count_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|q\(0));

-- Location: LABCELL_X19_Y1_N3
\u3|q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|q~1_combout\ = ( \sw[1]~input_o\ & ( \u3|q\(0) & ( !\u3|q\(1) ) ) ) # ( !\sw[1]~input_o\ & ( \u3|q\(0) & ( (!\u3|q\(1) & ((!\sw[2]~input_o\) # ((\u3|q\(2)) # (\sw[0]~input_o\)))) ) ) ) # ( \sw[1]~input_o\ & ( !\u3|q\(0) & ( \u3|q\(1) ) ) ) # ( 
-- !\sw[1]~input_o\ & ( !\u3|q\(0) & ( (\u3|q\(1) & (((\u3|q\(2)) # (\sw[0]~input_o\)) # (\sw[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100001111000011110000111110110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[2]~input_o\,
	datab => \ALT_INV_sw[0]~input_o\,
	datac => \u3|ALT_INV_q\(1),
	datad => \u3|ALT_INV_q\(2),
	datae => \ALT_INV_sw[1]~input_o\,
	dataf => \u3|ALT_INV_q\(0),
	combout => \u3|q~1_combout\);

-- Location: LABCELL_X19_Y1_N12
\u3|q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|q[1]~feeder_combout\ = \u3|q~1_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u3|ALT_INV_q~1_combout\,
	combout => \u3|q[1]~feeder_combout\);

-- Location: FF_X19_Y1_N14
\u3|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|trig~q\,
	d => \u3|q[1]~feeder_combout\,
	clrn => \key1~input_o\,
	ena => \count_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|q\(1));

-- Location: LABCELL_X19_Y1_N21
\u3|q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|q~2_combout\ = ( \sw[2]~input_o\ & ( \u3|q\(0) & ( (!\u3|q\(2) & (\u3|q\(1) & ((!\sw[1]~input_o\) # (\sw[0]~input_o\)))) # (\u3|q\(2) & (((!\u3|q\(1))))) ) ) ) # ( !\sw[2]~input_o\ & ( \u3|q\(0) & ( (!\u3|q\(2) & (\u3|q\(1) & ((!\sw[0]~input_o\) # 
-- (!\sw[1]~input_o\)))) # (\u3|q\(2) & (((!\u3|q\(1))))) ) ) ) # ( \sw[2]~input_o\ & ( !\u3|q\(0) & ( (\u3|q\(2) & ((!\sw[0]~input_o\) # (\u3|q\(1)))) ) ) ) # ( !\sw[2]~input_o\ & ( !\u3|q\(0) & ( (\u3|q\(2) & ((!\sw[0]~input_o\ $ (\sw[1]~input_o\)) # 
-- (\u3|q\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010100010101010001010100010101011010010110000101101001010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|ALT_INV_q\(2),
	datab => \ALT_INV_sw[0]~input_o\,
	datac => \u3|ALT_INV_q\(1),
	datad => \ALT_INV_sw[1]~input_o\,
	datae => \ALT_INV_sw[2]~input_o\,
	dataf => \u3|ALT_INV_q\(0),
	combout => \u3|q~2_combout\);

-- Location: FF_X19_Y1_N53
\u3|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|trig~q\,
	asdata => \u3|q~2_combout\,
	clrn => \key1~input_o\,
	sload => VCC,
	ena => \count_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|q\(2));

-- Location: LABCELL_X19_Y1_N54
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( \u3|q\(0) & ( \u3|q\(1) & ( (\sw[1]~input_o\ & (!\u3|q\(2) & (!\sw[2]~input_o\ $ (!\sw[0]~input_o\)))) ) ) ) # ( !\u3|q\(0) & ( \u3|q\(1) & ( (!\sw[2]~input_o\ & (!\sw[1]~input_o\ & (!\u3|q\(2) & !\sw[0]~input_o\))) ) ) ) # ( 
-- \u3|q\(0) & ( !\u3|q\(1) & ( (\sw[2]~input_o\ & (!\sw[1]~input_o\ & (!\u3|q\(2) & !\sw[0]~input_o\))) ) ) ) # ( !\u3|q\(0) & ( !\u3|q\(1) & ( (\u3|q\(2) & (!\sw[0]~input_o\ $ (((!\sw[1]~input_o\) # (\sw[2]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000001101010000000000000010000000000000000001000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[2]~input_o\,
	datab => \ALT_INV_sw[1]~input_o\,
	datac => \u3|ALT_INV_q\(2),
	datad => \ALT_INV_sw[0]~input_o\,
	datae => \u3|ALT_INV_q\(0),
	dataf => \u3|ALT_INV_q\(1),
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X19_Y1_N39
\y_Q~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \y_Q~8_combout\ = ( !\Equal0~0_combout\ & ( \y_Q~4_q\ & ( (\u2|temp\(3) & \y_Q~6_q\) ) ) ) # ( \Equal0~0_combout\ & ( !\y_Q~4_q\ & ( \y_Q~5_q\ ) ) ) # ( !\Equal0~0_combout\ & ( !\y_Q~4_q\ & ( \y_Q~5_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_y_Q~5_q\,
	datac => \u2|ALT_INV_temp\(3),
	datad => \ALT_INV_y_Q~6_q\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_y_Q~4_q\,
	combout => \y_Q~8_combout\);

-- Location: FF_X19_Y1_N20
\y_Q~5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|trig~q\,
	asdata => \y_Q~8_combout\,
	clrn => \key0~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_Q~5_q\);

-- Location: LABCELL_X19_Y1_N27
\y_Q~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \y_Q~9_combout\ = ( \y_Q~6_q\ & ( \y_Q~4_q\ & ( \y_Q~5_q\ ) ) ) # ( !\y_Q~6_q\ & ( \y_Q~4_q\ ) ) # ( \y_Q~6_q\ & ( !\y_Q~4_q\ ) ) # ( !\y_Q~6_q\ & ( !\y_Q~4_q\ & ( (!\key1~input_o\ & !\y_Q~5_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000111111111111111111111111111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key1~input_o\,
	datad => \ALT_INV_y_Q~5_q\,
	datae => \ALT_INV_y_Q~6_q\,
	dataf => \ALT_INV_y_Q~4_q\,
	combout => \y_Q~9_combout\);

-- Location: FF_X19_Y1_N2
\y_Q~6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|trig~q\,
	asdata => \y_Q~9_combout\,
	clrn => \key0~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_Q~6_q\);

-- Location: LABCELL_X20_Y1_N36
\u2|temp[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|temp[1]~4_combout\ = ( !\key1~input_o\ & ( (!\sw[1]~input_o\ & (((\sw[2]~input_o\ & (\sw[0]~input_o\))))) # (\sw[1]~input_o\ & (((!\sw[2]~input_o\ & (!\sw[0]~input_o\))))) ) ) # ( \key1~input_o\ & ( (((\u2|temp\(1) & ((!\y_Q~4_q\) # (!\y_Q~6_q\))))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101000000001010000000000000000001010000000010101111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[1]~input_o\,
	datab => \ALT_INV_y_Q~4_q\,
	datac => \ALT_INV_y_Q~6_q\,
	datad => \ALT_INV_sw[0]~input_o\,
	datae => \ALT_INV_key1~input_o\,
	dataf => \u2|ALT_INV_temp\(1),
	datag => \ALT_INV_sw[2]~input_o\,
	combout => \u2|temp[1]~4_combout\);

-- Location: FF_X20_Y1_N38
\u2|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|trig~q\,
	d => \u2|temp[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|temp\(1));

-- Location: LABCELL_X20_Y1_N57
\u2|temp~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|temp~3_combout\ = ( \y_Q~4_q\ & ( \y_Q~6_q\ & ( ((\key1~input_o\ & \u2|temp\(1))) # (\u2|temp~2_combout\) ) ) ) # ( !\y_Q~4_q\ & ( \y_Q~6_q\ & ( ((\u2|temp\(2) & \key1~input_o\)) # (\u2|temp~2_combout\) ) ) ) # ( \y_Q~4_q\ & ( !\y_Q~6_q\ & ( 
-- ((\u2|temp\(2) & \key1~input_o\)) # (\u2|temp~2_combout\) ) ) ) # ( !\y_Q~4_q\ & ( !\y_Q~6_q\ & ( ((\u2|temp\(2) & \key1~input_o\)) # (\u2|temp~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100110111001101110011011100110111001101110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_temp\(2),
	datab => \u2|ALT_INV_temp~2_combout\,
	datac => \ALT_INV_key1~input_o\,
	datad => \u2|ALT_INV_temp\(1),
	datae => \ALT_INV_y_Q~4_q\,
	dataf => \ALT_INV_y_Q~6_q\,
	combout => \u2|temp~3_combout\);

-- Location: LABCELL_X20_Y1_N24
\u2|temp[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|temp[2]~feeder_combout\ = ( \u2|temp~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u2|ALT_INV_temp~3_combout\,
	combout => \u2|temp[2]~feeder_combout\);

-- Location: FF_X20_Y1_N26
\u2|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|trig~q\,
	d => \u2|temp[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|temp\(2));

-- Location: LABCELL_X20_Y1_N18
\u2|temp~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|temp~0_combout\ = ( \y_Q~4_q\ & ( \y_Q~6_q\ & ( \u2|temp\(2) ) ) ) # ( !\y_Q~4_q\ & ( \y_Q~6_q\ & ( \u2|temp\(3) ) ) ) # ( \y_Q~4_q\ & ( !\y_Q~6_q\ & ( \u2|temp\(3) ) ) ) # ( !\y_Q~4_q\ & ( !\y_Q~6_q\ & ( \u2|temp\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_temp\(2),
	datab => \u2|ALT_INV_temp\(3),
	datae => \ALT_INV_y_Q~4_q\,
	dataf => \ALT_INV_y_Q~6_q\,
	combout => \u2|temp~0_combout\);

-- Location: LABCELL_X20_Y1_N42
\u2|temp~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|temp~1_combout\ = ( \sw[2]~input_o\ & ( \u2|temp~0_combout\ & ( ((\sw[1]~input_o\ & !\sw[0]~input_o\)) # (\key1~input_o\) ) ) ) # ( !\sw[2]~input_o\ & ( \u2|temp~0_combout\ & ( ((\sw[0]~input_o\) # (\key1~input_o\)) # (\sw[1]~input_o\) ) ) ) # ( 
-- \sw[2]~input_o\ & ( !\u2|temp~0_combout\ & ( (\sw[1]~input_o\ & (!\key1~input_o\ & !\sw[0]~input_o\)) ) ) ) # ( !\sw[2]~input_o\ & ( !\u2|temp~0_combout\ & ( (!\key1~input_o\ & ((\sw[0]~input_o\) # (\sw[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011001100010001000000000001110111111111110111011100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[1]~input_o\,
	datab => \ALT_INV_key1~input_o\,
	datad => \ALT_INV_sw[0]~input_o\,
	datae => \ALT_INV_sw[2]~input_o\,
	dataf => \u2|ALT_INV_temp~0_combout\,
	combout => \u2|temp~1_combout\);

-- Location: FF_X20_Y1_N44
\u2|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|trig~q\,
	d => \u2|temp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|temp\(3));

-- Location: LABCELL_X19_Y1_N33
\y_Q~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \y_Q~7_combout\ = ( \Equal0~0_combout\ & ( \y_Q~5_q\ & ( !\y_Q~4_q\ ) ) ) # ( !\Equal0~0_combout\ & ( \y_Q~5_q\ & ( (!\y_Q~4_q\) # ((!\u2|temp\(3) & \y_Q~6_q\)) ) ) ) # ( \Equal0~0_combout\ & ( !\y_Q~5_q\ & ( (!\y_Q~4_q\ & ((!\key1~input_o\) # 
-- (\y_Q~6_q\))) # (\y_Q~4_q\ & ((!\y_Q~6_q\))) ) ) ) # ( !\Equal0~0_combout\ & ( !\y_Q~5_q\ & ( (!\y_Q~4_q\ & ((!\key1~input_o\) # ((\y_Q~6_q\)))) # (\y_Q~4_q\ & (((!\u2|temp\(3)) # (!\y_Q~6_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101111111100101110111100110011001100111111001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key1~input_o\,
	datab => \ALT_INV_y_Q~4_q\,
	datac => \u2|ALT_INV_temp\(3),
	datad => \ALT_INV_y_Q~6_q\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_y_Q~5_q\,
	combout => \y_Q~7_combout\);

-- Location: LABCELL_X19_Y1_N6
\y_Q~4feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \y_Q~4feeder_combout\ = ( \y_Q~7_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_y_Q~7_combout\,
	combout => \y_Q~4feeder_combout\);

-- Location: FF_X19_Y1_N8
\y_Q~4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|trig~q\,
	d => \y_Q~4feeder_combout\,
	clrn => \key0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_Q~4_q\);

-- Location: LABCELL_X1_Y18_N24
\z~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \z~0_combout\ = ( \y_Q~6_q\ & ( \y_Q~4_q\ ) ) # ( !\y_Q~6_q\ & ( (!\y_Q~4_q\ & !\y_Q~5_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_y_Q~4_q\,
	datac => \ALT_INV_y_Q~5_q\,
	dataf => \ALT_INV_y_Q~6_q\,
	combout => \z~0_combout\);

-- Location: LABCELL_X35_Y26_N0
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


