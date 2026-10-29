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
module hilsim_ipcore_xlAsynRegister (d, rst, en, d_ce, d_clk, q_ce, q_clk, q);
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
module sysgen_concat_a04a2e2217 (
  input [(16 - 1):0] in0,
  input [(16 - 1):0] in1,
  output [(32 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire [(16 - 1):0] in0_1_23;
  wire [(16 - 1):0] in1_1_27;
  wire [(32 - 1):0] y_2_1_concat;
  assign in0_1_23 = in0;
  assign in1_1_27 = in1;
  assign y_2_1_concat = {in0_1_23, in1_1_27};
  assign y = y_2_1_concat;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_caba551e44 (
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 1'b0;
endmodule
`timescale 1 ns / 10 ps


module hilsim_ipcore_xlconvert (din, clk, ce, clr, en, dout);

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
module sysgen_reinterpret_dd2718332c (
  input [(16 - 1):0] input_port,
  output [(16 - 1):0] output_port,
  input clk,
  input ce,
  input clr);
  wire signed [(16 - 1):0] input_port_1_40;
  wire [(16 - 1):0] output_port_5_5_force;
  assign input_port_1_40 = input_port;
  assign output_port_5_5_force = input_port_1_40;
  assign output_port = output_port_5_5_force;
endmodule
`timescale 1 ns / 10 ps

module  hilsim_ipcore_xlslice  (x, y);

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
module sysgen_constant_b417a58cc8 (
  output [(8 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 8'b11111111;
endmodule
`timescale 1 ns / 10 ps
module sysgen_inverter_6602bd5df5 (
  input [(1 - 1):0] ip,
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire ip_1_26;
  reg op_mem_22_20[0:(1 - 1)];
  initial
    begin
      op_mem_22_20[0] = 1'b0;
    end
  wire op_mem_22_20_front_din;
  wire op_mem_22_20_back;
  wire op_mem_22_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value = 1'b1;
  wire internal_ip_12_1_bitnot;
  assign ip_1_26 = ip;
  assign op_mem_22_20_back = op_mem_22_20[0];
  always @(posedge clk)
    begin:proc_op_mem_22_20
      integer i;
      if (((ce == 1'b1) && (op_mem_22_20_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_22_20[0] <= op_mem_22_20_front_din;
        end
    end
  assign internal_ip_12_1_bitnot = ~ip_1_26;
  assign op_mem_22_20_push_front_pop_back_en = 1'b0;
  assign op = internal_ip_12_1_bitnot;
endmodule
`timescale 1 ns / 10 ps
module sysgen_inverter_6dfb34c18b (
  input [(9 - 1):0] ip,
  output [(9 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire [(9 - 1):0] ip_1_26;
  localparam [(9 - 1):0] const_value = 9'b000000000;
  reg [(9 - 1):0] op_mem_22_20[0:(1 - 1)];
  initial
    begin
      op_mem_22_20[0] = 9'b000000000;
    end
  wire [(9 - 1):0] op_mem_22_20_front_din;
  wire [(9 - 1):0] op_mem_22_20_back;
  wire op_mem_22_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1'b1;
  wire [(9 - 1):0] internal_ip_12_1_bitnot;
  assign ip_1_26 = ip;
  assign op_mem_22_20_back = op_mem_22_20[0];
  always @(posedge clk)
    begin:proc_op_mem_22_20
      integer i;
      if (((ce == 1'b1) && (op_mem_22_20_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_22_20[0] <= op_mem_22_20_front_din;
        end
    end
  assign internal_ip_12_1_bitnot = ~ip_1_26;
  assign op_mem_22_20_push_front_pop_back_en = 1'b0;
  assign op = internal_ip_12_1_bitnot;
endmodule
`timescale 1 ns / 10 ps
module sysgen_logical_d229f7c510 (
  input [(9 - 1):0] d0,
  input [(9 - 1):0] d1,
  output [(9 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire [(9 - 1):0] d0_1_24;
  wire [(9 - 1):0] d1_1_27;
  localparam [(9 - 1):0] const_value = 9'b000000000;
  reg [(9 - 1):0] latency_pipe_5_26[0:(1 - 1)];
  initial
    begin
      latency_pipe_5_26[0] = 9'b000000000;
    end
  wire [(9 - 1):0] latency_pipe_5_26_front_din;
  wire [(9 - 1):0] latency_pipe_5_26_back;
  wire latency_pipe_5_26_push_front_pop_back_en;
  wire [(9 - 1):0] fully_2_1_bit;
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
  assign fully_2_1_bit = d0_1_24 & d1_1_27;
  assign latency_pipe_5_26_front_din = fully_2_1_bit;
  assign latency_pipe_5_26_push_front_pop_back_en = 1'b1;
  assign y = latency_pipe_5_26_back;
endmodule
`timescale 1 ns / 10 ps
module sysgen_logical_3056f08ae7 (
  input [(9 - 1):0] d0,
  input [(9 - 1):0] d1,
  output [(9 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire [(9 - 1):0] d0_1_24;
  wire [(9 - 1):0] d1_1_27;
  wire [(9 - 1):0] fully_2_1_bit;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign fully_2_1_bit = d0_1_24 | d1_1_27;
  assign y = fully_2_1_bit;
endmodule
`timescale 1 ns / 10 ps
module hilsim_ipcore_xlregister (d, rst, en, ce, clk, q);
   parameter d_width = 5;
   parameter init_value = 'b0;

   input [d_width-1:0] d;
   input rst, en, ce, clk;
   output [d_width-1:0] q;

   wire internal_clr, internal_ce;

   assign internal_clr = rst & ce;
   assign internal_ce  = ce & en;

   synth_reg_w_init #(.width(d_width),
                      .init_index(2),
                      .init_value(init_value),
                      .latency(1))
   synth_reg_inst(.i(d),
                  .ce(internal_ce),
                  .clr(internal_clr),
                  .clk(clk),
                  .o(q));
endmodule

`timescale 1 ns / 10 ps
module sysgen_mux_d1c7417722 (
  input [(1 - 1):0] sel,
  input [(8 - 1):0] d0,
  input [(8 - 1):0] d1,
  output [(8 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire sel_1_20;
  wire [(8 - 1):0] d0_1_24;
  wire [(8 - 1):0] d1_1_27;
  localparam [(8 - 1):0] const_value = 8'b00000000;
  reg [(8 - 1):0] pipe_16_22[0:(1 - 1)];
  initial
    begin
      pipe_16_22[0] = 8'b00000000;
    end
  wire [(8 - 1):0] pipe_16_22_front_din;
  wire [(8 - 1):0] pipe_16_22_back;
  wire pipe_16_22_push_front_pop_back_en;
  wire [(1 - 1):0] sel_internal_2_1_convert;
  reg [(8 - 1):0] unregy_join_6_1;
  assign sel_1_20 = sel;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign pipe_16_22_back = pipe_16_22[0];
  always @(posedge clk)
    begin:proc_pipe_16_22
      integer i;
      if (((ce == 1'b1) && (pipe_16_22_push_front_pop_back_en == 1'b1)))
        begin
          pipe_16_22[0] <= pipe_16_22_front_din;
        end
    end
  assign sel_internal_2_1_convert = {sel_1_20};
  always @(d0_1_24 or d1_1_27 or sel_internal_2_1_convert)
    begin:proc_switch_6_1
      case (sel_internal_2_1_convert)
        1'b0 :
          begin
            unregy_join_6_1 = d0_1_24;
          end
        default:
          begin
            unregy_join_6_1 = d1_1_27;
          end
      endcase
    end
  assign pipe_16_22_front_din = unregy_join_6_1;
  assign pipe_16_22_push_front_pop_back_en = 1'b1;
  assign y = pipe_16_22_back;
endmodule
`timescale 1 ns / 10 ps
module hilsim_ipcore_xldelay #(parameter width = -1, latency = -1, reg_retiming = 0, reset = 0)
  (input [width-1:0] d,
   input ce, clk, en, rst,
   output [width-1:0] q);

generate
  if ((latency == 0) || ((reg_retiming == 0) && (reset == 0)))
  begin:srl_delay
    synth_reg # (width, latency)
      reg1 (
        .i(d),
        .ce(ce & en),
        .clr(1'b0),
        .clk(clk),
        .o(q));
  end

  if ((latency>=1) && ((reg_retiming) || (reset)))
  begin:reg_delay
    synth_reg_reg # (width, latency)
      reg2 (
        .i(d),
        .ce(ce & en),
        .clr(rst),
        .clk(clk),
        .o(q));
  end
endgenerate
endmodule
`timescale 1 ns / 10 ps
module sysgen_logical_3ae5b19b5e (
  input [(1 - 1):0] d0,
  input [(1 - 1):0] d1,
  output [(1 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire d0_1_24;
  wire d1_1_27;
  wire fully_2_1_bit;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign fully_2_1_bit = d0_1_24 | d1_1_27;
  assign y = fully_2_1_bit;
endmodule
`timescale 1 ns / 10 ps
module sysgen_mux_1b926b88d6 (
  input [(1 - 1):0] sel,
  input [(25 - 1):0] d0,
  input [(25 - 1):0] d1,
  output [(25 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire sel_1_20;
  wire [(25 - 1):0] d0_1_24;
  wire [(25 - 1):0] d1_1_27;
  wire [(1 - 1):0] sel_internal_2_1_convert;
  reg [(25 - 1):0] unregy_join_6_1;
  assign sel_1_20 = sel;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign sel_internal_2_1_convert = {sel_1_20};
  always @(d0_1_24 or d1_1_27 or sel_internal_2_1_convert)
    begin:proc_switch_6_1
      case (sel_internal_2_1_convert)
        1'b0 :
          begin
            unregy_join_6_1 = d0_1_24;
          end
        default:
          begin
            unregy_join_6_1 = d1_1_27;
          end
      endcase
    end
  assign y = unregy_join_6_1;
endmodule
`timescale 1 ns / 10 ps
module sysgen_mux_d68a8b9ad8 (
  input [(1 - 1):0] sel,
  input [(25 - 1):0] d0,
  input [(25 - 1):0] d1,
  output [(25 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire sel_1_20;
  wire [(25 - 1):0] d0_1_24;
  wire [(25 - 1):0] d1_1_27;
  localparam [(25 - 1):0] const_value = 25'b0000000000000000000000000;
  reg [(25 - 1):0] pipe_16_22[0:(1 - 1)];
  initial
    begin
      pipe_16_22[0] = 25'b0000000000000000000000000;
    end
  wire [(25 - 1):0] pipe_16_22_front_din;
  wire [(25 - 1):0] pipe_16_22_back;
  wire pipe_16_22_push_front_pop_back_en;
  wire [(1 - 1):0] sel_internal_2_1_convert;
  reg [(25 - 1):0] unregy_join_6_1;
  assign sel_1_20 = sel;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign pipe_16_22_back = pipe_16_22[0];
  always @(posedge clk)
    begin:proc_pipe_16_22
      integer i;
      if (((ce == 1'b1) && (pipe_16_22_push_front_pop_back_en == 1'b1)))
        begin
          pipe_16_22[0] <= pipe_16_22_front_din;
        end
    end
  assign sel_internal_2_1_convert = {sel_1_20};
  always @(d0_1_24 or d1_1_27 or sel_internal_2_1_convert)
    begin:proc_switch_6_1
      case (sel_internal_2_1_convert)
        1'b0 :
          begin
            unregy_join_6_1 = d0_1_24;
          end
        default:
          begin
            unregy_join_6_1 = d1_1_27;
          end
      endcase
    end
  assign pipe_16_22_front_din = unregy_join_6_1;
  assign pipe_16_22_push_front_pop_back_en = 1'b1;
  assign y = pipe_16_22_back;
endmodule
`timescale 1 ns / 10 ps
module sysgen_relational_a2a0814d7a (
  input [(8 - 1):0] a,
  input [(8 - 1):0] b,
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire [(8 - 1):0] a_1_31;
  wire [(8 - 1):0] b_1_34;
  reg op_mem_45_22[0:(1 - 1)];
  initial
    begin
      op_mem_45_22[0] = 1'b0;
    end
  wire op_mem_45_22_front_din;
  wire op_mem_45_22_back;
  wire op_mem_45_22_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value = 1'b1;
  localparam [(1 - 1):0] const_value_x_000000 = 1'b0;
  reg [(8 - 1):0] a_join_13_3;
  localparam [(8 - 1):0] const_value_x_000001 = 8'b00000000;
  localparam [(1 - 1):0] const_value_x_000002 = 1'b0;
  reg [(8 - 1):0] b_join_16_3;
  localparam [(8 - 1):0] const_value_x_000003 = 8'b00000000;
  wire result_22_3_rel;
  assign a_1_31 = a;
  assign b_1_34 = b;
  assign op_mem_45_22_back = op_mem_45_22[0];
  always @(posedge clk)
    begin:proc_op_mem_45_22
      integer i;
      if (((ce == 1'b1) && (op_mem_45_22_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_45_22[0] <= op_mem_45_22_front_din;
        end
    end
  always @(a_1_31)
    begin:proc_if_13_3
      if (1'b0)
        begin
          a_join_13_3 = const_value_x_000001;
        end
      else 
        begin
          a_join_13_3 = a_1_31;
        end
    end
  always @(b_1_34)
    begin:proc_if_16_3
      if (1'b0)
        begin
          b_join_16_3 = const_value_x_000003;
        end
      else 
        begin
          b_join_16_3 = b_1_34;
        end
    end
  assign result_22_3_rel = a_join_13_3 == b_join_16_3;
  assign op_mem_45_22_front_din = result_22_3_rel;
  assign op_mem_45_22_push_front_pop_back_en = 1'b1;
  assign op = op_mem_45_22_back;
endmodule
`timescale 1 ns / 10 ps
module hilsim_ipcore_xltdpram
  #(parameter data_width_a = 0,
   parameter addr_width_a = 0,
   parameter addr_width_b = 0,
   parameter data_width_b = 0,
   parameter mem_size = 0,
   parameter write_mode_a = "no_change",
   parameter write_mode_b = "no_change",
   parameter read_reset_a ="0",
   parameter read_reset_b ="0",
   parameter mem_init_file ="none",
   parameter mem_type ="auto",
   parameter clocking_mode = "common_clock",
   parameter latency = 0)
  (input [data_width_a-1:0] dina,
   input wea, a_ce, a_clk, ena, rsta,
   input [addr_width_a-1:0] addra,
   output [data_width_a-1:0] douta,
   input [data_width_b-1:0] dinb,
   input web, b_ce, b_clk, enb, rstb,
   input [addr_width_b-1:0] addrb,
   output [data_width_b-1:0] doutb);

generate
xpm_memory_tdpram # (
  // Common module parameters
  .MEMORY_SIZE        (mem_size),
  .MEMORY_PRIMITIVE   (mem_type),                       //string; auto, distributed, block or ultra;
  .MEMORY_INIT_FILE   (mem_init_file), 
  .CLOCKING_MODE      (clocking_mode), 
  .MEMORY_INIT_PARAM  (""),
  .USE_MEM_INIT       (0),
  .WAKEUP_TIME        ("disable_sleep"),
  .MESSAGE_CONTROL    (0),

  // Port A module parameters
  .WRITE_DATA_WIDTH_A (data_width_a),
  .READ_DATA_WIDTH_A  (data_width_a),
  .BYTE_WRITE_WIDTH_A (data_width_a),
  .ADDR_WIDTH_A       (addr_width_a),
  .READ_RESET_VALUE_A (read_reset_a),
  .READ_LATENCY_A     (latency),
  .WRITE_MODE_A       (write_mode_a),

  // Port B module parameters
  .WRITE_DATA_WIDTH_B (data_width_b),
  .READ_DATA_WIDTH_B  (data_width_b),
  .BYTE_WRITE_WIDTH_B (data_width_b),
  .ADDR_WIDTH_B       (addr_width_b),
  .READ_RESET_VALUE_B (read_reset_b),
  .READ_LATENCY_B     (latency),
  .WRITE_MODE_B       (write_mode_b)

) xpm_memory_tdpram_inst (
 // Common module ports
  .sleep          (1'b0),
  // Port A module ports
  .clka           (a_clk),
  .rsta           (rsta & a_ce),
  .ena            (ena & a_ce),
  .regcea         (a_ce),
  .wea            (wea & a_ce),
  .addra          (addra),
  .dina           (dina),
  .injectsbiterra (1'b0),  //do not change
  .injectdbiterra (1'b0),  //do not change
  .douta          (douta),
  .sbiterra       (),      //do not change
  .dbiterra       (),       //do not change

  // Port B module ports
  .clkb           (b_clk),
  .rstb           (rstb & b_ce),
  .enb            (enb & b_ce),
  .regceb         (b_ce),
  .web            (web & b_ce),
  .addrb          (addrb),
  .dinb          (dinb),
  .injectsbiterrb (1'b0),  //do not change
  .injectdbiterrb (1'b0),  //do not change
  .doutb          (doutb),
  .sbiterrb       (),      //do not change
  .dbiterrb       ()       //do not change
);
endgenerate
endmodule
`timescale 1 ns / 10 ps
module sysgen_reinterpret_f4605e0022 (
  input [(10 - 1):0] input_port,
  output [(10 - 1):0] output_port,
  input clk,
  input ce,
  input clr);
  wire signed [(10 - 1):0] input_port_1_40;
  wire [(10 - 1):0] output_port_5_5_force;
  assign input_port_1_40 = input_port;
  assign output_port_5_5_force = input_port_1_40;
  assign output_port = output_port_5_5_force;
endmodule
`timescale 1 ns / 10 ps
module sysgen_mux_c832ae0d6a (
  input [(1 - 1):0] sel,
  input [(10 - 1):0] d0,
  input [(10 - 1):0] d1,
  output [(10 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire sel_1_20;
  wire [(10 - 1):0] d0_1_24;
  wire [(10 - 1):0] d1_1_27;
  localparam [(10 - 1):0] const_value = 10'b0000000000;
  reg [(10 - 1):0] pipe_16_22[0:(1 - 1)];
  initial
    begin
      pipe_16_22[0] = 10'b0000000000;
    end
  wire [(10 - 1):0] pipe_16_22_front_din;
  wire [(10 - 1):0] pipe_16_22_back;
  wire pipe_16_22_push_front_pop_back_en;
  wire [(1 - 1):0] sel_internal_2_1_convert;
  reg [(10 - 1):0] unregy_join_6_1;
  assign sel_1_20 = sel;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign pipe_16_22_back = pipe_16_22[0];
  always @(posedge clk)
    begin:proc_pipe_16_22
      integer i;
      if (((ce == 1'b1) && (pipe_16_22_push_front_pop_back_en == 1'b1)))
        begin
          pipe_16_22[0] <= pipe_16_22_front_din;
        end
    end
  assign sel_internal_2_1_convert = {sel_1_20};
  always @(d0_1_24 or d1_1_27 or sel_internal_2_1_convert)
    begin:proc_switch_6_1
      case (sel_internal_2_1_convert)
        1'b0 :
          begin
            unregy_join_6_1 = d0_1_24;
          end
        default:
          begin
            unregy_join_6_1 = d1_1_27;
          end
      endcase
    end
  assign pipe_16_22_front_din = unregy_join_6_1;
  assign pipe_16_22_push_front_pop_back_en = 1'b1;
  assign y = pipe_16_22_back;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_7b59d789af (
  output [(10 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 10'b0000000001;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_ab97251e3b (
  output [(25 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 25'b0000000100000000000000000;
endmodule
`timescale 1 ns / 10 ps
module sysgen_mux_ba276f04f0 (
  input [(1 - 1):0] sel,
  input [(16 - 1):0] d0,
  input [(16 - 1):0] d1,
  output [(16 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire sel_1_20;
  wire [(16 - 1):0] d0_1_24;
  wire [(16 - 1):0] d1_1_27;
  localparam [(16 - 1):0] const_value = 16'b0000000000000000;
  reg [(16 - 1):0] pipe_16_22[0:(1 - 1)];
  initial
    begin
      pipe_16_22[0] = 16'b0000000000000000;
    end
  wire [(16 - 1):0] pipe_16_22_front_din;
  wire [(16 - 1):0] pipe_16_22_back;
  wire pipe_16_22_push_front_pop_back_en;
  wire [(1 - 1):0] sel_internal_2_1_convert;
  reg [(16 - 1):0] unregy_join_6_1;
  assign sel_1_20 = sel;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign pipe_16_22_back = pipe_16_22[0];
  always @(posedge clk)
    begin:proc_pipe_16_22
      integer i;
      if (((ce == 1'b1) && (pipe_16_22_push_front_pop_back_en == 1'b1)))
        begin
          pipe_16_22[0] <= pipe_16_22_front_din;
        end
    end
  assign sel_internal_2_1_convert = {sel_1_20};
  always @(d0_1_24 or d1_1_27 or sel_internal_2_1_convert)
    begin:proc_switch_6_1
      case (sel_internal_2_1_convert)
        1'b0 :
          begin
            unregy_join_6_1 = d0_1_24;
          end
        default:
          begin
            unregy_join_6_1 = d1_1_27;
          end
      endcase
    end
  assign pipe_16_22_front_din = unregy_join_6_1;
  assign pipe_16_22_push_front_pop_back_en = 1'b1;
  assign y = pipe_16_22_back;
endmodule
`timescale 1 ns / 10 ps
module sysgen_reinterpret_67d055efc4 (
  input [(14 - 1):0] input_port,
  output [(14 - 1):0] output_port,
  input clk,
  input ce,
  input clr);
  wire [(14 - 1):0] input_port_1_40;
  assign input_port_1_40 = input_port;
  assign output_port = input_port_1_40;
endmodule
`timescale 1 ns / 10 ps
module sysgen_mux_18d2538cb2 (
  input [(1 - 1):0] sel,
  input [(1 - 1):0] d0,
  input [(1 - 1):0] d1,
  output [(1 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire sel_1_20;
  wire d0_1_24;
  wire d1_1_27;
  reg pipe_16_22[0:(1 - 1)];
  initial
    begin
      pipe_16_22[0] = 1'b0;
    end
  wire pipe_16_22_front_din;
  wire pipe_16_22_back;
  wire pipe_16_22_push_front_pop_back_en;
  wire [(1 - 1):0] sel_internal_2_1_convert;
  reg unregy_join_6_1;
  assign sel_1_20 = sel;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign pipe_16_22_back = pipe_16_22[0];
  always @(posedge clk)
    begin:proc_pipe_16_22
      integer i;
      if (((ce == 1'b1) && (pipe_16_22_push_front_pop_back_en == 1'b1)))
        begin
          pipe_16_22[0] <= pipe_16_22_front_din;
        end
    end
  assign sel_internal_2_1_convert = {sel_1_20};
  always @(d0_1_24 or d1_1_27 or sel_internal_2_1_convert)
    begin:proc_switch_6_1
      case (sel_internal_2_1_convert)
        1'b0 :
          begin
            unregy_join_6_1 = d0_1_24;
          end
        default:
          begin
            unregy_join_6_1 = d1_1_27;
          end
      endcase
    end
  assign pipe_16_22_front_din = unregy_join_6_1;
  assign pipe_16_22_push_front_pop_back_en = 1'b1;
  assign y = pipe_16_22_back;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_f3b3f76499 (
  output [(16 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 16'b0000000000000000;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_8a21de7c7f (
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 1'b1;
endmodule
`timescale 1 ns / 10 ps


module  hilsim_ipcore_xldsamp  (d, src_clk, src_ce, src_clr, dest_clk, dest_ce, dest_clr, en, rst, q);


//Parameter Definitions
parameter d_width= 12;
parameter d_bin_pt= 0;
parameter d_arith= `xlUnsigned;
parameter q_width= 12;
parameter q_bin_pt= 0;
parameter q_arith= `xlUnsigned;
parameter en_width= 1;
parameter en_bin_pt= 0;
parameter en_arith= `xlUnsigned;
parameter rst_width= 1;
parameter rst_bin_pt= 0;
parameter rst_arith= `xlUnsigned;
parameter ds_ratio= 2;
parameter phase= 0;
parameter latency= 1;


//Port Declartions
input [d_width-1:0] d;
input  src_clk;
input  src_ce;
input  src_clr;
input  dest_clk;
input  dest_ce;
input  dest_clr;
input [en_width-1:0] en;
input [rst_width-1:0] rst;
output [q_width-1:0] q;


//Wire Declartions
wire  adjusted_dest_ce;
wire  adjusted_dest_ce_w_en;
wire  dest_ce_w_en;
wire  sclr;
wire [d_width-1:0] smpld_d;
reg [q_width-1:0] q_reg;


assign dest_ce_w_en = dest_ce & en[0];
assign adjusted_dest_ce_w_en = adjusted_dest_ce & en[0];
assign sclr = (src_clr | rst[0]) & dest_ce;
generate
if((latency==0) | (phase!= (ds_ratio-1)))
   begin:adjusted_ce_needed
   FDSE dest_ce_reg(.Q(adjusted_dest_ce),
		            .D(dest_ce),
                    .C(src_clk),
                    .S(sclr),
                    .CE(src_ce)
	      	      );

   end

if(latency==0)
  begin:shutter_d_reg
  synth_reg # (d_width,1)
  reg1(.i(d),
       .ce(adjusted_dest_ce),
       .clr(sclr),
       .clk(src_clk),
       .o(smpld_d)
      );

   assign q = q_reg;

   always@(adjusted_dest_ce,d,smpld_d)
      begin
        if(adjusted_dest_ce == 'b0) begin
           q_reg = smpld_d;
        end
        else begin
           q_reg = d;
        end
      end

  end

 if(latency > 0)
 begin:double_reg_test
   if( phase!= (ds_ratio-1))
   begin:smpl_d_reg
   synth_reg_reg # (d_width, 1)
	  reg2 (
	       .i(d),
	       .ce(adjusted_dest_ce_w_en),
	       .clr(sclr),
	       .clk(src_clk),
	       .o(smpld_d));
   end

  if( phase == (ds_ratio-1))
  begin:sngl_reg_test
	assign smpld_d = d;
  end

  synth_reg_reg # (d_width, latency)
	  reg2 (
	       .i(smpld_d),
	       .ce(dest_ce_w_en),
	       .clr(sclr),
	       .clk(src_clk),
	       .o(q));
end

endgenerate

endmodule

`timescale 1 ns / 10 ps


module  hilsim_ipcore_xlusamp  (d, src_clk, src_ce, src_clr, dest_clk, dest_ce, dest_clr, en, q);


//Parameter Definitions
parameter d_width= 5;
parameter d_bin_pt= 2;
parameter d_arith= `xlUnsigned;
parameter q_width= 5;
parameter q_bin_pt= 2;
parameter q_arith= `xlUnsigned;
parameter en_width = 1;
parameter en_bin_pt = 0;
parameter en_arith = `xlUnsigned;
parameter sampling_ratio = 2;
parameter latency = 1;
parameter copy_samples= 0;


//Port Declartions
input [d_width-1:0] d;
input  src_clk;
input  src_ce;
input  src_clr;
input  dest_clk;
input  dest_ce;
input  dest_clr;
input [en_width-1:0] en;
output [q_width-1:0] q;


//Wire Declartions
wire [q_width-1:0] zero;
wire  mux_sel;
wire internal_ce;
wire [d_width-1:0] sampled_d;
assign internal_ce = src_ce & en[0];
generate
   if (copy_samples == 0)
   begin:copy_samples_0
       FDSE sel_gen(.Q(mux_sel),
           .D(src_ce),
           .C(src_clk),
           .S(src_clr),
           .CE(dest_ce));
       assign zero = {q_width{1'b0}};
       if (latency == 0)
       begin
           assign q = (mux_sel) ? d : zero;
       end
       else // if (latency > 0)
       begin
           synth_reg # (d_width, latency)
           reg1 (
               .i(d),
               .ce(internal_ce),
               .clr(src_clr),
               .clk(src_clk),
               .o(sampled_d)
           );
           assign q = (mux_sel) ? sampled_d : zero;
       end
   end

   if (copy_samples == 1)
   begin:copy_samples_1
       if (latency == 0)
       begin
           assign q = d;
       end
       else // !if(latency == 0)
       begin
           assign q = sampled_d;
           synth_reg # (d_width, latency)
           reg2 (
               .i(d),
               .ce(internal_ce),
               .clr(src_clr),
               .clk(src_clk),
               .o(sampled_d)
           );
       end
   end
endgenerate
endmodule

`timescale 1 ns / 10 ps
module sysgen_lfsr_54b8862899 (
  input [(1 - 1):0] en,
  output [(24 - 1):0] dout,
  input clk,
  input ce,
  input clr);
  wire en_1_63;
  wire [(1 - 1):0] lfsr0_2_19_next;
  wire [(1 - 1):0] lfsr0_2_19;
  wire lfsr0_2_19_en;
  wire [(1 - 1):0] lfsr0_2_19_reg_i;
  wire [(1 - 1):0] lfsr0_2_19_reg_o;
  wire lfsr0_2_19_reg_ce;
  wire [(1 - 1):0] lfsr1_3_19_next;
  reg [(1 - 1):0] lfsr1_3_19 = 1'b0;
  wire lfsr1_3_19_en;
  wire [(1 - 1):0] lfsr2_4_19_next;
  reg [(1 - 1):0] lfsr2_4_19 = 1'b0;
  wire lfsr2_4_19_en;
  wire [(1 - 1):0] lfsr3_5_19_next;
  wire [(1 - 1):0] lfsr3_5_19;
  wire lfsr3_5_19_en;
  wire [(1 - 1):0] lfsr3_5_19_reg_i;
  wire [(1 - 1):0] lfsr3_5_19_reg_o;
  wire lfsr3_5_19_reg_ce;
  wire [(1 - 1):0] lfsr4_6_19_next;
  reg [(1 - 1):0] lfsr4_6_19 = 1'b0;
  wire lfsr4_6_19_en;
  wire [(1 - 1):0] lfsr5_7_19_next;
  wire [(1 - 1):0] lfsr5_7_19;
  wire lfsr5_7_19_en;
  wire [(1 - 1):0] lfsr5_7_19_reg_i;
  wire [(1 - 1):0] lfsr5_7_19_reg_o;
  wire lfsr5_7_19_reg_ce;
  wire [(1 - 1):0] lfsr6_8_19_next;
  wire [(1 - 1):0] lfsr6_8_19;
  wire lfsr6_8_19_en;
  wire [(1 - 1):0] lfsr6_8_19_reg_i;
  wire [(1 - 1):0] lfsr6_8_19_reg_o;
  wire lfsr6_8_19_reg_ce;
  wire [(1 - 1):0] lfsr7_9_19_next;
  wire [(1 - 1):0] lfsr7_9_19;
  wire lfsr7_9_19_en;
  wire [(1 - 1):0] lfsr7_9_19_reg_i;
  wire [(1 - 1):0] lfsr7_9_19_reg_o;
  wire lfsr7_9_19_reg_ce;
  wire [(1 - 1):0] lfsr8_10_19_next;
  reg [(1 - 1):0] lfsr8_10_19 = 1'b0;
  wire lfsr8_10_19_en;
  wire [(1 - 1):0] lfsr9_11_19_next;
  reg [(1 - 1):0] lfsr9_11_19 = 1'b0;
  wire lfsr9_11_19_en;
  wire [(1 - 1):0] lfsr10_12_20_next;
  wire [(1 - 1):0] lfsr10_12_20;
  wire lfsr10_12_20_en;
  wire [(1 - 1):0] lfsr10_12_20_reg_i;
  wire [(1 - 1):0] lfsr10_12_20_reg_o;
  wire lfsr10_12_20_reg_ce;
  wire [(1 - 1):0] lfsr11_13_20_next;
  wire [(1 - 1):0] lfsr11_13_20;
  wire lfsr11_13_20_en;
  wire [(1 - 1):0] lfsr11_13_20_reg_i;
  wire [(1 - 1):0] lfsr11_13_20_reg_o;
  wire lfsr11_13_20_reg_ce;
  wire [(1 - 1):0] lfsr12_14_20_next;
  wire [(1 - 1):0] lfsr12_14_20;
  wire lfsr12_14_20_en;
  wire [(1 - 1):0] lfsr12_14_20_reg_i;
  wire [(1 - 1):0] lfsr12_14_20_reg_o;
  wire lfsr12_14_20_reg_ce;
  wire [(1 - 1):0] lfsr13_15_20_next;
  wire [(1 - 1):0] lfsr13_15_20;
  wire lfsr13_15_20_en;
  wire [(1 - 1):0] lfsr13_15_20_reg_i;
  wire [(1 - 1):0] lfsr13_15_20_reg_o;
  wire lfsr13_15_20_reg_ce;
  wire [(1 - 1):0] lfsr14_16_20_next;
  wire [(1 - 1):0] lfsr14_16_20;
  wire lfsr14_16_20_en;
  wire [(1 - 1):0] lfsr14_16_20_reg_i;
  wire [(1 - 1):0] lfsr14_16_20_reg_o;
  wire lfsr14_16_20_reg_ce;
  wire [(1 - 1):0] lfsr15_17_20_next;
  reg [(1 - 1):0] lfsr15_17_20 = 1'b0;
  wire lfsr15_17_20_en;
  wire [(1 - 1):0] lfsr16_18_20_next;
  reg [(1 - 1):0] lfsr16_18_20 = 1'b0;
  wire lfsr16_18_20_en;
  wire [(1 - 1):0] lfsr17_19_20_next;
  wire [(1 - 1):0] lfsr17_19_20;
  wire lfsr17_19_20_en;
  wire [(1 - 1):0] lfsr17_19_20_reg_i;
  wire [(1 - 1):0] lfsr17_19_20_reg_o;
  wire lfsr17_19_20_reg_ce;
  wire [(1 - 1):0] lfsr18_20_20_next;
  reg [(1 - 1):0] lfsr18_20_20 = 1'b0;
  wire lfsr18_20_20_en;
  wire [(1 - 1):0] lfsr19_21_20_next;
  reg [(1 - 1):0] lfsr19_21_20 = 1'b0;
  wire lfsr19_21_20_en;
  wire [(1 - 1):0] lfsr20_22_20_next;
  wire [(1 - 1):0] lfsr20_22_20;
  wire lfsr20_22_20_en;
  wire [(1 - 1):0] lfsr20_22_20_reg_i;
  wire [(1 - 1):0] lfsr20_22_20_reg_o;
  wire lfsr20_22_20_reg_ce;
  wire [(1 - 1):0] lfsr21_23_20_next;
  reg [(1 - 1):0] lfsr21_23_20 = 1'b0;
  wire lfsr21_23_20_en;
  wire [(1 - 1):0] lfsr22_24_20_next;
  reg [(1 - 1):0] lfsr22_24_20 = 1'b0;
  wire lfsr22_24_20_en;
  wire [(1 - 1):0] lfsr23_25_20_next;
  wire [(1 - 1):0] lfsr23_25_20;
  wire lfsr23_25_20_en;
  wire [(1 - 1):0] lfsr23_25_20_reg_i;
  wire [(1 - 1):0] lfsr23_25_20_reg_o;
  wire lfsr23_25_20_reg_ce;
  wire [(24 - 1):0] concat_26_26;
  wire [(1 - 1):0] lfsr17_95_1_bit;
  wire [(1 - 1):0] lfsr22_100_1_bit;
  wire [(1 - 1):0] lfsr23_101_1_bit;
  reg [(1 - 1):0] lfsr23_join_53_1;
  reg lfsr23_join_53_1_en;
  reg [(1 - 1):0] lfsr4_join_53_1;
  reg lfsr4_join_53_1_en;
  reg [(1 - 1):0] lfsr21_join_53_1;
  reg lfsr21_join_53_1_en;
  reg [(1 - 1):0] lfsr9_join_53_1;
  reg lfsr9_join_53_1_en;
  reg [(1 - 1):0] lfsr17_join_53_1;
  reg lfsr17_join_53_1_en;
  reg [(1 - 1):0] lfsr0_join_53_1;
  reg lfsr0_join_53_1_en;
  reg [(1 - 1):0] lfsr16_join_53_1;
  reg lfsr16_join_53_1_en;
  reg [(1 - 1):0] lfsr7_join_53_1;
  reg lfsr7_join_53_1_en;
  reg [(1 - 1):0] lfsr19_join_53_1;
  reg lfsr19_join_53_1_en;
  reg [(1 - 1):0] lfsr3_join_53_1;
  reg lfsr3_join_53_1_en;
  reg [(1 - 1):0] lfsr10_join_53_1;
  reg lfsr10_join_53_1_en;
  reg [(1 - 1):0] lfsr2_join_53_1;
  reg lfsr2_join_53_1_en;
  reg [(1 - 1):0] lfsr22_join_53_1;
  reg lfsr22_join_53_1_en;
  reg [(1 - 1):0] lfsr13_join_53_1;
  reg lfsr13_join_53_1_en;
  reg [(1 - 1):0] lfsr8_join_53_1;
  reg lfsr8_join_53_1_en;
  reg [(1 - 1):0] lfsr12_join_53_1;
  reg lfsr12_join_53_1_en;
  reg [(1 - 1):0] lfsr15_join_53_1;
  reg lfsr15_join_53_1_en;
  reg [(1 - 1):0] lfsr20_join_53_1;
  reg lfsr20_join_53_1_en;
  reg [(1 - 1):0] lfsr6_join_53_1;
  reg lfsr6_join_53_1_en;
  reg [(1 - 1):0] lfsr14_join_53_1;
  reg lfsr14_join_53_1_en;
  reg [(1 - 1):0] lfsr1_join_53_1;
  reg lfsr1_join_53_1_en;
  reg [(1 - 1):0] lfsr11_join_53_1;
  reg lfsr11_join_53_1_en;
  reg [(1 - 1):0] lfsr5_join_53_1;
  reg lfsr5_join_53_1_en;
  reg [(1 - 1):0] lfsr18_join_53_1;
  reg lfsr18_join_53_1_en;
  assign en_1_63 = en;
  assign lfsr0_2_19_reg_i = lfsr0_2_19_next;
  assign lfsr0_2_19 = lfsr0_2_19_reg_o;
  assign lfsr0_2_19_reg_ce = (ce && lfsr0_2_19_en);
  defparam lfsr0_2_19_reg_inst.init_index = 2;
  defparam lfsr0_2_19_reg_inst.init_value = 1'b1;
  defparam lfsr0_2_19_reg_inst.latency = 1;
  defparam lfsr0_2_19_reg_inst.width = 1;
  synth_reg_w_init lfsr0_2_19_reg_inst(.ce(lfsr0_2_19_reg_ce), .clk(clk), .clr(clr), .i(lfsr0_2_19_reg_i), .o(lfsr0_2_19_reg_o));
  always @(posedge clk)
    begin:proc_lfsr1_3_19
      if (((ce == 1'b1) && (lfsr1_3_19_en == 1'b1)))
        begin
          lfsr1_3_19 <= lfsr1_3_19_next;
        end
    end
  always @(posedge clk)
    begin:proc_lfsr2_4_19
      if (((ce == 1'b1) && (lfsr2_4_19_en == 1'b1)))
        begin
          lfsr2_4_19 <= lfsr2_4_19_next;
        end
    end
  assign lfsr3_5_19_reg_i = lfsr3_5_19_next;
  assign lfsr3_5_19 = lfsr3_5_19_reg_o;
  assign lfsr3_5_19_reg_ce = (ce && lfsr3_5_19_en);
  defparam lfsr3_5_19_reg_inst.init_index = 2;
  defparam lfsr3_5_19_reg_inst.init_value = 1'b1;
  defparam lfsr3_5_19_reg_inst.latency = 1;
  defparam lfsr3_5_19_reg_inst.width = 1;
  synth_reg_w_init lfsr3_5_19_reg_inst(.ce(lfsr3_5_19_reg_ce), .clk(clk), .clr(clr), .i(lfsr3_5_19_reg_i), .o(lfsr3_5_19_reg_o));
  always @(posedge clk)
    begin:proc_lfsr4_6_19
      if (((ce == 1'b1) && (lfsr4_6_19_en == 1'b1)))
        begin
          lfsr4_6_19 <= lfsr4_6_19_next;
        end
    end
  assign lfsr5_7_19_reg_i = lfsr5_7_19_next;
  assign lfsr5_7_19 = lfsr5_7_19_reg_o;
  assign lfsr5_7_19_reg_ce = (ce && lfsr5_7_19_en);
  defparam lfsr5_7_19_reg_inst.init_index = 2;
  defparam lfsr5_7_19_reg_inst.init_value = 1'b1;
  defparam lfsr5_7_19_reg_inst.latency = 1;
  defparam lfsr5_7_19_reg_inst.width = 1;
  synth_reg_w_init lfsr5_7_19_reg_inst(.ce(lfsr5_7_19_reg_ce), .clk(clk), .clr(clr), .i(lfsr5_7_19_reg_i), .o(lfsr5_7_19_reg_o));
  assign lfsr6_8_19_reg_i = lfsr6_8_19_next;
  assign lfsr6_8_19 = lfsr6_8_19_reg_o;
  assign lfsr6_8_19_reg_ce = (ce && lfsr6_8_19_en);
  defparam lfsr6_8_19_reg_inst.init_index = 2;
  defparam lfsr6_8_19_reg_inst.init_value = 1'b1;
  defparam lfsr6_8_19_reg_inst.latency = 1;
  defparam lfsr6_8_19_reg_inst.width = 1;
  synth_reg_w_init lfsr6_8_19_reg_inst(.ce(lfsr6_8_19_reg_ce), .clk(clk), .clr(clr), .i(lfsr6_8_19_reg_i), .o(lfsr6_8_19_reg_o));
  assign lfsr7_9_19_reg_i = lfsr7_9_19_next;
  assign lfsr7_9_19 = lfsr7_9_19_reg_o;
  assign lfsr7_9_19_reg_ce = (ce && lfsr7_9_19_en);
  defparam lfsr7_9_19_reg_inst.init_index = 2;
  defparam lfsr7_9_19_reg_inst.init_value = 1'b1;
  defparam lfsr7_9_19_reg_inst.latency = 1;
  defparam lfsr7_9_19_reg_inst.width = 1;
  synth_reg_w_init lfsr7_9_19_reg_inst(.ce(lfsr7_9_19_reg_ce), .clk(clk), .clr(clr), .i(lfsr7_9_19_reg_i), .o(lfsr7_9_19_reg_o));
  always @(posedge clk)
    begin:proc_lfsr8_10_19
      if (((ce == 1'b1) && (lfsr8_10_19_en == 1'b1)))
        begin
          lfsr8_10_19 <= lfsr8_10_19_next;
        end
    end
  always @(posedge clk)
    begin:proc_lfsr9_11_19
      if (((ce == 1'b1) && (lfsr9_11_19_en == 1'b1)))
        begin
          lfsr9_11_19 <= lfsr9_11_19_next;
        end
    end
  assign lfsr10_12_20_reg_i = lfsr10_12_20_next;
  assign lfsr10_12_20 = lfsr10_12_20_reg_o;
  assign lfsr10_12_20_reg_ce = (ce && lfsr10_12_20_en);
  defparam lfsr10_12_20_reg_inst.init_index = 2;
  defparam lfsr10_12_20_reg_inst.init_value = 1'b1;
  defparam lfsr10_12_20_reg_inst.latency = 1;
  defparam lfsr10_12_20_reg_inst.width = 1;
  synth_reg_w_init lfsr10_12_20_reg_inst(.ce(lfsr10_12_20_reg_ce), .clk(clk), .clr(clr), .i(lfsr10_12_20_reg_i), .o(lfsr10_12_20_reg_o));
  assign lfsr11_13_20_reg_i = lfsr11_13_20_next;
  assign lfsr11_13_20 = lfsr11_13_20_reg_o;
  assign lfsr11_13_20_reg_ce = (ce && lfsr11_13_20_en);
  defparam lfsr11_13_20_reg_inst.init_index = 2;
  defparam lfsr11_13_20_reg_inst.init_value = 1'b1;
  defparam lfsr11_13_20_reg_inst.latency = 1;
  defparam lfsr11_13_20_reg_inst.width = 1;
  synth_reg_w_init lfsr11_13_20_reg_inst(.ce(lfsr11_13_20_reg_ce), .clk(clk), .clr(clr), .i(lfsr11_13_20_reg_i), .o(lfsr11_13_20_reg_o));
  assign lfsr12_14_20_reg_i = lfsr12_14_20_next;
  assign lfsr12_14_20 = lfsr12_14_20_reg_o;
  assign lfsr12_14_20_reg_ce = (ce && lfsr12_14_20_en);
  defparam lfsr12_14_20_reg_inst.init_index = 2;
  defparam lfsr12_14_20_reg_inst.init_value = 1'b1;
  defparam lfsr12_14_20_reg_inst.latency = 1;
  defparam lfsr12_14_20_reg_inst.width = 1;
  synth_reg_w_init lfsr12_14_20_reg_inst(.ce(lfsr12_14_20_reg_ce), .clk(clk), .clr(clr), .i(lfsr12_14_20_reg_i), .o(lfsr12_14_20_reg_o));
  assign lfsr13_15_20_reg_i = lfsr13_15_20_next;
  assign lfsr13_15_20 = lfsr13_15_20_reg_o;
  assign lfsr13_15_20_reg_ce = (ce && lfsr13_15_20_en);
  defparam lfsr13_15_20_reg_inst.init_index = 2;
  defparam lfsr13_15_20_reg_inst.init_value = 1'b1;
  defparam lfsr13_15_20_reg_inst.latency = 1;
  defparam lfsr13_15_20_reg_inst.width = 1;
  synth_reg_w_init lfsr13_15_20_reg_inst(.ce(lfsr13_15_20_reg_ce), .clk(clk), .clr(clr), .i(lfsr13_15_20_reg_i), .o(lfsr13_15_20_reg_o));
  assign lfsr14_16_20_reg_i = lfsr14_16_20_next;
  assign lfsr14_16_20 = lfsr14_16_20_reg_o;
  assign lfsr14_16_20_reg_ce = (ce && lfsr14_16_20_en);
  defparam lfsr14_16_20_reg_inst.init_index = 2;
  defparam lfsr14_16_20_reg_inst.init_value = 1'b1;
  defparam lfsr14_16_20_reg_inst.latency = 1;
  defparam lfsr14_16_20_reg_inst.width = 1;
  synth_reg_w_init lfsr14_16_20_reg_inst(.ce(lfsr14_16_20_reg_ce), .clk(clk), .clr(clr), .i(lfsr14_16_20_reg_i), .o(lfsr14_16_20_reg_o));
  always @(posedge clk)
    begin:proc_lfsr15_17_20
      if (((ce == 1'b1) && (lfsr15_17_20_en == 1'b1)))
        begin
          lfsr15_17_20 <= lfsr15_17_20_next;
        end
    end
  always @(posedge clk)
    begin:proc_lfsr16_18_20
      if (((ce == 1'b1) && (lfsr16_18_20_en == 1'b1)))
        begin
          lfsr16_18_20 <= lfsr16_18_20_next;
        end
    end
  assign lfsr17_19_20_reg_i = lfsr17_19_20_next;
  assign lfsr17_19_20 = lfsr17_19_20_reg_o;
  assign lfsr17_19_20_reg_ce = (ce && lfsr17_19_20_en);
  defparam lfsr17_19_20_reg_inst.init_index = 2;
  defparam lfsr17_19_20_reg_inst.init_value = 1'b1;
  defparam lfsr17_19_20_reg_inst.latency = 1;
  defparam lfsr17_19_20_reg_inst.width = 1;
  synth_reg_w_init lfsr17_19_20_reg_inst(.ce(lfsr17_19_20_reg_ce), .clk(clk), .clr(clr), .i(lfsr17_19_20_reg_i), .o(lfsr17_19_20_reg_o));
  always @(posedge clk)
    begin:proc_lfsr18_20_20
      if (((ce == 1'b1) && (lfsr18_20_20_en == 1'b1)))
        begin
          lfsr18_20_20 <= lfsr18_20_20_next;
        end
    end
  always @(posedge clk)
    begin:proc_lfsr19_21_20
      if (((ce == 1'b1) && (lfsr19_21_20_en == 1'b1)))
        begin
          lfsr19_21_20 <= lfsr19_21_20_next;
        end
    end
  assign lfsr20_22_20_reg_i = lfsr20_22_20_next;
  assign lfsr20_22_20 = lfsr20_22_20_reg_o;
  assign lfsr20_22_20_reg_ce = (ce && lfsr20_22_20_en);
  defparam lfsr20_22_20_reg_inst.init_index = 2;
  defparam lfsr20_22_20_reg_inst.init_value = 1'b1;
  defparam lfsr20_22_20_reg_inst.latency = 1;
  defparam lfsr20_22_20_reg_inst.width = 1;
  synth_reg_w_init lfsr20_22_20_reg_inst(.ce(lfsr20_22_20_reg_ce), .clk(clk), .clr(clr), .i(lfsr20_22_20_reg_i), .o(lfsr20_22_20_reg_o));
  always @(posedge clk)
    begin:proc_lfsr21_23_20
      if (((ce == 1'b1) && (lfsr21_23_20_en == 1'b1)))
        begin
          lfsr21_23_20 <= lfsr21_23_20_next;
        end
    end
  always @(posedge clk)
    begin:proc_lfsr22_24_20
      if (((ce == 1'b1) && (lfsr22_24_20_en == 1'b1)))
        begin
          lfsr22_24_20 <= lfsr22_24_20_next;
        end
    end
  assign lfsr23_25_20_reg_i = lfsr23_25_20_next;
  assign lfsr23_25_20 = lfsr23_25_20_reg_o;
  assign lfsr23_25_20_reg_ce = (ce && lfsr23_25_20_en);
  defparam lfsr23_25_20_reg_inst.init_index = 2;
  defparam lfsr23_25_20_reg_inst.init_value = 1'b1;
  defparam lfsr23_25_20_reg_inst.latency = 1;
  defparam lfsr23_25_20_reg_inst.width = 1;
  synth_reg_w_init lfsr23_25_20_reg_inst(.ce(lfsr23_25_20_reg_ce), .clk(clk), .clr(clr), .i(lfsr23_25_20_reg_i), .o(lfsr23_25_20_reg_o));
  assign concat_26_26 = {lfsr23_25_20, lfsr22_24_20, lfsr21_23_20, lfsr20_22_20, lfsr19_21_20, lfsr18_20_20, lfsr17_19_20, lfsr16_18_20, lfsr15_17_20, lfsr14_16_20, lfsr13_15_20, lfsr12_14_20, lfsr11_13_20, lfsr10_12_20, lfsr9_11_19, lfsr8_10_19, lfsr7_9_19, lfsr6_8_19, lfsr5_7_19, lfsr4_6_19, lfsr3_5_19, lfsr2_4_19, lfsr1_3_19, lfsr0_2_19};
  assign lfsr17_95_1_bit = lfsr16_18_20 ^ lfsr23_25_20;
  assign lfsr22_100_1_bit = lfsr21_23_20 ^ lfsr23_25_20;
  assign lfsr23_101_1_bit = lfsr22_24_20 ^ lfsr23_25_20;
  always @(en_1_63 or lfsr0_2_19 or lfsr10_12_20 or lfsr11_13_20 or lfsr12_14_20 or lfsr13_15_20 or lfsr14_16_20 or lfsr15_17_20 or lfsr17_19_20 or lfsr17_95_1_bit or lfsr18_20_20 or lfsr19_21_20 or lfsr1_3_19 or lfsr20_22_20 or lfsr22_100_1_bit or lfsr23_101_1_bit or lfsr23_25_20 or lfsr2_4_19 or lfsr3_5_19 or lfsr4_6_19 or lfsr5_7_19 or lfsr6_8_19 or lfsr7_9_19 or lfsr8_10_19 or lfsr9_11_19)
    begin:proc_if_53_1
      if (en_1_63)
        begin
          lfsr23_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr23_join_53_1_en = 1'b0;
        end
      lfsr23_join_53_1 = lfsr23_101_1_bit;
      if (en_1_63)
        begin
          lfsr4_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr4_join_53_1_en = 1'b0;
        end
      lfsr4_join_53_1 = lfsr3_5_19;
      if (en_1_63)
        begin
          lfsr21_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr21_join_53_1_en = 1'b0;
        end
      lfsr21_join_53_1 = lfsr20_22_20;
      if (en_1_63)
        begin
          lfsr9_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr9_join_53_1_en = 1'b0;
        end
      lfsr9_join_53_1 = lfsr8_10_19;
      if (en_1_63)
        begin
          lfsr17_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr17_join_53_1_en = 1'b0;
        end
      lfsr17_join_53_1 = lfsr17_95_1_bit;
      if (en_1_63)
        begin
          lfsr0_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr0_join_53_1_en = 1'b0;
        end
      lfsr0_join_53_1 = lfsr23_25_20;
      if (en_1_63)
        begin
          lfsr16_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr16_join_53_1_en = 1'b0;
        end
      lfsr16_join_53_1 = lfsr15_17_20;
      if (en_1_63)
        begin
          lfsr7_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr7_join_53_1_en = 1'b0;
        end
      lfsr7_join_53_1 = lfsr6_8_19;
      if (en_1_63)
        begin
          lfsr19_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr19_join_53_1_en = 1'b0;
        end
      lfsr19_join_53_1 = lfsr18_20_20;
      if (en_1_63)
        begin
          lfsr3_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr3_join_53_1_en = 1'b0;
        end
      lfsr3_join_53_1 = lfsr2_4_19;
      if (en_1_63)
        begin
          lfsr10_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr10_join_53_1_en = 1'b0;
        end
      lfsr10_join_53_1 = lfsr9_11_19;
      if (en_1_63)
        begin
          lfsr2_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr2_join_53_1_en = 1'b0;
        end
      lfsr2_join_53_1 = lfsr1_3_19;
      if (en_1_63)
        begin
          lfsr22_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr22_join_53_1_en = 1'b0;
        end
      lfsr22_join_53_1 = lfsr22_100_1_bit;
      if (en_1_63)
        begin
          lfsr13_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr13_join_53_1_en = 1'b0;
        end
      lfsr13_join_53_1 = lfsr12_14_20;
      if (en_1_63)
        begin
          lfsr8_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr8_join_53_1_en = 1'b0;
        end
      lfsr8_join_53_1 = lfsr7_9_19;
      if (en_1_63)
        begin
          lfsr12_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr12_join_53_1_en = 1'b0;
        end
      lfsr12_join_53_1 = lfsr11_13_20;
      if (en_1_63)
        begin
          lfsr15_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr15_join_53_1_en = 1'b0;
        end
      lfsr15_join_53_1 = lfsr14_16_20;
      if (en_1_63)
        begin
          lfsr20_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr20_join_53_1_en = 1'b0;
        end
      lfsr20_join_53_1 = lfsr19_21_20;
      if (en_1_63)
        begin
          lfsr6_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr6_join_53_1_en = 1'b0;
        end
      lfsr6_join_53_1 = lfsr5_7_19;
      if (en_1_63)
        begin
          lfsr14_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr14_join_53_1_en = 1'b0;
        end
      lfsr14_join_53_1 = lfsr13_15_20;
      if (en_1_63)
        begin
          lfsr1_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr1_join_53_1_en = 1'b0;
        end
      lfsr1_join_53_1 = lfsr0_2_19;
      if (en_1_63)
        begin
          lfsr11_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr11_join_53_1_en = 1'b0;
        end
      lfsr11_join_53_1 = lfsr10_12_20;
      if (en_1_63)
        begin
          lfsr5_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr5_join_53_1_en = 1'b0;
        end
      lfsr5_join_53_1 = lfsr4_6_19;
      if (en_1_63)
        begin
          lfsr18_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr18_join_53_1_en = 1'b0;
        end
      lfsr18_join_53_1 = lfsr17_19_20;
    end
  assign lfsr0_2_19_next = lfsr23_25_20;
  assign lfsr0_2_19_en = lfsr0_join_53_1_en;
  assign lfsr1_3_19_next = lfsr0_2_19;
  assign lfsr1_3_19_en = lfsr1_join_53_1_en;
  assign lfsr2_4_19_next = lfsr1_3_19;
  assign lfsr2_4_19_en = lfsr2_join_53_1_en;
  assign lfsr3_5_19_next = lfsr2_4_19;
  assign lfsr3_5_19_en = lfsr3_join_53_1_en;
  assign lfsr4_6_19_next = lfsr3_5_19;
  assign lfsr4_6_19_en = lfsr4_join_53_1_en;
  assign lfsr5_7_19_next = lfsr4_6_19;
  assign lfsr5_7_19_en = lfsr5_join_53_1_en;
  assign lfsr6_8_19_next = lfsr5_7_19;
  assign lfsr6_8_19_en = lfsr6_join_53_1_en;
  assign lfsr7_9_19_next = lfsr6_8_19;
  assign lfsr7_9_19_en = lfsr7_join_53_1_en;
  assign lfsr8_10_19_next = lfsr7_9_19;
  assign lfsr8_10_19_en = lfsr8_join_53_1_en;
  assign lfsr9_11_19_next = lfsr8_10_19;
  assign lfsr9_11_19_en = lfsr9_join_53_1_en;
  assign lfsr10_12_20_next = lfsr9_11_19;
  assign lfsr10_12_20_en = lfsr10_join_53_1_en;
  assign lfsr11_13_20_next = lfsr10_12_20;
  assign lfsr11_13_20_en = lfsr11_join_53_1_en;
  assign lfsr12_14_20_next = lfsr11_13_20;
  assign lfsr12_14_20_en = lfsr12_join_53_1_en;
  assign lfsr13_15_20_next = lfsr12_14_20;
  assign lfsr13_15_20_en = lfsr13_join_53_1_en;
  assign lfsr14_16_20_next = lfsr13_15_20;
  assign lfsr14_16_20_en = lfsr14_join_53_1_en;
  assign lfsr15_17_20_next = lfsr14_16_20;
  assign lfsr15_17_20_en = lfsr15_join_53_1_en;
  assign lfsr16_18_20_next = lfsr15_17_20;
  assign lfsr16_18_20_en = lfsr16_join_53_1_en;
  assign lfsr17_19_20_next = lfsr17_95_1_bit;
  assign lfsr17_19_20_en = lfsr17_join_53_1_en;
  assign lfsr18_20_20_next = lfsr17_19_20;
  assign lfsr18_20_20_en = lfsr18_join_53_1_en;
  assign lfsr19_21_20_next = lfsr18_20_20;
  assign lfsr19_21_20_en = lfsr19_join_53_1_en;
  assign lfsr20_22_20_next = lfsr19_21_20;
  assign lfsr20_22_20_en = lfsr20_join_53_1_en;
  assign lfsr21_23_20_next = lfsr20_22_20;
  assign lfsr21_23_20_en = lfsr21_join_53_1_en;
  assign lfsr22_24_20_next = lfsr22_100_1_bit;
  assign lfsr22_24_20_en = lfsr22_join_53_1_en;
  assign lfsr23_25_20_next = lfsr23_101_1_bit;
  assign lfsr23_25_20_en = lfsr23_join_53_1_en;
  assign dout = concat_26_26;
endmodule
`timescale 1 ns / 10 ps
module sysgen_lfsr_f01f13da39 (
  input [(1 - 1):0] en,
  output [(24 - 1):0] dout,
  input clk,
  input ce,
  input clr);
  wire en_1_63;
  wire [(1 - 1):0] lfsr0_2_19_next;
  reg [(1 - 1):0] lfsr0_2_19 = 1'b0;
  wire lfsr0_2_19_en;
  wire [(1 - 1):0] lfsr1_3_19_next;
  reg [(1 - 1):0] lfsr1_3_19 = 1'b0;
  wire lfsr1_3_19_en;
  wire [(1 - 1):0] lfsr2_4_19_next;
  wire [(1 - 1):0] lfsr2_4_19;
  wire lfsr2_4_19_en;
  wire [(1 - 1):0] lfsr2_4_19_reg_i;
  wire [(1 - 1):0] lfsr2_4_19_reg_o;
  wire lfsr2_4_19_reg_ce;
  wire [(1 - 1):0] lfsr3_5_19_next;
  reg [(1 - 1):0] lfsr3_5_19 = 1'b0;
  wire lfsr3_5_19_en;
  wire [(1 - 1):0] lfsr4_6_19_next;
  reg [(1 - 1):0] lfsr4_6_19 = 1'b0;
  wire lfsr4_6_19_en;
  wire [(1 - 1):0] lfsr5_7_19_next;
  reg [(1 - 1):0] lfsr5_7_19 = 1'b0;
  wire lfsr5_7_19_en;
  wire [(1 - 1):0] lfsr6_8_19_next;
  reg [(1 - 1):0] lfsr6_8_19 = 1'b0;
  wire lfsr6_8_19_en;
  wire [(1 - 1):0] lfsr7_9_19_next;
  wire [(1 - 1):0] lfsr7_9_19;
  wire lfsr7_9_19_en;
  wire [(1 - 1):0] lfsr7_9_19_reg_i;
  wire [(1 - 1):0] lfsr7_9_19_reg_o;
  wire lfsr7_9_19_reg_ce;
  wire [(1 - 1):0] lfsr8_10_19_next;
  wire [(1 - 1):0] lfsr8_10_19;
  wire lfsr8_10_19_en;
  wire [(1 - 1):0] lfsr8_10_19_reg_i;
  wire [(1 - 1):0] lfsr8_10_19_reg_o;
  wire lfsr8_10_19_reg_ce;
  wire [(1 - 1):0] lfsr9_11_19_next;
  reg [(1 - 1):0] lfsr9_11_19 = 1'b0;
  wire lfsr9_11_19_en;
  wire [(1 - 1):0] lfsr10_12_20_next;
  wire [(1 - 1):0] lfsr10_12_20;
  wire lfsr10_12_20_en;
  wire [(1 - 1):0] lfsr10_12_20_reg_i;
  wire [(1 - 1):0] lfsr10_12_20_reg_o;
  wire lfsr10_12_20_reg_ce;
  wire [(1 - 1):0] lfsr11_13_20_next;
  wire [(1 - 1):0] lfsr11_13_20;
  wire lfsr11_13_20_en;
  wire [(1 - 1):0] lfsr11_13_20_reg_i;
  wire [(1 - 1):0] lfsr11_13_20_reg_o;
  wire lfsr11_13_20_reg_ce;
  wire [(1 - 1):0] lfsr12_14_20_next;
  reg [(1 - 1):0] lfsr12_14_20 = 1'b0;
  wire lfsr12_14_20_en;
  wire [(1 - 1):0] lfsr13_15_20_next;
  wire [(1 - 1):0] lfsr13_15_20;
  wire lfsr13_15_20_en;
  wire [(1 - 1):0] lfsr13_15_20_reg_i;
  wire [(1 - 1):0] lfsr13_15_20_reg_o;
  wire lfsr13_15_20_reg_ce;
  wire [(1 - 1):0] lfsr14_16_20_next;
  wire [(1 - 1):0] lfsr14_16_20;
  wire lfsr14_16_20_en;
  wire [(1 - 1):0] lfsr14_16_20_reg_i;
  wire [(1 - 1):0] lfsr14_16_20_reg_o;
  wire lfsr14_16_20_reg_ce;
  wire [(1 - 1):0] lfsr15_17_20_next;
  reg [(1 - 1):0] lfsr15_17_20 = 1'b0;
  wire lfsr15_17_20_en;
  wire [(1 - 1):0] lfsr16_18_20_next;
  reg [(1 - 1):0] lfsr16_18_20 = 1'b0;
  wire lfsr16_18_20_en;
  wire [(1 - 1):0] lfsr17_19_20_next;
  reg [(1 - 1):0] lfsr17_19_20 = 1'b0;
  wire lfsr17_19_20_en;
  wire [(1 - 1):0] lfsr18_20_20_next;
  wire [(1 - 1):0] lfsr18_20_20;
  wire lfsr18_20_20_en;
  wire [(1 - 1):0] lfsr18_20_20_reg_i;
  wire [(1 - 1):0] lfsr18_20_20_reg_o;
  wire lfsr18_20_20_reg_ce;
  wire [(1 - 1):0] lfsr19_21_20_next;
  wire [(1 - 1):0] lfsr19_21_20;
  wire lfsr19_21_20_en;
  wire [(1 - 1):0] lfsr19_21_20_reg_i;
  wire [(1 - 1):0] lfsr19_21_20_reg_o;
  wire lfsr19_21_20_reg_ce;
  wire [(1 - 1):0] lfsr20_22_20_next;
  reg [(1 - 1):0] lfsr20_22_20 = 1'b0;
  wire lfsr20_22_20_en;
  wire [(1 - 1):0] lfsr21_23_20_next;
  wire [(1 - 1):0] lfsr21_23_20;
  wire lfsr21_23_20_en;
  wire [(1 - 1):0] lfsr21_23_20_reg_i;
  wire [(1 - 1):0] lfsr21_23_20_reg_o;
  wire lfsr21_23_20_reg_ce;
  wire [(1 - 1):0] lfsr22_24_20_next;
  wire [(1 - 1):0] lfsr22_24_20;
  wire lfsr22_24_20_en;
  wire [(1 - 1):0] lfsr22_24_20_reg_i;
  wire [(1 - 1):0] lfsr22_24_20_reg_o;
  wire lfsr22_24_20_reg_ce;
  wire [(1 - 1):0] lfsr23_25_20_next;
  reg [(1 - 1):0] lfsr23_25_20 = 1'b0;
  wire lfsr23_25_20_en;
  wire [(24 - 1):0] concat_26_26;
  wire [(1 - 1):0] lfsr17_95_1_bit;
  wire [(1 - 1):0] lfsr22_100_1_bit;
  wire [(1 - 1):0] lfsr23_101_1_bit;
  reg [(1 - 1):0] lfsr20_join_53_1;
  reg lfsr20_join_53_1_en;
  reg [(1 - 1):0] lfsr3_join_53_1;
  reg lfsr3_join_53_1_en;
  reg [(1 - 1):0] lfsr18_join_53_1;
  reg lfsr18_join_53_1_en;
  reg [(1 - 1):0] lfsr4_join_53_1;
  reg lfsr4_join_53_1_en;
  reg [(1 - 1):0] lfsr19_join_53_1;
  reg lfsr19_join_53_1_en;
  reg [(1 - 1):0] lfsr11_join_53_1;
  reg lfsr11_join_53_1_en;
  reg [(1 - 1):0] lfsr22_join_53_1;
  reg lfsr22_join_53_1_en;
  reg [(1 - 1):0] lfsr9_join_53_1;
  reg lfsr9_join_53_1_en;
  reg [(1 - 1):0] lfsr0_join_53_1;
  reg lfsr0_join_53_1_en;
  reg [(1 - 1):0] lfsr15_join_53_1;
  reg lfsr15_join_53_1_en;
  reg [(1 - 1):0] lfsr10_join_53_1;
  reg lfsr10_join_53_1_en;
  reg [(1 - 1):0] lfsr16_join_53_1;
  reg lfsr16_join_53_1_en;
  reg [(1 - 1):0] lfsr7_join_53_1;
  reg lfsr7_join_53_1_en;
  reg [(1 - 1):0] lfsr8_join_53_1;
  reg lfsr8_join_53_1_en;
  reg [(1 - 1):0] lfsr6_join_53_1;
  reg lfsr6_join_53_1_en;
  reg [(1 - 1):0] lfsr21_join_53_1;
  reg lfsr21_join_53_1_en;
  reg [(1 - 1):0] lfsr17_join_53_1;
  reg lfsr17_join_53_1_en;
  reg [(1 - 1):0] lfsr14_join_53_1;
  reg lfsr14_join_53_1_en;
  reg [(1 - 1):0] lfsr12_join_53_1;
  reg lfsr12_join_53_1_en;
  reg [(1 - 1):0] lfsr5_join_53_1;
  reg lfsr5_join_53_1_en;
  reg [(1 - 1):0] lfsr23_join_53_1;
  reg lfsr23_join_53_1_en;
  reg [(1 - 1):0] lfsr13_join_53_1;
  reg lfsr13_join_53_1_en;
  reg [(1 - 1):0] lfsr1_join_53_1;
  reg lfsr1_join_53_1_en;
  reg [(1 - 1):0] lfsr2_join_53_1;
  reg lfsr2_join_53_1_en;
  assign en_1_63 = en;
  always @(posedge clk)
    begin:proc_lfsr0_2_19
      if (((ce == 1'b1) && (lfsr0_2_19_en == 1'b1)))
        begin
          lfsr0_2_19 <= lfsr0_2_19_next;
        end
    end
  always @(posedge clk)
    begin:proc_lfsr1_3_19
      if (((ce == 1'b1) && (lfsr1_3_19_en == 1'b1)))
        begin
          lfsr1_3_19 <= lfsr1_3_19_next;
        end
    end
  assign lfsr2_4_19_reg_i = lfsr2_4_19_next;
  assign lfsr2_4_19 = lfsr2_4_19_reg_o;
  assign lfsr2_4_19_reg_ce = (ce && lfsr2_4_19_en);
  defparam lfsr2_4_19_reg_inst.init_index = 2;
  defparam lfsr2_4_19_reg_inst.init_value = 1'b1;
  defparam lfsr2_4_19_reg_inst.latency = 1;
  defparam lfsr2_4_19_reg_inst.width = 1;
  synth_reg_w_init lfsr2_4_19_reg_inst(.ce(lfsr2_4_19_reg_ce), .clk(clk), .clr(clr), .i(lfsr2_4_19_reg_i), .o(lfsr2_4_19_reg_o));
  always @(posedge clk)
    begin:proc_lfsr3_5_19
      if (((ce == 1'b1) && (lfsr3_5_19_en == 1'b1)))
        begin
          lfsr3_5_19 <= lfsr3_5_19_next;
        end
    end
  always @(posedge clk)
    begin:proc_lfsr4_6_19
      if (((ce == 1'b1) && (lfsr4_6_19_en == 1'b1)))
        begin
          lfsr4_6_19 <= lfsr4_6_19_next;
        end
    end
  always @(posedge clk)
    begin:proc_lfsr5_7_19
      if (((ce == 1'b1) && (lfsr5_7_19_en == 1'b1)))
        begin
          lfsr5_7_19 <= lfsr5_7_19_next;
        end
    end
  always @(posedge clk)
    begin:proc_lfsr6_8_19
      if (((ce == 1'b1) && (lfsr6_8_19_en == 1'b1)))
        begin
          lfsr6_8_19 <= lfsr6_8_19_next;
        end
    end
  assign lfsr7_9_19_reg_i = lfsr7_9_19_next;
  assign lfsr7_9_19 = lfsr7_9_19_reg_o;
  assign lfsr7_9_19_reg_ce = (ce && lfsr7_9_19_en);
  defparam lfsr7_9_19_reg_inst.init_index = 2;
  defparam lfsr7_9_19_reg_inst.init_value = 1'b1;
  defparam lfsr7_9_19_reg_inst.latency = 1;
  defparam lfsr7_9_19_reg_inst.width = 1;
  synth_reg_w_init lfsr7_9_19_reg_inst(.ce(lfsr7_9_19_reg_ce), .clk(clk), .clr(clr), .i(lfsr7_9_19_reg_i), .o(lfsr7_9_19_reg_o));
  assign lfsr8_10_19_reg_i = lfsr8_10_19_next;
  assign lfsr8_10_19 = lfsr8_10_19_reg_o;
  assign lfsr8_10_19_reg_ce = (ce && lfsr8_10_19_en);
  defparam lfsr8_10_19_reg_inst.init_index = 2;
  defparam lfsr8_10_19_reg_inst.init_value = 1'b1;
  defparam lfsr8_10_19_reg_inst.latency = 1;
  defparam lfsr8_10_19_reg_inst.width = 1;
  synth_reg_w_init lfsr8_10_19_reg_inst(.ce(lfsr8_10_19_reg_ce), .clk(clk), .clr(clr), .i(lfsr8_10_19_reg_i), .o(lfsr8_10_19_reg_o));
  always @(posedge clk)
    begin:proc_lfsr9_11_19
      if (((ce == 1'b1) && (lfsr9_11_19_en == 1'b1)))
        begin
          lfsr9_11_19 <= lfsr9_11_19_next;
        end
    end
  assign lfsr10_12_20_reg_i = lfsr10_12_20_next;
  assign lfsr10_12_20 = lfsr10_12_20_reg_o;
  assign lfsr10_12_20_reg_ce = (ce && lfsr10_12_20_en);
  defparam lfsr10_12_20_reg_inst.init_index = 2;
  defparam lfsr10_12_20_reg_inst.init_value = 1'b1;
  defparam lfsr10_12_20_reg_inst.latency = 1;
  defparam lfsr10_12_20_reg_inst.width = 1;
  synth_reg_w_init lfsr10_12_20_reg_inst(.ce(lfsr10_12_20_reg_ce), .clk(clk), .clr(clr), .i(lfsr10_12_20_reg_i), .o(lfsr10_12_20_reg_o));
  assign lfsr11_13_20_reg_i = lfsr11_13_20_next;
  assign lfsr11_13_20 = lfsr11_13_20_reg_o;
  assign lfsr11_13_20_reg_ce = (ce && lfsr11_13_20_en);
  defparam lfsr11_13_20_reg_inst.init_index = 2;
  defparam lfsr11_13_20_reg_inst.init_value = 1'b1;
  defparam lfsr11_13_20_reg_inst.latency = 1;
  defparam lfsr11_13_20_reg_inst.width = 1;
  synth_reg_w_init lfsr11_13_20_reg_inst(.ce(lfsr11_13_20_reg_ce), .clk(clk), .clr(clr), .i(lfsr11_13_20_reg_i), .o(lfsr11_13_20_reg_o));
  always @(posedge clk)
    begin:proc_lfsr12_14_20
      if (((ce == 1'b1) && (lfsr12_14_20_en == 1'b1)))
        begin
          lfsr12_14_20 <= lfsr12_14_20_next;
        end
    end
  assign lfsr13_15_20_reg_i = lfsr13_15_20_next;
  assign lfsr13_15_20 = lfsr13_15_20_reg_o;
  assign lfsr13_15_20_reg_ce = (ce && lfsr13_15_20_en);
  defparam lfsr13_15_20_reg_inst.init_index = 2;
  defparam lfsr13_15_20_reg_inst.init_value = 1'b1;
  defparam lfsr13_15_20_reg_inst.latency = 1;
  defparam lfsr13_15_20_reg_inst.width = 1;
  synth_reg_w_init lfsr13_15_20_reg_inst(.ce(lfsr13_15_20_reg_ce), .clk(clk), .clr(clr), .i(lfsr13_15_20_reg_i), .o(lfsr13_15_20_reg_o));
  assign lfsr14_16_20_reg_i = lfsr14_16_20_next;
  assign lfsr14_16_20 = lfsr14_16_20_reg_o;
  assign lfsr14_16_20_reg_ce = (ce && lfsr14_16_20_en);
  defparam lfsr14_16_20_reg_inst.init_index = 2;
  defparam lfsr14_16_20_reg_inst.init_value = 1'b1;
  defparam lfsr14_16_20_reg_inst.latency = 1;
  defparam lfsr14_16_20_reg_inst.width = 1;
  synth_reg_w_init lfsr14_16_20_reg_inst(.ce(lfsr14_16_20_reg_ce), .clk(clk), .clr(clr), .i(lfsr14_16_20_reg_i), .o(lfsr14_16_20_reg_o));
  always @(posedge clk)
    begin:proc_lfsr15_17_20
      if (((ce == 1'b1) && (lfsr15_17_20_en == 1'b1)))
        begin
          lfsr15_17_20 <= lfsr15_17_20_next;
        end
    end
  always @(posedge clk)
    begin:proc_lfsr16_18_20
      if (((ce == 1'b1) && (lfsr16_18_20_en == 1'b1)))
        begin
          lfsr16_18_20 <= lfsr16_18_20_next;
        end
    end
  always @(posedge clk)
    begin:proc_lfsr17_19_20
      if (((ce == 1'b1) && (lfsr17_19_20_en == 1'b1)))
        begin
          lfsr17_19_20 <= lfsr17_19_20_next;
        end
    end
  assign lfsr18_20_20_reg_i = lfsr18_20_20_next;
  assign lfsr18_20_20 = lfsr18_20_20_reg_o;
  assign lfsr18_20_20_reg_ce = (ce && lfsr18_20_20_en);
  defparam lfsr18_20_20_reg_inst.init_index = 2;
  defparam lfsr18_20_20_reg_inst.init_value = 1'b1;
  defparam lfsr18_20_20_reg_inst.latency = 1;
  defparam lfsr18_20_20_reg_inst.width = 1;
  synth_reg_w_init lfsr18_20_20_reg_inst(.ce(lfsr18_20_20_reg_ce), .clk(clk), .clr(clr), .i(lfsr18_20_20_reg_i), .o(lfsr18_20_20_reg_o));
  assign lfsr19_21_20_reg_i = lfsr19_21_20_next;
  assign lfsr19_21_20 = lfsr19_21_20_reg_o;
  assign lfsr19_21_20_reg_ce = (ce && lfsr19_21_20_en);
  defparam lfsr19_21_20_reg_inst.init_index = 2;
  defparam lfsr19_21_20_reg_inst.init_value = 1'b1;
  defparam lfsr19_21_20_reg_inst.latency = 1;
  defparam lfsr19_21_20_reg_inst.width = 1;
  synth_reg_w_init lfsr19_21_20_reg_inst(.ce(lfsr19_21_20_reg_ce), .clk(clk), .clr(clr), .i(lfsr19_21_20_reg_i), .o(lfsr19_21_20_reg_o));
  always @(posedge clk)
    begin:proc_lfsr20_22_20
      if (((ce == 1'b1) && (lfsr20_22_20_en == 1'b1)))
        begin
          lfsr20_22_20 <= lfsr20_22_20_next;
        end
    end
  assign lfsr21_23_20_reg_i = lfsr21_23_20_next;
  assign lfsr21_23_20 = lfsr21_23_20_reg_o;
  assign lfsr21_23_20_reg_ce = (ce && lfsr21_23_20_en);
  defparam lfsr21_23_20_reg_inst.init_index = 2;
  defparam lfsr21_23_20_reg_inst.init_value = 1'b1;
  defparam lfsr21_23_20_reg_inst.latency = 1;
  defparam lfsr21_23_20_reg_inst.width = 1;
  synth_reg_w_init lfsr21_23_20_reg_inst(.ce(lfsr21_23_20_reg_ce), .clk(clk), .clr(clr), .i(lfsr21_23_20_reg_i), .o(lfsr21_23_20_reg_o));
  assign lfsr22_24_20_reg_i = lfsr22_24_20_next;
  assign lfsr22_24_20 = lfsr22_24_20_reg_o;
  assign lfsr22_24_20_reg_ce = (ce && lfsr22_24_20_en);
  defparam lfsr22_24_20_reg_inst.init_index = 2;
  defparam lfsr22_24_20_reg_inst.init_value = 1'b1;
  defparam lfsr22_24_20_reg_inst.latency = 1;
  defparam lfsr22_24_20_reg_inst.width = 1;
  synth_reg_w_init lfsr22_24_20_reg_inst(.ce(lfsr22_24_20_reg_ce), .clk(clk), .clr(clr), .i(lfsr22_24_20_reg_i), .o(lfsr22_24_20_reg_o));
  always @(posedge clk)
    begin:proc_lfsr23_25_20
      if (((ce == 1'b1) && (lfsr23_25_20_en == 1'b1)))
        begin
          lfsr23_25_20 <= lfsr23_25_20_next;
        end
    end
  assign concat_26_26 = {lfsr23_25_20, lfsr22_24_20, lfsr21_23_20, lfsr20_22_20, lfsr19_21_20, lfsr18_20_20, lfsr17_19_20, lfsr16_18_20, lfsr15_17_20, lfsr14_16_20, lfsr13_15_20, lfsr12_14_20, lfsr11_13_20, lfsr10_12_20, lfsr9_11_19, lfsr8_10_19, lfsr7_9_19, lfsr6_8_19, lfsr5_7_19, lfsr4_6_19, lfsr3_5_19, lfsr2_4_19, lfsr1_3_19, lfsr0_2_19};
  assign lfsr17_95_1_bit = lfsr16_18_20 ^ lfsr23_25_20;
  assign lfsr22_100_1_bit = lfsr21_23_20 ^ lfsr23_25_20;
  assign lfsr23_101_1_bit = lfsr22_24_20 ^ lfsr23_25_20;
  always @(en_1_63 or lfsr0_2_19 or lfsr10_12_20 or lfsr11_13_20 or lfsr12_14_20 or lfsr13_15_20 or lfsr14_16_20 or lfsr15_17_20 or lfsr17_19_20 or lfsr17_95_1_bit or lfsr18_20_20 or lfsr19_21_20 or lfsr1_3_19 or lfsr20_22_20 or lfsr22_100_1_bit or lfsr23_101_1_bit or lfsr23_25_20 or lfsr2_4_19 or lfsr3_5_19 or lfsr4_6_19 or lfsr5_7_19 or lfsr6_8_19 or lfsr7_9_19 or lfsr8_10_19 or lfsr9_11_19)
    begin:proc_if_53_1
      if (en_1_63)
        begin
          lfsr20_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr20_join_53_1_en = 1'b0;
        end
      lfsr20_join_53_1 = lfsr19_21_20;
      if (en_1_63)
        begin
          lfsr3_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr3_join_53_1_en = 1'b0;
        end
      lfsr3_join_53_1 = lfsr2_4_19;
      if (en_1_63)
        begin
          lfsr18_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr18_join_53_1_en = 1'b0;
        end
      lfsr18_join_53_1 = lfsr17_19_20;
      if (en_1_63)
        begin
          lfsr4_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr4_join_53_1_en = 1'b0;
        end
      lfsr4_join_53_1 = lfsr3_5_19;
      if (en_1_63)
        begin
          lfsr19_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr19_join_53_1_en = 1'b0;
        end
      lfsr19_join_53_1 = lfsr18_20_20;
      if (en_1_63)
        begin
          lfsr11_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr11_join_53_1_en = 1'b0;
        end
      lfsr11_join_53_1 = lfsr10_12_20;
      if (en_1_63)
        begin
          lfsr22_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr22_join_53_1_en = 1'b0;
        end
      lfsr22_join_53_1 = lfsr22_100_1_bit;
      if (en_1_63)
        begin
          lfsr9_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr9_join_53_1_en = 1'b0;
        end
      lfsr9_join_53_1 = lfsr8_10_19;
      if (en_1_63)
        begin
          lfsr0_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr0_join_53_1_en = 1'b0;
        end
      lfsr0_join_53_1 = lfsr23_25_20;
      if (en_1_63)
        begin
          lfsr15_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr15_join_53_1_en = 1'b0;
        end
      lfsr15_join_53_1 = lfsr14_16_20;
      if (en_1_63)
        begin
          lfsr10_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr10_join_53_1_en = 1'b0;
        end
      lfsr10_join_53_1 = lfsr9_11_19;
      if (en_1_63)
        begin
          lfsr16_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr16_join_53_1_en = 1'b0;
        end
      lfsr16_join_53_1 = lfsr15_17_20;
      if (en_1_63)
        begin
          lfsr7_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr7_join_53_1_en = 1'b0;
        end
      lfsr7_join_53_1 = lfsr6_8_19;
      if (en_1_63)
        begin
          lfsr8_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr8_join_53_1_en = 1'b0;
        end
      lfsr8_join_53_1 = lfsr7_9_19;
      if (en_1_63)
        begin
          lfsr6_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr6_join_53_1_en = 1'b0;
        end
      lfsr6_join_53_1 = lfsr5_7_19;
      if (en_1_63)
        begin
          lfsr21_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr21_join_53_1_en = 1'b0;
        end
      lfsr21_join_53_1 = lfsr20_22_20;
      if (en_1_63)
        begin
          lfsr17_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr17_join_53_1_en = 1'b0;
        end
      lfsr17_join_53_1 = lfsr17_95_1_bit;
      if (en_1_63)
        begin
          lfsr14_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr14_join_53_1_en = 1'b0;
        end
      lfsr14_join_53_1 = lfsr13_15_20;
      if (en_1_63)
        begin
          lfsr12_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr12_join_53_1_en = 1'b0;
        end
      lfsr12_join_53_1 = lfsr11_13_20;
      if (en_1_63)
        begin
          lfsr5_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr5_join_53_1_en = 1'b0;
        end
      lfsr5_join_53_1 = lfsr4_6_19;
      if (en_1_63)
        begin
          lfsr23_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr23_join_53_1_en = 1'b0;
        end
      lfsr23_join_53_1 = lfsr23_101_1_bit;
      if (en_1_63)
        begin
          lfsr13_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr13_join_53_1_en = 1'b0;
        end
      lfsr13_join_53_1 = lfsr12_14_20;
      if (en_1_63)
        begin
          lfsr1_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr1_join_53_1_en = 1'b0;
        end
      lfsr1_join_53_1 = lfsr0_2_19;
      if (en_1_63)
        begin
          lfsr2_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr2_join_53_1_en = 1'b0;
        end
      lfsr2_join_53_1 = lfsr1_3_19;
    end
  assign lfsr0_2_19_next = lfsr23_25_20;
  assign lfsr0_2_19_en = lfsr0_join_53_1_en;
  assign lfsr1_3_19_next = lfsr0_2_19;
  assign lfsr1_3_19_en = lfsr1_join_53_1_en;
  assign lfsr2_4_19_next = lfsr1_3_19;
  assign lfsr2_4_19_en = lfsr2_join_53_1_en;
  assign lfsr3_5_19_next = lfsr2_4_19;
  assign lfsr3_5_19_en = lfsr3_join_53_1_en;
  assign lfsr4_6_19_next = lfsr3_5_19;
  assign lfsr4_6_19_en = lfsr4_join_53_1_en;
  assign lfsr5_7_19_next = lfsr4_6_19;
  assign lfsr5_7_19_en = lfsr5_join_53_1_en;
  assign lfsr6_8_19_next = lfsr5_7_19;
  assign lfsr6_8_19_en = lfsr6_join_53_1_en;
  assign lfsr7_9_19_next = lfsr6_8_19;
  assign lfsr7_9_19_en = lfsr7_join_53_1_en;
  assign lfsr8_10_19_next = lfsr7_9_19;
  assign lfsr8_10_19_en = lfsr8_join_53_1_en;
  assign lfsr9_11_19_next = lfsr8_10_19;
  assign lfsr9_11_19_en = lfsr9_join_53_1_en;
  assign lfsr10_12_20_next = lfsr9_11_19;
  assign lfsr10_12_20_en = lfsr10_join_53_1_en;
  assign lfsr11_13_20_next = lfsr10_12_20;
  assign lfsr11_13_20_en = lfsr11_join_53_1_en;
  assign lfsr12_14_20_next = lfsr11_13_20;
  assign lfsr12_14_20_en = lfsr12_join_53_1_en;
  assign lfsr13_15_20_next = lfsr12_14_20;
  assign lfsr13_15_20_en = lfsr13_join_53_1_en;
  assign lfsr14_16_20_next = lfsr13_15_20;
  assign lfsr14_16_20_en = lfsr14_join_53_1_en;
  assign lfsr15_17_20_next = lfsr14_16_20;
  assign lfsr15_17_20_en = lfsr15_join_53_1_en;
  assign lfsr16_18_20_next = lfsr15_17_20;
  assign lfsr16_18_20_en = lfsr16_join_53_1_en;
  assign lfsr17_19_20_next = lfsr17_95_1_bit;
  assign lfsr17_19_20_en = lfsr17_join_53_1_en;
  assign lfsr18_20_20_next = lfsr17_19_20;
  assign lfsr18_20_20_en = lfsr18_join_53_1_en;
  assign lfsr19_21_20_next = lfsr18_20_20;
  assign lfsr19_21_20_en = lfsr19_join_53_1_en;
  assign lfsr20_22_20_next = lfsr19_21_20;
  assign lfsr20_22_20_en = lfsr20_join_53_1_en;
  assign lfsr21_23_20_next = lfsr20_22_20;
  assign lfsr21_23_20_en = lfsr21_join_53_1_en;
  assign lfsr22_24_20_next = lfsr22_100_1_bit;
  assign lfsr22_24_20_en = lfsr22_join_53_1_en;
  assign lfsr23_25_20_next = lfsr23_101_1_bit;
  assign lfsr23_25_20_en = lfsr23_join_53_1_en;
  assign dout = concat_26_26;
endmodule
`timescale 1 ns / 10 ps
module hilsim_ipcore_xlsprom
  #(parameter c_width = 0,
   parameter c_address_width = 0,
   parameter mem_size = 0,
   parameter mem_init_file ="none",
   parameter read_reset_val ="0",
   parameter mem_type ="auto",
   parameter latency = 0)
  (input  ce, clk, en, rst,
   input [c_address_width-1:0] addr,
   output [c_width-1:0] data);

   wire [c_width-1:0] core_data_out,dly_data_out;    
   assign data = dly_data_out;

generate
  xpm_memory_sprom # (
  // Common module parameters
  .MEMORY_SIZE        (mem_size),
  .MEMORY_PRIMITIVE   (mem_type),                        //string; auto, distributed, block or ultra;
  .MEMORY_INIT_FILE   (mem_init_file), 
  .MEMORY_INIT_PARAM  (""),
  .USE_MEM_INIT       (0),
  .WAKEUP_TIME        ("disable_sleep"),
  .MESSAGE_CONTROL    (0),

  // Port A module parameters
  .READ_DATA_WIDTH_A  (c_width),
  .ADDR_WIDTH_A       (c_address_width),
  .READ_RESET_VALUE_A (read_reset_val),
  .READ_LATENCY_A     (latency)

) xpm_memory_sprom_inst (
 // Common module ports
  .sleep          (1'b0),
  // Port A module ports
  .clka           (clk),
  .rsta           (rst & ce),
  .ena            (en & ce),
  .regcea         (1'b1),
  .addra          (addr),
  .injectsbiterra (1'b0),  //do not change
  .injectdbiterra (1'b0),  //do not change
  .douta          (core_data_out),
  .sbiterra       (),      //do not change
  .dbiterra       ()       //do not change
);
 if (latency > 1)
     begin:latency_tst
       synth_reg # (c_width, latency-1)
         reg1 (
               .i(core_data_out),
               .ce(ce),
               .clr(1'b0),
               .clk(clk),
               .o(dly_data_out));
      end 
      if (latency <= 1)
      begin:latency_1
         assign dly_data_out = core_data_out;
      end       
endgenerate
endmodule
`timescale 1 ns / 10 ps
module sysgen_lfsr_5ceab45f7f (
  input [(1 - 1):0] en,
  output [(24 - 1):0] dout,
  input clk,
  input ce,
  input clr);
  wire en_1_63;
  wire [(1 - 1):0] lfsr0_2_19_next;
  wire [(1 - 1):0] lfsr0_2_19;
  wire lfsr0_2_19_en;
  wire [(1 - 1):0] lfsr0_2_19_reg_i;
  wire [(1 - 1):0] lfsr0_2_19_reg_o;
  wire lfsr0_2_19_reg_ce;
  wire [(1 - 1):0] lfsr1_3_19_next;
  reg [(1 - 1):0] lfsr1_3_19 = 1'b0;
  wire lfsr1_3_19_en;
  wire [(1 - 1):0] lfsr2_4_19_next;
  wire [(1 - 1):0] lfsr2_4_19;
  wire lfsr2_4_19_en;
  wire [(1 - 1):0] lfsr2_4_19_reg_i;
  wire [(1 - 1):0] lfsr2_4_19_reg_o;
  wire lfsr2_4_19_reg_ce;
  wire [(1 - 1):0] lfsr3_5_19_next;
  reg [(1 - 1):0] lfsr3_5_19 = 1'b0;
  wire lfsr3_5_19_en;
  wire [(1 - 1):0] lfsr4_6_19_next;
  wire [(1 - 1):0] lfsr4_6_19;
  wire lfsr4_6_19_en;
  wire [(1 - 1):0] lfsr4_6_19_reg_i;
  wire [(1 - 1):0] lfsr4_6_19_reg_o;
  wire lfsr4_6_19_reg_ce;
  wire [(1 - 1):0] lfsr5_7_19_next;
  wire [(1 - 1):0] lfsr5_7_19;
  wire lfsr5_7_19_en;
  wire [(1 - 1):0] lfsr5_7_19_reg_i;
  wire [(1 - 1):0] lfsr5_7_19_reg_o;
  wire lfsr5_7_19_reg_ce;
  wire [(1 - 1):0] lfsr6_8_19_next;
  reg [(1 - 1):0] lfsr6_8_19 = 1'b0;
  wire lfsr6_8_19_en;
  wire [(1 - 1):0] lfsr7_9_19_next;
  reg [(1 - 1):0] lfsr7_9_19 = 1'b0;
  wire lfsr7_9_19_en;
  wire [(1 - 1):0] lfsr8_10_19_next;
  reg [(1 - 1):0] lfsr8_10_19 = 1'b0;
  wire lfsr8_10_19_en;
  wire [(1 - 1):0] lfsr9_11_19_next;
  reg [(1 - 1):0] lfsr9_11_19 = 1'b0;
  wire lfsr9_11_19_en;
  wire [(1 - 1):0] lfsr10_12_20_next;
  reg [(1 - 1):0] lfsr10_12_20 = 1'b0;
  wire lfsr10_12_20_en;
  wire [(1 - 1):0] lfsr11_13_20_next;
  reg [(1 - 1):0] lfsr11_13_20 = 1'b0;
  wire lfsr11_13_20_en;
  wire [(1 - 1):0] lfsr12_14_20_next;
  wire [(1 - 1):0] lfsr12_14_20;
  wire lfsr12_14_20_en;
  wire [(1 - 1):0] lfsr12_14_20_reg_i;
  wire [(1 - 1):0] lfsr12_14_20_reg_o;
  wire lfsr12_14_20_reg_ce;
  wire [(1 - 1):0] lfsr13_15_20_next;
  reg [(1 - 1):0] lfsr13_15_20 = 1'b0;
  wire lfsr13_15_20_en;
  wire [(1 - 1):0] lfsr14_16_20_next;
  wire [(1 - 1):0] lfsr14_16_20;
  wire lfsr14_16_20_en;
  wire [(1 - 1):0] lfsr14_16_20_reg_i;
  wire [(1 - 1):0] lfsr14_16_20_reg_o;
  wire lfsr14_16_20_reg_ce;
  wire [(1 - 1):0] lfsr15_17_20_next;
  wire [(1 - 1):0] lfsr15_17_20;
  wire lfsr15_17_20_en;
  wire [(1 - 1):0] lfsr15_17_20_reg_i;
  wire [(1 - 1):0] lfsr15_17_20_reg_o;
  wire lfsr15_17_20_reg_ce;
  wire [(1 - 1):0] lfsr16_18_20_next;
  reg [(1 - 1):0] lfsr16_18_20 = 1'b0;
  wire lfsr16_18_20_en;
  wire [(1 - 1):0] lfsr17_19_20_next;
  reg [(1 - 1):0] lfsr17_19_20 = 1'b0;
  wire lfsr17_19_20_en;
  wire [(1 - 1):0] lfsr18_20_20_next;
  reg [(1 - 1):0] lfsr18_20_20 = 1'b0;
  wire lfsr18_20_20_en;
  wire [(1 - 1):0] lfsr19_21_20_next;
  wire [(1 - 1):0] lfsr19_21_20;
  wire lfsr19_21_20_en;
  wire [(1 - 1):0] lfsr19_21_20_reg_i;
  wire [(1 - 1):0] lfsr19_21_20_reg_o;
  wire lfsr19_21_20_reg_ce;
  wire [(1 - 1):0] lfsr20_22_20_next;
  wire [(1 - 1):0] lfsr20_22_20;
  wire lfsr20_22_20_en;
  wire [(1 - 1):0] lfsr20_22_20_reg_i;
  wire [(1 - 1):0] lfsr20_22_20_reg_o;
  wire lfsr20_22_20_reg_ce;
  wire [(1 - 1):0] lfsr21_23_20_next;
  reg [(1 - 1):0] lfsr21_23_20 = 1'b0;
  wire lfsr21_23_20_en;
  wire [(1 - 1):0] lfsr22_24_20_next;
  reg [(1 - 1):0] lfsr22_24_20 = 1'b0;
  wire lfsr22_24_20_en;
  wire [(1 - 1):0] lfsr23_25_20_next;
  reg [(1 - 1):0] lfsr23_25_20 = 1'b0;
  wire lfsr23_25_20_en;
  wire [(24 - 1):0] concat_26_26;
  wire [(1 - 1):0] lfsr17_95_1_bit;
  wire [(1 - 1):0] lfsr22_100_1_bit;
  wire [(1 - 1):0] lfsr23_101_1_bit;
  reg [(1 - 1):0] lfsr14_join_53_1;
  reg lfsr14_join_53_1_en;
  reg [(1 - 1):0] lfsr16_join_53_1;
  reg lfsr16_join_53_1_en;
  reg [(1 - 1):0] lfsr12_join_53_1;
  reg lfsr12_join_53_1_en;
  reg [(1 - 1):0] lfsr8_join_53_1;
  reg lfsr8_join_53_1_en;
  reg [(1 - 1):0] lfsr11_join_53_1;
  reg lfsr11_join_53_1_en;
  reg [(1 - 1):0] lfsr18_join_53_1;
  reg lfsr18_join_53_1_en;
  reg [(1 - 1):0] lfsr19_join_53_1;
  reg lfsr19_join_53_1_en;
  reg [(1 - 1):0] lfsr20_join_53_1;
  reg lfsr20_join_53_1_en;
  reg [(1 - 1):0] lfsr22_join_53_1;
  reg lfsr22_join_53_1_en;
  reg [(1 - 1):0] lfsr1_join_53_1;
  reg lfsr1_join_53_1_en;
  reg [(1 - 1):0] lfsr10_join_53_1;
  reg lfsr10_join_53_1_en;
  reg [(1 - 1):0] lfsr13_join_53_1;
  reg lfsr13_join_53_1_en;
  reg [(1 - 1):0] lfsr5_join_53_1;
  reg lfsr5_join_53_1_en;
  reg [(1 - 1):0] lfsr23_join_53_1;
  reg lfsr23_join_53_1_en;
  reg [(1 - 1):0] lfsr6_join_53_1;
  reg lfsr6_join_53_1_en;
  reg [(1 - 1):0] lfsr9_join_53_1;
  reg lfsr9_join_53_1_en;
  reg [(1 - 1):0] lfsr4_join_53_1;
  reg lfsr4_join_53_1_en;
  reg [(1 - 1):0] lfsr15_join_53_1;
  reg lfsr15_join_53_1_en;
  reg [(1 - 1):0] lfsr7_join_53_1;
  reg lfsr7_join_53_1_en;
  reg [(1 - 1):0] lfsr3_join_53_1;
  reg lfsr3_join_53_1_en;
  reg [(1 - 1):0] lfsr0_join_53_1;
  reg lfsr0_join_53_1_en;
  reg [(1 - 1):0] lfsr2_join_53_1;
  reg lfsr2_join_53_1_en;
  reg [(1 - 1):0] lfsr21_join_53_1;
  reg lfsr21_join_53_1_en;
  reg [(1 - 1):0] lfsr17_join_53_1;
  reg lfsr17_join_53_1_en;
  assign en_1_63 = en;
  assign lfsr0_2_19_reg_i = lfsr0_2_19_next;
  assign lfsr0_2_19 = lfsr0_2_19_reg_o;
  assign lfsr0_2_19_reg_ce = (ce && lfsr0_2_19_en);
  defparam lfsr0_2_19_reg_inst.init_index = 2;
  defparam lfsr0_2_19_reg_inst.init_value = 1'b1;
  defparam lfsr0_2_19_reg_inst.latency = 1;
  defparam lfsr0_2_19_reg_inst.width = 1;
  synth_reg_w_init lfsr0_2_19_reg_inst(.ce(lfsr0_2_19_reg_ce), .clk(clk), .clr(clr), .i(lfsr0_2_19_reg_i), .o(lfsr0_2_19_reg_o));
  always @(posedge clk)
    begin:proc_lfsr1_3_19
      if (((ce == 1'b1) && (lfsr1_3_19_en == 1'b1)))
        begin
          lfsr1_3_19 <= lfsr1_3_19_next;
        end
    end
  assign lfsr2_4_19_reg_i = lfsr2_4_19_next;
  assign lfsr2_4_19 = lfsr2_4_19_reg_o;
  assign lfsr2_4_19_reg_ce = (ce && lfsr2_4_19_en);
  defparam lfsr2_4_19_reg_inst.init_index = 2;
  defparam lfsr2_4_19_reg_inst.init_value = 1'b1;
  defparam lfsr2_4_19_reg_inst.latency = 1;
  defparam lfsr2_4_19_reg_inst.width = 1;
  synth_reg_w_init lfsr2_4_19_reg_inst(.ce(lfsr2_4_19_reg_ce), .clk(clk), .clr(clr), .i(lfsr2_4_19_reg_i), .o(lfsr2_4_19_reg_o));
  always @(posedge clk)
    begin:proc_lfsr3_5_19
      if (((ce == 1'b1) && (lfsr3_5_19_en == 1'b1)))
        begin
          lfsr3_5_19 <= lfsr3_5_19_next;
        end
    end
  assign lfsr4_6_19_reg_i = lfsr4_6_19_next;
  assign lfsr4_6_19 = lfsr4_6_19_reg_o;
  assign lfsr4_6_19_reg_ce = (ce && lfsr4_6_19_en);
  defparam lfsr4_6_19_reg_inst.init_index = 2;
  defparam lfsr4_6_19_reg_inst.init_value = 1'b1;
  defparam lfsr4_6_19_reg_inst.latency = 1;
  defparam lfsr4_6_19_reg_inst.width = 1;
  synth_reg_w_init lfsr4_6_19_reg_inst(.ce(lfsr4_6_19_reg_ce), .clk(clk), .clr(clr), .i(lfsr4_6_19_reg_i), .o(lfsr4_6_19_reg_o));
  assign lfsr5_7_19_reg_i = lfsr5_7_19_next;
  assign lfsr5_7_19 = lfsr5_7_19_reg_o;
  assign lfsr5_7_19_reg_ce = (ce && lfsr5_7_19_en);
  defparam lfsr5_7_19_reg_inst.init_index = 2;
  defparam lfsr5_7_19_reg_inst.init_value = 1'b1;
  defparam lfsr5_7_19_reg_inst.latency = 1;
  defparam lfsr5_7_19_reg_inst.width = 1;
  synth_reg_w_init lfsr5_7_19_reg_inst(.ce(lfsr5_7_19_reg_ce), .clk(clk), .clr(clr), .i(lfsr5_7_19_reg_i), .o(lfsr5_7_19_reg_o));
  always @(posedge clk)
    begin:proc_lfsr6_8_19
      if (((ce == 1'b1) && (lfsr6_8_19_en == 1'b1)))
        begin
          lfsr6_8_19 <= lfsr6_8_19_next;
        end
    end
  always @(posedge clk)
    begin:proc_lfsr7_9_19
      if (((ce == 1'b1) && (lfsr7_9_19_en == 1'b1)))
        begin
          lfsr7_9_19 <= lfsr7_9_19_next;
        end
    end
  always @(posedge clk)
    begin:proc_lfsr8_10_19
      if (((ce == 1'b1) && (lfsr8_10_19_en == 1'b1)))
        begin
          lfsr8_10_19 <= lfsr8_10_19_next;
        end
    end
  always @(posedge clk)
    begin:proc_lfsr9_11_19
      if (((ce == 1'b1) && (lfsr9_11_19_en == 1'b1)))
        begin
          lfsr9_11_19 <= lfsr9_11_19_next;
        end
    end
  always @(posedge clk)
    begin:proc_lfsr10_12_20
      if (((ce == 1'b1) && (lfsr10_12_20_en == 1'b1)))
        begin
          lfsr10_12_20 <= lfsr10_12_20_next;
        end
    end
  always @(posedge clk)
    begin:proc_lfsr11_13_20
      if (((ce == 1'b1) && (lfsr11_13_20_en == 1'b1)))
        begin
          lfsr11_13_20 <= lfsr11_13_20_next;
        end
    end
  assign lfsr12_14_20_reg_i = lfsr12_14_20_next;
  assign lfsr12_14_20 = lfsr12_14_20_reg_o;
  assign lfsr12_14_20_reg_ce = (ce && lfsr12_14_20_en);
  defparam lfsr12_14_20_reg_inst.init_index = 2;
  defparam lfsr12_14_20_reg_inst.init_value = 1'b1;
  defparam lfsr12_14_20_reg_inst.latency = 1;
  defparam lfsr12_14_20_reg_inst.width = 1;
  synth_reg_w_init lfsr12_14_20_reg_inst(.ce(lfsr12_14_20_reg_ce), .clk(clk), .clr(clr), .i(lfsr12_14_20_reg_i), .o(lfsr12_14_20_reg_o));
  always @(posedge clk)
    begin:proc_lfsr13_15_20
      if (((ce == 1'b1) && (lfsr13_15_20_en == 1'b1)))
        begin
          lfsr13_15_20 <= lfsr13_15_20_next;
        end
    end
  assign lfsr14_16_20_reg_i = lfsr14_16_20_next;
  assign lfsr14_16_20 = lfsr14_16_20_reg_o;
  assign lfsr14_16_20_reg_ce = (ce && lfsr14_16_20_en);
  defparam lfsr14_16_20_reg_inst.init_index = 2;
  defparam lfsr14_16_20_reg_inst.init_value = 1'b1;
  defparam lfsr14_16_20_reg_inst.latency = 1;
  defparam lfsr14_16_20_reg_inst.width = 1;
  synth_reg_w_init lfsr14_16_20_reg_inst(.ce(lfsr14_16_20_reg_ce), .clk(clk), .clr(clr), .i(lfsr14_16_20_reg_i), .o(lfsr14_16_20_reg_o));
  assign lfsr15_17_20_reg_i = lfsr15_17_20_next;
  assign lfsr15_17_20 = lfsr15_17_20_reg_o;
  assign lfsr15_17_20_reg_ce = (ce && lfsr15_17_20_en);
  defparam lfsr15_17_20_reg_inst.init_index = 2;
  defparam lfsr15_17_20_reg_inst.init_value = 1'b1;
  defparam lfsr15_17_20_reg_inst.latency = 1;
  defparam lfsr15_17_20_reg_inst.width = 1;
  synth_reg_w_init lfsr15_17_20_reg_inst(.ce(lfsr15_17_20_reg_ce), .clk(clk), .clr(clr), .i(lfsr15_17_20_reg_i), .o(lfsr15_17_20_reg_o));
  always @(posedge clk)
    begin:proc_lfsr16_18_20
      if (((ce == 1'b1) && (lfsr16_18_20_en == 1'b1)))
        begin
          lfsr16_18_20 <= lfsr16_18_20_next;
        end
    end
  always @(posedge clk)
    begin:proc_lfsr17_19_20
      if (((ce == 1'b1) && (lfsr17_19_20_en == 1'b1)))
        begin
          lfsr17_19_20 <= lfsr17_19_20_next;
        end
    end
  always @(posedge clk)
    begin:proc_lfsr18_20_20
      if (((ce == 1'b1) && (lfsr18_20_20_en == 1'b1)))
        begin
          lfsr18_20_20 <= lfsr18_20_20_next;
        end
    end
  assign lfsr19_21_20_reg_i = lfsr19_21_20_next;
  assign lfsr19_21_20 = lfsr19_21_20_reg_o;
  assign lfsr19_21_20_reg_ce = (ce && lfsr19_21_20_en);
  defparam lfsr19_21_20_reg_inst.init_index = 2;
  defparam lfsr19_21_20_reg_inst.init_value = 1'b1;
  defparam lfsr19_21_20_reg_inst.latency = 1;
  defparam lfsr19_21_20_reg_inst.width = 1;
  synth_reg_w_init lfsr19_21_20_reg_inst(.ce(lfsr19_21_20_reg_ce), .clk(clk), .clr(clr), .i(lfsr19_21_20_reg_i), .o(lfsr19_21_20_reg_o));
  assign lfsr20_22_20_reg_i = lfsr20_22_20_next;
  assign lfsr20_22_20 = lfsr20_22_20_reg_o;
  assign lfsr20_22_20_reg_ce = (ce && lfsr20_22_20_en);
  defparam lfsr20_22_20_reg_inst.init_index = 2;
  defparam lfsr20_22_20_reg_inst.init_value = 1'b1;
  defparam lfsr20_22_20_reg_inst.latency = 1;
  defparam lfsr20_22_20_reg_inst.width = 1;
  synth_reg_w_init lfsr20_22_20_reg_inst(.ce(lfsr20_22_20_reg_ce), .clk(clk), .clr(clr), .i(lfsr20_22_20_reg_i), .o(lfsr20_22_20_reg_o));
  always @(posedge clk)
    begin:proc_lfsr21_23_20
      if (((ce == 1'b1) && (lfsr21_23_20_en == 1'b1)))
        begin
          lfsr21_23_20 <= lfsr21_23_20_next;
        end
    end
  always @(posedge clk)
    begin:proc_lfsr22_24_20
      if (((ce == 1'b1) && (lfsr22_24_20_en == 1'b1)))
        begin
          lfsr22_24_20 <= lfsr22_24_20_next;
        end
    end
  always @(posedge clk)
    begin:proc_lfsr23_25_20
      if (((ce == 1'b1) && (lfsr23_25_20_en == 1'b1)))
        begin
          lfsr23_25_20 <= lfsr23_25_20_next;
        end
    end
  assign concat_26_26 = {lfsr23_25_20, lfsr22_24_20, lfsr21_23_20, lfsr20_22_20, lfsr19_21_20, lfsr18_20_20, lfsr17_19_20, lfsr16_18_20, lfsr15_17_20, lfsr14_16_20, lfsr13_15_20, lfsr12_14_20, lfsr11_13_20, lfsr10_12_20, lfsr9_11_19, lfsr8_10_19, lfsr7_9_19, lfsr6_8_19, lfsr5_7_19, lfsr4_6_19, lfsr3_5_19, lfsr2_4_19, lfsr1_3_19, lfsr0_2_19};
  assign lfsr17_95_1_bit = lfsr16_18_20 ^ lfsr23_25_20;
  assign lfsr22_100_1_bit = lfsr21_23_20 ^ lfsr23_25_20;
  assign lfsr23_101_1_bit = lfsr22_24_20 ^ lfsr23_25_20;
  always @(en_1_63 or lfsr0_2_19 or lfsr10_12_20 or lfsr11_13_20 or lfsr12_14_20 or lfsr13_15_20 or lfsr14_16_20 or lfsr15_17_20 or lfsr17_19_20 or lfsr17_95_1_bit or lfsr18_20_20 or lfsr19_21_20 or lfsr1_3_19 or lfsr20_22_20 or lfsr22_100_1_bit or lfsr23_101_1_bit or lfsr23_25_20 or lfsr2_4_19 or lfsr3_5_19 or lfsr4_6_19 or lfsr5_7_19 or lfsr6_8_19 or lfsr7_9_19 or lfsr8_10_19 or lfsr9_11_19)
    begin:proc_if_53_1
      if (en_1_63)
        begin
          lfsr14_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr14_join_53_1_en = 1'b0;
        end
      lfsr14_join_53_1 = lfsr13_15_20;
      if (en_1_63)
        begin
          lfsr16_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr16_join_53_1_en = 1'b0;
        end
      lfsr16_join_53_1 = lfsr15_17_20;
      if (en_1_63)
        begin
          lfsr12_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr12_join_53_1_en = 1'b0;
        end
      lfsr12_join_53_1 = lfsr11_13_20;
      if (en_1_63)
        begin
          lfsr8_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr8_join_53_1_en = 1'b0;
        end
      lfsr8_join_53_1 = lfsr7_9_19;
      if (en_1_63)
        begin
          lfsr11_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr11_join_53_1_en = 1'b0;
        end
      lfsr11_join_53_1 = lfsr10_12_20;
      if (en_1_63)
        begin
          lfsr18_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr18_join_53_1_en = 1'b0;
        end
      lfsr18_join_53_1 = lfsr17_19_20;
      if (en_1_63)
        begin
          lfsr19_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr19_join_53_1_en = 1'b0;
        end
      lfsr19_join_53_1 = lfsr18_20_20;
      if (en_1_63)
        begin
          lfsr20_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr20_join_53_1_en = 1'b0;
        end
      lfsr20_join_53_1 = lfsr19_21_20;
      if (en_1_63)
        begin
          lfsr22_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr22_join_53_1_en = 1'b0;
        end
      lfsr22_join_53_1 = lfsr22_100_1_bit;
      if (en_1_63)
        begin
          lfsr1_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr1_join_53_1_en = 1'b0;
        end
      lfsr1_join_53_1 = lfsr0_2_19;
      if (en_1_63)
        begin
          lfsr10_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr10_join_53_1_en = 1'b0;
        end
      lfsr10_join_53_1 = lfsr9_11_19;
      if (en_1_63)
        begin
          lfsr13_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr13_join_53_1_en = 1'b0;
        end
      lfsr13_join_53_1 = lfsr12_14_20;
      if (en_1_63)
        begin
          lfsr5_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr5_join_53_1_en = 1'b0;
        end
      lfsr5_join_53_1 = lfsr4_6_19;
      if (en_1_63)
        begin
          lfsr23_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr23_join_53_1_en = 1'b0;
        end
      lfsr23_join_53_1 = lfsr23_101_1_bit;
      if (en_1_63)
        begin
          lfsr6_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr6_join_53_1_en = 1'b0;
        end
      lfsr6_join_53_1 = lfsr5_7_19;
      if (en_1_63)
        begin
          lfsr9_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr9_join_53_1_en = 1'b0;
        end
      lfsr9_join_53_1 = lfsr8_10_19;
      if (en_1_63)
        begin
          lfsr4_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr4_join_53_1_en = 1'b0;
        end
      lfsr4_join_53_1 = lfsr3_5_19;
      if (en_1_63)
        begin
          lfsr15_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr15_join_53_1_en = 1'b0;
        end
      lfsr15_join_53_1 = lfsr14_16_20;
      if (en_1_63)
        begin
          lfsr7_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr7_join_53_1_en = 1'b0;
        end
      lfsr7_join_53_1 = lfsr6_8_19;
      if (en_1_63)
        begin
          lfsr3_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr3_join_53_1_en = 1'b0;
        end
      lfsr3_join_53_1 = lfsr2_4_19;
      if (en_1_63)
        begin
          lfsr0_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr0_join_53_1_en = 1'b0;
        end
      lfsr0_join_53_1 = lfsr23_25_20;
      if (en_1_63)
        begin
          lfsr2_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr2_join_53_1_en = 1'b0;
        end
      lfsr2_join_53_1 = lfsr1_3_19;
      if (en_1_63)
        begin
          lfsr21_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr21_join_53_1_en = 1'b0;
        end
      lfsr21_join_53_1 = lfsr20_22_20;
      if (en_1_63)
        begin
          lfsr17_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr17_join_53_1_en = 1'b0;
        end
      lfsr17_join_53_1 = lfsr17_95_1_bit;
    end
  assign lfsr0_2_19_next = lfsr23_25_20;
  assign lfsr0_2_19_en = lfsr0_join_53_1_en;
  assign lfsr1_3_19_next = lfsr0_2_19;
  assign lfsr1_3_19_en = lfsr1_join_53_1_en;
  assign lfsr2_4_19_next = lfsr1_3_19;
  assign lfsr2_4_19_en = lfsr2_join_53_1_en;
  assign lfsr3_5_19_next = lfsr2_4_19;
  assign lfsr3_5_19_en = lfsr3_join_53_1_en;
  assign lfsr4_6_19_next = lfsr3_5_19;
  assign lfsr4_6_19_en = lfsr4_join_53_1_en;
  assign lfsr5_7_19_next = lfsr4_6_19;
  assign lfsr5_7_19_en = lfsr5_join_53_1_en;
  assign lfsr6_8_19_next = lfsr5_7_19;
  assign lfsr6_8_19_en = lfsr6_join_53_1_en;
  assign lfsr7_9_19_next = lfsr6_8_19;
  assign lfsr7_9_19_en = lfsr7_join_53_1_en;
  assign lfsr8_10_19_next = lfsr7_9_19;
  assign lfsr8_10_19_en = lfsr8_join_53_1_en;
  assign lfsr9_11_19_next = lfsr8_10_19;
  assign lfsr9_11_19_en = lfsr9_join_53_1_en;
  assign lfsr10_12_20_next = lfsr9_11_19;
  assign lfsr10_12_20_en = lfsr10_join_53_1_en;
  assign lfsr11_13_20_next = lfsr10_12_20;
  assign lfsr11_13_20_en = lfsr11_join_53_1_en;
  assign lfsr12_14_20_next = lfsr11_13_20;
  assign lfsr12_14_20_en = lfsr12_join_53_1_en;
  assign lfsr13_15_20_next = lfsr12_14_20;
  assign lfsr13_15_20_en = lfsr13_join_53_1_en;
  assign lfsr14_16_20_next = lfsr13_15_20;
  assign lfsr14_16_20_en = lfsr14_join_53_1_en;
  assign lfsr15_17_20_next = lfsr14_16_20;
  assign lfsr15_17_20_en = lfsr15_join_53_1_en;
  assign lfsr16_18_20_next = lfsr15_17_20;
  assign lfsr16_18_20_en = lfsr16_join_53_1_en;
  assign lfsr17_19_20_next = lfsr17_95_1_bit;
  assign lfsr17_19_20_en = lfsr17_join_53_1_en;
  assign lfsr18_20_20_next = lfsr17_19_20;
  assign lfsr18_20_20_en = lfsr18_join_53_1_en;
  assign lfsr19_21_20_next = lfsr18_20_20;
  assign lfsr19_21_20_en = lfsr19_join_53_1_en;
  assign lfsr20_22_20_next = lfsr19_21_20;
  assign lfsr20_22_20_en = lfsr20_join_53_1_en;
  assign lfsr21_23_20_next = lfsr20_22_20;
  assign lfsr21_23_20_en = lfsr21_join_53_1_en;
  assign lfsr22_24_20_next = lfsr22_100_1_bit;
  assign lfsr22_24_20_en = lfsr22_join_53_1_en;
  assign lfsr23_25_20_next = lfsr23_101_1_bit;
  assign lfsr23_25_20_en = lfsr23_join_53_1_en;
  assign dout = concat_26_26;
endmodule
`timescale 1 ns / 10 ps
module sysgen_lfsr_8df956ab1b (
  input [(1 - 1):0] en,
  output [(24 - 1):0] dout,
  input clk,
  input ce,
  input clr);
  wire en_1_63;
  wire [(1 - 1):0] lfsr0_2_19_next;
  reg [(1 - 1):0] lfsr0_2_19 = 1'b0;
  wire lfsr0_2_19_en;
  wire [(1 - 1):0] lfsr1_3_19_next;
  reg [(1 - 1):0] lfsr1_3_19 = 1'b0;
  wire lfsr1_3_19_en;
  wire [(1 - 1):0] lfsr2_4_19_next;
  wire [(1 - 1):0] lfsr2_4_19;
  wire lfsr2_4_19_en;
  wire [(1 - 1):0] lfsr2_4_19_reg_i;
  wire [(1 - 1):0] lfsr2_4_19_reg_o;
  wire lfsr2_4_19_reg_ce;
  wire [(1 - 1):0] lfsr3_5_19_next;
  wire [(1 - 1):0] lfsr3_5_19;
  wire lfsr3_5_19_en;
  wire [(1 - 1):0] lfsr3_5_19_reg_i;
  wire [(1 - 1):0] lfsr3_5_19_reg_o;
  wire lfsr3_5_19_reg_ce;
  wire [(1 - 1):0] lfsr4_6_19_next;
  wire [(1 - 1):0] lfsr4_6_19;
  wire lfsr4_6_19_en;
  wire [(1 - 1):0] lfsr4_6_19_reg_i;
  wire [(1 - 1):0] lfsr4_6_19_reg_o;
  wire lfsr4_6_19_reg_ce;
  wire [(1 - 1):0] lfsr5_7_19_next;
  reg [(1 - 1):0] lfsr5_7_19 = 1'b0;
  wire lfsr5_7_19_en;
  wire [(1 - 1):0] lfsr6_8_19_next;
  reg [(1 - 1):0] lfsr6_8_19 = 1'b0;
  wire lfsr6_8_19_en;
  wire [(1 - 1):0] lfsr7_9_19_next;
  reg [(1 - 1):0] lfsr7_9_19 = 1'b0;
  wire lfsr7_9_19_en;
  wire [(1 - 1):0] lfsr8_10_19_next;
  reg [(1 - 1):0] lfsr8_10_19 = 1'b0;
  wire lfsr8_10_19_en;
  wire [(1 - 1):0] lfsr9_11_19_next;
  reg [(1 - 1):0] lfsr9_11_19 = 1'b0;
  wire lfsr9_11_19_en;
  wire [(1 - 1):0] lfsr10_12_20_next;
  wire [(1 - 1):0] lfsr10_12_20;
  wire lfsr10_12_20_en;
  wire [(1 - 1):0] lfsr10_12_20_reg_i;
  wire [(1 - 1):0] lfsr10_12_20_reg_o;
  wire lfsr10_12_20_reg_ce;
  wire [(1 - 1):0] lfsr11_13_20_next;
  wire [(1 - 1):0] lfsr11_13_20;
  wire lfsr11_13_20_en;
  wire [(1 - 1):0] lfsr11_13_20_reg_i;
  wire [(1 - 1):0] lfsr11_13_20_reg_o;
  wire lfsr11_13_20_reg_ce;
  wire [(1 - 1):0] lfsr12_14_20_next;
  wire [(1 - 1):0] lfsr12_14_20;
  wire lfsr12_14_20_en;
  wire [(1 - 1):0] lfsr12_14_20_reg_i;
  wire [(1 - 1):0] lfsr12_14_20_reg_o;
  wire lfsr12_14_20_reg_ce;
  wire [(1 - 1):0] lfsr13_15_20_next;
  wire [(1 - 1):0] lfsr13_15_20;
  wire lfsr13_15_20_en;
  wire [(1 - 1):0] lfsr13_15_20_reg_i;
  wire [(1 - 1):0] lfsr13_15_20_reg_o;
  wire lfsr13_15_20_reg_ce;
  wire [(1 - 1):0] lfsr14_16_20_next;
  reg [(1 - 1):0] lfsr14_16_20 = 1'b0;
  wire lfsr14_16_20_en;
  wire [(1 - 1):0] lfsr15_17_20_next;
  wire [(1 - 1):0] lfsr15_17_20;
  wire lfsr15_17_20_en;
  wire [(1 - 1):0] lfsr15_17_20_reg_i;
  wire [(1 - 1):0] lfsr15_17_20_reg_o;
  wire lfsr15_17_20_reg_ce;
  wire [(1 - 1):0] lfsr16_18_20_next;
  reg [(1 - 1):0] lfsr16_18_20 = 1'b0;
  wire lfsr16_18_20_en;
  wire [(1 - 1):0] lfsr17_19_20_next;
  reg [(1 - 1):0] lfsr17_19_20 = 1'b0;
  wire lfsr17_19_20_en;
  wire [(1 - 1):0] lfsr18_20_20_next;
  reg [(1 - 1):0] lfsr18_20_20 = 1'b0;
  wire lfsr18_20_20_en;
  wire [(1 - 1):0] lfsr19_21_20_next;
  reg [(1 - 1):0] lfsr19_21_20 = 1'b0;
  wire lfsr19_21_20_en;
  wire [(1 - 1):0] lfsr20_22_20_next;
  wire [(1 - 1):0] lfsr20_22_20;
  wire lfsr20_22_20_en;
  wire [(1 - 1):0] lfsr20_22_20_reg_i;
  wire [(1 - 1):0] lfsr20_22_20_reg_o;
  wire lfsr20_22_20_reg_ce;
  wire [(1 - 1):0] lfsr21_23_20_next;
  wire [(1 - 1):0] lfsr21_23_20;
  wire lfsr21_23_20_en;
  wire [(1 - 1):0] lfsr21_23_20_reg_i;
  wire [(1 - 1):0] lfsr21_23_20_reg_o;
  wire lfsr21_23_20_reg_ce;
  wire [(1 - 1):0] lfsr22_24_20_next;
  reg [(1 - 1):0] lfsr22_24_20 = 1'b0;
  wire lfsr22_24_20_en;
  wire [(1 - 1):0] lfsr23_25_20_next;
  reg [(1 - 1):0] lfsr23_25_20 = 1'b0;
  wire lfsr23_25_20_en;
  wire [(24 - 1):0] concat_26_26;
  wire [(1 - 1):0] lfsr17_95_1_bit;
  wire [(1 - 1):0] lfsr22_100_1_bit;
  wire [(1 - 1):0] lfsr23_101_1_bit;
  reg [(1 - 1):0] lfsr9_join_53_1;
  reg lfsr9_join_53_1_en;
  reg [(1 - 1):0] lfsr19_join_53_1;
  reg lfsr19_join_53_1_en;
  reg [(1 - 1):0] lfsr20_join_53_1;
  reg lfsr20_join_53_1_en;
  reg [(1 - 1):0] lfsr4_join_53_1;
  reg lfsr4_join_53_1_en;
  reg [(1 - 1):0] lfsr10_join_53_1;
  reg lfsr10_join_53_1_en;
  reg [(1 - 1):0] lfsr18_join_53_1;
  reg lfsr18_join_53_1_en;
  reg [(1 - 1):0] lfsr11_join_53_1;
  reg lfsr11_join_53_1_en;
  reg [(1 - 1):0] lfsr16_join_53_1;
  reg lfsr16_join_53_1_en;
  reg [(1 - 1):0] lfsr12_join_53_1;
  reg lfsr12_join_53_1_en;
  reg [(1 - 1):0] lfsr0_join_53_1;
  reg lfsr0_join_53_1_en;
  reg [(1 - 1):0] lfsr15_join_53_1;
  reg lfsr15_join_53_1_en;
  reg [(1 - 1):0] lfsr2_join_53_1;
  reg lfsr2_join_53_1_en;
  reg [(1 - 1):0] lfsr23_join_53_1;
  reg lfsr23_join_53_1_en;
  reg [(1 - 1):0] lfsr3_join_53_1;
  reg lfsr3_join_53_1_en;
  reg [(1 - 1):0] lfsr14_join_53_1;
  reg lfsr14_join_53_1_en;
  reg [(1 - 1):0] lfsr21_join_53_1;
  reg lfsr21_join_53_1_en;
  reg [(1 - 1):0] lfsr1_join_53_1;
  reg lfsr1_join_53_1_en;
  reg [(1 - 1):0] lfsr22_join_53_1;
  reg lfsr22_join_53_1_en;
  reg [(1 - 1):0] lfsr13_join_53_1;
  reg lfsr13_join_53_1_en;
  reg [(1 - 1):0] lfsr8_join_53_1;
  reg lfsr8_join_53_1_en;
  reg [(1 - 1):0] lfsr6_join_53_1;
  reg lfsr6_join_53_1_en;
  reg [(1 - 1):0] lfsr5_join_53_1;
  reg lfsr5_join_53_1_en;
  reg [(1 - 1):0] lfsr17_join_53_1;
  reg lfsr17_join_53_1_en;
  reg [(1 - 1):0] lfsr7_join_53_1;
  reg lfsr7_join_53_1_en;
  assign en_1_63 = en;
  always @(posedge clk)
    begin:proc_lfsr0_2_19
      if (((ce == 1'b1) && (lfsr0_2_19_en == 1'b1)))
        begin
          lfsr0_2_19 <= lfsr0_2_19_next;
        end
    end
  always @(posedge clk)
    begin:proc_lfsr1_3_19
      if (((ce == 1'b1) && (lfsr1_3_19_en == 1'b1)))
        begin
          lfsr1_3_19 <= lfsr1_3_19_next;
        end
    end
  assign lfsr2_4_19_reg_i = lfsr2_4_19_next;
  assign lfsr2_4_19 = lfsr2_4_19_reg_o;
  assign lfsr2_4_19_reg_ce = (ce && lfsr2_4_19_en);
  defparam lfsr2_4_19_reg_inst.init_index = 2;
  defparam lfsr2_4_19_reg_inst.init_value = 1'b1;
  defparam lfsr2_4_19_reg_inst.latency = 1;
  defparam lfsr2_4_19_reg_inst.width = 1;
  synth_reg_w_init lfsr2_4_19_reg_inst(.ce(lfsr2_4_19_reg_ce), .clk(clk), .clr(clr), .i(lfsr2_4_19_reg_i), .o(lfsr2_4_19_reg_o));
  assign lfsr3_5_19_reg_i = lfsr3_5_19_next;
  assign lfsr3_5_19 = lfsr3_5_19_reg_o;
  assign lfsr3_5_19_reg_ce = (ce && lfsr3_5_19_en);
  defparam lfsr3_5_19_reg_inst.init_index = 2;
  defparam lfsr3_5_19_reg_inst.init_value = 1'b1;
  defparam lfsr3_5_19_reg_inst.latency = 1;
  defparam lfsr3_5_19_reg_inst.width = 1;
  synth_reg_w_init lfsr3_5_19_reg_inst(.ce(lfsr3_5_19_reg_ce), .clk(clk), .clr(clr), .i(lfsr3_5_19_reg_i), .o(lfsr3_5_19_reg_o));
  assign lfsr4_6_19_reg_i = lfsr4_6_19_next;
  assign lfsr4_6_19 = lfsr4_6_19_reg_o;
  assign lfsr4_6_19_reg_ce = (ce && lfsr4_6_19_en);
  defparam lfsr4_6_19_reg_inst.init_index = 2;
  defparam lfsr4_6_19_reg_inst.init_value = 1'b1;
  defparam lfsr4_6_19_reg_inst.latency = 1;
  defparam lfsr4_6_19_reg_inst.width = 1;
  synth_reg_w_init lfsr4_6_19_reg_inst(.ce(lfsr4_6_19_reg_ce), .clk(clk), .clr(clr), .i(lfsr4_6_19_reg_i), .o(lfsr4_6_19_reg_o));
  always @(posedge clk)
    begin:proc_lfsr5_7_19
      if (((ce == 1'b1) && (lfsr5_7_19_en == 1'b1)))
        begin
          lfsr5_7_19 <= lfsr5_7_19_next;
        end
    end
  always @(posedge clk)
    begin:proc_lfsr6_8_19
      if (((ce == 1'b1) && (lfsr6_8_19_en == 1'b1)))
        begin
          lfsr6_8_19 <= lfsr6_8_19_next;
        end
    end
  always @(posedge clk)
    begin:proc_lfsr7_9_19
      if (((ce == 1'b1) && (lfsr7_9_19_en == 1'b1)))
        begin
          lfsr7_9_19 <= lfsr7_9_19_next;
        end
    end
  always @(posedge clk)
    begin:proc_lfsr8_10_19
      if (((ce == 1'b1) && (lfsr8_10_19_en == 1'b1)))
        begin
          lfsr8_10_19 <= lfsr8_10_19_next;
        end
    end
  always @(posedge clk)
    begin:proc_lfsr9_11_19
      if (((ce == 1'b1) && (lfsr9_11_19_en == 1'b1)))
        begin
          lfsr9_11_19 <= lfsr9_11_19_next;
        end
    end
  assign lfsr10_12_20_reg_i = lfsr10_12_20_next;
  assign lfsr10_12_20 = lfsr10_12_20_reg_o;
  assign lfsr10_12_20_reg_ce = (ce && lfsr10_12_20_en);
  defparam lfsr10_12_20_reg_inst.init_index = 2;
  defparam lfsr10_12_20_reg_inst.init_value = 1'b1;
  defparam lfsr10_12_20_reg_inst.latency = 1;
  defparam lfsr10_12_20_reg_inst.width = 1;
  synth_reg_w_init lfsr10_12_20_reg_inst(.ce(lfsr10_12_20_reg_ce), .clk(clk), .clr(clr), .i(lfsr10_12_20_reg_i), .o(lfsr10_12_20_reg_o));
  assign lfsr11_13_20_reg_i = lfsr11_13_20_next;
  assign lfsr11_13_20 = lfsr11_13_20_reg_o;
  assign lfsr11_13_20_reg_ce = (ce && lfsr11_13_20_en);
  defparam lfsr11_13_20_reg_inst.init_index = 2;
  defparam lfsr11_13_20_reg_inst.init_value = 1'b1;
  defparam lfsr11_13_20_reg_inst.latency = 1;
  defparam lfsr11_13_20_reg_inst.width = 1;
  synth_reg_w_init lfsr11_13_20_reg_inst(.ce(lfsr11_13_20_reg_ce), .clk(clk), .clr(clr), .i(lfsr11_13_20_reg_i), .o(lfsr11_13_20_reg_o));
  assign lfsr12_14_20_reg_i = lfsr12_14_20_next;
  assign lfsr12_14_20 = lfsr12_14_20_reg_o;
  assign lfsr12_14_20_reg_ce = (ce && lfsr12_14_20_en);
  defparam lfsr12_14_20_reg_inst.init_index = 2;
  defparam lfsr12_14_20_reg_inst.init_value = 1'b1;
  defparam lfsr12_14_20_reg_inst.latency = 1;
  defparam lfsr12_14_20_reg_inst.width = 1;
  synth_reg_w_init lfsr12_14_20_reg_inst(.ce(lfsr12_14_20_reg_ce), .clk(clk), .clr(clr), .i(lfsr12_14_20_reg_i), .o(lfsr12_14_20_reg_o));
  assign lfsr13_15_20_reg_i = lfsr13_15_20_next;
  assign lfsr13_15_20 = lfsr13_15_20_reg_o;
  assign lfsr13_15_20_reg_ce = (ce && lfsr13_15_20_en);
  defparam lfsr13_15_20_reg_inst.init_index = 2;
  defparam lfsr13_15_20_reg_inst.init_value = 1'b1;
  defparam lfsr13_15_20_reg_inst.latency = 1;
  defparam lfsr13_15_20_reg_inst.width = 1;
  synth_reg_w_init lfsr13_15_20_reg_inst(.ce(lfsr13_15_20_reg_ce), .clk(clk), .clr(clr), .i(lfsr13_15_20_reg_i), .o(lfsr13_15_20_reg_o));
  always @(posedge clk)
    begin:proc_lfsr14_16_20
      if (((ce == 1'b1) && (lfsr14_16_20_en == 1'b1)))
        begin
          lfsr14_16_20 <= lfsr14_16_20_next;
        end
    end
  assign lfsr15_17_20_reg_i = lfsr15_17_20_next;
  assign lfsr15_17_20 = lfsr15_17_20_reg_o;
  assign lfsr15_17_20_reg_ce = (ce && lfsr15_17_20_en);
  defparam lfsr15_17_20_reg_inst.init_index = 2;
  defparam lfsr15_17_20_reg_inst.init_value = 1'b1;
  defparam lfsr15_17_20_reg_inst.latency = 1;
  defparam lfsr15_17_20_reg_inst.width = 1;
  synth_reg_w_init lfsr15_17_20_reg_inst(.ce(lfsr15_17_20_reg_ce), .clk(clk), .clr(clr), .i(lfsr15_17_20_reg_i), .o(lfsr15_17_20_reg_o));
  always @(posedge clk)
    begin:proc_lfsr16_18_20
      if (((ce == 1'b1) && (lfsr16_18_20_en == 1'b1)))
        begin
          lfsr16_18_20 <= lfsr16_18_20_next;
        end
    end
  always @(posedge clk)
    begin:proc_lfsr17_19_20
      if (((ce == 1'b1) && (lfsr17_19_20_en == 1'b1)))
        begin
          lfsr17_19_20 <= lfsr17_19_20_next;
        end
    end
  always @(posedge clk)
    begin:proc_lfsr18_20_20
      if (((ce == 1'b1) && (lfsr18_20_20_en == 1'b1)))
        begin
          lfsr18_20_20 <= lfsr18_20_20_next;
        end
    end
  always @(posedge clk)
    begin:proc_lfsr19_21_20
      if (((ce == 1'b1) && (lfsr19_21_20_en == 1'b1)))
        begin
          lfsr19_21_20 <= lfsr19_21_20_next;
        end
    end
  assign lfsr20_22_20_reg_i = lfsr20_22_20_next;
  assign lfsr20_22_20 = lfsr20_22_20_reg_o;
  assign lfsr20_22_20_reg_ce = (ce && lfsr20_22_20_en);
  defparam lfsr20_22_20_reg_inst.init_index = 2;
  defparam lfsr20_22_20_reg_inst.init_value = 1'b1;
  defparam lfsr20_22_20_reg_inst.latency = 1;
  defparam lfsr20_22_20_reg_inst.width = 1;
  synth_reg_w_init lfsr20_22_20_reg_inst(.ce(lfsr20_22_20_reg_ce), .clk(clk), .clr(clr), .i(lfsr20_22_20_reg_i), .o(lfsr20_22_20_reg_o));
  assign lfsr21_23_20_reg_i = lfsr21_23_20_next;
  assign lfsr21_23_20 = lfsr21_23_20_reg_o;
  assign lfsr21_23_20_reg_ce = (ce && lfsr21_23_20_en);
  defparam lfsr21_23_20_reg_inst.init_index = 2;
  defparam lfsr21_23_20_reg_inst.init_value = 1'b1;
  defparam lfsr21_23_20_reg_inst.latency = 1;
  defparam lfsr21_23_20_reg_inst.width = 1;
  synth_reg_w_init lfsr21_23_20_reg_inst(.ce(lfsr21_23_20_reg_ce), .clk(clk), .clr(clr), .i(lfsr21_23_20_reg_i), .o(lfsr21_23_20_reg_o));
  always @(posedge clk)
    begin:proc_lfsr22_24_20
      if (((ce == 1'b1) && (lfsr22_24_20_en == 1'b1)))
        begin
          lfsr22_24_20 <= lfsr22_24_20_next;
        end
    end
  always @(posedge clk)
    begin:proc_lfsr23_25_20
      if (((ce == 1'b1) && (lfsr23_25_20_en == 1'b1)))
        begin
          lfsr23_25_20 <= lfsr23_25_20_next;
        end
    end
  assign concat_26_26 = {lfsr23_25_20, lfsr22_24_20, lfsr21_23_20, lfsr20_22_20, lfsr19_21_20, lfsr18_20_20, lfsr17_19_20, lfsr16_18_20, lfsr15_17_20, lfsr14_16_20, lfsr13_15_20, lfsr12_14_20, lfsr11_13_20, lfsr10_12_20, lfsr9_11_19, lfsr8_10_19, lfsr7_9_19, lfsr6_8_19, lfsr5_7_19, lfsr4_6_19, lfsr3_5_19, lfsr2_4_19, lfsr1_3_19, lfsr0_2_19};
  assign lfsr17_95_1_bit = lfsr16_18_20 ^ lfsr23_25_20;
  assign lfsr22_100_1_bit = lfsr21_23_20 ^ lfsr23_25_20;
  assign lfsr23_101_1_bit = lfsr22_24_20 ^ lfsr23_25_20;
  always @(en_1_63 or lfsr0_2_19 or lfsr10_12_20 or lfsr11_13_20 or lfsr12_14_20 or lfsr13_15_20 or lfsr14_16_20 or lfsr15_17_20 or lfsr17_19_20 or lfsr17_95_1_bit or lfsr18_20_20 or lfsr19_21_20 or lfsr1_3_19 or lfsr20_22_20 or lfsr22_100_1_bit or lfsr23_101_1_bit or lfsr23_25_20 or lfsr2_4_19 or lfsr3_5_19 or lfsr4_6_19 or lfsr5_7_19 or lfsr6_8_19 or lfsr7_9_19 or lfsr8_10_19 or lfsr9_11_19)
    begin:proc_if_53_1
      if (en_1_63)
        begin
          lfsr9_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr9_join_53_1_en = 1'b0;
        end
      lfsr9_join_53_1 = lfsr8_10_19;
      if (en_1_63)
        begin
          lfsr19_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr19_join_53_1_en = 1'b0;
        end
      lfsr19_join_53_1 = lfsr18_20_20;
      if (en_1_63)
        begin
          lfsr20_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr20_join_53_1_en = 1'b0;
        end
      lfsr20_join_53_1 = lfsr19_21_20;
      if (en_1_63)
        begin
          lfsr4_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr4_join_53_1_en = 1'b0;
        end
      lfsr4_join_53_1 = lfsr3_5_19;
      if (en_1_63)
        begin
          lfsr10_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr10_join_53_1_en = 1'b0;
        end
      lfsr10_join_53_1 = lfsr9_11_19;
      if (en_1_63)
        begin
          lfsr18_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr18_join_53_1_en = 1'b0;
        end
      lfsr18_join_53_1 = lfsr17_19_20;
      if (en_1_63)
        begin
          lfsr11_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr11_join_53_1_en = 1'b0;
        end
      lfsr11_join_53_1 = lfsr10_12_20;
      if (en_1_63)
        begin
          lfsr16_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr16_join_53_1_en = 1'b0;
        end
      lfsr16_join_53_1 = lfsr15_17_20;
      if (en_1_63)
        begin
          lfsr12_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr12_join_53_1_en = 1'b0;
        end
      lfsr12_join_53_1 = lfsr11_13_20;
      if (en_1_63)
        begin
          lfsr0_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr0_join_53_1_en = 1'b0;
        end
      lfsr0_join_53_1 = lfsr23_25_20;
      if (en_1_63)
        begin
          lfsr15_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr15_join_53_1_en = 1'b0;
        end
      lfsr15_join_53_1 = lfsr14_16_20;
      if (en_1_63)
        begin
          lfsr2_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr2_join_53_1_en = 1'b0;
        end
      lfsr2_join_53_1 = lfsr1_3_19;
      if (en_1_63)
        begin
          lfsr23_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr23_join_53_1_en = 1'b0;
        end
      lfsr23_join_53_1 = lfsr23_101_1_bit;
      if (en_1_63)
        begin
          lfsr3_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr3_join_53_1_en = 1'b0;
        end
      lfsr3_join_53_1 = lfsr2_4_19;
      if (en_1_63)
        begin
          lfsr14_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr14_join_53_1_en = 1'b0;
        end
      lfsr14_join_53_1 = lfsr13_15_20;
      if (en_1_63)
        begin
          lfsr21_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr21_join_53_1_en = 1'b0;
        end
      lfsr21_join_53_1 = lfsr20_22_20;
      if (en_1_63)
        begin
          lfsr1_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr1_join_53_1_en = 1'b0;
        end
      lfsr1_join_53_1 = lfsr0_2_19;
      if (en_1_63)
        begin
          lfsr22_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr22_join_53_1_en = 1'b0;
        end
      lfsr22_join_53_1 = lfsr22_100_1_bit;
      if (en_1_63)
        begin
          lfsr13_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr13_join_53_1_en = 1'b0;
        end
      lfsr13_join_53_1 = lfsr12_14_20;
      if (en_1_63)
        begin
          lfsr8_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr8_join_53_1_en = 1'b0;
        end
      lfsr8_join_53_1 = lfsr7_9_19;
      if (en_1_63)
        begin
          lfsr6_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr6_join_53_1_en = 1'b0;
        end
      lfsr6_join_53_1 = lfsr5_7_19;
      if (en_1_63)
        begin
          lfsr5_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr5_join_53_1_en = 1'b0;
        end
      lfsr5_join_53_1 = lfsr4_6_19;
      if (en_1_63)
        begin
          lfsr17_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr17_join_53_1_en = 1'b0;
        end
      lfsr17_join_53_1 = lfsr17_95_1_bit;
      if (en_1_63)
        begin
          lfsr7_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr7_join_53_1_en = 1'b0;
        end
      lfsr7_join_53_1 = lfsr6_8_19;
    end
  assign lfsr0_2_19_next = lfsr23_25_20;
  assign lfsr0_2_19_en = lfsr0_join_53_1_en;
  assign lfsr1_3_19_next = lfsr0_2_19;
  assign lfsr1_3_19_en = lfsr1_join_53_1_en;
  assign lfsr2_4_19_next = lfsr1_3_19;
  assign lfsr2_4_19_en = lfsr2_join_53_1_en;
  assign lfsr3_5_19_next = lfsr2_4_19;
  assign lfsr3_5_19_en = lfsr3_join_53_1_en;
  assign lfsr4_6_19_next = lfsr3_5_19;
  assign lfsr4_6_19_en = lfsr4_join_53_1_en;
  assign lfsr5_7_19_next = lfsr4_6_19;
  assign lfsr5_7_19_en = lfsr5_join_53_1_en;
  assign lfsr6_8_19_next = lfsr5_7_19;
  assign lfsr6_8_19_en = lfsr6_join_53_1_en;
  assign lfsr7_9_19_next = lfsr6_8_19;
  assign lfsr7_9_19_en = lfsr7_join_53_1_en;
  assign lfsr8_10_19_next = lfsr7_9_19;
  assign lfsr8_10_19_en = lfsr8_join_53_1_en;
  assign lfsr9_11_19_next = lfsr8_10_19;
  assign lfsr9_11_19_en = lfsr9_join_53_1_en;
  assign lfsr10_12_20_next = lfsr9_11_19;
  assign lfsr10_12_20_en = lfsr10_join_53_1_en;
  assign lfsr11_13_20_next = lfsr10_12_20;
  assign lfsr11_13_20_en = lfsr11_join_53_1_en;
  assign lfsr12_14_20_next = lfsr11_13_20;
  assign lfsr12_14_20_en = lfsr12_join_53_1_en;
  assign lfsr13_15_20_next = lfsr12_14_20;
  assign lfsr13_15_20_en = lfsr13_join_53_1_en;
  assign lfsr14_16_20_next = lfsr13_15_20;
  assign lfsr14_16_20_en = lfsr14_join_53_1_en;
  assign lfsr15_17_20_next = lfsr14_16_20;
  assign lfsr15_17_20_en = lfsr15_join_53_1_en;
  assign lfsr16_18_20_next = lfsr15_17_20;
  assign lfsr16_18_20_en = lfsr16_join_53_1_en;
  assign lfsr17_19_20_next = lfsr17_95_1_bit;
  assign lfsr17_19_20_en = lfsr17_join_53_1_en;
  assign lfsr18_20_20_next = lfsr17_19_20;
  assign lfsr18_20_20_en = lfsr18_join_53_1_en;
  assign lfsr19_21_20_next = lfsr18_20_20;
  assign lfsr19_21_20_en = lfsr19_join_53_1_en;
  assign lfsr20_22_20_next = lfsr19_21_20;
  assign lfsr20_22_20_en = lfsr20_join_53_1_en;
  assign lfsr21_23_20_next = lfsr20_22_20;
  assign lfsr21_23_20_en = lfsr21_join_53_1_en;
  assign lfsr22_24_20_next = lfsr22_100_1_bit;
  assign lfsr22_24_20_en = lfsr22_join_53_1_en;
  assign lfsr23_25_20_next = lfsr23_101_1_bit;
  assign lfsr23_25_20_en = lfsr23_join_53_1_en;
  assign dout = concat_26_26;
endmodule
`timescale 1 ns / 10 ps
module sysgen_lfsr_e4521b68d3 (
  input [(1 - 1):0] en,
  output [(24 - 1):0] dout,
  input clk,
  input ce,
  input clr);
  wire en_1_63;
  wire [(1 - 1):0] lfsr0_2_19_next;
  reg [(1 - 1):0] lfsr0_2_19 = 1'b0;
  wire lfsr0_2_19_en;
  wire [(1 - 1):0] lfsr1_3_19_next;
  wire [(1 - 1):0] lfsr1_3_19;
  wire lfsr1_3_19_en;
  wire [(1 - 1):0] lfsr1_3_19_reg_i;
  wire [(1 - 1):0] lfsr1_3_19_reg_o;
  wire lfsr1_3_19_reg_ce;
  wire [(1 - 1):0] lfsr2_4_19_next;
  reg [(1 - 1):0] lfsr2_4_19 = 1'b0;
  wire lfsr2_4_19_en;
  wire [(1 - 1):0] lfsr3_5_19_next;
  reg [(1 - 1):0] lfsr3_5_19 = 1'b0;
  wire lfsr3_5_19_en;
  wire [(1 - 1):0] lfsr4_6_19_next;
  reg [(1 - 1):0] lfsr4_6_19 = 1'b0;
  wire lfsr4_6_19_en;
  wire [(1 - 1):0] lfsr5_7_19_next;
  reg [(1 - 1):0] lfsr5_7_19 = 1'b0;
  wire lfsr5_7_19_en;
  wire [(1 - 1):0] lfsr6_8_19_next;
  reg [(1 - 1):0] lfsr6_8_19 = 1'b0;
  wire lfsr6_8_19_en;
  wire [(1 - 1):0] lfsr7_9_19_next;
  wire [(1 - 1):0] lfsr7_9_19;
  wire lfsr7_9_19_en;
  wire [(1 - 1):0] lfsr7_9_19_reg_i;
  wire [(1 - 1):0] lfsr7_9_19_reg_o;
  wire lfsr7_9_19_reg_ce;
  wire [(1 - 1):0] lfsr8_10_19_next;
  wire [(1 - 1):0] lfsr8_10_19;
  wire lfsr8_10_19_en;
  wire [(1 - 1):0] lfsr8_10_19_reg_i;
  wire [(1 - 1):0] lfsr8_10_19_reg_o;
  wire lfsr8_10_19_reg_ce;
  wire [(1 - 1):0] lfsr9_11_19_next;
  reg [(1 - 1):0] lfsr9_11_19 = 1'b0;
  wire lfsr9_11_19_en;
  wire [(1 - 1):0] lfsr10_12_20_next;
  wire [(1 - 1):0] lfsr10_12_20;
  wire lfsr10_12_20_en;
  wire [(1 - 1):0] lfsr10_12_20_reg_i;
  wire [(1 - 1):0] lfsr10_12_20_reg_o;
  wire lfsr10_12_20_reg_ce;
  wire [(1 - 1):0] lfsr11_13_20_next;
  wire [(1 - 1):0] lfsr11_13_20;
  wire lfsr11_13_20_en;
  wire [(1 - 1):0] lfsr11_13_20_reg_i;
  wire [(1 - 1):0] lfsr11_13_20_reg_o;
  wire lfsr11_13_20_reg_ce;
  wire [(1 - 1):0] lfsr12_14_20_next;
  wire [(1 - 1):0] lfsr12_14_20;
  wire lfsr12_14_20_en;
  wire [(1 - 1):0] lfsr12_14_20_reg_i;
  wire [(1 - 1):0] lfsr12_14_20_reg_o;
  wire lfsr12_14_20_reg_ce;
  wire [(1 - 1):0] lfsr13_15_20_next;
  wire [(1 - 1):0] lfsr13_15_20;
  wire lfsr13_15_20_en;
  wire [(1 - 1):0] lfsr13_15_20_reg_i;
  wire [(1 - 1):0] lfsr13_15_20_reg_o;
  wire lfsr13_15_20_reg_ce;
  wire [(1 - 1):0] lfsr14_16_20_next;
  wire [(1 - 1):0] lfsr14_16_20;
  wire lfsr14_16_20_en;
  wire [(1 - 1):0] lfsr14_16_20_reg_i;
  wire [(1 - 1):0] lfsr14_16_20_reg_o;
  wire lfsr14_16_20_reg_ce;
  wire [(1 - 1):0] lfsr15_17_20_next;
  reg [(1 - 1):0] lfsr15_17_20 = 1'b0;
  wire lfsr15_17_20_en;
  wire [(1 - 1):0] lfsr16_18_20_next;
  reg [(1 - 1):0] lfsr16_18_20 = 1'b0;
  wire lfsr16_18_20_en;
  wire [(1 - 1):0] lfsr17_19_20_next;
  wire [(1 - 1):0] lfsr17_19_20;
  wire lfsr17_19_20_en;
  wire [(1 - 1):0] lfsr17_19_20_reg_i;
  wire [(1 - 1):0] lfsr17_19_20_reg_o;
  wire lfsr17_19_20_reg_ce;
  wire [(1 - 1):0] lfsr18_20_20_next;
  wire [(1 - 1):0] lfsr18_20_20;
  wire lfsr18_20_20_en;
  wire [(1 - 1):0] lfsr18_20_20_reg_i;
  wire [(1 - 1):0] lfsr18_20_20_reg_o;
  wire lfsr18_20_20_reg_ce;
  wire [(1 - 1):0] lfsr19_21_20_next;
  reg [(1 - 1):0] lfsr19_21_20 = 1'b0;
  wire lfsr19_21_20_en;
  wire [(1 - 1):0] lfsr20_22_20_next;
  reg [(1 - 1):0] lfsr20_22_20 = 1'b0;
  wire lfsr20_22_20_en;
  wire [(1 - 1):0] lfsr21_23_20_next;
  wire [(1 - 1):0] lfsr21_23_20;
  wire lfsr21_23_20_en;
  wire [(1 - 1):0] lfsr21_23_20_reg_i;
  wire [(1 - 1):0] lfsr21_23_20_reg_o;
  wire lfsr21_23_20_reg_ce;
  wire [(1 - 1):0] lfsr22_24_20_next;
  wire [(1 - 1):0] lfsr22_24_20;
  wire lfsr22_24_20_en;
  wire [(1 - 1):0] lfsr22_24_20_reg_i;
  wire [(1 - 1):0] lfsr22_24_20_reg_o;
  wire lfsr22_24_20_reg_ce;
  wire [(1 - 1):0] lfsr23_25_20_next;
  reg [(1 - 1):0] lfsr23_25_20 = 1'b0;
  wire lfsr23_25_20_en;
  wire [(24 - 1):0] concat_26_26;
  wire [(1 - 1):0] lfsr17_95_1_bit;
  wire [(1 - 1):0] lfsr22_100_1_bit;
  wire [(1 - 1):0] lfsr23_101_1_bit;
  reg [(1 - 1):0] lfsr21_join_53_1;
  reg lfsr21_join_53_1_en;
  reg [(1 - 1):0] lfsr3_join_53_1;
  reg lfsr3_join_53_1_en;
  reg [(1 - 1):0] lfsr0_join_53_1;
  reg lfsr0_join_53_1_en;
  reg [(1 - 1):0] lfsr13_join_53_1;
  reg lfsr13_join_53_1_en;
  reg [(1 - 1):0] lfsr23_join_53_1;
  reg lfsr23_join_53_1_en;
  reg [(1 - 1):0] lfsr16_join_53_1;
  reg lfsr16_join_53_1_en;
  reg [(1 - 1):0] lfsr22_join_53_1;
  reg lfsr22_join_53_1_en;
  reg [(1 - 1):0] lfsr6_join_53_1;
  reg lfsr6_join_53_1_en;
  reg [(1 - 1):0] lfsr18_join_53_1;
  reg lfsr18_join_53_1_en;
  reg [(1 - 1):0] lfsr9_join_53_1;
  reg lfsr9_join_53_1_en;
  reg [(1 - 1):0] lfsr17_join_53_1;
  reg lfsr17_join_53_1_en;
  reg [(1 - 1):0] lfsr20_join_53_1;
  reg lfsr20_join_53_1_en;
  reg [(1 - 1):0] lfsr1_join_53_1;
  reg lfsr1_join_53_1_en;
  reg [(1 - 1):0] lfsr14_join_53_1;
  reg lfsr14_join_53_1_en;
  reg [(1 - 1):0] lfsr10_join_53_1;
  reg lfsr10_join_53_1_en;
  reg [(1 - 1):0] lfsr4_join_53_1;
  reg lfsr4_join_53_1_en;
  reg [(1 - 1):0] lfsr15_join_53_1;
  reg lfsr15_join_53_1_en;
  reg [(1 - 1):0] lfsr7_join_53_1;
  reg lfsr7_join_53_1_en;
  reg [(1 - 1):0] lfsr11_join_53_1;
  reg lfsr11_join_53_1_en;
  reg [(1 - 1):0] lfsr12_join_53_1;
  reg lfsr12_join_53_1_en;
  reg [(1 - 1):0] lfsr5_join_53_1;
  reg lfsr5_join_53_1_en;
  reg [(1 - 1):0] lfsr19_join_53_1;
  reg lfsr19_join_53_1_en;
  reg [(1 - 1):0] lfsr8_join_53_1;
  reg lfsr8_join_53_1_en;
  reg [(1 - 1):0] lfsr2_join_53_1;
  reg lfsr2_join_53_1_en;
  assign en_1_63 = en;
  always @(posedge clk)
    begin:proc_lfsr0_2_19
      if (((ce == 1'b1) && (lfsr0_2_19_en == 1'b1)))
        begin
          lfsr0_2_19 <= lfsr0_2_19_next;
        end
    end
  assign lfsr1_3_19_reg_i = lfsr1_3_19_next;
  assign lfsr1_3_19 = lfsr1_3_19_reg_o;
  assign lfsr1_3_19_reg_ce = (ce && lfsr1_3_19_en);
  defparam lfsr1_3_19_reg_inst.init_index = 2;
  defparam lfsr1_3_19_reg_inst.init_value = 1'b1;
  defparam lfsr1_3_19_reg_inst.latency = 1;
  defparam lfsr1_3_19_reg_inst.width = 1;
  synth_reg_w_init lfsr1_3_19_reg_inst(.ce(lfsr1_3_19_reg_ce), .clk(clk), .clr(clr), .i(lfsr1_3_19_reg_i), .o(lfsr1_3_19_reg_o));
  always @(posedge clk)
    begin:proc_lfsr2_4_19
      if (((ce == 1'b1) && (lfsr2_4_19_en == 1'b1)))
        begin
          lfsr2_4_19 <= lfsr2_4_19_next;
        end
    end
  always @(posedge clk)
    begin:proc_lfsr3_5_19
      if (((ce == 1'b1) && (lfsr3_5_19_en == 1'b1)))
        begin
          lfsr3_5_19 <= lfsr3_5_19_next;
        end
    end
  always @(posedge clk)
    begin:proc_lfsr4_6_19
      if (((ce == 1'b1) && (lfsr4_6_19_en == 1'b1)))
        begin
          lfsr4_6_19 <= lfsr4_6_19_next;
        end
    end
  always @(posedge clk)
    begin:proc_lfsr5_7_19
      if (((ce == 1'b1) && (lfsr5_7_19_en == 1'b1)))
        begin
          lfsr5_7_19 <= lfsr5_7_19_next;
        end
    end
  always @(posedge clk)
    begin:proc_lfsr6_8_19
      if (((ce == 1'b1) && (lfsr6_8_19_en == 1'b1)))
        begin
          lfsr6_8_19 <= lfsr6_8_19_next;
        end
    end
  assign lfsr7_9_19_reg_i = lfsr7_9_19_next;
  assign lfsr7_9_19 = lfsr7_9_19_reg_o;
  assign lfsr7_9_19_reg_ce = (ce && lfsr7_9_19_en);
  defparam lfsr7_9_19_reg_inst.init_index = 2;
  defparam lfsr7_9_19_reg_inst.init_value = 1'b1;
  defparam lfsr7_9_19_reg_inst.latency = 1;
  defparam lfsr7_9_19_reg_inst.width = 1;
  synth_reg_w_init lfsr7_9_19_reg_inst(.ce(lfsr7_9_19_reg_ce), .clk(clk), .clr(clr), .i(lfsr7_9_19_reg_i), .o(lfsr7_9_19_reg_o));
  assign lfsr8_10_19_reg_i = lfsr8_10_19_next;
  assign lfsr8_10_19 = lfsr8_10_19_reg_o;
  assign lfsr8_10_19_reg_ce = (ce && lfsr8_10_19_en);
  defparam lfsr8_10_19_reg_inst.init_index = 2;
  defparam lfsr8_10_19_reg_inst.init_value = 1'b1;
  defparam lfsr8_10_19_reg_inst.latency = 1;
  defparam lfsr8_10_19_reg_inst.width = 1;
  synth_reg_w_init lfsr8_10_19_reg_inst(.ce(lfsr8_10_19_reg_ce), .clk(clk), .clr(clr), .i(lfsr8_10_19_reg_i), .o(lfsr8_10_19_reg_o));
  always @(posedge clk)
    begin:proc_lfsr9_11_19
      if (((ce == 1'b1) && (lfsr9_11_19_en == 1'b1)))
        begin
          lfsr9_11_19 <= lfsr9_11_19_next;
        end
    end
  assign lfsr10_12_20_reg_i = lfsr10_12_20_next;
  assign lfsr10_12_20 = lfsr10_12_20_reg_o;
  assign lfsr10_12_20_reg_ce = (ce && lfsr10_12_20_en);
  defparam lfsr10_12_20_reg_inst.init_index = 2;
  defparam lfsr10_12_20_reg_inst.init_value = 1'b1;
  defparam lfsr10_12_20_reg_inst.latency = 1;
  defparam lfsr10_12_20_reg_inst.width = 1;
  synth_reg_w_init lfsr10_12_20_reg_inst(.ce(lfsr10_12_20_reg_ce), .clk(clk), .clr(clr), .i(lfsr10_12_20_reg_i), .o(lfsr10_12_20_reg_o));
  assign lfsr11_13_20_reg_i = lfsr11_13_20_next;
  assign lfsr11_13_20 = lfsr11_13_20_reg_o;
  assign lfsr11_13_20_reg_ce = (ce && lfsr11_13_20_en);
  defparam lfsr11_13_20_reg_inst.init_index = 2;
  defparam lfsr11_13_20_reg_inst.init_value = 1'b1;
  defparam lfsr11_13_20_reg_inst.latency = 1;
  defparam lfsr11_13_20_reg_inst.width = 1;
  synth_reg_w_init lfsr11_13_20_reg_inst(.ce(lfsr11_13_20_reg_ce), .clk(clk), .clr(clr), .i(lfsr11_13_20_reg_i), .o(lfsr11_13_20_reg_o));
  assign lfsr12_14_20_reg_i = lfsr12_14_20_next;
  assign lfsr12_14_20 = lfsr12_14_20_reg_o;
  assign lfsr12_14_20_reg_ce = (ce && lfsr12_14_20_en);
  defparam lfsr12_14_20_reg_inst.init_index = 2;
  defparam lfsr12_14_20_reg_inst.init_value = 1'b1;
  defparam lfsr12_14_20_reg_inst.latency = 1;
  defparam lfsr12_14_20_reg_inst.width = 1;
  synth_reg_w_init lfsr12_14_20_reg_inst(.ce(lfsr12_14_20_reg_ce), .clk(clk), .clr(clr), .i(lfsr12_14_20_reg_i), .o(lfsr12_14_20_reg_o));
  assign lfsr13_15_20_reg_i = lfsr13_15_20_next;
  assign lfsr13_15_20 = lfsr13_15_20_reg_o;
  assign lfsr13_15_20_reg_ce = (ce && lfsr13_15_20_en);
  defparam lfsr13_15_20_reg_inst.init_index = 2;
  defparam lfsr13_15_20_reg_inst.init_value = 1'b1;
  defparam lfsr13_15_20_reg_inst.latency = 1;
  defparam lfsr13_15_20_reg_inst.width = 1;
  synth_reg_w_init lfsr13_15_20_reg_inst(.ce(lfsr13_15_20_reg_ce), .clk(clk), .clr(clr), .i(lfsr13_15_20_reg_i), .o(lfsr13_15_20_reg_o));
  assign lfsr14_16_20_reg_i = lfsr14_16_20_next;
  assign lfsr14_16_20 = lfsr14_16_20_reg_o;
  assign lfsr14_16_20_reg_ce = (ce && lfsr14_16_20_en);
  defparam lfsr14_16_20_reg_inst.init_index = 2;
  defparam lfsr14_16_20_reg_inst.init_value = 1'b1;
  defparam lfsr14_16_20_reg_inst.latency = 1;
  defparam lfsr14_16_20_reg_inst.width = 1;
  synth_reg_w_init lfsr14_16_20_reg_inst(.ce(lfsr14_16_20_reg_ce), .clk(clk), .clr(clr), .i(lfsr14_16_20_reg_i), .o(lfsr14_16_20_reg_o));
  always @(posedge clk)
    begin:proc_lfsr15_17_20
      if (((ce == 1'b1) && (lfsr15_17_20_en == 1'b1)))
        begin
          lfsr15_17_20 <= lfsr15_17_20_next;
        end
    end
  always @(posedge clk)
    begin:proc_lfsr16_18_20
      if (((ce == 1'b1) && (lfsr16_18_20_en == 1'b1)))
        begin
          lfsr16_18_20 <= lfsr16_18_20_next;
        end
    end
  assign lfsr17_19_20_reg_i = lfsr17_19_20_next;
  assign lfsr17_19_20 = lfsr17_19_20_reg_o;
  assign lfsr17_19_20_reg_ce = (ce && lfsr17_19_20_en);
  defparam lfsr17_19_20_reg_inst.init_index = 2;
  defparam lfsr17_19_20_reg_inst.init_value = 1'b1;
  defparam lfsr17_19_20_reg_inst.latency = 1;
  defparam lfsr17_19_20_reg_inst.width = 1;
  synth_reg_w_init lfsr17_19_20_reg_inst(.ce(lfsr17_19_20_reg_ce), .clk(clk), .clr(clr), .i(lfsr17_19_20_reg_i), .o(lfsr17_19_20_reg_o));
  assign lfsr18_20_20_reg_i = lfsr18_20_20_next;
  assign lfsr18_20_20 = lfsr18_20_20_reg_o;
  assign lfsr18_20_20_reg_ce = (ce && lfsr18_20_20_en);
  defparam lfsr18_20_20_reg_inst.init_index = 2;
  defparam lfsr18_20_20_reg_inst.init_value = 1'b1;
  defparam lfsr18_20_20_reg_inst.latency = 1;
  defparam lfsr18_20_20_reg_inst.width = 1;
  synth_reg_w_init lfsr18_20_20_reg_inst(.ce(lfsr18_20_20_reg_ce), .clk(clk), .clr(clr), .i(lfsr18_20_20_reg_i), .o(lfsr18_20_20_reg_o));
  always @(posedge clk)
    begin:proc_lfsr19_21_20
      if (((ce == 1'b1) && (lfsr19_21_20_en == 1'b1)))
        begin
          lfsr19_21_20 <= lfsr19_21_20_next;
        end
    end
  always @(posedge clk)
    begin:proc_lfsr20_22_20
      if (((ce == 1'b1) && (lfsr20_22_20_en == 1'b1)))
        begin
          lfsr20_22_20 <= lfsr20_22_20_next;
        end
    end
  assign lfsr21_23_20_reg_i = lfsr21_23_20_next;
  assign lfsr21_23_20 = lfsr21_23_20_reg_o;
  assign lfsr21_23_20_reg_ce = (ce && lfsr21_23_20_en);
  defparam lfsr21_23_20_reg_inst.init_index = 2;
  defparam lfsr21_23_20_reg_inst.init_value = 1'b1;
  defparam lfsr21_23_20_reg_inst.latency = 1;
  defparam lfsr21_23_20_reg_inst.width = 1;
  synth_reg_w_init lfsr21_23_20_reg_inst(.ce(lfsr21_23_20_reg_ce), .clk(clk), .clr(clr), .i(lfsr21_23_20_reg_i), .o(lfsr21_23_20_reg_o));
  assign lfsr22_24_20_reg_i = lfsr22_24_20_next;
  assign lfsr22_24_20 = lfsr22_24_20_reg_o;
  assign lfsr22_24_20_reg_ce = (ce && lfsr22_24_20_en);
  defparam lfsr22_24_20_reg_inst.init_index = 2;
  defparam lfsr22_24_20_reg_inst.init_value = 1'b1;
  defparam lfsr22_24_20_reg_inst.latency = 1;
  defparam lfsr22_24_20_reg_inst.width = 1;
  synth_reg_w_init lfsr22_24_20_reg_inst(.ce(lfsr22_24_20_reg_ce), .clk(clk), .clr(clr), .i(lfsr22_24_20_reg_i), .o(lfsr22_24_20_reg_o));
  always @(posedge clk)
    begin:proc_lfsr23_25_20
      if (((ce == 1'b1) && (lfsr23_25_20_en == 1'b1)))
        begin
          lfsr23_25_20 <= lfsr23_25_20_next;
        end
    end
  assign concat_26_26 = {lfsr23_25_20, lfsr22_24_20, lfsr21_23_20, lfsr20_22_20, lfsr19_21_20, lfsr18_20_20, lfsr17_19_20, lfsr16_18_20, lfsr15_17_20, lfsr14_16_20, lfsr13_15_20, lfsr12_14_20, lfsr11_13_20, lfsr10_12_20, lfsr9_11_19, lfsr8_10_19, lfsr7_9_19, lfsr6_8_19, lfsr5_7_19, lfsr4_6_19, lfsr3_5_19, lfsr2_4_19, lfsr1_3_19, lfsr0_2_19};
  assign lfsr17_95_1_bit = lfsr16_18_20 ^ lfsr23_25_20;
  assign lfsr22_100_1_bit = lfsr21_23_20 ^ lfsr23_25_20;
  assign lfsr23_101_1_bit = lfsr22_24_20 ^ lfsr23_25_20;
  always @(en_1_63 or lfsr0_2_19 or lfsr10_12_20 or lfsr11_13_20 or lfsr12_14_20 or lfsr13_15_20 or lfsr14_16_20 or lfsr15_17_20 or lfsr17_19_20 or lfsr17_95_1_bit or lfsr18_20_20 or lfsr19_21_20 or lfsr1_3_19 or lfsr20_22_20 or lfsr22_100_1_bit or lfsr23_101_1_bit or lfsr23_25_20 or lfsr2_4_19 or lfsr3_5_19 or lfsr4_6_19 or lfsr5_7_19 or lfsr6_8_19 or lfsr7_9_19 or lfsr8_10_19 or lfsr9_11_19)
    begin:proc_if_53_1
      if (en_1_63)
        begin
          lfsr21_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr21_join_53_1_en = 1'b0;
        end
      lfsr21_join_53_1 = lfsr20_22_20;
      if (en_1_63)
        begin
          lfsr3_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr3_join_53_1_en = 1'b0;
        end
      lfsr3_join_53_1 = lfsr2_4_19;
      if (en_1_63)
        begin
          lfsr0_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr0_join_53_1_en = 1'b0;
        end
      lfsr0_join_53_1 = lfsr23_25_20;
      if (en_1_63)
        begin
          lfsr13_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr13_join_53_1_en = 1'b0;
        end
      lfsr13_join_53_1 = lfsr12_14_20;
      if (en_1_63)
        begin
          lfsr23_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr23_join_53_1_en = 1'b0;
        end
      lfsr23_join_53_1 = lfsr23_101_1_bit;
      if (en_1_63)
        begin
          lfsr16_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr16_join_53_1_en = 1'b0;
        end
      lfsr16_join_53_1 = lfsr15_17_20;
      if (en_1_63)
        begin
          lfsr22_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr22_join_53_1_en = 1'b0;
        end
      lfsr22_join_53_1 = lfsr22_100_1_bit;
      if (en_1_63)
        begin
          lfsr6_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr6_join_53_1_en = 1'b0;
        end
      lfsr6_join_53_1 = lfsr5_7_19;
      if (en_1_63)
        begin
          lfsr18_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr18_join_53_1_en = 1'b0;
        end
      lfsr18_join_53_1 = lfsr17_19_20;
      if (en_1_63)
        begin
          lfsr9_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr9_join_53_1_en = 1'b0;
        end
      lfsr9_join_53_1 = lfsr8_10_19;
      if (en_1_63)
        begin
          lfsr17_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr17_join_53_1_en = 1'b0;
        end
      lfsr17_join_53_1 = lfsr17_95_1_bit;
      if (en_1_63)
        begin
          lfsr20_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr20_join_53_1_en = 1'b0;
        end
      lfsr20_join_53_1 = lfsr19_21_20;
      if (en_1_63)
        begin
          lfsr1_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr1_join_53_1_en = 1'b0;
        end
      lfsr1_join_53_1 = lfsr0_2_19;
      if (en_1_63)
        begin
          lfsr14_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr14_join_53_1_en = 1'b0;
        end
      lfsr14_join_53_1 = lfsr13_15_20;
      if (en_1_63)
        begin
          lfsr10_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr10_join_53_1_en = 1'b0;
        end
      lfsr10_join_53_1 = lfsr9_11_19;
      if (en_1_63)
        begin
          lfsr4_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr4_join_53_1_en = 1'b0;
        end
      lfsr4_join_53_1 = lfsr3_5_19;
      if (en_1_63)
        begin
          lfsr15_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr15_join_53_1_en = 1'b0;
        end
      lfsr15_join_53_1 = lfsr14_16_20;
      if (en_1_63)
        begin
          lfsr7_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr7_join_53_1_en = 1'b0;
        end
      lfsr7_join_53_1 = lfsr6_8_19;
      if (en_1_63)
        begin
          lfsr11_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr11_join_53_1_en = 1'b0;
        end
      lfsr11_join_53_1 = lfsr10_12_20;
      if (en_1_63)
        begin
          lfsr12_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr12_join_53_1_en = 1'b0;
        end
      lfsr12_join_53_1 = lfsr11_13_20;
      if (en_1_63)
        begin
          lfsr5_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr5_join_53_1_en = 1'b0;
        end
      lfsr5_join_53_1 = lfsr4_6_19;
      if (en_1_63)
        begin
          lfsr19_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr19_join_53_1_en = 1'b0;
        end
      lfsr19_join_53_1 = lfsr18_20_20;
      if (en_1_63)
        begin
          lfsr8_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr8_join_53_1_en = 1'b0;
        end
      lfsr8_join_53_1 = lfsr7_9_19;
      if (en_1_63)
        begin
          lfsr2_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr2_join_53_1_en = 1'b0;
        end
      lfsr2_join_53_1 = lfsr1_3_19;
    end
  assign lfsr0_2_19_next = lfsr23_25_20;
  assign lfsr0_2_19_en = lfsr0_join_53_1_en;
  assign lfsr1_3_19_next = lfsr0_2_19;
  assign lfsr1_3_19_en = lfsr1_join_53_1_en;
  assign lfsr2_4_19_next = lfsr1_3_19;
  assign lfsr2_4_19_en = lfsr2_join_53_1_en;
  assign lfsr3_5_19_next = lfsr2_4_19;
  assign lfsr3_5_19_en = lfsr3_join_53_1_en;
  assign lfsr4_6_19_next = lfsr3_5_19;
  assign lfsr4_6_19_en = lfsr4_join_53_1_en;
  assign lfsr5_7_19_next = lfsr4_6_19;
  assign lfsr5_7_19_en = lfsr5_join_53_1_en;
  assign lfsr6_8_19_next = lfsr5_7_19;
  assign lfsr6_8_19_en = lfsr6_join_53_1_en;
  assign lfsr7_9_19_next = lfsr6_8_19;
  assign lfsr7_9_19_en = lfsr7_join_53_1_en;
  assign lfsr8_10_19_next = lfsr7_9_19;
  assign lfsr8_10_19_en = lfsr8_join_53_1_en;
  assign lfsr9_11_19_next = lfsr8_10_19;
  assign lfsr9_11_19_en = lfsr9_join_53_1_en;
  assign lfsr10_12_20_next = lfsr9_11_19;
  assign lfsr10_12_20_en = lfsr10_join_53_1_en;
  assign lfsr11_13_20_next = lfsr10_12_20;
  assign lfsr11_13_20_en = lfsr11_join_53_1_en;
  assign lfsr12_14_20_next = lfsr11_13_20;
  assign lfsr12_14_20_en = lfsr12_join_53_1_en;
  assign lfsr13_15_20_next = lfsr12_14_20;
  assign lfsr13_15_20_en = lfsr13_join_53_1_en;
  assign lfsr14_16_20_next = lfsr13_15_20;
  assign lfsr14_16_20_en = lfsr14_join_53_1_en;
  assign lfsr15_17_20_next = lfsr14_16_20;
  assign lfsr15_17_20_en = lfsr15_join_53_1_en;
  assign lfsr16_18_20_next = lfsr15_17_20;
  assign lfsr16_18_20_en = lfsr16_join_53_1_en;
  assign lfsr17_19_20_next = lfsr17_95_1_bit;
  assign lfsr17_19_20_en = lfsr17_join_53_1_en;
  assign lfsr18_20_20_next = lfsr17_19_20;
  assign lfsr18_20_20_en = lfsr18_join_53_1_en;
  assign lfsr19_21_20_next = lfsr18_20_20;
  assign lfsr19_21_20_en = lfsr19_join_53_1_en;
  assign lfsr20_22_20_next = lfsr19_21_20;
  assign lfsr20_22_20_en = lfsr20_join_53_1_en;
  assign lfsr21_23_20_next = lfsr20_22_20;
  assign lfsr21_23_20_en = lfsr21_join_53_1_en;
  assign lfsr22_24_20_next = lfsr22_100_1_bit;
  assign lfsr22_24_20_en = lfsr22_join_53_1_en;
  assign lfsr23_25_20_next = lfsr23_101_1_bit;
  assign lfsr23_25_20_en = lfsr23_join_53_1_en;
  assign dout = concat_26_26;
endmodule
`timescale 1 ns / 10 ps
module sysgen_lfsr_42def34a67 (
  input [(1 - 1):0] en,
  output [(24 - 1):0] dout,
  input clk,
  input ce,
  input clr);
  wire en_1_63;
  wire [(1 - 1):0] lfsr0_2_19_next;
  reg [(1 - 1):0] lfsr0_2_19 = 1'b0;
  wire lfsr0_2_19_en;
  wire [(1 - 1):0] lfsr1_3_19_next;
  wire [(1 - 1):0] lfsr1_3_19;
  wire lfsr1_3_19_en;
  wire [(1 - 1):0] lfsr1_3_19_reg_i;
  wire [(1 - 1):0] lfsr1_3_19_reg_o;
  wire lfsr1_3_19_reg_ce;
  wire [(1 - 1):0] lfsr2_4_19_next;
  reg [(1 - 1):0] lfsr2_4_19 = 1'b0;
  wire lfsr2_4_19_en;
  wire [(1 - 1):0] lfsr3_5_19_next;
  reg [(1 - 1):0] lfsr3_5_19 = 1'b0;
  wire lfsr3_5_19_en;
  wire [(1 - 1):0] lfsr4_6_19_next;
  reg [(1 - 1):0] lfsr4_6_19 = 1'b0;
  wire lfsr4_6_19_en;
  wire [(1 - 1):0] lfsr5_7_19_next;
  wire [(1 - 1):0] lfsr5_7_19;
  wire lfsr5_7_19_en;
  wire [(1 - 1):0] lfsr5_7_19_reg_i;
  wire [(1 - 1):0] lfsr5_7_19_reg_o;
  wire lfsr5_7_19_reg_ce;
  wire [(1 - 1):0] lfsr6_8_19_next;
  wire [(1 - 1):0] lfsr6_8_19;
  wire lfsr6_8_19_en;
  wire [(1 - 1):0] lfsr6_8_19_reg_i;
  wire [(1 - 1):0] lfsr6_8_19_reg_o;
  wire lfsr6_8_19_reg_ce;
  wire [(1 - 1):0] lfsr7_9_19_next;
  wire [(1 - 1):0] lfsr7_9_19;
  wire lfsr7_9_19_en;
  wire [(1 - 1):0] lfsr7_9_19_reg_i;
  wire [(1 - 1):0] lfsr7_9_19_reg_o;
  wire lfsr7_9_19_reg_ce;
  wire [(1 - 1):0] lfsr8_10_19_next;
  reg [(1 - 1):0] lfsr8_10_19 = 1'b0;
  wire lfsr8_10_19_en;
  wire [(1 - 1):0] lfsr9_11_19_next;
  reg [(1 - 1):0] lfsr9_11_19 = 1'b0;
  wire lfsr9_11_19_en;
  wire [(1 - 1):0] lfsr10_12_20_next;
  wire [(1 - 1):0] lfsr10_12_20;
  wire lfsr10_12_20_en;
  wire [(1 - 1):0] lfsr10_12_20_reg_i;
  wire [(1 - 1):0] lfsr10_12_20_reg_o;
  wire lfsr10_12_20_reg_ce;
  wire [(1 - 1):0] lfsr11_13_20_next;
  reg [(1 - 1):0] lfsr11_13_20 = 1'b0;
  wire lfsr11_13_20_en;
  wire [(1 - 1):0] lfsr12_14_20_next;
  wire [(1 - 1):0] lfsr12_14_20;
  wire lfsr12_14_20_en;
  wire [(1 - 1):0] lfsr12_14_20_reg_i;
  wire [(1 - 1):0] lfsr12_14_20_reg_o;
  wire lfsr12_14_20_reg_ce;
  wire [(1 - 1):0] lfsr13_15_20_next;
  reg [(1 - 1):0] lfsr13_15_20 = 1'b0;
  wire lfsr13_15_20_en;
  wire [(1 - 1):0] lfsr14_16_20_next;
  wire [(1 - 1):0] lfsr14_16_20;
  wire lfsr14_16_20_en;
  wire [(1 - 1):0] lfsr14_16_20_reg_i;
  wire [(1 - 1):0] lfsr14_16_20_reg_o;
  wire lfsr14_16_20_reg_ce;
  wire [(1 - 1):0] lfsr15_17_20_next;
  wire [(1 - 1):0] lfsr15_17_20;
  wire lfsr15_17_20_en;
  wire [(1 - 1):0] lfsr15_17_20_reg_i;
  wire [(1 - 1):0] lfsr15_17_20_reg_o;
  wire lfsr15_17_20_reg_ce;
  wire [(1 - 1):0] lfsr16_18_20_next;
  reg [(1 - 1):0] lfsr16_18_20 = 1'b0;
  wire lfsr16_18_20_en;
  wire [(1 - 1):0] lfsr17_19_20_next;
  wire [(1 - 1):0] lfsr17_19_20;
  wire lfsr17_19_20_en;
  wire [(1 - 1):0] lfsr17_19_20_reg_i;
  wire [(1 - 1):0] lfsr17_19_20_reg_o;
  wire lfsr17_19_20_reg_ce;
  wire [(1 - 1):0] lfsr18_20_20_next;
  reg [(1 - 1):0] lfsr18_20_20 = 1'b0;
  wire lfsr18_20_20_en;
  wire [(1 - 1):0] lfsr19_21_20_next;
  wire [(1 - 1):0] lfsr19_21_20;
  wire lfsr19_21_20_en;
  wire [(1 - 1):0] lfsr19_21_20_reg_i;
  wire [(1 - 1):0] lfsr19_21_20_reg_o;
  wire lfsr19_21_20_reg_ce;
  wire [(1 - 1):0] lfsr20_22_20_next;
  reg [(1 - 1):0] lfsr20_22_20 = 1'b0;
  wire lfsr20_22_20_en;
  wire [(1 - 1):0] lfsr21_23_20_next;
  reg [(1 - 1):0] lfsr21_23_20 = 1'b0;
  wire lfsr21_23_20_en;
  wire [(1 - 1):0] lfsr22_24_20_next;
  reg [(1 - 1):0] lfsr22_24_20 = 1'b0;
  wire lfsr22_24_20_en;
  wire [(1 - 1):0] lfsr23_25_20_next;
  wire [(1 - 1):0] lfsr23_25_20;
  wire lfsr23_25_20_en;
  wire [(1 - 1):0] lfsr23_25_20_reg_i;
  wire [(1 - 1):0] lfsr23_25_20_reg_o;
  wire lfsr23_25_20_reg_ce;
  wire [(24 - 1):0] concat_26_26;
  wire [(1 - 1):0] lfsr17_95_1_bit;
  wire [(1 - 1):0] lfsr22_100_1_bit;
  wire [(1 - 1):0] lfsr23_101_1_bit;
  reg [(1 - 1):0] lfsr7_join_53_1;
  reg lfsr7_join_53_1_en;
  reg [(1 - 1):0] lfsr5_join_53_1;
  reg lfsr5_join_53_1_en;
  reg [(1 - 1):0] lfsr16_join_53_1;
  reg lfsr16_join_53_1_en;
  reg [(1 - 1):0] lfsr8_join_53_1;
  reg lfsr8_join_53_1_en;
  reg [(1 - 1):0] lfsr2_join_53_1;
  reg lfsr2_join_53_1_en;
  reg [(1 - 1):0] lfsr1_join_53_1;
  reg lfsr1_join_53_1_en;
  reg [(1 - 1):0] lfsr13_join_53_1;
  reg lfsr13_join_53_1_en;
  reg [(1 - 1):0] lfsr15_join_53_1;
  reg lfsr15_join_53_1_en;
  reg [(1 - 1):0] lfsr20_join_53_1;
  reg lfsr20_join_53_1_en;
  reg [(1 - 1):0] lfsr19_join_53_1;
  reg lfsr19_join_53_1_en;
  reg [(1 - 1):0] lfsr11_join_53_1;
  reg lfsr11_join_53_1_en;
  reg [(1 - 1):0] lfsr10_join_53_1;
  reg lfsr10_join_53_1_en;
  reg [(1 - 1):0] lfsr4_join_53_1;
  reg lfsr4_join_53_1_en;
  reg [(1 - 1):0] lfsr14_join_53_1;
  reg lfsr14_join_53_1_en;
  reg [(1 - 1):0] lfsr21_join_53_1;
  reg lfsr21_join_53_1_en;
  reg [(1 - 1):0] lfsr3_join_53_1;
  reg lfsr3_join_53_1_en;
  reg [(1 - 1):0] lfsr9_join_53_1;
  reg lfsr9_join_53_1_en;
  reg [(1 - 1):0] lfsr18_join_53_1;
  reg lfsr18_join_53_1_en;
  reg [(1 - 1):0] lfsr17_join_53_1;
  reg lfsr17_join_53_1_en;
  reg [(1 - 1):0] lfsr22_join_53_1;
  reg lfsr22_join_53_1_en;
  reg [(1 - 1):0] lfsr0_join_53_1;
  reg lfsr0_join_53_1_en;
  reg [(1 - 1):0] lfsr23_join_53_1;
  reg lfsr23_join_53_1_en;
  reg [(1 - 1):0] lfsr12_join_53_1;
  reg lfsr12_join_53_1_en;
  reg [(1 - 1):0] lfsr6_join_53_1;
  reg lfsr6_join_53_1_en;
  assign en_1_63 = en;
  always @(posedge clk)
    begin:proc_lfsr0_2_19
      if (((ce == 1'b1) && (lfsr0_2_19_en == 1'b1)))
        begin
          lfsr0_2_19 <= lfsr0_2_19_next;
        end
    end
  assign lfsr1_3_19_reg_i = lfsr1_3_19_next;
  assign lfsr1_3_19 = lfsr1_3_19_reg_o;
  assign lfsr1_3_19_reg_ce = (ce && lfsr1_3_19_en);
  defparam lfsr1_3_19_reg_inst.init_index = 2;
  defparam lfsr1_3_19_reg_inst.init_value = 1'b1;
  defparam lfsr1_3_19_reg_inst.latency = 1;
  defparam lfsr1_3_19_reg_inst.width = 1;
  synth_reg_w_init lfsr1_3_19_reg_inst(.ce(lfsr1_3_19_reg_ce), .clk(clk), .clr(clr), .i(lfsr1_3_19_reg_i), .o(lfsr1_3_19_reg_o));
  always @(posedge clk)
    begin:proc_lfsr2_4_19
      if (((ce == 1'b1) && (lfsr2_4_19_en == 1'b1)))
        begin
          lfsr2_4_19 <= lfsr2_4_19_next;
        end
    end
  always @(posedge clk)
    begin:proc_lfsr3_5_19
      if (((ce == 1'b1) && (lfsr3_5_19_en == 1'b1)))
        begin
          lfsr3_5_19 <= lfsr3_5_19_next;
        end
    end
  always @(posedge clk)
    begin:proc_lfsr4_6_19
      if (((ce == 1'b1) && (lfsr4_6_19_en == 1'b1)))
        begin
          lfsr4_6_19 <= lfsr4_6_19_next;
        end
    end
  assign lfsr5_7_19_reg_i = lfsr5_7_19_next;
  assign lfsr5_7_19 = lfsr5_7_19_reg_o;
  assign lfsr5_7_19_reg_ce = (ce && lfsr5_7_19_en);
  defparam lfsr5_7_19_reg_inst.init_index = 2;
  defparam lfsr5_7_19_reg_inst.init_value = 1'b1;
  defparam lfsr5_7_19_reg_inst.latency = 1;
  defparam lfsr5_7_19_reg_inst.width = 1;
  synth_reg_w_init lfsr5_7_19_reg_inst(.ce(lfsr5_7_19_reg_ce), .clk(clk), .clr(clr), .i(lfsr5_7_19_reg_i), .o(lfsr5_7_19_reg_o));
  assign lfsr6_8_19_reg_i = lfsr6_8_19_next;
  assign lfsr6_8_19 = lfsr6_8_19_reg_o;
  assign lfsr6_8_19_reg_ce = (ce && lfsr6_8_19_en);
  defparam lfsr6_8_19_reg_inst.init_index = 2;
  defparam lfsr6_8_19_reg_inst.init_value = 1'b1;
  defparam lfsr6_8_19_reg_inst.latency = 1;
  defparam lfsr6_8_19_reg_inst.width = 1;
  synth_reg_w_init lfsr6_8_19_reg_inst(.ce(lfsr6_8_19_reg_ce), .clk(clk), .clr(clr), .i(lfsr6_8_19_reg_i), .o(lfsr6_8_19_reg_o));
  assign lfsr7_9_19_reg_i = lfsr7_9_19_next;
  assign lfsr7_9_19 = lfsr7_9_19_reg_o;
  assign lfsr7_9_19_reg_ce = (ce && lfsr7_9_19_en);
  defparam lfsr7_9_19_reg_inst.init_index = 2;
  defparam lfsr7_9_19_reg_inst.init_value = 1'b1;
  defparam lfsr7_9_19_reg_inst.latency = 1;
  defparam lfsr7_9_19_reg_inst.width = 1;
  synth_reg_w_init lfsr7_9_19_reg_inst(.ce(lfsr7_9_19_reg_ce), .clk(clk), .clr(clr), .i(lfsr7_9_19_reg_i), .o(lfsr7_9_19_reg_o));
  always @(posedge clk)
    begin:proc_lfsr8_10_19
      if (((ce == 1'b1) && (lfsr8_10_19_en == 1'b1)))
        begin
          lfsr8_10_19 <= lfsr8_10_19_next;
        end
    end
  always @(posedge clk)
    begin:proc_lfsr9_11_19
      if (((ce == 1'b1) && (lfsr9_11_19_en == 1'b1)))
        begin
          lfsr9_11_19 <= lfsr9_11_19_next;
        end
    end
  assign lfsr10_12_20_reg_i = lfsr10_12_20_next;
  assign lfsr10_12_20 = lfsr10_12_20_reg_o;
  assign lfsr10_12_20_reg_ce = (ce && lfsr10_12_20_en);
  defparam lfsr10_12_20_reg_inst.init_index = 2;
  defparam lfsr10_12_20_reg_inst.init_value = 1'b1;
  defparam lfsr10_12_20_reg_inst.latency = 1;
  defparam lfsr10_12_20_reg_inst.width = 1;
  synth_reg_w_init lfsr10_12_20_reg_inst(.ce(lfsr10_12_20_reg_ce), .clk(clk), .clr(clr), .i(lfsr10_12_20_reg_i), .o(lfsr10_12_20_reg_o));
  always @(posedge clk)
    begin:proc_lfsr11_13_20
      if (((ce == 1'b1) && (lfsr11_13_20_en == 1'b1)))
        begin
          lfsr11_13_20 <= lfsr11_13_20_next;
        end
    end
  assign lfsr12_14_20_reg_i = lfsr12_14_20_next;
  assign lfsr12_14_20 = lfsr12_14_20_reg_o;
  assign lfsr12_14_20_reg_ce = (ce && lfsr12_14_20_en);
  defparam lfsr12_14_20_reg_inst.init_index = 2;
  defparam lfsr12_14_20_reg_inst.init_value = 1'b1;
  defparam lfsr12_14_20_reg_inst.latency = 1;
  defparam lfsr12_14_20_reg_inst.width = 1;
  synth_reg_w_init lfsr12_14_20_reg_inst(.ce(lfsr12_14_20_reg_ce), .clk(clk), .clr(clr), .i(lfsr12_14_20_reg_i), .o(lfsr12_14_20_reg_o));
  always @(posedge clk)
    begin:proc_lfsr13_15_20
      if (((ce == 1'b1) && (lfsr13_15_20_en == 1'b1)))
        begin
          lfsr13_15_20 <= lfsr13_15_20_next;
        end
    end
  assign lfsr14_16_20_reg_i = lfsr14_16_20_next;
  assign lfsr14_16_20 = lfsr14_16_20_reg_o;
  assign lfsr14_16_20_reg_ce = (ce && lfsr14_16_20_en);
  defparam lfsr14_16_20_reg_inst.init_index = 2;
  defparam lfsr14_16_20_reg_inst.init_value = 1'b1;
  defparam lfsr14_16_20_reg_inst.latency = 1;
  defparam lfsr14_16_20_reg_inst.width = 1;
  synth_reg_w_init lfsr14_16_20_reg_inst(.ce(lfsr14_16_20_reg_ce), .clk(clk), .clr(clr), .i(lfsr14_16_20_reg_i), .o(lfsr14_16_20_reg_o));
  assign lfsr15_17_20_reg_i = lfsr15_17_20_next;
  assign lfsr15_17_20 = lfsr15_17_20_reg_o;
  assign lfsr15_17_20_reg_ce = (ce && lfsr15_17_20_en);
  defparam lfsr15_17_20_reg_inst.init_index = 2;
  defparam lfsr15_17_20_reg_inst.init_value = 1'b1;
  defparam lfsr15_17_20_reg_inst.latency = 1;
  defparam lfsr15_17_20_reg_inst.width = 1;
  synth_reg_w_init lfsr15_17_20_reg_inst(.ce(lfsr15_17_20_reg_ce), .clk(clk), .clr(clr), .i(lfsr15_17_20_reg_i), .o(lfsr15_17_20_reg_o));
  always @(posedge clk)
    begin:proc_lfsr16_18_20
      if (((ce == 1'b1) && (lfsr16_18_20_en == 1'b1)))
        begin
          lfsr16_18_20 <= lfsr16_18_20_next;
        end
    end
  assign lfsr17_19_20_reg_i = lfsr17_19_20_next;
  assign lfsr17_19_20 = lfsr17_19_20_reg_o;
  assign lfsr17_19_20_reg_ce = (ce && lfsr17_19_20_en);
  defparam lfsr17_19_20_reg_inst.init_index = 2;
  defparam lfsr17_19_20_reg_inst.init_value = 1'b1;
  defparam lfsr17_19_20_reg_inst.latency = 1;
  defparam lfsr17_19_20_reg_inst.width = 1;
  synth_reg_w_init lfsr17_19_20_reg_inst(.ce(lfsr17_19_20_reg_ce), .clk(clk), .clr(clr), .i(lfsr17_19_20_reg_i), .o(lfsr17_19_20_reg_o));
  always @(posedge clk)
    begin:proc_lfsr18_20_20
      if (((ce == 1'b1) && (lfsr18_20_20_en == 1'b1)))
        begin
          lfsr18_20_20 <= lfsr18_20_20_next;
        end
    end
  assign lfsr19_21_20_reg_i = lfsr19_21_20_next;
  assign lfsr19_21_20 = lfsr19_21_20_reg_o;
  assign lfsr19_21_20_reg_ce = (ce && lfsr19_21_20_en);
  defparam lfsr19_21_20_reg_inst.init_index = 2;
  defparam lfsr19_21_20_reg_inst.init_value = 1'b1;
  defparam lfsr19_21_20_reg_inst.latency = 1;
  defparam lfsr19_21_20_reg_inst.width = 1;
  synth_reg_w_init lfsr19_21_20_reg_inst(.ce(lfsr19_21_20_reg_ce), .clk(clk), .clr(clr), .i(lfsr19_21_20_reg_i), .o(lfsr19_21_20_reg_o));
  always @(posedge clk)
    begin:proc_lfsr20_22_20
      if (((ce == 1'b1) && (lfsr20_22_20_en == 1'b1)))
        begin
          lfsr20_22_20 <= lfsr20_22_20_next;
        end
    end
  always @(posedge clk)
    begin:proc_lfsr21_23_20
      if (((ce == 1'b1) && (lfsr21_23_20_en == 1'b1)))
        begin
          lfsr21_23_20 <= lfsr21_23_20_next;
        end
    end
  always @(posedge clk)
    begin:proc_lfsr22_24_20
      if (((ce == 1'b1) && (lfsr22_24_20_en == 1'b1)))
        begin
          lfsr22_24_20 <= lfsr22_24_20_next;
        end
    end
  assign lfsr23_25_20_reg_i = lfsr23_25_20_next;
  assign lfsr23_25_20 = lfsr23_25_20_reg_o;
  assign lfsr23_25_20_reg_ce = (ce && lfsr23_25_20_en);
  defparam lfsr23_25_20_reg_inst.init_index = 2;
  defparam lfsr23_25_20_reg_inst.init_value = 1'b1;
  defparam lfsr23_25_20_reg_inst.latency = 1;
  defparam lfsr23_25_20_reg_inst.width = 1;
  synth_reg_w_init lfsr23_25_20_reg_inst(.ce(lfsr23_25_20_reg_ce), .clk(clk), .clr(clr), .i(lfsr23_25_20_reg_i), .o(lfsr23_25_20_reg_o));
  assign concat_26_26 = {lfsr23_25_20, lfsr22_24_20, lfsr21_23_20, lfsr20_22_20, lfsr19_21_20, lfsr18_20_20, lfsr17_19_20, lfsr16_18_20, lfsr15_17_20, lfsr14_16_20, lfsr13_15_20, lfsr12_14_20, lfsr11_13_20, lfsr10_12_20, lfsr9_11_19, lfsr8_10_19, lfsr7_9_19, lfsr6_8_19, lfsr5_7_19, lfsr4_6_19, lfsr3_5_19, lfsr2_4_19, lfsr1_3_19, lfsr0_2_19};
  assign lfsr17_95_1_bit = lfsr16_18_20 ^ lfsr23_25_20;
  assign lfsr22_100_1_bit = lfsr21_23_20 ^ lfsr23_25_20;
  assign lfsr23_101_1_bit = lfsr22_24_20 ^ lfsr23_25_20;
  always @(en_1_63 or lfsr0_2_19 or lfsr10_12_20 or lfsr11_13_20 or lfsr12_14_20 or lfsr13_15_20 or lfsr14_16_20 or lfsr15_17_20 or lfsr17_19_20 or lfsr17_95_1_bit or lfsr18_20_20 or lfsr19_21_20 or lfsr1_3_19 or lfsr20_22_20 or lfsr22_100_1_bit or lfsr23_101_1_bit or lfsr23_25_20 or lfsr2_4_19 or lfsr3_5_19 or lfsr4_6_19 or lfsr5_7_19 or lfsr6_8_19 or lfsr7_9_19 or lfsr8_10_19 or lfsr9_11_19)
    begin:proc_if_53_1
      if (en_1_63)
        begin
          lfsr7_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr7_join_53_1_en = 1'b0;
        end
      lfsr7_join_53_1 = lfsr6_8_19;
      if (en_1_63)
        begin
          lfsr5_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr5_join_53_1_en = 1'b0;
        end
      lfsr5_join_53_1 = lfsr4_6_19;
      if (en_1_63)
        begin
          lfsr16_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr16_join_53_1_en = 1'b0;
        end
      lfsr16_join_53_1 = lfsr15_17_20;
      if (en_1_63)
        begin
          lfsr8_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr8_join_53_1_en = 1'b0;
        end
      lfsr8_join_53_1 = lfsr7_9_19;
      if (en_1_63)
        begin
          lfsr2_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr2_join_53_1_en = 1'b0;
        end
      lfsr2_join_53_1 = lfsr1_3_19;
      if (en_1_63)
        begin
          lfsr1_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr1_join_53_1_en = 1'b0;
        end
      lfsr1_join_53_1 = lfsr0_2_19;
      if (en_1_63)
        begin
          lfsr13_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr13_join_53_1_en = 1'b0;
        end
      lfsr13_join_53_1 = lfsr12_14_20;
      if (en_1_63)
        begin
          lfsr15_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr15_join_53_1_en = 1'b0;
        end
      lfsr15_join_53_1 = lfsr14_16_20;
      if (en_1_63)
        begin
          lfsr20_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr20_join_53_1_en = 1'b0;
        end
      lfsr20_join_53_1 = lfsr19_21_20;
      if (en_1_63)
        begin
          lfsr19_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr19_join_53_1_en = 1'b0;
        end
      lfsr19_join_53_1 = lfsr18_20_20;
      if (en_1_63)
        begin
          lfsr11_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr11_join_53_1_en = 1'b0;
        end
      lfsr11_join_53_1 = lfsr10_12_20;
      if (en_1_63)
        begin
          lfsr10_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr10_join_53_1_en = 1'b0;
        end
      lfsr10_join_53_1 = lfsr9_11_19;
      if (en_1_63)
        begin
          lfsr4_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr4_join_53_1_en = 1'b0;
        end
      lfsr4_join_53_1 = lfsr3_5_19;
      if (en_1_63)
        begin
          lfsr14_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr14_join_53_1_en = 1'b0;
        end
      lfsr14_join_53_1 = lfsr13_15_20;
      if (en_1_63)
        begin
          lfsr21_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr21_join_53_1_en = 1'b0;
        end
      lfsr21_join_53_1 = lfsr20_22_20;
      if (en_1_63)
        begin
          lfsr3_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr3_join_53_1_en = 1'b0;
        end
      lfsr3_join_53_1 = lfsr2_4_19;
      if (en_1_63)
        begin
          lfsr9_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr9_join_53_1_en = 1'b0;
        end
      lfsr9_join_53_1 = lfsr8_10_19;
      if (en_1_63)
        begin
          lfsr18_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr18_join_53_1_en = 1'b0;
        end
      lfsr18_join_53_1 = lfsr17_19_20;
      if (en_1_63)
        begin
          lfsr17_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr17_join_53_1_en = 1'b0;
        end
      lfsr17_join_53_1 = lfsr17_95_1_bit;
      if (en_1_63)
        begin
          lfsr22_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr22_join_53_1_en = 1'b0;
        end
      lfsr22_join_53_1 = lfsr22_100_1_bit;
      if (en_1_63)
        begin
          lfsr0_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr0_join_53_1_en = 1'b0;
        end
      lfsr0_join_53_1 = lfsr23_25_20;
      if (en_1_63)
        begin
          lfsr23_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr23_join_53_1_en = 1'b0;
        end
      lfsr23_join_53_1 = lfsr23_101_1_bit;
      if (en_1_63)
        begin
          lfsr12_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr12_join_53_1_en = 1'b0;
        end
      lfsr12_join_53_1 = lfsr11_13_20;
      if (en_1_63)
        begin
          lfsr6_join_53_1_en = 1'b1;
        end
      else 
        begin
          lfsr6_join_53_1_en = 1'b0;
        end
      lfsr6_join_53_1 = lfsr5_7_19;
    end
  assign lfsr0_2_19_next = lfsr23_25_20;
  assign lfsr0_2_19_en = lfsr0_join_53_1_en;
  assign lfsr1_3_19_next = lfsr0_2_19;
  assign lfsr1_3_19_en = lfsr1_join_53_1_en;
  assign lfsr2_4_19_next = lfsr1_3_19;
  assign lfsr2_4_19_en = lfsr2_join_53_1_en;
  assign lfsr3_5_19_next = lfsr2_4_19;
  assign lfsr3_5_19_en = lfsr3_join_53_1_en;
  assign lfsr4_6_19_next = lfsr3_5_19;
  assign lfsr4_6_19_en = lfsr4_join_53_1_en;
  assign lfsr5_7_19_next = lfsr4_6_19;
  assign lfsr5_7_19_en = lfsr5_join_53_1_en;
  assign lfsr6_8_19_next = lfsr5_7_19;
  assign lfsr6_8_19_en = lfsr6_join_53_1_en;
  assign lfsr7_9_19_next = lfsr6_8_19;
  assign lfsr7_9_19_en = lfsr7_join_53_1_en;
  assign lfsr8_10_19_next = lfsr7_9_19;
  assign lfsr8_10_19_en = lfsr8_join_53_1_en;
  assign lfsr9_11_19_next = lfsr8_10_19;
  assign lfsr9_11_19_en = lfsr9_join_53_1_en;
  assign lfsr10_12_20_next = lfsr9_11_19;
  assign lfsr10_12_20_en = lfsr10_join_53_1_en;
  assign lfsr11_13_20_next = lfsr10_12_20;
  assign lfsr11_13_20_en = lfsr11_join_53_1_en;
  assign lfsr12_14_20_next = lfsr11_13_20;
  assign lfsr12_14_20_en = lfsr12_join_53_1_en;
  assign lfsr13_15_20_next = lfsr12_14_20;
  assign lfsr13_15_20_en = lfsr13_join_53_1_en;
  assign lfsr14_16_20_next = lfsr13_15_20;
  assign lfsr14_16_20_en = lfsr14_join_53_1_en;
  assign lfsr15_17_20_next = lfsr14_16_20;
  assign lfsr15_17_20_en = lfsr15_join_53_1_en;
  assign lfsr16_18_20_next = lfsr15_17_20;
  assign lfsr16_18_20_en = lfsr16_join_53_1_en;
  assign lfsr17_19_20_next = lfsr17_95_1_bit;
  assign lfsr17_19_20_en = lfsr17_join_53_1_en;
  assign lfsr18_20_20_next = lfsr17_19_20;
  assign lfsr18_20_20_en = lfsr18_join_53_1_en;
  assign lfsr19_21_20_next = lfsr18_20_20;
  assign lfsr19_21_20_en = lfsr19_join_53_1_en;
  assign lfsr20_22_20_next = lfsr19_21_20;
  assign lfsr20_22_20_en = lfsr20_join_53_1_en;
  assign lfsr21_23_20_next = lfsr20_22_20;
  assign lfsr21_23_20_en = lfsr21_join_53_1_en;
  assign lfsr22_24_20_next = lfsr22_100_1_bit;
  assign lfsr22_24_20_en = lfsr22_join_53_1_en;
  assign lfsr23_25_20_next = lfsr23_101_1_bit;
  assign lfsr23_25_20_en = lfsr23_join_53_1_en;
  assign dout = concat_26_26;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_146c4fe602 (
  output [(25 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 25'b0000000000000000000000000;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_98f5342beb (
  output [(10 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 10'b1111111111;
endmodule
`timescale 1 ns / 10 ps
module sysgen_mux_02aa8d7fdf (
  input [(1 - 1):0] sel,
  input [(1 - 1):0] d0,
  input [(1 - 1):0] d1,
  output [(1 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire sel_1_20;
  wire d0_1_24;
  wire d1_1_27;
  wire [(1 - 1):0] sel_internal_2_1_convert;
  reg unregy_join_6_1;
  assign sel_1_20 = sel;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign sel_internal_2_1_convert = {sel_1_20};
  always @(d0_1_24 or d1_1_27 or sel_internal_2_1_convert)
    begin:proc_switch_6_1
      case (sel_internal_2_1_convert)
        1'b0 :
          begin
            unregy_join_6_1 = d0_1_24;
          end
        default:
          begin
            unregy_join_6_1 = d1_1_27;
          end
      endcase
    end
  assign y = unregy_join_6_1;
endmodule
`timescale 1 ns / 10 ps
module sysgen_relational_100432aa45 (
  input [(10 - 1):0] a,
  input [(10 - 1):0] b,
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire [(10 - 1):0] a_1_31;
  wire [(10 - 1):0] b_1_34;
  reg op_mem_45_22[0:(1 - 1)];
  initial
    begin
      op_mem_45_22[0] = 1'b0;
    end
  wire op_mem_45_22_front_din;
  wire op_mem_45_22_back;
  wire op_mem_45_22_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value = 1'b1;
  localparam [(1 - 1):0] const_value_x_000000 = 1'b0;
  reg [(10 - 1):0] a_join_13_3;
  localparam [(10 - 1):0] const_value_x_000001 = 10'b0000000000;
  localparam [(1 - 1):0] const_value_x_000002 = 1'b0;
  reg [(10 - 1):0] b_join_16_3;
  localparam [(10 - 1):0] const_value_x_000003 = 10'b0000000000;
  wire result_22_3_rel;
  assign a_1_31 = a;
  assign b_1_34 = b;
  assign op_mem_45_22_back = op_mem_45_22[0];
  always @(posedge clk)
    begin:proc_op_mem_45_22
      integer i;
      if (((ce == 1'b1) && (op_mem_45_22_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_45_22[0] <= op_mem_45_22_front_din;
        end
    end
  always @(a_1_31)
    begin:proc_if_13_3
      if (1'b0)
        begin
          a_join_13_3 = const_value_x_000001;
        end
      else 
        begin
          a_join_13_3 = a_1_31;
        end
    end
  always @(b_1_34)
    begin:proc_if_16_3
      if (1'b0)
        begin
          b_join_16_3 = const_value_x_000003;
        end
      else 
        begin
          b_join_16_3 = b_1_34;
        end
    end
  assign result_22_3_rel = a_join_13_3 == b_join_16_3;
  assign op_mem_45_22_front_din = result_22_3_rel;
  assign op_mem_45_22_push_front_pop_back_en = 1'b1;
  assign op = op_mem_45_22_back;
endmodule
`timescale 1 ns / 10 ps
module sysgen_accum_93d003b415 (
  input [(10 - 1):0] b,
  input [(1 - 1):0] rst,
  input [(1 - 1):0] en,
  output [(10 - 1):0] q,
  input clk,
  input ce,
  input clr);
  wire [(10 - 1):0] b_17_24;
  wire rst_17_27;
  wire en_17_32;
  reg [(10 - 1):0] accum_reg_39_23 = 10'b0000000000;
  wire accum_reg_39_23_rst;
  wire accum_reg_39_23_en;
  localparam [(1 - 1):0] const_value = 1'b0;
  localparam [(1 - 1):0] const_value_x_000000 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000001 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000002 = 1'b1;
  reg [(11 - 1):0] accum_reg_join_45_1;
  reg accum_reg_join_45_1_en;
  reg accum_reg_join_45_1_rst;
  assign b_17_24 = b;
  assign rst_17_27 = rst;
  assign en_17_32 = en;
  always @(posedge clk)
    begin:proc_accum_reg_39_23
      if (((ce == 1'b1) && (accum_reg_39_23_rst == 1'b1)))
        begin
          accum_reg_39_23 <= 10'b0000000000;
        end
      else if (((ce == 1'b1) && (accum_reg_39_23_en == 1'b1)))
        begin
          accum_reg_39_23 <= accum_reg_39_23 + b_17_24;
        end
    end
  always @(accum_reg_39_23 or b_17_24 or en_17_32 or rst_17_27)
    begin:proc_if_45_1
      if (rst_17_27)
        begin
          accum_reg_join_45_1_rst = 1'b1;
        end
      else if (en_17_32)
        begin
          accum_reg_join_45_1_rst = 1'b0;
        end
      else 
        begin
          accum_reg_join_45_1_rst = 1'b0;
        end
      if (en_17_32)
        begin
          accum_reg_join_45_1_en = 1'b1;
        end
      else 
        begin
          accum_reg_join_45_1_en = 1'b0;
        end
    end
  assign accum_reg_39_23_rst = accum_reg_join_45_1_rst;
  assign accum_reg_39_23_en = accum_reg_join_45_1_en;
  assign q = accum_reg_39_23;
endmodule
`timescale 1 ns / 10 ps
module sysgen_logical_8c5407099f (
  input [(1 - 1):0] d0,
  input [(1 - 1):0] d1,
  output [(1 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire d0_1_24;
  wire d1_1_27;
  wire fully_2_1_bit;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign fully_2_1_bit = d0_1_24 & d1_1_27;
  assign y = fully_2_1_bit;
endmodule
`timescale 1 ns / 10 ps
module sysgen_inverter_113e94e780 (
  input [(1 - 1):0] ip,
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire ip_1_26;
  reg op_mem_22_20[0:(1 - 1)];
  initial
    begin
      op_mem_22_20[0] = 1'b0;
    end
  wire op_mem_22_20_front_din;
  wire op_mem_22_20_back;
  wire op_mem_22_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value = 1'b1;
  wire internal_ip_12_1_bitnot;
  assign ip_1_26 = ip;
  assign op_mem_22_20_back = op_mem_22_20[0];
  always @(posedge clk)
    begin:proc_op_mem_22_20
      integer i;
      if (((ce == 1'b1) && (op_mem_22_20_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_22_20[0] <= op_mem_22_20_front_din;
        end
    end
  assign internal_ip_12_1_bitnot = ~ip_1_26;
  assign op_mem_22_20_front_din = internal_ip_12_1_bitnot;
  assign op_mem_22_20_push_front_pop_back_en = 1'b1;
  assign op = op_mem_22_20_back;
endmodule
`timescale 1 ns / 10 ps
module sysgen_logical_6fc76ee77c (
  input [(1 - 1):0] d0,
  input [(1 - 1):0] d1,
  input [(1 - 1):0] d2,
  input [(1 - 1):0] d3,
  input [(1 - 1):0] d4,
  input [(1 - 1):0] d5,
  output [(1 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire d0_1_24;
  wire d1_1_27;
  wire d2_1_30;
  wire d3_1_33;
  wire d4_1_36;
  wire d5_1_39;
  wire fully_2_1_bit;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign d2_1_30 = d2;
  assign d3_1_33 = d3;
  assign d4_1_36 = d4;
  assign d5_1_39 = d5;
  assign fully_2_1_bit = d0_1_24 | d1_1_27 | d2_1_30 | d3_1_33 | d4_1_36 | d5_1_39;
  assign y = fully_2_1_bit;
endmodule
`timescale 1 ns / 10 ps
module sysgen_mux_bb0938a2a1 (
  input [(2 - 1):0] sel,
  input [(25 - 1):0] d0,
  input [(25 - 1):0] d1,
  input [(25 - 1):0] d2,
  output [(25 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire [(2 - 1):0] sel_1_20;
  wire [(25 - 1):0] d0_1_24;
  wire [(25 - 1):0] d1_1_27;
  wire [(25 - 1):0] d2_1_30;
  localparam [(25 - 1):0] const_value = 25'b0000000000000000000000000;
  reg [(25 - 1):0] pipe_18_22[0:(1 - 1)];
  initial
    begin
      pipe_18_22[0] = 25'b0000000000000000000000000;
    end
  wire [(25 - 1):0] pipe_18_22_front_din;
  wire [(25 - 1):0] pipe_18_22_back;
  wire pipe_18_22_push_front_pop_back_en;
  reg [(25 - 1):0] unregy_join_6_1;
  assign sel_1_20 = sel;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign d2_1_30 = d2;
  assign pipe_18_22_back = pipe_18_22[0];
  always @(posedge clk)
    begin:proc_pipe_18_22
      integer i;
      if (((ce == 1'b1) && (pipe_18_22_push_front_pop_back_en == 1'b1)))
        begin
          pipe_18_22[0] <= pipe_18_22_front_din;
        end
    end
  always @(d0_1_24 or d1_1_27 or d2_1_30 or sel_1_20)
    begin:proc_switch_6_1
      case (sel_1_20)
        2'b00 :
          begin
            unregy_join_6_1 = d0_1_24;
          end
        2'b01 :
          begin
            unregy_join_6_1 = d1_1_27;
          end
        default:
          begin
            unregy_join_6_1 = d2_1_30;
          end
      endcase
    end
  assign pipe_18_22_front_din = unregy_join_6_1;
  assign pipe_18_22_push_front_pop_back_en = 1'b1;
  assign y = pipe_18_22_back;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_c70b4dd152 (
  output [(8 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 8'b01000000;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_7deb02a988 (
  output [(8 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 8'b01000001;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_b80eb373b3 (
  output [(8 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 8'b00110000;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_ed548e4fed (
  output [(8 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 8'b00110001;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_74b9160668 (
  output [(8 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 8'b00110010;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_172e5e0981 (
  output [(8 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 8'b00110011;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_78ab1f71f8 (
  output [(8 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 8'b00110100;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_e77dc0edb3 (
  output [(8 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 8'b00110101;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_3966862ad9 (
  output [(8 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 8'b00000000;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_54cfb48bba (
  output [(8 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 8'b00000001;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_9b6705cd41 (
  output [(8 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 8'b00000010;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_32c9fb554d (
  output [(8 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 8'b00000011;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_f62133f3dc (
  output [(8 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 8'b00000100;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_3a45e624e5 (
  output [(8 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 8'b00000101;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_19673b4b79 (
  output [(8 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 8'b00010000;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_e79806f299 (
  output [(8 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 8'b00010001;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_5e2e5b8061 (
  output [(8 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 8'b00010010;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_fa425f1953 (
  output [(8 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 8'b00010011;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_d00dca1e83 (
  output [(8 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 8'b00010100;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_f42f2ed83d (
  output [(8 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 8'b00010101;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_2dde8007a9 (
  output [(8 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 8'b00100000;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_c89d7a39f2 (
  output [(8 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 8'b00100001;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_52f2ed9467 (
  output [(8 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 8'b00100010;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_a16b067cb6 (
  output [(8 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 8'b00100011;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_187e86716b (
  output [(8 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 8'b00100100;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_442e49a520 (
  output [(8 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 8'b00100101;
endmodule
`timescale 1 ns / 10 ps
module  hilsim_ipcore_xlceprobe  (d, ce, clk, q);
    //Parameter Definitions
    parameter d_width= 8;
    parameter q_width= 1;

    //Port Declartions
    input [d_width-1:0] d;
    input ce;
    input clk;
    output [q_width-1:0] q;
    wire [0:0] ce_vec;

    BUF buf_comp(.I(ce), .O(ce_vec[0]));
    assign q = ce_vec;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_df08e87bb9 (
  output [(18 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 18'b000000001001101010;
endmodule
`timescale 1 ns / 10 ps
module sysgen_scale_56fa4fa0f6 (
  input [(25 - 1):0] ip,
  output [(25 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire signed [(25 - 1):0] ip_17_23;
  localparam signed [(7 - 1):0] const_value = 7'sb0010010;
  assign ip_17_23 = ip;
  assign op = ip_17_23;
endmodule
`timescale 1 ns / 10 ps
module sysgen_scale_1b4332142c (
  input [(47 - 1):0] ip,
  output [(47 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire signed [(47 - 1):0] ip_17_23;
  localparam signed [(7 - 1):0] const_value = 7'sb0100111;
  assign ip_17_23 = ip;
  assign op = ip_17_23;
endmodule
`timescale 1 ns / 10 ps
module sysgen_mux_407dfceb37 (
  input [(1 - 1):0] sel,
  input [(47 - 1):0] d0,
  input [(47 - 1):0] d1,
  output [(48 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire sel_1_20;
  wire [(47 - 1):0] d0_1_24;
  wire [(47 - 1):0] d1_1_27;
  localparam [(48 - 1):0] const_value = 48'b000000000000000000000000000000000000000000000000;
  reg [(48 - 1):0] pipe_16_22[0:(1 - 1)];
  initial
    begin
      pipe_16_22[0] = 48'b000000000000000000000000000000000000000000000000;
    end
  wire [(48 - 1):0] pipe_16_22_front_din;
  wire [(48 - 1):0] pipe_16_22_back;
  wire pipe_16_22_push_front_pop_back_en;
  wire [(1 - 1):0] sel_internal_2_1_convert;
  reg [(48 - 1):0] unregy_join_6_1;
  assign sel_1_20 = sel;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign pipe_16_22_back = pipe_16_22[0];
  always @(posedge clk)
    begin:proc_pipe_16_22
      integer i;
      if (((ce == 1'b1) && (pipe_16_22_push_front_pop_back_en == 1'b1)))
        begin
          pipe_16_22[0] <= pipe_16_22_front_din;
        end
    end
  assign sel_internal_2_1_convert = {sel_1_20};
  always @(d0_1_24 or d1_1_27 or sel_internal_2_1_convert)
    begin:proc_switch_6_1
      case (sel_internal_2_1_convert)
        1'b0 :
          begin
            unregy_join_6_1 = {{1{d0_1_24[46]}}, d0_1_24[46:0]};
          end
        default:
          begin
            unregy_join_6_1 = {d1_1_27[46:0], 1'b0};
          end
      endcase
    end
  assign pipe_16_22_front_din = unregy_join_6_1;
  assign pipe_16_22_push_front_pop_back_en = 1'b1;
  assign y = pipe_16_22_back;
endmodule
`timescale 1 ns / 10 ps
module sysgen_mux_ee069077e1 (
  input [(1 - 1):0] sel,
  input [(48 - 1):0] d0,
  input [(48 - 1):0] d1,
  output [(50 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire sel_1_20;
  wire [(48 - 1):0] d0_1_24;
  wire [(48 - 1):0] d1_1_27;
  wire [(1 - 1):0] sel_internal_2_1_convert;
  reg [(50 - 1):0] unregy_join_6_1;
  assign sel_1_20 = sel;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign sel_internal_2_1_convert = {sel_1_20};
  always @(d0_1_24 or d1_1_27 or sel_internal_2_1_convert)
    begin:proc_switch_6_1
      case (sel_internal_2_1_convert)
        1'b0 :
          begin
            unregy_join_6_1 = {{2{d0_1_24[47]}}, d0_1_24[47:0]};
          end
        default:
          begin
            unregy_join_6_1 = {d1_1_27[47:0], 2'b00};
          end
      endcase
    end
  assign y = unregy_join_6_1;
endmodule
`timescale 1 ns / 10 ps
module sysgen_mux_d116e6c30a (
  input [(1 - 1):0] sel,
  input [(50 - 1):0] d0,
  input [(50 - 1):0] d1,
  output [(54 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire sel_1_20;
  wire [(50 - 1):0] d0_1_24;
  wire [(50 - 1):0] d1_1_27;
  wire [(1 - 1):0] sel_internal_2_1_convert;
  reg [(54 - 1):0] unregy_join_6_1;
  assign sel_1_20 = sel;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign sel_internal_2_1_convert = {sel_1_20};
  always @(d0_1_24 or d1_1_27 or sel_internal_2_1_convert)
    begin:proc_switch_6_1
      case (sel_internal_2_1_convert)
        1'b0 :
          begin
            unregy_join_6_1 = {{4{d0_1_24[49]}}, d0_1_24[49:0]};
          end
        default:
          begin
            unregy_join_6_1 = {d1_1_27[49:0], 4'b0000};
          end
      endcase
    end
  assign y = unregy_join_6_1;
endmodule
`timescale 1 ns / 10 ps
module sysgen_mux_081a968bff (
  input [(1 - 1):0] sel,
  input [(54 - 1):0] d0,
  input [(54 - 1):0] d1,
  output [(62 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire sel_1_20;
  wire [(54 - 1):0] d0_1_24;
  wire [(54 - 1):0] d1_1_27;
  wire [(1 - 1):0] sel_internal_2_1_convert;
  reg [(62 - 1):0] unregy_join_6_1;
  assign sel_1_20 = sel;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign sel_internal_2_1_convert = {sel_1_20};
  always @(d0_1_24 or d1_1_27 or sel_internal_2_1_convert)
    begin:proc_switch_6_1
      case (sel_internal_2_1_convert)
        1'b0 :
          begin
            unregy_join_6_1 = {{8{d0_1_24[53]}}, d0_1_24[53:0]};
          end
        default:
          begin
            unregy_join_6_1 = {d1_1_27[53:0], 8'b00000000};
          end
      endcase
    end
  assign y = unregy_join_6_1;
endmodule
`timescale 1 ns / 10 ps
module sysgen_mux_45a6dbe084 (
  input [(1 - 1):0] sel,
  input [(62 - 1):0] d0,
  input [(62 - 1):0] d1,
  output [(78 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire sel_1_20;
  wire [(62 - 1):0] d0_1_24;
  wire [(62 - 1):0] d1_1_27;
  wire [(1 - 1):0] sel_internal_2_1_convert;
  reg [(78 - 1):0] unregy_join_6_1;
  assign sel_1_20 = sel;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign sel_internal_2_1_convert = {sel_1_20};
  always @(d0_1_24 or d1_1_27 or sel_internal_2_1_convert)
    begin:proc_switch_6_1
      case (sel_internal_2_1_convert)
        1'b0 :
          begin
            unregy_join_6_1 = {{16{d0_1_24[61]}}, d0_1_24[61:0]};
          end
        default:
          begin
            unregy_join_6_1 = {d1_1_27[61:0], 16'b0000000000000000};
          end
      endcase
    end
  assign y = unregy_join_6_1;
endmodule
`timescale 1 ns / 10 ps
module sysgen_scale_b398db21c6 (
  input [(47 - 1):0] ip,
  output [(47 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire signed [(47 - 1):0] ip_17_23;
  localparam signed [(8 - 1):0] const_value = 8'sb00100110;
  assign ip_17_23 = ip;
  assign op = ip_17_23;
endmodule
`timescale 1 ns / 10 ps
module sysgen_scale_937ac48980 (
  input [(62 - 1):0] ip,
  output [(62 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire signed [(62 - 1):0] ip_17_23;
  localparam signed [(8 - 1):0] const_value = 8'sb00010111;
  assign ip_17_23 = ip;
  assign op = ip_17_23;
endmodule
`timescale 1 ns / 10 ps
module sysgen_scale_e9aedd542a (
  input [(48 - 1):0] ip,
  output [(48 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire signed [(48 - 1):0] ip_17_23;
  localparam signed [(8 - 1):0] const_value = 8'sb00100101;
  assign ip_17_23 = ip;
  assign op = ip_17_23;
endmodule
`timescale 1 ns / 10 ps
module sysgen_scale_139e98d539 (
  input [(50 - 1):0] ip,
  output [(50 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire signed [(50 - 1):0] ip_17_23;
  localparam signed [(8 - 1):0] const_value = 8'sb00100011;
  assign ip_17_23 = ip;
  assign op = ip_17_23;
endmodule
`timescale 1 ns / 10 ps
module sysgen_scale_94c5be3c5e (
  input [(54 - 1):0] ip,
  output [(54 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire signed [(54 - 1):0] ip_17_23;
  localparam signed [(8 - 1):0] const_value = 8'sb00011111;
  assign ip_17_23 = ip;
  assign op = ip_17_23;
endmodule
`timescale 1 ns / 10 ps
module axi_domain_axi_lite_interface#(parameter C_S_AXI_DATA_WIDTH = 32, C_S_AXI_ADDR_WIDTH = 9, C_S_NUM_OFFSETS = 105)(
  output wire[0:0] system_run,
  output wire[4:0] slice2_xd_presc_shift,
  output wire[17:0] slice2_xd_presc_mul,
  output wire[17:0] slice2_xd_nlf_presc,
  output wire[17:0] slice2_xd_nlf_gain,
  output wire[0:0] slice2_xd_mux,
  output wire[17:0] slice2_xd_gain,
  output wire[4:0] slice2_x_presc_shift,
  output wire[17:0] slice2_x_presc_mul,
  output wire[17:0] slice2_x_nlf_presc,
  output wire[17:0] slice2_x_nlf_gain,
  output wire[0:0] slice2_x_mux,
  output wire[17:0] slice2_x_gain,
  output wire[17:0] slice2_u_nlf_presc,
  output wire[17:0] slice2_u_nlf_gain,
  output wire[0:0] slice2_u_mux,
  output wire[17:0] slice2_u_gain,
  output wire[4:0] slice1_xd_presc_shift,
  output wire[17:0] slice1_xd_presc_mul,
  output wire[17:0] slice1_xd_nlf_presc,
  output wire[17:0] slice1_xd_nlf_gain,
  output wire[0:0] slice1_xd_mux,
  output wire[17:0] slice1_xd_gain,
  output wire[4:0] slice1_x_presc_shift,
  output wire[17:0] slice1_x_presc_mul,
  output wire[17:0] slice1_x_nlf_presc,
  output wire[17:0] slice1_x_nlf_gain,
  output wire[0:0] slice1_x_mux,
  output wire[17:0] slice1_x_gain,
  output wire[17:0] slice1_u_nlf_presc,
  output wire[17:0] slice1_u_nlf_gain,
  output wire[0:0] slice1_u_mux,
  output wire[17:0] slice1_u_gain,
  output wire[4:0] slice0_xd_presc_shift,
  output wire[17:0] slice0_xd_presc_mul,
  output wire[17:0] slice0_xd_nlf_presc,
  output wire[17:0] slice0_xd_nlf_gain,
  output wire[0:0] slice0_xd_mux,
  output wire[17:0] slice0_xd_gain,
  output wire[4:0] slice0_x_presc_shift,
  output wire[17:0] slice0_x_presc_mul,
  output wire[17:0] slice0_x_nlf_presc,
  output wire[17:0] slice0_x_nlf_gain,
  output wire[0:0] slice0_x_mux,
  output wire[17:0] slice0_x_gain,
  output wire[17:0] slice0_u_nlf_presc,
  output wire[17:0] slice0_u_nlf_gain,
  output wire[0:0] slice0_u_mux,
  output wire[17:0] slice0_u_gain,
  output wire[17:0] out_mat_nlf_dac1_xx2_presc,
  output wire[17:0] out_mat_nlf_dac1_xx2_gain,
  output wire[0:0] out_mat_nlf_dac1_xx2_en,
  output wire[17:0] out_mat_nlf_dac1_xx1_presc,
  output wire[17:0] out_mat_nlf_dac1_xx1_gain,
  output wire[0:0] out_mat_nlf_dac1_xx1_en,
  output wire[17:0] out_mat_nlf_dac1_xx0_presc,
  output wire[17:0] out_mat_nlf_dac1_xx0_gain,
  output wire[0:0] out_mat_nlf_dac1_xx0_en,
  output wire[17:0] out_mat_nlf_dac0_xx2_presc,
  output wire[17:0] out_mat_nlf_dac0_xx2_gain,
  output wire[0:0] out_mat_nlf_dac0_xx2_en,
  output wire[17:0] out_mat_nlf_dac0_xx1_presc,
  output wire[17:0] out_mat_nlf_dac0_xx1_gain,
  output wire[0:0] out_mat_nlf_dac0_xx1_en,
  output wire[17:0] out_mat_nlf_dac0_xx0_presc,
  output wire[17:0] out_mat_nlf_dac0_xx0_gain,
  output wire[0:0] out_mat_nlf_dac0_xx0_en,
  output wire[17:0] out_mat_fac_dac1_xx2,
  output wire[17:0] out_mat_fac_dac1_xx1,
  output wire[17:0] out_mat_fac_dac1_xx0,
  output wire[17:0] out_mat_fac_dac0_xx2,
  output wire[17:0] out_mat_fac_dac0_xx1,
  output wire[17:0] out_mat_fac_dac0_xx0,
  output wire[1:0] out_mat_dac1_selx2,
  output wire[1:0] out_mat_dac1_selx1,
  output wire[1:0] out_mat_dac1_selx0,
  output wire[1:0] out_mat_dac0_selx2,
  output wire[1:0] out_mat_dac0_selx1,
  output wire[1:0] out_mat_dac0_selx0,
  output wire[7:0] led_value,
  output wire[17:0] inp_mat_fac_u2_noise,
  output wire[17:0] inp_mat_fac_u2_adc1,
  output wire[17:0] inp_mat_fac_u2_adc0,
  output wire[17:0] inp_mat_fac_u1_noise,
  output wire[17:0] inp_mat_fac_u1_adc1,
  output wire[17:0] inp_mat_fac_u1_adc0,
  output wire[17:0] inp_mat_fac_u0_noise,
  output wire[17:0] inp_mat_fac_u0_adc1,
  output wire[17:0] inp_mat_fac_u0_adc0,
  output wire[0:0] cfg_system_reset,
  output wire[17:0] cfg_noise_presc2,
  output wire[17:0] cfg_noise_presc1,
  output wire[17:0] cfg_noise_presc0,
  output wire[0:0] cfg_nlf_we,
  output wire[0:0] cfg_nlf_start,
  output wire[31:0] cfg_nlf_select,
  output wire[15:0] cfg_nlf_data,
  output wire[9:0] cfg_nlf_addr,
  output wire[17:0] adc1_nlf_presc,
  output wire[17:0] adc1_nlf_gain,
  output wire[0:0] adc1_nlf_enable,
  output wire[17:0] adc0_nlf_presc,
  output wire[17:0] adc0_nlf_gain,
  output wire[0:0] adc0_nlf_enable,
  input wire[0:0] cfg_nlf_done,
  output wire axi_domain_clk,
  input wire axi_domain_aclk,
  input wire axi_domain_aresetn,
  input  wire [C_S_AXI_ADDR_WIDTH - 1:0] axi_domain_s_axi_awaddr,
  input  wire axi_domain_s_axi_awvalid,
  output wire axi_domain_s_axi_awready,
  input  wire [C_S_AXI_DATA_WIDTH-1:0] axi_domain_s_axi_wdata,
  input  wire [C_S_AXI_DATA_WIDTH/8-1:0] axi_domain_s_axi_wstrb,
  input  wire axi_domain_s_axi_wvalid,
  output wire axi_domain_s_axi_wready,
  output wire [1:0] axi_domain_s_axi_bresp,
  output wire axi_domain_s_axi_bvalid,
  input  wire axi_domain_s_axi_bready,
  input  wire [C_S_AXI_ADDR_WIDTH - 1:0] axi_domain_s_axi_araddr,
  input  wire axi_domain_s_axi_arvalid,
  output wire axi_domain_s_axi_arready,
  output wire [C_S_AXI_DATA_WIDTH-1:0] axi_domain_s_axi_rdata,
  output wire [1:0] axi_domain_s_axi_rresp,
  output wire axi_domain_s_axi_rvalid,
  input  wire axi_domain_s_axi_rready
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
assign axi_domain_s_axi_awready = axi_awready;
assign axi_domain_s_axi_wready  = axi_wready;
assign axi_domain_s_axi_bresp  = axi_bresp;
assign axi_domain_s_axi_bvalid = axi_bvalid;
assign axi_domain_s_axi_arready = axi_arready;
assign axi_domain_s_axi_rdata  = axi_rdata;
assign axi_domain_s_axi_rvalid = axi_rvalid;
assign axi_domain_s_axi_rresp  = axi_rresp;
// map input 0
assign slv_wire_array[0] = slv_reg_array[0];
assign system_run = slv_wire_array[0][0];
// map input 1
assign slv_wire_array[1] = slv_reg_array[1];
assign slice2_xd_presc_shift[4:0] = slv_wire_array[1][4:0];
// map input 2
assign slv_wire_array[2] = slv_reg_array[2];
assign slice2_xd_presc_mul[17:0] = slv_wire_array[2][17:0];
// map input 3
assign slv_wire_array[3] = slv_reg_array[3];
assign slice2_xd_nlf_presc[17:0] = slv_wire_array[3][17:0];
// map input 4
assign slv_wire_array[4] = slv_reg_array[4];
assign slice2_xd_nlf_gain[17:0] = slv_wire_array[4][17:0];
// map input 5
assign slv_wire_array[5] = slv_reg_array[5];
assign slice2_xd_mux = slv_wire_array[5][0];
// map input 6
assign slv_wire_array[6] = slv_reg_array[6];
assign slice2_xd_gain[17:0] = slv_wire_array[6][17:0];
// map input 7
assign slv_wire_array[7] = slv_reg_array[7];
assign slice2_x_presc_shift[4:0] = slv_wire_array[7][4:0];
// map input 8
assign slv_wire_array[8] = slv_reg_array[8];
assign slice2_x_presc_mul[17:0] = slv_wire_array[8][17:0];
// map input 9
assign slv_wire_array[9] = slv_reg_array[9];
assign slice2_x_nlf_presc[17:0] = slv_wire_array[9][17:0];
// map input 10
assign slv_wire_array[10] = slv_reg_array[10];
assign slice2_x_nlf_gain[17:0] = slv_wire_array[10][17:0];
// map input 11
assign slv_wire_array[11] = slv_reg_array[11];
assign slice2_x_mux = slv_wire_array[11][0];
// map input 12
assign slv_wire_array[12] = slv_reg_array[12];
assign slice2_x_gain[17:0] = slv_wire_array[12][17:0];
// map input 13
assign slv_wire_array[13] = slv_reg_array[13];
assign slice2_u_nlf_presc[17:0] = slv_wire_array[13][17:0];
// map input 14
assign slv_wire_array[14] = slv_reg_array[14];
assign slice2_u_nlf_gain[17:0] = slv_wire_array[14][17:0];
// map input 15
assign slv_wire_array[15] = slv_reg_array[15];
assign slice2_u_mux = slv_wire_array[15][0];
// map input 16
assign slv_wire_array[16] = slv_reg_array[16];
assign slice2_u_gain[17:0] = slv_wire_array[16][17:0];
// map input 17
assign slv_wire_array[17] = slv_reg_array[17];
assign slice1_xd_presc_shift[4:0] = slv_wire_array[17][4:0];
// map input 18
assign slv_wire_array[18] = slv_reg_array[18];
assign slice1_xd_presc_mul[17:0] = slv_wire_array[18][17:0];
// map input 19
assign slv_wire_array[19] = slv_reg_array[19];
assign slice1_xd_nlf_presc[17:0] = slv_wire_array[19][17:0];
// map input 20
assign slv_wire_array[20] = slv_reg_array[20];
assign slice1_xd_nlf_gain[17:0] = slv_wire_array[20][17:0];
// map input 21
assign slv_wire_array[21] = slv_reg_array[21];
assign slice1_xd_mux = slv_wire_array[21][0];
// map input 22
assign slv_wire_array[22] = slv_reg_array[22];
assign slice1_xd_gain[17:0] = slv_wire_array[22][17:0];
// map input 23
assign slv_wire_array[23] = slv_reg_array[23];
assign slice1_x_presc_shift[4:0] = slv_wire_array[23][4:0];
// map input 24
assign slv_wire_array[24] = slv_reg_array[24];
assign slice1_x_presc_mul[17:0] = slv_wire_array[24][17:0];
// map input 25
assign slv_wire_array[25] = slv_reg_array[25];
assign slice1_x_nlf_presc[17:0] = slv_wire_array[25][17:0];
// map input 26
assign slv_wire_array[26] = slv_reg_array[26];
assign slice1_x_nlf_gain[17:0] = slv_wire_array[26][17:0];
// map input 27
assign slv_wire_array[27] = slv_reg_array[27];
assign slice1_x_mux = slv_wire_array[27][0];
// map input 28
assign slv_wire_array[28] = slv_reg_array[28];
assign slice1_x_gain[17:0] = slv_wire_array[28][17:0];
// map input 29
assign slv_wire_array[29] = slv_reg_array[29];
assign slice1_u_nlf_presc[17:0] = slv_wire_array[29][17:0];
// map input 30
assign slv_wire_array[30] = slv_reg_array[30];
assign slice1_u_nlf_gain[17:0] = slv_wire_array[30][17:0];
// map input 31
assign slv_wire_array[31] = slv_reg_array[31];
assign slice1_u_mux = slv_wire_array[31][0];
// map input 32
assign slv_wire_array[32] = slv_reg_array[32];
assign slice1_u_gain[17:0] = slv_wire_array[32][17:0];
// map input 33
assign slv_wire_array[33] = slv_reg_array[33];
assign slice0_xd_presc_shift[4:0] = slv_wire_array[33][4:0];
// map input 34
assign slv_wire_array[34] = slv_reg_array[34];
assign slice0_xd_presc_mul[17:0] = slv_wire_array[34][17:0];
// map input 35
assign slv_wire_array[35] = slv_reg_array[35];
assign slice0_xd_nlf_presc[17:0] = slv_wire_array[35][17:0];
// map input 36
assign slv_wire_array[36] = slv_reg_array[36];
assign slice0_xd_nlf_gain[17:0] = slv_wire_array[36][17:0];
// map input 37
assign slv_wire_array[37] = slv_reg_array[37];
assign slice0_xd_mux = slv_wire_array[37][0];
// map input 38
assign slv_wire_array[38] = slv_reg_array[38];
assign slice0_xd_gain[17:0] = slv_wire_array[38][17:0];
// map input 39
assign slv_wire_array[39] = slv_reg_array[39];
assign slice0_x_presc_shift[4:0] = slv_wire_array[39][4:0];
// map input 40
assign slv_wire_array[40] = slv_reg_array[40];
assign slice0_x_presc_mul[17:0] = slv_wire_array[40][17:0];
// map input 41
assign slv_wire_array[41] = slv_reg_array[41];
assign slice0_x_nlf_presc[17:0] = slv_wire_array[41][17:0];
// map input 42
assign slv_wire_array[42] = slv_reg_array[42];
assign slice0_x_nlf_gain[17:0] = slv_wire_array[42][17:0];
// map input 43
assign slv_wire_array[43] = slv_reg_array[43];
assign slice0_x_mux = slv_wire_array[43][0];
// map input 44
assign slv_wire_array[44] = slv_reg_array[44];
assign slice0_x_gain[17:0] = slv_wire_array[44][17:0];
// map input 45
assign slv_wire_array[45] = slv_reg_array[45];
assign slice0_u_nlf_presc[17:0] = slv_wire_array[45][17:0];
// map input 46
assign slv_wire_array[46] = slv_reg_array[46];
assign slice0_u_nlf_gain[17:0] = slv_wire_array[46][17:0];
// map input 47
assign slv_wire_array[47] = slv_reg_array[47];
assign slice0_u_mux = slv_wire_array[47][0];
// map input 48
assign slv_wire_array[48] = slv_reg_array[48];
assign slice0_u_gain[17:0] = slv_wire_array[48][17:0];
// map input 49
assign slv_wire_array[49] = slv_reg_array[49];
assign out_mat_nlf_dac1_xx2_presc[17:0] = slv_wire_array[49][17:0];
// map input 50
assign slv_wire_array[50] = slv_reg_array[50];
assign out_mat_nlf_dac1_xx2_gain[17:0] = slv_wire_array[50][17:0];
// map input 51
assign slv_wire_array[51] = slv_reg_array[51];
assign out_mat_nlf_dac1_xx2_en = slv_wire_array[51][0];
// map input 52
assign slv_wire_array[52] = slv_reg_array[52];
assign out_mat_nlf_dac1_xx1_presc[17:0] = slv_wire_array[52][17:0];
// map input 53
assign slv_wire_array[53] = slv_reg_array[53];
assign out_mat_nlf_dac1_xx1_gain[17:0] = slv_wire_array[53][17:0];
// map input 54
assign slv_wire_array[54] = slv_reg_array[54];
assign out_mat_nlf_dac1_xx1_en = slv_wire_array[54][0];
// map input 55
assign slv_wire_array[55] = slv_reg_array[55];
assign out_mat_nlf_dac1_xx0_presc[17:0] = slv_wire_array[55][17:0];
// map input 56
assign slv_wire_array[56] = slv_reg_array[56];
assign out_mat_nlf_dac1_xx0_gain[17:0] = slv_wire_array[56][17:0];
// map input 57
assign slv_wire_array[57] = slv_reg_array[57];
assign out_mat_nlf_dac1_xx0_en = slv_wire_array[57][0];
// map input 58
assign slv_wire_array[58] = slv_reg_array[58];
assign out_mat_nlf_dac0_xx2_presc[17:0] = slv_wire_array[58][17:0];
// map input 59
assign slv_wire_array[59] = slv_reg_array[59];
assign out_mat_nlf_dac0_xx2_gain[17:0] = slv_wire_array[59][17:0];
// map input 60
assign slv_wire_array[60] = slv_reg_array[60];
assign out_mat_nlf_dac0_xx2_en = slv_wire_array[60][0];
// map input 61
assign slv_wire_array[61] = slv_reg_array[61];
assign out_mat_nlf_dac0_xx1_presc[17:0] = slv_wire_array[61][17:0];
// map input 62
assign slv_wire_array[62] = slv_reg_array[62];
assign out_mat_nlf_dac0_xx1_gain[17:0] = slv_wire_array[62][17:0];
// map input 63
assign slv_wire_array[63] = slv_reg_array[63];
assign out_mat_nlf_dac0_xx1_en = slv_wire_array[63][0];
// map input 64
assign slv_wire_array[64] = slv_reg_array[64];
assign out_mat_nlf_dac0_xx0_presc[17:0] = slv_wire_array[64][17:0];
// map input 65
assign slv_wire_array[65] = slv_reg_array[65];
assign out_mat_nlf_dac0_xx0_gain[17:0] = slv_wire_array[65][17:0];
// map input 66
assign slv_wire_array[66] = slv_reg_array[66];
assign out_mat_nlf_dac0_xx0_en = slv_wire_array[66][0];
// map input 67
assign slv_wire_array[67] = slv_reg_array[67];
assign out_mat_fac_dac1_xx2[17:0] = slv_wire_array[67][17:0];
// map input 68
assign slv_wire_array[68] = slv_reg_array[68];
assign out_mat_fac_dac1_xx1[17:0] = slv_wire_array[68][17:0];
// map input 69
assign slv_wire_array[69] = slv_reg_array[69];
assign out_mat_fac_dac1_xx0[17:0] = slv_wire_array[69][17:0];
// map input 70
assign slv_wire_array[70] = slv_reg_array[70];
assign out_mat_fac_dac0_xx2[17:0] = slv_wire_array[70][17:0];
// map input 71
assign slv_wire_array[71] = slv_reg_array[71];
assign out_mat_fac_dac0_xx1[17:0] = slv_wire_array[71][17:0];
// map input 72
assign slv_wire_array[72] = slv_reg_array[72];
assign out_mat_fac_dac0_xx0[17:0] = slv_wire_array[72][17:0];
// map input 73
assign slv_wire_array[73] = slv_reg_array[73];
assign out_mat_dac1_selx2[1:0] = slv_wire_array[73][1:0];
// map input 74
assign slv_wire_array[74] = slv_reg_array[74];
assign out_mat_dac1_selx1[1:0] = slv_wire_array[74][1:0];
// map input 75
assign slv_wire_array[75] = slv_reg_array[75];
assign out_mat_dac1_selx0[1:0] = slv_wire_array[75][1:0];
// map input 76
assign slv_wire_array[76] = slv_reg_array[76];
assign out_mat_dac0_selx2[1:0] = slv_wire_array[76][1:0];
// map input 77
assign slv_wire_array[77] = slv_reg_array[77];
assign out_mat_dac0_selx1[1:0] = slv_wire_array[77][1:0];
// map input 78
assign slv_wire_array[78] = slv_reg_array[78];
assign out_mat_dac0_selx0[1:0] = slv_wire_array[78][1:0];
// map input 79
assign slv_wire_array[79] = slv_reg_array[79];
assign led_value[7:0] = slv_wire_array[79][7:0];
// map input 80
assign slv_wire_array[80] = slv_reg_array[80];
assign inp_mat_fac_u2_noise[17:0] = slv_wire_array[80][17:0];
// map input 81
assign slv_wire_array[81] = slv_reg_array[81];
assign inp_mat_fac_u2_adc1[17:0] = slv_wire_array[81][17:0];
// map input 82
assign slv_wire_array[82] = slv_reg_array[82];
assign inp_mat_fac_u2_adc0[17:0] = slv_wire_array[82][17:0];
// map input 83
assign slv_wire_array[83] = slv_reg_array[83];
assign inp_mat_fac_u1_noise[17:0] = slv_wire_array[83][17:0];
// map input 84
assign slv_wire_array[84] = slv_reg_array[84];
assign inp_mat_fac_u1_adc1[17:0] = slv_wire_array[84][17:0];
// map input 85
assign slv_wire_array[85] = slv_reg_array[85];
assign inp_mat_fac_u1_adc0[17:0] = slv_wire_array[85][17:0];
// map input 86
assign slv_wire_array[86] = slv_reg_array[86];
assign inp_mat_fac_u0_noise[17:0] = slv_wire_array[86][17:0];
// map input 87
assign slv_wire_array[87] = slv_reg_array[87];
assign inp_mat_fac_u0_adc1[17:0] = slv_wire_array[87][17:0];
// map input 88
assign slv_wire_array[88] = slv_reg_array[88];
assign inp_mat_fac_u0_adc0[17:0] = slv_wire_array[88][17:0];
// map input 89
assign slv_wire_array[89] = slv_reg_array[89];
assign cfg_system_reset = slv_wire_array[89][0];
// map input 90
assign slv_wire_array[90] = slv_reg_array[90];
assign cfg_noise_presc2[17:0] = slv_wire_array[90][17:0];
// map input 91
assign slv_wire_array[91] = slv_reg_array[91];
assign cfg_noise_presc1[17:0] = slv_wire_array[91][17:0];
// map input 92
assign slv_wire_array[92] = slv_reg_array[92];
assign cfg_noise_presc0[17:0] = slv_wire_array[92][17:0];
// map input 93
assign slv_wire_array[93] = slv_reg_array[93];
assign cfg_nlf_we = slv_wire_array[93][0];
// map input 94
assign slv_wire_array[94] = slv_reg_array[94];
assign cfg_nlf_start = slv_wire_array[94][0];
// map input 95
assign slv_wire_array[95] = slv_reg_array[95];
assign cfg_nlf_select[31:0] = slv_wire_array[95][31:0];
// map input 96
assign slv_wire_array[96] = slv_reg_array[96];
assign cfg_nlf_data[15:0] = slv_wire_array[96][15:0];
// map input 97
assign slv_wire_array[97] = slv_reg_array[97];
assign cfg_nlf_addr[9:0] = slv_wire_array[97][9:0];
// map input 98
assign slv_wire_array[98] = slv_reg_array[98];
assign adc1_nlf_presc[17:0] = slv_wire_array[98][17:0];
// map input 99
assign slv_wire_array[99] = slv_reg_array[99];
assign adc1_nlf_gain[17:0] = slv_wire_array[99][17:0];
// map input 100
assign slv_wire_array[100] = slv_reg_array[100];
assign adc1_nlf_enable = slv_wire_array[100][0];
// map input 101
assign slv_wire_array[101] = slv_reg_array[101];
assign adc0_nlf_presc[17:0] = slv_wire_array[101][17:0];
// map input 102
assign slv_wire_array[102] = slv_reg_array[102];
assign adc0_nlf_gain[17:0] = slv_wire_array[102][17:0];
// map input 103
assign slv_wire_array[103] = slv_reg_array[103];
assign adc0_nlf_enable = slv_wire_array[103][0];
// map output 104
assign slv_wire_array[104] = cfg_nlf_done;
  initial
  begin
    slv_reg_array[0] = 32'd0;
    slv_reg_array[1] = 32'd0;
    slv_reg_array[2] = 32'd0;
    slv_reg_array[3] = 32'd0;
    slv_reg_array[4] = 32'd0;
    slv_reg_array[5] = 32'd0;
    slv_reg_array[6] = 32'd0;
    slv_reg_array[7] = 32'd0;
    slv_reg_array[8] = 32'd0;
    slv_reg_array[9] = 32'd0;
    slv_reg_array[10] = 32'd0;
    slv_reg_array[11] = 32'd0;
    slv_reg_array[12] = 32'd0;
    slv_reg_array[13] = 32'd0;
    slv_reg_array[14] = 32'd0;
    slv_reg_array[15] = 32'd0;
    slv_reg_array[16] = 32'd0;
    slv_reg_array[17] = 32'd0;
    slv_reg_array[18] = 32'd0;
    slv_reg_array[19] = 32'd0;
    slv_reg_array[20] = 32'd0;
    slv_reg_array[21] = 32'd0;
    slv_reg_array[22] = 32'd0;
    slv_reg_array[23] = 32'd0;
    slv_reg_array[24] = 32'd0;
    slv_reg_array[25] = 32'd0;
    slv_reg_array[26] = 32'd0;
    slv_reg_array[27] = 32'd0;
    slv_reg_array[28] = 32'd0;
    slv_reg_array[29] = 32'd0;
    slv_reg_array[30] = 32'd0;
    slv_reg_array[31] = 32'd0;
    slv_reg_array[32] = 32'd0;
    slv_reg_array[33] = 32'd0;
    slv_reg_array[34] = 32'd0;
    slv_reg_array[35] = 32'd0;
    slv_reg_array[36] = 32'd0;
    slv_reg_array[37] = 32'd0;
    slv_reg_array[38] = 32'd0;
    slv_reg_array[39] = 32'd0;
    slv_reg_array[40] = 32'd0;
    slv_reg_array[41] = 32'd0;
    slv_reg_array[42] = 32'd0;
    slv_reg_array[43] = 32'd0;
    slv_reg_array[44] = 32'd0;
    slv_reg_array[45] = 32'd0;
    slv_reg_array[46] = 32'd0;
    slv_reg_array[47] = 32'd0;
    slv_reg_array[48] = 32'd0;
    slv_reg_array[49] = 32'd0;
    slv_reg_array[50] = 32'd0;
    slv_reg_array[51] = 32'd0;
    slv_reg_array[52] = 32'd0;
    slv_reg_array[53] = 32'd0;
    slv_reg_array[54] = 32'd0;
    slv_reg_array[55] = 32'd0;
    slv_reg_array[56] = 32'd0;
    slv_reg_array[57] = 32'd0;
    slv_reg_array[58] = 32'd0;
    slv_reg_array[59] = 32'd0;
    slv_reg_array[60] = 32'd0;
    slv_reg_array[61] = 32'd0;
    slv_reg_array[62] = 32'd0;
    slv_reg_array[63] = 32'd0;
    slv_reg_array[64] = 32'd0;
    slv_reg_array[65] = 32'd0;
    slv_reg_array[66] = 32'd0;
    slv_reg_array[67] = 32'd0;
    slv_reg_array[68] = 32'd0;
    slv_reg_array[69] = 32'd0;
    slv_reg_array[70] = 32'd0;
    slv_reg_array[71] = 32'd0;
    slv_reg_array[72] = 32'd0;
    slv_reg_array[73] = 32'd0;
    slv_reg_array[74] = 32'd0;
    slv_reg_array[75] = 32'd0;
    slv_reg_array[76] = 32'd0;
    slv_reg_array[77] = 32'd0;
    slv_reg_array[78] = 32'd0;
    slv_reg_array[79] = 32'd0;
    slv_reg_array[80] = 32'd0;
    slv_reg_array[81] = 32'd0;
    slv_reg_array[82] = 32'd0;
    slv_reg_array[83] = 32'd0;
    slv_reg_array[84] = 32'd0;
    slv_reg_array[85] = 32'd0;
    slv_reg_array[86] = 32'd0;
    slv_reg_array[87] = 32'd0;
    slv_reg_array[88] = 32'd0;
    slv_reg_array[89] = 32'd0;
    slv_reg_array[90] = 32'd0;
    slv_reg_array[91] = 32'd0;
    slv_reg_array[92] = 32'd0;
    slv_reg_array[93] = 32'd0;
    slv_reg_array[94] = 32'd0;
    slv_reg_array[95] = 32'd0;
    slv_reg_array[96] = 32'd0;
    slv_reg_array[97] = 32'd0;
    slv_reg_array[98] = 32'd0;
    slv_reg_array[99] = 32'd0;
    slv_reg_array[100] = 32'd0;
    slv_reg_array[101] = 32'd0;
    slv_reg_array[102] = 32'd0;
    slv_reg_array[103] = 32'd0;
  end
  always @(axi_awaddr)
  begin
    case(axi_awaddr)
      9'd16 : dec_w = 0;
      9'd432 : dec_w = 1;
      9'd436 : dec_w = 2;
      9'd408 : dec_w = 3;
      9'd412 : dec_w = 4;
      9'd400 : dec_w = 5;
      9'd404 : dec_w = 6;
      9'd440 : dec_w = 7;
      9'd444 : dec_w = 8;
      9'd392 : dec_w = 9;
      9'd396 : dec_w = 10;
      9'd384 : dec_w = 11;
      9'd388 : dec_w = 12;
      9'd424 : dec_w = 13;
      9'd428 : dec_w = 14;
      9'd416 : dec_w = 15;
      9'd420 : dec_w = 16;
      9'd368 : dec_w = 17;
      9'd372 : dec_w = 18;
      9'd344 : dec_w = 19;
      9'd348 : dec_w = 20;
      9'd336 : dec_w = 21;
      9'd340 : dec_w = 22;
      9'd376 : dec_w = 23;
      9'd380 : dec_w = 24;
      9'd328 : dec_w = 25;
      9'd332 : dec_w = 26;
      9'd320 : dec_w = 27;
      9'd324 : dec_w = 28;
      9'd360 : dec_w = 29;
      9'd364 : dec_w = 30;
      9'd352 : dec_w = 31;
      9'd356 : dec_w = 32;
      9'd304 : dec_w = 33;
      9'd308 : dec_w = 34;
      9'd280 : dec_w = 35;
      9'd284 : dec_w = 36;
      9'd272 : dec_w = 37;
      9'd276 : dec_w = 38;
      9'd312 : dec_w = 39;
      9'd316 : dec_w = 40;
      9'd264 : dec_w = 41;
      9'd268 : dec_w = 42;
      9'd256 : dec_w = 43;
      9'd260 : dec_w = 44;
      9'd296 : dec_w = 45;
      9'd300 : dec_w = 46;
      9'd288 : dec_w = 47;
      9'd292 : dec_w = 48;
      9'd240 : dec_w = 49;
      9'd244 : dec_w = 50;
      9'd236 : dec_w = 51;
      9'd228 : dec_w = 52;
      9'd232 : dec_w = 53;
      9'd224 : dec_w = 54;
      9'd216 : dec_w = 55;
      9'd220 : dec_w = 56;
      9'd212 : dec_w = 57;
      9'd204 : dec_w = 58;
      9'd208 : dec_w = 59;
      9'd200 : dec_w = 60;
      9'd192 : dec_w = 61;
      9'd196 : dec_w = 62;
      9'd188 : dec_w = 63;
      9'd180 : dec_w = 64;
      9'd184 : dec_w = 65;
      9'd176 : dec_w = 66;
      9'd172 : dec_w = 67;
      9'd168 : dec_w = 68;
      9'd164 : dec_w = 69;
      9'd148 : dec_w = 70;
      9'd144 : dec_w = 71;
      9'd140 : dec_w = 72;
      9'd160 : dec_w = 73;
      9'd156 : dec_w = 74;
      9'd152 : dec_w = 75;
      9'd136 : dec_w = 76;
      9'd132 : dec_w = 77;
      9'd128 : dec_w = 78;
      9'd0 : dec_w = 79;
      9'd96 : dec_w = 80;
      9'd92 : dec_w = 81;
      9'd88 : dec_w = 82;
      9'd84 : dec_w = 83;
      9'd80 : dec_w = 84;
      9'd76 : dec_w = 85;
      9'd72 : dec_w = 86;
      9'd68 : dec_w = 87;
      9'd64 : dec_w = 88;
      9'd56 : dec_w = 89;
      9'd52 : dec_w = 90;
      9'd48 : dec_w = 91;
      9'd44 : dec_w = 92;
      9'd28 : dec_w = 93;
      9'd20 : dec_w = 94;
      9'd32 : dec_w = 95;
      9'd40 : dec_w = 96;
      9'd36 : dec_w = 97;
      9'd460 : dec_w = 98;
      9'd464 : dec_w = 99;
      9'd468 : dec_w = 100;
      9'd448 : dec_w = 101;
      9'd452 : dec_w = 102;
      9'd456 : dec_w = 103;
      9'd24 : dec_w = 104;
      default : dec_w = 0;
    endcase
  end
  always @(axi_araddr)
  begin
    case(axi_araddr)
      9'd16 : dec_r = 0;
      9'd432 : dec_r = 1;
      9'd436 : dec_r = 2;
      9'd408 : dec_r = 3;
      9'd412 : dec_r = 4;
      9'd400 : dec_r = 5;
      9'd404 : dec_r = 6;
      9'd440 : dec_r = 7;
      9'd444 : dec_r = 8;
      9'd392 : dec_r = 9;
      9'd396 : dec_r = 10;
      9'd384 : dec_r = 11;
      9'd388 : dec_r = 12;
      9'd424 : dec_r = 13;
      9'd428 : dec_r = 14;
      9'd416 : dec_r = 15;
      9'd420 : dec_r = 16;
      9'd368 : dec_r = 17;
      9'd372 : dec_r = 18;
      9'd344 : dec_r = 19;
      9'd348 : dec_r = 20;
      9'd336 : dec_r = 21;
      9'd340 : dec_r = 22;
      9'd376 : dec_r = 23;
      9'd380 : dec_r = 24;
      9'd328 : dec_r = 25;
      9'd332 : dec_r = 26;
      9'd320 : dec_r = 27;
      9'd324 : dec_r = 28;
      9'd360 : dec_r = 29;
      9'd364 : dec_r = 30;
      9'd352 : dec_r = 31;
      9'd356 : dec_r = 32;
      9'd304 : dec_r = 33;
      9'd308 : dec_r = 34;
      9'd280 : dec_r = 35;
      9'd284 : dec_r = 36;
      9'd272 : dec_r = 37;
      9'd276 : dec_r = 38;
      9'd312 : dec_r = 39;
      9'd316 : dec_r = 40;
      9'd264 : dec_r = 41;
      9'd268 : dec_r = 42;
      9'd256 : dec_r = 43;
      9'd260 : dec_r = 44;
      9'd296 : dec_r = 45;
      9'd300 : dec_r = 46;
      9'd288 : dec_r = 47;
      9'd292 : dec_r = 48;
      9'd240 : dec_r = 49;
      9'd244 : dec_r = 50;
      9'd236 : dec_r = 51;
      9'd228 : dec_r = 52;
      9'd232 : dec_r = 53;
      9'd224 : dec_r = 54;
      9'd216 : dec_r = 55;
      9'd220 : dec_r = 56;
      9'd212 : dec_r = 57;
      9'd204 : dec_r = 58;
      9'd208 : dec_r = 59;
      9'd200 : dec_r = 60;
      9'd192 : dec_r = 61;
      9'd196 : dec_r = 62;
      9'd188 : dec_r = 63;
      9'd180 : dec_r = 64;
      9'd184 : dec_r = 65;
      9'd176 : dec_r = 66;
      9'd172 : dec_r = 67;
      9'd168 : dec_r = 68;
      9'd164 : dec_r = 69;
      9'd148 : dec_r = 70;
      9'd144 : dec_r = 71;
      9'd140 : dec_r = 72;
      9'd160 : dec_r = 73;
      9'd156 : dec_r = 74;
      9'd152 : dec_r = 75;
      9'd136 : dec_r = 76;
      9'd132 : dec_r = 77;
      9'd128 : dec_r = 78;
      9'd0 : dec_r = 79;
      9'd96 : dec_r = 80;
      9'd92 : dec_r = 81;
      9'd88 : dec_r = 82;
      9'd84 : dec_r = 83;
      9'd80 : dec_r = 84;
      9'd76 : dec_r = 85;
      9'd72 : dec_r = 86;
      9'd68 : dec_r = 87;
      9'd64 : dec_r = 88;
      9'd56 : dec_r = 89;
      9'd52 : dec_r = 90;
      9'd48 : dec_r = 91;
      9'd44 : dec_r = 92;
      9'd28 : dec_r = 93;
      9'd20 : dec_r = 94;
      9'd32 : dec_r = 95;
      9'd40 : dec_r = 96;
      9'd36 : dec_r = 97;
      9'd460 : dec_r = 98;
      9'd464 : dec_r = 99;
      9'd468 : dec_r = 100;
      9'd448 : dec_r = 101;
      9'd452 : dec_r = 102;
      9'd456 : dec_r = 103;
      9'd24 : dec_r = 104;
      default : dec_r = 0;
    endcase
  end
  always @( posedge axi_domain_aclk )
  begin
    if ( axi_domain_aresetn == 1'b0 )
      begin
        axi_awready <= 1'b0;
        axi_awaddr <= 0;
      end
    else
      begin
        if (~axi_awready && axi_domain_s_axi_awvalid && axi_domain_s_axi_wvalid)
          begin
            axi_awready <= 1'b1;
            axi_awaddr <= axi_domain_s_axi_awaddr;
          end
        else
          begin
            axi_awready <= 1'b0;
          end
      end
  end
  always @( posedge axi_domain_aclk )
  begin
    if ( axi_domain_aresetn == 1'b0 )
      begin
        axi_wready <= 1'b0;
      end
    else
      begin
        if (~axi_wready && axi_domain_s_axi_wvalid && axi_domain_s_axi_awvalid)
          begin
            axi_wready <= 1'b1;
          end
        else
          begin
            axi_wready <= 1'b0;
          end
      end
  end
  assign slv_reg_wren = axi_wready && axi_domain_s_axi_wvalid && axi_awready && axi_domain_s_axi_awvalid;
  always @( posedge axi_domain_aclk )
  begin
    if ( axi_domain_aresetn == 1'b0 )
      begin
        slv_reg_array[0] = 32'd0;
        slv_reg_array[1] = 32'd0;
        slv_reg_array[2] = 32'd0;
        slv_reg_array[3] = 32'd0;
        slv_reg_array[4] = 32'd0;
        slv_reg_array[5] = 32'd0;
        slv_reg_array[6] = 32'd0;
        slv_reg_array[7] = 32'd0;
        slv_reg_array[8] = 32'd0;
        slv_reg_array[9] = 32'd0;
        slv_reg_array[10] = 32'd0;
        slv_reg_array[11] = 32'd0;
        slv_reg_array[12] = 32'd0;
        slv_reg_array[13] = 32'd0;
        slv_reg_array[14] = 32'd0;
        slv_reg_array[15] = 32'd0;
        slv_reg_array[16] = 32'd0;
        slv_reg_array[17] = 32'd0;
        slv_reg_array[18] = 32'd0;
        slv_reg_array[19] = 32'd0;
        slv_reg_array[20] = 32'd0;
        slv_reg_array[21] = 32'd0;
        slv_reg_array[22] = 32'd0;
        slv_reg_array[23] = 32'd0;
        slv_reg_array[24] = 32'd0;
        slv_reg_array[25] = 32'd0;
        slv_reg_array[26] = 32'd0;
        slv_reg_array[27] = 32'd0;
        slv_reg_array[28] = 32'd0;
        slv_reg_array[29] = 32'd0;
        slv_reg_array[30] = 32'd0;
        slv_reg_array[31] = 32'd0;
        slv_reg_array[32] = 32'd0;
        slv_reg_array[33] = 32'd0;
        slv_reg_array[34] = 32'd0;
        slv_reg_array[35] = 32'd0;
        slv_reg_array[36] = 32'd0;
        slv_reg_array[37] = 32'd0;
        slv_reg_array[38] = 32'd0;
        slv_reg_array[39] = 32'd0;
        slv_reg_array[40] = 32'd0;
        slv_reg_array[41] = 32'd0;
        slv_reg_array[42] = 32'd0;
        slv_reg_array[43] = 32'd0;
        slv_reg_array[44] = 32'd0;
        slv_reg_array[45] = 32'd0;
        slv_reg_array[46] = 32'd0;
        slv_reg_array[47] = 32'd0;
        slv_reg_array[48] = 32'd0;
        slv_reg_array[49] = 32'd0;
        slv_reg_array[50] = 32'd0;
        slv_reg_array[51] = 32'd0;
        slv_reg_array[52] = 32'd0;
        slv_reg_array[53] = 32'd0;
        slv_reg_array[54] = 32'd0;
        slv_reg_array[55] = 32'd0;
        slv_reg_array[56] = 32'd0;
        slv_reg_array[57] = 32'd0;
        slv_reg_array[58] = 32'd0;
        slv_reg_array[59] = 32'd0;
        slv_reg_array[60] = 32'd0;
        slv_reg_array[61] = 32'd0;
        slv_reg_array[62] = 32'd0;
        slv_reg_array[63] = 32'd0;
        slv_reg_array[64] = 32'd0;
        slv_reg_array[65] = 32'd0;
        slv_reg_array[66] = 32'd0;
        slv_reg_array[67] = 32'd0;
        slv_reg_array[68] = 32'd0;
        slv_reg_array[69] = 32'd0;
        slv_reg_array[70] = 32'd0;
        slv_reg_array[71] = 32'd0;
        slv_reg_array[72] = 32'd0;
        slv_reg_array[73] = 32'd0;
        slv_reg_array[74] = 32'd0;
        slv_reg_array[75] = 32'd0;
        slv_reg_array[76] = 32'd0;
        slv_reg_array[77] = 32'd0;
        slv_reg_array[78] = 32'd0;
        slv_reg_array[79] = 32'd0;
        slv_reg_array[80] = 32'd0;
        slv_reg_array[81] = 32'd0;
        slv_reg_array[82] = 32'd0;
        slv_reg_array[83] = 32'd0;
        slv_reg_array[84] = 32'd0;
        slv_reg_array[85] = 32'd0;
        slv_reg_array[86] = 32'd0;
        slv_reg_array[87] = 32'd0;
        slv_reg_array[88] = 32'd0;
        slv_reg_array[89] = 32'd0;
        slv_reg_array[90] = 32'd0;
        slv_reg_array[91] = 32'd0;
        slv_reg_array[92] = 32'd0;
        slv_reg_array[93] = 32'd0;
        slv_reg_array[94] = 32'd0;
        slv_reg_array[95] = 32'd0;
        slv_reg_array[96] = 32'd0;
        slv_reg_array[97] = 32'd0;
        slv_reg_array[98] = 32'd0;
        slv_reg_array[99] = 32'd0;
        slv_reg_array[100] = 32'd0;
        slv_reg_array[101] = 32'd0;
        slv_reg_array[102] = 32'd0;
        slv_reg_array[103] = 32'd0;
      end
    else begin
      if (slv_reg_wren)
        begin
          for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
            if ( axi_domain_s_axi_wstrb[byte_index] == 1 ) begin
              slv_reg_array[dec_w][(byte_index*8) +: 8] <= axi_domain_s_axi_wdata[(byte_index*8) +: 8];
            end
        end
    end
  end
  always @( posedge axi_domain_aclk )
  begin
    if ( axi_domain_aresetn == 1'b0 )
      begin
        axi_bvalid  <= 0;
        axi_bresp   <= 2'b0;
      end
    else
      begin
        if (axi_awready && axi_domain_s_axi_awvalid && ~axi_bvalid && axi_wready && axi_domain_s_axi_wvalid)
          begin
            axi_bvalid <= 1'b1;
            axi_bresp  <= 2'b0; 
          end
        else
          begin
            if (axi_domain_s_axi_bready && axi_bvalid)
              begin
                axi_bvalid <= 1'b0;
              end
          end
      end
  end
  always @( posedge axi_domain_aclk )
  begin
    if ( axi_domain_aresetn == 1'b0 )
      begin
        axi_arready <= 1'b0;
        axi_araddr  <= {ADDR_MSB{1'b0}};
      end
    else
      begin
        if (~axi_arready && axi_domain_s_axi_arvalid)
          begin
            axi_arready <= 1'b1;
            axi_araddr  <= axi_domain_s_axi_araddr;
          end
        else
          begin
            axi_arready <= 1'b0;
          end
      end
  end

  // AXI read response (inferred flops)
  always @( posedge axi_domain_aclk )
  begin
    if ( axi_domain_aresetn == 1'b0 )
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
        else if (axi_rvalid && axi_domain_s_axi_rready)
          begin
            axi_rvalid <= 1'b0;
            axi_rresp  <= 2'b0; 
          end
      end
  end
  assign slv_reg_rden = axi_arready & axi_domain_s_axi_arvalid & ~axi_rvalid;
  always @(axi_domain_aresetn, slv_reg_rden, axi_araddr, slv_wire_array, dec_r)
  begin
    if ( axi_domain_aresetn == 1'b0 )
      begin
        reg_data_out <= {C_S_AXI_DATA_WIDTH{1'b0}};
      end
    else
      begin
     reg_data_out <= slv_wire_array[dec_r];
      end
  end
  // flop for AXI read data
  always @( posedge axi_domain_aclk )
  begin
    if ( axi_domain_aresetn == 1'b0 )
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

  assign axi_domain_clk = axi_domain_aclk;

endmodule

`timescale 1 ns / 10 ps
module axi_domain_axi_b_axi_lite_interface#(parameter C_S_AXI_DATA_WIDTH = 32, C_S_AXI_ADDR_WIDTH = 7, C_S_NUM_OFFSETS = 13)(
  output wire[8:0] nlf_switch_sw_switch,
  output wire[8:0] nlf_switch_io_mask,
  output wire[24:0] dac1_calib_offset,
  output wire[17:0] dac1_calib_factor,
  output wire[24:0] dac0_calib_offset,
  output wire[17:0] dac0_calib_factor,
  output wire[24:0] adc1_calib_offset,
  output wire[17:0] adc1_calib_factor,
  output wire[24:0] adc0_calib_offset,
  output wire[17:0] adc0_calib_factor,
  input wire[24:0] adc0_value,
  input wire[24:0] adc1_value,
  input wire[8:0] nlf_switch,
  output wire axi_domain_clk,
  input wire axi_domain_axi_b_aclk,
  input wire axi_domain_axi_b_aresetn,
  input  wire [C_S_AXI_ADDR_WIDTH - 1:0] axi_domain_axi_b_s_axi_awaddr,
  input  wire axi_domain_axi_b_s_axi_awvalid,
  output wire axi_domain_axi_b_s_axi_awready,
  input  wire [C_S_AXI_DATA_WIDTH-1:0] axi_domain_axi_b_s_axi_wdata,
  input  wire [C_S_AXI_DATA_WIDTH/8-1:0] axi_domain_axi_b_s_axi_wstrb,
  input  wire axi_domain_axi_b_s_axi_wvalid,
  output wire axi_domain_axi_b_s_axi_wready,
  output wire [1:0] axi_domain_axi_b_s_axi_bresp,
  output wire axi_domain_axi_b_s_axi_bvalid,
  input  wire axi_domain_axi_b_s_axi_bready,
  input  wire [C_S_AXI_ADDR_WIDTH - 1:0] axi_domain_axi_b_s_axi_araddr,
  input  wire axi_domain_axi_b_s_axi_arvalid,
  output wire axi_domain_axi_b_s_axi_arready,
  output wire [C_S_AXI_DATA_WIDTH-1:0] axi_domain_axi_b_s_axi_rdata,
  output wire [1:0] axi_domain_axi_b_s_axi_rresp,
  output wire axi_domain_axi_b_s_axi_rvalid,
  input  wire axi_domain_axi_b_s_axi_rready
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
assign axi_domain_axi_b_s_axi_awready = axi_awready;
assign axi_domain_axi_b_s_axi_wready  = axi_wready;
assign axi_domain_axi_b_s_axi_bresp  = axi_bresp;
assign axi_domain_axi_b_s_axi_bvalid = axi_bvalid;
assign axi_domain_axi_b_s_axi_arready = axi_arready;
assign axi_domain_axi_b_s_axi_rdata  = axi_rdata;
assign axi_domain_axi_b_s_axi_rvalid = axi_rvalid;
assign axi_domain_axi_b_s_axi_rresp  = axi_rresp;
// map input 0
assign slv_wire_array[0] = slv_reg_array[0];
assign nlf_switch_sw_switch[8:0] = slv_wire_array[0][8:0];
// map input 1
assign slv_wire_array[1] = slv_reg_array[1];
assign nlf_switch_io_mask[8:0] = slv_wire_array[1][8:0];
// map input 2
assign slv_wire_array[2] = slv_reg_array[2];
assign dac1_calib_offset[24:0] = slv_wire_array[2][24:0];
// map input 3
assign slv_wire_array[3] = slv_reg_array[3];
assign dac1_calib_factor[17:0] = slv_wire_array[3][17:0];
// map input 4
assign slv_wire_array[4] = slv_reg_array[4];
assign dac0_calib_offset[24:0] = slv_wire_array[4][24:0];
// map input 5
assign slv_wire_array[5] = slv_reg_array[5];
assign dac0_calib_factor[17:0] = slv_wire_array[5][17:0];
// map input 6
assign slv_wire_array[6] = slv_reg_array[6];
assign adc1_calib_offset[24:0] = slv_wire_array[6][24:0];
// map input 7
assign slv_wire_array[7] = slv_reg_array[7];
assign adc1_calib_factor[17:0] = slv_wire_array[7][17:0];
// map input 8
assign slv_wire_array[8] = slv_reg_array[8];
assign adc0_calib_offset[24:0] = slv_wire_array[8][24:0];
// map input 9
assign slv_wire_array[9] = slv_reg_array[9];
assign adc0_calib_factor[17:0] = slv_wire_array[9][17:0];
// map output 10
assign slv_wire_array[10] = {7'h0, adc0_value[24:0]};
// map output 11
assign slv_wire_array[11] = {7'h0, adc1_value[24:0]};
// map output 12
assign slv_wire_array[12] = {23'h0, nlf_switch[8:0]};
  initial
  begin
    slv_reg_array[0] = 32'd0;
    slv_reg_array[1] = 32'd0;
    slv_reg_array[2] = 32'd0;
    slv_reg_array[3] = 32'd0;
    slv_reg_array[4] = 32'd0;
    slv_reg_array[5] = 32'd0;
    slv_reg_array[6] = 32'd0;
    slv_reg_array[7] = 32'd0;
    slv_reg_array[8] = 32'd0;
    slv_reg_array[9] = 32'd0;
  end
  always @(axi_awaddr)
  begin
    case(axi_awaddr)
      7'd72 : dec_w = 0;
      7'd68 : dec_w = 1;
      7'd28 : dec_w = 2;
      7'd36 : dec_w = 3;
      7'd24 : dec_w = 4;
      7'd32 : dec_w = 5;
      7'd4 : dec_w = 6;
      7'd12 : dec_w = 7;
      7'd0 : dec_w = 8;
      7'd8 : dec_w = 9;
      7'd16 : dec_w = 10;
      7'd20 : dec_w = 11;
      7'd64 : dec_w = 12;
      default : dec_w = 0;
    endcase
  end
  always @(axi_araddr)
  begin
    case(axi_araddr)
      7'd72 : dec_r = 0;
      7'd68 : dec_r = 1;
      7'd28 : dec_r = 2;
      7'd36 : dec_r = 3;
      7'd24 : dec_r = 4;
      7'd32 : dec_r = 5;
      7'd4 : dec_r = 6;
      7'd12 : dec_r = 7;
      7'd0 : dec_r = 8;
      7'd8 : dec_r = 9;
      7'd16 : dec_r = 10;
      7'd20 : dec_r = 11;
      7'd64 : dec_r = 12;
      default : dec_r = 0;
    endcase
  end
  always @( posedge axi_domain_axi_b_aclk )
  begin
    if ( axi_domain_axi_b_aresetn == 1'b0 )
      begin
        axi_awready <= 1'b0;
        axi_awaddr <= 0;
      end
    else
      begin
        if (~axi_awready && axi_domain_axi_b_s_axi_awvalid && axi_domain_axi_b_s_axi_wvalid)
          begin
            axi_awready <= 1'b1;
            axi_awaddr <= axi_domain_axi_b_s_axi_awaddr;
          end
        else
          begin
            axi_awready <= 1'b0;
          end
      end
  end
  always @( posedge axi_domain_axi_b_aclk )
  begin
    if ( axi_domain_axi_b_aresetn == 1'b0 )
      begin
        axi_wready <= 1'b0;
      end
    else
      begin
        if (~axi_wready && axi_domain_axi_b_s_axi_wvalid && axi_domain_axi_b_s_axi_awvalid)
          begin
            axi_wready <= 1'b1;
          end
        else
          begin
            axi_wready <= 1'b0;
          end
      end
  end
  assign slv_reg_wren = axi_wready && axi_domain_axi_b_s_axi_wvalid && axi_awready && axi_domain_axi_b_s_axi_awvalid;
  always @( posedge axi_domain_axi_b_aclk )
  begin
    if ( axi_domain_axi_b_aresetn == 1'b0 )
      begin
        slv_reg_array[0] = 32'd0;
        slv_reg_array[1] = 32'd0;
        slv_reg_array[2] = 32'd0;
        slv_reg_array[3] = 32'd0;
        slv_reg_array[4] = 32'd0;
        slv_reg_array[5] = 32'd0;
        slv_reg_array[6] = 32'd0;
        slv_reg_array[7] = 32'd0;
        slv_reg_array[8] = 32'd0;
        slv_reg_array[9] = 32'd0;
      end
    else begin
      if (slv_reg_wren)
        begin
          for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
            if ( axi_domain_axi_b_s_axi_wstrb[byte_index] == 1 ) begin
              slv_reg_array[dec_w][(byte_index*8) +: 8] <= axi_domain_axi_b_s_axi_wdata[(byte_index*8) +: 8];
            end
        end
    end
  end
  always @( posedge axi_domain_axi_b_aclk )
  begin
    if ( axi_domain_axi_b_aresetn == 1'b0 )
      begin
        axi_bvalid  <= 0;
        axi_bresp   <= 2'b0;
      end
    else
      begin
        if (axi_awready && axi_domain_axi_b_s_axi_awvalid && ~axi_bvalid && axi_wready && axi_domain_axi_b_s_axi_wvalid)
          begin
            axi_bvalid <= 1'b1;
            axi_bresp  <= 2'b0; 
          end
        else
          begin
            if (axi_domain_axi_b_s_axi_bready && axi_bvalid)
              begin
                axi_bvalid <= 1'b0;
              end
          end
      end
  end
  always @( posedge axi_domain_axi_b_aclk )
  begin
    if ( axi_domain_axi_b_aresetn == 1'b0 )
      begin
        axi_arready <= 1'b0;
        axi_araddr  <= {ADDR_MSB{1'b0}};
      end
    else
      begin
        if (~axi_arready && axi_domain_axi_b_s_axi_arvalid)
          begin
            axi_arready <= 1'b1;
            axi_araddr  <= axi_domain_axi_b_s_axi_araddr;
          end
        else
          begin
            axi_arready <= 1'b0;
          end
      end
  end

  // AXI read response (inferred flops)
  always @( posedge axi_domain_axi_b_aclk )
  begin
    if ( axi_domain_axi_b_aresetn == 1'b0 )
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
        else if (axi_rvalid && axi_domain_axi_b_s_axi_rready)
          begin
            axi_rvalid <= 1'b0;
            axi_rresp  <= 2'b0; 
          end
      end
  end
  assign slv_reg_rden = axi_arready & axi_domain_axi_b_s_axi_arvalid & ~axi_rvalid;
  always @(axi_domain_axi_b_aresetn, slv_reg_rden, axi_araddr, slv_wire_array, dec_r)
  begin
    if ( axi_domain_axi_b_aresetn == 1'b0 )
      begin
        reg_data_out <= {C_S_AXI_DATA_WIDTH{1'b0}};
      end
    else
      begin
     reg_data_out <= slv_wire_array[dec_r];
      end
  end
  // flop for AXI read data
  always @( posedge axi_domain_axi_b_aclk )
  begin
    if ( axi_domain_axi_b_aresetn == 1'b0 )
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

  assign axi_domain_clk = axi_domain_axi_b_aclk;

endmodule

module hilsim_ipcore_xladdsub (a, b, c_in, ce, clr, clk, rst, en, c_out, s);
 
 parameter core_name0= "";
 parameter a_width= 16;
 parameter signed a_bin_pt= 4;
 parameter a_arith= `xlUnsigned;
 parameter c_in_width= 16;
 parameter c_in_bin_pt= 4;
 parameter c_in_arith= `xlUnsigned;
 parameter c_out_width= 16;
 parameter c_out_bin_pt= 4;
 parameter c_out_arith= `xlUnsigned;
 parameter b_width= 8;
 parameter signed b_bin_pt= 2;
 parameter b_arith= `xlUnsigned;
 parameter s_width= 17;
 parameter s_bin_pt= 4;
 parameter s_arith= `xlUnsigned;
 parameter rst_width= 1;
 parameter rst_bin_pt= 0;
 parameter rst_arith= `xlUnsigned;
 parameter en_width= 1;
 parameter en_bin_pt= 0;
 parameter en_arith= `xlUnsigned;
 parameter full_s_width= 17;
 parameter full_s_arith= `xlUnsigned;
 parameter mode= `xlAddMode;
 parameter extra_registers= 0;
 parameter latency= 0;
 parameter quantization= `xlTruncate;
 parameter overflow= `xlWrap;
 parameter c_a_width= 16;
 parameter c_b_width= 8;
 parameter c_a_type= 1;
 parameter c_b_type= 1;
 parameter c_has_sclr= 0;
 parameter c_has_ce= 0;
 parameter c_latency= 0;
 parameter c_output_width= 17;
 parameter c_enable_rlocs= 1;
 parameter c_has_c_in= 0;
 parameter c_has_c_out= 0;
 
 input [a_width-1:0] a;
 input [b_width-1:0] b;
 input c_in, ce, clr, clk, rst, en;
 output c_out;
 output [s_width-1:0] s;
 
 parameter full_a_width = full_s_width;
 parameter full_b_width = full_s_width;
 parameter full_s_bin_pt = (a_bin_pt > b_bin_pt) ? a_bin_pt : b_bin_pt;
 
 wire [full_a_width-1:0] full_a;
 wire [full_b_width-1:0] full_b;
 wire [full_s_width-1:0] full_s;
 wire [full_s_width-1:0] core_s;
 wire [s_width-1:0] conv_s;
 wire  temp_cout;
 wire  real_a,real_b,real_s;
 wire  internal_clr;
 wire  internal_ce;
 wire  extra_reg_ce;
 wire  override;
 wire  logic1;
 wire  temp_cin;
 
 assign internal_clr = (clr | rst) & ce;
 assign internal_ce = ce & en;
 assign logic1 = 1'b1;
 assign temp_cin = (c_has_c_in) ? c_in : 1'b0;
 
 align_input # (a_width, b_bin_pt - a_bin_pt, a_arith, full_a_width)
 align_inp_a(.inp(a),.res(full_a));
 align_input # (b_width, a_bin_pt - b_bin_pt, b_arith, full_b_width)
 align_inp_b(.inp(b),.res(full_b));
 convert_type # (full_s_width, full_s_bin_pt, full_s_arith, s_width,
                 s_bin_pt, s_arith, quantization, overflow)
 conv_typ_s(.inp(core_s),.res(conv_s));
 
 generate


if (core_name0 == "hilsim_ipcore_c_addsub_v12_0_i0") 
     begin:comp0
hilsim_ipcore_c_addsub_v12_0_i0 core_instance0 ( 
         .A(full_a),
         .CLK(clk),
         .CE(internal_ce),
         .S(core_s),
         .B(full_b) 
       ); 
     end 

if (core_name0 == "hilsim_ipcore_c_addsub_v12_0_i1") 
     begin:comp1
hilsim_ipcore_c_addsub_v12_0_i1 core_instance1 ( 
         .A(full_a),
         .CLK(clk),
         .CE(internal_ce),
         .S(core_s),
         .B(full_b) 
       ); 
     end 

if (core_name0 == "hilsim_ipcore_c_addsub_v12_0_i2") 
     begin:comp2
hilsim_ipcore_c_addsub_v12_0_i2 core_instance2 ( 
         .A(full_a),
         .CLK(clk),
         .CE(internal_ce),
         .S(core_s),
         .B(full_b) 
       ); 
     end 

if (core_name0 == "hilsim_ipcore_c_addsub_v12_0_i3") 
     begin:comp3
hilsim_ipcore_c_addsub_v12_0_i3 core_instance3 ( 
         .A(full_a),
         .CLK(clk),
         .CE(internal_ce),
         .S(core_s),
         .B(full_b) 
       ); 
     end 

if (core_name0 == "hilsim_ipcore_c_addsub_v12_0_i4") 
     begin:comp4
hilsim_ipcore_c_addsub_v12_0_i4 core_instance4 ( 
         .A(full_a),
         .CLK(clk),
         .CE(internal_ce),
         .S(core_s),
         .B(full_b) 
       ); 
     end 

if (core_name0 == "hilsim_ipcore_c_addsub_v12_0_i5") 
     begin:comp5
hilsim_ipcore_c_addsub_v12_0_i5 core_instance5 ( 
         .A(full_a),
         .CLK(clk),
         .CE(internal_ce),
         .S(core_s),
         .B(full_b) 
       ); 
     end 

if (core_name0 == "hilsim_ipcore_c_addsub_v12_0_i6") 
     begin:comp6
hilsim_ipcore_c_addsub_v12_0_i6 core_instance6 ( 
         .A(full_a),
         .CLK(clk),
         .CE(internal_ce),
         .S(core_s),
         .B(full_b) 
       ); 
     end 

endgenerate 
 
 
 generate
   if (extra_registers > 0)
   begin:latency_test
     
     if (c_latency > 1)
     begin:override_test
       synth_reg # (1, c_latency)
         override_pipe (
           .i(logic1),
           .ce(internal_ce),
           .clr(internal_clr),
           .clk(clk),
           .o(override));
       assign extra_reg_ce = ce & en & override;
     end // override_test
 
     if ((c_latency == 0) || (c_latency == 1))
     begin:no_override
       assign extra_reg_ce = ce & en;
     end // no_override
 
     synth_reg # (s_width, extra_registers)
       extra_reg (
         .i(conv_s),
         .ce(extra_reg_ce),
         .clr(internal_clr),
         .clk(clk),
         .o(s));
 
     if (c_has_c_out == 1)
     begin:cout_test
       synth_reg # (1, extra_registers)
         c_out_extra_reg (
           .i(temp_cout),
           .ce(extra_reg_ce),
           .clr(internal_clr),
           .clk(clk),
           .o(c_out));
     end // cout_test
     
   end // latency_test
 endgenerate
 
 generate
   if ((latency == 0) || (extra_registers == 0))
   begin:latency_s
     assign s = conv_s;
   end // latency_s
 endgenerate
 
 generate
   if (((latency == 0) || (extra_registers == 0)) &&
       (c_has_c_out == 1))
   begin:latency0
     assign c_out = temp_cout;
   end // latency0
 endgenerate
 
 generate
   if (c_has_c_out == 0)
   begin:tie_dangling_cout
     assign c_out = 0;
   end // tie_dangling_cout
 endgenerate
 
 endmodule

module hilsim_ipcore_xlmult (a, b, ce, clr, clk, core_ce, core_clr,core_clk, rst, en,p);
     parameter core_name0 = "";
     parameter a_width = 4;
     parameter a_bin_pt = 2;
     parameter a_arith = `xlSigned;
     parameter b_width = 4;
     parameter b_bin_pt = 1;
     parameter b_arith = `xlSigned;
     parameter p_width = 8;
     parameter p_bin_pt = 2;
     parameter p_arith = `xlSigned;
     parameter rst_width = 1;
     parameter rst_bin_pt = 0;
     parameter rst_arith = `xlUnsigned;
     parameter en_width = 1;
     parameter en_bin_pt = 0;
     parameter en_arith = `xlUnsigned;
     parameter quantization = `xlTruncate;
     parameter overflow = `xlWrap;
     parameter extra_registers = 0;
     parameter c_a_width = 7;
     parameter c_b_width = 7;
     parameter c_type = 0;
     parameter c_a_type = 0;
     parameter c_b_type = 0;
     parameter c_baat = 4;
     parameter oversample = 1;
     parameter multsign = `xlSigned;
     parameter c_output_width = 16;
     input [a_width - 1 : 0] a;
     input [b_width - 1 : 0] b;
     input ce, clr, clk;
     input core_ce, core_clr, core_clk;
     input en, rst;
     output [p_width - 1 : 0] p;
     wire [c_a_width - 1 : 0]    tmp_a, conv_a;
     wire [c_b_width - 1 : 0]    tmp_b, conv_b;
    wire [c_output_width - 1 : 0] tmp_p;
    wire [p_width - 1 : 0] conv_p;
    wire internal_ce, internal_clr, internal_core_ce;
    wire rfd, rdy, nd;
    
 
    assign internal_ce = ce & en;
    assign internal_core_ce = core_ce & en;
    assign internal_clr = (clr | rst) & en;
    assign nd = ce & en;
 
    zero_ext # (a_width, c_a_width) zero_ext_a (.inp(a), .res(tmp_a));
    zero_ext # (b_width, c_b_width) zero_ext_b (.inp(b), .res(tmp_b));
 
    //Output Process
    convert_type # (c_output_width, a_bin_pt+b_bin_pt, multsign,
 		   p_width, p_bin_pt, p_arith, quantization, overflow)
      conv_udp (.inp(tmp_p), .res(conv_p));
    
 generate
 


if (core_name0 == "hilsim_ipcore_mult_gen_v12_0_i0") 
     begin:comp0
hilsim_ipcore_mult_gen_v12_0_i0 core_instance0 ( 
        .A(tmp_a),
        .B(tmp_b),
        .CLK(clk),
        .CE(internal_ce),
        .SCLR(internal_clr),
        .P(tmp_p) 
       ); 
     end 

if (core_name0 == "hilsim_ipcore_mult_gen_v12_0_i1") 
     begin:comp1
hilsim_ipcore_mult_gen_v12_0_i1 core_instance1 ( 
        .A(tmp_a),
        .B(tmp_b),
        .CLK(clk),
        .CE(internal_ce),
        .SCLR(internal_clr),
        .P(tmp_p) 
       ); 
     end 

if (core_name0 == "hilsim_ipcore_mult_gen_v12_0_i2") 
     begin:comp2
hilsim_ipcore_mult_gen_v12_0_i2 core_instance2 ( 
        .A(tmp_a),
        .B(tmp_b),
        .CLK(clk),
        .CE(internal_ce),
        .SCLR(internal_clr),
        .P(tmp_p) 
       ); 
     end 

if (core_name0 == "hilsim_ipcore_mult_gen_v12_0_i3") 
     begin:comp3
hilsim_ipcore_mult_gen_v12_0_i3 core_instance3 ( 
        .A(tmp_a),
        .B(tmp_b),
        .CLK(clk),
        .CE(internal_ce),
        .SCLR(internal_clr),
        .P(tmp_p) 
       ); 
     end 

if (core_name0 == "hilsim_ipcore_mult_gen_v12_0_i4") 
     begin:comp4
hilsim_ipcore_mult_gen_v12_0_i4 core_instance4 ( 
        .A(tmp_a),
        .B(tmp_b),
        .CLK(clk),
        .CE(internal_ce),
        .SCLR(internal_clr),
        .P(tmp_p) 
       ); 
     end 

if (extra_registers > 0)
 begin:latency_gt_0
 synth_reg # (p_width, extra_registers) 
 reg1 (
 .i(conv_p), 
 .ce(internal_ce),
 .clr(internal_clr),
 .clk(clk),
 .o(p));
 end
 
 if (extra_registers == 0)
 begin:latency_eq_0
 assign p = conv_p;
 end
 endgenerate
 
 endmodule

