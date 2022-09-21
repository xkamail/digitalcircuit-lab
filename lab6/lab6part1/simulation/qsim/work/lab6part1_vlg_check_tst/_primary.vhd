library verilog;
use verilog.vl_types.all;
entity lab6part1_vlg_check_tst is
    port(
        c_out           : in     vl_logic;
        led             : in     vl_logic_vector(7 downto 0);
        oflow           : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end lab6part1_vlg_check_tst;
