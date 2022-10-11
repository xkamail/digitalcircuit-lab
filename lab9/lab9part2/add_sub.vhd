library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity add_sub is 
	generic (
		n : natural := 9
	);
	port (
		A, B : in std_logic_vector(n-1 downto 0);
		add_sub, reset : in std_logic;
		v : out std_logic_vector(n-1 downto 0)
	);
end add_sub;

architecture bhv of add_sub is
	
	signal sum : std_logic_vector(n-1 downto 0);
	signal o,c : std_logic;
	signal bb : std_logic_vector(n-1 downto 0);
begin

	process(reset,add_sub)
	begin
		
		if add_sub = '1' then
			bb <= std_logic_vector(unsigned(not(B) + 1));
		else
			bb <= B;
		end if;
		if reset = '0' then
			sum <=  (Others => '0');
		else
			sum <= A + bb;
		end if;
	end process;
	v <= sum(n-1 downto 0);
end bhv;