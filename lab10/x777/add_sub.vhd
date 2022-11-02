library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity add_sub is 
	generic (
		k : natural := 9
	);
--	port (
--		A, B : in std_logic_vector(k-1 downto 0);
--		addsub, reset : in std_logic;
--		Z,N,V,gt : buffer std_logic;
--		result : out std_logic_vector(k-1 downto 0)
--	);
	port (
			A, B : in std_logic_vector(k-1 downto 0);
			addsub, reset : in std_logic;
			Z,N,V : out std_logic;
			result : out std_logic_vector(k-1 downto 0)
	);
end add_sub;

architecture bhv of add_sub is
	
	signal sum : std_logic_vector(k-1 downto 0);
	signal zero : std_logic_vector(k-1 downto 0);
begin
	zero <= (others => '0');

	process(reset,A,addsub)
	begin
		if reset = '0' then
			sum <=  (Others => '0');
		else
			if addsub = '1' then
				sum <= A-B;
			else
				sum <= A+B;
			end if;
		end if;
	end process;
	V <= (A(k-1) xnor B(k-1)) and ( B(k-1) xor sum(k-1));
	N <= '1' when (sum < 0) else '0';
	Z <= '1' when (sum = "000000000") else '0';
	-- gt <= Z and (N xor V);
	result <= sum(k-1 downto 0);
end bhv;