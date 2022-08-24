library verilog;
use verilog.vl_types.all;
entity lab4part5_vlg_sample_tst is
    port(
        clock50         : in     vl_logic;
        sw              : in     vl_logic_vector(9 downto 0);
        sampler_tx      : out    vl_logic
    );
end lab4part5_vlg_sample_tst;
