library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity adder_n is
	generic ( n : integer := 8 );
	port (
		Cin : in std_logic;
		a,b : in std_logic_vector(n-1 downto 0);
		clk, reset : in std_logic;
		s : out std_logic_vector(n-1 downto 0);
		Cout : out std_logic
	);
end adder_n;
	
architecture bhv of adder_n is
	signal sum : std_logic_vector(n downto 0);
	signal c : std_logic_vector(n-1 downto 0);
begin
	process(clk, reset)
	begin
		if rising_edge(clk) then
			if reset = '0' then
				sum <=  (Others => '0');
			else
				sum <= ('0' & A) + ('0' & B) + Cin;
			end if;
		else
			sum <= sum;
		end if;
	end process;
				
	s <= sum(n-1 downto 0);
	Cout <= sum(n);
end bhv;
