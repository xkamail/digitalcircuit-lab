library verilog;
use verilog.vl_types.all;
entity lab4part5_vlg_check_tst is
    port(
        hex0            : in     vl_logic_vector(0 to 6);
        hex1            : in     vl_logic_vector(0 to 6);
        hex2            : in     vl_logic_vector(0 to 6);
        hex3            : in     vl_logic_vector(0 to 6);
        hex4            : in     vl_logic_vector(0 to 6);
        hex5            : in     vl_logic_vector(0 to 6);
        ledr            : in     vl_logic_vector(9 downto 0);
        sampler_rx      : in     vl_logic
    );
end lab4part5_vlg_check_tst;