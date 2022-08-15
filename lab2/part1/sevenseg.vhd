library ieee;
use ieee.std_logic_1164.all;

entity sevenseg is 
	port (
		num : in std_logic_vector(3 downto 0);
		hex : out std_logic_vector(0 to 6)
	);
end sevenseg;

architecture behavior of sevenseg is
	
begin
	
	hex(0) <= (not(num(3)) and not(num(2)) and not(num(1)) and num(0)) 
				or (not(num(3)) and num(2) and not(num(1)) and not(num(0)));
				
	hex(1) <= (not(num(3)) and num(2) and not(num(1)) and num(0)) 
				or (not(num(3)) and num(2) and num(1) and not(num(0)));
				
	hex(2) <= (not(num(3)) and not(num(2)) and num(1) and not(num(0)));
	
	hex(3) <= (not(num(3)) and not(num(2)) and not(num(1)) and num(0)) 
				or (not(num(3)) and num(2) and not(num(1)) and not(num(0))) 
				or (not(num(3)) and num(2) and num(1) and num(0));
				
	hex(4) <= (not(num(3)) and not(num(2)) and not(num(1)) and num(0)) 
				or (not(num(3)) and not(num(2)) and num(1) and num(0)) 
				or (not(num(3)) and num(2) and not(num(1)) and not(num(0))) 
				or (not(num(3)) and num(2) and not(num(1)) and num(0)) 
				or (not(num(3)) and num(2) and num(1) and num(0)) 
				or (num(3) and not(num(2)) and not(num(1)) and num(0));
				
	hex(5) <= (not(num(3)) and not(num(2)) and not(num(1)) and num(0)) 
				or (not(num(3)) and not(num(2)) and num(1) and not(num(0))) 
				or (not(num(3)) and not(num(2)) and num(1) and num(0)) 
				or (not(num(3)) and num(2) and num(1) and num(0));
				
	hex(6) <= (not(num(3)) and not(num(2)) and not(num(1)) and num(0)) 
				or (not(num(3)) and not(num(2)) and not(num(1)) and not(num(0))) 
				or (not(num(3)) and num(2) and num(1) and num(0));
end behavior;
	
