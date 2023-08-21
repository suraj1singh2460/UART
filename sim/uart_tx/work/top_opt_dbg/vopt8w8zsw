library verilog;
use verilog.vl_types.all;
entity tx_fsm is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        valid_data      : in     vl_logic;
        parity_en       : in     vl_logic;
        ser_done        : in     vl_logic;
        ser_en          : out    vl_logic;
        mux_sel         : out    vl_logic_vector(2 downto 0);
        busy            : out    vl_logic
    );
end tx_fsm;
