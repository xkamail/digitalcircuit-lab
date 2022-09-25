library ieee;
use ieee.std_logic_1164.all;


entity lab6part4 is 
	port (
		sw : in std_logic_vector(9 downto 0);
		key0, key1 : in std_logic;
		ledr : out std_logic_vector(7 downto 0);
		debug : out std_logic_vector(15 downto 0);
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
	
	signal b0,b1,b2,b3,b4,b5,b6,b7 : std_logic_vector(7 downto 0);
	
	signal s1,s2,s3,s4,s5,s6,s7 : std_logic_vector(7 downto 0);
	signal c1,c2,c3,c4,c5,c6,c7 : std_logic;
	
begin
	b0 <= (b(0) & b(0) & b(0) & b(0) & b(0) & b(0) & b(0) & b(0));
	b1 <= (b(1) & b(1) & b(1) & b(1) & b(1) & b(1) & b(1) & b(1));
	b2 <= (b(2) & b(2) & b(2) & b(2) & b(2) & b(2) & b(2) & b(2));
	b3 <= (b(3) & b(3) & b(3) & b(3) & b(3) & b(3) & b(3) & b(3));
	b4 <= (b(4) & b(4) & b(4) & b(4) & b(4) & b(4) & b(4) & b(4));
	b5 <= (b(5) & b(5) & b(5) & b(5) & b(5) & b(5) & b(5) & b(5));
	b6 <= (b(6) & b(6) & b(6) & b(6) & b(6) & b(6) & b(6) & b(6));
	b7 <= (b(7) & b(7) & b(7) & b(7) & b(7) & b(7) & b(7) & b(7));
	clk <= not(key1);

	r0: reg port map (sw(9), sw(7 downto 0), a); -- store A
	r1: reg port map (sw(8), sw(7 downto 0), b); -- store B


	ledr <= sw(7 downto 0);
	
	p(0) <= a(0) and b(0);
	
	f1: adder_n generic map(8)
	port map ('0', ('0' & a(7 downto 1)) and b0, a and b1, s1, c1);
	
	f2: adder_n generic map(8)
	port map ('0', c1 & s1(7 downto 1), a and b2, s2, c2);
	
	f3: adder_n generic map(8)
	port map ('0', c2 & s2(7 downto 1), a and b3, s3, c3);
	
	f4: adder_n generic map(8)
	port map ('0', c3 & s3(7 downto 1), a and b4, s4, c4);
	
	f5: adder_n generic map(8)
	port map ('0', c4 & s4(7 downto 1), a and b5, s5, c5);
	
	f6: adder_n generic map(8)
	port map ('0', c5 & s5(7 downto 1), a and b6, s6, c6);
	
	f7: adder_n generic map(8)
	port map ('0', c6 & s6(7 downto 1), a and b7, s7, c7);
	
	
	p(1) <= s1(0);
	p(2) <= s2(0);
	p(3) <= s3(0);
	p(4) <= s4(0);
	p(5) <= s5(0);
	p(6) <= s6(0);
	p(14 downto 7) <= s7;
	p(15) <= c7;
	debug <= p;
	
	h0: sevenseg port map (p(3 downto 0), hex0);
	h1: sevenseg port map (p(7 downto 4), hex1);
	h2: sevenseg port map (p(11 downto 8), hex2);
	h3: sevenseg port map (p(15 downto 12), hex3);
	
end bhv;