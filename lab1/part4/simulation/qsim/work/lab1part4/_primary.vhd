library verilog;
use verilog.vl_types.all;
entity lab1part4 is
    port(
        c0              : in     vl_logic;
        c1              : in     vl_logic;
        hex             : out    vl_logic_vector(0 to 6)
    );
end lab1part4;
