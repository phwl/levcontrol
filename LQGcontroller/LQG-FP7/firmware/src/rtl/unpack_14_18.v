`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/14/2025 12:56:23 PM
// Design Name: 
// Module Name: unpack_14_18
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


module unpack_14_18 (
    input [251:0] in,
    output [17:0] out_0,
    output [17:0] out_1,
    output [17:0] out_2,
    output [17:0] out_3,
    output [17:0] out_4,
    output [17:0] out_5,
    output [17:0] out_6,
    output [17:0] out_7,
    output [17:0] out_8,
    output [17:0] out_9,
    output [17:0] out_10,
    output [17:0] out_11,
    output [17:0] out_12,
    output [17:0] out_13
);
    assign out_0 = in[17:0];
    assign out_1 = in[35:18];
    assign out_2 = in[53:36];
    assign out_3 = in[71:54];
    assign out_4 = in[89:72];
    assign out_5 = in[107:90];
    assign out_6 = in[125:108];
    assign out_7 = in[143:126];
    assign out_8 = in[161:144];
    assign out_9 = in[179:162];
    assign out_10 = in[197:180];
    assign out_11 = in[215:198];
    assign out_12 = in[233:216];
    assign out_13 = in[251:234];
endmodule

