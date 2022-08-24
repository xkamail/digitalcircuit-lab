library verilog;
use verilog.vl_types.all;
entity lab4part3 is
    port(
        clock50         : in     vl_logic;
        debug           : out    vl_logic_vector(3 downto 0);
        b               : out    vl_logic_vector(3 downto 0);
        hex0            : out    vl_logic_vector(0 to 6)
    );
end lab4part3;
