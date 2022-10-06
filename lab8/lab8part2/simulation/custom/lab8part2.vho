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

-- DATE "10/06/2022 09:59:51"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for Custom VHDL only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab8part2 IS
    PORT (
	sw : IN std_logic_vector(9 DOWNTO 0);
	key0 : IN std_logic;
	hex5 : OUT std_logic_vector(0 TO 6);
	hex4 : OUT std_logic_vector(0 TO 6);
	hex2 : OUT std_logic_vector(0 TO 6);
	hex0 : OUT std_logic_vector(0 TO 6)
	);
END lab8part2;

-- Design Ports Information
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
-- sw[1]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[9]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key0	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab8part2 IS
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
SIGNAL ww_key0 : std_logic;
SIGNAL ww_hex5 : std_logic_vector(0 TO 6);
SIGNAL ww_hex4 : std_logic_vector(0 TO 6);
SIGNAL ww_hex2 : std_logic_vector(0 TO 6);
SIGNAL ww_hex0 : std_logic_vector(0 TO 6);
SIGNAL \u0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \u0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \sw[8]~input_o\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \u3|hex[5]~0_combout\ : std_logic;
SIGNAL \u3|hex[4]~1_combout\ : std_logic;
SIGNAL \u3|hex[3]~2_combout\ : std_logic;
SIGNAL \u3|hex[2]~3_combout\ : std_logic;
SIGNAL \u3|hex[1]~4_combout\ : std_logic;
SIGNAL \u3|hex[0]~5_combout\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \u4|hex[5]~0_combout\ : std_logic;
SIGNAL \u4|hex[4]~1_combout\ : std_logic;
SIGNAL \u4|hex[3]~2_combout\ : std_logic;
SIGNAL \u4|hex[2]~3_combout\ : std_logic;
SIGNAL \u4|hex[1]~4_combout\ : std_logic;
SIGNAL \u4|hex[0]~5_combout\ : std_logic;
SIGNAL \sw[9]~input_o\ : std_logic;
SIGNAL \key0~input_o\ : std_logic;
SIGNAL \key0~inputCLKENA0_outclk\ : std_logic;
SIGNAL \u1|hex[5]~0_combout\ : std_logic;
SIGNAL \u1|hex[4]~1_combout\ : std_logic;
SIGNAL \u1|hex[3]~2_combout\ : std_logic;
SIGNAL \u1|hex[2]~3_combout\ : std_logic;
SIGNAL \u1|hex[1]~4_combout\ : std_logic;
SIGNAL \u1|hex[0]~5_combout\ : std_logic;
SIGNAL \u1|hex\ : std_logic_vector(0 TO 6);
SIGNAL \u0|altsyncram_component|auto_generated|q_a\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u4|hex\ : std_logic_vector(0 TO 6);
SIGNAL \u3|hex\ : std_logic_vector(0 TO 6);
SIGNAL \ALT_INV_key0~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_sw[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[5]~input_o\ : std_logic;
SIGNAL \u0|altsyncram_component|auto_generated|ALT_INV_q_a\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_sw <= sw;
ww_key0 <= key0;
hex5 <= ww_hex5;
hex4 <= ww_hex4;
hex2 <= ww_hex2;
hex0 <= ww_hex0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\u0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \sw[3]~input_o\ & \sw[2]~input_o\ & \sw[1]~input_o\ & \sw[0]~input_o\);

\u0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\sw[8]~input_o\ & \sw[7]~input_o\ & \sw[6]~input_o\ & \sw[5]~input_o\ & \sw[4]~input_o\);

\u0|altsyncram_component|auto_generated|q_a\(0) <= \u0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\u0|altsyncram_component|auto_generated|q_a\(1) <= \u0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\u0|altsyncram_component|auto_generated|q_a\(2) <= \u0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\u0|altsyncram_component|auto_generated|q_a\(3) <= \u0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\ALT_INV_key0~inputCLKENA0_outclk\ <= NOT \key0~inputCLKENA0_outclk\;
\ALT_INV_sw[0]~input_o\ <= NOT \sw[0]~input_o\;
\ALT_INV_sw[3]~input_o\ <= NOT \sw[3]~input_o\;
\ALT_INV_sw[2]~input_o\ <= NOT \sw[2]~input_o\;
\ALT_INV_sw[1]~input_o\ <= NOT \sw[1]~input_o\;
\ALT_INV_sw[4]~input_o\ <= NOT \sw[4]~input_o\;
\ALT_INV_sw[7]~input_o\ <= NOT \sw[7]~input_o\;
\ALT_INV_sw[6]~input_o\ <= NOT \sw[6]~input_o\;
\ALT_INV_sw[5]~input_o\ <= NOT \sw[5]~input_o\;
\u0|altsyncram_component|auto_generated|ALT_INV_q_a\(1) <= NOT \u0|altsyncram_component|auto_generated|q_a\(1);
\u0|altsyncram_component|auto_generated|ALT_INV_q_a\(2) <= NOT \u0|altsyncram_component|auto_generated|q_a\(2);
\u0|altsyncram_component|auto_generated|ALT_INV_q_a\(3) <= NOT \u0|altsyncram_component|auto_generated|q_a\(3);
\u0|altsyncram_component|auto_generated|ALT_INV_q_a\(0) <= NOT \u0|altsyncram_component|auto_generated|q_a\(0);

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
	i => \u3|hex\(6),
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
	i => \u3|hex[5]~0_combout\,
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
	i => \u3|hex[4]~1_combout\,
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
	i => \u3|hex[3]~2_combout\,
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
	i => \u3|hex[2]~3_combout\,
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
	i => \u3|hex[1]~4_combout\,
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
	i => \u3|hex[0]~5_combout\,
	devoe => ww_devoe,
	o => ww_hex4(0));

-- Location: IOOBUF_X40_Y0_N76
\hex2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|hex\(6),
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
	i => \u4|hex[5]~0_combout\,
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
	i => \u4|hex[4]~1_combout\,
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
	i => \u4|hex[3]~2_combout\,
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
	i => \u4|hex[2]~3_combout\,
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
	i => \u4|hex[1]~4_combout\,
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
	i => \u4|hex[0]~5_combout\,
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
	i => \u1|hex\(6),
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
	i => \u1|hex[5]~0_combout\,
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
	i => \u1|hex[4]~1_combout\,
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
	i => \u1|hex[3]~2_combout\,
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
	i => \u1|hex[2]~3_combout\,
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
	i => \u1|hex[1]~4_combout\,
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
	i => \u1|hex[0]~5_combout\,
	devoe => ww_devoe,
	o => ww_hex0(0));

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

-- Location: LABCELL_X40_Y1_N30
\u3|hex[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|hex\(6) = ( !\sw[7]~input_o\ & ( \sw[5]~input_o\ & ( (\sw[6]~input_o\ & \sw[4]~input_o\) ) ) ) # ( \sw[7]~input_o\ & ( !\sw[5]~input_o\ & ( (\sw[6]~input_o\ & !\sw[4]~input_o\) ) ) ) # ( !\sw[7]~input_o\ & ( !\sw[5]~input_o\ & ( !\sw[6]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100001100110000000000000000001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sw[6]~input_o\,
	datad => \ALT_INV_sw[4]~input_o\,
	datae => \ALT_INV_sw[7]~input_o\,
	dataf => \ALT_INV_sw[5]~input_o\,
	combout => \u3|hex\(6));

-- Location: LABCELL_X40_Y1_N39
\u3|hex[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|hex[5]~0_combout\ = ( !\sw[7]~input_o\ & ( \sw[5]~input_o\ & ( (!\sw[6]~input_o\) # (\sw[4]~input_o\) ) ) ) # ( \sw[7]~input_o\ & ( !\sw[5]~input_o\ & ( (\sw[4]~input_o\ & \sw[6]~input_o\) ) ) ) # ( !\sw[7]~input_o\ & ( !\sw[5]~input_o\ & ( 
-- (\sw[4]~input_o\ & !\sw[6]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000000110000001111110011111100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sw[4]~input_o\,
	datac => \ALT_INV_sw[6]~input_o\,
	datae => \ALT_INV_sw[7]~input_o\,
	dataf => \ALT_INV_sw[5]~input_o\,
	combout => \u3|hex[5]~0_combout\);

-- Location: LABCELL_X40_Y1_N45
\u3|hex[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|hex[4]~1_combout\ = ( !\sw[7]~input_o\ & ( \sw[5]~input_o\ & ( \sw[4]~input_o\ ) ) ) # ( \sw[7]~input_o\ & ( !\sw[5]~input_o\ & ( (\sw[4]~input_o\ & !\sw[6]~input_o\) ) ) ) # ( !\sw[7]~input_o\ & ( !\sw[5]~input_o\ & ( (\sw[6]~input_o\) # 
-- (\sw[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001100000011000000110011001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sw[4]~input_o\,
	datac => \ALT_INV_sw[6]~input_o\,
	datae => \ALT_INV_sw[7]~input_o\,
	dataf => \ALT_INV_sw[5]~input_o\,
	combout => \u3|hex[4]~1_combout\);

-- Location: LABCELL_X40_Y1_N18
\u3|hex[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|hex[3]~2_combout\ = ( \sw[7]~input_o\ & ( \sw[5]~input_o\ & ( !\sw[6]~input_o\ $ (\sw[4]~input_o\) ) ) ) # ( !\sw[7]~input_o\ & ( \sw[5]~input_o\ & ( (\sw[6]~input_o\ & \sw[4]~input_o\) ) ) ) # ( !\sw[7]~input_o\ & ( !\sw[5]~input_o\ & ( 
-- !\sw[6]~input_o\ $ (!\sw[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100000000000000000000000000001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sw[6]~input_o\,
	datad => \ALT_INV_sw[4]~input_o\,
	datae => \ALT_INV_sw[7]~input_o\,
	dataf => \ALT_INV_sw[5]~input_o\,
	combout => \u3|hex[3]~2_combout\);

-- Location: LABCELL_X40_Y1_N24
\u3|hex[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|hex[2]~3_combout\ = ( \sw[7]~input_o\ & ( \sw[5]~input_o\ & ( \sw[6]~input_o\ ) ) ) # ( !\sw[7]~input_o\ & ( \sw[5]~input_o\ & ( (!\sw[6]~input_o\ & !\sw[4]~input_o\) ) ) ) # ( \sw[7]~input_o\ & ( !\sw[5]~input_o\ & ( (\sw[6]~input_o\ & 
-- !\sw[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000000011001100000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sw[6]~input_o\,
	datad => \ALT_INV_sw[4]~input_o\,
	datae => \ALT_INV_sw[7]~input_o\,
	dataf => \ALT_INV_sw[5]~input_o\,
	combout => \u3|hex[2]~3_combout\);

-- Location: LABCELL_X40_Y1_N3
\u3|hex[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|hex[1]~4_combout\ = ( \sw[7]~input_o\ & ( \sw[5]~input_o\ & ( (\sw[6]~input_o\) # (\sw[4]~input_o\) ) ) ) # ( !\sw[7]~input_o\ & ( \sw[5]~input_o\ & ( (!\sw[4]~input_o\ & \sw[6]~input_o\) ) ) ) # ( \sw[7]~input_o\ & ( !\sw[5]~input_o\ & ( 
-- (!\sw[4]~input_o\ & \sw[6]~input_o\) ) ) ) # ( !\sw[7]~input_o\ & ( !\sw[5]~input_o\ & ( (\sw[4]~input_o\ & \sw[6]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000011000000110000001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sw[4]~input_o\,
	datac => \ALT_INV_sw[6]~input_o\,
	datae => \ALT_INV_sw[7]~input_o\,
	dataf => \ALT_INV_sw[5]~input_o\,
	combout => \u3|hex[1]~4_combout\);

-- Location: LABCELL_X40_Y1_N6
\u3|hex[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|hex[0]~5_combout\ = ( \sw[7]~input_o\ & ( \sw[5]~input_o\ & ( (!\sw[6]~input_o\ & \sw[4]~input_o\) ) ) ) # ( \sw[7]~input_o\ & ( !\sw[5]~input_o\ & ( (\sw[6]~input_o\ & \sw[4]~input_o\) ) ) ) # ( !\sw[7]~input_o\ & ( !\sw[5]~input_o\ & ( 
-- !\sw[6]~input_o\ $ (!\sw[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100000000000011001100000000000000000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sw[6]~input_o\,
	datad => \ALT_INV_sw[4]~input_o\,
	datae => \ALT_INV_sw[7]~input_o\,
	dataf => \ALT_INV_sw[5]~input_o\,
	combout => \u3|hex[0]~5_combout\);

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

-- Location: MLABCELL_X42_Y1_N30
\u4|hex[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|hex\(6) = ( !\sw[1]~input_o\ & ( \sw[3]~input_o\ & ( (\sw[2]~input_o\ & !\sw[0]~input_o\) ) ) ) # ( \sw[1]~input_o\ & ( !\sw[3]~input_o\ & ( (\sw[2]~input_o\ & \sw[0]~input_o\) ) ) ) # ( !\sw[1]~input_o\ & ( !\sw[3]~input_o\ & ( !\sw[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100000000110000001100110000001100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sw[2]~input_o\,
	datac => \ALT_INV_sw[0]~input_o\,
	datae => \ALT_INV_sw[1]~input_o\,
	dataf => \ALT_INV_sw[3]~input_o\,
	combout => \u4|hex\(6));

-- Location: MLABCELL_X42_Y1_N9
\u4|hex[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|hex[5]~0_combout\ = ( !\sw[1]~input_o\ & ( \sw[3]~input_o\ & ( (\sw[0]~input_o\ & \sw[2]~input_o\) ) ) ) # ( \sw[1]~input_o\ & ( !\sw[3]~input_o\ & ( (!\sw[2]~input_o\) # (\sw[0]~input_o\) ) ) ) # ( !\sw[1]~input_o\ & ( !\sw[3]~input_o\ & ( 
-- (\sw[0]~input_o\ & !\sw[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000111101011111010100000101000001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[0]~input_o\,
	datac => \ALT_INV_sw[2]~input_o\,
	datae => \ALT_INV_sw[1]~input_o\,
	dataf => \ALT_INV_sw[3]~input_o\,
	combout => \u4|hex[5]~0_combout\);

-- Location: MLABCELL_X42_Y1_N45
\u4|hex[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|hex[4]~1_combout\ = ( !\sw[1]~input_o\ & ( \sw[3]~input_o\ & ( (\sw[0]~input_o\ & !\sw[2]~input_o\) ) ) ) # ( \sw[1]~input_o\ & ( !\sw[3]~input_o\ & ( \sw[0]~input_o\ ) ) ) # ( !\sw[1]~input_o\ & ( !\sw[3]~input_o\ & ( (\sw[2]~input_o\) # 
-- (\sw[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010101010101010101010000010100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[0]~input_o\,
	datac => \ALT_INV_sw[2]~input_o\,
	datae => \ALT_INV_sw[1]~input_o\,
	dataf => \ALT_INV_sw[3]~input_o\,
	combout => \u4|hex[4]~1_combout\);

-- Location: MLABCELL_X42_Y1_N18
\u4|hex[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|hex[3]~2_combout\ = ( \sw[1]~input_o\ & ( \sw[3]~input_o\ & ( !\sw[2]~input_o\ $ (\sw[0]~input_o\) ) ) ) # ( \sw[1]~input_o\ & ( !\sw[3]~input_o\ & ( (\sw[2]~input_o\ & \sw[0]~input_o\) ) ) ) # ( !\sw[1]~input_o\ & ( !\sw[3]~input_o\ & ( 
-- !\sw[2]~input_o\ $ (!\sw[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100000000110000001100000000000000001100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sw[2]~input_o\,
	datac => \ALT_INV_sw[0]~input_o\,
	datae => \ALT_INV_sw[1]~input_o\,
	dataf => \ALT_INV_sw[3]~input_o\,
	combout => \u4|hex[3]~2_combout\);

-- Location: MLABCELL_X42_Y1_N24
\u4|hex[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|hex[2]~3_combout\ = ( \sw[1]~input_o\ & ( \sw[3]~input_o\ & ( \sw[2]~input_o\ ) ) ) # ( !\sw[1]~input_o\ & ( \sw[3]~input_o\ & ( (\sw[2]~input_o\ & !\sw[0]~input_o\) ) ) ) # ( \sw[1]~input_o\ & ( !\sw[3]~input_o\ & ( (!\sw[2]~input_o\ & 
-- !\sw[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000000110000001100000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sw[2]~input_o\,
	datac => \ALT_INV_sw[0]~input_o\,
	datae => \ALT_INV_sw[1]~input_o\,
	dataf => \ALT_INV_sw[3]~input_o\,
	combout => \u4|hex[2]~3_combout\);

-- Location: MLABCELL_X42_Y1_N3
\u4|hex[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|hex[1]~4_combout\ = ( \sw[1]~input_o\ & ( \sw[3]~input_o\ & ( (\sw[2]~input_o\) # (\sw[0]~input_o\) ) ) ) # ( !\sw[1]~input_o\ & ( \sw[3]~input_o\ & ( (!\sw[0]~input_o\ & \sw[2]~input_o\) ) ) ) # ( \sw[1]~input_o\ & ( !\sw[3]~input_o\ & ( 
-- (!\sw[0]~input_o\ & \sw[2]~input_o\) ) ) ) # ( !\sw[1]~input_o\ & ( !\sw[3]~input_o\ & ( (\sw[0]~input_o\ & \sw[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000010100000101000001010000010100101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[0]~input_o\,
	datac => \ALT_INV_sw[2]~input_o\,
	datae => \ALT_INV_sw[1]~input_o\,
	dataf => \ALT_INV_sw[3]~input_o\,
	combout => \u4|hex[1]~4_combout\);

-- Location: MLABCELL_X42_Y1_N36
\u4|hex[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|hex[0]~5_combout\ = ( \sw[3]~input_o\ & ( (\sw[0]~input_o\ & (!\sw[2]~input_o\ $ (!\sw[1]~input_o\))) ) ) # ( !\sw[3]~input_o\ & ( (!\sw[1]~input_o\ & (!\sw[2]~input_o\ $ (!\sw[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000000000001111000000000000000011000011000000001100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sw[2]~input_o\,
	datac => \ALT_INV_sw[0]~input_o\,
	datad => \ALT_INV_sw[1]~input_o\,
	dataf => \ALT_INV_sw[3]~input_o\,
	combout => \u4|hex[0]~5_combout\);

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

-- Location: CLKCTRL_G4
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

-- Location: M10K_X38_Y1_N0
\u0|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram32x4:u0|altsyncram:altsyncram_component|altsyncram_hvv3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 4,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 5,
	port_b_data_width => 20,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \sw[9]~input_o\,
	portare => VCC,
	clk0 => \ALT_INV_key0~inputCLKENA0_outclk\,
	portadatain => \u0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \u0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: MLABCELL_X42_Y1_N39
\u1|hex[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|hex\(6) = ( \u0|altsyncram_component|auto_generated|q_a\(0) & ( (!\u0|altsyncram_component|auto_generated|q_a\(3) & (!\u0|altsyncram_component|auto_generated|q_a\(1) $ (\u0|altsyncram_component|auto_generated|q_a\(2)))) ) ) # ( 
-- !\u0|altsyncram_component|auto_generated|q_a\(0) & ( (!\u0|altsyncram_component|auto_generated|q_a\(1) & (!\u0|altsyncram_component|auto_generated|q_a\(2) $ (\u0|altsyncram_component|auto_generated|q_a\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001010101000000000101010100101000000001010010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datac => \u0|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datad => \u0|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	dataf => \u0|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \u1|hex\(6));

-- Location: MLABCELL_X42_Y1_N12
\u1|hex[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|hex[5]~0_combout\ = ( \u0|altsyncram_component|auto_generated|q_a\(0) & ( !\u0|altsyncram_component|auto_generated|q_a\(3) $ (((\u0|altsyncram_component|auto_generated|q_a\(2) & !\u0|altsyncram_component|auto_generated|q_a\(1)))) ) ) # ( 
-- !\u0|altsyncram_component|auto_generated|q_a\(0) & ( (!\u0|altsyncram_component|auto_generated|q_a\(3) & (!\u0|altsyncram_component|auto_generated|q_a\(2) & \u0|altsyncram_component|auto_generated|q_a\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100010011010100110101001101010011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datab => \u0|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datac => \u0|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	dataf => \u0|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \u1|hex[5]~0_combout\);

-- Location: MLABCELL_X42_Y1_N15
\u1|hex[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|hex[4]~1_combout\ = ( \u0|altsyncram_component|auto_generated|q_a\(0) & ( (!\u0|altsyncram_component|auto_generated|q_a\(3)) # ((!\u0|altsyncram_component|auto_generated|q_a\(2) & !\u0|altsyncram_component|auto_generated|q_a\(1))) ) ) # ( 
-- !\u0|altsyncram_component|auto_generated|q_a\(0) & ( (!\u0|altsyncram_component|auto_generated|q_a\(3) & (\u0|altsyncram_component|auto_generated|q_a\(2) & !\u0|altsyncram_component|auto_generated|q_a\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000011101110101010101110111010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datab => \u0|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datad => \u0|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	dataf => \u0|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \u1|hex[4]~1_combout\);

-- Location: MLABCELL_X42_Y1_N48
\u1|hex[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|hex[3]~2_combout\ = ( \u0|altsyncram_component|auto_generated|q_a\(0) & ( (!\u0|altsyncram_component|auto_generated|q_a\(2) & (!\u0|altsyncram_component|auto_generated|q_a\(3) & !\u0|altsyncram_component|auto_generated|q_a\(1))) # 
-- (\u0|altsyncram_component|auto_generated|q_a\(2) & ((\u0|altsyncram_component|auto_generated|q_a\(1)))) ) ) # ( !\u0|altsyncram_component|auto_generated|q_a\(0) & ( (!\u0|altsyncram_component|auto_generated|q_a\(3) & 
-- (\u0|altsyncram_component|auto_generated|q_a\(2) & !\u0|altsyncram_component|auto_generated|q_a\(1))) # (\u0|altsyncram_component|auto_generated|q_a\(3) & (!\u0|altsyncram_component|auto_generated|q_a\(2) & 
-- \u0|altsyncram_component|auto_generated|q_a\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010000100100001001000010010010000011100000111000001110000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datab => \u0|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datac => \u0|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	dataf => \u0|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \u1|hex[3]~2_combout\);

-- Location: MLABCELL_X42_Y1_N51
\u1|hex[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|hex[2]~3_combout\ = ( \u0|altsyncram_component|auto_generated|q_a\(0) & ( (\u0|altsyncram_component|auto_generated|q_a\(3) & (\u0|altsyncram_component|auto_generated|q_a\(2) & \u0|altsyncram_component|auto_generated|q_a\(1))) ) ) # ( 
-- !\u0|altsyncram_component|auto_generated|q_a\(0) & ( (!\u0|altsyncram_component|auto_generated|q_a\(3) & (!\u0|altsyncram_component|auto_generated|q_a\(2) & \u0|altsyncram_component|auto_generated|q_a\(1))) # 
-- (\u0|altsyncram_component|auto_generated|q_a\(3) & (\u0|altsyncram_component|auto_generated|q_a\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110011001000100011001100100000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datab => \u0|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datad => \u0|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	dataf => \u0|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \u1|hex[2]~3_combout\);

-- Location: MLABCELL_X42_Y1_N54
\u1|hex[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|hex[1]~4_combout\ = ( \u0|altsyncram_component|auto_generated|q_a\(0) & ( (!\u0|altsyncram_component|auto_generated|q_a\(3) & (\u0|altsyncram_component|auto_generated|q_a\(2) & !\u0|altsyncram_component|auto_generated|q_a\(1))) # 
-- (\u0|altsyncram_component|auto_generated|q_a\(3) & ((\u0|altsyncram_component|auto_generated|q_a\(1)))) ) ) # ( !\u0|altsyncram_component|auto_generated|q_a\(0) & ( (\u0|altsyncram_component|auto_generated|q_a\(2) & 
-- ((\u0|altsyncram_component|auto_generated|q_a\(1)) # (\u0|altsyncram_component|auto_generated|q_a\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110011000000110011001100110000000011110011000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datac => \u0|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datad => \u0|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	dataf => \u0|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \u1|hex[1]~4_combout\);

-- Location: MLABCELL_X42_Y1_N57
\u1|hex[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|hex[0]~5_combout\ = ( \u0|altsyncram_component|auto_generated|q_a\(0) & ( (!\u0|altsyncram_component|auto_generated|q_a\(3) & (!\u0|altsyncram_component|auto_generated|q_a\(2) & !\u0|altsyncram_component|auto_generated|q_a\(1))) # 
-- (\u0|altsyncram_component|auto_generated|q_a\(3) & (!\u0|altsyncram_component|auto_generated|q_a\(2) $ (!\u0|altsyncram_component|auto_generated|q_a\(1)))) ) ) # ( !\u0|altsyncram_component|auto_generated|q_a\(0) & ( 
-- (!\u0|altsyncram_component|auto_generated|q_a\(3) & (\u0|altsyncram_component|auto_generated|q_a\(2) & !\u0|altsyncram_component|auto_generated|q_a\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000010011001010001001001100101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datab => \u0|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datad => \u0|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	dataf => \u0|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \u1|hex[0]~5_combout\);

-- Location: MLABCELL_X23_Y32_N0
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


