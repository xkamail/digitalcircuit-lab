library ieee;
use ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity decimal_encoder is 
	port (
		v : std_logic_vector(6 downto 0);
		d1, d0 : out std_logic_vector(3 downto 0)
	);
end decimal_encoder;
architecture bhv of decimal_encoder is
	signal i : integer;
begin
	i <= to_integer(unsigned(v));
	d0 <= std_logic_vector(to_unsigned(i mod 10, d0'length));
	d1 <= std_logic_vector(to_unsigned(i / 10, d1'length));
end bhv;