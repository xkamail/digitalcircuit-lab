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
		add_sub, clk, reset : in std_logic;
		overflow, carry : out std_logic;
		v : out std_logic_vector(n-1 downto 0)
	);
end add_sub;

architecture bhv of add_sub is
	
	signal sum : std_logic_vector(n downto 0);
	signal o,c : std_logic;
	signal bb : std_logic_vector(n-1 downto 0);
begin

	process(clk,reset,add_sub)
	begin
		if add_sub = '1' then
			bb <= std_logic_vector(unsigned(not(B) + 1));
		else
			bb <= B;
		end if;
		if rising_edge(clk) then
			
			if reset = '0' then
				sum <=  (Others => '0');
			else
					sum <= ('0' & A) + ('0' & bb);
					
					if A > 0 and bb > 0 and A + bb < 0 then
						overflow <= '1';
					elsif A < 0 and bb < 0 and A + bb > 0 then
						overflow <= '1';
					else
						overflow <= '0';
					end if;
			end if;
			
			
		else
			sum <= sum;
		end if;
	end process;
	carry <= sum(n);
	v <= sum(n-1 downto 0);
end bhv;