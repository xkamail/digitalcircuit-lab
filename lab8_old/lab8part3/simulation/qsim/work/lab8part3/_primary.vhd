library verilog;
use verilog.vl_types.all;
entity lab8part3 is
    port(
        sw              : in     vl_logic_vector(9 downto 0);
        key0            : in     vl_logic;
        hex5            : out    vl_logic_vector(0 to 6);
        hex4            : out    vl_logic_vector(0 to 6);
        hex2            : out    vl_logic_vector(0 to 6);
        hex0            : out    vl_logic_vector(0 to 6)
    );
end lab8part3;
