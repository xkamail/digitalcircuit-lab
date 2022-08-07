library verilog;
use verilog.vl_types.all;
entity lab1part2_vlg_check_tst is
    port(
        leds            : in     vl_logic;
        m               : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end lab1part2_vlg_check_tst;
