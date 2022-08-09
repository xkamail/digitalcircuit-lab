library ieee;
use ieee.std_logic_1164.all;

entity lab2part1 is 
	port (
		sw1 : in std_logic_vector(3 downto 0);
		sw2 : in std_logic_vector(3 downto 0);
		hex0 : out std_logic_vector(0 to 6);
		hex1 : out std_logic_vector(0 to 6)
	);
end lab2part1;

architecture behavior of lab2part1 is 
	component sevenseg 
		port (
			num : in std_logic_vector(3 downto 0);
			hex : out std_logic_vector(0 to 6)
		);
	end component;
begin
	o0: sevenseg port map ( sw1 , hex0);
	o1: sevenseg port map ( sw2 , hex1);
end behavior;