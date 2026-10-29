
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.04.2023 11:07:33
// Design Name: 
// Module Name: tb_tvalid_gen
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
`timescale 1ns / 1ps

module tb_valid_gen();
  reg clk;
  reg run_src;
  reg [15:0] decim_src;
  wire valid_check;
  
  tvalid_generator #(.CNTR_WIDTH(16)) DUT(
    .clk(clk),
    .decim_in(decim_src),
    .run_in(run_src),
    .tvalid_out(valid_check)
  );
  
  initial begin
    clk = 1'b0;
    forever #1 clk = ~clk;
  end
  
  initial 
  begin
    #10
    decim_src = 16'd3;
    
    #5
    run_src = 1;
    
    #20
    run_src = 0;
    #5 
    run_src = 1;
    
    #200
    run_src = 0;
  end
  

endmodule
