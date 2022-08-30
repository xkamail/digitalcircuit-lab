library verilog;
use verilog.vl_types.all;
entity lab5part1 is
    port(
        key0            : in     vl_logic;
        reset           : in     vl_logic;
        ro              : out    vl_logic;
        Q               : out    vl_logic_vector(4 downto 0)
    );
end lab5part1;
