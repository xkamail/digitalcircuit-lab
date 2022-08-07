library verilog;
use verilog.vl_types.all;
entity lab1part1 is
    port(
        sw              : in     vl_logic_vector(9 downto 0);
        ledr            : out    vl_logic_vector(9 downto 0)
    );
end lab1part1;
