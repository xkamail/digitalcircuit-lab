library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity lab8part2 is
	port (
		sw : in std_logic_vector(9 downto 0);
		key0 : in std_logic;
		hex5,hex4, hex2,hex0 : out std_logic_vector(0 to 6)
	);
end lab8part2;

architecture bhv of lab8part2 is
	component sevenseg is
		port (
			num : in std_logic_vector(3 downto 0);
			hex : out std_logic_vector(0 to 6)
		);
	end component;
	component ram32x4 is
		PORT (
			address		: IN STD_LOGIC_VECTOR (4 DOWNTO 0);
			clock		: IN STD_LOGIC  := '1';
			data		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
			wren		: IN STD_LOGIC ;
			q		: OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
		);
	end component;
	type mem is array(0 to 31) of std_logic_vector(3 downto 0);
	signal memory_array: mem;
	signal addr : integer range 0 to 31 := 0;
	signal data_in, data_out : std_logic_vector(3 downto 0);
	signal w : std_logic;
	signal clk : std_logic;
begin
	clk <= not(key0);
	data_in <= sw(3 downto 0);
	w <= sw(9);
	addr <= to_integer(unsigned(sw(8 downto 4)));
	process (clk, w)
	begin
		if rising_edge(clk) then
			data_out <= memory_array(addr);
			if w = '1' then
				memory_array(addr) <= data_in;
			end if;
		end if;
	end process;

	h0: sevenseg port map("0" &"0" &"0" & sw(8) , hex5);
	h1: sevenseg port map(sw(7 downto 4), hex4);
	h3: sevenseg port map(data_in, hex2);
	h4: sevenseg port map(data_out, hex0);
end bhv;