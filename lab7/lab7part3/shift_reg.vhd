library ieee;
use ieee.std_logic_1164.all;

entity shift_reg is
	port (
		s_in : in std_logic;
		clk,rst,en : in std_logic;
		reg_out : out std_logic_vector(3 downto 0)
	);
end shift_reg;

architecture bhv of shift_reg is
	signal temp : std_logic_vector(3 downto 0);
begin

	process(clk,rst,en)
	begin
		if rst = '0' then
			temp <= "0000";
		elsif rising_edge(clk) then
			if en = '1' then
				temp(3) <= temp(2);
				temp(2) <= temp(1);
				temp(1) <= temp(0);
				temp(0) <= s_in;
			end if;
		else
			temp <= temp;
		end if;
	end process;
	reg_out <= temp;
end bhv;