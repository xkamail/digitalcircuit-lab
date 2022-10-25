library ieee;
use ieee.std_logic_1164.all;

entity dec3to8 is
	port (
		w : in std_logic_vector(2 downto 0);
		en : in std_logic;
		y : out std_logic_vector(0 to 7)
	);
end dec3to8;

architecture Behavior of dec3to8 is

begin
	process(w,en)
	begin
		if en = '1' then
			case w is
				when "000" => Y <= "10000000";
				when "001" => Y <= "01000000";
				when "010" => Y <= "00100000";
				when "011" => Y <= "00010000";
				when "100" => Y <= "00001000";
				when "101" => Y <= "00000100";
				when "110" => Y <= "00000010";
				when "111" => Y <= "00000001";
			end case;
		else 
			y <= "00000000";
		end if;
	end process;
end Behavior;