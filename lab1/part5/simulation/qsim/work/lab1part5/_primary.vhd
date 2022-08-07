library verilog;
use verilog.vl_types.all;
entity lab1part5 is
    port(
        sw              : in     vl_logic_vector(9 downto 0);
        ledr            : out    vl_logic_vector(9 downto 0);
        hex0            : out    vl_logic_vector(0 to 6);
        hex1            : out    vl_logic_vector(0 to 6);
        hex2            : out    vl_logic_vector(0 to 6)
    );
end lab1part5;
