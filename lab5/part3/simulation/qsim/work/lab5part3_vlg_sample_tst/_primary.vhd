library verilog;
use verilog.vl_types.all;
entity lab5part3_vlg_sample_tst is
    port(
        clock50         : in     vl_logic;
        key0            : in     vl_logic;
        key1            : in     vl_logic;
        sw              : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end lab5part3_vlg_sample_tst;
