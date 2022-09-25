library verilog;
use verilog.vl_types.all;
entity lab6part5_vlg_check_tst is
    port(
        debug           : in     vl_logic_vector(15 downto 0);
        hex0            : in     vl_logic_vector(0 to 6);
        hex1            : in     vl_logic_vector(0 to 6);
        hex2            : in     vl_logic_vector(0 to 6);
        hex3            : in     vl_logic_vector(0 to 6);
        ledr            : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end lab6part5_vlg_check_tst;
