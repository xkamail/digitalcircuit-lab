library ieee;
use ieee.std_logic_1164.all;

entity lab4part1 is 
	port (
		-- SW0 = EN, SW1 = CLR
		enable,clear, key0 : in std_logic;
		debug : out std_logic_vector(7 downto 0);
		hex0, hex1 : out std_logic_vector(0 to 6)
	);
end lab4part1;


architecture behavior of lab4part1 is
	component t_ff
		port (
			clk, clr, t : in std_logic;
			Q, Qn : out std_logic
		);
	end component;
	component sevenseg
		port (
			num : in std_logic_vector(3 downto 0);
			hex : out std_logic_vector(0 to 6)
		);
	end component;
	
	signal clk : std_logic;
	signal q : std_logic_vector(7 downto 0);
	signal t1,t2,t3,t4,t5,t6,t7,t8 : std_logic;
begin
	clk <= not(key0);
	
	t1 <= enable;
	t2 <= t1 and q(0);
	t3 <= t2 and q(1);
	t4 <= t3 and q(2);
	t5 <= t4 and q(3);
	t6 <= t5 and q(4);
	t7 <= t6 and q(5);
	t8 <= t7 and q(6);
	
	u1: t_ff port map (clk,clear, t1, q(0));
	u2: t_ff port map (clk,clear, t2, q(1));
	u3: t_ff port map (clk,clear, t3, q(2));
	u4: t_ff port map (clk,clear, t4, q(3));
	u5: t_ff port map (clk,clear, t5, q(4));
	u6: t_ff port map (clk,clear, t6, q(5));
	u7: t_ff port map (clk,clear, t7, q(6));
	u8: t_ff port map (clk,clear, t8, q(7));

	debug <= q;
	h1: sevenseg port map (q(7 downto 4),hex1);
	h2: sevenseg port map (q(3 downto 0),hex0);
	
end behavior;