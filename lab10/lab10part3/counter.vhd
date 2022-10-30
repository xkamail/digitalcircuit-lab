library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.math_real.all;
use ieee.numeric_std.all;
entity counter is
	generic ( k : natural := 4; n : natural := 4 );
	port (
		clock, en, reset_n, data_in  : in std_logic;
		data : in std_logic_vector(n-1 downto 0);
		Q : out std_logic_vector(n - 1 downto 0)
	);
end counter;

architecture Behavior of counter is
	signal v : std_logic_vector(n - 1 downto 0);
begin
	
	process(clock,reset_n, en)
	begin
		if reset_n = '0' then
			v <= (Others => '0');
		elsif rising_edge(clock) then
			
			if en = '1' then
				if v = k-1 then
					v <= std_logic_vector(to_unsigned(k-1, v'length));
				else
					v <= v + 1;
				end if;
			elsif data_in = '1' then
				v <= data;
			end if;
		end if;
	end process;
	Q <= v;
	
end Behavior;