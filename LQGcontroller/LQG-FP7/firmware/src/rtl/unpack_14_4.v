`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/14/2025 12:56:51 PM
// Design Name: 
// Module Name: unpack_14_4
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


module unpack_14_4 (
    input [55:0] in,
    output [3:0] out_0,
    output [3:0] out_1,
    output [3:0] out_2,
    output [3:0] out_3,
    output [3:0] out_4,
    output [3:0] out_5,
    output [3:0] out_6,
    output [3:0] out_7,
    output [3:0] out_8,
    output [3:0] out_9,
    output [3:0] out_10,
    output [3:0] out_11,
    output [3:0] out_12,
    output [3:0] out_13
);
    assign out_0 = in[3:0];
    assign out_1 = in[7:4];
    assign out_2 = in[11:8];
    assign out_3 = in[15:12];
    assign out_4 = in[19:16];
    assign out_5 = in[23:20];
    assign out_6 = in[27:24];
    assign out_7 = in[31:28];
    assign out_8 = in[35:32];
    assign out_9 = in[39:36];
    assign out_10 = in[43:40];
    assign out_11 = in[47:44];
    assign out_12 = in[51:48];
    assign out_13 = in[55:52];
endmodule

