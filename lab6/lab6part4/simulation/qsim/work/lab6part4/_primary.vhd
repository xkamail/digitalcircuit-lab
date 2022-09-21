library verilog;
use verilog.vl_types.all;
entity lab6part4 is
    port(
        sw              : in     vl_logic_vector(9 downto 0);
        key0            : in     vl_logic;
        key1            : in     vl_logic;
        ledr            : out    vl_logic_vector(7 downto 0);
        hex3            : out    vl_logic_vector(0 to 6);
        hex2            : out    vl_logic_vector(0 to 6);
        hex1            : out    vl_logic_vector(0 to 6);
        hex0            : out    vl_logic_vector(0 to 6)
    );
end lab6part4;
