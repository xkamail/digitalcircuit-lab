library verilog;
use verilog.vl_types.all;
entity lab6part1 is
    port(
        sw              : in     vl_logic_vector(7 downto 0);
        clock           : in     vl_logic;
        key0            : in     vl_logic;
        led             : out    vl_logic_vector(7 downto 0);
        oflow           : out    vl_logic;
        c_out           : out    vl_logic
    );
end lab6part1;
