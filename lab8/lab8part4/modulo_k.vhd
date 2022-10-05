library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.math_real.all;

entity modulo_k is
	generic ( k : natural := 4 );
	port (
		clock, en, reset_n  : in std_logic;
		Q : out std_logic_vector(natural(ceil(log2(real(k)))) - 1 downto 0);
		rollover : out std_logic
	);
end modulo_k;

architecture Behavior of modulo_k is
	signal v : std_logic_vector(natural(ceil(log2(real(k)))) - 1 downto 0);
	signal rollover_v : std_logic;
begin
	
	process(clock,reset_n, en)
	begin
		if reset_n = '0' then
			v <= (Others => '0');
		elsif rising_edge(clock) then
			if en = '1' then
				
				if v = (k - 2) then
						rollover_v <= '1';
					else 
						rollover_v <= '0';
				end if;
				
				if rollover_v = '1' then
					 v <= (Others => '0');
				else
					 v <= v + 1;
				end if;
				
			end if;
			
		end if;
	end process;
	rollover <= rollover_v;
	Q <= v;
	
end Behavior;