library verilog;
use verilog.vl_types.all;
entity uart_tx is
    generic(
        DWIDTH          : integer := 8
    );
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        p_data          : in     vl_logic_vector;
        data_valid      : in     vl_logic;
        parity_en       : in     vl_logic;
        parity_type     : in     vl_logic;
        s_data          : out    vl_logic;
        busy            : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DWIDTH : constant is 1;
end uart_tx;
