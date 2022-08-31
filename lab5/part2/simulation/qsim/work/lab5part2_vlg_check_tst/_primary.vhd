library verilog;
use verilog.vl_types.all;
entity lab5part2_vlg_check_tst is
    port(
        hex0            : in     vl_logic_vector(0 to 6);
        hex1            : in     vl_logic_vector(0 to 6);
        hex2            : in     vl_logic_vector(0 to 6);
        sampler_rx      : in     vl_logic
    );
end lab5part2_vlg_check_tst;
