library ieee;
use ieee.std_logic_1164.all;

entity lab4part5 is
	port (
		clock50 : in std_logic;
		sw : in std_logic_vector(9 downto 0);
		ledr : out std_logic_vector(9 downto 0);
		hex0 : out std_logic_vector(0 to 6);
		hex1 : out std_logic_vector(0 to 6);
		hex2 : out std_logic_vector(0 to 6);
		hex3 : out std_logic_vector(0 to 6);
		hex4 : out std_logic_vector(0 to 6);
		hex5 : out std_logic_vector(0 to 6)
	);
end lab4part5;

architecture behavior of lab4part5 is
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
	component every_seconds
		port (
			clock50 : in std_logic;
			trig : out std_logic
		);
	end component;
	component counter0to5
		port (
			clk : in std_logic;
			num : out std_logic_vector(2 downto 0)
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
	
	signal trigger : std_logic;
begin
	-- s <= sw(9 downto 7); -- sw input
	
	x0: every_seconds port map (clock50, trigger);
	x1: counter0to5 port map (trigger, s);
	
	d <= sw(6 downto 5); -- d = 00
	ee <= sw(4 downto 3); -- E = 01
	zero <= sw(2 downto 1); -- 0 = 10
	
	e <= "11"; -- high input
	
	u0: mux_3bit_6to1 port map(s, e, e, e, d, ee, zero, m0 ); -- 000
	h0: char_7seg port map( m0, hex5 );
	
	u1: mux_3bit_6to1 port map(s, e, e, d, ee, zero, e, m1 ); -- 001
	h1: char_7seg port map( m1, hex4 );
	
	u2: mux_3bit_6to1 port map(s, e, d, ee, zero, e, e, m2 ); -- 010
	h2: char_7seg port map( m2, hex3 );
	
	u3: mux_3bit_6to1 port map(s, d, ee, zero, e, e, e, m3 ); --  011
	h3: char_7seg port map( m3, hex2 );
	
	u4: mux_3bit_6to1 port map(s, ee, zero, e, e, e, d, m4 ); -- 100
	h4: char_7seg port map( m4, hex1 );
	
	u5: mux_3bit_6to1 port map(s, zero, e, e, e, d, ee, m5 ); -- 101
	h5: char_7seg port map( m5, hex0 );

	ledr <= sw;
	

end behavior;