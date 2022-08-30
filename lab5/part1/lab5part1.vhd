library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.math_real.all;

entity lab5part1 is
	port (
		key0, reset : in std_logic;
		ro : out std_logic;
		Q : out std_logic_vector(4 downto 0)
	);
end lab5part1;

architecture bhv of lab5part1 is 
	component modulo_k is 
		generic ( k : natural := 4 );
		port (
			clock, reset_n : in std_logic;
			Q : out std_logic_vector(natural(ceil(log2(real(k)))) - 1 downto 0);
			rollover : out std_logic
		);
	end component;
begin

	x0: modulo_k generic map (k => 20) port map (key0, reset ,Q, ro);
	
end bhv;
