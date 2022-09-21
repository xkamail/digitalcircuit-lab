library verilog;
use verilog.vl_types.all;
entity lab6part2_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        key0            : in     vl_logic;
        sw              : in     vl_logic_vector(7 downto 0);
        sw8             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end lab6part2_vlg_sample_tst;
