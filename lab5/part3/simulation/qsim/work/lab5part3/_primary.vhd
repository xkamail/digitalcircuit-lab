library verilog;
use verilog.vl_types.all;
entity lab5part3 is
    port(
        sw              : in     vl_logic_vector(7 downto 0);
        clock50         : in     vl_logic;
        key0            : in     vl_logic;
        key1            : in     vl_logic;
        key2            : in     vl_logic;
        hex0            : out    vl_logic_vector(0 to 6);
        hex1            : out    vl_logic_vector(0 to 6);
        hex2            : out    vl_logic_vector(0 to 6);
        hex3            : out    vl_logic_vector(0 to 6);
        hex4            : out    vl_logic_vector(0 to 6);
        hex5            : out    vl_logic_vector(0 to 6)
    );
end lab5part3;
