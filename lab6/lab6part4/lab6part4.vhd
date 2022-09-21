library ieee;
use ieee.std_logic_1164.all;


entity lab6part4 is 
	port (
		sw : in std_logic_vector(9 downto 0);
		key0, key1 : in std_logic;
		ledr : out std_logic_vector(7 downto 0);
		hex3,hex2,hex1,hex0 : out std_logic_vector(0 to 6)
	);
end lab6part4;

architecture bhv of lab6part4 is
	component sevenseg is 
		port (
			num : in std_logic_vector(3 downto 0);
			hex : out std_logic_vector(0 to 6)
		);
	end component;
	component reg is 
		port (
			En : in std_logic;
			v : in std_logic_vector(7 downto 0);
			h : out std_logic_vector(7 downto 0)
		);
	end component;
	component adder_n is
		generic ( n : natural := 4 );
		port (
			Cin : in std_logic;
			a, b : in std_logic_vector(n-1 downto 0);
			s : out std_logic_vector(n-1 downto 0);
			Cout : out std_logic
		);
	end component;
	signal p : std_logic_vector(15 downto 0);
	signal a,b : std_logic_vector(7 downto 0);
	signal clk : std_logic;
	
	signal s1,s2,s3,s4,s5,s6,s7 : std_logic_vector(7 downto 0);
	signal c1,c2,c3,c4,c5,c6,c7 : std_logic;
	
begin
	clk <= not(key1);

	r0: reg port map (sw(9), sw(7 downto 0), a); -- store A
	r1: reg port map (sw(8), sw(7 downto 0), b); -- store B


	ledr <= sw(7 downto 0);
	
	p(0) <= a(0) and b(0);
	
	f1: adder_n generic map(8)
	port map ('0', ('0' & a(7 downto 1)) and (b(0)), a, s1, c1);
	f2: adder_n generic map(8)
	port map ('0', '0' & s1(7 downto 1), a, s2, c2);
	
	
	h0: sevenseg port map (p(3 downto 0), hex0);
	h1: sevenseg port map (p(7 downto 4), hex1);
	h2: sevenseg port map (p(11 downto 8), hex2);
	h3: sevenseg port map (p(15 downto 12), hex3);
	
end bhv;