library verilog;
use verilog.vl_types.all;
entity lab7part4_vlg_check_tst is
    port(
        dd              : in     vl_logic_vector(3 downto 0);
        debug_counter   : in     vl_logic_vector(2 downto 0);
        debug_done      : in     vl_logic;
        debug_i         : in     vl_logic_vector(2 downto 0);
        debug_load      : in     vl_logic;
        led             : in     vl_logic_vector(2 downto 0);
        ledr            : in     vl_logic;
        srgt            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end lab7part4_vlg_check_tst;
