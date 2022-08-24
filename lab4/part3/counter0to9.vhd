library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity counter0to9 is
	port (
		clk, en : in std_logic;
		num : out std_logic_vector(3 downto 0)
	);
end counter0to9;


architecture behavior of counter0to9 is
	signal n : std_logic_vector(3 downto 0);
begin

	process(clk)
	begin
		if rising_edge(clk) and en = '1' then
			if n = "1001" then
				n <= "0000";
			else
				n <= unsigned(n) + 1;
			end if;
		end if;
	end process;
	num <= n;
end behavior;