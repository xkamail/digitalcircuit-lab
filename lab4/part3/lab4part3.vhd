library ieee;
use ieee.std_logic_1164.all;

entity lab4part3 is
	port (
		clock50, key0 : in std_logic;
		debug : out std_logic_vector(3 downto 0);
		hex0 : out std_logic_vector(0 to 6)
	);
end lab4part3;

architecture behavior of lab4part3 is
	component sevenseg
		port (
			num : in std_logic_vector(3 downto 0);
			hex : out std_logic_vector(0 to 6)
		);
	end component;
	component counter0to9
		port (
			clk, en, reset : in std_logic;
			num : out std_logic_vector(3 downto 0)
		);
	end component;
	signal e : std_logic;
	signal num : std_logic_vector(3 downto 0);
begin
	
	process(clock50)
		variable i : integer range 1 to 50_000_000;
	begin
		if rising_edge(clock50) then
			if i = 50_000_000 then
				e <= '1';
				i := 1;
			else
				e <= '0';
				i := i + 1;
			end if;
		end if;
	end process;
	
	u0: counter0to9 port map (clock50, e, not(key0), num);
	h0: sevenseg port map (num, hex0);
	debug <= num;
	
end behavior;
