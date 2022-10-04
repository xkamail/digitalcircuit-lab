library ieee;
use ieee.std_logic_1164.all;

entity shift_reg is
		port (
			p_in : in std_logic_vector(3 downto 0);
			clk,en, rst,load : in std_logic;
			reg_out : out std_logic;
			debug : out std_logic_vector(3 downto 0)
		);
end shift_reg;

architecture bhv of shift_reg is
	signal temp : std_logic_vector(3 downto 0);
begin

	process(clk,rst,load)
	begin
		if rst = '0' then
			temp <= "0000";
		elsif rising_edge(clk) then
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
	debug <= temp;
end bhv;