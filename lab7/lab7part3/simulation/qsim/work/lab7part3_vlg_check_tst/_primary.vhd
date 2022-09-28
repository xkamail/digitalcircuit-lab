library verilog;
use verilog.vl_types.all;
entity lab7part3_vlg_check_tst is
    port(
        ledr            : in     vl_logic_vector(9 downto 0);
        sampler_rx      : in     vl_logic
    );
end lab7part3_vlg_check_tst;
