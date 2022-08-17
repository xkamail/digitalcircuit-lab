library ieee;
use ieee.std_logic_1164.all;

entity lab3part4 is 
	port (
		D, Clk : in std_logic;
		Qa,Qb,Qc : out std_logic
	);
end lab3part4;

architecture bhv of lab3part4 is
	component d_latch
		port (
			clk, d  : in std_logic;
			q : out std_logic
		);
	end component;
	component d_ff
		port (
			clk, d  : in std_logic;
			q : out std_logic
		);
	end component;
begin
	u0: d_latch port map (clk, D, Qa);
	u1: d_ff port map (clk, D, Qb);
	u2: d_ff port map (not(clk), D, Qc);
end bhv;