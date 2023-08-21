library verilog;
use verilog.vl_types.all;
entity serializer is
    generic(
        DWIDTH          : integer := 8
    );
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        p_data          : in     vl_logic_vector;
        ser_en          : in     vl_logic;
        s_data          : out    vl_logic;
        ser_done        : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DWIDTH : constant is 1;
end serializer;
