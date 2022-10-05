library verilog;
use verilog.vl_types.all;
entity lab8part1 is
    port(
        addr            : in     vl_logic_vector(4 downto 0);
        clk             : in     vl_logic;
        data            : in     vl_logic_vector(3 downto 0);
        w               : in     vl_logic;
        v               : out    vl_logic_vector(3 downto 0)
    );
end lab8part1;
