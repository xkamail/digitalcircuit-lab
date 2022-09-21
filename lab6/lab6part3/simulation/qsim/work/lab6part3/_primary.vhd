library verilog;
use verilog.vl_types.all;
entity lab6part3 is
    port(
        sw              : in     vl_logic_vector(7 downto 0);
        hex5            : out    vl_logic_vector(0 to 6);
        hex4            : out    vl_logic_vector(0 to 6);
        hex2            : out    vl_logic_vector(0 to 6);
        hex0            : out    vl_logic_vector(0 to 6)
    );
end lab6part3;
