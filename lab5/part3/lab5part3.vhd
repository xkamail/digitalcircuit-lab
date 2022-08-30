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
		debug1, debug2, debug3 : out std_logic_vector(6 downto 0);
		r1, r2 : out std_logic;
		hex0, hex1, hex2 : out std_logic_vector(0 to 6)
	);
end lab5part3;

architecture bhv of lab5part3 is 
	component modulo_k is 
		generic ( k : natural := 4 );
		port (
			clock, en, preset, reset_n  : in std_logic;
			presetQ : in std_logic_vector(natural(ceil(log2(real(k)))) - 1 downto 0);
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
	
	signal zero, hun_sec, sec, temp_min : std_logic_vector(6 downto 0);
	signal reset_n, s, w1, w2, w3 : std_logic;
	-- tell when reach max value
	signal rollover1, rollover2 : std_logic; 
	signal en : std_logic;
begin
	reset_n <= '1';
	
	en <= key0;
	
	x0: every_seconds port map (clock50, s);

	hunsec0: modulo_k 
	generic map (k => 100) 
	port map (clock50, en, '1', reset_n, zero, hun_sec, rollover1);
	
	sec0: modulo_k 
	generic map (k => 60) 
	port map (not(rollover1), en, '1', reset_n, zero(5 downto 0), sec(5 downto 0), rollover2);
	
	min0: modulo_k 
	generic map (k => 60) 
	port map (s, en, key1, reset_n,  sw(5 downto 0), temp_min(5 downto 0));
	
	
	
	debug1 <= hun_sec;
	debug2 <= sec;
	debug3 <= temp_min;
	
	r1 <= not(rollover1);
	r2 <= not(rollover2);
	
--	h0: sevenseg port map(d0, hex0);
--	h1: sevenseg port map(d1, hex1);
--	h2: sevenseg port map(d2, hex2);
	
end bhv;