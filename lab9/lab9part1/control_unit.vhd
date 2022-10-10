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
		Tstep_Q : out std_logic_vector(3 downto 0)
	);
end control_unit;

architecture bhv of control_unit is
	type State_type is (T0,T1,T2,T3);
	signal y_Q, y_D : State_type;
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
					when "000" => y_D <= T0;
					when "001" => y_D <= T0;
					when "010" => y_D <= T2;
					when "011" => y_D <= T2;
					when others => y_D <= T0;
				end case;
 			when T2 =>
				case I is
					when "000" => y_D <= T0;
					when "001" => y_D <= T0;
					when "010" => y_D <= T3;
					when "011" => y_D <= T3;
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
				Tstep_Q <= "0000";
				R0toR7out <= "00000000";
				Dout <= '0';
				IRin <= '1';
				Rin <= Xreg or Yreg;
				done <= '0';
			when T1 =>
				IRin <= '0';
				Tstep_Q <= "0011";
				case I is
					when "000" => -- copy Ry -> Rx
						R0toR7out <= Yreg;
						Rin <= Xreg;
						done <= '1';
						Dout <= '0';
					when "001" => -- copy D -> Rx
						R0toR7out <= "00000000";
						Dout <= '1';
						Rin <= Xreg;
						done <= '1';
					when others =>
				end case;
			when T2 =>
				Tstep_Q <= "0011";
				R0toR7out <= "00000000";
				IRin <= '0';
				Dout <= '0';
				Rin <= "00000000";
				done <= '0';
			when T3 =>
				Tstep_Q <= "0011";
				R0toR7out <= "00000000";
				IRin <= '0';
				Dout <= '0';
				Rin <= "00000000";
				done <= '1';
		end case;
	end process;
end bhv;