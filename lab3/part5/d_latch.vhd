library ieee;
use ieee.std_logic_1164.all;


entity d_latch is
	port (
		Clk, D  : in std_logic;
		Q : out std_logic
	);
end d_latch;


architecture Behavior of d_latch is
begin
	process(d,clk)
	begin
		if clk = '1' then
			q <= d;
		end if;
	end process;
end Behavior;