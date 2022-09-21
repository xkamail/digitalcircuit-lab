library ieee;
use ieee.std_logic_1164.all;

entity lab6part1 is
	port (
		sw : in std_logic_vector(7 downto 0);
		clock, key0 : in std_logic;
		led : out std_logic_vector(7 downto 0);
		ledr9,ledr8: out std_logic;
		hex3,hex2,hex1,hex0 : out std_logic_vector(0 to 6)
	);
end lab6part1;

architecture bhv of lab6part1 is
	component accumulator is
		generic (
			n : natural := 1
		);
		port (
			A,B : in std_logic_vector(n-1 downto 0);
			clk, reset : in std_logic;
			overflow, carry : out std_logic;
			v : out std_logic_vector(n-1 downto 0)
		);
	end component;
	component sevenseg is
		port (
			num : in std_logic_vector(3 downto 0);
			hex : out std_logic_vector(0 to 6)
		);
	end component;
	signal result,a,b : std_logic_vector(7 downto 0);
	signal c_out, oflow : std_logic;
begin
	a <= result;
	b <= sw;
	
	u0: accumulator generic map (n => 8)
						 port map (a,b, clock, key0, oflow,c_out, result);
	
	led <= result;
	
	ledr8 <= c_out;
	ledr9 <= oflow;
	
	h0: sevenseg port map(sw(3 downto 0), hex2);
	h1: sevenseg port map(sw(7 downto 4), hex3);
	h2: sevenseg port map(result(3 downto 0), hex0);
	h3: sevenseg port map(result(7 downto 4), hex1);
	
end bhv;