library verilog;
use verilog.vl_types.all;
entity lab5part2 is
    port(
        clock50         : in     vl_logic;
        key0            : in     vl_logic;
        debug1          : out    vl_logic_vector(3 downto 0);
        debug2          : out    vl_logic_vector(3 downto 0);
        debug3          : out    vl_logic_vector(3 downto 0);
        r1              : out    vl_logic;
        r2              : out    vl_logic;
        hex0            : out    vl_logic_vector(0 to 6);
        hex1            : out    vl_logic_vector(0 to 6);
        hex2            : out    vl_logic_vector(0 to 6)
    );
end lab5part2;
