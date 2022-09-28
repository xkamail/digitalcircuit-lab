library verilog;
use verilog.vl_types.all;
entity shift_reg is
    port(
        s_in            : in     vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        en              : in     vl_logic;
        reg_out         : out    vl_logic_vector(3 downto 0)
    );
end shift_reg;
