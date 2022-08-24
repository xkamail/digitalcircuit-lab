library ieee;
use ieee.std_logic_1164.all;

entity mux_3bit_6to1 is
	port (
		s : in std_logic_vector(2 downto 0 );
		u,v,w,x,a,b : in std_logic_vector(1 downto 0);
		m : out std_logic_vector( 1 downto 0)
	);
end mux_3bit_6to1;

architecture behavior of mux_3bit_6to1 is
begin
	m <= u when (s = "000") else 
		  v when (s = "001") else
		  w when (s = "010") else
		  x when (s = "011") else 
		  a when (s = "100") else 
		  b when (s = "101") else
		  b;
end behavior;