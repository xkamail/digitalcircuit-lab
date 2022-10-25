library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.math_real.all;

entity lab10part3 is
	port (
		sw9, key0, clk : in std_logic;
		p_W : out std_logic;
		ADDR, DOUT : out std_logic_vector(8 downto 0);
		reg_2,reg_4,reg_5,reg_7,reg_1, reg_0, data_in, IR, reg_3 : out std_logic_vector(8 downto 0);
		Tstep_Q : out std_logic_vector(3 downto 0);
		ledr : out std_logic_vector(8 downto 0)
	);
end lab10part3;


architecture bhv of lab10part3 is
	component d_ff is
		port (
			Clk, D  : in std_logic;
			Q : out std_logic
		);
	end component;
	component processor is
		port (
		data_in : in std_logic_vector(8 downto 0);
		reset_n, clk, run : in std_logic;
		done : buffer std_logic;
		busWires: buffer std_logic_vector(8 downto 0);
		ADDR, DOUT : out std_logic_vector(8 downto 0); -- new 
		Wr_en : out std_logic; -- write en for RAM
		reg_2,reg_4,reg_5,reg_7,reg_1, reg_0, reg_IR, reg_3 : out std_logic_vector(8 downto 0);
		debug_pr_in, debug_addrIn : out std_logic;
		pc_v : out std_logic_vector(8 downto 0);
		Tstep_Q : out std_logic_vector(3 downto 0)
		);
	end component;
	component sevenseg is
		port (
			num : in std_logic_vector(3 downto 0);
			hex : out std_logic_vector(0 to 6)
		);
	end component;

	component ram128x9 IS
		port
		(
		address		: IN STD_LOGIC_VECTOR (6 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		data		: IN STD_LOGIC_VECTOR (8 DOWNTO 0);
		wren		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (8 DOWNTO 0)
		);
	end component;
	component regn is
		generic (n : integer := 9);
		port (
			r : in std_logic_vector(n-1 downto 0);
			reset_n, Rin, clk : in std_logic;
			Q : buffer std_logic_vector(n-1 downto 0)
		);
	end component;
	
	signal  Resetn, Run, wr_en,w, led_en : std_logic;
	signal DIN,d_out : std_logic_vector(8 downto 0);
	signal A : std_logic_vector(8 downto 0);
begin
	ADDR <= A;
	DOUT <= d_out;
	
	--Run <= sw9;
	
	ff0: d_ff port map(clk,sw9, Run);
	
	Resetn <= key0;
	
	wr_en <= w and not( A(8) or A(7) );
	
	m0: ram128x9 port map(A(6 downto 0),clk,d_out,wr_en,DIN);
	data_in <= DIN;
	
	led_en <= not( not(A(7)) or A(8) ) and w;
	
	leds0: regn port map(d_out,Resetn,led_en,clk,ledr);
	p_W <= w;
	p1: processor port 
		map(
			DIN,
			Resetn,
			clk,
			Run,
			open,
			open,
			A,  -- added
			d_out, -- added
			w,
			reg_2,
			reg_4,
			reg_5,
			reg_7,
			reg_1,
			reg_0,
			IR,
			reg_3,
			open,
			open,
			open,
			Tstep_Q
		);

end bhv;