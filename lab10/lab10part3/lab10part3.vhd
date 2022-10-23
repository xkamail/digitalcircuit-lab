library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.math_real.all;

entity lab10part3 is
	port (
		sw0, sw9 : in std_logic;
		key0, key1 : in std_logic;
		hex0,hex1 : out std_logic_vector(0 to 6);
		addr, d_out : out std_logic_vector(9 downto 0);
		ledr: buffer std_logic_vector(9 downto 0)
	);
end lab10part3;


architecture bhv of lab10part3 is
component processor is
		port (
			data_in : in std_logic_vector(8 downto 0);
			reset_n, clk, run : in std_logic;
			done : buffer std_logic;
			busWires: buffer std_logic_vector(8 downto 0);
			ADDR, DOUT : out std_logic_vector(8 downto 0); -- new 
			reg_A,reg_G,reg_IR,reg_0,reg_1 : out std_logic_vector(8 downto 0);
			Tstep_Q : out std_logic_vector(3 downto 0)
		);
	end component;
	component sevenseg is
		port (
			num : in std_logic_vector(3 downto 0);
			hex : out std_logic_vector(0 to 6)
		);
	end component;

	component inst_mem IS
		port
		(
			address		: in std_logic_vector (4 downto 0);
			clock		: in std_logic  := '1';
			q		: out std_logic_vector (8 downto 0)
		);
	end component;
	
	signal MClock, PClock, Resetn, Run : std_logic;
	signal DIN : std_logic_vector(8 downto 0);
	signal r_addr : std_logic_vector(4 downto 0);
	signal reg0,reg1: std_logic_vector(8 downto 0);

begin
	
	Run <= sw9;
	Resetn <= sw0;
	PClock <= not(key0);
	
	
				
	-- rom0: inst_mem port map (open, MClock, DIN);		

	p1: processor port 
		map(
			DIN,
			Resetn,
			PClock,
			sw9,
			ledr(9),
			ledr(8 downto 0),
			addr,  -- added
			d_out, -- added
			open,
			open,
			open,
			reg0,
			reg1
		);

		s0: sevenseg port map(reg0(3 downto 0),hex0);
		s1: sevenseg port map(reg1(3 downto 0),hex1);
end bhv;