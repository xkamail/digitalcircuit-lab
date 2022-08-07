library verilog;
use verilog.vl_types.all;
entity lab1part3_vlg_sample_tst is
    port(
        s0              : in     vl_logic;
        s1              : in     vl_logic;
        u               : in     vl_logic_vector(1 downto 0);
        v               : in     vl_logic_vector(1 downto 0);
        w               : in     vl_logic_vector(1 downto 0);
        x               : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end lab1part3_vlg_sample_tst;
