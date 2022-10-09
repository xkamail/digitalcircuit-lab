library ieee;
use ieee.std_logic_1164.all;

entity mux8bit is 
	port (
		busWires : out std_logic_vector(8 downto 0);
		R0to7out : in std_logic_vector(0 to 7);
		Dout, Gout : in std_logic;
		Din, r0,r1,r2,r3,r4,r5,r6,r7 : in std_logic_vector(8 downto 0)
	);
end mux8bit;

architecture bhv of mux8bit is
	signal y : std_logic_vector(8 downto 0);
begin
	process(R0to7out,Dout,Gout)
	begin
		if Dout = '1' then
			y <= Din;
		elsif Gout = '1' then
			
		else
			case R0to7out is
				when "10000000" => y <= r0;
				when "01000000" => y <= r1;
				when "00100000" => y <= r2;
				when "00010000" => y <= r3;
				when "00001000" => y <= r4;
				when "00000100" => y <= r5;
				when "00000010" => y <= r6;
				when "00000001" => y <= r7;
				when others => 
			end case;
		end if;
	end process;
	busWires <= y;
end bhv;