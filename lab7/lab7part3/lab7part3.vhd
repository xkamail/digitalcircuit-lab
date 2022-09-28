library ieee;
use ieee.std_logic_1164.all;

entity lab7part3 is
	port (
		sw1, key0, sw0 : in std_logic;
		ledr : out std_logic_vector(9 downto 0)
	);
end lab7part3;

architecture bhv of lab7part3 is
	component shift_reg is
		port (
			s_in : in std_logic;
			clk,rst,en : in std_logic;
			reg_out : out std_logic_vector(3 downto 0)
		);
	end component;
	signal clk, reset, z, con1, con2 : std_logic;
	signal m1, m2 : std_logic_vector(3 downto 0);
begin
	clk <= not(key0);
	reset <= not(sw0);
	con1 <= sw1;
	con2 <= not(sw1);
	u1: shift_reg port map(sw0, clk, reset, con1, m1);
	u2: shift_reg port map(sw0, clk, reset, con2, m2);
	z <= '1' when (m1 = "1111" or m2 = "1111") else '0';
	ledr(3 downto 0) <= m1;
	ledr(7 downto 4) <= m2;
	ledr(9) <= z;
end bhv;