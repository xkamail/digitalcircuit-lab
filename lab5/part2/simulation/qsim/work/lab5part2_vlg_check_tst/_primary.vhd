library verilog;
use verilog.vl_types.all;
entity lab5part2_vlg_check_tst is
    port(
        debug1          : in     vl_logic_vector(3 downto 0);
        debug2          : in     vl_logic_vector(3 downto 0);
        debug3          : in     vl_logic_vector(3 downto 0);
        hex0            : in     vl_logic_vector(0 to 6);
        hex1            : in     vl_logic_vector(0 to 6);
        hex2            : in     vl_logic_vector(0 to 6);
        r1              : in     vl_logic;
        r2              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end lab5part2_vlg_check_tst;
