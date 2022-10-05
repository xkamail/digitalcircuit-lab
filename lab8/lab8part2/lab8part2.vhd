library ieee;
use ieee.std_logic_1164.all;

entity lab8part2 is 
	port (
		sw : in std_logic_vector(9 downto 0);
		key0 : in std_logic; -- as clock
		hex5,hex4, hex2,hex0 : out std_logic_vector(0 to 6)
	);
end lab8part2;


architecture bhv of lab8part2 is
	component ram32x4 is
		port (
			address  : IN STD_LOGIC_VECTOR (4 DOWNTO 0);
			clock		: IN STD_LOGIC  := '1';
			data		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
			wren		: IN STD_LOGIC;
			q		   : OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
		);
	end component;
	component sevenseg is 
		port (
			num : in std_logic_vector(3 downto 0);
			hex : out std_logic_vector(0 to 6)
		);
	end component;
	signal addr : std_logic_vector(4 downto 0);
	signal clk, w : std_logic;
	signal data, v : std_logic_vector(3 downto 0);
	
begin
	w <= sw(9);
	addr <= sw(8 downto 4);
	data <= sw(3 downto 0);
	clk <= not(key0);
	
	u0: ram32x4 port map (addr, clk, data, w, v);
	
	u1: sevenseg port map(v, hex0);
	u2: sevenseg port map("0"&"0"&"0"&addr(4), hex5);
	u3: sevenseg port map(addr(3 downto 0), hex4);
	u4: sevenseg port map(data, hex2);
end bhv;