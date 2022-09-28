library ieee;
use ieee.std_logic_1164.all;

entity lab7part1 is
	port (
		sw1, key0, sw0 : in std_logic;
		ledr : out std_logic_vector(9 downto 0)
	);
end lab7part1;


architecture bhv of lab7part1 is
	component d_ff is
		port (
			Clk, D  : in std_logic;
			Q : out std_logic
		);
	end component;
	signal reset, clk, w, z  : std_logic;
	signal q : std_logic_vector(8 downto 0);
	signal A,B,C,D,E,F,G,H,I : std_logic;
begin
	w <= sw1;
	clk <= not(key0);
	reset <= not(sw0); -- active low
	
	A <= (not(q(8)) and not(q(7)) and not(q(6)) and not(q(5)) and not(q(4)) and not(q(3)) and not(q(2)) and not(q(1)) and q(0));
	B <= (not(q(8)) and not(q(7)) and not(q(6)) and not(q(5)) and not(q(4)) and not(q(3)) and not(q(2)) and q(1) and not(q(0)));
	C <= (not(q(8)) and not(q(7)) and not(q(6)) and not(q(5)) and not(q(4)) and not(q(3)) and q(2) and not(q(1)) and not(q(0)));
	D <= (not(q(8)) and not(q(7)) and not(q(6)) and not(q(5)) and not(q(4)) and q(3) and not(q(2)) and not(q(1)) and not(q(0)));
	E <= (not(q(8)) and not(q(7)) and not(q(6)) and not(q(5)) and q(4) and not(q(3)) and not(q(2)) and not(q(1)) and not(q(0)));
	F <= (not(q(8)) and not(q(7)) and not(q(6)) and q(5) and not(q(4)) and not(q(3)) and not(q(2)) and not(q(1)) and not(q(0)));
	G <= (not(q(8)) and not(q(7)) and q(6) and not(q(5)) and not(q(4)) and not(q(3)) and not(q(2)) and not(q(1)) and not(q(0)));
	H <= (not(q(8)) and q(7) and not(q(6)) and not(q(5)) and not(q(4)) and not(q(3)) and not(q(2)) and not(q(1)) and not(q(0)));
	I <=  (q(8) and not(q(7)) and not(q(6)) and not(q(5)) and not(q(4)) and not(q(3)) and not(q(2)) and not(q(1)) and not(q(0)));
	
	f0: d_ff port map(clk, reset,                                q(0)); -- A
	f1: d_ff port map(clk, (not(w) and (A or F or G or H or I)), q(1)); -- B
	f2: d_ff port map(clk, not(w) and B, 								 q(2)); -- C
	f3: d_ff port map(clk,  not(w) and C,                        q(3)); -- D
	f4: d_ff port map(clk, (not(w) and E) or (not(w) and D),     q(4)); -- E/1
	f5: d_ff port map(clk, w and (A or B or C or D or E),        q(5)); -- F
	f6: d_ff port map(clk, w and F,                              q(6)); -- G
	f7: d_ff port map(clk, w and G,                              q(7)); -- H
	f8: d_ff port map(clk, (w and I) or( w and H),               q(8)); -- I/1
	
	z <= E or I;
	
	ledr(8 downto 0) <= q;
	ledr(9) <= z;
	
end bhv;