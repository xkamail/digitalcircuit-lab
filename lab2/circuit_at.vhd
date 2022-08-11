library ieee;
use ieee.std_logic_1164.all;

-- encoder
-- 
entity circuit_a is 
	port (
		v : in std_logic_vector(3 downto 0);
		h : out std_logic_vector(3 downto 0)
	);
end circuit_a;

architecture behavior of circuit_a is
begin
	h(3) <= '0';
	-- h(2) <= '1' when(v = "1110" or v = "1111") else '0';
	h(2) <= v(3) and v(2) and v(1);
 	-- h(1) <= '1' when(v = "1100" or v = "1101") else '0';
	h(1) <= v(3) and v(2) and not(v(1));
	-- h(0) <= '1' when(v = "1011" or v = "1101" or v = "1111") else '0';
	h(0) <= (v(3) and v(2) and v(0)) or (v(3) and v(1) and v(0));
	end behavior;
	
