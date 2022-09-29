library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity lab7part4 is
	port (
		sw : in std_logic_vector(2 downto 0);
		key1, key0 : in std_logic;
		clk50 : in std_logic;
		led : out std_logic_vector(2 downto 0);
		debug_counter, debug_i : out std_logic_vector(2 downto 0);
		ledr : out std_logic;
		srgt, debug_done,debug_load : out std_logic;
		dd : out std_logic_vector(3 downto 0)
	);
end lab7part4;


architecture bhv of lab7part4 is
	component counter
		port (
			clk, clear, en : in std_logic;
			max : in std_logic_vector(2 downto 0);
			n : out std_logic_vector(2 downto 0)
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
			count : out std_logic_vector(2 downto 0)
		);
	end component;
	component shift_reg is
		port (
			p_in : in std_logic_vector(3 downto 0);
			clk,en, rst,load : in std_logic;
			reg_out : out std_logic;
			debug : out std_logic_vector(3 downto 0)
		);
	end component;
	type State_type is (A,B,C,D,E,F, A2); 
	attribute syn_encoding : string;
	attribute syn_encoding of State_type : type is "000 001 010 011 100 101 110";
	signal y_Q, y_D : State_type; -- y_Q is present, y_D is next
	signal clk, counter_done : std_logic;
	signal done, load, count_en,shift_n, regout, w,z : std_logic;
	signal data : std_logic_vector(3 downto 0);
	signal n,i : std_logic_vector(2 downto 0);
begin
	u0: letter port map(sw,data,n);
	u1: half_sec port map(clk50);
	clk <= key0;
	load <= not(key1);
	
	counter_done <= '1' when (unsigned(n) = unsigned(i)) else '0';
	debug_done <= counter_done;
	done <= counter_done;
	debug_load <= count_en;
	u2: shift_reg port map(data, clk, shift_n, '1', load, regout,dd);
	u3: counter port map(clk, load, count_en, n, i);
	debug_counter <=  n;
	debug_i <= i;
	w <= regout;
	srgt <= regout;
	process(w,y_Q,load,done)
	begin
		case y_Q is 
			when A =>
				if load = '1' then -- check press key
					y_D <= A2;
				end if;
			when A2 =>
				if w = '0' then 
					y_D <= B;
				else
					y_D <= C;
				end if;
			when B => y_D <= F;
			when C => y_D <= D;
			when D => y_D <= E;
			when E => y_D <= F;
			when F =>
				if done = '1' then
						y_D <= A;
					else 
						if w = '0' then
							y_D <= B;
						else
							y_D <= C;
						end if;
					end if;
		end case;
	end process;
	process(clk)
	begin
		if rising_edge(clk) then
				y_Q <= y_D;
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
		case y_Q is
			when A => 
				count_en <= '0';
				led <= "000";
				shift_n <= '0';
			when A2 =>
				count_en <= '0';
				led <= "110";
				shift_n <= '1';
			when B => 
				count_en <= '1';
				led <= "001";
				shift_n <= '0';
			when C => 
				count_en <= '0';
				shift_n <= '0';
				led <= "010";
			when D => 
				count_en <= '0';
				shift_n <= '0';
				led <= "011";
			when E => 
				count_en <= '1';
				shift_n <= '0';
				led <= "100";
			when F => 
				count_en <= '0';
				led <= "101";
				shift_n <= '1';
		end case;
	end process;
	ledr <= z;
end bhv;