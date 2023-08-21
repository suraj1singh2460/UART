library verilog;
use verilog.vl_types.all;
entity uart_tx_intf is
    generic(
        DWIDTH          : integer := 8
    );
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DWIDTH : constant is 1;
end uart_tx_intf;
