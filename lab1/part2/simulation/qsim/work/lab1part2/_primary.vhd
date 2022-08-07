library verilog;
use verilog.vl_types.all;
entity lab1part2 is
    port(
        x               : in     vl_logic_vector(3 downto 0);
        y               : in     vl_logic_vector(3 downto 0);
        s               : in     vl_logic;
        m               : out    vl_logic_vector(3 downto 0);
        leds            : out    vl_logic
    );
end lab1part2;
