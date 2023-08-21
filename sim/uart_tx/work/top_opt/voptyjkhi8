library verilog;
use verilog.vl_types.all;
entity parity_calc is
    generic(
        DWIDTH          : integer := 8
    );
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        data            : in     vl_logic_vector;
        parity_type     : in     vl_logic;
        parity_bit      : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DWIDTH : constant is 1;
end parity_calc;
