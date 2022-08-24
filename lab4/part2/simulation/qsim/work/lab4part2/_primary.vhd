library verilog;
use verilog.vl_types.all;
entity lab4part2 is
    port(
        enable          : in     vl_logic;
        clear           : in     vl_logic;
        key0            : in     vl_logic;
        debug           : out    vl_logic_vector(15 downto 0);
        hex3            : out    vl_logic_vector(0 to 6);
        hex2            : out    vl_logic_vector(0 to 6);
        hex1            : out    vl_logic_vector(0 to 6);
        hex0            : out    vl_logic_vector(0 to 6)
    );
end lab4part2;
