library verilog;
use verilog.vl_types.all;
entity lab7part4 is
    port(
        sw              : in     vl_logic_vector(2 downto 0);
        key1            : in     vl_logic;
        key0            : in     vl_logic;
        clk50           : in     vl_logic;
        led             : out    vl_logic_vector(2 downto 0);
        ledr            : out    vl_logic
    );
end lab7part4;
