library ieee;
use ieee.std_logic_1164.all;


entity d_latch is
	port (
		 D, Clk : in std_logic;
		Q : out std_logic
	);
end d_latch;


architecture Structural of d_latch is
	signal R, S, R_g, S_g, Qa, Qb : std_logic;
	attribute keep : boolean;
	attribute keep of R_g, S_g, Qa, Qb : signal is true;

begin
	R <= not(D);
	S <= D;
	R_g <= R and Clk;
	S_g <= S and Clk;
	Qa <= not (R_g or Qb);
	Qb <= not(S_g or Qa);
	
	Q <= Qa;
end Structural;