library ieee;
use ieee.std_logic_1164.all;

entity lab1part4 is
	port (
		c0 : in std_logic;
		c1 : in std_logic;
		hex : out std_logic_vector(0 to 6)
	);
end lab1part4;

architecture behavior of lab1part4 is 
begin
	
	hex(0) <= (not(c0) and not(c1) ) or ( c0 and c1);
	hex(1) <= (c0 and c1) or (not(c0) and c1);
	hex(2) <= (c0 and c1) or (not (c0) and c1 );
	hex(3) <= (c0 and c1);
	hex(4) <= (c0 and c1) or (c0 and c1);
	hex(5) <= (c0 and c1) or (not(c0) and not(c1)) ;
	hex(6) <= (c0 and c1) or (c0 and not(c1));
	
end behavior;