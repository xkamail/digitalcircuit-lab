library ieee;
use ieee.std_logic_1164.all;


entity port_n is
	generic (n : integer := 9);
	port (
		sw : in std_logic_vector(n-1 downto 0);
		reset_n,clk, En : in std_logic;
		q : out std_logic_vector(n-1 downto 0)
	);
end port_n;

architecture bhv of port_n is
	component regn is
		generic (n : integer := 9);
		port (
			r : in std_logic_vector(n-1 downto 0);
			reset_n, Rin, clk : in std_logic;
			Q : buffer std_logic_vector(n-1 downto 0)
		);
	end component;
begin
	
	r0: regn generic map (n) port map(sw,reset_n,En,clk, q);
	
end bhv;