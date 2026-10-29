`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2021 18:22:34
// Design Name: 
// Module Name: TwoMultiplexer
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


module TwoMultiplexer #(
    parameter WIDTH = 32
)
(
    input wire select_in,
    input wire [WIDTH-1:0] input_0,
    input wire [WIDTH-1:0] input_1,
    output reg [WIDTH-1:0] out_port
);
   
    always @(*)
    begin
        if(select_in == 1'b1)
        begin
            out_port = input_1;
        end else begin
            out_port = input_0;

        end
    end 

endmodule
