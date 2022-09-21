library verilog;
use verilog.vl_types.all;
entity lab6part4_vlg_check_tst is
    port(
        hex0            : in     vl_logic_vector(0 to 6);
        hex1            : in     vl_logic_vector(0 to 6);
        hex2            : in     vl_logic_vector(0 to 6);
        hex3            : in     vl_logic_vector(0 to 6);
        ledr            : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end lab6part4_vlg_check_tst;
