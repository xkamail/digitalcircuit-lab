library verilog;
use verilog.vl_types.all;
entity lab4part4 is
    port(
        sw              : in     vl_logic_vector(9 downto 0);
        ledr            : out    vl_logic_vector(9 downto 0);
        clock50         : in     vl_logic;
        hex2            : out    vl_logic_vector(0 to 6);
        hex1            : out    vl_logic_vector(0 to 6);
        hex0            : out    vl_logic_vector(0 to 6)
    );
end lab4part4;
