library ieee;
use ieee.std_logic_1164.all;

entity register8bit is
	port (
		En : in std_logic;
		v : in std_logic_vector(7 downto 0);
		h : out std_logic_vector(7 downto 0)
	);

end register8bit;


architecture bhv of register8bit is 
	component d_ff
		port (
			clk, d  : in std_logic;
			q : out std_logic
		);
	end component;
begin

	d0: d_ff port map (En,v(0),h(0)); 
	d1: d_ff port map (En,v(1),h(1)); 
	d2: d_ff port map (En,v(2),h(2)); 
	d3: d_ff port map (En,v(3),h(3)); 
	d4: d_ff port map (En,v(4),h(4)); 
	d5: d_ff port map (En,v(5),h(5)); 
	d6: d_ff port map (En,v(6),h(6)); 
	d7: d_ff port map (En,v(7),h(7));
	
end bhv;