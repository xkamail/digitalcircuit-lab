library verilog;
use verilog.vl_types.all;
entity lab2part6_vlg_sample_tst is
    port(
        t0              : in     vl_logic_vector(5 downto 0);
        sampler_tx      : out    vl_logic
    );
end lab2part6_vlg_sample_tst;
