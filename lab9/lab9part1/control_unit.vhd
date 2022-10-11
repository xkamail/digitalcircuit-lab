library ieee;
use ieee.std_logic_1164.all;


entity control_unit is
	port (
		reset_n,clk : in std_logic;
		run : in std_logic;
		I : in std_logic_vector(2 downto 0); --
		Xreg, Yreg : in std_logic_vector(0 to 7); -- x,y register number
		Rin : out std_logic_vector(0 to 7); -- tell load state each register 0to8
		IRin, Dout : out std_logic; -- tell load instruction set to register
		R0toR7out : out std_logic_vector(0 to 7);
		done : buffer std_logic;
		Tstep_Q : out std_logic_vector(3 downto 0);
		Gout,Gin,Ain, AddSub : out std_logic -- add/sub ops signal
	);
end control_unit;

architecture bhv of control_unit is
	type State_type is (T0,T1,T2,T3); -- mv, mvi, add, sub
	signal y_Q, y_D : State_type;
	constant MV : std_logic_vector(2 downto 0) := "000";
	constant MVI : std_logic_vector(2 downto 0) := "001";
	constant ADD : std_logic_vector(2 downto 0) := "010";
	constant SUB : std_logic_vector(2 downto 0) := "011";
	constant NONE : std_logic_vector(0 to 7) := "00000000";
begin 

	-- state table
	process (y_Q,run,done)
	begin
		case y_Q is
			when T0 => -- wait for run signal
				if run = '1' then 
					y_D <= T1;
				else
					y_D <= T0;
				end if;
			when T1 => -- load data into IR register
				case I is
					when MV => y_D <= T0;
					when MVI => y_D <= T0;
					when ADD => y_D <= T2; -- add
					when SUB => y_D <= T2; -- sub
					when others => y_D <= T0;
				end case;
 			when T2 =>
				case I is
					when MV => y_D <= T0;
					when MVI => y_D <= T0;
					when ADD => y_D <= T3; -- add
					when SUB => y_D <= T3; -- sub
					when others => y_D <= T0;
				end case;
			when T3 =>
				y_D <= T0;
		end case;
	end process;
	
	fsmff: process(clk,reset_n,y_D)
	begin
		if reset_n <= '0' then
			y_Q <= T0;
		else
			if rising_edge(clk) then
				 y_Q <= y_D;
			end if;
		end if;
	end process;
	
	controlsignals: process (y_Q, Xreg, Yreg)
	begin
		case y_Q is
			when T0 => 
				Gout <= '0';
				Tstep_Q <= "0000";
				R0toR7out <= NONE;
				Dout <= '0';
				IRin <= '1';
				Rin <= NONE;
				done <= '0';
				Gin <= '0';
			when T1 =>
				Gout <= '0';
				IRin <= '0';
				Tstep_Q <= "0011";
				Gin <= '0';
				case I is
					when MV => -- copy Ry -> Rx
						R0toR7out <= Yreg;
						Rin <= Xreg;
						done <= '1';
						Dout <= '0';
						Ain <= '0';
					when MVI => -- copy D -> Rx
						R0toR7out <= NONE;
						Dout <= '1';
						Rin <= Xreg;
						done <= '1';
						Ain <= '0';
					when ADD | SUB => -- add or sub: load Rx into Areg
						R0toR7out <= Xreg; -- tell mux out Rx
						Dout <= '0';
						Ain <= '1'; -- tell A load data from BUS
						done <= '0';
						Rin <= NONE;
					when others =>
						Ain <= '0';
						done <= '0';
						Dout <= '0';
						Rin <= NONE;
				end case;
			when T2 =>
				Tstep_Q <= "0101";
				IRin <= '0';
				Dout <= '0';
				Rin <= NONE;
				done <= '0';
				R0toR7out <= Yreg;
				Gin <= '1';
				Gout <= '0';
				if I = SUB then
					AddSub <='1';
				else
					AddSub <='0';
				end if;
			when T3 =>
				Tstep_Q <= "1001";
				R0toR7out <= "00000000";
				IRin <= '0';
				Dout <= '0';
				done <= '1';
				Gin <= '0';
				case I is
					when ADD | SUB =>
						Rin <= Xreg;
						Gout <= '1';
					when others =>
						Rin <= NONE;
						
				end case;
		end case;
	end process;
end bhv;