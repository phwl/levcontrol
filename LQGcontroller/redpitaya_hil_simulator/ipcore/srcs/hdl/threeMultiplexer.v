`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2021 18:22:34
// Design Name: 
// Module Name: ThreeMultiplexer
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


module ThreeMultiplexer #(
    parameter WIDTH = 32
)
(
    input wire [1:0] select_in,
    input wire [WIDTH-1:0] input_0,
    input wire [WIDTH-1:0] input_1,
    input wire [WIDTH-1:0] input_2,
    input wire [WIDTH-1:0] input_3,
    output reg [WIDTH-1:0] out_port
);
   
    always @(*)
    begin
        case(select_in)
            2'd0    :   out_port = input_0;
            2'd1    :   out_port = input_1;
            2'd2    :   out_port = input_2;
            2'd3    :   out_port = input_3;
            default :   out_port = input_0;
        endcase   
    end  
endmodule
