library verilog;
use verilog.vl_types.all;
entity lab3part5_vlg_check_tst is
    port(
        debug_a         : in     vl_logic_vector(7 downto 0);
        debug_b         : in     vl_logic_vector(7 downto 0);
        debug_s         : in     vl_logic_vector(7 downto 0);
        hex0            : in     vl_logic_vector(0 to 6);
        hex1            : in     vl_logic_vector(0 to 6);
        hex2            : in     vl_logic_vector(0 to 6);
        hex3            : in     vl_logic_vector(0 to 6);
        hex4            : in     vl_logic_vector(0 to 6);
        hex5            : in     vl_logic_vector(0 to 6);
        ledr            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end lab3part5_vlg_check_tst;
