library verilog;
use verilog.vl_types.all;
entity lab2part6 is
    port(
        t0              : in     vl_logic_vector(5 downto 0);
        debug_s0        : out    vl_logic_vector(3 downto 0);
        debug_s1        : out    vl_logic_vector(3 downto 0);
        hex1            : out    vl_logic_vector(0 to 6);
        hex0            : out    vl_logic_vector(0 to 6)
    );
end lab2part6;
