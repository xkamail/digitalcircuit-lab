library verilog;
use verilog.vl_types.all;
entity lab8part3_vlg_sample_tst is
    port(
        key0            : in     vl_logic;
        sw              : in     vl_logic_vector(9 downto 0);
        sampler_tx      : out    vl_logic
    );
end lab8part3_vlg_sample_tst;
