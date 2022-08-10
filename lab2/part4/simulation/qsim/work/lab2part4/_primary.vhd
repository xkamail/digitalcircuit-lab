library verilog;
use verilog.vl_types.all;
entity lab2part4 is
    port(
        x               : in     vl_logic_vector(3 downto 0);
        y               : in     vl_logic_vector(3 downto 0);
        c_in            : in     vl_logic;
        led9            : out    vl_logic;
        hex1            : out    vl_logic_vector(0 to 6);
        hex0            : out    vl_logic_vector(0 to 6)
    );
end lab2part4;
