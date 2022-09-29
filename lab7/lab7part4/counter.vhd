library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity counter is
	port (
		clk, clear : in std_logic;
		max : in std_logic_vector(1 downto 0);
		n : out std_logic_vector(1 downto 0)
	);
end counter;

architecture bhv of counter is
	signal q :  std_logic_vector(1 downto 0);
begin
	process(clk,clear)
		begin
			if clear = '1' then
				q <= "00";
			else
				if rising_edge(clk) then 
					if q = max then
						q <= "00";
					else
						q <= unsigned(q) + 1;
					end if;
				end if;
			end if;
	end process;
	n <= q;
end bhv;
