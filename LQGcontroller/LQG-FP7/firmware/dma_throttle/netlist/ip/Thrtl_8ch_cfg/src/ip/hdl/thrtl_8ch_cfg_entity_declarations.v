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
module sysgen_bitbasher_9c26f3fbda (
  input [(32 - 1):0] a,
  input [(32 - 1):0] b,
  input [(32 - 1):0] c,
  input [(32 - 1):0] d,
  input [(32 - 1):0] e,
  input [(32 - 1):0] f,
  input [(32 - 1):0] g,
  input [(32 - 1):0] h,
  output [(256 - 1):0] out_x0,
  input clk,
  input ce,
  input clr);
  wire [(32 - 1):0] a_1_31;
  wire [(32 - 1):0] b_1_34;
  wire [(32 - 1):0] c_1_37;
  wire [(32 - 1):0] d_1_40;
  wire [(32 - 1):0] e_1_43;
  wire [(32 - 1):0] f_1_46;
  wire [(32 - 1):0] g_1_49;
  wire [(32 - 1):0] h_1_52;
  wire [(256 - 1):0] fullout_x0_5_1_concat;
  assign a_1_31 = a;
  assign b_1_34 = b;
  assign c_1_37 = c;
  assign d_1_40 = d;
  assign e_1_43 = e;
  assign f_1_46 = f;
  assign g_1_49 = g;
  assign h_1_52 = h;
  assign fullout_x0_5_1_concat = {h_1_52, g_1_49, f_1_46, e_1_43, d_1_40, c_1_37, b_1_34, a_1_31};
  assign out_x0 = fullout_x0_5_1_concat;
endmodule
`timescale 1 ns / 10 ps
module sysgen_delay_815930150c (
  input [(32 - 1):0] d,
  output [(32 - 1):0] q,
  input clk,
  input ce,
  input clr);
  wire [(32 - 1):0] d_1_22;
  localparam [(32 - 1):0] const_value = 32'b00000000000000000000000000000000;
  reg [(32 - 1):0] op_mem_20_24[0:(1 - 1)];
  initial
    begin
      op_mem_20_24[0] = 32'b00000000000000000000000000000000;
    end
  wire [(32 - 1):0] op_mem_20_24_front_din;
  wire [(32 - 1):0] op_mem_20_24_back;
  wire op_mem_20_24_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1'b1;
  assign d_1_22 = d;
  assign op_mem_20_24_back = op_mem_20_24[0];
  always @(posedge clk)
    begin:proc_op_mem_20_24
      integer i;
      if (((ce == 1'b1) && (op_mem_20_24_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_20_24[0] <= op_mem_20_24_front_din;
        end
    end
  assign op_mem_20_24_front_din = d_1_22;
  assign op_mem_20_24_push_front_pop_back_en = 1'b1;
  assign q = op_mem_20_24_back;
endmodule
`timescale 1 ns / 10 ps
module sysgen_delay_f009745253 (
  input [(1 - 1):0] d,
  output [(1 - 1):0] q,
  input clk,
  input ce,
  input clr);
  wire [(1 - 1):0] d_1_22;
  localparam [(1 - 1):0] const_value = 1'b0;
  reg [(1 - 1):0] op_mem_20_24[0:(1 - 1)];
  initial
    begin
      op_mem_20_24[0] = 1'b0;
    end
  wire [(1 - 1):0] op_mem_20_24_front_din;
  wire [(1 - 1):0] op_mem_20_24_back;
  wire op_mem_20_24_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1'b1;
  assign d_1_22 = d;
  assign op_mem_20_24_back = op_mem_20_24[0];
  always @(posedge clk)
    begin:proc_op_mem_20_24
      integer i;
      if (((ce == 1'b1) && (op_mem_20_24_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_20_24[0] <= op_mem_20_24_front_din;
        end
    end
  assign op_mem_20_24_front_din = d_1_22;
  assign op_mem_20_24_push_front_pop_back_en = 1'b1;
  assign q = op_mem_20_24_back;
endmodule
`timescale 1 ns / 10 ps
module sysgen_delay_077ce9d174 (
  input [(4 - 1):0] d,
  output [(4 - 1):0] q,
  input clk,
  input ce,
  input clr);
  wire [(4 - 1):0] d_1_22;
  localparam [(4 - 1):0] const_value = 4'b0000;
  reg [(4 - 1):0] op_mem_20_24[0:(1 - 1)];
  initial
    begin
      op_mem_20_24[0] = 4'b0000;
    end
  wire [(4 - 1):0] op_mem_20_24_front_din;
  wire [(4 - 1):0] op_mem_20_24_back;
  wire op_mem_20_24_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1'b1;
  assign d_1_22 = d;
  assign op_mem_20_24_back = op_mem_20_24[0];
  always @(posedge clk)
    begin:proc_op_mem_20_24
      integer i;
      if (((ce == 1'b1) && (op_mem_20_24_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_20_24[0] <= op_mem_20_24_front_din;
        end
    end
  assign op_mem_20_24_front_din = d_1_22;
  assign op_mem_20_24_push_front_pop_back_en = 1'b1;
  assign q = op_mem_20_24_back;
endmodule
`timescale 1 ns / 10 ps
module sysgen_inverter_2f95a066e3 (
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
module sysgen_mcode_block_0a0c79cbda (
  input [(256 - 1):0] data_vec,
  input [(8 - 1):0] data_sel,
  input [(1 - 1):0] tready_in,
  input [(16 - 1):0] decim_val,
  input [(32 - 1):0] frames_val,
  input [(1 - 1):0] trigger_in,
  input [(1 - 1):0] usr_rst,
  output [(32 - 1):0] tdata,
  output [(1 - 1):0] tvalid,
  output [(1 - 1):0] tlast,
  output [(4 - 1):0] tkeep,
  output [(1 - 1):0] tready,
  output [(1 - 1):0] trigger_out,
  output [(17 - 1):0] dec_cnt_out,
  output [(33 - 1):0] frame_cnt_out,
  output [(5 - 1):0] mux_cnt_out,
  output [(8 - 1):0] data_sel_out,
  output [(1 - 1):0] last_frame_out,
  input clk,
  input ce,
  input clr);
  wire [(256 - 1):0] data_vec_1_148;
  wire [(8 - 1):0] data_sel_1_158;
  wire tready_in_1_168;
  wire [(16 - 1):0] decim_val_1_179;
  wire [(32 - 1):0] frames_val_1_190;
  wire trigger_in_1_202;
  wire usr_rst_1_214;
  wire triggered_10_23_next;
  reg triggered_10_23 = 1'b0;
  wire triggered_10_23_rst;
  wire [(16 - 1):0] decim_count_11_25_next;
  reg [(16 - 1):0] decim_count_11_25 = 16'b0000000000000000;
  wire [(32 - 1):0] frame_count_12_25_next;
  reg [(32 - 1):0] frame_count_12_25 = 32'b00000000000000000000000000000000;
  wire [(4 - 1):0] mux_count_13_23_next;
  reg [(4 - 1):0] mux_count_13_23 = 4'b0000;
  wire muxing_run_14_24_next;
  reg muxing_run_14_24 = 1'b0;
  wire muxing_run_14_24_rst;
  wire [(8 - 1):0] data_sel_store_16_28_next;
  reg [(8 - 1):0] data_sel_store_16_28 = 8'b00000000;
  wire last_frame_flag_17_29_next;
  reg last_frame_flag_17_29 = 1'b0;
  wire [(32 - 1):0] data_vec_store_0_15_28_next;
  reg [(32 - 1):0] data_vec_store_0_15_28 = 32'b00000000000000000000000000000000;
  wire data_vec_store_0_15_28_rst;
  wire [(32 - 1):0] data_vec_store_1_15_28_next;
  reg [(32 - 1):0] data_vec_store_1_15_28 = 32'b00000000000000000000000000000000;
  wire data_vec_store_1_15_28_rst;
  wire [(32 - 1):0] data_vec_store_2_15_28_next;
  reg [(32 - 1):0] data_vec_store_2_15_28 = 32'b00000000000000000000000000000000;
  wire data_vec_store_2_15_28_rst;
  wire [(32 - 1):0] data_vec_store_3_15_28_next;
  reg [(32 - 1):0] data_vec_store_3_15_28 = 32'b00000000000000000000000000000000;
  wire data_vec_store_3_15_28_rst;
  wire [(32 - 1):0] data_vec_store_4_15_28_next;
  reg [(32 - 1):0] data_vec_store_4_15_28 = 32'b00000000000000000000000000000000;
  wire data_vec_store_4_15_28_rst;
  wire [(32 - 1):0] data_vec_store_5_15_28_next;
  reg [(32 - 1):0] data_vec_store_5_15_28 = 32'b00000000000000000000000000000000;
  wire data_vec_store_5_15_28_rst;
  wire [(32 - 1):0] data_vec_store_6_15_28_next;
  reg [(32 - 1):0] data_vec_store_6_15_28 = 32'b00000000000000000000000000000000;
  wire data_vec_store_6_15_28_rst;
  wire [(32 - 1):0] data_vec_store_7_15_28_next;
  reg [(32 - 1):0] data_vec_store_7_15_28 = 32'b00000000000000000000000000000000;
  wire data_vec_store_7_15_28_rst;
  wire [(1 - 1):0] tlast_fifo_0_21_24_next;
  reg [(1 - 1):0] tlast_fifo_0_21_24 = 1'b0;
  wire tlast_fifo_0_21_24_en;
  wire [(1 - 1):0] tlast_fifo_1_21_24_next;
  reg [(1 - 1):0] tlast_fifo_1_21_24 = 1'b0;
  wire delayed_ready_0_23_27_next;
  reg delayed_ready_0_23_27 = 1'b0;
  wire delayed_ready_0_23_27_rst;
  wire delayed_ready_1_23_27_next;
  reg delayed_ready_1_23_27 = 1'b0;
  wire delayed_ready_1_23_27_rst;
  wire delayed_ready_2_23_27_next;
  reg delayed_ready_2_23_27 = 1'b0;
  wire delayed_ready_2_23_27_rst;
  wire delayed_ready_3_23_27_next;
  reg delayed_ready_3_23_27 = 1'b0;
  wire delayed_ready_3_23_27_rst;
  wire delayed_ready_4_23_27_next;
  reg delayed_ready_4_23_27 = 1'b0;
  wire delayed_ready_4_23_27_rst;
  localparam [(3 - 1):0] const_value = 3'b101;
  localparam [(2 - 1):0] const_value_x_000000 = 2'b10;
  localparam [(1 - 1):0] const_value_x_000001 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000002 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000003 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000004 = 1'b0;
  localparam [(3 - 1):0] const_value_x_000005 = 3'b100;
  localparam [(3 - 1):0] const_value_x_000006 = 3'b011;
  localparam [(3 - 1):0] const_value_x_000007 = 3'b010;
  localparam [(3 - 1):0] const_value_x_000008 = 3'b001;
  localparam [(3 - 1):0] const_value_x_000009 = 3'b000;
  localparam [(32 - 1):0] const_value_x_000010 = 32'b00000000000000000000000000000000;
  localparam [(32 - 1):0] const_value_x_000011 = 32'b00000000000000000000000000000000;
  localparam [(32 - 1):0] const_value_x_000012 = 32'b00000000000000000000000000000000;
  localparam [(32 - 1):0] const_value_x_000013 = 32'b00000000000000000000000000000000;
  localparam [(32 - 1):0] const_value_x_000014 = 32'b00000000000000000000000000000000;
  localparam [(32 - 1):0] const_value_x_000015 = 32'b00000000000000000000000000000000;
  localparam [(32 - 1):0] const_value_x_000016 = 32'b00000000000000000000000000000000;
  localparam [(32 - 1):0] const_value_x_000017 = 32'b00000000000000000000000000000000;
  localparam [(32 - 1):0] const_value_x_000018 = 32'b00000000000000000000000000000000;
  localparam [(1 - 1):0] const_value_x_000019 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000020 = 1'b0;
  localparam [(4 - 1):0] const_value_x_000021 = 4'b0000;
  localparam [(1 - 1):0] const_value_x_000022 = 1'b0;
  wire rel_56_8;
  wire rel_56_53;
  wire bool_56_8;
  reg triggered_join_56_5;
  localparam [(3 - 1):0] const_value_x_000023 = 3'b100;
  localparam [(3 - 1):0] const_value_x_000024 = 3'b011;
  localparam [(3 - 1):0] const_value_x_000025 = 3'b010;
  localparam [(3 - 1):0] const_value_x_000026 = 3'b001;
  wire ready_sig_66_5_bit;
  localparam [(1 - 1):0] const_value_x_000027 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000028 = 1'b1;
  wire [(33 - 1):0] cast_73_27;
  localparam [(33 - 1):0] const_value_x_000029 = 33'b000000000000000000000000000000001;
  wire [(33 - 1):0] frame_count_73_13_addsub;
  wire [(32 - 1):0] data_vec_store_0_75_27_slice;
  wire [(32 - 1):0] data_vec_store_1_76_27_slice;
  wire [(32 - 1):0] data_vec_store_2_77_27_slice;
  wire [(32 - 1):0] data_vec_store_3_78_27_slice;
  wire [(32 - 1):0] data_vec_store_4_79_27_slice;
  wire [(32 - 1):0] data_vec_store_5_80_27_slice;
  wire [(32 - 1):0] data_vec_store_6_81_27_slice;
  wire [(32 - 1):0] data_vec_store_7_82_27_slice;
  localparam [(1 - 1):0] const_value_x_000030 = 1'b0;
  wire [(33 - 1):0] cast_85_31;
  wire rel_85_16;
  reg last_frame_flag_join_85_13;
  reg [(33 - 1):0] frame_count_join_85_13;
  localparam [(33 - 1):0] const_value_x_000031 = 33'b000000000000000000000000000000000;
  localparam [(1 - 1):0] const_value_x_000032 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000033 = 1'b1;
  wire [(17 - 1):0] cast_96_27;
  localparam [(17 - 1):0] const_value_x_000034 = 17'b00000000000000001;
  wire [(17 - 1):0] decim_count_96_13_addsub;
  wire rel_72_12;
  reg last_frame_flag_join_72_9;
  reg muxing_run_join_72_9;
  reg [(8 - 1):0] data_sel_store_join_72_9;
  reg [(17 - 1):0] decim_count_join_72_9;
  localparam [(17 - 1):0] const_value_x_000035 = 17'b00000000000000000;
  reg [(33 - 1):0] frame_count_join_72_9;
  reg [(32 - 1):0] data_vec_store_5_join_72_9;
  reg [(32 - 1):0] data_vec_store_2_join_72_9;
  reg [(32 - 1):0] data_vec_store_3_join_72_9;
  reg [(32 - 1):0] data_vec_store_0_join_72_9;
  reg [(32 - 1):0] data_vec_store_6_join_72_9;
  reg [(32 - 1):0] data_vec_store_1_join_72_9;
  reg [(32 - 1):0] data_vec_store_7_join_72_9;
  reg [(32 - 1):0] data_vec_store_4_join_72_9;
  localparam [(8 - 1):0] const_value_x_000036 = 8'b11111110;
  wire [(8 - 1):0] data_sel_store_103_17_bit;
  localparam [(8 - 1):0] const_value_x_000037 = 8'b11111100;
  wire [(8 - 1):0] data_sel_store_106_17_bit;
  localparam [(8 - 1):0] const_value_x_000038 = 8'b11111000;
  wire [(8 - 1):0] data_sel_store_109_17_bit;
  localparam [(8 - 1):0] const_value_x_000039 = 8'b11110000;
  wire [(8 - 1):0] data_sel_store_112_17_bit;
  localparam [(8 - 1):0] const_value_x_000040 = 8'b11100000;
  wire [(8 - 1):0] data_sel_store_115_17_bit;
  localparam [(8 - 1):0] const_value_x_000041 = 8'b11000000;
  wire [(8 - 1):0] data_sel_store_118_17_bit;
  localparam [(8 - 1):0] const_value_x_000042 = 8'b10000000;
  wire [(8 - 1):0] data_sel_store_121_17_bit;
  localparam [(8 - 1):0] const_value_x_000043 = 8'b00000000;
  wire [(8 - 1):0] data_sel_store_124_17_bit;
  localparam [(1 - 1):0] const_value_x_000044 = 1'b0;
  wire [(1 - 1):0] slice_101_25;
  localparam [(1 - 1):0] const_value_x_000045 = 1'b1;
  wire rel_101_25;
  wire [(2 - 1):0] slice_104_29;
  localparam [(2 - 1):0] const_value_x_000046 = 2'b10;
  wire rel_104_29;
  wire [(3 - 1):0] slice_107_29;
  localparam [(3 - 1):0] const_value_x_000047 = 3'b100;
  wire rel_107_29;
  wire [(4 - 1):0] slice_110_29;
  localparam [(4 - 1):0] const_value_x_000048 = 4'b1000;
  wire rel_110_29;
  wire [(5 - 1):0] slice_113_29;
  localparam [(5 - 1):0] const_value_x_000049 = 5'b10000;
  wire rel_113_29;
  wire [(6 - 1):0] slice_116_29;
  localparam [(6 - 1):0] const_value_x_000050 = 6'b100000;
  wire rel_116_29;
  wire [(7 - 1):0] slice_119_29;
  localparam [(7 - 1):0] const_value_x_000051 = 7'b1000000;
  wire rel_119_29;
  wire [(8 - 1):0] slice_122_29;
  localparam [(8 - 1):0] const_value_x_000052 = 8'b10000000;
  wire rel_122_29;
  reg [(8 - 1):0] data_sel_store_join_101_13;
  reg [(32 - 1):0] tdata_temp_join_101_13;
  localparam [(32 - 1):0] const_value_x_000053 = 32'b00000000000000000000000000000000;
  localparam [(1 - 1):0] const_value_x_000054 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000055 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000056 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000057 = 1'b0;
  wire rel_134_21;
  reg last_frame_flag_join_134_17;
  reg triggered_join_134_17;
  reg [(1 - 1):0] tlast_temp_join_134_17;
  localparam [(1 - 1):0] const_value_x_000058 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000059 = 1'b0;
  reg [(1 - 1):0] tlast_fifo_0_join_134_17;
  localparam [(1 - 1):0] const_value_x_000060 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000061 = 1'b1;
  wire [(5 - 1):0] cast_143_29;
  localparam [(5 - 1):0] const_value_x_000062 = 5'b00001;
  wire [(5 - 1):0] mux_count_143_17_addsub;
  localparam [(1 - 1):0] const_value_x_000063 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000064 = 1'b0;
  localparam [(8 - 1):0] const_value_x_000065 = 8'b00000000;
  wire rel_130_16;
  reg last_frame_flag_join_130_13;
  reg muxing_run_join_130_13;
  reg triggered_join_130_13;
  reg [(1 - 1):0] tlast_temp_join_130_13;
  localparam [(1 - 1):0] const_value_x_000066 = 1'b0;
  reg [(5 - 1):0] mux_count_join_130_13;
  localparam [(5 - 1):0] const_value_x_000067 = 5'b00000;
  reg [(1 - 1):0] tlast_fifo_0_join_130_13;
  localparam [(1 - 1):0] const_value_x_000068 = 1'b1;
  localparam [(32 - 1):0] const_value_x_000069 = 32'b00000000000000000000000000000000;
  localparam [(1 - 1):0] const_value_x_000070 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000071 = 1'b0;
  wire rel_99_12;
  reg last_frame_flag_join_99_9;
  reg muxing_run_join_99_9;
  reg [(1 - 1):0] tvalid_temp_join_99_9;
  localparam [(1 - 1):0] const_value_x_000072 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000073 = 1'b0;
  reg [(8 - 1):0] data_sel_store_join_99_9;
  reg triggered_join_99_9;
  reg [(1 - 1):0] tlast_temp_join_99_9;
  localparam [(1 - 1):0] const_value_x_000074 = 1'b0;
  reg [(5 - 1):0] mux_count_join_99_9;
  reg [(32 - 1):0] tdata_temp_join_99_9;
  localparam [(32 - 1):0] const_value_x_000075 = 32'b00000000000000000000000000000000;
  reg [(1 - 1):0] tlast_fifo_0_join_99_9;
  localparam [(4 - 1):0] const_value_x_000076 = 4'b1111;
  localparam [(32 - 1):0] const_value_x_000077 = 32'b00000000000000000000000000000000;
  localparam [(4 - 1):0] const_value_x_000078 = 4'b0000;
  localparam [(1 - 1):0] const_value_x_000079 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000080 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000081 = 1'b0;
  wire bit_68_15;
  reg last_frame_flag_join_68_5;
  reg muxing_run_join_68_5;
  reg [(1 - 1):0] tvalid_temp_join_68_5;
  localparam [(1 - 1):0] const_value_x_000082 = 1'b0;
  reg [(4 - 1):0] tkeep_join_68_5;
  localparam [(4 - 1):0] const_value_x_000083 = 4'b1111;
  localparam [(4 - 1):0] const_value_x_000084 = 4'b0000;
  reg trigger_out_join_68_5;
  reg [(8 - 1):0] data_sel_store_join_68_5;
  reg triggered_join_68_5;
  reg [(1 - 1):0] tready_join_68_5;
  localparam [(1 - 1):0] const_value_x_000085 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000086 = 1'b0;
  reg [(17 - 1):0] decim_count_join_68_5;
  reg [(1 - 1):0] tlast_temp_join_68_5;
  localparam [(1 - 1):0] const_value_x_000087 = 1'b0;
  reg [(33 - 1):0] frame_count_join_68_5;
  reg [(5 - 1):0] mux_count_join_68_5;
  reg [(32 - 1):0] tdata_temp_join_68_5;
  localparam [(32 - 1):0] const_value_x_000088 = 32'b00000000000000000000000000000000;
  reg [(1 - 1):0] tlast_fifo_0_join_68_5;
  reg [(32 - 1):0] data_vec_store_5_join_68_5;
  reg [(32 - 1):0] data_vec_store_2_join_68_5;
  reg [(32 - 1):0] data_vec_store_3_join_68_5;
  reg [(32 - 1):0] data_vec_store_0_join_68_5;
  reg [(32 - 1):0] data_vec_store_6_join_68_5;
  reg [(32 - 1):0] data_vec_store_1_join_68_5;
  reg [(32 - 1):0] data_vec_store_7_join_68_5;
  reg [(32 - 1):0] data_vec_store_4_join_68_5;
  localparam [(1 - 1):0] const_value_x_000089 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000090 = 1'b1;
  wire rel_171_26;
  wire rel_171_51;
  wire bit_171_26;
  reg [(1 - 1):0] tlast_fifo_0_join_171_5;
  localparam [(1 - 1):0] const_value_x_000091 = 1'b0;
  wire rel_26_4;
  reg [(3 - 1):0] i_join_26_1;
  localparam [(3 - 1):0] const_value_x_000092 = 3'b000;
  localparam [(3 - 1):0] const_value_x_000093 = 3'b001;
  reg last_frame_flag_join_26_1;
  reg muxing_run_join_26_1;
  reg muxing_run_join_26_1_rst;
  reg [(4 - 1):0] tkeep_join_26_1;
  localparam [(4 - 1):0] const_value_x_000094 = 4'b0000;
  reg [(1 - 1):0] tvalid_join_26_1;
  localparam [(1 - 1):0] const_value_x_000095 = 1'b0;
  reg trigger_out_join_26_1;
  reg [(1 - 1):0] tlast_join_26_1;
  localparam [(1 - 1):0] const_value_x_000096 = 1'b0;
  reg [(8 - 1):0] data_sel_store_join_26_1;
  localparam [(8 - 1):0] const_value_x_000097 = 8'b00000000;
  reg triggered_join_26_1;
  reg triggered_join_26_1_rst;
  reg [(1 - 1):0] tready_join_26_1;
  localparam [(1 - 1):0] const_value_x_000098 = 1'b0;
  reg [(17 - 1):0] decim_count_join_26_1;
  localparam [(17 - 1):0] const_value_x_000099 = 17'b00000000000000000;
  reg [(32 - 1):0] tdata_join_26_1;
  localparam [(32 - 1):0] const_value_x_000100 = 32'b00000000000000000000000000000000;
  reg [(33 - 1):0] frame_count_join_26_1;
  localparam [(33 - 1):0] const_value_x_000101 = 33'b000000000000000000000000000000000;
  reg [(5 - 1):0] mux_count_join_26_1;
  localparam [(5 - 1):0] const_value_x_000102 = 5'b00000;
  reg [(1 - 1):0] tlast_fifo_0_join_26_1;
  reg tlast_fifo_0_join_26_1_en;
  reg [(32 - 1):0] data_vec_store_2_join_26_1;
  reg data_vec_store_2_join_26_1_rst;
  reg [(32 - 1):0] data_vec_store_6_join_26_1;
  reg data_vec_store_6_join_26_1_rst;
  reg [(32 - 1):0] data_vec_store_1_join_26_1;
  reg data_vec_store_1_join_26_1_rst;
  reg [(32 - 1):0] data_vec_store_4_join_26_1;
  reg data_vec_store_4_join_26_1_rst;
  reg [(32 - 1):0] data_vec_store_5_join_26_1;
  reg data_vec_store_5_join_26_1_rst;
  reg delayed_ready_2_join_26_1;
  reg delayed_ready_2_join_26_1_rst;
  reg delayed_ready_1_join_26_1;
  reg delayed_ready_1_join_26_1_rst;
  reg [(32 - 1):0] data_vec_store_3_join_26_1;
  reg data_vec_store_3_join_26_1_rst;
  reg [(32 - 1):0] data_vec_store_0_join_26_1;
  reg data_vec_store_0_join_26_1_rst;
  reg delayed_ready_0_join_26_1;
  reg delayed_ready_0_join_26_1_rst;
  reg delayed_ready_3_join_26_1;
  reg delayed_ready_3_join_26_1_rst;
  reg [(32 - 1):0] data_vec_store_7_join_26_1;
  reg data_vec_store_7_join_26_1_rst;
  reg delayed_ready_4_join_26_1;
  reg delayed_ready_4_join_26_1_rst;
  wire [(16 - 1):0] cast_decim_count_11_25_next;
  wire [(32 - 1):0] cast_frame_count_12_25_next;
  wire [(4 - 1):0] cast_mux_count_13_23_next;
  assign data_vec_1_148 = data_vec;
  assign data_sel_1_158 = data_sel;
  assign tready_in_1_168 = tready_in;
  assign decim_val_1_179 = decim_val;
  assign frames_val_1_190 = frames_val;
  assign trigger_in_1_202 = trigger_in;
  assign usr_rst_1_214 = usr_rst;
  always @(posedge clk)
    begin:proc_triggered_10_23
      if (((ce == 1'b1) && (triggered_10_23_rst == 1'b1)))
        begin
          triggered_10_23 <= 1'b0;
        end
      else if ((ce == 1'b1))
        begin
          triggered_10_23 <= triggered_10_23_next;
        end
    end
  always @(posedge clk)
    begin:proc_decim_count_11_25
      if ((ce == 1'b1))
        begin
          decim_count_11_25 <= decim_count_11_25_next;
        end
    end
  always @(posedge clk)
    begin:proc_frame_count_12_25
      if ((ce == 1'b1))
        begin
          frame_count_12_25 <= frame_count_12_25_next;
        end
    end
  always @(posedge clk)
    begin:proc_mux_count_13_23
      if ((ce == 1'b1))
        begin
          mux_count_13_23 <= mux_count_13_23_next;
        end
    end
  always @(posedge clk)
    begin:proc_muxing_run_14_24
      if (((ce == 1'b1) && (muxing_run_14_24_rst == 1'b1)))
        begin
          muxing_run_14_24 <= 1'b0;
        end
      else if ((ce == 1'b1))
        begin
          muxing_run_14_24 <= muxing_run_14_24_next;
        end
    end
  always @(posedge clk)
    begin:proc_data_sel_store_16_28
      if ((ce == 1'b1))
        begin
          data_sel_store_16_28 <= data_sel_store_16_28_next;
        end
    end
  always @(posedge clk)
    begin:proc_last_frame_flag_17_29
      if ((ce == 1'b1))
        begin
          last_frame_flag_17_29 <= last_frame_flag_17_29_next;
        end
    end
  always @(posedge clk)
    begin:proc_data_vec_store_0_15_28
      if (((ce == 1'b1) && (data_vec_store_0_15_28_rst == 1'b1)))
        begin
          data_vec_store_0_15_28 <= 32'b00000000000000000000000000000000;
        end
      else if ((ce == 1'b1))
        begin
          data_vec_store_0_15_28 <= data_vec_store_0_15_28_next;
        end
    end
  always @(posedge clk)
    begin:proc_data_vec_store_1_15_28
      if (((ce == 1'b1) && (data_vec_store_1_15_28_rst == 1'b1)))
        begin
          data_vec_store_1_15_28 <= 32'b00000000000000000000000000000000;
        end
      else if ((ce == 1'b1))
        begin
          data_vec_store_1_15_28 <= data_vec_store_1_15_28_next;
        end
    end
  always @(posedge clk)
    begin:proc_data_vec_store_2_15_28
      if (((ce == 1'b1) && (data_vec_store_2_15_28_rst == 1'b1)))
        begin
          data_vec_store_2_15_28 <= 32'b00000000000000000000000000000000;
        end
      else if ((ce == 1'b1))
        begin
          data_vec_store_2_15_28 <= data_vec_store_2_15_28_next;
        end
    end
  always @(posedge clk)
    begin:proc_data_vec_store_3_15_28
      if (((ce == 1'b1) && (data_vec_store_3_15_28_rst == 1'b1)))
        begin
          data_vec_store_3_15_28 <= 32'b00000000000000000000000000000000;
        end
      else if ((ce == 1'b1))
        begin
          data_vec_store_3_15_28 <= data_vec_store_3_15_28_next;
        end
    end
  always @(posedge clk)
    begin:proc_data_vec_store_4_15_28
      if (((ce == 1'b1) && (data_vec_store_4_15_28_rst == 1'b1)))
        begin
          data_vec_store_4_15_28 <= 32'b00000000000000000000000000000000;
        end
      else if ((ce == 1'b1))
        begin
          data_vec_store_4_15_28 <= data_vec_store_4_15_28_next;
        end
    end
  always @(posedge clk)
    begin:proc_data_vec_store_5_15_28
      if (((ce == 1'b1) && (data_vec_store_5_15_28_rst == 1'b1)))
        begin
          data_vec_store_5_15_28 <= 32'b00000000000000000000000000000000;
        end
      else if ((ce == 1'b1))
        begin
          data_vec_store_5_15_28 <= data_vec_store_5_15_28_next;
        end
    end
  always @(posedge clk)
    begin:proc_data_vec_store_6_15_28
      if (((ce == 1'b1) && (data_vec_store_6_15_28_rst == 1'b1)))
        begin
          data_vec_store_6_15_28 <= 32'b00000000000000000000000000000000;
        end
      else if ((ce == 1'b1))
        begin
          data_vec_store_6_15_28 <= data_vec_store_6_15_28_next;
        end
    end
  always @(posedge clk)
    begin:proc_data_vec_store_7_15_28
      if (((ce == 1'b1) && (data_vec_store_7_15_28_rst == 1'b1)))
        begin
          data_vec_store_7_15_28 <= 32'b00000000000000000000000000000000;
        end
      else if ((ce == 1'b1))
        begin
          data_vec_store_7_15_28 <= data_vec_store_7_15_28_next;
        end
    end
  always @(posedge clk)
    begin:proc_tlast_fifo_0_21_24
      if (((ce == 1'b1) && (tlast_fifo_0_21_24_en == 1'b1)))
        begin
          tlast_fifo_0_21_24 <= tlast_fifo_0_21_24_next;
        end
    end
  always @(posedge clk)
    begin:proc_tlast_fifo_1_21_24
      if ((ce == 1'b1))
        begin
          tlast_fifo_1_21_24 <= tlast_fifo_1_21_24_next;
        end
    end
  always @(posedge clk)
    begin:proc_delayed_ready_0_23_27
      if (((ce == 1'b1) && (delayed_ready_0_23_27_rst == 1'b1)))
        begin
          delayed_ready_0_23_27 <= 1'b0;
        end
      else if ((ce == 1'b1))
        begin
          delayed_ready_0_23_27 <= delayed_ready_0_23_27_next;
        end
    end
  always @(posedge clk)
    begin:proc_delayed_ready_1_23_27
      if (((ce == 1'b1) && (delayed_ready_1_23_27_rst == 1'b1)))
        begin
          delayed_ready_1_23_27 <= 1'b0;
        end
      else if ((ce == 1'b1))
        begin
          delayed_ready_1_23_27 <= delayed_ready_1_23_27_next;
        end
    end
  always @(posedge clk)
    begin:proc_delayed_ready_2_23_27
      if (((ce == 1'b1) && (delayed_ready_2_23_27_rst == 1'b1)))
        begin
          delayed_ready_2_23_27 <= 1'b0;
        end
      else if ((ce == 1'b1))
        begin
          delayed_ready_2_23_27 <= delayed_ready_2_23_27_next;
        end
    end
  always @(posedge clk)
    begin:proc_delayed_ready_3_23_27
      if (((ce == 1'b1) && (delayed_ready_3_23_27_rst == 1'b1)))
        begin
          delayed_ready_3_23_27 <= 1'b0;
        end
      else if ((ce == 1'b1))
        begin
          delayed_ready_3_23_27 <= delayed_ready_3_23_27_next;
        end
    end
  always @(posedge clk)
    begin:proc_delayed_ready_4_23_27
      if (((ce == 1'b1) && (delayed_ready_4_23_27_rst == 1'b1)))
        begin
          delayed_ready_4_23_27 <= 1'b0;
        end
      else if ((ce == 1'b1))
        begin
          delayed_ready_4_23_27 <= delayed_ready_4_23_27_next;
        end
    end
  assign rel_56_8 = trigger_in_1_202 == 1'b1;
  assign rel_56_53 = triggered_10_23 == 1'b0;
  assign bool_56_8 = rel_56_8 && rel_56_53;
  always @(bool_56_8 or triggered_10_23)
    begin:proc_if_56_5
      if (bool_56_8)
        begin
          triggered_join_56_5 = 1'b1;
        end
      else 
        begin
          triggered_join_56_5 = triggered_10_23;
        end
    end
  assign ready_sig_66_5_bit = tready_in_1_168 & delayed_ready_0_23_27 & delayed_ready_1_23_27 & delayed_ready_2_23_27 & delayed_ready_3_23_27;
  assign cast_73_27 = {1'b0, frame_count_12_25[31:0]};
  assign frame_count_73_13_addsub = cast_73_27 + const_value_x_000029;
  assign data_vec_store_0_75_27_slice = data_vec_1_148[31:0];
  assign data_vec_store_1_76_27_slice = data_vec_1_148[63:32];
  assign data_vec_store_2_77_27_slice = data_vec_1_148[95:64];
  assign data_vec_store_3_78_27_slice = data_vec_1_148[127:96];
  assign data_vec_store_4_79_27_slice = data_vec_1_148[159:128];
  assign data_vec_store_5_80_27_slice = data_vec_1_148[191:160];
  assign data_vec_store_6_81_27_slice = data_vec_1_148[223:192];
  assign data_vec_store_7_82_27_slice = data_vec_1_148[255:224];
  assign cast_85_31 = {1'b0, frames_val_1_190[31:0]};
  assign rel_85_16 = frame_count_73_13_addsub == cast_85_31;
  always @(frame_count_73_13_addsub or last_frame_flag_17_29 or rel_85_16)
    begin:proc_if_85_13
      if (rel_85_16)
        begin
          last_frame_flag_join_85_13 = 1'b1;
          frame_count_join_85_13 = const_value_x_000031;
        end
      else 
        begin
          last_frame_flag_join_85_13 = last_frame_flag_17_29;
          frame_count_join_85_13 = frame_count_73_13_addsub;
        end
    end
  assign cast_96_27 = {1'b0, decim_count_11_25[15:0]};
  assign decim_count_96_13_addsub = cast_96_27 + const_value_x_000034;
  assign rel_72_12 = decim_count_11_25 == decim_val_1_179;
  always @(data_sel_1_158 or data_sel_store_16_28 or data_vec_store_0_15_28 or data_vec_store_0_75_27_slice or data_vec_store_1_15_28 or data_vec_store_1_76_27_slice or data_vec_store_2_15_28 or data_vec_store_2_77_27_slice or data_vec_store_3_15_28 or data_vec_store_3_78_27_slice or data_vec_store_4_15_28 or data_vec_store_4_79_27_slice or data_vec_store_5_15_28 or data_vec_store_5_80_27_slice or data_vec_store_6_15_28 or data_vec_store_6_81_27_slice or data_vec_store_7_15_28 or data_vec_store_7_82_27_slice or decim_count_96_13_addsub or frame_count_12_25 or frame_count_join_85_13 or last_frame_flag_17_29 or last_frame_flag_join_85_13 or muxing_run_14_24 or rel_72_12)
    begin:proc_if_72_9
      if (rel_72_12)
        begin
          last_frame_flag_join_72_9 = last_frame_flag_join_85_13;
          muxing_run_join_72_9 = 1'b1;
          data_sel_store_join_72_9 = data_sel_1_158;
          decim_count_join_72_9 = const_value_x_000035;
          frame_count_join_72_9 = frame_count_join_85_13;
          data_vec_store_5_join_72_9 = data_vec_store_5_80_27_slice;
          data_vec_store_2_join_72_9 = data_vec_store_2_77_27_slice;
          data_vec_store_3_join_72_9 = data_vec_store_3_78_27_slice;
          data_vec_store_0_join_72_9 = data_vec_store_0_75_27_slice;
          data_vec_store_6_join_72_9 = data_vec_store_6_81_27_slice;
          data_vec_store_1_join_72_9 = data_vec_store_1_76_27_slice;
          data_vec_store_7_join_72_9 = data_vec_store_7_82_27_slice;
          data_vec_store_4_join_72_9 = data_vec_store_4_79_27_slice;
        end
      else 
        begin
          last_frame_flag_join_72_9 = last_frame_flag_17_29;
          muxing_run_join_72_9 = muxing_run_14_24;
          data_sel_store_join_72_9 = data_sel_store_16_28;
          decim_count_join_72_9 = decim_count_96_13_addsub;
          frame_count_join_72_9 = {1'b0, frame_count_12_25[31:0]};
          data_vec_store_5_join_72_9 = data_vec_store_5_15_28;
          data_vec_store_2_join_72_9 = data_vec_store_2_15_28;
          data_vec_store_3_join_72_9 = data_vec_store_3_15_28;
          data_vec_store_0_join_72_9 = data_vec_store_0_15_28;
          data_vec_store_6_join_72_9 = data_vec_store_6_15_28;
          data_vec_store_1_join_72_9 = data_vec_store_1_15_28;
          data_vec_store_7_join_72_9 = data_vec_store_7_15_28;
          data_vec_store_4_join_72_9 = data_vec_store_4_15_28;
        end
    end
  assign data_sel_store_103_17_bit = data_sel_store_join_72_9 & const_value_x_000036;
  assign data_sel_store_106_17_bit = data_sel_store_join_72_9 & const_value_x_000037;
  assign data_sel_store_109_17_bit = data_sel_store_join_72_9 & const_value_x_000038;
  assign data_sel_store_112_17_bit = data_sel_store_join_72_9 & const_value_x_000039;
  assign data_sel_store_115_17_bit = data_sel_store_join_72_9 & const_value_x_000040;
  assign data_sel_store_118_17_bit = data_sel_store_join_72_9 & const_value_x_000041;
  assign data_sel_store_121_17_bit = data_sel_store_join_72_9 & const_value_x_000042;
  assign data_sel_store_124_17_bit = data_sel_store_join_72_9 & const_value_x_000043;
  assign slice_101_25 = data_sel_store_join_72_9[0:0];
  assign rel_101_25 = slice_101_25 == const_value_x_000045;
  assign slice_104_29 = data_sel_store_join_72_9[1:0];
  assign rel_104_29 = slice_104_29 == const_value_x_000046;
  assign slice_107_29 = data_sel_store_join_72_9[2:0];
  assign rel_107_29 = slice_107_29 == const_value_x_000047;
  assign slice_110_29 = data_sel_store_join_72_9[3:0];
  assign rel_110_29 = slice_110_29 == const_value_x_000048;
  assign slice_113_29 = data_sel_store_join_72_9[4:0];
  assign rel_113_29 = slice_113_29 == const_value_x_000049;
  assign slice_116_29 = data_sel_store_join_72_9[5:0];
  assign rel_116_29 = slice_116_29 == const_value_x_000050;
  assign slice_119_29 = data_sel_store_join_72_9[6:0];
  assign rel_119_29 = slice_119_29 == const_value_x_000051;
  assign slice_122_29 = data_sel_store_join_72_9[7:0];
  assign rel_122_29 = slice_122_29 == const_value_x_000052;
  always @(data_sel_store_103_17_bit or data_sel_store_106_17_bit or data_sel_store_109_17_bit or data_sel_store_112_17_bit or data_sel_store_115_17_bit or data_sel_store_118_17_bit or data_sel_store_121_17_bit or data_sel_store_124_17_bit or data_sel_store_join_72_9 or data_vec_store_0_join_72_9 or data_vec_store_1_join_72_9 or data_vec_store_2_join_72_9 or data_vec_store_3_join_72_9 or data_vec_store_4_join_72_9 or data_vec_store_5_join_72_9 or data_vec_store_6_join_72_9 or data_vec_store_7_join_72_9 or rel_101_25 or rel_104_29 or rel_107_29 or rel_110_29 or rel_113_29 or rel_116_29 or rel_119_29 or rel_122_29)
    begin:proc_if_101_13
      if (rel_101_25)
        begin
          data_sel_store_join_101_13 = data_sel_store_103_17_bit;
          tdata_temp_join_101_13 = data_vec_store_0_join_72_9;
        end
      else if (rel_104_29)
        begin
          data_sel_store_join_101_13 = data_sel_store_106_17_bit;
          tdata_temp_join_101_13 = data_vec_store_1_join_72_9;
        end
      else if (rel_107_29)
        begin
          data_sel_store_join_101_13 = data_sel_store_109_17_bit;
          tdata_temp_join_101_13 = data_vec_store_2_join_72_9;
        end
      else if (rel_110_29)
        begin
          data_sel_store_join_101_13 = data_sel_store_112_17_bit;
          tdata_temp_join_101_13 = data_vec_store_3_join_72_9;
        end
      else if (rel_113_29)
        begin
          data_sel_store_join_101_13 = data_sel_store_115_17_bit;
          tdata_temp_join_101_13 = data_vec_store_4_join_72_9;
        end
      else if (rel_116_29)
        begin
          data_sel_store_join_101_13 = data_sel_store_118_17_bit;
          tdata_temp_join_101_13 = data_vec_store_5_join_72_9;
        end
      else if (rel_119_29)
        begin
          data_sel_store_join_101_13 = data_sel_store_121_17_bit;
          tdata_temp_join_101_13 = data_vec_store_6_join_72_9;
        end
      else if (rel_122_29)
        begin
          data_sel_store_join_101_13 = data_sel_store_124_17_bit;
          tdata_temp_join_101_13 = data_vec_store_7_join_72_9;
        end
      else 
        begin
          data_sel_store_join_101_13 = data_sel_store_join_72_9;
          tdata_temp_join_101_13 = const_value_x_000053;
        end
    end
  assign rel_134_21 = last_frame_flag_join_72_9 == 1'b1;
  always @(last_frame_flag_join_72_9 or rel_134_21 or tlast_fifo_0_21_24 or triggered_join_56_5)
    begin:proc_if_134_17
      if (rel_134_21)
        begin
          last_frame_flag_join_134_17 = 1'b0;
          triggered_join_134_17 = 1'b0;
          tlast_temp_join_134_17 = const_value_x_000058;
          tlast_fifo_0_join_134_17 = const_value_x_000060;
        end
      else 
        begin
          last_frame_flag_join_134_17 = last_frame_flag_join_72_9;
          triggered_join_134_17 = triggered_join_56_5;
          tlast_temp_join_134_17 = const_value_x_000059;
          tlast_fifo_0_join_134_17 = tlast_fifo_0_21_24;
        end
    end
  assign cast_143_29 = {1'b0, mux_count_13_23[3:0]};
  assign mux_count_143_17_addsub = cast_143_29 + const_value_x_000062;
  assign rel_130_16 = data_sel_store_join_101_13 == const_value_x_000065;
  always @(last_frame_flag_join_134_17 or last_frame_flag_join_72_9 or mux_count_143_17_addsub or muxing_run_join_72_9 or rel_130_16 or tlast_fifo_0_21_24 or tlast_fifo_0_join_134_17 or tlast_temp_join_134_17 or triggered_join_134_17 or triggered_join_56_5)
    begin:proc_if_130_13
      if (rel_130_16)
        begin
          last_frame_flag_join_130_13 = last_frame_flag_join_134_17;
          muxing_run_join_130_13 = 1'b0;
          triggered_join_130_13 = triggered_join_134_17;
          tlast_temp_join_130_13 = tlast_temp_join_134_17;
          mux_count_join_130_13 = const_value_x_000067;
          tlast_fifo_0_join_130_13 = tlast_fifo_0_join_134_17;
        end
      else 
        begin
          last_frame_flag_join_130_13 = last_frame_flag_join_72_9;
          muxing_run_join_130_13 = muxing_run_join_72_9;
          triggered_join_130_13 = triggered_join_56_5;
          tlast_temp_join_130_13 = const_value_x_000066;
          mux_count_join_130_13 = mux_count_143_17_addsub;
          tlast_fifo_0_join_130_13 = tlast_fifo_0_21_24;
        end
    end
  assign rel_99_12 = muxing_run_join_72_9 == 1'b1;
  always @(data_sel_store_join_101_13 or data_sel_store_join_72_9 or last_frame_flag_join_130_13 or last_frame_flag_join_72_9 or mux_count_13_23 or mux_count_join_130_13 or muxing_run_join_130_13 or muxing_run_join_72_9 or rel_99_12 or tdata_temp_join_101_13 or tlast_fifo_0_21_24 or tlast_fifo_0_join_130_13 or tlast_temp_join_130_13 or triggered_join_130_13 or triggered_join_56_5)
    begin:proc_if_99_9
      if (rel_99_12)
        begin
          last_frame_flag_join_99_9 = last_frame_flag_join_130_13;
          muxing_run_join_99_9 = muxing_run_join_130_13;
          tvalid_temp_join_99_9 = const_value_x_000072;
          data_sel_store_join_99_9 = data_sel_store_join_101_13;
          triggered_join_99_9 = triggered_join_130_13;
          tlast_temp_join_99_9 = tlast_temp_join_130_13;
          mux_count_join_99_9 = mux_count_join_130_13;
          tdata_temp_join_99_9 = tdata_temp_join_101_13;
          tlast_fifo_0_join_99_9 = tlast_fifo_0_join_130_13;
        end
      else 
        begin
          last_frame_flag_join_99_9 = last_frame_flag_join_72_9;
          muxing_run_join_99_9 = muxing_run_join_72_9;
          tvalid_temp_join_99_9 = const_value_x_000073;
          data_sel_store_join_99_9 = data_sel_store_join_72_9;
          triggered_join_99_9 = triggered_join_56_5;
          tlast_temp_join_99_9 = const_value_x_000074;
          mux_count_join_99_9 = {1'b0, mux_count_13_23[3:0]};
          tdata_temp_join_99_9 = const_value_x_000075;
          tlast_fifo_0_join_99_9 = tlast_fifo_0_21_24;
        end
    end
  assign bit_68_15 = triggered_join_56_5 & ready_sig_66_5_bit;
  always @(bit_68_15 or data_sel_store_16_28 or data_sel_store_join_99_9 or data_vec_store_0_15_28 or data_vec_store_0_join_72_9 or data_vec_store_1_15_28 or data_vec_store_1_join_72_9 or data_vec_store_2_15_28 or data_vec_store_2_join_72_9 or data_vec_store_3_15_28 or data_vec_store_3_join_72_9 or data_vec_store_4_15_28 or data_vec_store_4_join_72_9 or data_vec_store_5_15_28 or data_vec_store_5_join_72_9 or data_vec_store_6_15_28 or data_vec_store_6_join_72_9 or data_vec_store_7_15_28 or data_vec_store_7_join_72_9 or decim_count_11_25 or decim_count_join_72_9 or frame_count_12_25 or frame_count_join_72_9 or last_frame_flag_17_29 or last_frame_flag_join_99_9 or mux_count_13_23 or mux_count_join_99_9 or muxing_run_14_24 or muxing_run_join_99_9 or tdata_temp_join_99_9 or tlast_fifo_0_21_24 or tlast_fifo_0_join_99_9 or tlast_temp_join_99_9 or triggered_join_56_5 or triggered_join_99_9 or tvalid_temp_join_99_9)
    begin:proc_if_68_5
      if (bit_68_15)
        begin
          last_frame_flag_join_68_5 = last_frame_flag_join_99_9;
          muxing_run_join_68_5 = muxing_run_join_99_9;
          tvalid_temp_join_68_5 = tvalid_temp_join_99_9;
          tkeep_join_68_5 = const_value_x_000083;
          trigger_out_join_68_5 = triggered_join_99_9;
          data_sel_store_join_68_5 = data_sel_store_join_99_9;
          triggered_join_68_5 = triggered_join_99_9;
          tready_join_68_5 = const_value_x_000085;
          decim_count_join_68_5 = decim_count_join_72_9;
          tlast_temp_join_68_5 = tlast_temp_join_99_9;
          frame_count_join_68_5 = frame_count_join_72_9;
          mux_count_join_68_5 = mux_count_join_99_9;
          tdata_temp_join_68_5 = tdata_temp_join_99_9;
          tlast_fifo_0_join_68_5 = tlast_fifo_0_join_99_9;
          data_vec_store_5_join_68_5 = data_vec_store_5_join_72_9;
          data_vec_store_2_join_68_5 = data_vec_store_2_join_72_9;
          data_vec_store_3_join_68_5 = data_vec_store_3_join_72_9;
          data_vec_store_0_join_68_5 = data_vec_store_0_join_72_9;
          data_vec_store_6_join_68_5 = data_vec_store_6_join_72_9;
          data_vec_store_1_join_68_5 = data_vec_store_1_join_72_9;
          data_vec_store_7_join_68_5 = data_vec_store_7_join_72_9;
          data_vec_store_4_join_68_5 = data_vec_store_4_join_72_9;
        end
      else 
        begin
          last_frame_flag_join_68_5 = last_frame_flag_17_29;
          muxing_run_join_68_5 = muxing_run_14_24;
          tvalid_temp_join_68_5 = const_value_x_000082;
          tkeep_join_68_5 = const_value_x_000084;
          trigger_out_join_68_5 = 1'b0;
          data_sel_store_join_68_5 = data_sel_store_16_28;
          triggered_join_68_5 = triggered_join_56_5;
          tready_join_68_5 = const_value_x_000086;
          decim_count_join_68_5 = {1'b0, decim_count_11_25[15:0]};
          tlast_temp_join_68_5 = const_value_x_000087;
          frame_count_join_68_5 = {1'b0, frame_count_12_25[31:0]};
          mux_count_join_68_5 = {1'b0, mux_count_13_23[3:0]};
          tdata_temp_join_68_5 = const_value_x_000088;
          tlast_fifo_0_join_68_5 = tlast_fifo_0_21_24;
          data_vec_store_5_join_68_5 = data_vec_store_5_15_28;
          data_vec_store_2_join_68_5 = data_vec_store_2_15_28;
          data_vec_store_3_join_68_5 = data_vec_store_3_15_28;
          data_vec_store_0_join_68_5 = data_vec_store_0_15_28;
          data_vec_store_6_join_68_5 = data_vec_store_6_15_28;
          data_vec_store_1_join_68_5 = data_vec_store_1_15_28;
          data_vec_store_7_join_68_5 = data_vec_store_7_15_28;
          data_vec_store_4_join_68_5 = data_vec_store_4_15_28;
        end
    end
  assign rel_171_26 = tlast_fifo_0_join_68_5 == const_value_x_000090;
  assign rel_171_51 = delayed_ready_0_23_27 == 1'b1;
  assign bit_171_26 = rel_171_26 & rel_171_51;
  always @(bit_171_26 or tlast_fifo_0_join_68_5)
    begin:proc_if_171_5
      if (bit_171_26)
        begin
          tlast_fifo_0_join_171_5 = const_value_x_000091;
        end
      else 
        begin
          tlast_fifo_0_join_171_5 = tlast_fifo_0_join_68_5;
        end
    end
  assign rel_26_4 = usr_rst_1_214 == 1'b1;
  always @(data_sel_store_join_68_5 or data_vec_store_0_join_68_5 or data_vec_store_1_join_68_5 or data_vec_store_2_join_68_5 or data_vec_store_3_join_68_5 or data_vec_store_4_join_68_5 or data_vec_store_5_join_68_5 or data_vec_store_6_join_68_5 or data_vec_store_7_join_68_5 or decim_count_join_68_5 or delayed_ready_0_23_27 or delayed_ready_1_23_27 or delayed_ready_2_23_27 or delayed_ready_3_23_27 or frame_count_join_68_5 or last_frame_flag_join_68_5 or mux_count_join_68_5 or muxing_run_join_68_5 or rel_26_4 or tdata_temp_join_68_5 or tkeep_join_68_5 or tlast_fifo_0_join_171_5 or tlast_temp_join_68_5 or tready_in_1_168 or tready_join_68_5 or trigger_out_join_68_5 or triggered_join_68_5 or tvalid_temp_join_68_5)
    begin:proc_if_26_1
      if (rel_26_4)
        begin
          muxing_run_join_26_1_rst = 1'b1;
        end
      else 
        begin
          muxing_run_join_26_1_rst = 1'b0;
        end
      muxing_run_join_26_1 = muxing_run_join_68_5;
      if (rel_26_4)
        begin
          triggered_join_26_1_rst = 1'b1;
        end
      else 
        begin
          triggered_join_26_1_rst = 1'b0;
        end
      triggered_join_26_1 = triggered_join_68_5;
      if (rel_26_4)
        begin
          tlast_fifo_0_join_26_1_en = 1'b0;
        end
      else 
        begin
          tlast_fifo_0_join_26_1_en = 1'b1;
        end
      tlast_fifo_0_join_26_1 = tlast_fifo_0_join_171_5;
      if (rel_26_4)
        begin
          data_vec_store_2_join_26_1_rst = 1'b1;
        end
      else 
        begin
          data_vec_store_2_join_26_1_rst = 1'b0;
        end
      data_vec_store_2_join_26_1 = data_vec_store_2_join_68_5;
      if (rel_26_4)
        begin
          data_vec_store_6_join_26_1_rst = 1'b1;
        end
      else 
        begin
          data_vec_store_6_join_26_1_rst = 1'b0;
        end
      data_vec_store_6_join_26_1 = data_vec_store_6_join_68_5;
      if (rel_26_4)
        begin
          data_vec_store_1_join_26_1_rst = 1'b1;
        end
      else 
        begin
          data_vec_store_1_join_26_1_rst = 1'b0;
        end
      data_vec_store_1_join_26_1 = data_vec_store_1_join_68_5;
      if (rel_26_4)
        begin
          data_vec_store_4_join_26_1_rst = 1'b1;
        end
      else 
        begin
          data_vec_store_4_join_26_1_rst = 1'b0;
        end
      data_vec_store_4_join_26_1 = data_vec_store_4_join_68_5;
      if (rel_26_4)
        begin
          data_vec_store_5_join_26_1_rst = 1'b1;
        end
      else 
        begin
          data_vec_store_5_join_26_1_rst = 1'b0;
        end
      data_vec_store_5_join_26_1 = data_vec_store_5_join_68_5;
      if (rel_26_4)
        begin
          delayed_ready_2_join_26_1_rst = 1'b1;
        end
      else 
        begin
          delayed_ready_2_join_26_1_rst = 1'b0;
        end
      delayed_ready_2_join_26_1 = delayed_ready_1_23_27;
      if (rel_26_4)
        begin
          delayed_ready_1_join_26_1_rst = 1'b1;
        end
      else 
        begin
          delayed_ready_1_join_26_1_rst = 1'b0;
        end
      delayed_ready_1_join_26_1 = delayed_ready_0_23_27;
      if (rel_26_4)
        begin
          data_vec_store_3_join_26_1_rst = 1'b1;
        end
      else 
        begin
          data_vec_store_3_join_26_1_rst = 1'b0;
        end
      data_vec_store_3_join_26_1 = data_vec_store_3_join_68_5;
      if (rel_26_4)
        begin
          data_vec_store_0_join_26_1_rst = 1'b1;
        end
      else 
        begin
          data_vec_store_0_join_26_1_rst = 1'b0;
        end
      data_vec_store_0_join_26_1 = data_vec_store_0_join_68_5;
      if (rel_26_4)
        begin
          delayed_ready_0_join_26_1_rst = 1'b1;
        end
      else 
        begin
          delayed_ready_0_join_26_1_rst = 1'b0;
        end
      delayed_ready_0_join_26_1 = tready_in_1_168;
      if (rel_26_4)
        begin
          delayed_ready_3_join_26_1_rst = 1'b1;
        end
      else 
        begin
          delayed_ready_3_join_26_1_rst = 1'b0;
        end
      delayed_ready_3_join_26_1 = delayed_ready_2_23_27;
      if (rel_26_4)
        begin
          data_vec_store_7_join_26_1_rst = 1'b1;
        end
      else 
        begin
          data_vec_store_7_join_26_1_rst = 1'b0;
        end
      data_vec_store_7_join_26_1 = data_vec_store_7_join_68_5;
      if (rel_26_4)
        begin
          delayed_ready_4_join_26_1_rst = 1'b1;
        end
      else 
        begin
          delayed_ready_4_join_26_1_rst = 1'b0;
        end
      delayed_ready_4_join_26_1 = delayed_ready_3_23_27;
      if (rel_26_4)
        begin
          i_join_26_1 = const_value_x_000092;
          last_frame_flag_join_26_1 = 1'b0;
          tkeep_join_26_1 = const_value_x_000094;
          tvalid_join_26_1 = const_value_x_000095;
          trigger_out_join_26_1 = 1'b0;
          tlast_join_26_1 = const_value_x_000096;
          data_sel_store_join_26_1 = const_value_x_000097;
          tready_join_26_1 = const_value_x_000098;
          decim_count_join_26_1 = const_value_x_000099;
          tdata_join_26_1 = const_value_x_000100;
          frame_count_join_26_1 = const_value_x_000101;
          mux_count_join_26_1 = const_value_x_000102;
        end
      else 
        begin
          i_join_26_1 = const_value_x_000093;
          last_frame_flag_join_26_1 = last_frame_flag_join_68_5;
          tkeep_join_26_1 = tkeep_join_68_5;
          tvalid_join_26_1 = tvalid_temp_join_68_5;
          trigger_out_join_26_1 = trigger_out_join_68_5;
          tlast_join_26_1 = tlast_temp_join_68_5;
          data_sel_store_join_26_1 = data_sel_store_join_68_5;
          tready_join_26_1 = tready_join_68_5;
          decim_count_join_26_1 = decim_count_join_68_5;
          tdata_join_26_1 = tdata_temp_join_68_5;
          frame_count_join_26_1 = frame_count_join_68_5;
          mux_count_join_26_1 = mux_count_join_68_5;
        end
    end
  assign triggered_10_23_next = triggered_join_68_5;
  assign triggered_10_23_rst = triggered_join_26_1_rst;
  assign cast_decim_count_11_25_next = {decim_count_join_26_1[15:0]};
  assign decim_count_11_25_next = cast_decim_count_11_25_next;
  assign cast_frame_count_12_25_next = {frame_count_join_26_1[31:0]};
  assign frame_count_12_25_next = cast_frame_count_12_25_next;
  assign cast_mux_count_13_23_next = {mux_count_join_26_1[3:0]};
  assign mux_count_13_23_next = cast_mux_count_13_23_next;
  assign muxing_run_14_24_next = muxing_run_join_68_5;
  assign muxing_run_14_24_rst = muxing_run_join_26_1_rst;
  assign data_sel_store_16_28_next = data_sel_store_join_26_1;
  assign last_frame_flag_17_29_next = last_frame_flag_join_26_1;
  assign data_vec_store_0_15_28_next = data_vec_store_0_join_68_5;
  assign data_vec_store_0_15_28_rst = data_vec_store_0_join_26_1_rst;
  assign data_vec_store_1_15_28_next = data_vec_store_1_join_68_5;
  assign data_vec_store_1_15_28_rst = data_vec_store_1_join_26_1_rst;
  assign data_vec_store_2_15_28_next = data_vec_store_2_join_68_5;
  assign data_vec_store_2_15_28_rst = data_vec_store_2_join_26_1_rst;
  assign data_vec_store_3_15_28_next = data_vec_store_3_join_68_5;
  assign data_vec_store_3_15_28_rst = data_vec_store_3_join_26_1_rst;
  assign data_vec_store_4_15_28_next = data_vec_store_4_join_68_5;
  assign data_vec_store_4_15_28_rst = data_vec_store_4_join_26_1_rst;
  assign data_vec_store_5_15_28_next = data_vec_store_5_join_68_5;
  assign data_vec_store_5_15_28_rst = data_vec_store_5_join_26_1_rst;
  assign data_vec_store_6_15_28_next = data_vec_store_6_join_68_5;
  assign data_vec_store_6_15_28_rst = data_vec_store_6_join_26_1_rst;
  assign data_vec_store_7_15_28_next = data_vec_store_7_join_68_5;
  assign data_vec_store_7_15_28_rst = data_vec_store_7_join_26_1_rst;
  assign tlast_fifo_0_21_24_next = tlast_fifo_0_join_171_5;
  assign tlast_fifo_0_21_24_en = tlast_fifo_0_join_26_1_en;
  assign tlast_fifo_1_21_24_next = tlast_fifo_1_21_24;
  assign delayed_ready_0_23_27_next = tready_in_1_168;
  assign delayed_ready_0_23_27_rst = delayed_ready_0_join_26_1_rst;
  assign delayed_ready_1_23_27_next = delayed_ready_0_23_27;
  assign delayed_ready_1_23_27_rst = delayed_ready_1_join_26_1_rst;
  assign delayed_ready_2_23_27_next = delayed_ready_1_23_27;
  assign delayed_ready_2_23_27_rst = delayed_ready_2_join_26_1_rst;
  assign delayed_ready_3_23_27_next = delayed_ready_2_23_27;
  assign delayed_ready_3_23_27_rst = delayed_ready_3_join_26_1_rst;
  assign delayed_ready_4_23_27_next = delayed_ready_3_23_27;
  assign delayed_ready_4_23_27_rst = delayed_ready_4_join_26_1_rst;
  assign tdata = tdata_join_26_1;
  assign tvalid = tvalid_join_26_1;
  assign tlast = tlast_join_26_1;
  assign tkeep = tkeep_join_26_1;
  assign tready = tready_join_26_1;
  assign trigger_out = trigger_out_join_26_1;
  assign dec_cnt_out = decim_count_join_26_1;
  assign frame_cnt_out = frame_count_join_26_1;
  assign mux_cnt_out = mux_count_join_26_1;
  assign data_sel_out = data_sel_store_join_26_1;
  assign last_frame_out = last_frame_flag_join_26_1;
endmodule
`timescale 1 ns / 10 ps
module sysgen_mux_41889c05ba (
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
module thrtl_8ch_cfg_xlregister (d, rst, en, ce, clk, q);
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
module sysgen_logical_0a0b836e47 (
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
module thrtl_8ch_cfg_cfg_in_axi_lite_interface#(parameter C_S_AXI_DATA_WIDTH = 32, C_S_AXI_ADDR_WIDTH = 5, C_S_NUM_OFFSETS = 6)(
  output wire[0:0] usr_rst_in,
  output wire[0:0] trigger_src,
  output wire[0:0] trigger_in,
  output wire[31:0] frames_no_in,
  output wire[15:0] decim_in,
  output wire[7:0] data_sel_in,
  output wire clk,
  input wire thrtl_8ch_cfg_cfg_in_aclk,
  input wire thrtl_8ch_cfg_cfg_in_aresetn,
  input  wire [C_S_AXI_ADDR_WIDTH - 1:0] thrtl_8ch_cfg_cfg_in_s_axi_awaddr,
  input  wire thrtl_8ch_cfg_cfg_in_s_axi_awvalid,
  output wire thrtl_8ch_cfg_cfg_in_s_axi_awready,
  input  wire [C_S_AXI_DATA_WIDTH-1:0] thrtl_8ch_cfg_cfg_in_s_axi_wdata,
  input  wire [C_S_AXI_DATA_WIDTH/8-1:0] thrtl_8ch_cfg_cfg_in_s_axi_wstrb,
  input  wire thrtl_8ch_cfg_cfg_in_s_axi_wvalid,
  output wire thrtl_8ch_cfg_cfg_in_s_axi_wready,
  output wire [1:0] thrtl_8ch_cfg_cfg_in_s_axi_bresp,
  output wire thrtl_8ch_cfg_cfg_in_s_axi_bvalid,
  input  wire thrtl_8ch_cfg_cfg_in_s_axi_bready,
  input  wire [C_S_AXI_ADDR_WIDTH - 1:0] thrtl_8ch_cfg_cfg_in_s_axi_araddr,
  input  wire thrtl_8ch_cfg_cfg_in_s_axi_arvalid,
  output wire thrtl_8ch_cfg_cfg_in_s_axi_arready,
  output wire [C_S_AXI_DATA_WIDTH-1:0] thrtl_8ch_cfg_cfg_in_s_axi_rdata,
  output wire [1:0] thrtl_8ch_cfg_cfg_in_s_axi_rresp,
  output wire thrtl_8ch_cfg_cfg_in_s_axi_rvalid,
  input  wire thrtl_8ch_cfg_cfg_in_s_axi_rready
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
assign thrtl_8ch_cfg_cfg_in_s_axi_awready = axi_awready;
assign thrtl_8ch_cfg_cfg_in_s_axi_wready  = axi_wready;
assign thrtl_8ch_cfg_cfg_in_s_axi_bresp  = axi_bresp;
assign thrtl_8ch_cfg_cfg_in_s_axi_bvalid = axi_bvalid;
assign thrtl_8ch_cfg_cfg_in_s_axi_arready = axi_arready;
assign thrtl_8ch_cfg_cfg_in_s_axi_rdata  = axi_rdata;
assign thrtl_8ch_cfg_cfg_in_s_axi_rvalid = axi_rvalid;
assign thrtl_8ch_cfg_cfg_in_s_axi_rresp  = axi_rresp;
// map input 0
assign slv_wire_array[0] = slv_reg_array[0];
assign usr_rst_in = slv_wire_array[0][0];
// map input 1
assign slv_wire_array[1] = slv_reg_array[1];
assign trigger_src = slv_wire_array[1][0];
// map input 2
assign slv_wire_array[2] = slv_reg_array[2];
assign trigger_in = slv_wire_array[2][0];
// map input 3
assign slv_wire_array[3] = slv_reg_array[3];
assign frames_no_in[31:0] = slv_wire_array[3][31:0];
// map input 4
assign slv_wire_array[4] = slv_reg_array[4];
assign decim_in[15:0] = slv_wire_array[4][15:0];
// map input 5
assign slv_wire_array[5] = slv_reg_array[5];
assign data_sel_in[7:0] = slv_wire_array[5][7:0];
  initial
  begin
    slv_reg_array[0] = 32'd0;
    slv_reg_array[1] = 32'd0;
    slv_reg_array[2] = 32'd0;
    slv_reg_array[3] = 32'd0;
    slv_reg_array[4] = 32'd0;
    slv_reg_array[5] = 32'd3;
  end
  always @(axi_awaddr)
  begin
    case(axi_awaddr)
      5'd4 : dec_w = 0;
      5'd16 : dec_w = 1;
      5'd0 : dec_w = 2;
      5'd8 : dec_w = 3;
      5'd12 : dec_w = 4;
      5'd20 : dec_w = 5;
      default : dec_w = 0;
    endcase
  end
  always @(axi_araddr)
  begin
    case(axi_araddr)
      5'd4 : dec_r = 0;
      5'd16 : dec_r = 1;
      5'd0 : dec_r = 2;
      5'd8 : dec_r = 3;
      5'd12 : dec_r = 4;
      5'd20 : dec_r = 5;
      default : dec_r = 0;
    endcase
  end
  always @( posedge thrtl_8ch_cfg_cfg_in_aclk )
  begin
    if ( thrtl_8ch_cfg_cfg_in_aresetn == 1'b0 )
      begin
        axi_awready <= 1'b0;
        axi_awaddr <= 0;
      end
    else
      begin
        if (~axi_awready && thrtl_8ch_cfg_cfg_in_s_axi_awvalid && thrtl_8ch_cfg_cfg_in_s_axi_wvalid)
          begin
            axi_awready <= 1'b1;
            axi_awaddr <= thrtl_8ch_cfg_cfg_in_s_axi_awaddr;
          end
        else
          begin
            axi_awready <= 1'b0;
          end
      end
  end
  always @( posedge thrtl_8ch_cfg_cfg_in_aclk )
  begin
    if ( thrtl_8ch_cfg_cfg_in_aresetn == 1'b0 )
      begin
        axi_wready <= 1'b0;
      end
    else
      begin
        if (~axi_wready && thrtl_8ch_cfg_cfg_in_s_axi_wvalid && thrtl_8ch_cfg_cfg_in_s_axi_awvalid)
          begin
            axi_wready <= 1'b1;
          end
        else
          begin
            axi_wready <= 1'b0;
          end
      end
  end
  assign slv_reg_wren = axi_wready && thrtl_8ch_cfg_cfg_in_s_axi_wvalid && axi_awready && thrtl_8ch_cfg_cfg_in_s_axi_awvalid;
  always @( posedge thrtl_8ch_cfg_cfg_in_aclk )
  begin
    if ( thrtl_8ch_cfg_cfg_in_aresetn == 1'b0 )
      begin
        slv_reg_array[0] = 32'd0;
        slv_reg_array[1] = 32'd0;
        slv_reg_array[2] = 32'd0;
        slv_reg_array[3] = 32'd0;
        slv_reg_array[4] = 32'd0;
        slv_reg_array[5] = 32'd3;
      end
    else begin
      if (slv_reg_wren)
        begin
          for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
            if ( thrtl_8ch_cfg_cfg_in_s_axi_wstrb[byte_index] == 1 ) begin
              slv_reg_array[dec_w][(byte_index*8) +: 8] <= thrtl_8ch_cfg_cfg_in_s_axi_wdata[(byte_index*8) +: 8];
            end
        end
    end
  end
  always @( posedge thrtl_8ch_cfg_cfg_in_aclk )
  begin
    if ( thrtl_8ch_cfg_cfg_in_aresetn == 1'b0 )
      begin
        axi_bvalid  <= 0;
        axi_bresp   <= 2'b0;
      end
    else
      begin
        if (axi_awready && thrtl_8ch_cfg_cfg_in_s_axi_awvalid && ~axi_bvalid && axi_wready && thrtl_8ch_cfg_cfg_in_s_axi_wvalid)
          begin
            axi_bvalid <= 1'b1;
            axi_bresp  <= 2'b0; 
          end
        else
          begin
            if (thrtl_8ch_cfg_cfg_in_s_axi_bready && axi_bvalid)
              begin
                axi_bvalid <= 1'b0;
              end
          end
      end
  end
  always @( posedge thrtl_8ch_cfg_cfg_in_aclk )
  begin
    if ( thrtl_8ch_cfg_cfg_in_aresetn == 1'b0 )
      begin
        axi_arready <= 1'b0;
        axi_araddr  <= {ADDR_MSB{1'b0}};
      end
    else
      begin
        if (~axi_arready && thrtl_8ch_cfg_cfg_in_s_axi_arvalid)
          begin
            axi_arready <= 1'b1;
            axi_araddr  <= thrtl_8ch_cfg_cfg_in_s_axi_araddr;
          end
        else
          begin
            axi_arready <= 1'b0;
          end
      end
  end

  // AXI read response (inferred flops)
  always @( posedge thrtl_8ch_cfg_cfg_in_aclk )
  begin
    if ( thrtl_8ch_cfg_cfg_in_aresetn == 1'b0 )
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
        else if (axi_rvalid && thrtl_8ch_cfg_cfg_in_s_axi_rready)
          begin
            axi_rvalid <= 1'b0;
            axi_rresp  <= 2'b0; 
          end
      end
  end
  assign slv_reg_rden = axi_arready & thrtl_8ch_cfg_cfg_in_s_axi_arvalid & ~axi_rvalid;
  always @(thrtl_8ch_cfg_cfg_in_aresetn, slv_reg_rden, axi_araddr, slv_wire_array, dec_r)
  begin
    if ( thrtl_8ch_cfg_cfg_in_aresetn == 1'b0 )
      begin
        reg_data_out <= {C_S_AXI_DATA_WIDTH{1'b0}};
      end
    else
      begin
     reg_data_out <= slv_wire_array[dec_r];
      end
  end
  // flop for AXI read data
  always @( posedge thrtl_8ch_cfg_cfg_in_aclk )
  begin
    if ( thrtl_8ch_cfg_cfg_in_aresetn == 1'b0 )
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

  assign clk = thrtl_8ch_cfg_cfg_in_aclk;

endmodule

