library ieee;
use ieee.std_logic_1164.all;

entity lab6part3 is
	port (
		sw : in std_logic_vector(7 downto 0);
		
		hex5,hex4,hex2,hex0 : out std_logic_vector(0 to 6)
	);
end lab6part3;

architecture bhv of lab6part3 is
	component sevenseg is
		port (
			num : in std_logic_vector(3 downto 0);
			hex : out std_logic_vector(0 to 6)
		);
	end component;
	component fa is
		port (
			c_in, a,b : in std_logic;
			s,c_out : out std_logic
		);
	end component;
	signal a,b : std_logic_vector(3 downto 0);
	signal p : std_logic_vector(7 downto 0);
	
	signal row1,row2,row3 : std_logic_vector(3 downto 0);
	
	signal c11,c12,c13,c14, s11, s12,s13,s14 : std_logic;
	signal c21,c22,c23,c24, s21, s22, s23, s24 : std_logic;
	signal c31,c32,c33,c34, s31, s32, s33, s34 : std_logic;
	
begin
	a <= sw(7 downto 4);
	b <= sw(3 downto 0);
	
	p(0) <= a(0) and b(0);
	
	r0f1: fa port map ('0', a(1) and b(0), a(0) and b(1), s11, c11);
	r0f2: fa port map (c11, a(2) and b(0), a(1) and b(1), s12, c12);
	r0f3: fa port map (c12, a(3) and b(0), a(2) and b(1), s13, c13);
	r0f4: fa port map (c13, 			 '0', a(3) and b(1), s14, c14);
	p(1) <= s11;
	
	r1f1: fa port map ('0', s12, a(0) and b(2), s21, c21);
	r1f2: fa port map (c21, s13, a(1) and b(2), s22, c22);
	r1f3: fa port map (c22, s14, a(2) and b(2), s23, c23);
	r1f4: fa port map (c23, c14, a(3) and b(2), s24, c24);
	p(2) <= s21;
	
	r2f1: fa port map ('0', s22, a(0) and b(3), s31, c31);
	r2f2: fa port map (c31, s23, a(1) and b(3), s32, c32);
	r2f3: fa port map (c32, s24, a(2) and b(3), s33, c33);
	r2f4: fa port map (c33, c24, a(3) and b(3), s34, c34);
	p(3) <= s31;
	p(4) <= s32;
	p(5) <= s33;
	p(6) <= s34;
	p(7) <= c34;
	
	h2: sevenseg port map (a, hex2);
	h0: sevenseg port map (b,hex0);
	h5: sevenseg port map (p(7 downto 4), hex5);
	h4: sevenseg port map (p(3 downto 0), hex4);
	
end bhv;