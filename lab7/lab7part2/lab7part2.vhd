library ieee;
use ieee.std_logic_1164.all;

entity lab7part2 is
	port (
		sw1, key0, sw0 : in std_logic;
		ledr : out std_logic_vector(9 downto 0)
	);
end lab7part2;


architecture bhv of lab7part2 is
	component d_ff is
		port (
			Clk, D  : in std_logic;
			Q : out std_logic
		);
	end component;
	signal reset, clk, w, z  : std_logic;
	signal q,y : std_logic_vector(3 downto 0);
	type State_type is (A,B,C,D,E,F,G,H,I);
	attribute syn_encoding : string;
	attribute syn_encoding of State_type : type is "0000 0001 0010 0011 0100 0101 0110 0111 1000";
	signal y_Q, y_D : State_type; -- y_Q is present, y_D is next
begin
	w <= sw1;
	clk <= not(key0);
	reset <= not(sw0); -- active low
	
	f0: d_ff port map(clk,q(0),y(0));
	f1: d_ff port map(clk,q(1),y(1));
	f2: d_ff port map(clk,q(2),y(2));
	f3: d_ff port map(clk,q(3),y(3));
	
	process(w,y_Q)
	begin
		case y_Q is 
			when A => 
				if (w = '0') then 
					y_D <= B;
				else 
					y_D <= F;
				end if;
			when B => 
				if (w = '0') then 
					y_D <= C;
				else 
					y_D <= F;
				end if;
			when C =>
				if (w = '0') then 
					y_D <= D;
				else 
					y_D <= F;
				end if;
			when D =>
				if (w = '0') then 
					y_D <= E;
				else 
					y_D <= F;
				end if;
			when E =>
				if (w = '0') then 
					y_D <= E;
				else 
					y_D <= F;
				end if;
			when F =>
				if (w = '0') then 
					y_D <= B;
				else 
					y_D <= G;
				end if;
			when G =>
				if (w = '0') then 
					y_D <= B;
				else 
					y_D <= H;
				end if;
			when H =>
				if (w = '0') then 
					y_D <= B;
				else 
					y_D <= I;
				end if;
			when I =>
				if (w = '0') then 
					y_D <= B;
				else 
					y_D <= I;
				end if;
		end case;
	end process;
	
	process(clk,reset)
	begin
		if reset = '1' then
			y_Q <= A;
		else
			if rising_edge(clk) then
				y_Q <= y_D; 
			end if;
		end if;
	end process;
	
	process(y_Q)
	begin
		if y_Q = E then
			z <= '1';
		elsif y_Q = I then
			z <= '1';
		else
			z <= '0';
		end if;
	end process;
	ledr(9) <= z;
	
end bhv;