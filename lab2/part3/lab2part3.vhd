library ieee;
use ieee.std_logic_1164.all;

entity lab2part3 is 
	port (
		a : in std_logic_vector(3 downto 0);
		b : in std_logic_vector(3 downto 0);
		c_in : in std_logic;
		s : out std_logic_vector(3 downto 0);
		c_out : out std_logic
	);
end lab2part3;

architecture behavior of lab2part3 is 
	component full_adder
		port (
			a : in std_logic;
			b : in std_logic;
			c_in : in std_logic;
			s : out std_logic;
			c_out : out std_logic
		);
	end component;
	
	signal c1,c2,c3 : std_logic;
begin
	
	g0: full_adder port map (a(0),b(0),c_in,s(0),c1);
	g1: full_adder port map (a(1),b(1),c1,s(1),c2);
	g2: full_adder port map (a(2),b(2),c2,s(2),c3);
	g3: full_adder port map (a(3),b(3),c3,s(3),c_out);
	
end behavior;