library verilog;
use verilog.vl_types.all;
entity exp6_vlg_check_tst is
    port(
        exceed          : in     vl_logic;
        PC              : in     vl_logic_vector(7 downto 0);
        R0              : in     vl_logic_vector(7 downto 0);
        R1              : in     vl_logic_vector(7 downto 0);
        R2              : in     vl_logic_vector(7 downto 0);
        R3              : in     vl_logic_vector(7 downto 0);
        res_alu         : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end exp6_vlg_check_tst;
