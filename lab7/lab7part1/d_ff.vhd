library ieee;
use ieee.std_logic_1164.all;

entity d_ff is
	port (
		Clk, reset, D  : in std_logic;
		Q : out std_logic
	);
end d_ff;

architecture Behavior of d_ff is
begin
	process(d,clk)
	begin
		if rising_edge(clk) then
			if reset = '1' then
				q <= '0';
			else
				q <= d;
			end if;
		end if;
	end process;
end Behavior;