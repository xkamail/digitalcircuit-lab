library ieee;
use ieee.std_logic_1164.all;

entity full_adder is
	port (
		a : in std_logic;
		b : in std_logic;
		c_in : in std_logic;
		s : out std_logic;
		c_out : out std_logic
	);

end full_adder;


architecture bhv of full_adder is 
	signal m0 : std_logic;
begin
	m0 <= a xor b;
	s <= c_in xor m0;
	c_out <= (not(m0) and b) or (m0 and c_in);
end bhv;