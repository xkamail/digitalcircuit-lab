library ieee;
use ieee.std_logic_1164.all;

entity regn is 
	generic (n : integer := 9);
	port (
		r : in std_logic_vector(n-1 downto 0);
		Rin, clk : std_logic;
		Q : buffer std_logic_vector(n-1 downto 0)
	);
end regn;

architecture bhv of regn is
begin
	process(clk)
	begin
		if rising_edge(clk) then
			if Rin = '1' then
				Q <= r;
			end if;
		end if;
	end process;
end bhv;