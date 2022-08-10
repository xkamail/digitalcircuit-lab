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
	t <= '1' when (v = "0000" or v = "0001") else '0';
	h(3) <= '1' when (v = "0010" or v = "0011") else '0';
	h(2) <= t;
	h(1) <= t;
	h(0) <= '1' when (v = "0001" or v = "0011") else '0';
end behavior;