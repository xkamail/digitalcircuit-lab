library ieee;
use ieee.std_logic_1164.all;

entity lab1part1 is
	port ( 
		
		sw : in std_logic_vector(9 downto 0);
		ledr :out std_logic_vector(9 downto 0)
		
		);
end lab1part1;

architecture Behavior of lab1part1 is
begin
	
	ledr <= sw;
	
end behavior;