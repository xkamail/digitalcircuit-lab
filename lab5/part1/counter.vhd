library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity counter is
	generic ( n : natural := 4 );
	port (
		clock, reset_n : in std_logic;
		Q : out std_logic_vector(n-1 downto 0)
	);
end counter;

architecture Behavior of counter is

	signal value : std_logic_vector(n-1 downto 0);
begin
	process(clock,reset_n)
	begin
		if reset_n = '0' then
			value <= (Others => '0');
		elsif rising_edge(clock) then
			value <= value + 1;
		end if;
	end process;
	Q <= value;
end Behavior;