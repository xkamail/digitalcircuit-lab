library ieee;
use ieee.std_logic_1164.all;

entity seg7_scroll is
	port (
		ResetN, clk: in std_logic;
		m : in std_logic_vector(2 downto 0); -- selector
		data_in : in std_logic_vector(3 downto 0); -- data that write
		hex5,hex4,hex3,hex2,hex1,hex0 : out std_logic_vector(0 to 6)
		
	);
end seg7_scroll;


architecture bhv of seg7_scroll is
	component sevenseg is
		port (
			num : in std_logic_vector(3 downto 0);
			hex : out std_logic_vector(0 to 6)
		);
	end component;
	component regn is
		generic (n : integer := 9);
		port (
			r : in std_logic_vector(n-1 downto 0);
			reset_n, Rin, clk : in std_logic;
			Q : buffer std_logic_vector(n-1 downto 0)
		);
	end component;
	signal En : std_logic_vector(5 downto 0);
	signal h5,h4,h3,h2,h1,h0 : std_logic_vector(3 downto 0);
begin
	-- mux selector
	process(m)
	begin
		case m is
			when "010" => En <= "000001"; --0
			when "011" => En <= "000010"; --1
			when "100" => En <= "000100"; --2
			when "101" => En <= "001000"; --3
			when "110" => En <= "010000"; --4
			when "111" => En <= "100000"; --5
			when others => null;
		end case;
	end process;
	
	r5: regn generic map (4) 
			port map (data_in, ResetN, En(5),clk, h5);
	r4: regn generic map (4) 
			port map (data_in, ResetN, En(4),clk, h4);
	r3: regn generic map (4) 
			port map (data_in, ResetN, En(3),clk, h3);
	r2: regn generic map (4) 
			port map (data_in, ResetN, En(2),clk, h2);
	r1: regn generic map (4) 
			port map (data_in, ResetN, En(1),clk, h1);
	r0: regn generic map (4) 
			port map (data_in, ResetN, En(0),clk, h0);
	
	s5: sevenseg port map(h5, hex5);
	s4: sevenseg port map(h4, hex4);
	s3: sevenseg port map(h3, hex3);
	s2: sevenseg port map(h2, hex2);
	s1: sevenseg port map(h1, hex1);
	s0: sevenseg port map(h0, hex0);
end bhv;