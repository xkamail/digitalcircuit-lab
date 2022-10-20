library ieee;
use ieee.std_logic_1164.all;

entity lab9part1 is
	port (
		sw : in std_logic_vector(8 downto 0); -- SW8_0
		key0, key1, sw9 : in std_logic; -- KEY0, KEY1, SW9
		hex0,hex1 : out std_logic_vector(0 to 6);
		ledr: buffer std_logic_vector(9 downto 0)
	);
end lab9part1;


architecture bhv of lab9part1 is
	component processor is
		port (
			data_in : in std_logic_vector(8 downto 0);
			reset_n, clk, run : in std_logic;
			done : buffer std_logic;
			busWires: buffer std_logic_vector(8 downto 0);
			reg_A,reg_G,reg_IR,reg_0,reg_1 : out std_logic_vector(8 downto 0);
			Tstep_Q : out std_logic_vector(3 downto 0)
		);
	end component;
	component sevenseg is
		port (
			num : in std_logic_vector(3 downto 0);
			hex : out std_logic_vector(0 to 6)
		);
	end component;
	signal reg0,reg1: std_logic_vector(8 downto 0);
begin

	p1: processor port 
		map(
			sw(8 downto 0),
			key0,
			not(key1),
			sw9,
			ledr(9),
			ledr(8 downto 0),
			open,
			open,
			open,
			reg0,
			reg1
		);
		s0: sevenseg port map(reg0(3 downto 0),hex0);
		s1: sevenseg port map(reg1(3 downto 0),hex1);
end bhv;