library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity add_sub is 
    Generic (n : natural := 9);
    PORT (a,b :IN   STD_logic_vector(n-1 DOWNTO 0);
            addsub : IN STD_logic;
            V,Z,Ne      : OUT STD_logic;
            s   :OUT  STD_logic_vector(n-1 DOWNTO 0));
end add_sub;

architecture bhv of add_sub is
	    signal se,be: std_logic_vector(n-1 downto 0);

begin
	
   s <= se;
    process (addsub)
        begin
            if (addsub = '0') THEN
                be <= b xor "000000000";
            else be <= (b xor "111111111") + 1;
            end if;
    se <= a+be;
    end process;
    V <= (a(n-1) xnor be(n-1)) and (be(n-1) xor se(n-1));
    Z <= '1' WHEN (se = "000000000") else '0';
    Ne <= '1' WHEN (se(n-1) = '1') else '0';
	 
end bhv;