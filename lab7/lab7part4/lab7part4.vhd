library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity lab7part4 is
	port (
		sw : in std_logic_vector(2 downto 0);
		key1, key0 : in std_logic;
		clk50 : in std_logic;
		led : out std_logic_vector(1 downto 0);
		ledr : out std_logic
	);
end lab7part4;


architecture bhv of lab7part4 is
	component counter
		port (
			clk, clear : in std_logic;
			max : in std_logic_vector(1 downto 0);
			n : out std_logic_vector(1 downto 0)
		);
	end component;
	component half_sec is
		port (
			clock50 : in std_logic;
			trig : out std_logic
		);
	end component;
	component letter is
		port (
			v : in std_logic_vector(2 downto 0);
			s : out std_logic_vector(3 downto 0);
			count : out std_logic_vector(1 downto 0)
		);
	end component;
	component shift_reg is
		port (
			p_in : in std_logic_vector(3 downto 0);
			clk,rst,load : in std_logic;
			reg_out : out std_logic
		);
	end component;
	type State_type is (A,B,C,D,E,F); 
	attribute syn_encoding : string;
	attribute syn_encoding of State_type : type is "000 001 010 011 100 101";
	signal y_Q, y_D : State_type; -- y_Q is present, y_D is next
	signal clk : std_logic;
	signal rst : std_logic;
	signal data : std_logic_vector(3 downto 0);
	signal n,i : std_logic_vector(1 downto 0);
	signal regout, w, z : std_logic;
	signal en : std_logic;
begin
	u0: letter port map(sw,data,n);
	c0: half_sec port map(clk50);
	clk <= not(key0);
	rst <= '1' when (unsigned(i) = unsigned(n)) else '0';
	en <= '1';
	
	c2: counter port map(clk, '0', n, i);

	c1: shift_reg port map(data, clk, rst, rst, regout);
	w <= regout;
	process(w,y_Q)
	begin
		case y_Q is 
			when A =>
				if w = '0' then
					y_D <= B;
				else
					y_D <= C;
				end if;
			when B =>
				if w = '0' then
					y_D <= F;
				else
					y_D <= F;
				end if;
			when C =>
				if w = '0' then
					y_D <= D;
				else
					y_D <= D;
				end if;
			when D =>
				if w = '0' then
					y_D <= E;
				else
					y_D <= E;
				end if;
			when E =>
				if w = '0' then
					y_D <= F;
				else
					y_D <= F;
				end if;
			when F =>
				if w = '0' then
					y_D <= B;
				else
					y_D <= C;
				end if;
		end case;
	end process;
	process(clk,rst)
	begin
		if rst = '1' then
			y_Q <= A;
		else
			if rising_edge(clk) then
				y_Q <= y_D;
			end if;
		end if;
	end process;
	process(y_Q)
	begin
		if y_Q = B then
			z <= '1';
		elsif y_Q = C then
			z <= '1';
		elsif y_Q = D then
			z <= '1';
		elsif y_Q = E then
			z <= '1';
		else
			z <= '0';
		end if;
	end process;
	led <= i;
	ledr <= z;
end bhv;