library verilog;
use verilog.vl_types.all;
entity lab5part2_vlg_sample_tst is
    port(
        clock50         : in     vl_logic;
        key0            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end lab5part2_vlg_sample_tst;
