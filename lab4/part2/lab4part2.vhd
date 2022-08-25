library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity lab4part2 is 
	port (
		
		enable, clear, key0, init : in std_logic;
		-- debug: out std_logic_vector(15 downto 0);
		hex3, hex2, hex1, hex0 : out std_logic_vector(0 to 6)
	);
end lab4part2;

architecture behavior of lab4part2 is
	component sevenseg
		port (
			num : in std_logic_vector(3 downto 0);
			hex : out std_logic_vector(0 to 6)
		);
	end component;
	signal reset,clk : std_logic;
	signal q : std_logic_vector(15 downto 0);
	
begin
	clk <= not(key0);
	
	process(clk, enable, clear)
		begin
		if clear = '1' then
			
			if enable = '0' then
				q <= q;
			else
				if init = '0' then
						-- set Q to FFFA when press key1
						q <= "1111111111111010";
				else
					if rising_edge(clk) then 
						if q = "1111111111111111" then
							q <= "0000000000000000";
						else
							q <= unsigned(q) + '1';
						end if;
					end if;
				end if;
			end if;
		else
			q <= "0000000000000000";
		end if;
	end process;
	-- debug <= q;
	h1: sevenseg port map (q(15 downto 12), hex3);
	h2: sevenseg port map (q(11 downto 8), hex2);
	h3: sevenseg port map (q(7 downto 4), hex1);
	h4: sevenseg port map (q(3 downto 0), hex0);
end behavior;
