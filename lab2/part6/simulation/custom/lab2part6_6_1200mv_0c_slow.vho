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

-- DATE "08/11/2022 00:12:28"

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

ENTITY 	lab2part6 IS
    PORT (
	t0 : IN std_logic_vector(5 DOWNTO 0);
	hex1 : OUT std_logic_vector(0 TO 6);
	hex0 : OUT std_logic_vector(0 TO 6)
	);
END lab2part6;

-- Design Ports Information
-- hex1[6]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[5]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[4]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[3]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[2]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[1]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[0]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[6]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[5]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[4]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[2]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[0]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t0[2]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t0[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t0[4]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t0[5]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t0[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t0[0]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab2part6 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_t0 : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_hex1 : std_logic_vector(0 TO 6);
SIGNAL ww_hex0 : std_logic_vector(0 TO 6);
SIGNAL \hex1[6]~output_o\ : std_logic;
SIGNAL \hex1[5]~output_o\ : std_logic;
SIGNAL \hex1[4]~output_o\ : std_logic;
SIGNAL \hex1[3]~output_o\ : std_logic;
SIGNAL \hex1[2]~output_o\ : std_logic;
SIGNAL \hex1[1]~output_o\ : std_logic;
SIGNAL \hex1[0]~output_o\ : std_logic;
SIGNAL \hex0[6]~output_o\ : std_logic;
SIGNAL \hex0[5]~output_o\ : std_logic;
SIGNAL \hex0[4]~output_o\ : std_logic;
SIGNAL \hex0[3]~output_o\ : std_logic;
SIGNAL \hex0[2]~output_o\ : std_logic;
SIGNAL \hex0[1]~output_o\ : std_logic;
SIGNAL \hex0[0]~output_o\ : std_logic;
SIGNAL \t0[5]~input_o\ : std_logic;
SIGNAL \t0[4]~input_o\ : std_logic;
SIGNAL \t0[3]~input_o\ : std_logic;
SIGNAL \t0[2]~input_o\ : std_logic;
SIGNAL \z0[1]~0_combout\ : std_logic;
SIGNAL \t0[1]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \t0[0]~input_o\ : std_logic;
SIGNAL \u0|hex[6]~0_combout\ : std_logic;
SIGNAL \u0|hex[5]~1_combout\ : std_logic;
SIGNAL \u0|hex[4]~2_combout\ : std_logic;
SIGNAL \u0|Equal4~0_combout\ : std_logic;
SIGNAL \u0|hex[1]~3_combout\ : std_logic;
SIGNAL \u0|hex[0]~4_combout\ : std_logic;
SIGNAL \u0|hex\ : std_logic_vector(0 TO 6);
SIGNAL \ALT_INV_z0[1]~0_combout\ : std_logic;

BEGIN

ww_t0 <= t0;
hex1 <= ww_hex1;
hex0 <= ww_hex0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_z0[1]~0_combout\ <= NOT \z0[1]~0_combout\;

-- Location: IOOBUF_X31_Y31_N2
\hex1[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \hex1[6]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\hex1[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_z0[1]~0_combout\,
	devoe => ww_devoe,
	o => \hex1[5]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\hex1[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_z0[1]~0_combout\,
	devoe => ww_devoe,
	o => \hex1[4]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\hex1[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_z0[1]~0_combout\,
	devoe => ww_devoe,
	o => \hex1[3]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
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

-- Location: IOOBUF_X10_Y0_N9
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

-- Location: IOOBUF_X22_Y0_N9
\hex1[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_z0[1]~0_combout\,
	devoe => ww_devoe,
	o => \hex1[0]~output_o\);

-- Location: IOOBUF_X29_Y31_N2
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

-- Location: IOOBUF_X14_Y31_N9
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

-- Location: IOOBUF_X14_Y31_N2
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

-- Location: IOOBUF_X24_Y31_N9
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

-- Location: IOOBUF_X20_Y31_N2
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

-- Location: IOOBUF_X26_Y31_N9
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

-- Location: IOOBUF_X33_Y28_N9
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

-- Location: IOIBUF_X20_Y31_N8
\t0[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_t0(5),
	o => \t0[5]~input_o\);

-- Location: IOIBUF_X22_Y31_N1
\t0[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_t0(4),
	o => \t0[4]~input_o\);

-- Location: IOIBUF_X24_Y31_N1
\t0[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_t0(3),
	o => \t0[3]~input_o\);

-- Location: IOIBUF_X33_Y25_N1
\t0[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_t0(2),
	o => \t0[2]~input_o\);

-- Location: LCCOMB_X21_Y30_N16
\z0[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \z0[1]~0_combout\ = (!\t0[5]~input_o\ & (((!\t0[3]~input_o\ & !\t0[2]~input_o\)) # (!\t0[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0[5]~input_o\,
	datab => \t0[4]~input_o\,
	datac => \t0[3]~input_o\,
	datad => \t0[2]~input_o\,
	combout => \z0[1]~0_combout\);

-- Location: IOIBUF_X33_Y24_N8
\t0[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_t0(1),
	o => \t0[1]~input_o\);

-- Location: LCCOMB_X21_Y30_N10
\Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \t0[3]~input_o\ $ (((\z0[1]~0_combout\) # ((!\t0[2]~input_o\ & !\t0[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0[2]~input_o\,
	datab => \z0[1]~0_combout\,
	datac => \t0[3]~input_o\,
	datad => \t0[1]~input_o\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X21_Y30_N28
\Add0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = \z0[1]~0_combout\ $ (\t0[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \z0[1]~0_combout\,
	datad => \t0[1]~input_o\,
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X21_Y30_N22
\Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = \t0[2]~input_o\ $ (((\z0[1]~0_combout\) # (\t0[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0[2]~input_o\,
	datab => \z0[1]~0_combout\,
	datad => \t0[1]~input_o\,
	combout => \Add0~2_combout\);

-- Location: IOIBUF_X22_Y31_N8
\t0[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_t0(0),
	o => \t0[0]~input_o\);

-- Location: LCCOMB_X21_Y30_N24
\u0|hex[6]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|hex[6]~0_combout\ = (\Add0~0_combout\ & ((\Add0~1_combout\ & (\Add0~2_combout\)) # (!\Add0~1_combout\ & (!\Add0~2_combout\ & \t0[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Add0~1_combout\,
	datac => \Add0~2_combout\,
	datad => \t0[0]~input_o\,
	combout => \u0|hex[6]~0_combout\);

-- Location: LCCOMB_X21_Y30_N26
\u0|hex[5]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|hex[5]~1_combout\ = (\Add0~0_combout\ & ((\Add0~1_combout\ & (\Add0~2_combout\ & \t0[0]~input_o\)) # (!\Add0~1_combout\ & ((\Add0~2_combout\) # (\t0[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Add0~1_combout\,
	datac => \Add0~2_combout\,
	datad => \t0[0]~input_o\,
	combout => \u0|hex[5]~1_combout\);

-- Location: LCCOMB_X21_Y30_N4
\u0|hex[4]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|hex[4]~2_combout\ = (\Add0~1_combout\ & ((\Add0~2_combout\ & ((\t0[0]~input_o\))) # (!\Add0~2_combout\ & (\Add0~0_combout\)))) # (!\Add0~1_combout\ & (\Add0~0_combout\ & ((\t0[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Add0~1_combout\,
	datac => \Add0~2_combout\,
	datad => \t0[0]~input_o\,
	combout => \u0|hex[4]~2_combout\);

-- Location: LCCOMB_X21_Y30_N6
\u0|hex[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|hex\(3) = (\Add0~0_combout\ & ((\Add0~1_combout\ & (\Add0~2_combout\ $ (!\t0[0]~input_o\))) # (!\Add0~1_combout\ & (!\Add0~2_combout\ & \t0[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Add0~1_combout\,
	datac => \Add0~2_combout\,
	datad => \t0[0]~input_o\,
	combout => \u0|hex\(3));

-- Location: LCCOMB_X21_Y30_N0
\u0|Equal4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|Equal4~0_combout\ = (\Add0~0_combout\ & (!\Add0~1_combout\ & (\Add0~2_combout\ & !\t0[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Add0~1_combout\,
	datac => \Add0~2_combout\,
	datad => \t0[0]~input_o\,
	combout => \u0|Equal4~0_combout\);

-- Location: LCCOMB_X21_Y30_N2
\u0|hex[1]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|hex[1]~3_combout\ = (\Add0~0_combout\ & (!\Add0~2_combout\ & (\Add0~1_combout\ $ (!\t0[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Add0~1_combout\,
	datac => \Add0~2_combout\,
	datad => \t0[0]~input_o\,
	combout => \u0|hex[1]~3_combout\);

-- Location: LCCOMB_X21_Y30_N12
\u0|hex[0]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u0|hex[0]~4_combout\ = (\Add0~0_combout\ & (\Add0~1_combout\ & (\Add0~2_combout\ $ (!\t0[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Add0~1_combout\,
	datac => \Add0~2_combout\,
	datad => \t0[0]~input_o\,
	combout => \u0|hex[0]~4_combout\);

ww_hex1(6) <= \hex1[6]~output_o\;

ww_hex1(5) <= \hex1[5]~output_o\;

ww_hex1(4) <= \hex1[4]~output_o\;

ww_hex1(3) <= \hex1[3]~output_o\;

ww_hex1(2) <= \hex1[2]~output_o\;

ww_hex1(1) <= \hex1[1]~output_o\;

ww_hex1(0) <= \hex1[0]~output_o\;

ww_hex0(6) <= \hex0[6]~output_o\;

ww_hex0(5) <= \hex0[5]~output_o\;

ww_hex0(4) <= \hex0[4]~output_o\;

ww_hex0(3) <= \hex0[3]~output_o\;

ww_hex0(2) <= \hex0[2]~output_o\;

ww_hex0(1) <= \hex0[1]~output_o\;

ww_hex0(0) <= \hex0[0]~output_o\;
END structure;


