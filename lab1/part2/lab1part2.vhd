library ieee;
use ieee.std_logic_1164.all;

entity lab1part2 is
	port (
	   x : in std_logic_vector(3 downto 0);
		y : in std_logic_vector(3 downto 0);
		s : in std_logic;
		m : out std_logic_vector(3 downto 0);
		leds :out std_logic
	);
end lab1part2;

architecture Behavior of lab1part2 is
begin
	m(0) <= (not(s) and x(0)) or (s AND y(0));
	m(1) <= (not(s) and x(1)) or (s AND y(1));
	m(2) <= (not(s) and x(2)) or (s AND y(2));
	m(3) <= (not(s) and x(3)) or (s AND y(3));
	leds <= s;
	
end Behavior;