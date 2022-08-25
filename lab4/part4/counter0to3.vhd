library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;


entity counter0to3 is
	port (
		clk, en, clear : in std_logic;
		n : out std_logic_vector(1 downto 0)
	);
end counter0to3;

architecture bhv of counter0to3 is
	signal q :  std_logic_vector(1 downto 0);
begin
	process(clk,clear,en)
		begin
			if clear = '1' then
				q <= "00";
			else
				if rising_edge(clk) and en = '1' then 
					if q = "11" then
						q <= "00";
					else
						q <= unsigned(q) + 1;
					end if;
				end if;
			end if;
	end process;
	n <= q;
end bhv;