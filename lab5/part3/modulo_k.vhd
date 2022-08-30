library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.math_real.all;

entity modulo_k is
	generic ( k : natural := 4 );
	port (
		clock, en, preset, reset_n  : in std_logic;
		presetQ : in std_logic_vector(natural(ceil(log2(real(k)))) - 1 downto 0);
		Q : out std_logic_vector(natural(ceil(log2(real(k)))) - 1 downto 0);
		rollover : out std_logic
	);
end modulo_k;

architecture Behavior of modulo_k is
	signal v : std_logic_vector(natural(ceil(log2(real(k)))) - 1 downto 0);
begin
	
	process(clock,reset_n, en, preset)
	begin
		if reset_n = '0' then
			v <= (Others => '0');
		elsif en = '0' then 
			v <= v;
		elsif rising_edge(clock) and en = '1' then
			if preset = '0' then
				v <= presetQ;
			else 
				if v = (k - 1) then
					 v <= (Others => '0');
				else
					v <= v + 1;
				end if;
				-- paralell check
				if v = (k - 2) then
						rollover <= '1';
					else 
						rollover <= '0';
				end if;
			end if;
			
		else
			v <= v;
		end if;
	end process;
	
	Q <= v;
	
end Behavior;