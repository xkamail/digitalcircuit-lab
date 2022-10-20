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
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "10/19/2022 19:37:14"

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

ENTITY 	lab8part4 IS
    PORT (
	sw : IN std_logic_vector(9 DOWNTO 0);
	clk50 : IN std_logic;
	key0 : IN std_logic;
	key1 : IN std_logic;
	d_out : BUFFER std_logic_vector(3 DOWNTO 0);
	hex5 : BUFFER std_logic_vector(0 TO 6);
	hex4 : BUFFER std_logic_vector(0 TO 6);
	hex3 : BUFFER std_logic_vector(0 TO 6);
	hex2 : BUFFER std_logic_vector(0 TO 6);
	hex0 : BUFFER std_logic_vector(0 TO 6)
	);
END lab8part4;

-- Design Ports Information
-- sw[9]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_out[0]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_out[1]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_out[2]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_out[3]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[6]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[5]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[4]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[3]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[2]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[1]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[0]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[6]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[5]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[4]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[3]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[2]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[1]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[0]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[6]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[5]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[4]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[3]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[2]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[0]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[6]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[5]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[4]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[3]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[2]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[1]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[0]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[6]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[5]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[4]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[3]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[2]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[1]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[0]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[8]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key1	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk50	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key0	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab8part4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sw : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_clk50 : std_logic;
SIGNAL ww_key0 : std_logic;
SIGNAL ww_key1 : std_logic;
SIGNAL ww_d_out : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_hex5 : std_logic_vector(0 TO 6);
SIGNAL ww_hex4 : std_logic_vector(0 TO 6);
SIGNAL ww_hex3 : std_logic_vector(0 TO 6);
SIGNAL ww_hex2 : std_logic_vector(0 TO 6);
SIGNAL ww_hex0 : std_logic_vector(0 TO 6);
SIGNAL \ram0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \ram0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ram0|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ram0|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \sw[9]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \key1~input_o\ : std_logic;
SIGNAL \clk50~input_o\ : std_logic;
SIGNAL \clk50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \sw[8]~input_o\ : std_logic;
SIGNAL \key0~input_o\ : std_logic;
SIGNAL \u1|v~1_combout\ : std_logic;
SIGNAL \u1|v~3_combout\ : std_logic;
SIGNAL \u1|v[2]~DUPLICATE_q\ : std_logic;
SIGNAL \u1|v~2_combout\ : std_logic;
SIGNAL \u1|v[3]~DUPLICATE_q\ : std_logic;
SIGNAL \u1|v~0_combout\ : std_logic;
SIGNAL \u1|rollover_v~0_combout\ : std_logic;
SIGNAL \u1|rollover_v~q\ : std_logic;
SIGNAL \u1|v~4_combout\ : std_logic;
SIGNAL \u1|v[0]~DUPLICATE_q\ : std_logic;
SIGNAL \u1|v[4]~DUPLICATE_q\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \h1|hex[5]~0_combout\ : std_logic;
SIGNAL \h1|hex[4]~1_combout\ : std_logic;
SIGNAL \h1|hex[3]~2_combout\ : std_logic;
SIGNAL \h1|hex[2]~3_combout\ : std_logic;
SIGNAL \h1|hex[1]~4_combout\ : std_logic;
SIGNAL \h1|hex[0]~5_combout\ : std_logic;
SIGNAL \h3|hex[5]~0_combout\ : std_logic;
SIGNAL \h3|hex[4]~1_combout\ : std_logic;
SIGNAL \h3|hex[3]~2_combout\ : std_logic;
SIGNAL \h3|hex[2]~3_combout\ : std_logic;
SIGNAL \h3|hex[1]~4_combout\ : std_logic;
SIGNAL \h3|hex[0]~5_combout\ : std_logic;
SIGNAL \h5|hex[5]~0_combout\ : std_logic;
SIGNAL \h5|hex[4]~1_combout\ : std_logic;
SIGNAL \h5|hex[3]~2_combout\ : std_logic;
SIGNAL \h5|hex[2]~3_combout\ : std_logic;
SIGNAL \h5|hex[1]~4_combout\ : std_logic;
SIGNAL \h5|hex[0]~5_combout\ : std_logic;
SIGNAL \ram0|altsyncram_component|auto_generated|q_b\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \h5|hex\ : std_logic_vector(0 TO 6);
SIGNAL \h3|hex\ : std_logic_vector(0 TO 6);
SIGNAL \h1|hex\ : std_logic_vector(0 TO 6);
SIGNAL \u1|v\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u1|ALT_INV_v[0]~DUPLICATE_q\ : std_logic;
SIGNAL \u1|ALT_INV_v[2]~DUPLICATE_q\ : std_logic;
SIGNAL \u1|ALT_INV_v[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_key0~input_o\ : std_logic;
SIGNAL \ALT_INV_key1~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[5]~input_o\ : std_logic;
SIGNAL \u1|ALT_INV_rollover_v~q\ : std_logic;
SIGNAL \u1|ALT_INV_v\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ram0|altsyncram_component|auto_generated|ALT_INV_q_b\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_sw <= sw;
ww_clk50 <= clk50;
ww_key0 <= key0;
ww_key1 <= key1;
d_out <= ww_d_out;
hex5 <= ww_hex5;
hex4 <= ww_hex4;
hex3 <= ww_hex3;
hex2 <= ww_hex2;
hex0 <= ww_hex0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ram0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & \sw[3]~input_o\ & \sw[2]~input_o\ & \sw[1]~input_o\ & \sw[0]~input_o\);

\ram0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\sw[8]~input_o\ & \sw[7]~input_o\ & \sw[6]~input_o\ & \sw[5]~input_o\ & \sw[4]~input_o\);

\ram0|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\u1|v[4]~DUPLICATE_q\ & \u1|v[3]~DUPLICATE_q\ & \u1|v[2]~DUPLICATE_q\ & \u1|v\(1) & \u1|v[0]~DUPLICATE_q\);

\ram0|altsyncram_component|auto_generated|q_b\(0) <= \ram0|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\ram0|altsyncram_component|auto_generated|q_b\(1) <= \ram0|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\ram0|altsyncram_component|auto_generated|q_b\(2) <= \ram0|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\ram0|altsyncram_component|auto_generated|q_b\(3) <= \ram0|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\u1|ALT_INV_v[0]~DUPLICATE_q\ <= NOT \u1|v[0]~DUPLICATE_q\;
\u1|ALT_INV_v[2]~DUPLICATE_q\ <= NOT \u1|v[2]~DUPLICATE_q\;
\u1|ALT_INV_v[3]~DUPLICATE_q\ <= NOT \u1|v[3]~DUPLICATE_q\;
\ALT_INV_key0~input_o\ <= NOT \key0~input_o\;
\ALT_INV_key1~input_o\ <= NOT \key1~input_o\;
\ALT_INV_sw[4]~input_o\ <= NOT \sw[4]~input_o\;
\ALT_INV_sw[7]~input_o\ <= NOT \sw[7]~input_o\;
\ALT_INV_sw[6]~input_o\ <= NOT \sw[6]~input_o\;
\ALT_INV_sw[5]~input_o\ <= NOT \sw[5]~input_o\;
\u1|ALT_INV_rollover_v~q\ <= NOT \u1|rollover_v~q\;
\u1|ALT_INV_v\(0) <= NOT \u1|v\(0);
\u1|ALT_INV_v\(2) <= NOT \u1|v\(2);
\u1|ALT_INV_v\(3) <= NOT \u1|v\(3);
\u1|ALT_INV_v\(1) <= NOT \u1|v\(1);
\u1|ALT_INV_v\(4) <= NOT \u1|v\(4);
\ram0|altsyncram_component|auto_generated|ALT_INV_q_b\(1) <= NOT \ram0|altsyncram_component|auto_generated|q_b\(1);
\ram0|altsyncram_component|auto_generated|ALT_INV_q_b\(2) <= NOT \ram0|altsyncram_component|auto_generated|q_b\(2);
\ram0|altsyncram_component|auto_generated|ALT_INV_q_b\(3) <= NOT \ram0|altsyncram_component|auto_generated|q_b\(3);
\ram0|altsyncram_component|auto_generated|ALT_INV_q_b\(0) <= NOT \ram0|altsyncram_component|auto_generated|q_b\(0);

-- Location: IOOBUF_X44_Y0_N53
\d_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram0|altsyncram_component|auto_generated|q_b\(0),
	devoe => ww_devoe,
	o => ww_d_out(0));

-- Location: IOOBUF_X44_Y0_N36
\d_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram0|altsyncram_component|auto_generated|q_b\(1),
	devoe => ww_devoe,
	o => ww_d_out(1));

-- Location: IOOBUF_X43_Y0_N53
\d_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram0|altsyncram_component|auto_generated|q_b\(2),
	devoe => ww_devoe,
	o => ww_d_out(2));

-- Location: IOOBUF_X43_Y0_N36
\d_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram0|altsyncram_component|auto_generated|q_b\(3),
	devoe => ww_devoe,
	o => ww_d_out(3));

-- Location: IOOBUF_X44_Y0_N2
\hex5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hex5(6));

-- Location: IOOBUF_X0_Y21_N39
\hex5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sw[8]~input_o\,
	devoe => ww_devoe,
	o => ww_hex5(5));

-- Location: IOOBUF_X0_Y21_N56
\hex5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sw[8]~input_o\,
	devoe => ww_devoe,
	o => ww_hex5(4));

-- Location: IOOBUF_X50_Y0_N19
\hex5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sw[8]~input_o\,
	devoe => ww_devoe,
	o => ww_hex5(3));

-- Location: IOOBUF_X43_Y0_N19
\hex5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_hex5(2));

-- Location: IOOBUF_X22_Y0_N19
\hex5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_hex5(1));

-- Location: IOOBUF_X29_Y0_N2
\hex5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sw[8]~input_o\,
	devoe => ww_devoe,
	o => ww_hex5(0));

-- Location: IOOBUF_X29_Y0_N19
\hex4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h1|hex\(6),
	devoe => ww_devoe,
	o => ww_hex4(6));

-- Location: IOOBUF_X36_Y0_N2
\hex4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h1|hex[5]~0_combout\,
	devoe => ww_devoe,
	o => ww_hex4(5));

-- Location: IOOBUF_X43_Y0_N2
\hex4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h1|hex[4]~1_combout\,
	devoe => ww_devoe,
	o => ww_hex4(4));

-- Location: IOOBUF_X52_Y0_N19
\hex4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h1|hex[3]~2_combout\,
	devoe => ww_devoe,
	o => ww_hex4(3));

-- Location: IOOBUF_X44_Y0_N19
\hex4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h1|hex[2]~3_combout\,
	devoe => ww_devoe,
	o => ww_hex4(2));

-- Location: IOOBUF_X48_Y0_N59
\hex4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h1|hex[1]~4_combout\,
	devoe => ww_devoe,
	o => ww_hex4(1));

-- Location: IOOBUF_X52_Y0_N36
\hex4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h1|hex[0]~5_combout\,
	devoe => ww_devoe,
	o => ww_hex4(0));

-- Location: IOOBUF_X51_Y0_N19
\hex3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hex3(6));

-- Location: IOOBUF_X51_Y0_N2
\hex3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|v\(4),
	devoe => ww_devoe,
	o => ww_hex3(5));

-- Location: IOOBUF_X52_Y0_N2
\hex3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|v\(4),
	devoe => ww_devoe,
	o => ww_hex3(4));

-- Location: IOOBUF_X46_Y0_N19
\hex3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|v\(4),
	devoe => ww_devoe,
	o => ww_hex3(3));

-- Location: IOOBUF_X40_Y0_N42
\hex3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_hex3(2));

-- Location: IOOBUF_X46_Y0_N2
\hex3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_hex3(1));

-- Location: IOOBUF_X40_Y0_N59
\hex3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|v\(4),
	devoe => ww_devoe,
	o => ww_hex3(0));

-- Location: IOOBUF_X40_Y0_N76
\hex2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h3|hex\(6),
	devoe => ww_devoe,
	o => ww_hex2(6));

-- Location: IOOBUF_X46_Y0_N53
\hex2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h3|hex[5]~0_combout\,
	devoe => ww_devoe,
	o => ww_hex2(5));

-- Location: IOOBUF_X38_Y0_N19
\hex2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h3|hex[4]~1_combout\,
	devoe => ww_devoe,
	o => ww_hex2(4));

-- Location: IOOBUF_X36_Y0_N19
\hex2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h3|hex[3]~2_combout\,
	devoe => ww_devoe,
	o => ww_hex2(3));

-- Location: IOOBUF_X22_Y0_N53
\hex2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h3|hex[2]~3_combout\,
	devoe => ww_devoe,
	o => ww_hex2(2));

-- Location: IOOBUF_X38_Y0_N53
\hex2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h3|hex[1]~4_combout\,
	devoe => ww_devoe,
	o => ww_hex2(1));

-- Location: IOOBUF_X48_Y0_N42
\hex2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h3|hex[0]~5_combout\,
	devoe => ww_devoe,
	o => ww_hex2(0));

-- Location: IOOBUF_X46_Y0_N36
\hex0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h5|hex\(6),
	devoe => ww_devoe,
	o => ww_hex0(6));

-- Location: IOOBUF_X50_Y0_N53
\hex0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h5|hex[5]~0_combout\,
	devoe => ww_devoe,
	o => ww_hex0(5));

-- Location: IOOBUF_X48_Y0_N93
\hex0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h5|hex[4]~1_combout\,
	devoe => ww_devoe,
	o => ww_hex0(4));

-- Location: IOOBUF_X50_Y0_N36
\hex0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h5|hex[3]~2_combout\,
	devoe => ww_devoe,
	o => ww_hex0(3));

-- Location: IOOBUF_X48_Y0_N76
\hex0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h5|hex[2]~3_combout\,
	devoe => ww_devoe,
	o => ww_hex0(2));

-- Location: IOOBUF_X51_Y0_N36
\hex0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h5|hex[1]~4_combout\,
	devoe => ww_devoe,
	o => ww_hex0(1));

-- Location: IOOBUF_X52_Y0_N53
\hex0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h5|hex[0]~5_combout\,
	devoe => ww_devoe,
	o => ww_hex0(0));

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

-- Location: IOIBUF_X36_Y0_N35
\sw[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\sw[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

-- Location: IOIBUF_X34_Y0_N52
\sw[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

-- Location: IOIBUF_X34_Y0_N35
\sw[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

-- Location: IOIBUF_X33_Y0_N92
\sw[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(8),
	o => \sw[8]~input_o\);

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

-- Location: FF_X37_Y1_N19
\u1|v[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputCLKENA0_outclk\,
	d => \u1|v~4_combout\,
	clrn => \key0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|v\(0));

-- Location: MLABCELL_X37_Y1_N0
\u1|v~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|v~1_combout\ = ( !\u1|rollover_v~q\ & ( !\u1|v[0]~DUPLICATE_q\ $ (!\u1|v\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_v[0]~DUPLICATE_q\,
	datad => \u1|ALT_INV_v\(1),
	dataf => \u1|ALT_INV_rollover_v~q\,
	combout => \u1|v~1_combout\);

-- Location: FF_X37_Y1_N2
\u1|v[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputCLKENA0_outclk\,
	d => \u1|v~1_combout\,
	clrn => \key0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|v\(1));

-- Location: FF_X37_Y1_N58
\u1|v[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputCLKENA0_outclk\,
	d => \u1|v~3_combout\,
	clrn => \key0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|v\(2));

-- Location: MLABCELL_X37_Y1_N57
\u1|v~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|v~3_combout\ = ( \u1|v\(2) & ( \u1|v[0]~DUPLICATE_q\ & ( (!\u1|rollover_v~q\ & !\u1|v\(1)) ) ) ) # ( !\u1|v\(2) & ( \u1|v[0]~DUPLICATE_q\ & ( (!\u1|rollover_v~q\ & \u1|v\(1)) ) ) ) # ( \u1|v\(2) & ( !\u1|v[0]~DUPLICATE_q\ & ( !\u1|rollover_v~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000111100001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_rollover_v~q\,
	datad => \u1|ALT_INV_v\(1),
	datae => \u1|ALT_INV_v\(2),
	dataf => \u1|ALT_INV_v[0]~DUPLICATE_q\,
	combout => \u1|v~3_combout\);

-- Location: FF_X37_Y1_N59
\u1|v[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputCLKENA0_outclk\,
	d => \u1|v~3_combout\,
	clrn => \key0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|v[2]~DUPLICATE_q\);

-- Location: FF_X37_Y1_N28
\u1|v[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputCLKENA0_outclk\,
	d => \u1|v~2_combout\,
	clrn => \key0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|v\(3));

-- Location: MLABCELL_X37_Y1_N27
\u1|v~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|v~2_combout\ = ( \u1|v\(3) & ( \u1|v[0]~DUPLICATE_q\ & ( (!\u1|rollover_v~q\ & ((!\u1|v[2]~DUPLICATE_q\) # (!\u1|v\(1)))) ) ) ) # ( !\u1|v\(3) & ( \u1|v[0]~DUPLICATE_q\ & ( (!\u1|rollover_v~q\ & (\u1|v[2]~DUPLICATE_q\ & \u1|v\(1))) ) ) ) # ( \u1|v\(3) 
-- & ( !\u1|v[0]~DUPLICATE_q\ & ( !\u1|rollover_v~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000011001100110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|ALT_INV_rollover_v~q\,
	datac => \u1|ALT_INV_v[2]~DUPLICATE_q\,
	datad => \u1|ALT_INV_v\(1),
	datae => \u1|ALT_INV_v\(3),
	dataf => \u1|ALT_INV_v[0]~DUPLICATE_q\,
	combout => \u1|v~2_combout\);

-- Location: FF_X37_Y1_N29
\u1|v[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputCLKENA0_outclk\,
	d => \u1|v~2_combout\,
	clrn => \key0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|v[3]~DUPLICATE_q\);

-- Location: MLABCELL_X37_Y1_N48
\u1|v~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|v~0_combout\ = ( \u1|v\(4) & ( \u1|v\(2) & ( (!\u1|rollover_v~q\ & ((!\u1|v[3]~DUPLICATE_q\) # ((!\u1|v\(1)) # (!\u1|v\(0))))) ) ) ) # ( !\u1|v\(4) & ( \u1|v\(2) & ( (\u1|v[3]~DUPLICATE_q\ & (!\u1|rollover_v~q\ & (\u1|v\(1) & \u1|v\(0)))) ) ) ) # ( 
-- \u1|v\(4) & ( !\u1|v\(2) & ( !\u1|rollover_v~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000001001100110011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_v[3]~DUPLICATE_q\,
	datab => \u1|ALT_INV_rollover_v~q\,
	datac => \u1|ALT_INV_v\(1),
	datad => \u1|ALT_INV_v\(0),
	datae => \u1|ALT_INV_v\(4),
	dataf => \u1|ALT_INV_v\(2),
	combout => \u1|v~0_combout\);

-- Location: FF_X37_Y1_N49
\u1|v[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputCLKENA0_outclk\,
	d => \u1|v~0_combout\,
	clrn => \key0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|v\(4));

-- Location: MLABCELL_X37_Y1_N42
\u1|rollover_v~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|rollover_v~0_combout\ = ( !\key0~input_o\ & ( (((\u1|rollover_v~q\))) ) ) # ( \key0~input_o\ & ( (\u1|v\(1) & (\u1|v\(4) & (\u1|v\(2) & (!\u1|v\(0) & \u1|v\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111000000000000000000001111000011110000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_v\(1),
	datab => \u1|ALT_INV_v\(4),
	datac => \u1|ALT_INV_v\(2),
	datad => \u1|ALT_INV_v\(0),
	datae => \ALT_INV_key0~input_o\,
	dataf => \u1|ALT_INV_v\(3),
	datag => \u1|ALT_INV_rollover_v~q\,
	combout => \u1|rollover_v~0_combout\);

-- Location: FF_X37_Y1_N44
\u1|rollover_v\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputCLKENA0_outclk\,
	d => \u1|rollover_v~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rollover_v~q\);

-- Location: MLABCELL_X37_Y1_N18
\u1|v~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|v~4_combout\ = ( !\u1|rollover_v~q\ & ( !\u1|v\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|ALT_INV_v\(0),
	dataf => \u1|ALT_INV_rollover_v~q\,
	combout => \u1|v~4_combout\);

-- Location: FF_X37_Y1_N20
\u1|v[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputCLKENA0_outclk\,
	d => \u1|v~4_combout\,
	clrn => \key0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|v[0]~DUPLICATE_q\);

-- Location: FF_X37_Y1_N50
\u1|v[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputCLKENA0_outclk\,
	d => \u1|v~0_combout\,
	clrn => \key0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|v[4]~DUPLICATE_q\);

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

-- Location: IOIBUF_X34_Y0_N18
\sw[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: M10K_X38_Y1_N0
\ram0|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "000000000F000000000E000000000D000000000C000000000B000000000A000000000A000000000900000000080000000007000000000600000000050000000004000000000300000000020000000001000000000F000000000E000000000D000000000C000000000B000000000A0000000009000000000800000000070000000006000000000500000000040000000003000000000200000000010000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "lab8part4.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram32x4:ram0|altsyncram:altsyncram_component|altsyncram_aq04:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 40,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 4,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 40,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 4,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \ALT_INV_key1~input_o\,
	portbre => VCC,
	clk0 => \clk50~inputCLKENA0_outclk\,
	clk1 => \clk50~inputCLKENA0_outclk\,
	ena0 => \ALT_INV_key1~input_o\,
	portadatain => \ram0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \ram0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \ram0|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram0|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LABCELL_X40_Y1_N27
\h1|hex[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \h1|hex\(6) = ( !\sw[7]~input_o\ & ( \sw[5]~input_o\ & ( (\sw[4]~input_o\ & \sw[6]~input_o\) ) ) ) # ( \sw[7]~input_o\ & ( !\sw[5]~input_o\ & ( (!\sw[4]~input_o\ & \sw[6]~input_o\) ) ) ) # ( !\sw[7]~input_o\ & ( !\sw[5]~input_o\ & ( !\sw[6]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000010100000101000000101000001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[4]~input_o\,
	datac => \ALT_INV_sw[6]~input_o\,
	datae => \ALT_INV_sw[7]~input_o\,
	dataf => \ALT_INV_sw[5]~input_o\,
	combout => \h1|hex\(6));

-- Location: LABCELL_X40_Y1_N30
\h1|hex[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \h1|hex[5]~0_combout\ = ( !\sw[7]~input_o\ & ( \sw[5]~input_o\ & ( (!\sw[6]~input_o\) # (\sw[4]~input_o\) ) ) ) # ( \sw[7]~input_o\ & ( !\sw[5]~input_o\ & ( (\sw[6]~input_o\ & \sw[4]~input_o\) ) ) ) # ( !\sw[7]~input_o\ & ( !\sw[5]~input_o\ & ( 
-- (!\sw[6]~input_o\ & \sw[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000110000001111001111110011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sw[6]~input_o\,
	datac => \ALT_INV_sw[4]~input_o\,
	datae => \ALT_INV_sw[7]~input_o\,
	dataf => \ALT_INV_sw[5]~input_o\,
	combout => \h1|hex[5]~0_combout\);

-- Location: LABCELL_X40_Y1_N36
\h1|hex[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \h1|hex[4]~1_combout\ = ( !\sw[7]~input_o\ & ( \sw[5]~input_o\ & ( \sw[4]~input_o\ ) ) ) # ( \sw[7]~input_o\ & ( !\sw[5]~input_o\ & ( (!\sw[6]~input_o\ & \sw[4]~input_o\) ) ) ) # ( !\sw[7]~input_o\ & ( !\sw[5]~input_o\ & ( (\sw[4]~input_o\) # 
-- (\sw[6]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111000011000000110000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sw[6]~input_o\,
	datac => \ALT_INV_sw[4]~input_o\,
	datae => \ALT_INV_sw[7]~input_o\,
	dataf => \ALT_INV_sw[5]~input_o\,
	combout => \h1|hex[4]~1_combout\);

-- Location: LABCELL_X40_Y1_N6
\h1|hex[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \h1|hex[3]~2_combout\ = ( \sw[7]~input_o\ & ( \sw[5]~input_o\ & ( !\sw[6]~input_o\ $ (\sw[4]~input_o\) ) ) ) # ( !\sw[7]~input_o\ & ( \sw[5]~input_o\ & ( (\sw[6]~input_o\ & \sw[4]~input_o\) ) ) ) # ( !\sw[7]~input_o\ & ( !\sw[5]~input_o\ & ( 
-- !\sw[6]~input_o\ $ (!\sw[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100000000000000000000000011000000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sw[6]~input_o\,
	datac => \ALT_INV_sw[4]~input_o\,
	datae => \ALT_INV_sw[7]~input_o\,
	dataf => \ALT_INV_sw[5]~input_o\,
	combout => \h1|hex[3]~2_combout\);

-- Location: LABCELL_X40_Y1_N51
\h1|hex[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \h1|hex[2]~3_combout\ = ( \sw[7]~input_o\ & ( \sw[5]~input_o\ & ( \sw[6]~input_o\ ) ) ) # ( !\sw[7]~input_o\ & ( \sw[5]~input_o\ & ( (!\sw[4]~input_o\ & !\sw[6]~input_o\) ) ) ) # ( \sw[7]~input_o\ & ( !\sw[5]~input_o\ & ( (!\sw[4]~input_o\ & 
-- \sw[6]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101010100000101000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[4]~input_o\,
	datac => \ALT_INV_sw[6]~input_o\,
	datae => \ALT_INV_sw[7]~input_o\,
	dataf => \ALT_INV_sw[5]~input_o\,
	combout => \h1|hex[2]~3_combout\);

-- Location: LABCELL_X40_Y1_N18
\h1|hex[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \h1|hex[1]~4_combout\ = ( \sw[7]~input_o\ & ( \sw[5]~input_o\ & ( (\sw[4]~input_o\) # (\sw[6]~input_o\) ) ) ) # ( !\sw[7]~input_o\ & ( \sw[5]~input_o\ & ( (\sw[6]~input_o\ & !\sw[4]~input_o\) ) ) ) # ( \sw[7]~input_o\ & ( !\sw[5]~input_o\ & ( 
-- (\sw[6]~input_o\ & !\sw[4]~input_o\) ) ) ) # ( !\sw[7]~input_o\ & ( !\sw[5]~input_o\ & ( (\sw[6]~input_o\ & \sw[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011001100000011000000110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sw[6]~input_o\,
	datac => \ALT_INV_sw[4]~input_o\,
	datae => \ALT_INV_sw[7]~input_o\,
	dataf => \ALT_INV_sw[5]~input_o\,
	combout => \h1|hex[1]~4_combout\);

-- Location: LABCELL_X40_Y1_N15
\h1|hex[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \h1|hex[0]~5_combout\ = ( \sw[7]~input_o\ & ( \sw[5]~input_o\ & ( (\sw[4]~input_o\ & !\sw[6]~input_o\) ) ) ) # ( \sw[7]~input_o\ & ( !\sw[5]~input_o\ & ( (\sw[4]~input_o\ & \sw[6]~input_o\) ) ) ) # ( !\sw[7]~input_o\ & ( !\sw[5]~input_o\ & ( 
-- !\sw[4]~input_o\ $ (!\sw[6]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010000001010000010100000000000000000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[4]~input_o\,
	datac => \ALT_INV_sw[6]~input_o\,
	datae => \ALT_INV_sw[7]~input_o\,
	dataf => \ALT_INV_sw[5]~input_o\,
	combout => \h1|hex[0]~5_combout\);

-- Location: MLABCELL_X37_Y1_N12
\h3|hex[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \h3|hex\(6) = ( !\u1|v\(1) & ( \u1|v\(3) & ( (!\u1|v[0]~DUPLICATE_q\ & \u1|v\(2)) ) ) ) # ( \u1|v\(1) & ( !\u1|v\(3) & ( (\u1|v[0]~DUPLICATE_q\ & \u1|v\(2)) ) ) ) # ( !\u1|v\(1) & ( !\u1|v\(3) & ( !\u1|v\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000001010000010100001010000010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_v[0]~DUPLICATE_q\,
	datac => \u1|ALT_INV_v\(2),
	datae => \u1|ALT_INV_v\(1),
	dataf => \u1|ALT_INV_v\(3),
	combout => \h3|hex\(6));

-- Location: MLABCELL_X37_Y1_N3
\h3|hex[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \h3|hex[5]~0_combout\ = ( \u1|v\(2) & ( (\u1|v[0]~DUPLICATE_q\ & (!\u1|v\(3) $ (!\u1|v\(1)))) ) ) # ( !\u1|v\(2) & ( (!\u1|v\(3) & ((\u1|v\(1)) # (\u1|v[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011110000010100001111000000000101010100000000010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_v[0]~DUPLICATE_q\,
	datac => \u1|ALT_INV_v\(3),
	datad => \u1|ALT_INV_v\(1),
	dataf => \u1|ALT_INV_v\(2),
	combout => \h3|hex[5]~0_combout\);

-- Location: MLABCELL_X37_Y1_N6
\h3|hex[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \h3|hex[4]~1_combout\ = ( !\u1|v\(1) & ( \u1|v\(3) & ( (\u1|v[0]~DUPLICATE_q\ & !\u1|v\(2)) ) ) ) # ( \u1|v\(1) & ( !\u1|v\(3) & ( \u1|v[0]~DUPLICATE_q\ ) ) ) # ( !\u1|v\(1) & ( !\u1|v\(3) & ( (\u1|v\(2)) # (\u1|v[0]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010101010101010101010000010100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_v[0]~DUPLICATE_q\,
	datac => \u1|ALT_INV_v\(2),
	datae => \u1|ALT_INV_v\(1),
	dataf => \u1|ALT_INV_v\(3),
	combout => \h3|hex[4]~1_combout\);

-- Location: MLABCELL_X37_Y1_N21
\h3|hex[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \h3|hex[3]~2_combout\ = ( \u1|v[0]~DUPLICATE_q\ & ( (!\u1|v\(2) & (!\u1|v\(3) & !\u1|v\(1))) # (\u1|v\(2) & ((\u1|v\(1)))) ) ) # ( !\u1|v[0]~DUPLICATE_q\ & ( (!\u1|v\(2) & (\u1|v\(3) & \u1|v\(1))) # (\u1|v\(2) & (!\u1|v\(3) & !\u1|v\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000001010010100000000101010100000010101011010000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_v\(2),
	datac => \u1|ALT_INV_v\(3),
	datad => \u1|ALT_INV_v\(1),
	dataf => \u1|ALT_INV_v[0]~DUPLICATE_q\,
	combout => \h3|hex[3]~2_combout\);

-- Location: MLABCELL_X37_Y1_N30
\h3|hex[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \h3|hex[2]~3_combout\ = ( \u1|v[0]~DUPLICATE_q\ & ( (\u1|v\(2) & (\u1|v\(3) & \u1|v\(1))) ) ) # ( !\u1|v[0]~DUPLICATE_q\ & ( (!\u1|v\(2) & (!\u1|v\(3) & \u1|v\(1))) # (\u1|v\(2) & (\u1|v\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100100011001000110010001100100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_v\(2),
	datab => \u1|ALT_INV_v\(3),
	datac => \u1|ALT_INV_v\(1),
	dataf => \u1|ALT_INV_v[0]~DUPLICATE_q\,
	combout => \h3|hex[2]~3_combout\);

-- Location: MLABCELL_X37_Y1_N33
\h3|hex[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \h3|hex[1]~4_combout\ = ( \u1|v[0]~DUPLICATE_q\ & ( (!\u1|v\(3) & (\u1|v\(2) & !\u1|v\(1))) # (\u1|v\(3) & ((\u1|v\(1)))) ) ) # ( !\u1|v[0]~DUPLICATE_q\ & ( (\u1|v\(2) & ((\u1|v\(1)) # (\u1|v\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101010101000100010101010101000100001100110100010000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_v\(2),
	datab => \u1|ALT_INV_v\(3),
	datad => \u1|ALT_INV_v\(1),
	dataf => \u1|ALT_INV_v[0]~DUPLICATE_q\,
	combout => \h3|hex[1]~4_combout\);

-- Location: MLABCELL_X37_Y1_N36
\h3|hex[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \h3|hex[0]~5_combout\ = ( \u1|v\(1) & ( \u1|v\(3) & ( (!\u1|v\(2) & \u1|v[0]~DUPLICATE_q\) ) ) ) # ( !\u1|v\(1) & ( \u1|v\(3) & ( (\u1|v\(2) & \u1|v[0]~DUPLICATE_q\) ) ) ) # ( !\u1|v\(1) & ( !\u1|v\(3) & ( !\u1|v\(2) $ (!\u1|v[0]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010000000000000000000000101000001010000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_v\(2),
	datac => \u1|ALT_INV_v[0]~DUPLICATE_q\,
	datae => \u1|ALT_INV_v\(1),
	dataf => \u1|ALT_INV_v\(3),
	combout => \h3|hex[0]~5_combout\);

-- Location: MLABCELL_X45_Y1_N24
\h5|hex[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \h5|hex\(6) = ( \ram0|altsyncram_component|auto_generated|q_b\(3) & ( (\ram0|altsyncram_component|auto_generated|q_b\(2) & (!\ram0|altsyncram_component|auto_generated|q_b\(1) & !\ram0|altsyncram_component|auto_generated|q_b\(0))) ) ) # ( 
-- !\ram0|altsyncram_component|auto_generated|q_b\(3) & ( (!\ram0|altsyncram_component|auto_generated|q_b\(2) & (!\ram0|altsyncram_component|auto_generated|q_b\(1))) # (\ram0|altsyncram_component|auto_generated|q_b\(2) & 
-- (\ram0|altsyncram_component|auto_generated|q_b\(1) & \ram0|altsyncram_component|auto_generated|q_b\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000011110000001100001100110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ram0|altsyncram_component|auto_generated|ALT_INV_q_b\(2),
	datac => \ram0|altsyncram_component|auto_generated|ALT_INV_q_b\(1),
	datad => \ram0|altsyncram_component|auto_generated|ALT_INV_q_b\(0),
	dataf => \ram0|altsyncram_component|auto_generated|ALT_INV_q_b\(3),
	combout => \h5|hex\(6));

-- Location: MLABCELL_X45_Y1_N45
\h5|hex[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \h5|hex[5]~0_combout\ = ( \ram0|altsyncram_component|auto_generated|q_b\(3) & ( (!\ram0|altsyncram_component|auto_generated|q_b\(1) & (\ram0|altsyncram_component|auto_generated|q_b\(0) & \ram0|altsyncram_component|auto_generated|q_b\(2))) ) ) # ( 
-- !\ram0|altsyncram_component|auto_generated|q_b\(3) & ( (!\ram0|altsyncram_component|auto_generated|q_b\(1) & (\ram0|altsyncram_component|auto_generated|q_b\(0) & !\ram0|altsyncram_component|auto_generated|q_b\(2))) # 
-- (\ram0|altsyncram_component|auto_generated|q_b\(1) & ((!\ram0|altsyncram_component|auto_generated|q_b\(2)) # (\ram0|altsyncram_component|auto_generated|q_b\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000101110001011100010111000100000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ram0|altsyncram_component|auto_generated|ALT_INV_q_b\(1),
	datab => \ram0|altsyncram_component|auto_generated|ALT_INV_q_b\(0),
	datac => \ram0|altsyncram_component|auto_generated|ALT_INV_q_b\(2),
	dataf => \ram0|altsyncram_component|auto_generated|ALT_INV_q_b\(3),
	combout => \h5|hex[5]~0_combout\);

-- Location: MLABCELL_X45_Y1_N36
\h5|hex[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \h5|hex[4]~1_combout\ = ( \ram0|altsyncram_component|auto_generated|q_b\(3) & ( (!\ram0|altsyncram_component|auto_generated|q_b\(2) & (!\ram0|altsyncram_component|auto_generated|q_b\(1) & \ram0|altsyncram_component|auto_generated|q_b\(0))) ) ) # ( 
-- !\ram0|altsyncram_component|auto_generated|q_b\(3) & ( ((\ram0|altsyncram_component|auto_generated|q_b\(2) & !\ram0|altsyncram_component|auto_generated|q_b\(1))) # (\ram0|altsyncram_component|auto_generated|q_b\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011111111001100001111111100000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ram0|altsyncram_component|auto_generated|ALT_INV_q_b\(2),
	datac => \ram0|altsyncram_component|auto_generated|ALT_INV_q_b\(1),
	datad => \ram0|altsyncram_component|auto_generated|ALT_INV_q_b\(0),
	dataf => \ram0|altsyncram_component|auto_generated|ALT_INV_q_b\(3),
	combout => \h5|hex[4]~1_combout\);

-- Location: MLABCELL_X45_Y1_N33
\h5|hex[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \h5|hex[3]~2_combout\ = ( \ram0|altsyncram_component|auto_generated|q_b\(3) & ( (\ram0|altsyncram_component|auto_generated|q_b\(1) & (!\ram0|altsyncram_component|auto_generated|q_b\(0) $ (\ram0|altsyncram_component|auto_generated|q_b\(2)))) ) ) # ( 
-- !\ram0|altsyncram_component|auto_generated|q_b\(3) & ( (!\ram0|altsyncram_component|auto_generated|q_b\(1) & (!\ram0|altsyncram_component|auto_generated|q_b\(0) $ (!\ram0|altsyncram_component|auto_generated|q_b\(2)))) # 
-- (\ram0|altsyncram_component|auto_generated|q_b\(1) & (\ram0|altsyncram_component|auto_generated|q_b\(0) & \ram0|altsyncram_component|auto_generated|q_b\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100100101001001010010010100101000001010000010100000101000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ram0|altsyncram_component|auto_generated|ALT_INV_q_b\(1),
	datab => \ram0|altsyncram_component|auto_generated|ALT_INV_q_b\(0),
	datac => \ram0|altsyncram_component|auto_generated|ALT_INV_q_b\(2),
	dataf => \ram0|altsyncram_component|auto_generated|ALT_INV_q_b\(3),
	combout => \h5|hex[3]~2_combout\);

-- Location: MLABCELL_X45_Y1_N12
\h5|hex[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \h5|hex[2]~3_combout\ = ( \ram0|altsyncram_component|auto_generated|q_b\(3) & ( (\ram0|altsyncram_component|auto_generated|q_b\(2) & ((!\ram0|altsyncram_component|auto_generated|q_b\(0)) # (\ram0|altsyncram_component|auto_generated|q_b\(1)))) ) ) # ( 
-- !\ram0|altsyncram_component|auto_generated|q_b\(3) & ( (!\ram0|altsyncram_component|auto_generated|q_b\(2) & (\ram0|altsyncram_component|auto_generated|q_b\(1) & !\ram0|altsyncram_component|auto_generated|q_b\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000110011000000110011001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ram0|altsyncram_component|auto_generated|ALT_INV_q_b\(2),
	datac => \ram0|altsyncram_component|auto_generated|ALT_INV_q_b\(1),
	datad => \ram0|altsyncram_component|auto_generated|ALT_INV_q_b\(0),
	dataf => \ram0|altsyncram_component|auto_generated|ALT_INV_q_b\(3),
	combout => \h5|hex[2]~3_combout\);

-- Location: MLABCELL_X45_Y1_N57
\h5|hex[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \h5|hex[1]~4_combout\ = ( \ram0|altsyncram_component|auto_generated|q_b\(3) & ( (!\ram0|altsyncram_component|auto_generated|q_b\(0) & ((\ram0|altsyncram_component|auto_generated|q_b\(2)))) # (\ram0|altsyncram_component|auto_generated|q_b\(0) & 
-- (\ram0|altsyncram_component|auto_generated|q_b\(1))) ) ) # ( !\ram0|altsyncram_component|auto_generated|q_b\(3) & ( (\ram0|altsyncram_component|auto_generated|q_b\(2) & (!\ram0|altsyncram_component|auto_generated|q_b\(1) $ 
-- (!\ram0|altsyncram_component|auto_generated|q_b\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011000011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ram0|altsyncram_component|auto_generated|ALT_INV_q_b\(1),
	datab => \ram0|altsyncram_component|auto_generated|ALT_INV_q_b\(0),
	datac => \ram0|altsyncram_component|auto_generated|ALT_INV_q_b\(2),
	dataf => \ram0|altsyncram_component|auto_generated|ALT_INV_q_b\(3),
	combout => \h5|hex[1]~4_combout\);

-- Location: MLABCELL_X45_Y1_N0
\h5|hex[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \h5|hex[0]~5_combout\ = ( \ram0|altsyncram_component|auto_generated|q_b\(3) & ( (\ram0|altsyncram_component|auto_generated|q_b\(0) & (!\ram0|altsyncram_component|auto_generated|q_b\(2) $ (!\ram0|altsyncram_component|auto_generated|q_b\(1)))) ) ) # ( 
-- !\ram0|altsyncram_component|auto_generated|q_b\(3) & ( (!\ram0|altsyncram_component|auto_generated|q_b\(1) & (!\ram0|altsyncram_component|auto_generated|q_b\(2) $ (!\ram0|altsyncram_component|auto_generated|q_b\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011000000001100001100000000000000001111000000000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ram0|altsyncram_component|auto_generated|ALT_INV_q_b\(2),
	datac => \ram0|altsyncram_component|auto_generated|ALT_INV_q_b\(1),
	datad => \ram0|altsyncram_component|auto_generated|ALT_INV_q_b\(0),
	dataf => \ram0|altsyncram_component|auto_generated|ALT_INV_q_b\(3),
	combout => \h5|hex[0]~5_combout\);

-- Location: IOIBUF_X33_Y0_N75
\sw[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(9),
	o => \sw[9]~input_o\);

-- Location: MLABCELL_X37_Y32_N0
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


