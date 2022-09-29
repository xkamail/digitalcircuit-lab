library ieee;
use ieee.std_logic_1164.all;

entity letter is
	port (
		v : in std_logic_vector(2 downto 0);
		s : out std_logic_vector(3 downto 0);
		count : out std_logic_vector(1 downto 0)
	);
end letter;

architecture bhv of letter is
	signal x : std_logic_vector(3 downto 0);
	signal i : std_logic_vector(1 downto 0);
begin
	process(v)
	begin
		if v = "000" then -- A
			x <= "0010";
			i <= "01";
		elsif v = "001" then -- B
			x <= "0001";
			i <= "11";
		elsif v = "010" then -- C
			x <= "0101";
			i <= "11";
		elsif v = "011" then -- D
			x <= "0001";
			i <= "10";
		elsif v = "100" then -- E
			x <= "0000";
			i <= "00";
		elsif v = "101" then -- F
			x <= "0100";
			i <= "11";
		elsif v = "110" then -- G
			x <= "0011";
			i <= "10";
		elsif v = "111" then -- H
			x <= "0000";
			i <= "11";
		end if;
	end process;
	s <= x;
	count <= i;
end bhv;