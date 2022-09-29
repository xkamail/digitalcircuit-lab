library ieee;
use ieee.std_logic_1164.all;

entity half_sec is
	port (
		clock50 : in std_logic;
		trig : out std_logic
	);
end half_sec;

architecture bhv of half_sec is
begin
	process(clock50)
		variable i : integer range 1 to 50_000_000 / 2;
	begin
		if rising_edge(clock50) then
			if i = 50_000_000 / 2 then
				trig <= '1';
				i := 1;
			else
				trig <= '0';
				i := i + 1;
			end if;
		end if;
	end process;
end bhv;