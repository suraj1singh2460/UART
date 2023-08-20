module uart #(parameter DWIDTH =8, PWIDTH =6)(clk, rst, p_data_tx, data_valid_tx, parity_en_tx, parity_type_tx, s_data_rx, parity_type_rx, parity_en_rx, prescale_rx, s_data_tx, busy_tx, p_data_rx, data_valid_rx);
    input clk, rst;
    input [DWIDTH-1:0]p_data_tx;    //transmitter input
    input data_valid_tx;
    input parity_en_tx, parity_type_tx;

    input s_data_rx;                //receiver input
    input parity_type_rx, parity_en_rx; 
    input [PWIDTH-1:0]prescale_rx;

    output s_data_tx;               //transmitter output
    output busy_tx;
    
    output [DWIDTH-1:0]p_data_rx;   //receiver output
    output data_valid_rx; 

    uart_tx #(DWIDTH)tx(
            .clk(clk), 
            .rst(rst),
            .p_data(p_data_tx), 
            .data_valid(data_valid_tx), 
            .parity_en(parity_en_tx),
            .parity_type(parity_type_tx), 
            .s_data(s_data_tx),
            .busy(busy_tx)
    );

    uart_rx #(DWIDTH, PWIDTH)rx(
            .clk(clk), 
            .rst(rst),
            .s_data(s_data_rx), 
            .parity_type(parity_type_rx), 
            .parity_en(parity_en_rx), 
            .prescale(prescale_rx),
            .p_data(p_data_rx),
            .data_valid(data_valid_rx)
    );
endmodule