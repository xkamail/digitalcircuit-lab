library ieee;
use ieee.std_logic_1164.all;

entity lab4part4 is 
	port (
		sw : in std_logic_vector(9 downto 0);
		ledr : out std_logic_vector(9 downto 0);
		clock50 : in std_logic;
		debug : out std_logic;
		hex2,hex1,hex0 : out std_logic_vector(0 to 6)
	);
end lab4part4;


architecture behavior of lab4part4 is 
	component mux_2bit_4to1
		port (
			s,u,v,w,x : in std_logic_vector(1 downto 0);
			m         : out std_logic_vector(1 downto 0)
			);
	end component;
	component every_seconds
		port (
			clock50 : in std_logic;
			trig : out std_logic
		);
	end component;
	component char_7seg
		port (
			c : in std_logic_vector(1 downto 0);
			hex : out std_logic_vector(0 to 6)
		);
	end component;
	component counter0to3
		port (
			clk : in std_logic;
			n : out std_logic_vector(1 downto 0)
		);
	end component;
	signal en : std_logic;
	
	signal m0 : std_logic_vector(1 downto 0);
	signal m1 : std_logic_vector(1 downto 0);
	signal m2 : std_logic_vector(1 downto 0);
	
	signal num : std_logic_vector(1 downto 0);
begin
	
	x0: every_seconds port map (clock50, en);
	debug <= en;
	
	x1: counter0to3 port map (clock50 and en, num);
	
	
	-- sw(1 downto 0) is '0' put '10'
	-- sw(3 downto 2) is 'E' put '01'
	-- sw(5 downto 4) is 'd' put '00'
	
	-- sw | hex2 hex1 hex0
	-- 00 |  'd'  'E'  '0'
	-- 01 |  'E'  '0'  'd'
	
	u0 : mux_2bit_4to1 port map( 
			num, 
			sw(1 downto 0), sw(5 downto 4), sw(3 downto 2), sw(1 downto 0), 
			m0);
	h0 : char_7seg port map( m0, hex0);
	
	u1: mux_2bit_4to1 port map(
			num, 
			sw(3 downto 2), sw(1 downto 0), sw(5 downto 4), sw(3 downto 2) , 
			m1);
	h1 : char_7seg port map( m1, hex1);
	
	u2 : mux_2bit_4to1 port map( 
			num,  
			sw(5 downto 4), sw(3 downto 2), sw(1 downto 0), sw(5 downto 4) ,  
			m2);
	h2 : char_7seg port map( m2, hex2);

	ledr <= sw;
end behavior;