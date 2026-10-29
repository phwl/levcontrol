//-----------------------------------------------------------------
// System Generator version 2020.2 Verilog source file.
//
// Copyright(C) 2020 by Xilinx, Inc.  All rights reserved.  This
// text/file contains proprietary, confidential information of Xilinx,
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
// text at all times.  (c) Copyright 1995-2020 Xilinx, Inc.  All rights
// reserved.
//-----------------------------------------------------------------

`include "conv_pkg.v"
`timescale 1 ns / 10 ps
module throttle_w_cdc_xlAsynRegister (d, rst, en, d_ce, d_clk, q_ce, q_clk, q);
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
module sysgen_constant_ffbc4fa558 (
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 1'b1;
endmodule
`timescale 1 ns / 10 ps
module throttle_w_cdc_xlregister (d, rst, en, ce, clk, q);
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
module sysgen_constant_8903ca92fb (
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 1'b0;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_8b2837d790 (
  output [(4 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 4'b0000;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_6e1ec4d806 (
  output [(4 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 4'b1111;
endmodule
`timescale 1 ns / 10 ps
module throttle_w_cdc_xldelay #(parameter width = -1, latency = -1, reg_retiming = 0, reset = 0)
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
module sysgen_inverter_5d8068edb2 (
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
module sysgen_inverter_44afe17189 (
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
module sysgen_mux_0d3326ac85 (
  input [(1 - 1):0] sel,
  input [(32 - 1):0] d0,
  input [(32 - 1):0] d1,
  output [(32 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire [(1 - 1):0] sel_1_20;
  wire [(32 - 1):0] d0_1_24;
  wire [(32 - 1):0] d1_1_27;
  localparam [(32 - 1):0] const_value = 32'b00000000000000000000000000000000;
  reg [(32 - 1):0] pipe_16_22[0:(1 - 1)];
  initial
    begin
      pipe_16_22[0] = 32'b00000000000000000000000000000000;
    end
  wire [(32 - 1):0] pipe_16_22_front_din;
  wire [(32 - 1):0] pipe_16_22_back;
  wire pipe_16_22_push_front_pop_back_en;
  reg [(32 - 1):0] unregy_join_6_1;
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
  always @(d0_1_24 or d1_1_27 or sel_1_20)
    begin:proc_switch_6_1
      case (sel_1_20)
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
module sysgen_logical_5ee129f5d8 (
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
module sysgen_relational_c1e77ac8f5 (
  input [(8 - 1):0] a,
  input [(32 - 1):0] b,
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire [(8 - 1):0] a_1_31;
  wire [(32 - 1):0] b_1_34;
  reg op_mem_37_22[0:(1 - 1)];
  initial
    begin
      op_mem_37_22[0] = 1'b0;
    end
  wire op_mem_37_22_front_din;
  wire op_mem_37_22_back;
  wire op_mem_37_22_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value = 1'b1;
  wire [(32 - 1):0] cast_12_12;
  wire result_12_3_rel;
  assign a_1_31 = a;
  assign b_1_34 = b;
  assign op_mem_37_22_back = op_mem_37_22[0];
  always @(posedge clk)
    begin:proc_op_mem_37_22
      integer i;
      if (((ce == 1'b1) && (op_mem_37_22_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_37_22[0] <= op_mem_37_22_front_din;
        end
    end
  assign cast_12_12 = {24'b000000000000000000000000, a_1_31[7:0]};
  assign result_12_3_rel = cast_12_12 == b_1_34;
  assign op_mem_37_22_front_din = result_12_3_rel;
  assign op_mem_37_22_push_front_pop_back_en = 1'b1;
  assign op = op_mem_37_22_back;
endmodule
`timescale 1 ns / 10 ps
module sysgen_logical_c50314b5b0 (
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
module sysgen_logical_29b2acbae4 (
  input [(1 - 1):0] d0,
  input [(1 - 1):0] d1,
  input [(1 - 1):0] d2,
  output [(1 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire d0_1_24;
  wire d1_1_27;
  wire d2_1_30;
  wire fully_2_1_bit;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign d2_1_30 = d2;
  assign fully_2_1_bit = d0_1_24 & d1_1_27 & d2_1_30;
  assign y = fully_2_1_bit;
endmodule
`timescale 1 ns / 10 ps
module sysgen_relational_0d2b7e7af9 (
  input [(32 - 1):0] a,
  input [(32 - 1):0] b,
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire [(32 - 1):0] a_1_31;
  wire [(32 - 1):0] b_1_34;
  localparam [(1 - 1):0] const_value = 1'b1;
  wire result_12_3_rel;
  assign a_1_31 = a;
  assign b_1_34 = b;
  assign result_12_3_rel = a_1_31 == b_1_34;
  assign op = result_12_3_rel;
endmodule
`timescale 1 ns / 10 ps
module sysgen_mux_2d8943f45f (
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
module sysgen_mux_2cd228fe16 (
  input [(1 - 1):0] sel,
  input [(4 - 1):0] d0,
  input [(4 - 1):0] d1,
  output [(4 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire sel_1_20;
  wire [(4 - 1):0] d0_1_24;
  wire [(4 - 1):0] d1_1_27;
  localparam [(4 - 1):0] const_value = 4'b0000;
  reg [(4 - 1):0] pipe_16_22[0:(1 - 1)];
  initial
    begin
      pipe_16_22[0] = 4'b0000;
    end
  wire [(4 - 1):0] pipe_16_22_front_din;
  wire [(4 - 1):0] pipe_16_22_back;
  wire pipe_16_22_push_front_pop_back_en;
  wire [(1 - 1):0] sel_internal_2_1_convert;
  reg [(4 - 1):0] unregy_join_6_1;
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
module sysgen_counter_d438df0af4 (
  input [(1 - 1):0] en,
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire en_1_45;
  reg [(1 - 1):0] count_reg_20_23 = 1'b0;
  wire count_reg_20_23_rst;
  wire count_reg_20_23_en;
  localparam [(1 - 1):0] const_value = 1'b1;
  localparam [(2 - 1):0] const_value_x_000000 = 2'b10;
  localparam [(1 - 1):0] const_value_x_000001 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000002 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000003 = 1'b1;
  wire rel_34_8;
  reg rst_limit_join_34_5;
  reg rst_limit_join_33_3;
  localparam [(1 - 1):0] const_value_x_000004 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000005 = 1'b1;
  wire bool_44_4;
  reg rst_limit_join_44_1;
  reg [(2 - 1):0] count_reg_join_44_1;
  reg count_reg_join_44_1_en;
  reg count_reg_join_44_1_rst;
  assign en_1_45 = en;
  always @(posedge clk)
    begin:proc_count_reg_20_23
      if (((ce == 1'b1) && (count_reg_20_23_rst == 1'b1)))
        begin
          count_reg_20_23 <= 1'b0;
        end
      else if (((ce == 1'b1) && (count_reg_20_23_en == 1'b1)))
        begin
          count_reg_20_23 <= count_reg_20_23 + const_value_x_000005;
        end
    end
  assign rel_34_8 = count_reg_20_23 == const_value_x_000003;
  always @(rel_34_8)
    begin:proc_if_34_5
      if (rel_34_8)
        begin
          rst_limit_join_34_5 = 1'b1;
        end
      else 
        begin
          rst_limit_join_34_5 = 1'b0;
        end
    end
  always @(en_1_45 or rst_limit_join_34_5)
    begin:proc_if_33_3
      if (en_1_45)
        begin
          rst_limit_join_33_3 = rst_limit_join_34_5;
        end
      else 
        begin
          rst_limit_join_33_3 = 1'b0;
        end
    end
  assign bool_44_4 = 1'b0 || rst_limit_join_33_3;
  always @(bool_44_4 or count_reg_20_23 or en_1_45 or rst_limit_join_33_3)
    begin:proc_if_44_1
      if (bool_44_4)
        begin
          count_reg_join_44_1_rst = 1'b1;
        end
      else if (en_1_45)
        begin
          count_reg_join_44_1_rst = 1'b0;
        end
      else 
        begin
          count_reg_join_44_1_rst = 1'b0;
        end
      if (en_1_45)
        begin
          count_reg_join_44_1_en = 1'b1;
        end
      else 
        begin
          count_reg_join_44_1_en = 1'b0;
        end
      if (bool_44_4)
        begin
          rst_limit_join_44_1 = 1'b0;
        end
      else if (en_1_45)
        begin
          rst_limit_join_44_1 = rst_limit_join_33_3;
        end
      else 
        begin
          rst_limit_join_44_1 = rst_limit_join_33_3;
        end
    end
  assign count_reg_20_23_rst = count_reg_join_44_1_rst;
  assign count_reg_20_23_en = count_reg_join_44_1_en;
  assign op = count_reg_20_23;
endmodule
`timescale 1 ns / 10 ps
module sysgen_logical_e96e9b77ea (
  input [(1 - 1):0] d0,
  input [(1 - 1):0] d1,
  output [(1 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire d0_1_24;
  wire d1_1_27;
  reg latency_pipe_5_26[0:(1 - 1)];
  initial
    begin
      latency_pipe_5_26[0] = 1'b0;
    end
  wire latency_pipe_5_26_front_din;
  wire latency_pipe_5_26_back;
  wire latency_pipe_5_26_push_front_pop_back_en;
  wire fully_2_1_bit;
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
  assign fully_2_1_bit = d0_1_24 | d1_1_27;
  assign latency_pipe_5_26_front_din = fully_2_1_bit;
  assign latency_pipe_5_26_push_front_pop_back_en = 1'b1;
  assign y = latency_pipe_5_26_back;
endmodule
`timescale 1 ns / 10 ps
module fpga_clock_domain_cfg_in_axi_lite_interface#(parameter C_S_AXI_DATA_WIDTH = 32, C_S_AXI_ADDR_WIDTH = 4, C_S_NUM_OFFSETS = 4)(
  output wire[0:0] usr_rst_in,
  output wire[0:0] trigger_in,
  output wire[31:0] frames_no_in,
  output wire[31:0] decim_in,
  output wire fpga_clock_domain_clk,
  input wire fpga_clock_domain_cfg_in_aclk,
  input wire fpga_clock_domain_cfg_in_aresetn,
  input  wire [C_S_AXI_ADDR_WIDTH - 1:0] fpga_clock_domain_cfg_in_s_axi_awaddr,
  input  wire fpga_clock_domain_cfg_in_s_axi_awvalid,
  output wire fpga_clock_domain_cfg_in_s_axi_awready,
  input  wire [C_S_AXI_DATA_WIDTH-1:0] fpga_clock_domain_cfg_in_s_axi_wdata,
  input  wire [C_S_AXI_DATA_WIDTH/8-1:0] fpga_clock_domain_cfg_in_s_axi_wstrb,
  input  wire fpga_clock_domain_cfg_in_s_axi_wvalid,
  output wire fpga_clock_domain_cfg_in_s_axi_wready,
  output wire [1:0] fpga_clock_domain_cfg_in_s_axi_bresp,
  output wire fpga_clock_domain_cfg_in_s_axi_bvalid,
  input  wire fpga_clock_domain_cfg_in_s_axi_bready,
  input  wire [C_S_AXI_ADDR_WIDTH - 1:0] fpga_clock_domain_cfg_in_s_axi_araddr,
  input  wire fpga_clock_domain_cfg_in_s_axi_arvalid,
  output wire fpga_clock_domain_cfg_in_s_axi_arready,
  output wire [C_S_AXI_DATA_WIDTH-1:0] fpga_clock_domain_cfg_in_s_axi_rdata,
  output wire [1:0] fpga_clock_domain_cfg_in_s_axi_rresp,
  output wire fpga_clock_domain_cfg_in_s_axi_rvalid,
  input  wire fpga_clock_domain_cfg_in_s_axi_rready
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
assign fpga_clock_domain_cfg_in_s_axi_awready = axi_awready;
assign fpga_clock_domain_cfg_in_s_axi_wready  = axi_wready;
assign fpga_clock_domain_cfg_in_s_axi_bresp  = axi_bresp;
assign fpga_clock_domain_cfg_in_s_axi_bvalid = axi_bvalid;
assign fpga_clock_domain_cfg_in_s_axi_arready = axi_arready;
assign fpga_clock_domain_cfg_in_s_axi_rdata  = axi_rdata;
assign fpga_clock_domain_cfg_in_s_axi_rvalid = axi_rvalid;
assign fpga_clock_domain_cfg_in_s_axi_rresp  = axi_rresp;
// map input 0
assign slv_wire_array[0] = slv_reg_array[0];
assign usr_rst_in = slv_wire_array[0][0];
// map input 1
assign slv_wire_array[1] = slv_reg_array[1];
assign trigger_in = slv_wire_array[1][0];
// map input 2
assign slv_wire_array[2] = slv_reg_array[2];
assign frames_no_in[31:0] = slv_wire_array[2][31:0];
// map input 3
assign slv_wire_array[3] = slv_reg_array[3];
assign decim_in[31:0] = slv_wire_array[3][31:0];
  initial
  begin
    slv_reg_array[0] = 32'd0;
    slv_reg_array[1] = 32'd0;
    slv_reg_array[2] = 32'd0;
    slv_reg_array[3] = 32'd0;
  end
  always @(axi_awaddr)
  begin
    case(axi_awaddr)
      4'd4 : dec_w = 0;
      4'd0 : dec_w = 1;
      4'd8 : dec_w = 2;
      4'd12 : dec_w = 3;
      default : dec_w = 0;
    endcase
  end
  always @(axi_araddr)
  begin
    case(axi_araddr)
      4'd4 : dec_r = 0;
      4'd0 : dec_r = 1;
      4'd8 : dec_r = 2;
      4'd12 : dec_r = 3;
      default : dec_r = 0;
    endcase
  end
  always @( posedge fpga_clock_domain_cfg_in_aclk )
  begin
    if ( fpga_clock_domain_cfg_in_aresetn == 1'b0 )
      begin
        axi_awready <= 1'b0;
        axi_awaddr <= 0;
      end
    else
      begin
        if (~axi_awready && fpga_clock_domain_cfg_in_s_axi_awvalid && fpga_clock_domain_cfg_in_s_axi_wvalid)
          begin
            axi_awready <= 1'b1;
            axi_awaddr <= fpga_clock_domain_cfg_in_s_axi_awaddr;
          end
        else
          begin
            axi_awready <= 1'b0;
          end
      end
  end
  always @( posedge fpga_clock_domain_cfg_in_aclk )
  begin
    if ( fpga_clock_domain_cfg_in_aresetn == 1'b0 )
      begin
        axi_wready <= 1'b0;
      end
    else
      begin
        if (~axi_wready && fpga_clock_domain_cfg_in_s_axi_wvalid && fpga_clock_domain_cfg_in_s_axi_awvalid)
          begin
            axi_wready <= 1'b1;
          end
        else
          begin
            axi_wready <= 1'b0;
          end
      end
  end
  assign slv_reg_wren = axi_wready && fpga_clock_domain_cfg_in_s_axi_wvalid && axi_awready && fpga_clock_domain_cfg_in_s_axi_awvalid;
  always @( posedge fpga_clock_domain_cfg_in_aclk )
  begin
    if ( fpga_clock_domain_cfg_in_aresetn == 1'b0 )
      begin
        slv_reg_array[0] = 32'd0;
        slv_reg_array[1] = 32'd0;
        slv_reg_array[2] = 32'd0;
        slv_reg_array[3] = 32'd0;
      end
    else begin
      if (slv_reg_wren)
        begin
          for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
            if ( fpga_clock_domain_cfg_in_s_axi_wstrb[byte_index] == 1 ) begin
              slv_reg_array[dec_w][(byte_index*8) +: 8] <= fpga_clock_domain_cfg_in_s_axi_wdata[(byte_index*8) +: 8];
            end
        end
    end
  end
  always @( posedge fpga_clock_domain_cfg_in_aclk )
  begin
    if ( fpga_clock_domain_cfg_in_aresetn == 1'b0 )
      begin
        axi_bvalid  <= 0;
        axi_bresp   <= 2'b0;
      end
    else
      begin
        if (axi_awready && fpga_clock_domain_cfg_in_s_axi_awvalid && ~axi_bvalid && axi_wready && fpga_clock_domain_cfg_in_s_axi_wvalid)
          begin
            axi_bvalid <= 1'b1;
            axi_bresp  <= 2'b0; 
          end
        else
          begin
            if (fpga_clock_domain_cfg_in_s_axi_bready && axi_bvalid)
              begin
                axi_bvalid <= 1'b0;
              end
          end
      end
  end
  always @( posedge fpga_clock_domain_cfg_in_aclk )
  begin
    if ( fpga_clock_domain_cfg_in_aresetn == 1'b0 )
      begin
        axi_arready <= 1'b0;
        axi_araddr  <= {ADDR_MSB{1'b0}};
      end
    else
      begin
        if (~axi_arready && fpga_clock_domain_cfg_in_s_axi_arvalid)
          begin
            axi_arready <= 1'b1;
            axi_araddr  <= fpga_clock_domain_cfg_in_s_axi_araddr;
          end
        else
          begin
            axi_arready <= 1'b0;
          end
      end
  end

  // AXI read response (inferred flops)
  always @( posedge fpga_clock_domain_cfg_in_aclk )
  begin
    if ( fpga_clock_domain_cfg_in_aresetn == 1'b0 )
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
        else if (axi_rvalid && fpga_clock_domain_cfg_in_s_axi_rready)
          begin
            axi_rvalid <= 1'b0;
            axi_rresp  <= 2'b0; 
          end
      end
  end
  assign slv_reg_rden = axi_arready & fpga_clock_domain_cfg_in_s_axi_arvalid & ~axi_rvalid;
  always @(fpga_clock_domain_cfg_in_aresetn, slv_reg_rden, axi_araddr, slv_wire_array, dec_r)
  begin
    if ( fpga_clock_domain_cfg_in_aresetn == 1'b0 )
      begin
        reg_data_out <= {C_S_AXI_DATA_WIDTH{1'b0}};
      end
    else
      begin
     reg_data_out <= slv_wire_array[dec_r];
      end
  end
  // flop for AXI read data
  always @( posedge fpga_clock_domain_cfg_in_aclk )
  begin
    if ( fpga_clock_domain_cfg_in_aresetn == 1'b0 )
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

  assign fpga_clock_domain_clk = fpga_clock_domain_cfg_in_aclk;

endmodule

module throttle_w_cdc_xlcounter_free  (ce, clr, clk, op, up, load, din, en, rst);
 
 parameter core_name0= "";
 parameter op_width= 5;
 parameter op_arith= `xlSigned;
 
 input ce, clr, clk;
 input up, load;
 input [op_width-1:0] din;
 input en, rst;
 output [op_width-1:0] op;
 
 parameter [(8*op_width)-1:0] oneStr = { op_width{"1"}}; 
 
 wire  core_sinit;
 wire  core_ce;
 wire [op_width-1:0] op_net;
 
    assign core_ce = ce & en;
    assign core_sinit = (clr | rst) & ce;
    assign op = op_net;
 
 generate



if (core_name0 == "throttle_w_cdc_c_counter_binary_v12_0_i0") 
     begin:comp0
throttle_w_cdc_c_counter_binary_v12_0_i0 core_instance0 ( 
        .CLK(clk),
        .CE(core_ce),
        .SINIT(core_sinit),
        .Q(op_net) 
       ); 
     end 

if (core_name0 == "throttle_w_cdc_c_counter_binary_v12_0_i1") 
     begin:comp1
throttle_w_cdc_c_counter_binary_v12_0_i1 core_instance1 ( 
        .CLK(clk),
        .CE(core_ce),
        .SINIT(core_sinit),
        .Q(op_net) 
       ); 
     end 

endgenerate 
 endmodule
