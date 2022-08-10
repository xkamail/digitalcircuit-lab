library verilog;
use verilog.vl_types.all;
entity lab2part6_vlg_check_tst is
    port(
        debug_s0        : in     vl_logic_vector(3 downto 0);
        debug_s1        : in     vl_logic_vector(3 downto 0);
        hex0            : in     vl_logic_vector(0 to 6);
        hex1            : in     vl_logic_vector(0 to 6);
        sampler_rx      : in     vl_logic
    );
end lab2part6_vlg_check_tst;
