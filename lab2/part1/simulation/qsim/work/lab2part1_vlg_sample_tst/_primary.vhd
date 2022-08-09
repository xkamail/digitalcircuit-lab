library verilog;
use verilog.vl_types.all;
entity lab2part1_vlg_sample_tst is
    port(
        sw1             : in     vl_logic_vector(3 downto 0);
        sw2             : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end lab2part1_vlg_sample_tst;
