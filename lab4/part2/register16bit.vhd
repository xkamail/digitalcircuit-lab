library ieee;
use ieee.std_logic_1164.all;

entity register16bit is
	port (
		d,
	);
end register16bit;

architecture behavior of 
	entity d_ff is
		port (
			Clk, D  : in std_logic;
			Q : out std_logic
		);
	end d_ff;
begin
	u0: d_ff port map ();
	u1: d_ff port map ();
end behavior;