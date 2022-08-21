library verilog;
use verilog.vl_types.all;
entity lab3part5_vlg_sample_tst is
    port(
        key0            : in     vl_logic;
        m               : in     vl_logic;
        sw              : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end lab3part5_vlg_sample_tst;
