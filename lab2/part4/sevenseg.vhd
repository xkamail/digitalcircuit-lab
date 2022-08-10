library ieee;
use ieee.std_logic_1164.all;

-- 0000001 = 0
-- 1001111 = 1
-- 0010010 = 2
-- 0000110 = 3
-- 1001100 = 4
-- 0100100 = 5
-- 0100000 = 6
-- 0001111 = 7
-- 0000000 = 8
-- 0000100 = 9

entity sevenseg is 
	port (
		num : in std_logic_vector(3 downto 0);
		hex : out std_logic_vector(0 to 6)
	);
end sevenseg;

architecture behavior of sevenseg is
begin

	hex(0) <= '1' when( num = "0001" or num = "0100") else '0';
	hex(1) <= '1' when (num = "0101" or num = "0110") else '0';
	hex(2) <= '1' when (num = "0010") else '0';
	hex(3) <= '1' when (num = "0001" or num = "0100" or num = "0111") else '0';
	hex(4) <= '1' when (num = "0001" or num = "0011" or num = "0100" or num = "0101" or num = "0111" or num = "1001") else '0';
	hex(5) <= '1' when (num = "0001" or num = "0010" or num = "0011" or num = "0111") else '0';
	hex(6) <= '1' when (num = "0001" or num = "0000" or num = "0111") else '0';
end behavior;