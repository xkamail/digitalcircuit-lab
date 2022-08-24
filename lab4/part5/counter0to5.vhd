library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity counter0to5 is
	port (
		clk : in std_logic;
		num : out std_logic_vector(2 downto 0)
	);
end counter0to5;

architecture behavior of counter0to5 is
	signal i : std_logic_vector(2 downto 0);
begin
	process(clk)
		begin
			if rising_edge(clk) then
				if i = "101" then
					i <= "000";
				else
					i <= unsigned(i) + 1;
				end if;
			end if;
	end process;
	num <= i;
end behavior;