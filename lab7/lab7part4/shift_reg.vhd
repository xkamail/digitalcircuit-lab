library ieee;
use ieee.std_logic_1164.all;

entity shift_reg is
		port (
			p_in : in std_logic_vector(3 downto 0);
			clk,en,load : in std_logic;
			reg_out : out std_logic
		);
end shift_reg;

architecture bhv of shift_reg is
	signal temp : std_logic_vector(3 downto 0);
begin

	process(clk,load)
	begin
		if rising_edge(clk) then
			if load = '1' then
				temp <= p_in;
			else
				if en = '1' then
					temp(3) <= temp(2);
					temp(2) <= temp(1);
					temp(1) <= temp(0);
					temp(0) <= '0';
				end if;
			end if;
		else
			temp <= temp;
		end if;
	end process;
	reg_out <= temp(3);
end bhv;