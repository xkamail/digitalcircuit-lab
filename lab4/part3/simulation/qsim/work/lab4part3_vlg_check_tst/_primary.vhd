library verilog;
use verilog.vl_types.all;
entity lab4part3_vlg_check_tst is
    port(
        b               : in     vl_logic_vector(3 downto 0);
        debug           : in     vl_logic_vector(3 downto 0);
        hex0            : in     vl_logic_vector(0 to 6);
        sampler_rx      : in     vl_logic
    );
end lab4part3_vlg_check_tst;
