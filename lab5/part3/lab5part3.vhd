library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.math_real.all;

entity lab5part3 is
	port (
		sw : in std_logic_vector(7 downto 0);
		-- key0 stop when press ( key0 == LOW )
		-- key1 press to preset the min value
		clock50, key0, key1 : in std_logic;
		-- debug1, debug2, debug3 : out std_logic_vector(6 downto 0);
		-- r1, r2 : out std_logic;
		hex0, hex1, hex2, hex3, hex4, hex5 : out std_logic_vector(0 to 6)
	);
end lab5part3;

architecture bhv of lab5part3 is 
	component decimal_encoder is 
		port (
			v : std_logic_vector(6 downto 0);
			d1, d0 : out std_logic_vector(3 downto 0)
		);
	end component;
	component modulo_k is 
		generic ( k : natural := 4 );
		port (
			clock, en, preset, reset_n  : in std_logic;
			data : in std_logic_vector(natural(ceil(log2(real(k)))) - 1 downto 0);
			Q : out std_logic_vector(natural(ceil(log2(real(k)))) - 1 downto 0);
			rollover : out std_logic
		);
	end component;
	component every_seconds is
		port (
			clock50 : in std_logic;
			trig : out std_logic
		);
	end component;
	component sevenseg is
		port (
			num : in std_logic_vector(3 downto 0);
			hex : out std_logic_vector(0 to 6)
		);
	end component;
	
	signal hun_sec, sec, min : std_logic_vector(6 downto 0);
	signal reset_n, s, w1, w2, w3 : std_logic;
	-- tell when reach max value
	signal rollover1, rollover2 : std_logic; 
	signal en : std_logic;
	signal d0,d1,d2,d3,d4,d5 : std_logic_vector(3 downto 0);
begin
	reset_n <= key1;
	en <= key0;
	x0: every_seconds port map (clock50, s);
	
	w1 <= en and s;
	w2 <= w1 and rollover1;
	w3 <= w2 and rollover2;
	
	hunsec0: modulo_k 
		generic map (k => 100) 
		port map (clock50, w1, '1', reset_n, (others => '0'), hun_sec, rollover1);
	
	sec0: modulo_k 
		generic map (k => 60) 
		port map (clock50, w2, '1', reset_n, (others => '0'), sec(5 downto 0), rollover2);
	
	min0: modulo_k 
		generic map (k => 60) 
		port map (clock50, w3, key1, reset_n, sw(5 downto 0), min(5 downto 0));
	
	
	
--	debug1 <= hun_sec;
--	debug2 <= sec;
--	debug3 <= min;
	
	
	u0: decimal_encoder port map(hun_sec, d1, d0);
	u1: decimal_encoder port map(sec, d3, d2);
	u2: decimal_encoder port map(min, d5, d4);
	
	h0: sevenseg port map(d0, hex0);
	h1: sevenseg port map(d1, hex1);
	
	h2: sevenseg port map(d2, hex2);
	h3: sevenseg port map(d3, hex3);
	
	h4: sevenseg port map(d4, hex4);
	h5: sevenseg port map(d5, hex5);
	
end bhv;