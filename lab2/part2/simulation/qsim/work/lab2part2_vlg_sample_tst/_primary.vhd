library verilog;
use verilog.vl_types.all;
entity lab2part2_vlg_sample_tst is
    port(
        v               : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end lab2part2_vlg_sample_tst;
