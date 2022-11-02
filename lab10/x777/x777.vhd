library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.math_real.all;

entity x777 is
	port (
		sw9, key0, clk : in std_logic;
		sw : in std_logic_vector(8 downto 0);
		hex5,hex4,hex3,hex2,hex1,hex0 : out std_logic_vector(0 to 6);
		r_addr, r1, r2,r3,r4,r0 : out std_logic_vector(8 downto 0);
		gt_flags,d_en_flag : out std_logic;
		
		ledr : out std_logic_vector(8 downto 0)
	);
end x777;

architecture bhv of x777 is 
	component d_ff is
		port (
			Clk, en, D  : in std_logic;
			Q : out std_logic
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
	component seg7_scroll is
		port (
			ResetN, clk, w: in std_logic;
			m : in std_logic_vector(2 downto 0);
			data_in : in std_logic_vector(3 downto 0); 
			hex5,hex4,hex3,hex2,hex1,hex0 : out std_logic_vector(0 to 6)
			
		);
	end component;
	component port_n
		generic (n : integer := 9);
		port (
			sw : in std_logic_vector(n-1 downto 0);
			reset_n,clk, En : in std_logic;
			q : out std_logic_vector(n-1 downto 0)
		);
	end component;
	signal  Resetn, Run, wr_en,w, led_en, en_seg7 : std_logic;
	signal DIN,d_out,q_ram_out,port_out : std_logic_vector(8 downto 0);
	signal A : std_logic_vector(8 downto 0);
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
		Tstep_Q : out std_logic_vector(3 downto 0);
		gt_flag,d_en_flag : out std_logic
		);
	end component;
begin
	r_addr <= A(8 downto 0);
	p1: processor port 
		map(
			DIN,
			Resetn,
			clk,
			Run,
			open, -- done
			open, -- bus
			A,  -- added
			d_out, -- added
			w,
			r2, -- r2
			r4, -- r4
			open, -- r5
			open, -- r7
			r1, -- r1
			r0, -- r0
			open, -- ir
			r3, -- r3
			open, -- 
			open,
			open,
			open,
			gt_flags,
			d_en_flag
		);
--	process(A)
--		begin
--			if A(8 downto 7) = "11" then
--				DIN <= port_out;
--			else
--				DIN <= q_ram_out;
--			end if;
--	end process;
	DIN <= q_ram_out;
	
	ff0: d_ff port map(clk,'1',sw9, Run);
	en_seg7 <= '1' when (A(8 downto 7) = "10") else '0';
	Resetn <= key0;
	
	wr_en <= w and not( A(8) or A(7) );
	
	m0: ram128x9 port map(A(6 downto 0),clk,d_out,wr_en,q_ram_out);

	
	led_en <= not( not(A(7)) or A(8) ) and w;
	
	leds0: regn port map(d_out,Resetn,led_en,clk,ledr);
	
	u0: seg7_scroll port map(Resetn,clk, en_seg7 and w, A(2 downto 0),d_out(3 downto 0),hex5,hex4,hex3,hex2,hex1,hex0);
	
	u1: port_n generic map(9) port map(sw,Resetn,clk,not(w),port_out);
	

end;
