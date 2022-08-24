library ieee;
use ieee.std_logic_1164.all;

entity mux_2bit_4to1 is
	port (
		s,u,v,w,x : in std_logic_vector(1 downto 0);
		m : out std_logic_vector( 1 downto 0)
	);
end mux_2bit_4to1;

architecture behavior of mux_2bit_4to1 is
begin
	
	m(0) <= (u(0) and (not(s(0)) and not(s(1)) ) ) 
	or (v(0) and ( s(0) and  not ( s(1) ) )) 
	or (w(0) and ( s(1) and not(s(0))  )) 
	or (x(0) and (s(0) and s(1)));
	
	m(1) <= (u(1) and (not(s(0)) and not(s(1)) ) ) 
	or (v(1) and ( s(0) and  not ( s(1) ) )) 
	or (w(1) and ( s(1) and not(s(0))  )) 
	or (x(1) and (s(0) and s(1)));

end behavior;