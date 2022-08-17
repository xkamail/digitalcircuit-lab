library ieee;
use ieee.std_logic_1164.all;


entity lab3part5 is
	port (
		m : in std_logic;
		sw : in std_logic_vector(7 downto 0);
		hex5,hex4,hex3,hex2,hex1,hex0 : out std_logic_vector(0 to 6);
		debug_a,debug_b,debug_s : out std_logic_vector(7 downto 0);
		ledr : out std_logic
	);
	
end lab3part5;

architecture behavior of lab3part5 is
	component sevenseg 
		port (
			num : in std_logic_vector(3 downto 0);
			hex : out std_logic_vector(0 to 6)
		);
	end component;
	component full_adder
		port (
			a : in std_logic;
			b : in std_logic;
			c_in : in std_logic;
			s : out std_logic;
			c_out : out std_logic
		);
	end component;
	component d_latch
		port (
			clk, d  : in std_logic;
			q : out std_logic
		);
	end component;
	component register8bit
		port (
			En : in std_logic;
			v : in std_logic_vector(7 downto 0);
			h : out std_logic_vector(7 downto 0)
		);
	end component;
	
	signal c1,c2,c3,c4,c5,c6, c_out : std_logic;
	signal a,b, s : std_logic_vector(7 downto 0);
	
begin
	
	-- store value A and B
	r0: register8bit port map (not(m), sw, a);
	r1: register8bit port map (m, sw, b);
	
	g0: full_adder port map (a(0),b(0),'0',s(0),c1);
	g1: full_adder port map (a(1),b(1),c1,s(1),c2);
	g2: full_adder port map (a(2),b(2),c2,s(2),c3);
	g3: full_adder port map (a(3),b(3),c3,s(3),c4);
	g5: full_adder port map (a(4),b(4),c4,s(4),c5);
	g6: full_adder port map (a(5),b(5),c5,s(5),c6);
	g7: full_adder port map (a(6),b(6),c6,s(6),c_out);
	
	ledr <= c_out;
	
	debug_a <= a;
	debug_b <= b;
	debug_s <= s;
	
	u0: sevenseg port map(a(7 downto 4), hex3);
	u1: sevenseg port map(a(3 downto 0), hex2);
	
	u2: sevenseg port map(b(7 downto 4), hex1);
	u3: sevenseg port map(b(3 downto 0), hex0);
	
	u4: sevenseg port map(s(7 downto 4), hex5);
	u5: sevenseg port map(s(3 downto 0), hex4);
	
end behavior;