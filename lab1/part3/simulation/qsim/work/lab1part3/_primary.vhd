library verilog;
use verilog.vl_types.all;
entity lab1part3 is
    port(
        u               : in     vl_logic_vector(1 downto 0);
        v               : in     vl_logic_vector(1 downto 0);
        w               : in     vl_logic_vector(1 downto 0);
        x               : in     vl_logic_vector(1 downto 0);
        s1              : in     vl_logic;
        s0              : in     vl_logic;
        m               : out    vl_logic_vector(1 downto 0)
    );
end lab1part3;
