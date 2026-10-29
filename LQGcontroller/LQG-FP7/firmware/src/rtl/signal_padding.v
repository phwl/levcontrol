`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.10.2021 20:17:05
// Design Name: 
// Module Name: signal_padding
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module signal_padding #
    (
        parameter DATA_WIDTH_IN = 16,
        parameter DATA_WIDTH_OUT = 32
    )
    (
    input wire [DATA_WIDTH_IN-1:0] data_in,
    output wire [DATA_WIDTH_OUT-1:0] data_out
    );
    //localparam PADDING = ;
    
    assign data_out = {{(DATA_WIDTH_OUT-DATA_WIDTH_IN){data_in[DATA_WIDTH_IN-1]}}, data_in[(DATA_WIDTH_IN-1):0]};
endmodule
