library ieee;
use ieee.std_logic_1164.all;

entity d_ff is
	port (
		Clk, en, D  : in std_logic;
		Q : out std_logic
	);
end d_ff;

architecture Behavior of d_ff is
begin
	process(d,clk)
	begin
		if rising_edge(clk) then
			if en = '1' then
				q <= d;
			else
				
			end if;
		end if;
	end process;
end Behavior;