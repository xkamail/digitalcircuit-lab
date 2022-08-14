library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity lab2part6 is 
	port (
		t0 : in std_logic_vector(5 downto 0);
		debug_s0, debug_s1 : out std_logic_vector(3 downto 0);
		hex1: out std_logic_vector(0 to 6); -- s1
		hex0: out std_logic_vector(0 to 6) -- s0
	);
end lab2part6;

architecture behavior of lab2part6 is 
	component sevenseg 
		port (
			num : in std_logic_vector(3 downto 0);
			hex : out std_logic_vector(0 to 6)
		);
	end component;
	
	signal z0,s0 : std_logic_vector(5 downto 0);
	signal s1,c1 : std_logic_vector(3 downto 0);
begin
	

	process(t0)
	begin
		if t0 > 9 and t0 < 19 then 
			z0 <= "001010";
			c1 <= "0001";
		elsif t0 > 19 and t0 < 30 then
			z0 <= "010100";
			c1 <= "0010";
		elsif t0 > 29 and t0 < 40 then
			z0 <= "011110";
			c1 <= "0011";
		elsif t0 > 39 and t0 < 50 then
			z0 <= "101000";
			c1 <= "0100";
		elsif t0 > 49 and t0 < 60 then
			z0 <= "110010";
			c1 <= "0101";
		elsif t0 > 59 then
			z0 <= "111100";
			c1 <= "0110";
		else 
			z0 <= "000000";
			c1 <= "0000";
		end if;
		
	end process;
	s0 <= t0 - z0;
	s1 <= c1;
	u0: sevenseg port map (s0(3 downto 0),hex0);
	u1: sevenseg port map (s1,hex1);
	debug_s0 <= s0(3 downto 0);
	debug_s1 <= s1;
	
end behavior;