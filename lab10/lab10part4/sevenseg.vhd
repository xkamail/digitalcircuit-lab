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
-- 0001000 = 10 A
-- 1100000 = 11 b
-- 0110001 = 12 C
-- 1000010 = 13 d
-- 0110000 = 14 E
-- 0111000 = 15 F
entity sevenseg is 
	port (
		num : in std_logic_vector(3 downto 0);
		hex : out std_logic_vector(0 to 6)
	);
end sevenseg;

architecture behavior of sevenseg is
	
begin
	
	hex(0) <= (not(num(3)) and not(num(2)) and not(num(1)) and num(0)) 
				or (not(num(3)) and num(2) and not(num(1)) and not(num(0)))
				or (num(3) and not(num(2)) and num(1) and num(0))
				or (num(3) and num(2) and not(num(1)) and num(0));
				
	hex(1) <= (not(num(3)) and num(2) and not(num(1)) and num(0)) 
				or (not(num(3)) and num(2) and num(1) and not(num(0)))
				or (num(3) and not(num(2)) and num(1) and num(0))
				or (num(3) and num(2) and not(num(1)) and not(num(0)))
				or (num(3) and num(2) and num(1) and not(num(0)))
				or (num(3) and num(2) and num(1) and num(0));
				
	hex(2) <= (not(num(3)) and not(num(2)) and num(1) and not(num(0)))
				or (num(3) and num(2) and not(num(1)) and not(num(0)))
				or (num(3) and num(2) and num(1) and not(num(0)))
				or (num(3) and num(2) and num(1) and num(0));
	
	hex(3) <= (not(num(3)) and not(num(2)) and not(num(1)) and num(0)) 
				or (not(num(3)) and num(2) and not(num(1)) and not(num(0))) 
				or (not(num(3)) and num(2) and num(1) and num(0)) 
				or (num(3) and not(num(2)) and num(1) and not(num(0)))
				or (num(3) and num(2) and num(1) and num(0));
				
	hex(4) <= (not(num(3)) and not(num(2)) and not(num(1)) and num(0)) 
				or (not(num(3)) and not(num(2)) and num(1) and num(0)) 
				or (not(num(3)) and num(2) and not(num(1)) and not(num(0))) 
				or (not(num(3)) and num(2) and not(num(1)) and num(0)) 
				or (not(num(3)) and num(2) and num(1) and num(0)) 
				or (num(3) and not(num(2)) and not(num(1)) and num(0));
				
	hex(5) <= (not(num(3)) and not(num(2)) and not(num(1)) and num(0)) 
				or (not(num(3)) and not(num(2)) and num(1) and not(num(0))) 
				or (not(num(3)) and not(num(2)) and num(1) and num(0)) 
				or (not(num(3)) and num(2) and num(1) and num(0))
				or (num(3) and num(2) and not(num(1)) and num(0));
				
	hex(6) <= (not(num(3)) and not(num(2)) and not(num(1)) and num(0)) 
				or (not(num(3)) and not(num(2)) and not(num(1)) and not(num(0))) 
				or (not(num(3)) and num(2) and num(1) and num(0))
				or (num(3) and num(2) and not(num(1)) and not(num(0)));
end behavior;