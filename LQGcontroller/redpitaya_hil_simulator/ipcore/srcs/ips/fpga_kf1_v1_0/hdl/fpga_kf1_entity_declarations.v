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
module fpga_kf1_xlAsynRegister (d, rst, en, d_ce, d_clk, q_ce, q_clk, q);
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
module fpga_kf1_xltdpram
  #(parameter width = 0,
   parameter width_addr = 0,
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
  (input [width-1:0] dina,
   input wea, a_ce, a_clk, ena, rsta,
   input [width_addr-1:0] addra,
   output [width-1:0] douta,
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
  .WRITE_DATA_WIDTH_A (width),
  .READ_DATA_WIDTH_A  (width),
  .BYTE_WRITE_WIDTH_A (width),
  .ADDR_WIDTH_A       (width_addr),
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
module sysgen_concat_f9930963fd (
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
module sysgen_concat_3661dafc99 (
  input [(6 - 1):0] in0,
  input [(1 - 1):0] in1,
  input [(1 - 1):0] in2,
  output [(8 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire [(6 - 1):0] in0_1_23;
  wire in1_1_27;
  wire in2_1_31;
  wire [(8 - 1):0] y_2_1_concat;
  assign in0_1_23 = in0;
  assign in1_1_27 = in1;
  assign in2_1_31 = in2;
  assign y_2_1_concat = {in0_1_23, in1_1_27, in2_1_31};
  assign y = y_2_1_concat;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_d6c664d38e (
  output [(18 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 18'b000000000000000000;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_d3d0f6cd4c (
  output [(25 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 25'b0000000000000000000000000;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_2301c2f8c1 (
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 1'b0;
endmodule
`timescale 1 ns / 10 ps


module fpga_kf1_xlconvert (din, clk, ce, clr, en, dout);

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


module  fpga_kf1_xldsamp  (d, src_clk, src_ce, src_clr, dest_clk, dest_ce, dest_clr, en, rst, q);


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
module sysgen_expr_bffd6a35db (
  input [(2 - 1):0] a,
  input [(2 - 1):0] b,
  output [(2 - 1):0] dout,
  input clk,
  input ce,
  input clr);
  wire [(2 - 1):0] a_1_24;
  wire [(2 - 1):0] b_1_27;
  wire [(2 - 1):0] fulldout_5_2_bit;
  assign a_1_24 = a;
  assign b_1_27 = b;
  assign fulldout_5_2_bit = b_1_27 | a_1_24;
  assign dout = fulldout_5_2_bit;
endmodule
`timescale 1 ns / 10 ps
module sysgen_inverter_e0df036076 (
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
module sysgen_mux_f07a2cab4b (
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
module sysgen_mux_01a10d0c1a (
  input [(2 - 1):0] sel,
  input [(18 - 1):0] d0,
  input [(18 - 1):0] d1,
  input [(18 - 1):0] d2,
  output [(18 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire [(2 - 1):0] sel_1_20;
  wire [(18 - 1):0] d0_1_24;
  wire [(18 - 1):0] d1_1_27;
  wire [(18 - 1):0] d2_1_30;
  localparam [(18 - 1):0] const_value = 18'b000000000000000000;
  reg [(18 - 1):0] pipe_18_22[0:(1 - 1)];
  initial
    begin
      pipe_18_22[0] = 18'b000000000000000000;
    end
  wire [(18 - 1):0] pipe_18_22_front_din;
  wire [(18 - 1):0] pipe_18_22_back;
  wire pipe_18_22_push_front_pop_back_en;
  reg [(18 - 1):0] unregy_join_6_1;
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
module sysgen_mux_bb05fa83ec (
  input [(2 - 1):0] sel,
  input [(18 - 1):0] d0,
  input [(18 - 1):0] d1,
  input [(18 - 1):0] d2,
  input [(18 - 1):0] d3,
  output [(18 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire [(2 - 1):0] sel_1_20;
  wire [(18 - 1):0] d0_1_24;
  wire [(18 - 1):0] d1_1_27;
  wire [(18 - 1):0] d2_1_30;
  wire [(18 - 1):0] d3_1_33;
  reg [(18 - 1):0] unregy_join_6_1;
  assign sel_1_20 = sel;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign d2_1_30 = d2;
  assign d3_1_33 = d3;
  always @(d0_1_24 or d1_1_27 or d2_1_30 or d3_1_33 or sel_1_20)
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
        2'b10 :
          begin
            unregy_join_6_1 = d2_1_30;
          end
        default:
          begin
            unregy_join_6_1 = d3_1_33;
          end
      endcase
    end
  assign y = unregy_join_6_1;
endmodule
`timescale 1 ns / 10 ps
module fpga_kf1_xlregister (d, rst, en, ce, clk, q);
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
module sysgen_reinterpret_9e3ebfd9e1 (
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
module sysgen_relational_73cffbc801 (
  input [(18 - 1):0] a,
  input [(18 - 1):0] b,
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire signed [(18 - 1):0] a_1_31;
  wire signed [(18 - 1):0] b_1_34;
  localparam [(1 - 1):0] const_value = 1'b1;
  wire result_22_3_rel;
  assign a_1_31 = a;
  assign b_1_34 = b;
  assign result_22_3_rel = a_1_31 >= b_1_34;
  assign op = result_22_3_rel;
endmodule
`timescale 1 ns / 10 ps
module sysgen_relational_3b1a00b94d (
  input [(18 - 1):0] a,
  input [(18 - 1):0] b,
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire signed [(18 - 1):0] a_1_31;
  wire signed [(18 - 1):0] b_1_34;
  localparam [(1 - 1):0] const_value = 1'b1;
  wire result_20_3_rel;
  wire [(1 - 1):0] dout_28_3_convert;
  assign a_1_31 = a;
  assign b_1_34 = b;
  assign result_20_3_rel = a_1_31 <= b_1_34;
  assign dout_28_3_convert = {result_20_3_rel};
  assign op = dout_28_3_convert;
endmodule
`timescale 1 ns / 10 ps
module sysgen_shift_fd3f308cef (
  input [(1 - 1):0] ip,
  output [(2 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire [(1 - 1):0] ip_1_23;
  localparam [(2 - 1):0] const_value = 2'b00;
  reg [(2 - 1):0] op_mem_46_20[0:(1 - 1)];
  initial
    begin
      op_mem_46_20[0] = 2'b00;
    end
  wire [(2 - 1):0] op_mem_46_20_front_din;
  wire [(2 - 1):0] op_mem_46_20_back;
  wire op_mem_46_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1'b1;
  wire [(2 - 1):0] cast_internal_ip_25_3_lsh;
  assign ip_1_23 = ip;
  assign op_mem_46_20_back = op_mem_46_20[0];
  always @(posedge clk)
    begin:proc_op_mem_46_20
      integer i;
      if (((ce == 1'b1) && (op_mem_46_20_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_46_20[0] <= op_mem_46_20_front_din;
        end
    end
  assign cast_internal_ip_25_3_lsh = {ip_1_23, 1'b0};
  assign op_mem_46_20_push_front_pop_back_en = 1'b0;
  assign op = cast_internal_ip_25_3_lsh;
endmodule
`timescale 1 ns / 10 ps


module  fpga_kf1_xlusamp  (d, src_clk, src_ce, src_clr, dest_clk, dest_ce, dest_clr, en, q);


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
module sysgen_mux_a2d3dc6d76 (
  input [(2 - 1):0] sel,
  input [(18 - 1):0] d0,
  input [(18 - 1):0] d1,
  input [(18 - 1):0] d2,
  input [(18 - 1):0] d3,
  output [(18 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire [(2 - 1):0] sel_1_20;
  wire [(18 - 1):0] d0_1_24;
  wire [(18 - 1):0] d1_1_27;
  wire [(18 - 1):0] d2_1_30;
  wire [(18 - 1):0] d3_1_33;
  localparam [(18 - 1):0] const_value = 18'b000000000000000000;
  reg [(18 - 1):0] pipe_20_22[0:(1 - 1)];
  initial
    begin
      pipe_20_22[0] = 18'b000000000000000000;
    end
  wire [(18 - 1):0] pipe_20_22_front_din;
  wire [(18 - 1):0] pipe_20_22_back;
  wire pipe_20_22_push_front_pop_back_en;
  reg [(18 - 1):0] unregy_join_6_1;
  assign sel_1_20 = sel;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign d2_1_30 = d2;
  assign d3_1_33 = d3;
  assign pipe_20_22_back = pipe_20_22[0];
  always @(posedge clk)
    begin:proc_pipe_20_22
      integer i;
      if (((ce == 1'b1) && (pipe_20_22_push_front_pop_back_en == 1'b1)))
        begin
          pipe_20_22[0] <= pipe_20_22_front_din;
        end
    end
  always @(d0_1_24 or d1_1_27 or d2_1_30 or d3_1_33 or sel_1_20)
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
        2'b10 :
          begin
            unregy_join_6_1 = d2_1_30;
          end
        default:
          begin
            unregy_join_6_1 = d3_1_33;
          end
      endcase
    end
  assign pipe_20_22_front_din = unregy_join_6_1;
  assign pipe_20_22_push_front_pop_back_en = 1'b1;
  assign y = pipe_20_22_back;
endmodule
`timescale 1 ns / 10 ps
module sysgen_mux_c9e90427b5 (
  input [(2 - 1):0] sel,
  input [(16 - 1):0] d0,
  input [(16 - 1):0] d1,
  input [(16 - 1):0] d2,
  input [(16 - 1):0] d3,
  output [(16 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire [(2 - 1):0] sel_1_20;
  wire [(16 - 1):0] d0_1_24;
  wire [(16 - 1):0] d1_1_27;
  wire [(16 - 1):0] d2_1_30;
  wire [(16 - 1):0] d3_1_33;
  localparam [(16 - 1):0] const_value = 16'b0000000000000000;
  reg [(16 - 1):0] pipe_20_22[0:(1 - 1)];
  initial
    begin
      pipe_20_22[0] = 16'b0000000000000000;
    end
  wire [(16 - 1):0] pipe_20_22_front_din;
  wire [(16 - 1):0] pipe_20_22_back;
  wire pipe_20_22_push_front_pop_back_en;
  reg [(16 - 1):0] unregy_join_6_1;
  assign sel_1_20 = sel;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign d2_1_30 = d2;
  assign d3_1_33 = d3;
  assign pipe_20_22_back = pipe_20_22[0];
  always @(posedge clk)
    begin:proc_pipe_20_22
      integer i;
      if (((ce == 1'b1) && (pipe_20_22_push_front_pop_back_en == 1'b1)))
        begin
          pipe_20_22[0] <= pipe_20_22_front_din;
        end
    end
  always @(d0_1_24 or d1_1_27 or d2_1_30 or d3_1_33 or sel_1_20)
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
        2'b10 :
          begin
            unregy_join_6_1 = d2_1_30;
          end
        default:
          begin
            unregy_join_6_1 = d3_1_33;
          end
      endcase
    end
  assign pipe_20_22_front_din = unregy_join_6_1;
  assign pipe_20_22_push_front_pop_back_en = 1'b1;
  assign y = pipe_20_22_back;
endmodule
`timescale 1 ns / 10 ps
module sysgen_mux_915b650546 (
  input [(2 - 1):0] sel,
  input [(1 - 1):0] d0,
  input [(1 - 1):0] d1,
  input [(1 - 1):0] d2,
  output [(1 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire [(2 - 1):0] sel_1_20;
  wire d0_1_24;
  wire d1_1_27;
  wire d2_1_30;
  reg pipe_18_22[0:(1 - 1)];
  initial
    begin
      pipe_18_22[0] = 1'b0;
    end
  wire pipe_18_22_front_din;
  wire pipe_18_22_back;
  wire pipe_18_22_push_front_pop_back_en;
  reg unregy_join_6_1;
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
module sysgen_constant_695e1c5d4d (
  output [(25 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 25'b0000000010000000000000000;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_87a8ecd79a (
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 1'b1;
endmodule
`timescale 1 ns / 10 ps
module fpga_kf1_xldelay #(parameter width = -1, latency = -1, reg_retiming = 0, reset = 0)
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
module sysgen_mux_6699c60d29 (
  input [(1 - 1):0] sel,
  input [(14 - 1):0] d0,
  input [(14 - 1):0] d1,
  output [(14 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire sel_1_20;
  wire [(14 - 1):0] d0_1_24;
  wire [(14 - 1):0] d1_1_27;
  localparam [(14 - 1):0] const_value = 14'b00000000000000;
  reg [(14 - 1):0] pipe_16_22[0:(1 - 1)];
  initial
    begin
      pipe_16_22[0] = 14'b00000000000000;
    end
  wire [(14 - 1):0] pipe_16_22_front_din;
  wire [(14 - 1):0] pipe_16_22_back;
  wire pipe_16_22_push_front_pop_back_en;
  wire [(1 - 1):0] sel_internal_2_1_convert;
  reg [(14 - 1):0] unregy_join_6_1;
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
module sysgen_mux_d4afbfae9c (
  input [(1 - 1):0] sel,
  input [(14 - 1):0] d0,
  input [(14 - 1):0] d1,
  output [(14 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire sel_1_20;
  wire [(14 - 1):0] d0_1_24;
  wire [(14 - 1):0] d1_1_27;
  localparam [(14 - 1):0] const_value = 14'b00000000000000;
  reg [(14 - 1):0] pipe_16_22[0:(2 - 1)];
  initial
    begin
      pipe_16_22[0] = 14'b00000000000000;
      pipe_16_22[1] = 14'b00000000000000;
    end
  wire [(14 - 1):0] pipe_16_22_front_din;
  wire [(14 - 1):0] pipe_16_22_back;
  wire pipe_16_22_push_front_pop_back_en;
  wire [(1 - 1):0] sel_internal_2_1_convert;
  reg [(14 - 1):0] unregy_join_6_1;
  assign sel_1_20 = sel;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign pipe_16_22_back = pipe_16_22[1];
  always @(posedge clk)
    begin:proc_pipe_16_22
      integer i;
      if (((ce == 1'b1) && (pipe_16_22_push_front_pop_back_en == 1'b1)))
        begin
          for (i=1; i>=1; i=i-1)
            begin
              pipe_16_22[i] <= pipe_16_22[i-1];
            end
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
module sysgen_inverter_d51a680162 (
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
module sysgen_mux_c8952da60a (
  input [(1 - 1):0] sel,
  input [(6 - 1):0] d0,
  input [(6 - 1):0] d1,
  output [(6 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire sel_1_20;
  wire [(6 - 1):0] d0_1_24;
  wire [(6 - 1):0] d1_1_27;
  localparam [(6 - 1):0] const_value = 6'b000000;
  reg [(6 - 1):0] pipe_16_22[0:(1 - 1)];
  initial
    begin
      pipe_16_22[0] = 6'b000000;
    end
  wire [(6 - 1):0] pipe_16_22_front_din;
  wire [(6 - 1):0] pipe_16_22_back;
  wire pipe_16_22_push_front_pop_back_en;
  wire [(1 - 1):0] sel_internal_2_1_convert;
  reg [(6 - 1):0] unregy_join_6_1;
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
module sysgen_reinterpret_989059ee92 (
  input [(6 - 1):0] input_port,
  output [(6 - 1):0] output_port,
  input clk,
  input ce,
  input clr);
  wire [(6 - 1):0] input_port_1_40;
  assign input_port_1_40 = input_port;
  assign output_port = input_port_1_40;
endmodule
`timescale 1 ns / 10 ps

module  fpga_kf1_xlslice  (x, y);

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
module sysgen_mux_b34c65b900 (
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
module sysgen_relational_1ca93e1976 (
  input [(32 - 1):0] a,
  input [(32 - 1):0] b,
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire [(32 - 1):0] a_1_31;
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
  wire result_22_3_rel;
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
  assign result_22_3_rel = a_1_31 >= b_1_34;
  assign op_mem_37_22_front_din = result_22_3_rel;
  assign op_mem_37_22_push_front_pop_back_en = 1'b1;
  assign op = op_mem_37_22_back;
endmodule
`timescale 1 ns / 10 ps
module sysgen_logical_6ff523a523 (
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
module sysgen_relational_72511a64eb (
  input [(32 - 1):0] a,
  input [(32 - 1):0] b,
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire [(32 - 1):0] a_1_31;
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
  wire result_20_3_rel;
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
  assign result_20_3_rel = a_1_31 <= b_1_34;
  assign op_mem_37_22_front_din = result_20_3_rel;
  assign op_mem_37_22_push_front_pop_back_en = 1'b1;
  assign op = op_mem_37_22_back;
endmodule
`timescale 1 ns / 10 ps
module sysgen_relational_cced38b5c3 (
  input [(32 - 1):0] a,
  input [(32 - 1):0] b,
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire [(32 - 1):0] a_1_31;
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
  assign result_12_3_rel = a_1_31 == b_1_34;
  assign op_mem_37_22_front_din = result_12_3_rel;
  assign op_mem_37_22_push_front_pop_back_en = 1'b1;
  assign op = op_mem_37_22_back;
endmodule
`timescale 1 ns / 10 ps
module sysgen_delay_6909f5ee44 (
  input [(25 - 1):0] d,
  output [(25 - 1):0] q,
  input clk,
  input ce,
  input clr);
  wire [(25 - 1):0] d_1_22;
  localparam [(1 - 1):0] const_value = 1'b0;
  assign d_1_22 = d;
  assign q = d_1_22;
endmodule
`timescale 1 ns / 10 ps
module axi_clock_domain_wrapper_cfg_in_axi_lite_interface#(parameter C_S_AXI_DATA_WIDTH = 32, C_S_AXI_ADDR_WIDTH = 9, C_S_NUM_OFFSETS = 49)(
  output wire[24:0] gateway_in_b2,
  output wire[24:0] gateway_in_b1,
  output wire[24:0] gateway_in_b2_ip,
  output wire[24:0] gateway_in_b1_ip,
  output wire[24:0] gateway_in_k2_ip,
  output wire[24:0] gateway_in_k1_ip,
  output wire[24:0] gateway_in_l2_ip,
  output wire[24:0] gateway_in_l1_ip,
  output wire[24:0] gateway_in_k2,
  output wire[24:0] gateway_in_k1,
  output wire[24:0] gateway_in_l2,
  output wire[24:0] gateway_in_l1,
  output wire[24:0] gateway_in_f22_ip,
  output wire[24:0] gateway_in_f21_ip,
  output wire[24:0] gateway_in_f12_ip,
  output wire[24:0] gateway_in_f11_ip,
  output wire[24:0] gateway_in_f22,
  output wire[24:0] gateway_in_f21,
  output wire[24:0] gateway_in_f12,
  output wire[24:0] gateway_in_f11,
  output wire[17:0] x_ref_in,
  output wire[1:0] sw_override_in,
  output wire[31:0] reg_timer_period,
  output wire[31:0] reg_rp_switch_tf,
  output wire[31:0] reg_rp_switch_t0,
  output wire[31:0] reg_out_switch_tf,
  output wire[31:0] reg_out_switch_t0,
  output wire[13:0] out_switch_on,
  output wire[13:0] out_switch_off,
  output wire[1:0] fb_src_switch_in,
  output wire[24:0] ema_const_slow_in,
  output wire[24:0] ema_const_in,
  output wire[31:0] dma_trigger_time,
  output wire[24:0] div_scale_in,
  output wire[1:0] div_mux_selector,
  output wire[17:0] barrier_ub_in,
  output wire[17:0] barrier_lb_in,
  output wire[0:0] barrier_ram_we_in,
  output wire[9:0] barrier_ram_addr_in,
  output wire[9:0] barrier_c_ofst_idx_in,
  output wire[24:0] barrier_c_idx_in,
  output wire[24:0] barrier_c1_data_in,
  output wire[24:0] barrier_c0_data_in,
  output wire[15:0] fixed_led_pattern_in,
  output wire[0:0] disco_mode_enable,
  output wire[1:0] ap_ip_switch_in,
  output wire[13:0] adc_ch2_offst,
  output wire[13:0] adc_ch1_offst,
  output wire[0:0] registers_wren_in,
  output wire axi_clock_domain_wrapper_clk,
  input wire axi_clock_domain_wrapper_cfg_in_aclk,
  input wire axi_clock_domain_wrapper_cfg_in_aresetn,
  input  wire [C_S_AXI_ADDR_WIDTH - 1:0] axi_clock_domain_wrapper_cfg_in_s_axi_awaddr,
  input  wire axi_clock_domain_wrapper_cfg_in_s_axi_awvalid,
  output wire axi_clock_domain_wrapper_cfg_in_s_axi_awready,
  input  wire [C_S_AXI_DATA_WIDTH-1:0] axi_clock_domain_wrapper_cfg_in_s_axi_wdata,
  input  wire [C_S_AXI_DATA_WIDTH/8-1:0] axi_clock_domain_wrapper_cfg_in_s_axi_wstrb,
  input  wire axi_clock_domain_wrapper_cfg_in_s_axi_wvalid,
  output wire axi_clock_domain_wrapper_cfg_in_s_axi_wready,
  output wire [1:0] axi_clock_domain_wrapper_cfg_in_s_axi_bresp,
  output wire axi_clock_domain_wrapper_cfg_in_s_axi_bvalid,
  input  wire axi_clock_domain_wrapper_cfg_in_s_axi_bready,
  input  wire [C_S_AXI_ADDR_WIDTH - 1:0] axi_clock_domain_wrapper_cfg_in_s_axi_araddr,
  input  wire axi_clock_domain_wrapper_cfg_in_s_axi_arvalid,
  output wire axi_clock_domain_wrapper_cfg_in_s_axi_arready,
  output wire [C_S_AXI_DATA_WIDTH-1:0] axi_clock_domain_wrapper_cfg_in_s_axi_rdata,
  output wire [1:0] axi_clock_domain_wrapper_cfg_in_s_axi_rresp,
  output wire axi_clock_domain_wrapper_cfg_in_s_axi_rvalid,
  input  wire axi_clock_domain_wrapper_cfg_in_s_axi_rready
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
assign axi_clock_domain_wrapper_cfg_in_s_axi_awready = axi_awready;
assign axi_clock_domain_wrapper_cfg_in_s_axi_wready  = axi_wready;
assign axi_clock_domain_wrapper_cfg_in_s_axi_bresp  = axi_bresp;
assign axi_clock_domain_wrapper_cfg_in_s_axi_bvalid = axi_bvalid;
assign axi_clock_domain_wrapper_cfg_in_s_axi_arready = axi_arready;
assign axi_clock_domain_wrapper_cfg_in_s_axi_rdata  = axi_rdata;
assign axi_clock_domain_wrapper_cfg_in_s_axi_rvalid = axi_rvalid;
assign axi_clock_domain_wrapper_cfg_in_s_axi_rresp  = axi_rresp;
// map input 0
assign slv_wire_array[0] = slv_reg_array[0];
assign gateway_in_b2[24:0] = slv_wire_array[0][24:0];
// map input 1
assign slv_wire_array[1] = slv_reg_array[1];
assign gateway_in_b1[24:0] = slv_wire_array[1][24:0];
// map input 2
assign slv_wire_array[2] = slv_reg_array[2];
assign gateway_in_b2_ip[24:0] = slv_wire_array[2][24:0];
// map input 3
assign slv_wire_array[3] = slv_reg_array[3];
assign gateway_in_b1_ip[24:0] = slv_wire_array[3][24:0];
// map input 4
assign slv_wire_array[4] = slv_reg_array[4];
assign gateway_in_k2_ip[24:0] = slv_wire_array[4][24:0];
// map input 5
assign slv_wire_array[5] = slv_reg_array[5];
assign gateway_in_k1_ip[24:0] = slv_wire_array[5][24:0];
// map input 6
assign slv_wire_array[6] = slv_reg_array[6];
assign gateway_in_l2_ip[24:0] = slv_wire_array[6][24:0];
// map input 7
assign slv_wire_array[7] = slv_reg_array[7];
assign gateway_in_l1_ip[24:0] = slv_wire_array[7][24:0];
// map input 8
assign slv_wire_array[8] = slv_reg_array[8];
assign gateway_in_k2[24:0] = slv_wire_array[8][24:0];
// map input 9
assign slv_wire_array[9] = slv_reg_array[9];
assign gateway_in_k1[24:0] = slv_wire_array[9][24:0];
// map input 10
assign slv_wire_array[10] = slv_reg_array[10];
assign gateway_in_l2[24:0] = slv_wire_array[10][24:0];
// map input 11
assign slv_wire_array[11] = slv_reg_array[11];
assign gateway_in_l1[24:0] = slv_wire_array[11][24:0];
// map input 12
assign slv_wire_array[12] = slv_reg_array[12];
assign gateway_in_f22_ip[24:0] = slv_wire_array[12][24:0];
// map input 13
assign slv_wire_array[13] = slv_reg_array[13];
assign gateway_in_f21_ip[24:0] = slv_wire_array[13][24:0];
// map input 14
assign slv_wire_array[14] = slv_reg_array[14];
assign gateway_in_f12_ip[24:0] = slv_wire_array[14][24:0];
// map input 15
assign slv_wire_array[15] = slv_reg_array[15];
assign gateway_in_f11_ip[24:0] = slv_wire_array[15][24:0];
// map input 16
assign slv_wire_array[16] = slv_reg_array[16];
assign gateway_in_f22[24:0] = slv_wire_array[16][24:0];
// map input 17
assign slv_wire_array[17] = slv_reg_array[17];
assign gateway_in_f21[24:0] = slv_wire_array[17][24:0];
// map input 18
assign slv_wire_array[18] = slv_reg_array[18];
assign gateway_in_f12[24:0] = slv_wire_array[18][24:0];
// map input 19
assign slv_wire_array[19] = slv_reg_array[19];
assign gateway_in_f11[24:0] = slv_wire_array[19][24:0];
// map input 20
assign slv_wire_array[20] = slv_reg_array[20];
assign x_ref_in[17:0] = slv_wire_array[20][17:0];
// map input 21
assign slv_wire_array[21] = slv_reg_array[21];
assign sw_override_in[1:0] = slv_wire_array[21][1:0];
// map input 22
assign slv_wire_array[22] = slv_reg_array[22];
assign reg_timer_period[31:0] = slv_wire_array[22][31:0];
// map input 23
assign slv_wire_array[23] = slv_reg_array[23];
assign reg_rp_switch_tf[31:0] = slv_wire_array[23][31:0];
// map input 24
assign slv_wire_array[24] = slv_reg_array[24];
assign reg_rp_switch_t0[31:0] = slv_wire_array[24][31:0];
// map input 25
assign slv_wire_array[25] = slv_reg_array[25];
assign reg_out_switch_tf[31:0] = slv_wire_array[25][31:0];
// map input 26
assign slv_wire_array[26] = slv_reg_array[26];
assign reg_out_switch_t0[31:0] = slv_wire_array[26][31:0];
// map input 27
assign slv_wire_array[27] = slv_reg_array[27];
assign out_switch_on[13:0] = slv_wire_array[27][13:0];
// map input 28
assign slv_wire_array[28] = slv_reg_array[28];
assign out_switch_off[13:0] = slv_wire_array[28][13:0];
// map input 29
assign slv_wire_array[29] = slv_reg_array[29];
assign fb_src_switch_in[1:0] = slv_wire_array[29][1:0];
// map input 30
assign slv_wire_array[30] = slv_reg_array[30];
assign ema_const_slow_in[24:0] = slv_wire_array[30][24:0];
// map input 31
assign slv_wire_array[31] = slv_reg_array[31];
assign ema_const_in[24:0] = slv_wire_array[31][24:0];
// map input 32
assign slv_wire_array[32] = slv_reg_array[32];
assign dma_trigger_time[31:0] = slv_wire_array[32][31:0];
// map input 33
assign slv_wire_array[33] = slv_reg_array[33];
assign div_scale_in[24:0] = slv_wire_array[33][24:0];
// map input 34
assign slv_wire_array[34] = slv_reg_array[34];
assign div_mux_selector[1:0] = slv_wire_array[34][1:0];
// map input 35
assign slv_wire_array[35] = slv_reg_array[35];
assign barrier_ub_in[17:0] = slv_wire_array[35][17:0];
// map input 36
assign slv_wire_array[36] = slv_reg_array[36];
assign barrier_lb_in[17:0] = slv_wire_array[36][17:0];
// map input 37
assign slv_wire_array[37] = slv_reg_array[37];
assign barrier_ram_we_in = slv_wire_array[37][0];
// map input 38
assign slv_wire_array[38] = slv_reg_array[38];
assign barrier_ram_addr_in[9:0] = slv_wire_array[38][9:0];
// map input 39
assign slv_wire_array[39] = slv_reg_array[39];
assign barrier_c_ofst_idx_in[9:0] = slv_wire_array[39][9:0];
// map input 40
assign slv_wire_array[40] = slv_reg_array[40];
assign barrier_c_idx_in[24:0] = slv_wire_array[40][24:0];
// map input 41
assign slv_wire_array[41] = slv_reg_array[41];
assign barrier_c1_data_in[24:0] = slv_wire_array[41][24:0];
// map input 42
assign slv_wire_array[42] = slv_reg_array[42];
assign barrier_c0_data_in[24:0] = slv_wire_array[42][24:0];
// map input 43
assign slv_wire_array[43] = slv_reg_array[43];
assign fixed_led_pattern_in[15:0] = slv_wire_array[43][15:0];
// map input 44
assign slv_wire_array[44] = slv_reg_array[44];
assign disco_mode_enable = slv_wire_array[44][0];
// map input 45
assign slv_wire_array[45] = slv_reg_array[45];
assign ap_ip_switch_in[1:0] = slv_wire_array[45][1:0];
// map input 46
assign slv_wire_array[46] = slv_reg_array[46];
assign adc_ch2_offst[13:0] = slv_wire_array[46][13:0];
// map input 47
assign slv_wire_array[47] = slv_reg_array[47];
assign adc_ch1_offst[13:0] = slv_wire_array[47][13:0];
// map input 48
assign slv_wire_array[48] = slv_reg_array[48];
assign registers_wren_in = slv_wire_array[48][0];
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
    slv_reg_array[30] = 32'd7;
    slv_reg_array[31] = 32'd655;
    slv_reg_array[32] = 32'd0;
    slv_reg_array[33] = 32'd65536;
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
  end
  always @(axi_awaddr)
  begin
    case(axi_awaddr)
      9'd140 : dec_w = 0;
      9'd136 : dec_w = 1;
      9'd148 : dec_w = 2;
      9'd144 : dec_w = 3;
      9'd60 : dec_w = 4;
      9'd56 : dec_w = 5;
      9'd52 : dec_w = 6;
      9'd48 : dec_w = 7;
      9'd28 : dec_w = 8;
      9'd24 : dec_w = 9;
      9'd20 : dec_w = 10;
      9'd16 : dec_w = 11;
      9'd44 : dec_w = 12;
      9'd40 : dec_w = 13;
      9'd36 : dec_w = 14;
      9'd32 : dec_w = 15;
      9'd12 : dec_w = 16;
      9'd8 : dec_w = 17;
      9'd4 : dec_w = 18;
      9'd0 : dec_w = 19;
      9'd156 : dec_w = 20;
      9'd88 : dec_w = 21;
      9'd124 : dec_w = 22;
      9'd104 : dec_w = 23;
      9'd100 : dec_w = 24;
      9'd112 : dec_w = 25;
      9'd108 : dec_w = 26;
      9'd116 : dec_w = 27;
      9'd120 : dec_w = 28;
      9'd256 : dec_w = 29;
      9'd132 : dec_w = 30;
      9'd84 : dec_w = 31;
      9'd128 : dec_w = 32;
      9'd80 : dec_w = 33;
      9'd76 : dec_w = 34;
      9'd260 : dec_w = 35;
      9'd264 : dec_w = 36;
      9'd288 : dec_w = 37;
      9'd276 : dec_w = 38;
      9'd272 : dec_w = 39;
      9'd268 : dec_w = 40;
      9'd284 : dec_w = 41;
      9'd280 : dec_w = 42;
      9'd72 : dec_w = 43;
      9'd68 : dec_w = 44;
      9'd64 : dec_w = 45;
      9'd96 : dec_w = 46;
      9'd92 : dec_w = 47;
      9'd152 : dec_w = 48;
      default : dec_w = 0;
    endcase
  end
  always @(axi_araddr)
  begin
    case(axi_araddr)
      9'd140 : dec_r = 0;
      9'd136 : dec_r = 1;
      9'd148 : dec_r = 2;
      9'd144 : dec_r = 3;
      9'd60 : dec_r = 4;
      9'd56 : dec_r = 5;
      9'd52 : dec_r = 6;
      9'd48 : dec_r = 7;
      9'd28 : dec_r = 8;
      9'd24 : dec_r = 9;
      9'd20 : dec_r = 10;
      9'd16 : dec_r = 11;
      9'd44 : dec_r = 12;
      9'd40 : dec_r = 13;
      9'd36 : dec_r = 14;
      9'd32 : dec_r = 15;
      9'd12 : dec_r = 16;
      9'd8 : dec_r = 17;
      9'd4 : dec_r = 18;
      9'd0 : dec_r = 19;
      9'd156 : dec_r = 20;
      9'd88 : dec_r = 21;
      9'd124 : dec_r = 22;
      9'd104 : dec_r = 23;
      9'd100 : dec_r = 24;
      9'd112 : dec_r = 25;
      9'd108 : dec_r = 26;
      9'd116 : dec_r = 27;
      9'd120 : dec_r = 28;
      9'd256 : dec_r = 29;
      9'd132 : dec_r = 30;
      9'd84 : dec_r = 31;
      9'd128 : dec_r = 32;
      9'd80 : dec_r = 33;
      9'd76 : dec_r = 34;
      9'd260 : dec_r = 35;
      9'd264 : dec_r = 36;
      9'd288 : dec_r = 37;
      9'd276 : dec_r = 38;
      9'd272 : dec_r = 39;
      9'd268 : dec_r = 40;
      9'd284 : dec_r = 41;
      9'd280 : dec_r = 42;
      9'd72 : dec_r = 43;
      9'd68 : dec_r = 44;
      9'd64 : dec_r = 45;
      9'd96 : dec_r = 46;
      9'd92 : dec_r = 47;
      9'd152 : dec_r = 48;
      default : dec_r = 0;
    endcase
  end
  always @( posedge axi_clock_domain_wrapper_cfg_in_aclk )
  begin
    if ( axi_clock_domain_wrapper_cfg_in_aresetn == 1'b0 )
      begin
        axi_awready <= 1'b0;
        axi_awaddr <= 0;
      end
    else
      begin
        if (~axi_awready && axi_clock_domain_wrapper_cfg_in_s_axi_awvalid && axi_clock_domain_wrapper_cfg_in_s_axi_wvalid)
          begin
            axi_awready <= 1'b1;
            axi_awaddr <= axi_clock_domain_wrapper_cfg_in_s_axi_awaddr;
          end
        else
          begin
            axi_awready <= 1'b0;
          end
      end
  end
  always @( posedge axi_clock_domain_wrapper_cfg_in_aclk )
  begin
    if ( axi_clock_domain_wrapper_cfg_in_aresetn == 1'b0 )
      begin
        axi_wready <= 1'b0;
      end
    else
      begin
        if (~axi_wready && axi_clock_domain_wrapper_cfg_in_s_axi_wvalid && axi_clock_domain_wrapper_cfg_in_s_axi_awvalid)
          begin
            axi_wready <= 1'b1;
          end
        else
          begin
            axi_wready <= 1'b0;
          end
      end
  end
  assign slv_reg_wren = axi_wready && axi_clock_domain_wrapper_cfg_in_s_axi_wvalid && axi_awready && axi_clock_domain_wrapper_cfg_in_s_axi_awvalid;
  always @( posedge axi_clock_domain_wrapper_cfg_in_aclk )
  begin
    if ( axi_clock_domain_wrapper_cfg_in_aresetn == 1'b0 )
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
        slv_reg_array[30] = 32'd7;
        slv_reg_array[31] = 32'd655;
        slv_reg_array[32] = 32'd0;
        slv_reg_array[33] = 32'd65536;
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
      end
    else begin
      if (slv_reg_wren)
        begin
          for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
            if ( axi_clock_domain_wrapper_cfg_in_s_axi_wstrb[byte_index] == 1 ) begin
              slv_reg_array[dec_w][(byte_index*8) +: 8] <= axi_clock_domain_wrapper_cfg_in_s_axi_wdata[(byte_index*8) +: 8];
            end
        end
    end
  end
  always @( posedge axi_clock_domain_wrapper_cfg_in_aclk )
  begin
    if ( axi_clock_domain_wrapper_cfg_in_aresetn == 1'b0 )
      begin
        axi_bvalid  <= 0;
        axi_bresp   <= 2'b0;
      end
    else
      begin
        if (axi_awready && axi_clock_domain_wrapper_cfg_in_s_axi_awvalid && ~axi_bvalid && axi_wready && axi_clock_domain_wrapper_cfg_in_s_axi_wvalid)
          begin
            axi_bvalid <= 1'b1;
            axi_bresp  <= 2'b0; 
          end
        else
          begin
            if (axi_clock_domain_wrapper_cfg_in_s_axi_bready && axi_bvalid)
              begin
                axi_bvalid <= 1'b0;
              end
          end
      end
  end
  always @( posedge axi_clock_domain_wrapper_cfg_in_aclk )
  begin
    if ( axi_clock_domain_wrapper_cfg_in_aresetn == 1'b0 )
      begin
        axi_arready <= 1'b0;
        axi_araddr  <= {ADDR_MSB{1'b0}};
      end
    else
      begin
        if (~axi_arready && axi_clock_domain_wrapper_cfg_in_s_axi_arvalid)
          begin
            axi_arready <= 1'b1;
            axi_araddr  <= axi_clock_domain_wrapper_cfg_in_s_axi_araddr;
          end
        else
          begin
            axi_arready <= 1'b0;
          end
      end
  end

  // AXI read response (inferred flops)
  always @( posedge axi_clock_domain_wrapper_cfg_in_aclk )
  begin
    if ( axi_clock_domain_wrapper_cfg_in_aresetn == 1'b0 )
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
        else if (axi_rvalid && axi_clock_domain_wrapper_cfg_in_s_axi_rready)
          begin
            axi_rvalid <= 1'b0;
            axi_rresp  <= 2'b0; 
          end
      end
  end
  assign slv_reg_rden = axi_arready & axi_clock_domain_wrapper_cfg_in_s_axi_arvalid & ~axi_rvalid;
  always @(axi_clock_domain_wrapper_cfg_in_aresetn, slv_reg_rden, axi_araddr, slv_wire_array, dec_r)
  begin
    if ( axi_clock_domain_wrapper_cfg_in_aresetn == 1'b0 )
      begin
        reg_data_out <= {C_S_AXI_DATA_WIDTH{1'b0}};
      end
    else
      begin
     reg_data_out <= slv_wire_array[dec_r];
      end
  end
  // flop for AXI read data
  always @( posedge axi_clock_domain_wrapper_cfg_in_aclk )
  begin
    if ( axi_clock_domain_wrapper_cfg_in_aresetn == 1'b0 )
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

  assign axi_clock_domain_wrapper_clk = axi_clock_domain_wrapper_cfg_in_aclk;

endmodule

module fpga_kf1_xladdsub (a, b, c_in, ce, clr, clk, rst, en, c_out, s);
 
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


if (core_name0 == "fpga_kf1_c_addsub_v12_0_i0") 
     begin:comp0
fpga_kf1_c_addsub_v12_0_i0 core_instance0 ( 
         .A(full_a),
         .CLK(clk),
         .CE(internal_ce),
         .S(core_s),
         .B(full_b) 
       ); 
     end 

if (core_name0 == "fpga_kf1_c_addsub_v12_0_i1") 
     begin:comp1
fpga_kf1_c_addsub_v12_0_i1 core_instance1 ( 
         .A(full_a),
         .S(core_s),
         .B(full_b) 
       ); 
     end 

if (core_name0 == "fpga_kf1_c_addsub_v12_0_i2") 
     begin:comp2
fpga_kf1_c_addsub_v12_0_i2 core_instance2 ( 
         .A(full_a),
         .S(core_s),
         .B(full_b) 
       ); 
     end 

if (core_name0 == "fpga_kf1_c_addsub_v12_0_i3") 
     begin:comp3
fpga_kf1_c_addsub_v12_0_i3 core_instance3 ( 
         .A(full_a),
         .S(core_s),
         .B(full_b) 
       ); 
     end 

if (core_name0 == "fpga_kf1_c_addsub_v12_0_i4") 
     begin:comp4
fpga_kf1_c_addsub_v12_0_i4 core_instance4 ( 
         .A(full_a),
         .CLK(clk),
         .CE(internal_ce),
         .S(core_s),
         .B(full_b) 
       ); 
     end 

if (core_name0 == "fpga_kf1_c_addsub_v12_0_i5") 
     begin:comp5
fpga_kf1_c_addsub_v12_0_i5 core_instance5 ( 
         .A(full_a),
         .CLK(clk),
         .CE(internal_ce),
         .S(core_s),
         .B(full_b) 
       ); 
     end 

if (core_name0 == "fpga_kf1_c_addsub_v12_0_i6") 
     begin:comp6
fpga_kf1_c_addsub_v12_0_i6 core_instance6 ( 
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

module fpga_kf1_xlcounter_free  (ce, clr, clk, op, up, load, din, en, rst);
 
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



if (core_name0 == "fpga_kf1_c_counter_binary_v12_0_i0") 
     begin:comp0
fpga_kf1_c_counter_binary_v12_0_i0 core_instance0 ( 
        .CLK(clk),
        .CE(core_ce),
        .SINIT(core_sinit),
        .Q(op_net) 
       ); 
     end 

endgenerate 
 endmodule
module fpga_kf1_xlcounter_limit (ce, clr, clk, op, up, en, rst);
 
 parameter core_name0= "";
 parameter op_width= 5;
 parameter op_arith= `xlSigned;
 parameter cnt_63_48 = 0;
 parameter cnt_47_32 = 0;
 parameter cnt_31_16 = 0;
 parameter cnt_15_0  = 0;
 parameter count_limited= 0;
 
    input  ce, clr, clk;
    input rst, en;  
    input up;
    output [op_width-1:0] op;
 
 parameter [63:0] cnt_to = { cnt_63_48[15:0], cnt_47_32[15:0], cnt_31_16[15:0], cnt_15_0[15:0]};
 parameter [(8*op_width)-1:0] oneStr = { op_width{"1"}}; 
    
 reg op_thresh0;
 wire core_sinit, core_ce;
 wire rst_overrides_en;
 wire [op_width-1:0] op_net;
 
    assign op = op_net;
    assign core_ce = ce & en;
    assign rst_overrides_en = rst | en;
    
 generate
 
    if (count_limited == 1)
      begin :limit
 	always @(op_net)
 	  begin:eq_cnt_to
 	     op_thresh0 = (op_net == cnt_to[op_width-1:0])? 1'b1 : 1'b0;
 	  end
         assign core_sinit = (op_thresh0 | clr | rst) & ce & rst_overrides_en;
      end
    if (count_limited == 0)
      begin :no_limit
 	assign core_sinit = (clr | rst) & ce & rst_overrides_en;
      end



if (core_name0 == "fpga_kf1_c_counter_binary_v12_0_i1") 
     begin:comp0
fpga_kf1_c_counter_binary_v12_0_i1 core_instance0 ( 
        .CLK(clk),
        .CE(core_ce),
        .SINIT(core_sinit),
        .Q(op_net) 
       ); 
     end 

endgenerate
 
 endmodule

module fpga_kf1_xlfpconvert  (din, ce, clr, clk, rst, en, dout);
 
 parameter core_name0= "";
 parameter din_width= 32;
 parameter din_bin_pt= 24;
 parameter din_arith= `xlFloat;
 parameter dout_width= 32;
 parameter dout_bin_pt= 24;
 parameter dout_arith= `xlFloat;
 parameter rst_width= 1;
 parameter rst_bin_pt= 0;
 parameter rst_arith= `xlUnsigned;
 parameter en_width= 1;
 parameter en_bin_pt= 0;
 parameter en_arith= `xlUnsigned;
 parameter din_tdata_width= 32;   
 parameter dout_tdata_width= 32;  
 parameter extra_registers= 0;
 parameter latency= 0;
 parameter quantization= `xlTruncate;
 parameter overflow= `xlWrap;
 parameter c_latency= 0;
 
 input [din_width-1:0] din;
 input ce, clr, clk, rst, en;
 output [dout_width-1:0] dout;
 
 wire  a_tvalid_net;
 wire  [din_tdata_width-1:0] a_tdata;
 wire  result_tvalid_net;
 wire  [dout_tdata_width-1:0] result_tdata;
 wire  internal_clr;
 wire  internal_ce;
 wire  [dout_width-1:0] result;
 
 assign internal_clr = (clr | rst) & ce;
 assign internal_ce = ce & en;
 
 assign a_tvalid_net = 1'b1;
 assign a_tdata[din_width-1:0] = din[din_width-1:0];
 assign result[dout_width-1:0] = result_tdata[dout_width-1:0];
 
 generate
 


if (core_name0 == "fpga_kf1_floating_point_v7_1_i0") 
     begin:comp0
fpga_kf1_floating_point_v7_1_i0 core_instance0 ( 
         .s_axis_a_tvalid(a_tvalid_net),
         .s_axis_a_tdata(a_tdata),
         .aclk(clk),
         .aclken(internal_ce),
         .m_axis_result_tvalid(result_tvalid_net),
         .m_axis_result_tdata(result_tdata) 
       ); 
     end 

if (core_name0 == "fpga_kf1_floating_point_v7_1_i2") 
     begin:comp1
fpga_kf1_floating_point_v7_1_i2 core_instance1 ( 
         .s_axis_a_tvalid(a_tvalid_net),
         .s_axis_a_tdata(a_tdata),
         .aclk(clk),
         .aclken(internal_ce),
         .m_axis_result_tvalid(result_tvalid_net),
         .m_axis_result_tdata(result_tdata) 
       ); 
     end 

endgenerate
 
 generate
   if (extra_registers > 0)
   begin:latency_gt_0
     synth_reg # (dout_width, extra_registers)
       extra_reg (
         .i(result),
         .ce(internal_ce),
         .clr(internal_clr),
         .clk(clk),
         .o(dout));
   end 
 endgenerate
 
 generate
   if (extra_registers == 0)
   begin:latency_eq_0
     assign dout = result;
   end 
 endgenerate
 
 endmodule
 
module fpga_kf1_xlfpreciprocal (a, ce, clr, clk, a_tvalid, a_tlast, a_tuser, rst, en, result_tready, a_tready, result_tvalid, result_tlast, underflow, div_by_zero, op);
 
 parameter core_name0= "";
 parameter a_width= 32;
 parameter a_bin_pt= 24;
 parameter a_arith= `xlFloat;
 parameter op_width= 32;
 parameter op_bin_pt= 24;
 parameter op_arith= `xlFloat;
 parameter a_tuser_width= 1;
 parameter result_tuser_width= 1;
 parameter rst_width= 1;
 parameter rst_bin_pt= 0;
 parameter rst_arith= `xlUnsigned;
 parameter en_width= 1;
 parameter en_bin_pt= 0;
 parameter en_arith= `xlUnsigned;
 parameter a_tdata_width= 32; 
 parameter op_tdata_width= 32; 
 parameter extra_registers= 0;
 parameter latency= 0;
 parameter quantization= `xlTruncate;
 parameter overflow= `xlWrap;
 parameter c_latency= 0;
 parameter c_blocking= 0;
 parameter c_underflow= 0;
 parameter c_div_by_zero= 0;
 parameter c_underflow_idx= 0;
 parameter c_div_by_zero_idx= 0;
 
 input [a_width-1:0] a;
 input ce, clr, clk;
 input a_tvalid, a_tlast;
 input [a_tuser_width-1:0] a_tuser;
 input rst, en;
 output result_tready;
 output a_tready;
 output result_tvalid, result_tlast;
 output underflow;
 output div_by_zero;
 output [op_width-1:0] op;
 
 wire  a_tvalid_net, a_tready_net, a_tlast_net;
 wire  [a_tdata_width-1:0] a_tdata;
 wire  result_tvalid_net, result_tready_net, result_tlast_net;
 wire  [op_tdata_width-1:0] result_tdata;
 wire  internal_clr;
 wire  internal_ce;
 wire  [result_tuser_width-1:0] result_tuser;
 wire  [op_width-1:0] result;
 
 assign internal_clr = (clr | rst) & ce;
 assign internal_ce = ce & en;
 
 generate
   if (c_blocking > 0)
   begin:axi_handshake_on
     assign a_tvalid_net = a_tvalid;
     assign result_tvalid = result_tvalid_net;
   end // axi_handshake_on
 endgenerate
 
 generate
   if (c_blocking == 0)
   begin:axi_handshake_off
     assign a_tvalid_net = 1'b1;
   end // axi_handshake_off
 endgenerate
 
 assign a_tlast_net = a_tlast;
 assign result_tready_net = result_tready;
 assign a_tready = a_tready_net;
 assign result_tlast = result_tlast_net;
 assign a_tdata[a_width-1:0] = a[a_width-1:0];
 assign result[op_width-1:0] = result_tdata[op_width-1:0];
 
 generate
 


if (core_name0 == "fpga_kf1_floating_point_v7_1_i1") 
     begin:comp0
fpga_kf1_floating_point_v7_1_i1 core_instance0 ( 
         .s_axis_a_tvalid(a_tvalid_net),
         .s_axis_a_tdata(a_tdata),
         .aclk(clk),
         .aclken(internal_ce),
         .m_axis_result_tvalid(result_tvalid_net),
         .m_axis_result_tdata(result_tdata) 
       ); 
     end 

endgenerate
 
 generate
 if (extra_registers > 0)
 begin:latency_gt_0
 synth_reg # (op_width, extra_registers)
 extra_reg (
 .i(result),
 .ce(internal_ce),
 .clr(internal_clr),
 .clk(clk),
 .o(op));
 end 
 endgenerate
 
 generate
 if (extra_registers == 0)
 begin:latency_eq_0
 assign op = result;
 end 
 endgenerate
 
 generate
 if (c_underflow == 1)
 begin:tie_underflow
 assign underflow = result_tuser[c_underflow_idx];
 end 
 endgenerate
 
 generate
 if (c_div_by_zero == 1)
 begin:tie_div_by_zero
 assign div_by_zero = result_tuser[c_div_by_zero_idx];
 end 
 endgenerate
 
 endmodule

module fpga_kf1_xlmult (a, b, ce, clr, clk, core_ce, core_clr,core_clk, rst, en,p);
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
 


if (core_name0 == "fpga_kf1_mult_gen_v12_0_i0") 
     begin:comp0
fpga_kf1_mult_gen_v12_0_i0 core_instance0 ( 
        .A(tmp_a),
        .B(tmp_b),
        .P(tmp_p) 
       ); 
     end 

if (core_name0 == "fpga_kf1_mult_gen_v12_0_i1") 
     begin:comp1
fpga_kf1_mult_gen_v12_0_i1 core_instance1 ( 
        .A(tmp_a),
        .B(tmp_b),
        .P(tmp_p) 
       ); 
     end 

if (core_name0 == "fpga_kf1_mult_gen_v12_0_i2") 
     begin:comp2
fpga_kf1_mult_gen_v12_0_i2 core_instance2 ( 
        .A(tmp_a),
        .B(tmp_b),
        .P(tmp_p) 
       ); 
     end 

if (core_name0 == "fpga_kf1_mult_gen_v12_0_i3") 
     begin:comp3
fpga_kf1_mult_gen_v12_0_i3 core_instance3 ( 
        .A(tmp_a),
        .B(tmp_b),
        .CLK(clk),
        .CE(internal_ce),
        .SCLR(internal_clr),
        .P(tmp_p) 
       ); 
     end 

if (core_name0 == "fpga_kf1_mult_gen_v12_0_i4") 
     begin:comp4
fpga_kf1_mult_gen_v12_0_i4 core_instance4 ( 
        .A(tmp_a),
        .B(tmp_b),
        .CLK(clk),
        .CE(internal_ce),
        .SCLR(internal_clr),
        .P(tmp_p) 
       ); 
     end 

if (core_name0 == "fpga_kf1_mult_gen_v12_0_i5") 
     begin:comp5
fpga_kf1_mult_gen_v12_0_i5 core_instance5 ( 
        .A(tmp_a),
        .B(tmp_b),
        .P(tmp_p) 
       ); 
     end 

if (core_name0 == "fpga_kf1_mult_gen_v12_0_i6") 
     begin:comp6
fpga_kf1_mult_gen_v12_0_i6 core_instance6 ( 
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

