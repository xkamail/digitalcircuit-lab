library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity adder_n is
	generic ( n : integer := 8 );
	port (
		Cin : in std_logic;
		a, b : in std_logic_vector(n-1 downto 0);
		s : out std_logic_vector(n-1 downto 0);
		Cout : out std_logic
	);
end adder_n;
	
architecture bhv of adder_n is
	component fa is
		port (
			c_in, a,b : in std_logic;
			s,c_out : out std_logic
		);
	end component;
	signal sum : std_logic_vector(n-1 downto 0);
	signal c : std_logic_vector(n-1 downto 0);
begin
	f0: fa port map (Cin, a(0),b(0),sum(0),c(0));
	u0: for i in 1 to n-1 generate
			cell_i: fa port map (c(i-1), a(i),b(i), sum(i), c(i) );
		end generate;
	s <= sum;
	Cout <= c(n-1);
end bhv;