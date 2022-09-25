library verilog;
use verilog.vl_types.all;
entity lab6part2 is
    port(
        sw              : in     vl_logic_vector(7 downto 0);
        sw8             : in     vl_logic;
        key1            : in     vl_logic;
        key0            : in     vl_logic;
        led             : out    vl_logic_vector(7 downto 0);
        ledr9           : out    vl_logic;
        ledr8           : out    vl_logic;
        hex3            : out    vl_logic_vector(0 to 6);
        hex2            : out    vl_logic_vector(0 to 6);
        hex1            : out    vl_logic_vector(0 to 6);
        hex0            : out    vl_logic_vector(0 to 6)
    );
end lab6part2;
