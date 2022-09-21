library ieee;
use ieee.std_logic_1164.all;

entity fa is
	port (
		c_in, a,b : in std_logic;
		s,c_out : out std_logic
	);
end fa;

architecture bhv of fa is
begin
	s <= a xor b xor c_in;
	c_out <= (a and b) or (a and c_in) or (b and c_in);
end bhv;