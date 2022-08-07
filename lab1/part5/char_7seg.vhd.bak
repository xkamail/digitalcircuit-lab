library ieee;
use ieee.std_logic_1164.all;

entity char_7seg is
	port (
		c : in std_logic_vector(1 downto 0);
		hex : out std_logic_vector(0 to 6 )
	);
end char_7seg;

architecture behavior of char_7seg is
begin
	hex(0) <= (not(c(0)) and not( c(1) ) ) or ( c(1) and c(0));
	hex(1) <= (c(1) and c(0)) or (not(c(1)) and c(0));
	hex(2) <= (c(1) and c(0)) or (not (c(1)) and c(0) );
	hex(3) <= (c(1) and c(0));
	hex(4) <= (c(1) and c(0)) or (c(1) and c(0));
	hex(5) <= (c(1) and c(0)) or (not(c(1)) and not(c(0))) ;
	hex(6) <= (c(1) and c(0)) or (c(1) and not(c(0)));
end behavior;