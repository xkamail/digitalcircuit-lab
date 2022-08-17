library ieee;
use ieee.std_logic_1164.all;

entity comparator is
  port (
      a   : in std_logic_vector(3 downto 0);
      greater  : out std_logic
   );
end comparator ;
 
architecture bhv of comparator is
begin
	greater <= (a(3) and a(1)) or (a(3) and a(2));
end bhv;
