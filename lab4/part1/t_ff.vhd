library ieee;
use ieee.std_logic_1164.all;

entity t_ff is 
	port (
		clk, clr, t : in std_logic;
		Q, Qn : out std_logic
	);
end t_ff;


architecture behavior of t_ff is
	signal temp : std_logic;
begin
	process (clk,clr)
		begin
			if clr = '0' then 
				temp <= '0';
			else
				if rising_edge(clk) then
					if t = '0' then
						temp <= temp;
					elsif t = '1' then
						temp <= not(temp);
					end if;
				end if;
			end if;
	end process;
	Q <= temp;
	Qn <= not(temp);
	
end behavior;