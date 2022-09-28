library verilog;
use verilog.vl_types.all;
entity lab7part3_vlg_sample_tst is
    port(
        key0            : in     vl_logic;
        sw0             : in     vl_logic;
        sw1             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end lab7part3_vlg_sample_tst;
