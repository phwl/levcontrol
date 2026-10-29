//-----------------------------------------------------------------
// Vitis Model Composer version 2024.2 Verilog source file.
//
// Copyright(C) 1995-2022 by Xilinx, Inc. All rights reserved.
// Copyright(C) 2022-2024 by Advanced Micro Devices, Inc. All rights reserved.
//
// This text/file contains proprietary, confidential information of Xilinx,
// Inc., is distributed under license from Xilinx, Inc., and may be used,
// copied and/or disclosed only pursuant to the terms of a valid license
// agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
// this text/file solely for design, simulation, implementation and
// creation of design files limited to Xilinx devices or technologies.
// Use with non-Xilinx devices or technologies is expressly prohibited
// and immediately terminates your license unless covered by a separate
// agreement.
//
// Xilinx is providing this design, code, or information "as is" solely
// for use in developing programs and solutions for Xilinx devices.  By
// providing this design, code, or information as one possible
// implementation of this feature, application or standard, Xilinx is
// making no representation that this implementation is free from any
// claims of infringement.  You are responsible for obtaining any rights
// you may require for your implementation.  Xilinx expressly disclaims
// any warranty whatsoever with respect to the adequacy of the
// implementation, including but not limited to warranties of
// merchantability or fitness for a particular purpose.
//
// Xilinx products are not intended for use in life support appliances,
// devices, or systems.  Use in such applications is expressly prohibited.
//
// Any modifications that are made to the source code are done at the user's
// sole risk and will be unsupported.
//
// This copyright and support notice must be retained as part of this
// text at all times.
//-----------------------------------------------------------------

`include "conv_pkg.v"
`timescale 1 ns / 10 ps
module fpga_lqg_axi_xlAsynRegister (d, rst, en, d_ce, d_clk, q_ce, q_clk, q);
   parameter d_width = 5;
   parameter init_value = 'b0;

   input [d_width-1:0] d;
   input rst, en, d_ce, d_clk, q_ce, q_clk;
   output [d_width-1:0] q;

   wire internal_d_clr, internal_d_ce;
   wire internal_q_clr, internal_q_ce;
   wire[d_width-1:0] d1_net, d2_net, d3_net;

   assign internal_d_clr = rst & d_ce;
   assign internal_d_ce  = en  & d_ce;
   assign internal_q_clr = 'b0 & q_ce;
   assign internal_q_ce  = 'b1 & q_ce;

   synth_reg_w_init #(.width(d_width),
                      .init_index(2),
                      .init_value(init_value),
                      .latency(1))
   synth_reg_inst_0(.i(d),
                  .ce(internal_d_ce),
                  .clr(internal_d_clr),
                  .clk(d_clk),
                  .o(d1_net));

   synth_reg_w_init #(.width(d_width),
                      .init_index(2),
                      .init_value(init_value),
                      .latency(1))
   synth_reg_inst_1(.i(d1_net),
                  .ce(internal_q_ce),
                  .clr(internal_q_clr),
                  .clk(q_clk),
                  .o(d2_net));

   synth_reg_w_init #(.width(d_width),
                      .init_index(2),
                      .init_value(init_value),
                      .latency(1))
   synth_reg_inst_2(.i(d2_net),
                  .ce(internal_q_ce),
                  .clr(internal_q_clr),
                  .clk(q_clk),
                  .o(d3_net));

   synth_reg_w_init #(.width(d_width),
                      .init_index(2),
                      .init_value(init_value),
                      .latency(1))
   synth_reg_inst_3(.i(d3_net),
                  .ce(internal_q_ce),
                  .clr(internal_q_clr),
                  .clk(q_clk),
                  .o(q));
endmodule

`timescale 1 ns / 10 ps


module fpga_lqg_axi_xlconvert (din, clk, ce, clr, en, dout);

//Parameter Definitions
   parameter din_width= 16;
   parameter din_bin_pt= 4;
   parameter din_arith= `xlUnsigned;
   parameter dout_width= 8;
   parameter dout_bin_pt= 2;
   parameter dout_arith= `xlUnsigned;
   parameter en_width = 1;
   parameter en_bin_pt = 0;
   parameter en_arith = `xlUnsigned;
   parameter bool_conversion = 0;
   parameter latency = 0;
   parameter quantization= `xlTruncate;
   parameter overflow= `xlWrap;

//Port Declartions
   input [din_width-1:0] din;
   input clk, ce, clr;
   input [en_width-1:0] en;
   output [dout_width-1:0] dout;

//Wire Declartions
   wire [dout_width-1:0]   result;
   wire internal_ce;
   assign internal_ce = ce & en[0];

generate
 if (bool_conversion == 1)
    begin:bool_converion_generate
       assign result = din;
    end
 else
    begin:std_conversion
       convert_type #(din_width,
                      din_bin_pt,
                      din_arith,
		              dout_width,
                      dout_bin_pt,
                      dout_arith,
                      quantization,
                      overflow)
        conv_udp (.inp(din), .res(result));
    end
endgenerate

generate
if (latency > 0)
     begin:latency_test
	synth_reg # (dout_width, latency)
	  reg1 (
	       .i(result),
	       .ce(internal_ce),
	       .clr(clr),
	       .clk(clk),
	       .o(dout));
     end
else
     begin:latency0
	assign dout = result;
     end
endgenerate

endmodule

`timescale 1 ns / 10 ps
module sysgen_delay_214ecd5fb3 (
  input [(175 - 1):0] d,
  input [(1 - 1):0] rst,
  output [(175 - 1):0] q,
  input clk,
  input ce,
  input clr);
  wire [(175 - 1):0] d_1_22;
  wire rst_1_29;
  wire [(175 - 1):0] op_mem_0_8_24_next;
  reg [(175 - 1):0] op_mem_0_8_24 = 175'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
  wire op_mem_0_8_24_rst;
  localparam [(1 - 1):0] const_value = 1'b1;
  localparam [(175 - 1):0] const_value_x_000000 = 175'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
  reg [(175 - 1):0] op_mem_0_join_10_5;
  reg op_mem_0_join_10_5_rst;
  assign d_1_22 = d;
  assign rst_1_29 = rst;
  always @(posedge clk)
    begin:proc_op_mem_0_8_24
      if (((ce == 1'b1) && (op_mem_0_8_24_rst == 1'b1)))
        begin
          op_mem_0_8_24 <= 175'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
        end
      else if ((ce == 1'b1))
        begin
          op_mem_0_8_24 <= op_mem_0_8_24_next;
        end
    end
  always @(d_1_22 or rst_1_29)
    begin:proc_if_10_5
      if (rst_1_29)
        begin
          op_mem_0_join_10_5_rst = 1'b1;
        end
      else 
        begin
          op_mem_0_join_10_5_rst = 1'b0;
        end
      op_mem_0_join_10_5 = d_1_22;
    end
  assign op_mem_0_8_24_next = d_1_22;
  assign op_mem_0_8_24_rst = op_mem_0_join_10_5_rst;
  assign q = op_mem_0_8_24;
endmodule
`timescale 1 ns / 10 ps
module sysgen_logical_739c9129bd (
  input [(8 - 1):0] d0,
  input [(8 - 1):0] d1,
  output [(8 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire [(8 - 1):0] d0_1_24;
  wire [(8 - 1):0] d1_1_27;
  localparam [(8 - 1):0] const_value = 8'b00000000;
  reg [(8 - 1):0] latency_pipe_5_26[0:(1 - 1)];
  initial
    begin
      latency_pipe_5_26[0] = 8'b00000000;
    end
  wire [(8 - 1):0] latency_pipe_5_26_front_din;
  wire [(8 - 1):0] latency_pipe_5_26_back;
  wire latency_pipe_5_26_push_front_pop_back_en;
  wire [(8 - 1):0] fully_2_1_bit;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign latency_pipe_5_26_back = latency_pipe_5_26[0];
  always @(posedge clk)
    begin:proc_latency_pipe_5_26
      integer i;
      if (((ce == 1'b1) && (latency_pipe_5_26_push_front_pop_back_en == 1'b1)))
        begin
          latency_pipe_5_26[0] <= latency_pipe_5_26_front_din;
        end
    end
  assign fully_2_1_bit = d0_1_24 ^ d1_1_27;
  assign latency_pipe_5_26_front_din = fully_2_1_bit;
  assign latency_pipe_5_26_push_front_pop_back_en = 1'b1;
  assign y = latency_pipe_5_26_back;
endmodule
`timescale 1 ns / 10 ps
module sysgen_reinterpret_74f17bf17a (
  input [(25 - 1):0] input_port,
  output [(25 - 1):0] output_port,
  input clk,
  input ce,
  input clr);
  wire signed [(25 - 1):0] input_port_1_40;
  assign input_port_1_40 = input_port;
  assign output_port = input_port_1_40;
endmodule
`timescale 1 ns / 10 ps
module sysgen_reinterpret_b65f09bc7c (
  input [(14 - 1):0] input_port,
  output [(14 - 1):0] output_port,
  input clk,
  input ce,
  input clr);
  wire signed [(14 - 1):0] input_port_1_40;
  assign input_port_1_40 = input_port;
  assign output_port = input_port_1_40;
endmodule
`timescale 1 ns / 10 ps
module sysgen_reinterpret_e18e0698e0 (
  input [(28 - 1):0] input_port,
  output [(28 - 1):0] output_port,
  input clk,
  input ce,
  input clr);
  wire signed [(28 - 1):0] input_port_1_40;
  assign input_port_1_40 = input_port;
  assign output_port = input_port_1_40;
endmodule
`timescale 1 ns / 10 ps
module sysgen_reinterpret_0954554b5b (
  input [(43 - 1):0] input_port,
  output [(43 - 1):0] output_port,
  input clk,
  input ce,
  input clr);
  wire signed [(43 - 1):0] input_port_1_40;
  assign input_port_1_40 = input_port;
  assign output_port = input_port_1_40;
endmodule
`timescale 1 ns / 10 ps
module sysgen_reinterpret_fc49fc24ac (
  input [(301 - 1):0] input_port,
  output [(301 - 1):0] output_port,
  input clk,
  input ce,
  input clr);
  wire [(301 - 1):0] input_port_1_40;
  assign input_port_1_40 = input_port;
  assign output_port = input_port_1_40;
endmodule
`timescale 1 ns / 10 ps

module  fpga_lqg_axi_xlslice  (x, y);

//Parameter Definitions
parameter new_msb= 9;
parameter new_lsb= 1;
parameter x_width= 16;
parameter y_width= 8;

//Port Declartions
input [x_width-1:0] x;
output [y_width-1:0] y;

assign y = x[new_msb:new_lsb];

endmodule
`timescale 1 ns / 10 ps
module sysgen_reinterpret_37187b1f41 (
  input [(43 - 1):0] input_port,
  output [(43 - 1):0] output_port,
  input clk,
  input ce,
  input clr);
  wire [(43 - 1):0] input_port_1_40;
  wire signed [(43 - 1):0] output_port_5_5_force;
  assign input_port_1_40 = input_port;
  assign output_port_5_5_force = input_port_1_40;
  assign output_port = output_port_5_5_force;
endmodule
`timescale 1 ns / 10 ps
module sysgen_reinterpret_61ca92b88e (
  input [(175 - 1):0] input_port,
  output [(175 - 1):0] output_port,
  input clk,
  input ce,
  input clr);
  wire [(175 - 1):0] input_port_1_40;
  assign input_port_1_40 = input_port;
  assign output_port = input_port_1_40;
endmodule
`timescale 1 ns / 10 ps
module sysgen_reinterpret_b399b75fa4 (
  input [(25 - 1):0] input_port,
  output [(25 - 1):0] output_port,
  input clk,
  input ce,
  input clr);
  wire signed [(25 - 1):0] input_port_1_40;
  wire [(25 - 1):0] output_port_5_5_force;
  assign input_port_1_40 = input_port;
  assign output_port_5_5_force = input_port_1_40;
  assign output_port = output_port_5_5_force;
endmodule
`timescale 1 ns / 10 ps
module sysgen_concat_c06fd4d404 (
  input [(25 - 1):0] in0,
  input [(25 - 1):0] in1,
  input [(25 - 1):0] in2,
  input [(25 - 1):0] in3,
  input [(25 - 1):0] in4,
  input [(25 - 1):0] in5,
  input [(25 - 1):0] in6,
  output [(175 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire [(25 - 1):0] in0_1_23;
  wire [(25 - 1):0] in1_1_27;
  wire [(25 - 1):0] in2_1_31;
  wire [(25 - 1):0] in3_1_35;
  wire [(25 - 1):0] in4_1_39;
  wire [(25 - 1):0] in5_1_43;
  wire [(25 - 1):0] in6_1_47;
  wire [(175 - 1):0] y_2_1_concat;
  assign in0_1_23 = in0;
  assign in1_1_27 = in1;
  assign in2_1_31 = in2;
  assign in3_1_35 = in3;
  assign in4_1_39 = in4;
  assign in5_1_43 = in5;
  assign in6_1_47 = in6;
  assign y_2_1_concat = {in0_1_23, in1_1_27, in2_1_31, in3_1_35, in4_1_39, in5_1_43, in6_1_47};
  assign y = y_2_1_concat;
endmodule
`timescale 1 ns / 10 ps
module sysgen_addsub_660b30c429 (
  input [(28 - 1):0] a,
  input [(28 - 1):0] b,
  output [(28 - 1):0] s,
  input clk,
  input ce,
  input clr);
  wire signed [(28 - 1):0] a_17_32;
  wire signed [(28 - 1):0] b_17_35;
  localparam signed [(28 - 1):0] const_value = 28'sb0000000000000000000000000000;
  reg signed [(28 - 1):0] op_mem_91_20[0:(1 - 1)];
  initial
    begin
      op_mem_91_20[0] = 28'b0000000000000000000000000000;
    end
  wire signed [(28 - 1):0] op_mem_91_20_front_din;
  wire signed [(28 - 1):0] op_mem_91_20_back;
  wire op_mem_91_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1'b0;
  reg [(1 - 1):0] cout_mem_92_22[0:(1 - 1)];
  initial
    begin
      cout_mem_92_22[0] = 1'b0;
    end
  wire [(1 - 1):0] cout_mem_92_22_front_din;
  wire [(1 - 1):0] cout_mem_92_22_back;
  wire cout_mem_92_22_push_front_pop_back_en;
  wire [(3 - 1):0] prev_mode_93_22_next;
  wire [(3 - 1):0] prev_mode_93_22;
  wire [(3 - 1):0] prev_mode_93_22_reg_i;
  wire [(3 - 1):0] prev_mode_93_22_reg_o;
  localparam [(1 - 1):0] const_value_x_000001 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000002 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000003 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000004 = 1'b0;
  wire signed [(29 - 1):0] cast_69_18;
  wire signed [(29 - 1):0] cast_69_22;
  wire signed [(29 - 1):0] internal_s_69_5_addsub;
  localparam [(1 - 1):0] const_value_x_000005 = 1'b0;
  wire signed [(28 - 1):0] internal_s_83_3_convert;
  localparam [(1 - 1):0] const_value_x_000006 = 1'b0;
  localparam [(3 - 1):0] const_value_x_000007 = 3'b000;
  assign a_17_32 = a;
  assign b_17_35 = b;
  assign op_mem_91_20_back = op_mem_91_20[0];
  always @(posedge clk)
    begin:proc_op_mem_91_20
      integer i;
      if (((ce == 1'b1) && (op_mem_91_20_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_91_20[0] <= op_mem_91_20_front_din;
        end
    end
  assign cout_mem_92_22_back = cout_mem_92_22[0];
  always @(posedge clk)
    begin:proc_cout_mem_92_22
      integer i_x_000000;
      if (((ce == 1'b1) && (cout_mem_92_22_push_front_pop_back_en == 1'b1)))
        begin
          cout_mem_92_22[0] <= cout_mem_92_22_front_din;
        end
    end
  assign prev_mode_93_22_reg_i = prev_mode_93_22_next;
  assign prev_mode_93_22 = prev_mode_93_22_reg_o;
  defparam prev_mode_93_22_reg_inst.init_index = 2;
  defparam prev_mode_93_22_reg_inst.init_value = 3'b010;
  defparam prev_mode_93_22_reg_inst.latency = 1;
  defparam prev_mode_93_22_reg_inst.width = 3;
  synth_reg_w_init prev_mode_93_22_reg_inst(.ce(ce), .clk(clk), .clr(clr), .i(prev_mode_93_22_reg_i), .o(prev_mode_93_22_reg_o));
  assign cast_69_18 = {{1{a_17_32[27]}}, a_17_32[27:0]};
  assign cast_69_22 = {{1{b_17_35[27]}}, b_17_35[27:0]};
  assign internal_s_69_5_addsub = cast_69_18 + cast_69_22;
  defparam convert_internal_s_83_3_convert.new_arith = `xlSigned;
  defparam convert_internal_s_83_3_convert.new_bin_pt = 22;
  defparam convert_internal_s_83_3_convert.new_width = 28;
  defparam convert_internal_s_83_3_convert.old_arith = `xlSigned;
  defparam convert_internal_s_83_3_convert.old_bin_pt = 22;
  defparam convert_internal_s_83_3_convert.old_width = 29;
  defparam convert_internal_s_83_3_convert.overflow = `xlSaturate;
  defparam convert_internal_s_83_3_convert.quantization = `xlTruncate;
  convert_type convert_internal_s_83_3_convert(.inp(internal_s_69_5_addsub), .res(internal_s_83_3_convert));
  assign op_mem_91_20_push_front_pop_back_en = 1'b0;
  assign cout_mem_92_22_push_front_pop_back_en = 1'b0;
  assign prev_mode_93_22_next = const_value_x_000007;
  assign s = internal_s_83_3_convert;
endmodule
`timescale 1 ns / 10 ps
module sysgen_addsub_784db07fc7 (
  input [(14 - 1):0] a,
  input [(14 - 1):0] b,
  output [(14 - 1):0] s,
  input clk,
  input ce,
  input clr);
  wire signed [(14 - 1):0] a_17_32;
  wire signed [(14 - 1):0] b_17_35;
  localparam signed [(14 - 1):0] const_value = 14'sb00000000000000;
  reg signed [(14 - 1):0] op_mem_91_20[0:(1 - 1)];
  initial
    begin
      op_mem_91_20[0] = 14'b00000000000000;
    end
  wire signed [(14 - 1):0] op_mem_91_20_front_din;
  wire signed [(14 - 1):0] op_mem_91_20_back;
  wire op_mem_91_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1'b0;
  reg [(1 - 1):0] cout_mem_92_22[0:(1 - 1)];
  initial
    begin
      cout_mem_92_22[0] = 1'b0;
    end
  wire [(1 - 1):0] cout_mem_92_22_front_din;
  wire [(1 - 1):0] cout_mem_92_22_back;
  wire cout_mem_92_22_push_front_pop_back_en;
  wire [(3 - 1):0] prev_mode_93_22_next;
  wire [(3 - 1):0] prev_mode_93_22;
  wire [(3 - 1):0] prev_mode_93_22_reg_i;
  wire [(3 - 1):0] prev_mode_93_22_reg_o;
  localparam [(1 - 1):0] const_value_x_000001 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000002 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000003 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000004 = 1'b0;
  wire signed [(15 - 1):0] cast_69_18;
  wire signed [(15 - 1):0] cast_69_22;
  wire signed [(15 - 1):0] internal_s_69_5_addsub;
  localparam [(1 - 1):0] const_value_x_000005 = 1'b0;
  wire signed [(14 - 1):0] internal_s_83_3_convert;
  localparam [(1 - 1):0] const_value_x_000006 = 1'b0;
  localparam [(3 - 1):0] const_value_x_000007 = 3'b000;
  assign a_17_32 = a;
  assign b_17_35 = b;
  assign op_mem_91_20_back = op_mem_91_20[0];
  always @(posedge clk)
    begin:proc_op_mem_91_20
      integer i;
      if (((ce == 1'b1) && (op_mem_91_20_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_91_20[0] <= op_mem_91_20_front_din;
        end
    end
  assign cout_mem_92_22_back = cout_mem_92_22[0];
  always @(posedge clk)
    begin:proc_cout_mem_92_22
      integer i_x_000000;
      if (((ce == 1'b1) && (cout_mem_92_22_push_front_pop_back_en == 1'b1)))
        begin
          cout_mem_92_22[0] <= cout_mem_92_22_front_din;
        end
    end
  assign prev_mode_93_22_reg_i = prev_mode_93_22_next;
  assign prev_mode_93_22 = prev_mode_93_22_reg_o;
  defparam prev_mode_93_22_reg_inst.init_index = 2;
  defparam prev_mode_93_22_reg_inst.init_value = 3'b010;
  defparam prev_mode_93_22_reg_inst.latency = 1;
  defparam prev_mode_93_22_reg_inst.width = 3;
  synth_reg_w_init prev_mode_93_22_reg_inst(.ce(ce), .clk(clk), .clr(clr), .i(prev_mode_93_22_reg_i), .o(prev_mode_93_22_reg_o));
  assign cast_69_18 = {{1{a_17_32[13]}}, a_17_32[13:0]};
  assign cast_69_22 = {{1{b_17_35[13]}}, b_17_35[13:0]};
  assign internal_s_69_5_addsub = cast_69_18 + cast_69_22;
  defparam convert_internal_s_83_3_convert.new_arith = `xlSigned;
  defparam convert_internal_s_83_3_convert.new_bin_pt = 12;
  defparam convert_internal_s_83_3_convert.new_width = 14;
  defparam convert_internal_s_83_3_convert.old_arith = `xlSigned;
  defparam convert_internal_s_83_3_convert.old_bin_pt = 12;
  defparam convert_internal_s_83_3_convert.old_width = 15;
  defparam convert_internal_s_83_3_convert.overflow = `xlSaturate;
  defparam convert_internal_s_83_3_convert.quantization = `xlTruncate;
  convert_type convert_internal_s_83_3_convert(.inp(internal_s_69_5_addsub), .res(internal_s_83_3_convert));
  assign op_mem_91_20_front_din = internal_s_83_3_convert;
  assign op_mem_91_20_push_front_pop_back_en = 1'b1;
  assign cout_mem_92_22_front_din = const_value_x_000006;
  assign cout_mem_92_22_push_front_pop_back_en = 1'b1;
  assign prev_mode_93_22_next = const_value_x_000007;
  assign s = op_mem_91_20_back;
endmodule
`timescale 1 ns / 10 ps
module sysgen_reinterpret_7eccc075dd (
  input [(84 - 1):0] input_port,
  output [(84 - 1):0] output_port,
  input clk,
  input ce,
  input clr);
  wire [(84 - 1):0] input_port_1_40;
  assign input_port_1_40 = input_port;
  assign output_port = input_port_1_40;
endmodule
`timescale 1 ns / 10 ps
module sysgen_reinterpret_8f09a1c7a2 (
  input [(252 - 1):0] input_port,
  output [(252 - 1):0] output_port,
  input clk,
  input ce,
  input clr);
  wire [(252 - 1):0] input_port_1_40;
  assign input_port_1_40 = input_port;
  assign output_port = input_port_1_40;
endmodule
`timescale 1 ns / 10 ps
module sysgen_reinterpret_0e3dc18d80 (
  input [(86 - 1):0] input_port,
  output [(86 - 1):0] output_port,
  input clk,
  input ce,
  input clr);
  wire [(86 - 1):0] input_port_1_40;
  assign input_port_1_40 = input_port;
  assign output_port = input_port_1_40;
endmodule
`timescale 1 ns / 10 ps
/*******************************************************************************

    matmul_shiftfix.v
    =================

    A dynamically generted matrix multiplication module with given fixed point
    data types in combination with manual shifting factors. This implementation
    enables quasi-floating-point scaling of the LHS matrix factors which greatly
    improves the numerical accuracy of this matrix multiplication compared to
    conventional implementations.

    Copyright (c) 2025 J. Berndorfer
    ACIN, Automation and Control Institute, TU Wien
    Gußhausstraße 27-29, 1040 Wien, Austria

    All rights reserved.

*******************************************************************************/

// Matrix Multiplier, fixed point, with shifted scaling.


// -----------------------------------------------------------------------------
// Cast fixpoint datatypes
// -----------------------------------------------------------------------------

`define FIXPT_CAST_INLINE(_name, _IN_WIDTH, _IN_BINPT, _IN_SIGNED, _OUT_WIDTH, _OUT_BINPT, _OUT_SIGNED, _in, _out) \
    fixpt_cast #( \
        .IN_WIDTH(_IN_WIDTH), \
        .IN_BINPT(_IN_BINPT), \
        .IN_SIGNED(_IN_SIGNED), \
        .OUT_WIDTH(_OUT_WIDTH), \
        .OUT_BINPT(_OUT_BINPT), \
        .OUT_SIGNED(_OUT_SIGNED) \
    ) ``_name ( \
        .in(_in), \
        .out(_out) \
    )

module fixpt_cast #(
    parameter IN_WIDTH = 16,
    parameter IN_BINPT = 15,
    parameter IN_SIGNED = 1,
    parameter OUT_WIDTH = 32,
    parameter OUT_BINPT = 15,
    parameter OUT_SIGNED = 1
) (
    input [IN_WIDTH-1:0] in,
    output [OUT_WIDTH-1:0] out
);

localparam IN_INT_WIDTH = IN_WIDTH - IN_BINPT - IN_SIGNED;
localparam OUT_INT_WIDTH = OUT_WIDTH - OUT_BINPT - OUT_SIGNED;

generate

if (IN_SIGNED && OUT_SIGNED) begin
    // If in and out are signed, copy the sign bit
    assign out[OUT_WIDTH-1] = in[IN_WIDTH-1];
end else if (!IN_SIGNED && OUT_SIGNED) begin
    // If only output is signed, sign of output is 0 (positive)
    assign out[OUT_WIDTH-1] = 1'b0;
end

// Fractional part
if (OUT_BINPT > 0) begin
    if (IN_BINPT >= OUT_BINPT) begin
        assign out[OUT_BINPT-1:0] = in[IN_BINPT-1:IN_BINPT-OUT_BINPT];
    end else begin
        // Zero-pad needed.
        assign out[OUT_BINPT-1:0] = {in[IN_BINPT-1:0], {OUT_BINPT-IN_BINPT{1'b0}}};
    end
end

// Integer part.
if (OUT_INT_WIDTH > 0) begin
    if (OUT_INT_WIDTH <= IN_INT_WIDTH) begin
        assign out[OUT_BINPT +: OUT_INT_WIDTH] = in[IN_BINPT +: OUT_INT_WIDTH];
    end else begin
        // Zero-pad on MSBs of output is needed.
        assign out[OUT_BINPT +: OUT_INT_WIDTH] = {{OUT_INT_WIDTH-IN_INT_WIDTH{1'b0}}, in[IN_BINPT +: IN_INT_WIDTH]};
    end
end

endgenerate

endmodule

// -----------------------------------------------------------------------------
// Cast fixpoint datatypes with saturation clamping
// -----------------------------------------------------------------------------

`define FIXPT_CAST_CLAMPED_INLINE(_name, _IN_WIDTH, _IN_BINPT, _IN_SIGNED, _OUT_WIDTH, _OUT_BINPT, _OUT_SIGNED, _in, _out) \
    fixpt_cast_clamped #( \
        .IN_WIDTH(_IN_WIDTH), \
        .IN_BINPT(_IN_BINPT), \
        .IN_SIGNED(_IN_SIGNED), \
        .OUT_WIDTH(_OUT_WIDTH), \
        .OUT_BINPT(_OUT_BINPT), \
        .OUT_SIGNED(_OUT_SIGNED) \
    ) ``_name ( \
        .in(_in), \
        .out(_out) \
    )

module fixpt_cast_clamped #(
    parameter IN_WIDTH = 16,
    parameter IN_BINPT = 15,
    parameter IN_SIGNED = 1,
    parameter OUT_WIDTH = 32,
    parameter OUT_BINPT = 15,
    parameter OUT_SIGNED = 1
) (
    input [IN_WIDTH-1:0] in,
    output reg [OUT_WIDTH-1:0] out
);

localparam integer IN_INT_WIDTH  = IN_WIDTH  - IN_BINPT  - IN_SIGNED;
localparam integer OUT_INT_WIDTH = OUT_WIDTH - OUT_BINPT - OUT_SIGNED;

// Compare everything in a common fixed-point scale
localparam integer COMMON_BINPT   = (IN_BINPT > OUT_BINPT) ? IN_BINPT : OUT_BINPT;
localparam integer IN_ALIGN_SHIFT = COMMON_BINPT - IN_BINPT;
localparam integer OUT_ALIGN_SHIFT= COMMON_BINPT - OUT_BINPT;

// Extra bit for safe signed compare
localparam integer IN_CMP_WIDTH   = IN_WIDTH  + IN_ALIGN_SHIFT  + 1;
localparam integer OUT_CMP_WIDTH  = OUT_WIDTH + OUT_ALIGN_SHIFT + 1;
localparam integer CMP_WIDTH      = (IN_CMP_WIDTH > OUT_CMP_WIDTH) ? IN_CMP_WIDTH : OUT_CMP_WIDTH;

// Raw min/max encodings of the output datatype
localparam [OUT_WIDTH-1:0] OUT_MAX_RAW =
    OUT_SIGNED ? {1'b0, {(OUT_WIDTH-1){1'b1}}}
               : {OUT_WIDTH{1'b1}};

localparam [OUT_WIDTH-1:0] OUT_MIN_RAW =
    OUT_SIGNED ? {1'b1, {(OUT_WIDTH-1){1'b0}}}
               : {OUT_WIDTH{1'b0}};

// Input value, interpreted numerically, aligned to COMMON_BINPT
wire signed [CMP_WIDTH-1:0] in_ext =
    IN_SIGNED
        ? $signed({{(CMP_WIDTH-IN_WIDTH){in[IN_WIDTH-1]}}, in})
        : $signed({{(CMP_WIDTH-IN_WIDTH){1'b0}}, in});

wire signed [CMP_WIDTH-1:0] in_value = in_ext <<< IN_ALIGN_SHIFT;

// Output min/max, interpreted numerically, aligned to COMMON_BINPT
wire signed [CMP_WIDTH-1:0] out_max_ext =
    OUT_SIGNED
        ? $signed({{(CMP_WIDTH-OUT_WIDTH){OUT_MAX_RAW[OUT_WIDTH-1]}}, OUT_MAX_RAW})
        : $signed({{(CMP_WIDTH-OUT_WIDTH){1'b0}}, OUT_MAX_RAW});

wire signed [CMP_WIDTH-1:0] out_min_ext =
    OUT_SIGNED
        ? $signed({{(CMP_WIDTH-OUT_WIDTH){OUT_MIN_RAW[OUT_WIDTH-1]}}, OUT_MIN_RAW})
        : $signed({{(CMP_WIDTH-OUT_WIDTH){1'b0}}, OUT_MIN_RAW});

wire signed [CMP_WIDTH-1:0] out_max_value = out_max_ext <<< OUT_ALIGN_SHIFT;
wire signed [CMP_WIDTH-1:0] out_min_value = out_min_ext <<< OUT_ALIGN_SHIFT;

// Your current "in-range" behavior, unchanged
reg [OUT_WIDTH-1:0] out_nonsat;

always @* begin
    out_nonsat = {OUT_WIDTH{1'b0}};

    // Sign bit handling (kept exactly as in your current code)
    if (IN_SIGNED && OUT_SIGNED) begin
        out_nonsat[OUT_WIDTH-1] = in[IN_WIDTH-1];
    end else if (!IN_SIGNED && OUT_SIGNED) begin
        out_nonsat[OUT_WIDTH-1] = 1'b0;
    end

    // Fractional part
    if (OUT_BINPT > 0) begin
        if (IN_BINPT >= OUT_BINPT) begin
            out_nonsat[OUT_BINPT-1:0] = in[IN_BINPT-1:IN_BINPT-OUT_BINPT];
        end else begin
            if (IN_BINPT > 0)
                out_nonsat[OUT_BINPT-1:0] = {in[IN_BINPT-1:0], {(OUT_BINPT-IN_BINPT){1'b0}}};
            else
                out_nonsat[OUT_BINPT-1:0] = {OUT_BINPT{1'b0}};
        end
    end

    // Integer part
    if (OUT_INT_WIDTH > 0) begin
        if (OUT_INT_WIDTH <= IN_INT_WIDTH) begin
            out_nonsat[OUT_BINPT +: OUT_INT_WIDTH] = in[IN_BINPT +: OUT_INT_WIDTH];
        end else begin
            if (IN_INT_WIDTH > 0)
                out_nonsat[OUT_BINPT +: OUT_INT_WIDTH] =
                    {{(OUT_INT_WIDTH-IN_INT_WIDTH){1'b0}}, in[IN_BINPT +: IN_INT_WIDTH]};
            else
                out_nonsat[OUT_BINPT +: OUT_INT_WIDTH] = {OUT_INT_WIDTH{1'b0}};
        end
    end

    // Saturate only when out of range
    if (in_value > out_max_value)
        out = OUT_MAX_RAW;
    else if (in_value < out_min_value)
        out = OUT_MIN_RAW;
    else
        out = out_nonsat;
end

endmodule

// -----------------------------------------------------------------------------
// Add two fixpoint numbers
// -----------------------------------------------------------------------------

`define FIXPT_ADD_INLINE(_name, _A_WIDTH, _B_WIDTH, _a, _b, _sum) \
    fixpt_adder #( \
        .A_WIDTH(_A_WIDTH), \
        .B_WIDTH(_B_WIDTH) \
    ) ``_name ( \
        .a(_a), \
        .b(_b), \
        .sum(_sum) \
    )

// Wrapper for adding two fixpoint numbers together.
module fixpt_adder #(
    parameter A_WIDTH = 16,
    parameter B_WIDTH = 16,
    localparam O_WIDTH = A_WIDTH > B_WIDTH ? A_WIDTH : B_WIDTH
) (
    input signed [A_WIDTH-1:0] a,
    input signed [B_WIDTH-1:0] b,
    output signed [O_WIDTH-1:0] sum
);

assign sum = a + b;

endmodule

// -----------------------------------------------------------------------------
// Add two fixpoint numbers (with saturation clamping)
// -----------------------------------------------------------------------------

`define FIXPT_ADD_CLAMPED_INLINE(_name, _A_WIDTH, _B_WIDTH, _a, _b, _sum) \
    fixpt_adder_clamped #( \
        .A_WIDTH(_A_WIDTH), \
        .B_WIDTH(_B_WIDTH) \
    ) ``_name ( \
        .a(_a), \
        .b(_b), \
        .sum(_sum) \
    )

module fixpt_adder_clamped #(
    parameter A_WIDTH = 16,
    parameter B_WIDTH = 16,
    localparam O_WIDTH = A_WIDTH > B_WIDTH ? A_WIDTH : B_WIDTH
) (
    input signed [A_WIDTH-1:0] a,
    input signed [B_WIDTH-1:0] b,
    output signed [O_WIDTH-1:0] sum
);

localparam W = (A_WIDTH > B_WIDTH ? A_WIDTH : B_WIDTH) + 1;

wire signed [W-1:0] a_ext = {{W-A_WIDTH{a[A_WIDTH-1]}}, a};
wire signed [W-1:0] b_ext = {{W-B_WIDTH{b[B_WIDTH-1]}}, b};
wire signed [W-1:0] full_sum = a_ext + b_ext;

localparam signed [O_WIDTH-1:0] SAT_MAX = {1'b0, {(O_WIDTH-1){1'b1}}};
localparam signed [O_WIDTH-1:0] SAT_MIN = {1'b1, {(O_WIDTH-1){1'b0}}};

wire signed [W-1:0] SAT_MAX_EXT = {{W-O_WIDTH{SAT_MAX[O_WIDTH-1]}}, SAT_MAX};
wire signed [W-1:0] SAT_MIN_EXT = {{W-O_WIDTH{SAT_MIN[O_WIDTH-1]}}, SAT_MIN};

assign sum = (full_sum > SAT_MAX_EXT) ? SAT_MAX :
             (full_sum < SAT_MIN_EXT) ? SAT_MIN :
             full_sum[O_WIDTH-1:0];

endmodule

// -----------------------------------------------------------------------------
// Multiply two fixpoint numbers
// -----------------------------------------------------------------------------

`define FIXPT_MULTIPLY_INLINE(_name, _A_WIDTH, _B_WIDTH, _a, _b, _prod) \
    fixpt_multiplier #( \
        .A_WIDTH(_A_WIDTH), \
        .B_WIDTH(_B_WIDTH) \
    ) ``_name ( \
        .a(_a), \
        .b(_b), \
        .prod(_prod) \
    )

module fixpt_multiplier #(
    parameter A_WIDTH = 16,
    parameter B_WIDTH = 16,
    parameter O_WIDTH = A_WIDTH+B_WIDTH
) (
    input signed [A_WIDTH-1:0] a,
    input signed [B_WIDTH-1:0] b,
    output signed [O_WIDTH-1:0] prod
);

assign prod = a * b;

endmodule

module arithmetic_shift_bidir #(
    parameter A_WIDTH = 16,
    parameter SHIFT_WIDTH = 5
) (
    input [A_WIDTH-1:0] a,
    input signed [SHIFT_WIDTH-1:0] shift,
    output [A_WIDTH-1:0] shifted
);

wire shift_is_left = shift < 0;
wire [SHIFT_WIDTH-1:0] shift_amt = shift_is_left ? -shift : shift;

wire [A_WIDTH-1:0] shifted_right;
wire [A_WIDTH-1:0] shifted_left;

arithmetic_right_shift #(
    .A_WIDTH(A_WIDTH),
    .SHIFT_WIDTH(SHIFT_WIDTH-1)
) right_shifter (
    .a(a),
    .shift(shift_amt[SHIFT_WIDTH-2:0]),
    .shifted(shifted_right)
);

arithmetic_left_shift_clamped #(
    .A_WIDTH(A_WIDTH),
    .SHIFT_WIDTH(SHIFT_WIDTH-1)
) left_shifter (
    .a(a),
    .shift(shift_amt[SHIFT_WIDTH-2:0]),
    .shifted(shifted_left)
);

assign shifted = shift_is_left ? shifted_left : shifted_right;

endmodule

// -----------------------------------------------------------------------------

module arithmetic_right_shift #(
    parameter A_WIDTH = 16,
    parameter SHIFT_WIDTH = 5
) (
    input [A_WIDTH-1:0] a,
    input [SHIFT_WIDTH-1:0] shift,
    output [A_WIDTH-1:0] shifted
);

genvar i;
wire [A_WIDTH-1:0] stages [SHIFT_WIDTH:0];

assign stages[0] = a;

generate
    for (i = 0; i < SHIFT_WIDTH; i = i + 1) begin
        assign stages[i+1] = shift[i] ? { {2**i{stages[i][A_WIDTH-1]}}, stages[i][A_WIDTH-1:2**i]} : stages[i];
    end
endgenerate

assign shifted = stages[SHIFT_WIDTH];

endmodule

// -----------------------------------------------------------------------------

module arithmetic_left_shift_clamped #(
    parameter A_WIDTH = 16,
    parameter SHIFT_WIDTH = 5
) (
    input [A_WIDTH-1:0] a,
    input [SHIFT_WIDTH-1:0] shift,
    output [A_WIDTH-1:0] shifted
);

genvar i;

wire signed [A_WIDTH-1:0] stages [SHIFT_WIDTH:0];

localparam signed [A_WIDTH-1:0] MAX_VAL = {1'b0, {A_WIDTH-1{1'b1}}};
localparam signed [A_WIDTH-1:0] MIN_VAL = {1'b1, {A_WIDTH-1{1'b0}}};

assign stages[0] = a;

generate
    for (i = 0; i < SHIFT_WIDTH; i = i + 1) begin : gen_shift_stage
        localparam integer SH = (1 << i);

        if (SH < A_WIDTH) begin : gen_small_shift
            wire overflow;

            // Overflow if the bits that would be shifted out are not all equal
            // to the sign bit of the value after shifting.
            assign overflow =
                |(stages[i][A_WIDTH-1:A_WIDTH-SH] ^ {SH{stages[i][A_WIDTH-1-SH]}});

            assign stages[i+1] =
                shift[i]
                    ? (overflow
                        ? (stages[i][A_WIDTH-1] ? MIN_VAL : MAX_VAL)
                        : {stages[i][A_WIDTH-1-SH:0], {SH{1'b0}}})
                    : stages[i];
        end
        else begin : gen_large_shift
            // Shifting by >= width:
            //  - 0 stays 0
            //  - positive clamps to MAX
            //  - negative clamps to MIN
            assign stages[i+1] =
                shift[i]
                    ? ((stages[i] == {A_WIDTH{1'b0}})
                        ? {A_WIDTH{1'b0}}
                        : (stages[i][A_WIDTH-1] ? MIN_VAL : MAX_VAL))
                    : stages[i];
        end
    end
endgenerate

assign shifted = stages[SHIFT_WIDTH];

endmodule

// -----------------------------------------------------------------------------

module matmul_shiftfix #(
    parameter LMAT_ROWS = 2,
    parameter LMAT_COLS = 2,

    parameter RMAT_ROWS = 2,
    parameter RMAT_COLS = 1,

    parameter OMAT_ROWS = 2,
    parameter OMAT_COLS = 1,

    parameter LMAT_RESIDUE_WIDTH = 18,
    parameter LMAT_RESIDUE_BINPT = 15,
    parameter LMAT_SHIFT_BITS = 5,
    parameter RMAT_WIDTH = 25,
    parameter RMAT_BINPT = 22,
    parameter OMAT_WIDTH = 43,
    parameter OMAT_BINPT = 37,

    parameter TESTPOINT_WIDTH = LMAT_RESIDUE_WIDTH + RMAT_WIDTH
) (
    input clk,
    input ce,

    input signed [(LMAT_RESIDUE_WIDTH * LMAT_ROWS * LMAT_COLS)-1:0] lmat_residue,
    input [(LMAT_SHIFT_BITS * LMAT_ROWS * LMAT_COLS)-1:0] lmat_shift,
    input signed [(RMAT_WIDTH * RMAT_ROWS * RMAT_COLS)-1:0] rmat,

    output /*reg*/ signed [(OMAT_WIDTH * OMAT_ROWS * OMAT_COLS)-1:0] res
);

// Unpacked in/out matrices from row major repr to 2D array.
wire signed [LMAT_RESIDUE_WIDTH-1:0] lmat_residue_unpacked [LMAT_ROWS-1:0][LMAT_COLS-1:0];
wire [LMAT_SHIFT_BITS-1:0] lmat_shift_unpacked [LMAT_ROWS-1:0][LMAT_COLS-1:0];
wire signed [RMAT_WIDTH-1:0] rmat_unpacked [RMAT_ROWS-1:0][RMAT_COLS-1:0];
wire signed [OMAT_WIDTH-1:0] omat_unpacked [OMAT_ROWS-1:0][OMAT_COLS-1:0];
wire signed [(OMAT_WIDTH * OMAT_ROWS * OMAT_COLS)-1:0] omat_packed;

genvar i, j, k;

generate
    // Unpack lmat_residue
    for (i = 0; i < LMAT_ROWS; i = i + 1) begin
        for (j = 0; j < LMAT_COLS; j = j + 1) begin
            assign lmat_residue_unpacked[i][j] = lmat_residue[(i * LMAT_COLS + j) * LMAT_RESIDUE_WIDTH +: LMAT_RESIDUE_WIDTH];
        end
    end

    // Unpack lmat_shift
    for (i = 0; i < LMAT_ROWS; i = i + 1) begin
        for (j = 0; j < LMAT_COLS; j = j + 1) begin
            assign lmat_shift_unpacked[i][j] = lmat_shift[(i * LMAT_COLS + j) * LMAT_SHIFT_BITS +: LMAT_SHIFT_BITS];
        end
    end

    // Unpack rmat
    for (i = 0; i < RMAT_ROWS; i = i + 1) begin
        for (j = 0; j < RMAT_COLS; j = j + 1) begin
            assign rmat_unpacked[i][j] = rmat[(i * RMAT_COLS + j) * RMAT_WIDTH +: RMAT_WIDTH];
        end
    end

    // Repack omat
    for (i = 0; i < OMAT_ROWS; i = i + 1) begin
        for (j = 0; j < OMAT_COLS; j = j + 1) begin
            assign omat_packed[(i * OMAT_COLS + j) * OMAT_WIDTH +: OMAT_WIDTH] = omat_unpacked[i][j];
        end
    end
endgenerate

localparam NUMBER_SUM_ELEMENTS = LMAT_COLS;
localparam MUL_WIDTH = LMAT_RESIDUE_WIDTH + RMAT_WIDTH;
localparam MUL_BINPT = LMAT_RESIDUE_BINPT + RMAT_BINPT;

wire signed [MUL_WIDTH-1:0] mul_result [OMAT_ROWS-1:0][OMAT_COLS-1:0][NUMBER_SUM_ELEMENTS-1:0];
wire signed [MUL_WIDTH-1:0] shift_result [OMAT_ROWS-1:0][OMAT_COLS-1:0][NUMBER_SUM_ELEMENTS-1:0];
wire signed [OMAT_WIDTH-1:0] shift_casted [OMAT_ROWS-1:0][OMAT_COLS-1:0][NUMBER_SUM_ELEMENTS-1:0];
wire signed [OMAT_WIDTH-1:0] sum_resuts [OMAT_ROWS-1:0][OMAT_COLS-1:0][NUMBER_SUM_ELEMENTS-1:0];

generate

    // Do multiplication step.
    for (i = 0; i < OMAT_ROWS; i = i + 1) begin
        for (j = 0; j < OMAT_COLS; j = j + 1) begin
            for (k = 0; k < NUMBER_SUM_ELEMENTS; k = k + 1) begin
                // Multiply the k'th elment of the i'th row of lmat_residue with
                // the same element of j'th column of rmat.
                `FIXPT_MULTIPLY_INLINE(
                    mul, LMAT_RESIDUE_WIDTH, RMAT_WIDTH,
                    lmat_residue_unpacked[i][k], rmat_unpacked[k][j], mul_result[i][j][k]
                );

                // Shift the casted multiplication result by the shift amount.
                arithmetic_right_shift #(
                    .A_WIDTH(MUL_WIDTH),
                    .SHIFT_WIDTH(LMAT_SHIFT_BITS)
                ) shift_mul (
                    .a(mul_result[i][j][k]),
                    .shift(lmat_shift_unpacked[i][k]),
                    .shifted(shift_result[i][j][k])
                );

                // Cast the multiplication result into the output datatype.
                `FIXPT_CAST_INLINE(cast_mul, MUL_WIDTH, MUL_BINPT, 1, OMAT_WIDTH, OMAT_BINPT, 1, shift_result[i][j][k], shift_casted[i][j][k]);
            end
        end
    end

    // Do adding step.
    for (i = 0; i < OMAT_ROWS; i = i + 1) begin
        for (j = 0; j < OMAT_COLS; j = j + 1) begin
            assign sum_resuts[i][j][0] = shift_casted[i][j][0];

            for (k = 0; k < NUMBER_SUM_ELEMENTS-1; k = k + 1) begin
                wire signed [OMAT_WIDTH:0] sum_temp = sum_resuts[i][j][k] + shift_casted[i][j][k+1];
                assign sum_resuts[i][j][k+1] = sum_temp[OMAT_WIDTH-1:0];
            end

            assign omat_unpacked[i][j] = sum_resuts[i][j][NUMBER_SUM_ELEMENTS-1];
        end
    end

endgenerate

assign res = omat_packed;

endmodule

// -----------------------------------------------------------------------------


module matmul_shiftfix_bidir #(
    parameter LMAT_ROWS = 2,
    parameter LMAT_COLS = 2,

    parameter RMAT_ROWS = 2,
    parameter RMAT_COLS = 1,

    parameter OMAT_ROWS = 2,
    parameter OMAT_COLS = 1,

    parameter LMAT_RESIDUE_WIDTH = 18,
    parameter LMAT_RESIDUE_BINPT = 15,
    parameter LMAT_SHIFT_BITS = 5,
    parameter RMAT_WIDTH = 25,
    parameter RMAT_BINPT = 22,
    parameter OMAT_WIDTH = 43,
    parameter OMAT_BINPT = 37,

    parameter TESTPOINT_WIDTH = LMAT_RESIDUE_WIDTH + RMAT_WIDTH
) (
    input clk,
    input ce,

    input signed [(LMAT_RESIDUE_WIDTH * LMAT_ROWS * LMAT_COLS)-1:0] lmat_residue,
    input signed [(LMAT_SHIFT_BITS * LMAT_ROWS * LMAT_COLS)-1:0] lmat_shift,
    input signed [(RMAT_WIDTH * RMAT_ROWS * RMAT_COLS)-1:0] rmat,

    output /*reg*/ signed [(OMAT_WIDTH * OMAT_ROWS * OMAT_COLS)-1:0] res
);

// Unpacked in/out matrices from row major repr to 2D array.
wire signed [LMAT_RESIDUE_WIDTH-1:0] lmat_residue_unpacked [LMAT_ROWS-1:0][LMAT_COLS-1:0];
wire signed [LMAT_SHIFT_BITS-1:0] lmat_shift_unpacked [LMAT_ROWS-1:0][LMAT_COLS-1:0];
wire signed [RMAT_WIDTH-1:0] rmat_unpacked [RMAT_ROWS-1:0][RMAT_COLS-1:0];
wire signed [OMAT_WIDTH-1:0] omat_unpacked [OMAT_ROWS-1:0][OMAT_COLS-1:0];
wire signed [(OMAT_WIDTH * OMAT_ROWS * OMAT_COLS)-1:0] omat_packed;

genvar i, j, k;

generate
    // Unpack lmat_residue
    for (i = 0; i < LMAT_ROWS; i = i + 1) begin
        for (j = 0; j < LMAT_COLS; j = j + 1) begin
            assign lmat_residue_unpacked[i][j] = lmat_residue[(i * LMAT_COLS + j) * LMAT_RESIDUE_WIDTH +: LMAT_RESIDUE_WIDTH];
        end
    end

    // Unpack lmat_shift
    for (i = 0; i < LMAT_ROWS; i = i + 1) begin
        for (j = 0; j < LMAT_COLS; j = j + 1) begin
            assign lmat_shift_unpacked[i][j] = lmat_shift[(i * LMAT_COLS + j) * LMAT_SHIFT_BITS +: LMAT_SHIFT_BITS];
        end
    end

    // Unpack rmat
    for (i = 0; i < RMAT_ROWS; i = i + 1) begin
        for (j = 0; j < RMAT_COLS; j = j + 1) begin
            assign rmat_unpacked[i][j] = rmat[(i * RMAT_COLS + j) * RMAT_WIDTH +: RMAT_WIDTH];
        end
    end

    // Repack omat
    for (i = 0; i < OMAT_ROWS; i = i + 1) begin
        for (j = 0; j < OMAT_COLS; j = j + 1) begin
            assign omat_packed[(i * OMAT_COLS + j) * OMAT_WIDTH +: OMAT_WIDTH] = omat_unpacked[i][j];
        end
    end
endgenerate

localparam NUMBER_SUM_ELEMENTS = LMAT_COLS;
localparam MUL_WIDTH = LMAT_RESIDUE_WIDTH + RMAT_WIDTH;
localparam MUL_BINPT = LMAT_RESIDUE_BINPT + RMAT_BINPT;

wire signed [MUL_WIDTH-1:0] mul_result [OMAT_ROWS-1:0][OMAT_COLS-1:0][NUMBER_SUM_ELEMENTS-1:0];
wire signed [MUL_WIDTH-1:0] shift_result [OMAT_ROWS-1:0][OMAT_COLS-1:0][NUMBER_SUM_ELEMENTS-1:0];
wire signed [OMAT_WIDTH-1:0] shift_casted [OMAT_ROWS-1:0][OMAT_COLS-1:0][NUMBER_SUM_ELEMENTS-1:0];
wire signed [OMAT_WIDTH-1:0] sum_resuts [OMAT_ROWS-1:0][OMAT_COLS-1:0][NUMBER_SUM_ELEMENTS-1:0];

generate

    // Do multiplication step.
    for (i = 0; i < OMAT_ROWS; i = i + 1) begin
        for (j = 0; j < OMAT_COLS; j = j + 1) begin
            for (k = 0; k < NUMBER_SUM_ELEMENTS; k = k + 1) begin
                // Multiply the k'th elment of the i'th row of lmat_residue with
                // the same element of j'th column of rmat.
                `FIXPT_MULTIPLY_INLINE(
                    mul, LMAT_RESIDUE_WIDTH, RMAT_WIDTH,
                    lmat_residue_unpacked[i][k], rmat_unpacked[k][j], mul_result[i][j][k]
                );

                // Shift the casted multiplication result by the shift amount.
                arithmetic_shift_bidir #(
                    .A_WIDTH(MUL_WIDTH),
                    .SHIFT_WIDTH(LMAT_SHIFT_BITS)
                ) shift_mul (
                    .a(mul_result[i][j][k]),
                    .shift(lmat_shift_unpacked[i][k]),
                    .shifted(shift_result[i][j][k])
                );

                // Cast the multiplication result into the output datatype.
                `FIXPT_CAST_INLINE(cast_mul, MUL_WIDTH, MUL_BINPT, 1, OMAT_WIDTH, OMAT_BINPT, 1, shift_result[i][j][k], shift_casted[i][j][k]);
            end
        end
    end

    // Do adding step.
    for (i = 0; i < OMAT_ROWS; i = i + 1) begin
        for (j = 0; j < OMAT_COLS; j = j + 1) begin
            assign sum_resuts[i][j][0] = shift_casted[i][j][0];

            for (k = 0; k < NUMBER_SUM_ELEMENTS-1; k = k + 1) begin
                wire signed [OMAT_WIDTH:0] sum_temp = sum_resuts[i][j][k] + shift_casted[i][j][k+1];
                assign sum_resuts[i][j][k+1] = sum_temp[OMAT_WIDTH-1:0];
            end

            assign omat_unpacked[i][j] = sum_resuts[i][j][NUMBER_SUM_ELEMENTS-1];
        end
    end

endgenerate

assign res = omat_packed;

endmodule
`timescale 1 ns / 10 ps
module sysgen_reinterpret_926fff82fc (
  input [(70 - 1):0] input_port,
  output [(70 - 1):0] output_port,
  input clk,
  input ce,
  input clr);
  wire [(70 - 1):0] input_port_1_40;
  assign input_port_1_40 = input_port;
  assign output_port = input_port_1_40;
endmodule
`timescale 1 ns / 10 ps
module sysgen_reinterpret_3c4ed3b7a4 (
  input [(50 - 1):0] input_port,
  output [(50 - 1):0] output_port,
  input clk,
  input ce,
  input clr);
  wire [(50 - 1):0] input_port_1_40;
  assign input_port_1_40 = input_port;
  assign output_port = input_port_1_40;
endmodule
`timescale 1 ns / 10 ps
module sysgen_reinterpret_0d903385e5 (
  input [(245 - 1):0] input_port,
  output [(245 - 1):0] output_port,
  input clk,
  input ce,
  input clr);
  wire [(245 - 1):0] input_port_1_40;
  assign input_port_1_40 = input_port;
  assign output_port = input_port_1_40;
endmodule
`timescale 1 ns / 10 ps
module sysgen_reinterpret_74245ac531 (
  input [(882 - 1):0] input_port,
  output [(882 - 1):0] output_port,
  input clk,
  input ce,
  input clr);
  wire [(882 - 1):0] input_port_1_40;
  assign input_port_1_40 = input_port;
  assign output_port = input_port_1_40;
endmodule
`timescale 1 ns / 10 ps
module sysgen_mult_325bc34c11 (
  input [(14 - 1):0] a,
  input [(18 - 1):0] b,
  output [(14 - 1):0] p,
  input clk,
  input ce,
  input clr);
  wire signed [(14 - 1):0] a_1_22;
  wire signed [(18 - 1):0] b_1_25;
  localparam signed [(14 - 1):0] const_value = 14'sb00000000000000;
  reg signed [(14 - 1):0] op_mem_65_20[0:(3 - 1)];
  initial
    begin
      op_mem_65_20[0] = 14'b00000000000000;
      op_mem_65_20[1] = 14'b00000000000000;
      op_mem_65_20[2] = 14'b00000000000000;
    end
  wire signed [(14 - 1):0] op_mem_65_20_front_din;
  wire signed [(14 - 1):0] op_mem_65_20_back;
  wire op_mem_65_20_push_front_pop_back_en;
  localparam [(2 - 1):0] const_value_x_000000 = 2'b11;
  localparam [(6 - 1):0] const_value_x_000001 = 6'b100000;
  localparam [(5 - 1):0] const_value_x_000002 = 5'b11010;
  wire signed [(32 - 1):0] mult_46_56;
  wire signed [(14 - 1):0] product_55_3_convert;
  assign a_1_22 = a;
  assign b_1_25 = b;
  assign op_mem_65_20_back = op_mem_65_20[2];
  always @(posedge clk)
    begin:proc_op_mem_65_20
      integer i;
      if (((ce == 1'b1) && (op_mem_65_20_push_front_pop_back_en == 1'b1)))
        begin
          for (i=2; i>=1; i=i-1)
            begin
              op_mem_65_20[i] <= op_mem_65_20[i-1];
            end
          op_mem_65_20[0] <= op_mem_65_20_front_din;
        end
    end
  assign mult_46_56 = (a_1_22 * b_1_25);
  defparam convert_product_55_3_convert.new_arith = `xlSigned;
  defparam convert_product_55_3_convert.new_bin_pt = 12;
  defparam convert_product_55_3_convert.new_width = 14;
  defparam convert_product_55_3_convert.old_arith = `xlSigned;
  defparam convert_product_55_3_convert.old_bin_pt = 26;
  defparam convert_product_55_3_convert.old_width = 32;
  defparam convert_product_55_3_convert.overflow = `xlSaturate;
  defparam convert_product_55_3_convert.quantization = `xlTruncate;
  convert_type convert_product_55_3_convert(.inp(mult_46_56), .res(product_55_3_convert));
  assign op_mem_65_20_front_din = product_55_3_convert;
  assign op_mem_65_20_push_front_pop_back_en = 1'b1;
  assign p = op_mem_65_20_back;
endmodule
`timescale 1 ns / 10 ps
module sysgen_reinterpret_f7a2ae8f54 (
  input [(25 - 1):0] input_port,
  output [(25 - 1):0] output_port,
  input clk,
  input ce,
  input clr);
  wire [(25 - 1):0] input_port_1_40;
  wire signed [(25 - 1):0] output_port_5_5_force;
  assign input_port_1_40 = input_port;
  assign output_port_5_5_force = input_port_1_40;
  assign output_port = output_port_5_5_force;
endmodule
`timescale 1 ns / 10 ps
module sysgen_reinterpret_cf3690c5d0 (
  input [(18 - 1):0] input_port,
  output [(18 - 1):0] output_port,
  input clk,
  input ce,
  input clr);
  wire signed [(18 - 1):0] input_port_1_40;
  wire [(18 - 1):0] output_port_5_5_force;
  assign input_port_1_40 = input_port;
  assign output_port_5_5_force = input_port_1_40;
  assign output_port = output_port_5_5_force;
endmodule
`timescale 1 ns / 10 ps
module sysgen_concat_76e9577ce4 (
  input [(18 - 1):0] in0,
  input [(18 - 1):0] in1,
  input [(18 - 1):0] in2,
  input [(18 - 1):0] in3,
  input [(18 - 1):0] in4,
  input [(18 - 1):0] in5,
  input [(18 - 1):0] in6,
  input [(18 - 1):0] in7,
  input [(18 - 1):0] in8,
  input [(18 - 1):0] in9,
  input [(18 - 1):0] in10,
  input [(18 - 1):0] in11,
  input [(18 - 1):0] in12,
  input [(18 - 1):0] in13,
  output [(252 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire [(18 - 1):0] in0_1_23;
  wire [(18 - 1):0] in1_1_27;
  wire [(18 - 1):0] in2_1_31;
  wire [(18 - 1):0] in3_1_35;
  wire [(18 - 1):0] in4_1_39;
  wire [(18 - 1):0] in5_1_43;
  wire [(18 - 1):0] in6_1_47;
  wire [(18 - 1):0] in7_1_51;
  wire [(18 - 1):0] in8_1_55;
  wire [(18 - 1):0] in9_1_59;
  wire [(18 - 1):0] in10_1_63;
  wire [(18 - 1):0] in11_1_68;
  wire [(18 - 1):0] in12_1_73;
  wire [(18 - 1):0] in13_1_78;
  wire [(252 - 1):0] y_2_1_concat;
  assign in0_1_23 = in0;
  assign in1_1_27 = in1;
  assign in2_1_31 = in2;
  assign in3_1_35 = in3;
  assign in4_1_39 = in4;
  assign in5_1_43 = in5;
  assign in6_1_47 = in6;
  assign in7_1_51 = in7;
  assign in8_1_55 = in8;
  assign in9_1_59 = in9;
  assign in10_1_63 = in10;
  assign in11_1_68 = in11;
  assign in12_1_73 = in12;
  assign in13_1_78 = in13;
  assign y_2_1_concat = {in0_1_23, in1_1_27, in2_1_31, in3_1_35, in4_1_39, in5_1_43, in6_1_47, in7_1_51, in8_1_55, in9_1_59, in10_1_63, in11_1_68, in12_1_73, in13_1_78};
  assign y = y_2_1_concat;
endmodule
`timescale 1 ns / 10 ps
module sysgen_reinterpret_bdd4b54fb3 (
  input [(5 - 1):0] input_port,
  output [(5 - 1):0] output_port,
  input clk,
  input ce,
  input clr);
  wire [(5 - 1):0] input_port_1_40;
  assign input_port_1_40 = input_port;
  assign output_port = input_port_1_40;
endmodule
`timescale 1 ns / 10 ps
module sysgen_concat_e94a693d6e (
  input [(5 - 1):0] in0,
  input [(5 - 1):0] in1,
  input [(5 - 1):0] in2,
  input [(5 - 1):0] in3,
  input [(5 - 1):0] in4,
  input [(5 - 1):0] in5,
  input [(5 - 1):0] in6,
  input [(5 - 1):0] in7,
  input [(5 - 1):0] in8,
  input [(5 - 1):0] in9,
  input [(5 - 1):0] in10,
  input [(5 - 1):0] in11,
  input [(5 - 1):0] in12,
  input [(5 - 1):0] in13,
  output [(70 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire [(5 - 1):0] in0_1_23;
  wire [(5 - 1):0] in1_1_27;
  wire [(5 - 1):0] in2_1_31;
  wire [(5 - 1):0] in3_1_35;
  wire [(5 - 1):0] in4_1_39;
  wire [(5 - 1):0] in5_1_43;
  wire [(5 - 1):0] in6_1_47;
  wire [(5 - 1):0] in7_1_51;
  wire [(5 - 1):0] in8_1_55;
  wire [(5 - 1):0] in9_1_59;
  wire [(5 - 1):0] in10_1_63;
  wire [(5 - 1):0] in11_1_68;
  wire [(5 - 1):0] in12_1_73;
  wire [(5 - 1):0] in13_1_78;
  wire [(70 - 1):0] y_2_1_concat;
  assign in0_1_23 = in0;
  assign in1_1_27 = in1;
  assign in2_1_31 = in2;
  assign in3_1_35 = in3;
  assign in4_1_39 = in4;
  assign in5_1_43 = in5;
  assign in6_1_47 = in6;
  assign in7_1_51 = in7;
  assign in8_1_55 = in8;
  assign in9_1_59 = in9;
  assign in10_1_63 = in10;
  assign in11_1_68 = in11;
  assign in12_1_73 = in12;
  assign in13_1_78 = in13;
  assign y_2_1_concat = {in0_1_23, in1_1_27, in2_1_31, in3_1_35, in4_1_39, in5_1_43, in6_1_47, in7_1_51, in8_1_55, in9_1_59, in10_1_63, in11_1_68, in12_1_73, in13_1_78};
  assign y = y_2_1_concat;
endmodule
`timescale 1 ns / 10 ps
module sysgen_reinterpret_6938eead6d (
  input [(6 - 1):0] input_port,
  output [(6 - 1):0] output_port,
  input clk,
  input ce,
  input clr);
  wire signed [(6 - 1):0] input_port_1_40;
  wire [(6 - 1):0] output_port_5_5_force;
  assign input_port_1_40 = input_port;
  assign output_port_5_5_force = input_port_1_40;
  assign output_port = output_port_5_5_force;
endmodule
`timescale 1 ns / 10 ps
module sysgen_concat_f496012fb5 (
  input [(6 - 1):0] in0,
  input [(6 - 1):0] in1,
  input [(6 - 1):0] in2,
  input [(6 - 1):0] in3,
  input [(6 - 1):0] in4,
  input [(6 - 1):0] in5,
  input [(6 - 1):0] in6,
  input [(6 - 1):0] in7,
  input [(6 - 1):0] in8,
  input [(6 - 1):0] in9,
  input [(6 - 1):0] in10,
  input [(6 - 1):0] in11,
  input [(6 - 1):0] in12,
  input [(6 - 1):0] in13,
  output [(84 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire [(6 - 1):0] in0_1_23;
  wire [(6 - 1):0] in1_1_27;
  wire [(6 - 1):0] in2_1_31;
  wire [(6 - 1):0] in3_1_35;
  wire [(6 - 1):0] in4_1_39;
  wire [(6 - 1):0] in5_1_43;
  wire [(6 - 1):0] in6_1_47;
  wire [(6 - 1):0] in7_1_51;
  wire [(6 - 1):0] in8_1_55;
  wire [(6 - 1):0] in9_1_59;
  wire [(6 - 1):0] in10_1_63;
  wire [(6 - 1):0] in11_1_68;
  wire [(6 - 1):0] in12_1_73;
  wire [(6 - 1):0] in13_1_78;
  wire [(84 - 1):0] y_2_1_concat;
  assign in0_1_23 = in0;
  assign in1_1_27 = in1;
  assign in2_1_31 = in2;
  assign in3_1_35 = in3;
  assign in4_1_39 = in4;
  assign in5_1_43 = in5;
  assign in6_1_47 = in6;
  assign in7_1_51 = in7;
  assign in8_1_55 = in8;
  assign in9_1_59 = in9;
  assign in10_1_63 = in10;
  assign in11_1_68 = in11;
  assign in12_1_73 = in12;
  assign in13_1_78 = in13;
  assign y_2_1_concat = {in0_1_23, in1_1_27, in2_1_31, in3_1_35, in4_1_39, in5_1_43, in6_1_47, in7_1_51, in8_1_55, in9_1_59, in10_1_63, in11_1_68, in12_1_73, in13_1_78};
  assign y = y_2_1_concat;
endmodule
`timescale 1 ns / 10 ps
module sysgen_concat_a10c538352 (
  input [(25 - 1):0] in0,
  input [(25 - 1):0] in1,
  output [(50 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire [(25 - 1):0] in0_1_23;
  wire [(25 - 1):0] in1_1_27;
  wire [(50 - 1):0] y_2_1_concat;
  assign in0_1_23 = in0;
  assign in1_1_27 = in1;
  assign y_2_1_concat = {in0_1_23, in1_1_27};
  assign y = y_2_1_concat;
endmodule
`timescale 1 ns / 10 ps
module sysgen_concat_3b291b5690 (
  input [(18 - 1):0] in0,
  input [(18 - 1):0] in1,
  input [(18 - 1):0] in2,
  input [(18 - 1):0] in3,
  input [(18 - 1):0] in4,
  input [(18 - 1):0] in5,
  input [(18 - 1):0] in6,
  input [(18 - 1):0] in7,
  input [(18 - 1):0] in8,
  input [(18 - 1):0] in9,
  input [(18 - 1):0] in10,
  input [(18 - 1):0] in11,
  input [(18 - 1):0] in12,
  input [(18 - 1):0] in13,
  input [(18 - 1):0] in14,
  input [(18 - 1):0] in15,
  input [(18 - 1):0] in16,
  input [(18 - 1):0] in17,
  input [(18 - 1):0] in18,
  input [(18 - 1):0] in19,
  input [(18 - 1):0] in20,
  input [(18 - 1):0] in21,
  input [(18 - 1):0] in22,
  input [(18 - 1):0] in23,
  input [(18 - 1):0] in24,
  input [(18 - 1):0] in25,
  input [(18 - 1):0] in26,
  input [(18 - 1):0] in27,
  input [(18 - 1):0] in28,
  input [(18 - 1):0] in29,
  input [(18 - 1):0] in30,
  input [(18 - 1):0] in31,
  input [(18 - 1):0] in32,
  input [(18 - 1):0] in33,
  input [(18 - 1):0] in34,
  input [(18 - 1):0] in35,
  input [(18 - 1):0] in36,
  input [(18 - 1):0] in37,
  input [(18 - 1):0] in38,
  input [(18 - 1):0] in39,
  input [(18 - 1):0] in40,
  input [(18 - 1):0] in41,
  input [(18 - 1):0] in42,
  input [(18 - 1):0] in43,
  input [(18 - 1):0] in44,
  input [(18 - 1):0] in45,
  input [(18 - 1):0] in46,
  input [(18 - 1):0] in47,
  input [(18 - 1):0] in48,
  output [(882 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire [(18 - 1):0] in0_1_23;
  wire [(18 - 1):0] in1_1_27;
  wire [(18 - 1):0] in2_1_31;
  wire [(18 - 1):0] in3_1_35;
  wire [(18 - 1):0] in4_1_39;
  wire [(18 - 1):0] in5_1_43;
  wire [(18 - 1):0] in6_1_47;
  wire [(18 - 1):0] in7_1_51;
  wire [(18 - 1):0] in8_1_55;
  wire [(18 - 1):0] in9_1_59;
  wire [(18 - 1):0] in10_1_63;
  wire [(18 - 1):0] in11_1_68;
  wire [(18 - 1):0] in12_1_73;
  wire [(18 - 1):0] in13_1_78;
  wire [(18 - 1):0] in14_1_83;
  wire [(18 - 1):0] in15_1_88;
  wire [(18 - 1):0] in16_1_93;
  wire [(18 - 1):0] in17_1_98;
  wire [(18 - 1):0] in18_1_103;
  wire [(18 - 1):0] in19_1_108;
  wire [(18 - 1):0] in20_1_113;
  wire [(18 - 1):0] in21_1_118;
  wire [(18 - 1):0] in22_1_123;
  wire [(18 - 1):0] in23_1_128;
  wire [(18 - 1):0] in24_1_133;
  wire [(18 - 1):0] in25_1_138;
  wire [(18 - 1):0] in26_1_143;
  wire [(18 - 1):0] in27_1_148;
  wire [(18 - 1):0] in28_1_153;
  wire [(18 - 1):0] in29_1_158;
  wire [(18 - 1):0] in30_1_163;
  wire [(18 - 1):0] in31_1_168;
  wire [(18 - 1):0] in32_1_173;
  wire [(18 - 1):0] in33_1_178;
  wire [(18 - 1):0] in34_1_183;
  wire [(18 - 1):0] in35_1_188;
  wire [(18 - 1):0] in36_1_193;
  wire [(18 - 1):0] in37_1_198;
  wire [(18 - 1):0] in38_1_203;
  wire [(18 - 1):0] in39_1_208;
  wire [(18 - 1):0] in40_1_213;
  wire [(18 - 1):0] in41_1_218;
  wire [(18 - 1):0] in42_1_223;
  wire [(18 - 1):0] in43_1_228;
  wire [(18 - 1):0] in44_1_233;
  wire [(18 - 1):0] in45_1_238;
  wire [(18 - 1):0] in46_1_243;
  wire [(18 - 1):0] in47_1_248;
  wire [(18 - 1):0] in48_1_253;
  wire [(882 - 1):0] y_2_1_concat;
  assign in0_1_23 = in0;
  assign in1_1_27 = in1;
  assign in2_1_31 = in2;
  assign in3_1_35 = in3;
  assign in4_1_39 = in4;
  assign in5_1_43 = in5;
  assign in6_1_47 = in6;
  assign in7_1_51 = in7;
  assign in8_1_55 = in8;
  assign in9_1_59 = in9;
  assign in10_1_63 = in10;
  assign in11_1_68 = in11;
  assign in12_1_73 = in12;
  assign in13_1_78 = in13;
  assign in14_1_83 = in14;
  assign in15_1_88 = in15;
  assign in16_1_93 = in16;
  assign in17_1_98 = in17;
  assign in18_1_103 = in18;
  assign in19_1_108 = in19;
  assign in20_1_113 = in20;
  assign in21_1_118 = in21;
  assign in22_1_123 = in22;
  assign in23_1_128 = in23;
  assign in24_1_133 = in24;
  assign in25_1_138 = in25;
  assign in26_1_143 = in26;
  assign in27_1_148 = in27;
  assign in28_1_153 = in28;
  assign in29_1_158 = in29;
  assign in30_1_163 = in30;
  assign in31_1_168 = in31;
  assign in32_1_173 = in32;
  assign in33_1_178 = in33;
  assign in34_1_183 = in34;
  assign in35_1_188 = in35;
  assign in36_1_193 = in36;
  assign in37_1_198 = in37;
  assign in38_1_203 = in38;
  assign in39_1_208 = in39;
  assign in40_1_213 = in40;
  assign in41_1_218 = in41;
  assign in42_1_223 = in42;
  assign in43_1_228 = in43;
  assign in44_1_233 = in44;
  assign in45_1_238 = in45;
  assign in46_1_243 = in46;
  assign in47_1_248 = in47;
  assign in48_1_253 = in48;
  assign y_2_1_concat = {in0_1_23, in1_1_27, in2_1_31, in3_1_35, in4_1_39, in5_1_43, in6_1_47, in7_1_51, in8_1_55, in9_1_59, in10_1_63, in11_1_68, in12_1_73, in13_1_78, in14_1_83, in15_1_88, in16_1_93, in17_1_98, in18_1_103, in19_1_108, in20_1_113, in21_1_118, in22_1_123, in23_1_128, in24_1_133, in25_1_138, in26_1_143, in27_1_148, in28_1_153, in29_1_158, in30_1_163, in31_1_168, in32_1_173, in33_1_178, in34_1_183, in35_1_188, in36_1_193, in37_1_198, in38_1_203, in39_1_208, in40_1_213, in41_1_218, in42_1_223, in43_1_228, in44_1_233, in45_1_238, in46_1_243, in47_1_248, in48_1_253};
  assign y = y_2_1_concat;
endmodule
`timescale 1 ns / 10 ps
module sysgen_concat_071745e870 (
  input [(5 - 1):0] in0,
  input [(5 - 1):0] in1,
  input [(5 - 1):0] in2,
  input [(5 - 1):0] in3,
  input [(5 - 1):0] in4,
  input [(5 - 1):0] in5,
  input [(5 - 1):0] in6,
  input [(5 - 1):0] in7,
  input [(5 - 1):0] in8,
  input [(5 - 1):0] in9,
  input [(5 - 1):0] in10,
  input [(5 - 1):0] in11,
  input [(5 - 1):0] in12,
  input [(5 - 1):0] in13,
  input [(5 - 1):0] in14,
  input [(5 - 1):0] in15,
  input [(5 - 1):0] in16,
  input [(5 - 1):0] in17,
  input [(5 - 1):0] in18,
  input [(5 - 1):0] in19,
  input [(5 - 1):0] in20,
  input [(5 - 1):0] in21,
  input [(5 - 1):0] in22,
  input [(5 - 1):0] in23,
  input [(5 - 1):0] in24,
  input [(5 - 1):0] in25,
  input [(5 - 1):0] in26,
  input [(5 - 1):0] in27,
  input [(5 - 1):0] in28,
  input [(5 - 1):0] in29,
  input [(5 - 1):0] in30,
  input [(5 - 1):0] in31,
  input [(5 - 1):0] in32,
  input [(5 - 1):0] in33,
  input [(5 - 1):0] in34,
  input [(5 - 1):0] in35,
  input [(5 - 1):0] in36,
  input [(5 - 1):0] in37,
  input [(5 - 1):0] in38,
  input [(5 - 1):0] in39,
  input [(5 - 1):0] in40,
  input [(5 - 1):0] in41,
  input [(5 - 1):0] in42,
  input [(5 - 1):0] in43,
  input [(5 - 1):0] in44,
  input [(5 - 1):0] in45,
  input [(5 - 1):0] in46,
  input [(5 - 1):0] in47,
  input [(5 - 1):0] in48,
  output [(245 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire [(5 - 1):0] in0_1_23;
  wire [(5 - 1):0] in1_1_27;
  wire [(5 - 1):0] in2_1_31;
  wire [(5 - 1):0] in3_1_35;
  wire [(5 - 1):0] in4_1_39;
  wire [(5 - 1):0] in5_1_43;
  wire [(5 - 1):0] in6_1_47;
  wire [(5 - 1):0] in7_1_51;
  wire [(5 - 1):0] in8_1_55;
  wire [(5 - 1):0] in9_1_59;
  wire [(5 - 1):0] in10_1_63;
  wire [(5 - 1):0] in11_1_68;
  wire [(5 - 1):0] in12_1_73;
  wire [(5 - 1):0] in13_1_78;
  wire [(5 - 1):0] in14_1_83;
  wire [(5 - 1):0] in15_1_88;
  wire [(5 - 1):0] in16_1_93;
  wire [(5 - 1):0] in17_1_98;
  wire [(5 - 1):0] in18_1_103;
  wire [(5 - 1):0] in19_1_108;
  wire [(5 - 1):0] in20_1_113;
  wire [(5 - 1):0] in21_1_118;
  wire [(5 - 1):0] in22_1_123;
  wire [(5 - 1):0] in23_1_128;
  wire [(5 - 1):0] in24_1_133;
  wire [(5 - 1):0] in25_1_138;
  wire [(5 - 1):0] in26_1_143;
  wire [(5 - 1):0] in27_1_148;
  wire [(5 - 1):0] in28_1_153;
  wire [(5 - 1):0] in29_1_158;
  wire [(5 - 1):0] in30_1_163;
  wire [(5 - 1):0] in31_1_168;
  wire [(5 - 1):0] in32_1_173;
  wire [(5 - 1):0] in33_1_178;
  wire [(5 - 1):0] in34_1_183;
  wire [(5 - 1):0] in35_1_188;
  wire [(5 - 1):0] in36_1_193;
  wire [(5 - 1):0] in37_1_198;
  wire [(5 - 1):0] in38_1_203;
  wire [(5 - 1):0] in39_1_208;
  wire [(5 - 1):0] in40_1_213;
  wire [(5 - 1):0] in41_1_218;
  wire [(5 - 1):0] in42_1_223;
  wire [(5 - 1):0] in43_1_228;
  wire [(5 - 1):0] in44_1_233;
  wire [(5 - 1):0] in45_1_238;
  wire [(5 - 1):0] in46_1_243;
  wire [(5 - 1):0] in47_1_248;
  wire [(5 - 1):0] in48_1_253;
  wire [(245 - 1):0] y_2_1_concat;
  assign in0_1_23 = in0;
  assign in1_1_27 = in1;
  assign in2_1_31 = in2;
  assign in3_1_35 = in3;
  assign in4_1_39 = in4;
  assign in5_1_43 = in5;
  assign in6_1_47 = in6;
  assign in7_1_51 = in7;
  assign in8_1_55 = in8;
  assign in9_1_59 = in9;
  assign in10_1_63 = in10;
  assign in11_1_68 = in11;
  assign in12_1_73 = in12;
  assign in13_1_78 = in13;
  assign in14_1_83 = in14;
  assign in15_1_88 = in15;
  assign in16_1_93 = in16;
  assign in17_1_98 = in17;
  assign in18_1_103 = in18;
  assign in19_1_108 = in19;
  assign in20_1_113 = in20;
  assign in21_1_118 = in21;
  assign in22_1_123 = in22;
  assign in23_1_128 = in23;
  assign in24_1_133 = in24;
  assign in25_1_138 = in25;
  assign in26_1_143 = in26;
  assign in27_1_148 = in27;
  assign in28_1_153 = in28;
  assign in29_1_158 = in29;
  assign in30_1_163 = in30;
  assign in31_1_168 = in31;
  assign in32_1_173 = in32;
  assign in33_1_178 = in33;
  assign in34_1_183 = in34;
  assign in35_1_188 = in35;
  assign in36_1_193 = in36;
  assign in37_1_198 = in37;
  assign in38_1_203 = in38;
  assign in39_1_208 = in39;
  assign in40_1_213 = in40;
  assign in41_1_218 = in41;
  assign in42_1_223 = in42;
  assign in43_1_228 = in43;
  assign in44_1_233 = in44;
  assign in45_1_238 = in45;
  assign in46_1_243 = in46;
  assign in47_1_248 = in47;
  assign in48_1_253 = in48;
  assign y_2_1_concat = {in0_1_23, in1_1_27, in2_1_31, in3_1_35, in4_1_39, in5_1_43, in6_1_47, in7_1_51, in8_1_55, in9_1_59, in10_1_63, in11_1_68, in12_1_73, in13_1_78, in14_1_83, in15_1_88, in16_1_93, in17_1_98, in18_1_103, in19_1_108, in20_1_113, in21_1_118, in22_1_123, in23_1_128, in24_1_133, in25_1_138, in26_1_143, in27_1_148, in28_1_153, in29_1_158, in30_1_163, in31_1_168, in32_1_173, in33_1_178, in34_1_183, in35_1_188, in36_1_193, in37_1_198, in38_1_203, in39_1_208, in40_1_213, in41_1_218, in42_1_223, in43_1_228, in44_1_233, in45_1_238, in46_1_243, in47_1_248, in48_1_253};
  assign y = y_2_1_concat;
endmodule
`timescale 1 ns / 10 ps
module axi_sys_axi_lite_interface#(parameter C_S_AXI_DATA_WIDTH = 32, C_S_AXI_ADDR_WIDTH = 4, C_S_NUM_OFFSETS = 3)(
  output wire[0:0] axi_state_reset,
  output wire[7:0] axi_led_mask,
  input wire[7:0] axi_led_output,
  output wire axi_sys_clk,
  input wire axi_sys_aclk,
  input wire axi_sys_aresetn,
  input  wire [C_S_AXI_ADDR_WIDTH - 1:0] axi_sys_s_axi_awaddr,
  input  wire axi_sys_s_axi_awvalid,
  output wire axi_sys_s_axi_awready,
  input  wire [C_S_AXI_DATA_WIDTH-1:0] axi_sys_s_axi_wdata,
  input  wire [C_S_AXI_DATA_WIDTH/8-1:0] axi_sys_s_axi_wstrb,
  input  wire axi_sys_s_axi_wvalid,
  output wire axi_sys_s_axi_wready,
  output wire [1:0] axi_sys_s_axi_bresp,
  output wire axi_sys_s_axi_bvalid,
  input  wire axi_sys_s_axi_bready,
  input  wire [C_S_AXI_ADDR_WIDTH - 1:0] axi_sys_s_axi_araddr,
  input  wire axi_sys_s_axi_arvalid,
  output wire axi_sys_s_axi_arready,
  output wire [C_S_AXI_DATA_WIDTH-1:0] axi_sys_s_axi_rdata,
  output wire [1:0] axi_sys_s_axi_rresp,
  output wire axi_sys_s_axi_rvalid,
  input  wire axi_sys_s_axi_rready
);
function integer clogb2 (input integer bit_depth);
begin
  for(clogb2=0; bit_depth>0; clogb2=clogb2+1)
    bit_depth = bit_depth >> 1;
  end
endfunction
localparam integer ADDR_LSB = clogb2(C_S_AXI_DATA_WIDTH/8);
localparam integer ADDR_MSB = C_S_AXI_ADDR_WIDTH;
localparam integer DEC_SIZE = clogb2(C_S_NUM_OFFSETS);
reg [1 :0] axi_rresp;
reg [1 :0] axi_bresp;
reg axi_awready;
reg axi_wready;
reg axi_bvalid;
reg axi_rvalid;
reg [ADDR_MSB-1:0] axi_awaddr;
reg [ADDR_MSB-1:0] axi_araddr;
reg [C_S_AXI_DATA_WIDTH-1:0] axi_rdata;
reg axi_arready;
wire [C_S_AXI_DATA_WIDTH-1:0] slv_wire_array [0:C_S_NUM_OFFSETS-1];
reg [C_S_AXI_DATA_WIDTH-1:0] slv_reg_array [0:C_S_NUM_OFFSETS-1];
wire slv_reg_rden;
wire slv_reg_wren;
reg [DEC_SIZE-1:0] dec_w;
reg [DEC_SIZE-1:0] dec_r;
reg [C_S_AXI_DATA_WIDTH-1:0] reg_data_out;
integer byte_index;
integer offset_index;
assign axi_sys_s_axi_awready = axi_awready;
assign axi_sys_s_axi_wready  = axi_wready;
assign axi_sys_s_axi_bresp  = axi_bresp;
assign axi_sys_s_axi_bvalid = axi_bvalid;
assign axi_sys_s_axi_arready = axi_arready;
assign axi_sys_s_axi_rdata  = axi_rdata;
assign axi_sys_s_axi_rvalid = axi_rvalid;
assign axi_sys_s_axi_rresp  = axi_rresp;
// map input 0
assign slv_wire_array[0] = slv_reg_array[0];
assign axi_state_reset = slv_wire_array[0][0];
// map input 1
assign slv_wire_array[1] = slv_reg_array[1];
assign axi_led_mask[7:0] = slv_wire_array[1][7:0];
// map output 2
assign slv_wire_array[2] = {24'h0, axi_led_output[7:0]};
  initial
  begin
    slv_reg_array[0] = 32'd0;
    slv_reg_array[1] = 32'd0;
  end
  always @(axi_awaddr)
  begin
    case(axi_awaddr)
      4'd4 : dec_w = 0;
      4'd0 : dec_w = 1;
      4'd8 : dec_w = 2;
      default : dec_w = 0;
    endcase
  end
  always @(axi_araddr)
  begin
    case(axi_araddr)
      4'd4 : dec_r = 0;
      4'd0 : dec_r = 1;
      4'd8 : dec_r = 2;
      default : dec_r = 0;
    endcase
  end
  always @( posedge axi_sys_aclk )
  begin
    if ( axi_sys_aresetn == 1'b0 )
      begin
        axi_awready <= 1'b0;
        axi_awaddr <= 0;
      end
    else
      begin
        if (~axi_awready && axi_sys_s_axi_awvalid && axi_sys_s_axi_wvalid)
          begin
            axi_awready <= 1'b1;
            axi_awaddr <= axi_sys_s_axi_awaddr;
          end
        else
          begin
            axi_awready <= 1'b0;
          end
      end
  end
  always @( posedge axi_sys_aclk )
  begin
    if ( axi_sys_aresetn == 1'b0 )
      begin
        axi_wready <= 1'b0;
      end
    else
      begin
        if (~axi_wready && axi_sys_s_axi_wvalid && axi_sys_s_axi_awvalid)
          begin
            axi_wready <= 1'b1;
          end
        else
          begin
            axi_wready <= 1'b0;
          end
      end
  end
  assign slv_reg_wren = axi_wready && axi_sys_s_axi_wvalid && axi_awready && axi_sys_s_axi_awvalid;
  always @( posedge axi_sys_aclk )
  begin
    if ( axi_sys_aresetn == 1'b0 )
      begin
        slv_reg_array[0] = 32'd0;
        slv_reg_array[1] = 32'd0;
      end
    else begin
      if (slv_reg_wren)
        begin
          for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
            if ( axi_sys_s_axi_wstrb[byte_index] == 1 ) begin
              slv_reg_array[dec_w][(byte_index*8) +: 8] <= axi_sys_s_axi_wdata[(byte_index*8) +: 8];
            end
        end
    end
  end
  always @( posedge axi_sys_aclk )
  begin
    if ( axi_sys_aresetn == 1'b0 )
      begin
        axi_bvalid  <= 0;
        axi_bresp   <= 2'b0;
      end
    else
      begin
        if (axi_awready && axi_sys_s_axi_awvalid && ~axi_bvalid && axi_wready && axi_sys_s_axi_wvalid)
          begin
            axi_bvalid <= 1'b1;
            axi_bresp  <= 2'b0; 
          end
        else
          begin
            if (axi_sys_s_axi_bready && axi_bvalid)
              begin
                axi_bvalid <= 1'b0;
              end
          end
      end
  end
  always @( posedge axi_sys_aclk )
  begin
    if ( axi_sys_aresetn == 1'b0 )
      begin
        axi_arready <= 1'b0;
        axi_araddr  <= {ADDR_MSB{1'b0}};
      end
    else
      begin
        if (~axi_arready && axi_sys_s_axi_arvalid)
          begin
            axi_arready <= 1'b1;
            axi_araddr  <= axi_sys_s_axi_araddr;
          end
        else
          begin
            axi_arready <= 1'b0;
          end
      end
  end

  // AXI read response (inferred flops)
  always @( posedge axi_sys_aclk )
  begin
    if ( axi_sys_aresetn == 1'b0 )
      begin
        axi_rvalid <= 1'b0;
        axi_rresp  <= 2'b0;
      end
    else
      begin
        if (slv_reg_rden)
          begin
            axi_rvalid <= 1'b1;
            axi_rresp  <= 2'b0; 
          end
        else if (axi_rvalid && axi_sys_s_axi_rready)
          begin
            axi_rvalid <= 1'b0;
            axi_rresp  <= 2'b0; 
          end
      end
  end
  assign slv_reg_rden = axi_arready & axi_sys_s_axi_arvalid & ~axi_rvalid;
  always @(axi_sys_aresetn, slv_reg_rden, axi_araddr, slv_wire_array, dec_r)
  begin
    if ( axi_sys_aresetn == 1'b0 )
      begin
        reg_data_out <= {C_S_AXI_DATA_WIDTH{1'b0}};
      end
    else
      begin
     reg_data_out <= slv_wire_array[dec_r];
      end
  end
  // flop for AXI read data
  always @( posedge axi_sys_aclk )
  begin
    if ( axi_sys_aresetn == 1'b0 )
      begin
        axi_rdata  <= 0;
      end
    else
      begin
        if (slv_reg_rden)
          begin
            axi_rdata <= reg_data_out;
          end
      end
  end

  assign axi_sys_clk = axi_sys_aclk;

endmodule

