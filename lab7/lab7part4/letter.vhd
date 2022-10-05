library ieee;
use ieee.std_logic_1164.all;

entity letter is
	port (
		v : in std_logic_vector(2 downto 0);
		s : out std_logic_vector(3 downto 0);
		count : out std_logic_vector(2 downto 0)
	);
end letter;

architecture bhv of letter is
	signal x : std_logic_vector(3 downto 0);
	signal i : std_logic_vector(2 downto 0);
begin
	process(v)
	begin
		if v = "000" then -- A 0 = * -
			x <= "0100";
			i <= "010";
		elsif v = "001" then -- B 1 = - * * *
			x <= "1000";
			i <= "100";
		elsif v = "010" then -- C 2 = - * - *
			x <= "1010";
			i <= "100";
		elsif v = "011" then -- D 3 = - * *
			x <= "1000";
			i <= "011";
		elsif v = "100" then -- E 4 = *
			x <= "0000";
			i <= "001";
		elsif v = "101" then -- F 5 = * * - *
			x <= "0010";
			i <= "100";
		elsif v = "110" then -- G 6 = - - *
			x <= "1100";
			i <= "011";
		elsif v = "111" then -- H 7 = * * * *
			x <= "0000";
			i <= "100";
		end if;
	end process;
	s <= x;
	count <= i;
end bhv;