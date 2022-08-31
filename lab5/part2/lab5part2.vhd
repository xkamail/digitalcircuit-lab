library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.math_real.all;

entity lab5part2 is
	port (
		-- reset to KEY0
		clock50, key0 : in std_logic;
		-- debug1, debug2, debug3 : out std_logic_vector(3 downto 0);
		-- r1, r2 : out std_logic;
		hex0, hex1, hex2 : out std_logic_vector(0 to 6)
	);
end lab5part2;

architecture bhv of lab5part2 is 
	component modulo_k is 
		generic ( k : natural := 4 );
		port (
			clock, en, reset_n  : in std_logic;
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
	
	signal d0,d1,d2 : std_logic_vector(3 downto 0);
	signal reset_n, sec, w1, w2, w3 : std_logic;
	-- tell when reach max value
	signal rollover1, rollover2 : std_logic; 
	
begin
	reset_n <= key0;
	
	x0: every_seconds port map (clock50, sec);

	u0: modulo_k generic map (k => 10) port map (clock50, sec, reset_n, d0, rollover1);
	u1: modulo_k generic map (k => 10) port map (clock50, sec and rollover1, reset_n, d1, rollover2);
	u2: modulo_k generic map (k => 10) port map (clock50, sec and rollover1 and rollover2, reset_n, d2);

--	debug1 <= d0;
--	debug2 <= d1;
--	debug3 <= d2;
--	r1 <= sec and rollover1;
--	r2 <= sec and rollover1 and rollover2;
	
	h0: sevenseg port map(d0, hex0);
	h1: sevenseg port map(d1, hex1);
	h2: sevenseg port map(d2, hex2);
	
end bhv;