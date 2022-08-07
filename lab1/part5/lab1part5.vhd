library ieee;
use ieee.std_logic_1164.all;

entity lab1part5 is
	port (
		sw : in std_logic_vector(9 downto 0);
		ledr : out std_logic_vector(9 downto 0);
		hex0 : out std_logic_vector(0 to 6);
		hex1 : out std_logic_vector(0 to 6);
		hex2 : out std_logic_vector(0 to 6)
	);
end lab1part5;

architecture behavior of lab1part5 is
	component mux_2bit_4to1
		port (
			s,u,v,w,x : in std_logic_vector(1 downto 0);
			m         : out std_logic_vector(1 downto 0)
			);
	end component;
	component char_7seg
		port (
			c : in std_logic_vector(1 downto 0);
			hex : out std_logic_vector(0 to 6)
		);
	end component;
	
	signal m0 : std_logic_vector(1 downto 0);
	signal m1 : std_logic_vector(1 downto 0);
	signal m2 : std_logic_vector(1 downto 0);
	
begin
	-- sw(1 downto 0) is '0' put '10'
	-- sw(3 downto 2) is 'E' put '01'
	-- sw(5 downto 4) is 'd' put '00'
	
	-- sw | hex2 hex1 hex0
	-- 00 |  'd'  'E'  '0'
	-- 01 |  'E'  '0'  'd'
	
	u0 : mux_2bit_4to1 port map( 
			sw(9 downto 8), 
			sw(1 downto 0), sw(5 downto 4), sw(3 downto 2), sw(1 downto 0), 
			m0);
	h0 : char_7seg port map( m0, hex0);
	
	u1: mux_2bit_4to1 port map(
			sw(9 downto 8), 
			sw(3 downto 2), sw(1 downto 0), sw(5 downto 4), sw(3 downto 2) , 
			m1);
	h1 : char_7seg port map( m1, hex1);
	
	u2 : mux_2bit_4to1 port map( 
			sw(9 downto 8),  
			sw(5 downto 4), sw(3 downto 2), sw(1 downto 0), sw(5 downto 4) ,  
			m2);
	h2 : char_7seg port map( m2, hex2);

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