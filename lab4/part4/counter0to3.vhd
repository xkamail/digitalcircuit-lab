library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;


entity counter0to3 is
	port (
		clk : in std_logic;
		n : out std_logic_vector(1 downto 0)
	);
end counter0to3;

architecture bhv of counter0to3 is
	signal q :  std_logic_vector(1 downto 0);
begin
	process(clk)
		begin
			if rising_edge(clk) then 
				if q = "101" then
					q <= "000";
				else
					q <= unsigned(q) + 1;
				end if;
			end if;
	end process;
	n <= q;
end bhv;