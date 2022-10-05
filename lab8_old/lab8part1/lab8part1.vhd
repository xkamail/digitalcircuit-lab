library ieee;
use ieee.std_logic_1164.all;
LIBRARY altera_mf;
USE altera_mf.all;
entity lab8part1 is 
	port (
		addr : in std_logic_vector(4 downto 0);
		clk : in std_logic;
		data : in std_logic_vector(3 downto 0);
		w : in std_logic;
		v : out std_logic_vector(3 downto 0)
	);
end lab8part1;


architecture bhv of lab8part1 is
	component ram32x4 is
		port (
			address  : IN STD_LOGIC_VECTOR (4 DOWNTO 0);
			clock		: IN STD_LOGIC  := '1';
			data		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
			wren		: IN STD_LOGIC;
			q		   : OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
		);
	end component;
begin
	u0: ram32x4 port map (addr, clk, data, w, v);
end bhv;