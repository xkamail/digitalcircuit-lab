library ieee;
use ieee.std_logic_1164.all;

entity mux_4bit_2to1 is
	port (
		s : in std_logic;
	   u,v : in std_logic_vector(3 downto 0);
		
		m : out std_logic_vector(3 downto 0)
	);
end mux_4bit_2to1;

architecture Behavior of mux_4bit_2to1 is
begin
	
	m(0) <= (u(0) and not(s)) 
				or (v(0) and s);
	m(1) <= (u(1) and not(s)) 
				or (v(1) and s);
	m(2) <= (u(2) and not(s)) 
				or (v(2) and s);
	m(3) <= (u(3) and not(s)) 
				or (v(3) and s);
	
end Behavior;