library verilog;
use verilog.vl_types.all;
entity lab7part4_vlg_check_tst is
    port(
        led             : in     vl_logic_vector(2 downto 0);
        ledr            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end lab7part4_vlg_check_tst;
