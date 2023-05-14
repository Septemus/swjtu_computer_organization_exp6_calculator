library verilog;
use verilog.vl_types.all;
entity exp6_vlg_sample_tst is
    port(
        cin             : in     vl_logic;
        clk             : in     vl_logic;
        cr              : in     vl_logic_vector(4 downto 0);
        flag            : in     vl_logic;
        keyout          : in     vl_logic_vector(7 downto 0);
        M               : in     vl_logic_vector(1 downto 0);
        pc_clr          : in     vl_logic;
        RA              : in     vl_logic_vector(1 downto 0);
        rd              : in     vl_logic;
        S               : in     vl_logic_vector(2 downto 0);
        switch_buttons  : in     vl_logic_vector(2 downto 0);
        wr              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end exp6_vlg_sample_tst;
