library verilog;
use verilog.vl_types.all;
entity lab4part4_vlg_check_tst is
    port(
        debug           : in     vl_logic;
        hex0            : in     vl_logic_vector(0 to 6);
        hex1            : in     vl_logic_vector(0 to 6);
        hex2            : in     vl_logic_vector(0 to 6);
        ledr            : in     vl_logic_vector(9 downto 0);
        sampler_rx      : in     vl_logic
    );
end lab4part4_vlg_check_tst;
