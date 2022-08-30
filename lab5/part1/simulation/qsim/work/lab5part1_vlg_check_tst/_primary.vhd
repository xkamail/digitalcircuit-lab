library verilog;
use verilog.vl_types.all;
entity lab5part1_vlg_check_tst is
    port(
        Q               : in     vl_logic_vector(4 downto 0);
        ro              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end lab5part1_vlg_check_tst;
