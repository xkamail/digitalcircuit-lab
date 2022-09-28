library verilog;
use verilog.vl_types.all;
entity lab7part2 is
    port(
        sw1             : in     vl_logic;
        key0            : in     vl_logic;
        sw0             : in     vl_logic;
        ledr            : out    vl_logic_vector(9 downto 0)
    );
end lab7part2;
