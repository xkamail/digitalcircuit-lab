library verilog;
use verilog.vl_types.all;
entity lab4part1 is
    port(
        enable          : in     vl_logic;
        clear           : in     vl_logic;
        key0            : in     vl_logic;
        debug           : out    vl_logic_vector(7 downto 0);
        hex0            : out    vl_logic_vector(0 to 6);
        hex1            : out    vl_logic_vector(0 to 6)
    );
end lab4part1;
