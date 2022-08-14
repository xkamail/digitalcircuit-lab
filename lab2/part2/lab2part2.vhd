library ieee;
use ieee.std_logic_1164.all;

entity lab2part2 is 
	port (
		v : in std_logic_vector(3 downto 0);
		hex1 : out std_logic_vector(0 to 6);
		hex0 : out std_logic_vector(0 to 6)
	);
end lab2part2;

architecture behavior of lab2part2 is 
	component sevenseg 
		port (
			num : in std_logic_vector(3 downto 0);
			hex : out std_logic_vector(0 to 6)
		);
	end component;
	component circuit_a
		port (
			v : in std_logic_vector(3 downto 0);
			h : out std_logic_vector(3 downto 0)
		);
	end component;
	component mux_4bit_2to1
		port (
			s : in std_logic;
			u,v : in std_logic_vector(3 downto 0);
			
			m : out std_logic_vector(3 downto 0)
		);
	end component;
	component comparator
		port (
			a   : in std_logic_vector(3 downto 0);
			greater  : out std_logic
		);
	end component;
	
	signal d1, d0 : std_logic_vector(3 downto 0); -- final d1,d0 value
	signal m0 : std_logic; -- check has more than 9
	signal from_a : std_logic_vector(3 downto 0);
begin
	
	g4: comparator port map (v, m0);
	d1 <= "0001" when (m0 = '1') else "0000";
	g0: sevenseg port map (d1, hex1);
	g1: circuit_a port map (v, from_a);
	g2: mux_4bit_2to1 port map (m0, v, from_a, d0);
	g3: sevenseg port map (d0, hex0);
	
	
end behavior;