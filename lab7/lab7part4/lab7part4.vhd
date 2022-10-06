library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity lab7part4 is
	port (
		sw : in std_logic_vector(2 downto 0); -- SW2to0
		key1, key0 : in std_logic; -- KEY1 = load
		clk50 : in std_logic; -- 50Mhz
		led : out std_logic_vector(2 downto 0); -- state
		d_clk : out std_logic;
		ledr : out std_logic -- Z
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
			reset, clock50 : in std_logic;
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
			clk,en,load : in std_logic;
			s_out : out std_logic
		);
	end component;
	type State_type is (A,B,C,D,E,F); 
	attribute syn_encoding : string;
	attribute syn_encoding of State_type : type is "000 001 010 011 100 101";
	signal y_Q, y_D : State_type; -- y_Q is present, y_D is next
	signal clk, done, load, count_en, shift_n, w,z, reg_out,reset : std_logic;
	signal data : std_logic_vector(3 downto 0);
	signal max_i,i : std_logic_vector(2 downto 0);
begin
	load <= not(key1);
	reset <= not(key0);
	-- clk <= key0; -- act like manual clock
	done <= '1' when (unsigned(max_i) = unsigned(i)) else '0';
	u0: letter port map(sw,data,max_i);
	u1: half_sec port map(reset, clk50, clk); -- clock with 0.5 sec
	d_clk <= clk;
	u3: counter port map(clk, load, count_en, max_i, i);
	u2: shift_reg port map(data, clk, shift_n, load, reg_out);
	
	w <= reg_out; -- current bit
	process(w,y_Q)
	begin
		case y_Q is 
			when A => -- waiting
				if load = '1' then -- check press key
					y_D <= F;
				else
					y_D <= A;
				end if;
				
				
			when B => y_D <= F; -- state display dot 0.5s
			
			when C => y_D <= D; -- state display dash 0.5s
			when D => y_D <= E; -- state display dash 0.5s
			when E => y_D <= F; -- state display dash 0.5s
			
			when F => -- checking a next state gap 0.5s
				if done = '1' then
					y_D <= A;
				else
					if w = '0' then -- find a next state
						y_D <= B;
					else
						y_D <= C;
					end if;
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
		case y_Q is
			when A => 
				count_en <= '0';
				led <= "000";
				shift_n <= '0';
				z <= '0';
			when B => 
				count_en <= '1';
				led <= "001";
				shift_n <= '0';
				z <= '1';
			when C => 
				count_en <= '0';
				shift_n <= '0';
				led <= "010";
				z <= '1';
			when D => 
				count_en <= '0';
				shift_n <= '0';
				led <= "011";
				z <= '1';
			when E => 
				count_en <= '1';
				shift_n <= '0';
				led <= "100";
				z <= '1';
			when F => 
				count_en <= '0';
				led <= "101";
				shift_n <= '1';
				z <= '0';
		end case;
		
	end process;
	ledr <= z; -- showing an output
	
end bhv;