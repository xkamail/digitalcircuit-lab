library ieee;
use ieee.std_logic_1164.all;

entity lab6part2 is
	port (
		sw : in std_logic_vector(7 downto 0);
		clock, key0 : in std_logic;
		led : out std_logic_vector(7 downto 0);
		oflow,c_out: out std_logic
	);
end lab6part2;

architecture bhv of lab6part2 is
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
	signal result,a,b : std_logic_vector(7 downto 0);
begin
	a <= result;
	b <= sw;
	u0: accumulator generic map (n => 8)
						port map (a,b, clock, key0, oflow,c_out, result);
	
	led <= result;
end bhv;