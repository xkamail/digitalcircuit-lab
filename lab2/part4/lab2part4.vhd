library ieee;
use ieee.std_logic_1164.all;


entity lab2part4 is 
	port (
		x : in std_logic_vector(3 downto 0);
		y : in std_logic_vector(3 downto 0);
		c_in : in std_logic;
		led9 : out std_logic;
		hex3,hex5 : out std_logic_vector(0 to 6);
		hex1 : out std_logic_vector(0 to 6); -- s1
		hex0 : out std_logic_vector(0 to 6) -- s0
	);
end lab2part4;


architecture behavior of lab2part4 is 
	component mux_4bit_2to1
		port (
			s : in std_logic;
			u,v : in std_logic_vector(3 downto 0);
			
			m : out std_logic_vector(3 downto 0)
		);
	end component;
	component full_adder
		port (
			a : in std_logic;
			b : in std_logic;
			c_in : in std_logic;
			s : out std_logic;
			c_out : out std_logic
		);
	end component;
	component circuit_a
		port (
			v : in std_logic_vector(3 downto 0);
			h : out std_logic_vector(3 downto 0)
		);
	end component;
	component sevenseg
		port (
			num : in std_logic_vector(3 downto 0);
			hex : out std_logic_vector(0 to 6)
		);
	end component;
	component encoder_6to9
		port (
			v : in std_logic_vector(3 downto 0);
			h : out std_logic_vector(3 downto 0)
		);
	end component;
	component comparator
		port (
			a   : in std_logic_vector(3 downto 0);
			greater  : out std_logic
		);
	end component;
	
	signal c1,c2,c3 : std_logic;
	signal s : std_logic_vector(3 downto 0); -- store X+Y value
	signal c_out : std_logic;
	
	signal d1, d0 : std_logic_vector(3 downto 0); -- final d1,d0 value
	signal m0 : std_logic; -- check has more than 9
	signal from_encoder_6to9 : std_logic_vector(3 downto 0);
	signal from_a : std_logic_vector(3 downto 0);
	signal from_15 : std_logic_vector(3 downto 0);
	signal x_err,y_err : std_logic;
begin

	-- validate x or y value
	v0: comparator port map (x, x_err);
	v1: comparator port map (y, y_err);
	led9 <= x_err or y_err;
	
	-- show value of X(hex5) and Y(hex3)
	h0: sevenseg port map (x, hex5);
	h1: sevenseg port map (y, hex3);

	
	-- SUM X + Y => S , C_OUT
	f0: full_adder port map (x(0),y(0),c_in,s(0),c1);
	f1: full_adder port map (x(1),y(1),c1,s(1),c2);
	f2: full_adder port map (x(2),y(2),c2,s(2),c3);
	f3: full_adder port map (x(3),y(3),c3,s(3),c_out);
	

	-- for digit 1
	g0: comparator port map (s, m0);
	d1 <= "0001" when (m0 = '1' or c_out = '1') else "0000"; -- for 1001 or 10000
	g1: sevenseg port map (d1, hex1);
	
	-- for digit 0
	g2: circuit_a port map (s, from_a); -- convert 10-15
	g3: mux_4bit_2to1 port map (m0, s, from_a, from_15); -- if m0 then show 0-5 
	g4: encoder_6to9 port map (s, from_encoder_6to9); -- convert 16-19
	g5: mux_4bit_2to1 port map (c_out, from_15, from_encoder_6to9, d0); -- if c_out then show 6-9
	g6: sevenseg port map (d0, hex0);
	
end behavior;