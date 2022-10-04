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
			Clk, reset, D  : in std_logic;
			Q : out std_logic
		);
	end component;
	signal reset, clk, w, z  : std_logic;
	signal q : std_logic_vector(8 downto 0);
begin
	w <= sw1;
	clk <= not(key0);
	reset <= not(sw0); -- active low
	f0: d_ff port map(clk, '0', reset, q(0));
	f1: d_ff port map(clk, reset, not(w) and (q(0) or q(5) or q(6) or q(7) or q(8)), q(1));
	f2: d_ff port map(clk, reset, not(w) and q(1), q(2));
	f3: d_ff port map(clk, reset, not(w) and q(2), q(3)); 
	f4: d_ff port map(clk, reset, (not(w) and q(4)) or (not(w) and q(3)), q(4)); 
	f5: d_ff port map(clk, reset,  w and (q(0) or q(1) or q(2) or q(3) or q(4)), q(5));
	f6: d_ff port map(clk, reset,  w and q(5),q(6));
	f7: d_ff port map(clk, reset,  w and q(6),q(7));
	f8: d_ff port map(clk, reset,  ((w and q(8)) or( w and q(7))), q(8));
	z <= q(4) or q(8);
	ledr(8 downto 0) <= q;
	ledr(9) <= z;
end bhv;