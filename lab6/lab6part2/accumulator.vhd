library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity accumulator is 
	generic (
		n : natural := 8
	);
	port (
		A, B : in std_logic_vector(n-1 downto 0);
		add_sub, clk, reset : in std_logic;
		overflow, carry : out std_logic;
		v : out std_logic_vector(n-1 downto 0)
	);
end accumulator;

architecture bhv of accumulator is
	
	signal sum : std_logic_vector(n downto 0);
	signal o,c : std_logic;
begin
	process(clk)
	begin
		if rising_edge(clk) then
			if reset = '0' then
				sum <=  (Others => '0');
			else
				if add_sub = '1' then
					sum <= ('0' & A) - ('0' & B);
					if A > 0 and B > 0 and A - B < 0 then
						overflow <= '1';
					elsif A < 0 and B < 0 and A - B > 0 then
						overflow <= '1';
					else
						overflow <= '0';
					end if;
				else
					sum <= ('0' & A) + ('0' & B);
					if A > 0 and B > 0 and A + B < 0 then
						overflow <= '1';
					elsif A < 0 and B < 0 and A + B > 0 then
						overflow <= '1';
					else
						overflow <= '0';
					end if;
				end if;
			end if;
			
			
		else
			sum <= sum;
		end if;
	end process;
	carry <= sum(n);
	v <= sum(n-1 downto 0);
end bhv;