library ieee;
use ieee.std_logic_1164.all;


entity reg is 
	generic (
		n : natural := 8
	);
	port (
		r, clk : std_logic_vector(n-1 downto 0);
		q : std_logic_vector(n-1 downto 0)
	);
end reg;

architecture bhv of reg is
	
begin
	process(clk)
	begin
		
	end if;
end bhv;
