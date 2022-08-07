library verilog;
use verilog.vl_types.all;
entity lab1part4_vlg_check_tst is
    port(
        hex             : in     vl_logic_vector(0 to 6);
        sampler_rx      : in     vl_logic
    );
end lab1part4_vlg_check_tst;
