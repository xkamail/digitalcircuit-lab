library verilog;
use verilog.vl_types.all;
entity lab2part1 is
    port(
        sw1             : in     vl_logic_vector(3 downto 0);
        sw2             : in     vl_logic_vector(3 downto 0);
        hex0            : out    vl_logic_vector(0 to 6);
        hex1            : out    vl_logic_vector(0 to 6)
    );
end lab2part1;
