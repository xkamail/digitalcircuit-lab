library ieee;
use ieee.std_logic_1164.all;

entity lab1part6 is
	port (
		sw : in std_logic_vector(9 downto 0);
		ledr : out std_logic_vector(9 downto 0);
		hex0 : out std_logic_vector(0 to 6);
		hex1 : out std_logic_vector(0 to 6);
		hex2 : out std_logic_vector(0 to 6);
		hex3 : out std_logic_vector(0 to 6);
		hex4 : out std_logic_vector(0 to 6);
		hex5 : out std_logic_vector(0 to 6)
	);
end lab1part6;

architecture behavior of lab1part6 is
	component mux_3bit_6to1
			port (
		s : in std_logic_vector(2 downto 0 );
		u,v,w,x,a,b : in std_logic_vector(1 downto 0);
		m : out std_logic_vector( 1 downto 0)
	);
	end component;
	component char_7seg
		port (
		c : in std_logic_vector(1 downto 0);
		hex : out std_logic_vector(0 to 6 )
	);
	end component;
	
	signal m0 : std_logic_vector(1 downto 0);
	signal m1 : std_logic_vector(1 downto 0);
	signal m2 : std_logic_vector(1 downto 0);
	signal m3 : std_logic_vector(1 downto 0);
	signal m4 : std_logic_vector(1 downto 0);
	signal m5 : std_logic_vector(1 downto 0);
	-- temp variable
	signal s : std_logic_vector(2 downto 0);
	signal d : std_logic_vector(1 downto 0);
	signal E : std_logic_vector(1 downto 0);
	signal zero : std_logic_vector(1 downto 0);
	signal ee : std_logic_vector(1 downto 0);
begin
	s <= sw(9 downto 7); -- sw input
	d <= sw(6 downto 5); -- d = 00
	ee <= sw(4 downto 3); -- E = 01
	zero <= sw(2 downto 1); -- 0 = 10
	
	e <= "11"; -- high input
	
	u0: mux_3bit_6to1 port map(s, e, e, e, d, ee, zero, m0 ); -- 000
	h0: char_7seg port map( m0, hex0 );
	
	u1: mux_3bit_6to1 port map(s, e, e, d, ee, zero, e, m1 ); -- 001
	h1: char_7seg port map( m1, hex1 );
	
	u2: mux_3bit_6to1 port map(s, e, d, ee, zero, e, e, m2 ); -- 010
	h2: char_7seg port map( m2, hex2 );
	
	u3: mux_3bit_6to1 port map(s, d, ee, zero, e, e, e, m3 ); --  011
	h3: char_7seg port map( m3, hex3 );
	
	u4: mux_3bit_6to1 port map(s, ee, zero, e, e, e, d, m4 ); -- 100
	h4: char_7seg port map( m4, hex4 );
	
	u5: mux_3bit_6to1 port map(s, zero, e, e, e, d, ee, m5 ); -- 101
	h5: char_7seg port map( m5, hex5 );

	ledr(0) <= sw(0);
	ledr(1) <= sw(1);
	ledr(2) <= sw(2);
	ledr(3) <= sw(3);
	ledr(4) <= sw(4);
	ledr(5) <= sw(5);
	ledr(6) <= sw(6);
	ledr(7) <= sw(7);
	ledr(8) <= sw(8);
	ledr(9) <= sw(9);
	

end behavior;