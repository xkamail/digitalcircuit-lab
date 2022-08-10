library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity lab2part5 is 
	port (
		a : in std_logic_vector(3 downto 0);
		b : in std_logic_vector(3 downto 0);
		c0 : in std_logic;
		
		hex1: out std_logic_vector(0 to 6); -- s1
		hex0: out std_logic_vector(0 to 6) -- s0
	);
end lab2part5;

architecture behavior of lab2part5 is 
	component sevenseg 
		port (
			num : in std_logic_vector(3 downto 0);
			hex : out std_logic_vector(0 to 6)
		);
	end component;
	
	signal t0,z0,s0 : std_logic_vector(4 downto 0);
	signal s1,c1 : std_logic_vector(3 downto 0);
	signal nine : std_logic_vector(4 downto 0); -- temp variable for compare
begin
	nine <= "01001";
	t0 <= ('0' & a) + ('0' & b) + c0;
	process(t0,s0,s1)
	begin
		if t0 > nine then 
			z0 <= "01010";
			c1 <= "0001";
		else 
			z0 <= "00000";
			c1 <= "0000";
		end if;
		s0 <= t0 - z0;
		s1 <= c1;
	end process;
	
	u0: sevenseg port map (s0(3 downto 0),hex0);
	u1: sevenseg port map (s1,hex1);
	
	
end behavior;