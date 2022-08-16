library ieee;
use ieee.std_logic_1164.all;

-- encoder
-- 0000 -> 6
-- 0001 -> 7
-- 0010 -> 8
-- 0011 -> 9
entity encoder_6to9 is 
	port (
		v : in std_logic_vector(3 downto 0);
		h : out std_logic_vector(3 downto 0)
	);
end encoder_6to9;

architecture behavior of encoder_6to9 is
	signal t : std_logic;
begin
	t <= (not(v(3)) and not(v(2)) and not(v(1)) and not(v(0))) or (not(v(3)) and not(v(2)) and not(v(1)) and v(0));
	h(3) <= (not(v(3)) and not(v(2)) and v(1) and not(v(0))) or (not(v(3)) and not(v(2)) and v(1) and v(0));
	h(2) <= t;
	h(1) <= t;
	h(0) <= (not(v(3)) and not(v(2)) and not(v(1)) and v(0)) or (not(v(3)) and not(v(2)) and v(1) and v(0));
end behavior;
