library ieee;
use ieee.std_logic_1164.all;
-- Use switch SW0 to
-- drive the D input of the flip-flop, and use SW1 as the Clock input. Connect the Q output to LEDR0.

entity lab3part3 is
	port (
		D : in std_logic;
		Clk : in std_logic;
		Q : out std_logic
	);
end lab3part3;

architecture bhv of lab3part3 is
	component d_latch
		port (
			D, Clk : in std_logic;
			Q : out std_logic
		);
	end component;
	signal Qm : std_logic;
begin
	master0: d_latch port map (D, not(Clk),Qm);
	slave0: d_latch port map (Qm, Clk, Q);
end bhv;