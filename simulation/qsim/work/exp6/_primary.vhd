library verilog;
use verilog.vl_types.all;
entity exp6 is
    port(
        exceed          : out    vl_logic;
        clk             : in     vl_logic;
        cin             : in     vl_logic;
        flag            : in     vl_logic;
        cr              : in     vl_logic_vector(4 downto 0);
        PC              : out    vl_logic_vector(7 downto 0);
        wr              : in     vl_logic;
        rd              : in     vl_logic;
        pc_clr          : in     vl_logic;
        keyout          : in     vl_logic_vector(7 downto 0);
        M               : in     vl_logic_vector(1 downto 0);
        RA              : in     vl_logic_vector(1 downto 0);
        res_alu         : out    vl_logic_vector(7 downto 0);
        R0              : out    vl_logic_vector(7 downto 0);
        R1              : out    vl_logic_vector(7 downto 0);
        R2              : out    vl_logic_vector(7 downto 0);
        R3              : out    vl_logic_vector(7 downto 0);
        S               : in     vl_logic_vector(2 downto 0);
        switch_buttons  : in     vl_logic_vector(2 downto 0)
    );
end exp6;
