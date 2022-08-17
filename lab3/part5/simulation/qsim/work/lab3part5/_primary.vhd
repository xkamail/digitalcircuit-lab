library verilog;
use verilog.vl_types.all;
entity lab3part5 is
    port(
        m               : in     vl_logic;
        sw              : in     vl_logic_vector(7 downto 0);
        hex5            : out    vl_logic_vector(0 to 6);
        hex4            : out    vl_logic_vector(0 to 6);
        hex3            : out    vl_logic_vector(0 to 6);
        hex2            : out    vl_logic_vector(0 to 6);
        hex1            : out    vl_logic_vector(0 to 6);
        hex0            : out    vl_logic_vector(0 to 6);
        debug_a         : out    vl_logic_vector(7 downto 0);
        debug_b         : out    vl_logic_vector(7 downto 0);
        debug_s         : out    vl_logic_vector(7 downto 0);
        ledr            : out    vl_logic
    );
end lab3part5;
