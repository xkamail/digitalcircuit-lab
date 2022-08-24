library verilog;
use verilog.vl_types.all;
entity lab4part2_vlg_sample_tst is
    port(
        clear           : in     vl_logic;
        enable          : in     vl_logic;
        key0            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end lab4part2_vlg_sample_tst;
