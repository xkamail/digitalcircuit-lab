library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity add_sub is 
	generic (
		k : natural := 9
	);
	port (
		A, B : in std_logic_vector(k-1 downto 0);
		addsub, reset : in std_logic;
		Z,N,V : out std_logic;
		result : out std_logic_vector(k-1 downto 0)
	);
end add_sub;

architecture bhv of add_sub is
	
	signal sum : std_logic_vector(k downto 0);
	signal bb,zero : std_logic_vector(k-1 downto 0);
begin
	
	process(reset,addsub)
	begin
		if addsub = '1' then
			bb <= std_logic_vector(unsigned(not(B) + 1));
		else
			bb <= B;
		end if;
		
		if reset = '0' then
			sum <=  (Others => '0');
		else
			sum <= ('0' & A) + ('0' & bb);
			if A > 0 and bb > 0 and A + bb < 0 then
				V <= '1';
			elsif A < 0 and bb < 0 and A + bb > 0 then
				V <= '1';
			else
				V <= '0';
			end if;
		end if;
	end process;
	zero <= (others => '0');
	N <= '1' when(sum < 0) else '0';
	Z <= '1' when( sum(k-1 downto 0) = zero ) else '1';
	
	result <= sum(k-1 downto 0);
end bhv;