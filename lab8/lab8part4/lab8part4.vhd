library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity lab8part4 is
	port (
		sw : in std_logic_vector(9 downto 0);
		clk50, key0, key1 : in std_logic;
		d_out : out std_logic_vector(3 downto 0);
		hex5,hex4,hex3,hex2,hex0 : out std_logic_vector(0 to 6)
	);
end lab8part4;

architecture bhv of lab8part4 is
	component sevenseg is
		port (
			num : in std_logic_vector(3 downto 0);
			hex : out std_logic_vector(0 to 6)
		);
	end component;
	component one_sec is
		port (
			clock50 : in std_logic;
			trig : out std_logic
		);
	end component;
	component ram32x4 IS
		PORT
		(
			clock		: IN STD_LOGIC  := '1';
			data		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
			rdaddress		: IN STD_LOGIC_VECTOR (4 DOWNTO 0);
			wraddress		: IN STD_LOGIC_VECTOR (4 DOWNTO 0);
			wren		: IN STD_LOGIC  := '0';
			q		: OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
		);
	end component;
	component modulo_k is
		generic ( k : natural := 4 );
		port (
			clock, en, reset_n  : in std_logic;
			Q : out std_logic_vector(natural(ceil(log2(real(k)))) - 1 downto 0);
			rollover : out std_logic
		);
	end component;
	
	type mem is array(0 to 31) of std_logic_vector(3 downto 0);
	signal memory_array: mem;
	signal r_addr, w_addr : std_logic_vector(4 downto 0);
	signal r_data, w_data, data_out : std_logic_vector(3 downto 0);
	signal w, reset : std_logic;
	signal clk_sec, trigg : std_logic;
begin
	
	reset <= key0;
	w <= not(key1);
	
	
	w_data <= sw(3 downto 0);
	w_addr <= sw(8 downto 4);
	
	u0: one_sec port map(clk50, clk_sec); -- TODO apply to clk_sec
	
	u1: modulo_k generic map(k => 32) 
				port map(clk50, '1', reset, r_addr);


	
	ram0: ram32x4 port map (clk50,w_data,r_addr,w_addr,w, data_out);
	
	-- show write addr
	h0: sevenseg port map("0"&"0"&"0"& sw(8) ,hex5);
	h1: sevenseg port map(sw(7 downto 4), hex4);
	-- show read addr
	h2: sevenseg port map("0"&"0"&"0"& r_addr(4),hex3);
	h3: sevenseg port map(r_addr(3 downto 0),hex2);
	-- show current data out
	h5: sevenseg port map(data_out,hex0);
	d_out <= data_out;
end bhv;