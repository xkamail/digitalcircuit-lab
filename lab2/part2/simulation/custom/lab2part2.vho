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

-- DATE "08/10/2022 00:25:54"

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

ENTITY 	lab2part2 IS
    PORT (
	v : IN std_logic_vector(3 DOWNTO 0);
	hex1 : OUT std_logic_vector(0 TO 6);
	hex0 : OUT std_logic_vector(0 TO 6)
	);
END lab2part2;

-- Design Ports Information
-- v[0]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v[1]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v[2]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v[3]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[6]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[5]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[4]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[3]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[2]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[1]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[0]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[6]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[5]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[4]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[3]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[2]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[1]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[0]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab2part2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_v : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_hex1 : std_logic_vector(0 TO 6);
SIGNAL ww_hex0 : std_logic_vector(0 TO 6);
SIGNAL \v[0]~input_o\ : std_logic;
SIGNAL \v[1]~input_o\ : std_logic;
SIGNAL \v[2]~input_o\ : std_logic;
SIGNAL \v[3]~input_o\ : std_logic;
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

BEGIN

ww_v <= v;
hex1 <= ww_hex1;
hex0 <= ww_hex0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

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

-- Location: IOOBUF_X14_Y0_N2
\hex1[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \hex1[5]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\hex1[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \hex1[4]~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\hex1[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \hex1[3]~output_o\);

-- Location: IOOBUF_X12_Y31_N9
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

-- Location: IOOBUF_X22_Y0_N2
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

-- Location: IOOBUF_X33_Y14_N9
\hex1[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \hex1[0]~output_o\);

-- Location: IOOBUF_X33_Y15_N9
\hex0[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \hex0[6]~output_o\);

-- Location: IOOBUF_X22_Y31_N9
\hex0[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \hex0[5]~output_o\);

-- Location: IOOBUF_X26_Y31_N2
\hex0[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \hex0[4]~output_o\);

-- Location: IOOBUF_X20_Y31_N9
\hex0[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \hex0[3]~output_o\);

-- Location: IOOBUF_X24_Y31_N9
\hex0[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \hex0[2]~output_o\);

-- Location: IOOBUF_X14_Y31_N9
\hex0[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \hex0[1]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\hex0[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \hex0[0]~output_o\);

-- Location: IOIBUF_X14_Y0_N8
\v[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_v(0),
	o => \v[0]~input_o\);

-- Location: IOIBUF_X33_Y22_N8
\v[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_v(1),
	o => \v[1]~input_o\);

-- Location: IOIBUF_X31_Y31_N8
\v[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_v(2),
	o => \v[2]~input_o\);

-- Location: IOIBUF_X29_Y31_N8
\v[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_v(3),
	o => \v[3]~input_o\);

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


