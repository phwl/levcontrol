`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.04.2023 11:05:34
// Design Name: 
// Module Name: tvalid_generator
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


module tvalid_generator #
  (
    parameter integer CNTR_WIDTH = 16
  )
  (
  	input clk,
  	input [CNTR_WIDTH-1:0] decim_in,
    input run_in,
    output tvalid_out
  );
  
  wire comp_wire;
  reg [CNTR_WIDTH-1:0] int_count_reg = 1'b0;
  
  assign comp_wire = (int_count_reg == decim_in);
  
  always @(posedge clk)
    begin
      if(run_in == 1'b1)
	    begin
          if (~comp_wire) 
            begin
                int_count_reg <= int_count_reg + 1'b1;
            end 
          else 
            begin
                int_count_reg <= 0;
            end
    	end
  	end
  
  	assign tvalid_out = comp_wire;
  
endmodule
