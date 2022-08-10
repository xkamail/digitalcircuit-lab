Library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- warning! compare only 9 
entity comparator is
  port (
      a,b   : in std_logic_vector(3 downto 0);
		-- a > b = 1
      greater  : out std_logic
   );
end comparator ;
 
architecture bhv of comparator is
begin
	greater <= '1' when (a > b) else '0';
	
end bhv;