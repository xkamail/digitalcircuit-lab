-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "08/09/2022 23:54:51"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for Custom VHDL only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab2part1 IS
    PORT (
	sw1 : IN std_logic_vector(3 DOWNTO 0);
	sw2 : IN std_logic_vector(3 DOWNTO 0);
	hex0 : OUT std_logic_vector(0 TO 6);
	hex1 : OUT std_logic_vector(0 TO 6)
	);
END lab2part1;

-- Design Ports Information
-- sw2[0]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw2[1]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw2[2]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw2[3]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[6]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[5]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[4]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[3]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[2]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[1]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[0]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[6]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[5]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[4]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[3]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[2]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[1]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[0]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw1[0]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw1[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw1[1]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw1[3]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab2part1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sw1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sw2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_hex0 : std_logic_vector(0 TO 6);
SIGNAL ww_hex1 : std_logic_vector(0 TO 6);
SIGNAL \sw2[0]~input_o\ : std_logic;
SIGNAL \sw2[1]~input_o\ : std_logic;
SIGNAL \sw2[2]~input_o\ : std_logic;
SIGNAL \sw2[3]~input_o\ : std_logic;
SIGNAL \hex0[6]~output_o\ : std_logic;
SIGNAL \hex0[5]~output_o\ : std_logic;
SIGNAL \hex0[4]~output_o\ : std_logic;
SIGNAL \hex0[3]~output_o\ : std_logic;
SIGNAL \hex0[2]~output_o\ : std_logic;
SIGNAL \hex0[1]~output_o\ : std_logic;
SIGNAL \hex0[0]~output_o\ : std_logic;
SIGNAL \hex1[6]~output_o\ : std_logic;
SIGNAL \hex1[5]~output_o\ : std_logic;
SIGNAL \hex1[4]~output_o\ : std_logic;
SIGNAL \hex1[3]~output_o\ : std_logic;
SIGNAL \hex1[2]~output_o\ : std_logic;
SIGNAL \hex1[1]~output_o\ : std_logic;
SIGNAL \hex1[0]~output_o\ : std_logic;
SIGNAL \sw1[3]~input_o\ : std_logic;
SIGNAL \sw1[1]~input_o\ : std_logic;
SIGNAL \sw1[2]~input_o\ : std_logic;
SIGNAL \sw1[0]~input_o\ : std_logic;
SIGNAL \u0|hex[6]~0_combout\ : std_logic;
SIGNAL \u0|hex[5]~1_combout\ : std_logic;
SIGNAL \u0|hex[4]~2_combout\ : std_logic;
SIGNAL \u0|Equal4~0_combout\ : std_logic;
SIGNAL \u0|hex[1]~3_combout\ : std_logic;
SIGNAL \u0|hex[0]~4_combout\ : std_logic;
SIGNAL \u0|hex\ : std_logic_vector(0 TO 6);

BEGIN

ww_sw1 <= sw1;
ww_sw2 <= sw2;
hex0 <= ww_hex0;
hex1 <= ww_hex1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X12_Y0_N2
\hex0[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|hex[6]~0_combout\,
	devoe => ww_devoe,
	o => \hex0[6]~output_o\);

-- Location: IOOBUF_X20_Y31_N2
\hex0[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|hex[5]~1_combout\,
	devoe => ww_devoe,
	o => \hex0[5]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\hex0[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|hex[4]~2_combout\,
	devoe => ww_devoe,
	o => \hex0[4]~output_o\);

-- Location: IOOBUF_X33_Y15_N2
\hex0[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|hex\(3),
	devoe => ww_devoe,
	o => \hex0[3]~output_o\);

-- Location: IOOBUF_X33_Y10_N9
\hex0[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|Equal4~0_combout\,
	devoe => ww_devoe,
	o => \hex0[2]~output_o\);

-- Location: IOOBUF_X33_Y10_N2
\hex0[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|hex[1]~3_combout\,
	devoe => ww_devoe,
	o => \hex0[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\hex0[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|hex[0]~4_combout\,
	devoe => ww_devoe,
	o => \hex0[0]~output_o\);

-- Location: IOOBUF_X33_Y28_N9
\hex1[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \hex1[6]~output_o\);

-- Location: IOOBUF_X31_Y31_N2
\hex1[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \hex1[5]~output_o\);

-- Location: IOOBUF_X33_Y27_N2
\hex1[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \hex1[4]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\hex1[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \hex1[3]~output_o\);

-- Location: IOOBUF_X33_Y14_N2
\hex1[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \hex1[2]~output_o\);

-- Location: IOOBUF_X20_Y31_N9
\hex1[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \hex1[1]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\hex1[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \hex1[0]~output_o\);

-- Location: IOIBUF_X14_Y0_N8
\sw1[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw1(3),
	o => \sw1[3]~input_o\);

-- Location: IOIBUF_X12_Y0_N8
\sw1[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw1(1),
	o => \sw1[1]~input_o\);

-- Location: IOIBUF_X33_Y14_N8
\sw1[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw1(2),
	o => \sw1[2]~input_o\);

-- Location: IOIBUF_X22_Y31_N8
\sw1[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw1(0),
	o => \sw1[0]~input_o\);

-- Location: LCCOMB_X22_Y9_N8
\u0|hex[6]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|hex[6]~0_combout\ = (!\sw1[3]~input_o\ & ((\sw1[1]~input_o\ & (\sw1[2]~input_o\ & \sw1[0]~input_o\)) # (!\sw1[1]~input_o\ & (!\sw1[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw1[3]~input_o\,
	datab => \sw1[1]~input_o\,
	datac => \sw1[2]~input_o\,
	datad => \sw1[0]~input_o\,
	combout => \u0|hex[6]~0_combout\);

-- Location: LCCOMB_X22_Y9_N10
\u0|hex[5]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|hex[5]~1_combout\ = (!\sw1[3]~input_o\ & ((\sw1[1]~input_o\ & ((\sw1[0]~input_o\) # (!\sw1[2]~input_o\))) # (!\sw1[1]~input_o\ & (!\sw1[2]~input_o\ & \sw1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw1[3]~input_o\,
	datab => \sw1[1]~input_o\,
	datac => \sw1[2]~input_o\,
	datad => \sw1[0]~input_o\,
	combout => \u0|hex[5]~1_combout\);

-- Location: LCCOMB_X22_Y9_N20
\u0|hex[4]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|hex[4]~2_combout\ = (\sw1[3]~input_o\ & (!\sw1[1]~input_o\ & (!\sw1[2]~input_o\ & \sw1[0]~input_o\))) # (!\sw1[3]~input_o\ & (\sw1[0]~input_o\ $ (((!\sw1[1]~input_o\ & \sw1[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw1[3]~input_o\,
	datab => \sw1[1]~input_o\,
	datac => \sw1[2]~input_o\,
	datad => \sw1[0]~input_o\,
	combout => \u0|hex[4]~2_combout\);

-- Location: LCCOMB_X22_Y9_N30
\u0|hex[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|hex\(3) = (!\sw1[3]~input_o\ & ((\sw1[1]~input_o\ & (\sw1[2]~input_o\ & \sw1[0]~input_o\)) # (!\sw1[1]~input_o\ & (\sw1[2]~input_o\ $ (\sw1[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw1[3]~input_o\,
	datab => \sw1[1]~input_o\,
	datac => \sw1[2]~input_o\,
	datad => \sw1[0]~input_o\,
	combout => \u0|hex\(3));

-- Location: LCCOMB_X22_Y9_N0
\u0|Equal4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|Equal4~0_combout\ = (!\sw1[3]~input_o\ & (\sw1[1]~input_o\ & (!\sw1[2]~input_o\ & !\sw1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw1[3]~input_o\,
	datab => \sw1[1]~input_o\,
	datac => \sw1[2]~input_o\,
	datad => \sw1[0]~input_o\,
	combout => \u0|Equal4~0_combout\);

-- Location: LCCOMB_X22_Y9_N2
\u0|hex[1]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|hex[1]~3_combout\ = (!\sw1[3]~input_o\ & (\sw1[2]~input_o\ & (\sw1[1]~input_o\ $ (\sw1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw1[3]~input_o\,
	datab => \sw1[1]~input_o\,
	datac => \sw1[2]~input_o\,
	datad => \sw1[0]~input_o\,
	combout => \u0|hex[1]~3_combout\);

-- Location: LCCOMB_X22_Y9_N12
\u0|hex[0]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|hex[0]~4_combout\ = (!\sw1[3]~input_o\ & (!\sw1[1]~input_o\ & (\sw1[2]~input_o\ $ (\sw1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw1[3]~input_o\,
	datab => \sw1[1]~input_o\,
	datac => \sw1[2]~input_o\,
	datad => \sw1[0]~input_o\,
	combout => \u0|hex[0]~4_combout\);

-- Location: IOIBUF_X22_Y31_N1
\sw2[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw2(0),
	o => \sw2[0]~input_o\);

-- Location: IOIBUF_X24_Y31_N8
\sw2[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw2(1),
	o => \sw2[1]~input_o\);

-- Location: IOIBUF_X33_Y22_N8
\sw2[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw2(2),
	o => \sw2[2]~input_o\);

-- Location: IOIBUF_X22_Y0_N8
\sw2[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw2(3),
	o => \sw2[3]~input_o\);

ww_hex0(6) <= \hex0[6]~output_o\;

ww_hex0(5) <= \hex0[5]~output_o\;

ww_hex0(4) <= \hex0[4]~output_o\;

ww_hex0(3) <= \hex0[3]~output_o\;

ww_hex0(2) <= \hex0[2]~output_o\;

ww_hex0(1) <= \hex0[1]~output_o\;

ww_hex0(0) <= \hex0[0]~output_o\;

ww_hex1(6) <= \hex1[6]~output_o\;

ww_hex1(5) <= \hex1[5]~output_o\;

ww_hex1(4) <= \hex1[4]~output_o\;

ww_hex1(3) <= \hex1[3]~output_o\;

ww_hex1(2) <= \hex1[2]~output_o\;

ww_hex1(1) <= \hex1[1]~output_o\;

ww_hex1(0) <= \hex1[0]~output_o\;
END structure;


