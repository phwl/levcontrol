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
module fpga_kf_2dof_xlAsynRegister (d, rst, en, d_ce, d_clk, q_ce, q_clk, q);
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
module fpga_kf_2dof_xltdpram
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
module sysgen_concat_dd02c432f9 (
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
module sysgen_concat_33701a6c2a (
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
module sysgen_constant_07d63e1f77 (
  output [(18 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 18'b000000000000000000;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_0f60f053a0 (
  output [(25 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 25'b0000000000000000000000000;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_a173817625 (
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 1'b0;
endmodule
`timescale 1 ns / 10 ps


module fpga_kf_2dof_xlconvert (din, clk, ce, clr, en, dout);

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


module  fpga_kf_2dof_xldsamp  (d, src_clk, src_ce, src_clr, dest_clk, dest_ce, dest_clr, en, rst, q);


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
module sysgen_expr_366839411f (
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
module sysgen_inverter_3dc96c12b4 (
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
module sysgen_mux_301544ab71 (
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
module fpga_kf_2dof_xlregister (d, rst, en, ce, clk, q);
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
module sysgen_reinterpret_5a95ee8bfc (
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
module sysgen_relational_d42f24e0be (
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
module sysgen_relational_bb8bd277d9 (
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
module sysgen_shift_8b78ab2984 (
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


module  fpga_kf_2dof_xlusamp  (d, src_clk, src_ce, src_clr, dest_clk, dest_ce, dest_clr, en, q);


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
module sysgen_mux_ed00d43067 (
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
module sysgen_addsub_9277d5325d (
  input [(20 - 1):0] a,
  input [(20 - 1):0] b,
  output [(20 - 1):0] s,
  input clk,
  input ce,
  input clr);
  wire signed [(20 - 1):0] a_17_32;
  wire signed [(20 - 1):0] b_17_35;
  localparam signed [(20 - 1):0] const_value = 20'sb00000000000000000000;
  reg signed [(20 - 1):0] op_mem_91_20[0:(1 - 1)];
  initial
    begin
      op_mem_91_20[0] = 20'b00000000000000000000;
    end
  wire signed [(20 - 1):0] op_mem_91_20_front_din;
  wire signed [(20 - 1):0] op_mem_91_20_back;
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
  wire signed [(21 - 1):0] cast_69_18;
  wire signed [(21 - 1):0] cast_69_22;
  wire signed [(21 - 1):0] internal_s_69_5_addsub;
  localparam [(1 - 1):0] const_value_x_000005 = 1'b0;
  wire signed [(20 - 1):0] internal_s_83_3_convert;
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
  assign cast_69_18 = {{1{a_17_32[19]}}, a_17_32[19:0]};
  assign cast_69_22 = {{1{b_17_35[19]}}, b_17_35[19:0]};
  assign internal_s_69_5_addsub = cast_69_18 + cast_69_22;
  defparam convert_internal_s_83_3_convert.new_arith = `xlSigned;
  defparam convert_internal_s_83_3_convert.new_bin_pt = 15;
  defparam convert_internal_s_83_3_convert.new_width = 20;
  defparam convert_internal_s_83_3_convert.old_arith = `xlSigned;
  defparam convert_internal_s_83_3_convert.old_bin_pt = 15;
  defparam convert_internal_s_83_3_convert.old_width = 21;
  defparam convert_internal_s_83_3_convert.overflow = `xlSaturate;
  defparam convert_internal_s_83_3_convert.quantization = `xlTruncate;
  convert_type convert_internal_s_83_3_convert(.inp(internal_s_69_5_addsub), .res(internal_s_83_3_convert));
  assign op_mem_91_20_push_front_pop_back_en = 1'b0;
  assign cout_mem_92_22_push_front_pop_back_en = 1'b0;
  assign prev_mode_93_22_next = const_value_x_000007;
  assign s = internal_s_83_3_convert;
endmodule
`timescale 1 ns / 10 ps
module sysgen_addsub_d55af55b57 (
  input [(43 - 1):0] a,
  input [(43 - 1):0] b,
  output [(20 - 1):0] s,
  input clk,
  input ce,
  input clr);
  wire signed [(43 - 1):0] a_17_32;
  wire signed [(43 - 1):0] b_17_35;
  localparam signed [(20 - 1):0] const_value = 20'sb00000000000000000000;
  reg signed [(20 - 1):0] op_mem_91_20[0:(1 - 1)];
  initial
    begin
      op_mem_91_20[0] = 20'b00000000000000000000;
    end
  wire signed [(20 - 1):0] op_mem_91_20_front_din;
  wire signed [(20 - 1):0] op_mem_91_20_back;
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
  wire signed [(44 - 1):0] cast_69_18;
  wire signed [(44 - 1):0] cast_69_22;
  wire signed [(44 - 1):0] internal_s_69_5_addsub;
  localparam [(1 - 1):0] const_value_x_000005 = 1'b0;
  wire signed [(20 - 1):0] internal_s_83_3_convert;
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
  assign cast_69_18 = {{1{a_17_32[42]}}, a_17_32[42:0]};
  assign cast_69_22 = {{1{b_17_35[42]}}, b_17_35[42:0]};
  assign internal_s_69_5_addsub = cast_69_18 + cast_69_22;
  defparam convert_internal_s_83_3_convert.new_arith = `xlSigned;
  defparam convert_internal_s_83_3_convert.new_bin_pt = 15;
  defparam convert_internal_s_83_3_convert.new_width = 20;
  defparam convert_internal_s_83_3_convert.old_arith = `xlSigned;
  defparam convert_internal_s_83_3_convert.old_bin_pt = 31;
  defparam convert_internal_s_83_3_convert.old_width = 44;
  defparam convert_internal_s_83_3_convert.overflow = `xlSaturate;
  defparam convert_internal_s_83_3_convert.quantization = `xlTruncate;
  convert_type convert_internal_s_83_3_convert(.inp(internal_s_69_5_addsub), .res(internal_s_83_3_convert));
  assign op_mem_91_20_push_front_pop_back_en = 1'b0;
  assign cout_mem_92_22_push_front_pop_back_en = 1'b0;
  assign prev_mode_93_22_next = const_value_x_000007;
  assign s = internal_s_83_3_convert;
endmodule
`timescale 1 ns / 10 ps
module sysgen_addsub_fc7eec88d6 (
  input [(39 - 1):0] a,
  input [(39 - 1):0] b,
  output [(20 - 1):0] s,
  input clk,
  input ce,
  input clr);
  wire signed [(39 - 1):0] a_17_32;
  wire signed [(39 - 1):0] b_17_35;
  localparam signed [(20 - 1):0] const_value = 20'sb00000000000000000000;
  reg signed [(20 - 1):0] op_mem_91_20[0:(1 - 1)];
  initial
    begin
      op_mem_91_20[0] = 20'b00000000000000000000;
    end
  wire signed [(20 - 1):0] op_mem_91_20_front_din;
  wire signed [(20 - 1):0] op_mem_91_20_back;
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
  wire signed [(40 - 1):0] cast_69_18;
  wire signed [(40 - 1):0] cast_69_22;
  wire signed [(40 - 1):0] internal_s_69_5_addsub;
  localparam [(1 - 1):0] const_value_x_000005 = 1'b0;
  wire signed [(20 - 1):0] internal_s_83_3_convert;
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
  assign cast_69_18 = {{1{a_17_32[38]}}, a_17_32[38:0]};
  assign cast_69_22 = {{1{b_17_35[38]}}, b_17_35[38:0]};
  assign internal_s_69_5_addsub = cast_69_18 + cast_69_22;
  defparam convert_internal_s_83_3_convert.new_arith = `xlSigned;
  defparam convert_internal_s_83_3_convert.new_bin_pt = 15;
  defparam convert_internal_s_83_3_convert.new_width = 20;
  defparam convert_internal_s_83_3_convert.old_arith = `xlSigned;
  defparam convert_internal_s_83_3_convert.old_bin_pt = 29;
  defparam convert_internal_s_83_3_convert.old_width = 40;
  defparam convert_internal_s_83_3_convert.overflow = `xlSaturate;
  defparam convert_internal_s_83_3_convert.quantization = `xlTruncate;
  convert_type convert_internal_s_83_3_convert(.inp(internal_s_69_5_addsub), .res(internal_s_83_3_convert));
  assign op_mem_91_20_push_front_pop_back_en = 1'b0;
  assign cout_mem_92_22_push_front_pop_back_en = 1'b0;
  assign prev_mode_93_22_next = const_value_x_000007;
  assign s = internal_s_83_3_convert;
endmodule
`timescale 1 ns / 10 ps
module sysgen_addsub_e73944acdf (
  input [(21 - 1):0] a,
  input [(20 - 1):0] b,
  output [(22 - 1):0] s,
  input clk,
  input ce,
  input clr);
  wire signed [(21 - 1):0] a_17_32;
  wire signed [(20 - 1):0] b_17_35;
  localparam signed [(22 - 1):0] const_value = 22'sb0000000000000000000000;
  reg signed [(22 - 1):0] op_mem_91_20[0:(1 - 1)];
  initial
    begin
      op_mem_91_20[0] = 22'b0000000000000000000000;
    end
  wire signed [(22 - 1):0] op_mem_91_20_front_din;
  wire signed [(22 - 1):0] op_mem_91_20_back;
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
  wire signed [(22 - 1):0] cast_69_18;
  wire signed [(22 - 1):0] cast_69_22;
  wire signed [(22 - 1):0] internal_s_69_5_addsub;
  localparam [(1 - 1):0] const_value_x_000005 = 1'b0;
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
  assign cast_69_18 = {{1{a_17_32[20]}}, a_17_32[20:0]};
  assign cast_69_22 = {{2{b_17_35[19]}}, b_17_35[19:0]};
  assign internal_s_69_5_addsub = cast_69_18 + cast_69_22;
  assign op_mem_91_20_push_front_pop_back_en = 1'b0;
  assign cout_mem_92_22_push_front_pop_back_en = 1'b0;
  assign prev_mode_93_22_next = const_value_x_000007;
  assign s = internal_s_69_5_addsub;
endmodule
`timescale 1 ns / 10 ps
module sysgen_addsub_78127d7533 (
  input [(20 - 1):0] a,
  input [(20 - 1):0] b,
  output [(21 - 1):0] s,
  input clk,
  input ce,
  input clr);
  wire signed [(20 - 1):0] a_17_32;
  wire signed [(20 - 1):0] b_17_35;
  localparam signed [(21 - 1):0] const_value = 21'sb000000000000000000000;
  reg signed [(21 - 1):0] op_mem_91_20[0:(1 - 1)];
  initial
    begin
      op_mem_91_20[0] = 21'b000000000000000000000;
    end
  wire signed [(21 - 1):0] op_mem_91_20_front_din;
  wire signed [(21 - 1):0] op_mem_91_20_back;
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
  wire signed [(21 - 1):0] cast_69_18;
  wire signed [(21 - 1):0] cast_69_22;
  wire signed [(21 - 1):0] internal_s_69_5_addsub;
  localparam [(1 - 1):0] const_value_x_000005 = 1'b0;
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
  assign cast_69_18 = {{1{a_17_32[19]}}, a_17_32[19:0]};
  assign cast_69_22 = {{1{b_17_35[19]}}, b_17_35[19:0]};
  assign internal_s_69_5_addsub = cast_69_18 + cast_69_22;
  assign op_mem_91_20_push_front_pop_back_en = 1'b0;
  assign cout_mem_92_22_push_front_pop_back_en = 1'b0;
  assign prev_mode_93_22_next = const_value_x_000007;
  assign s = internal_s_69_5_addsub;
endmodule
`timescale 1 ns / 10 ps
module sysgen_mux_2e76162b6a (
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
module sysgen_mux_d853ecb8c5 (
  input [(2 - 1):0] sel,
  input [(18 - 1):0] d0,
  input [(20 - 1):0] d1,
  input [(18 - 1):0] d2,
  output [(20 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire [(2 - 1):0] sel_1_20;
  wire [(18 - 1):0] d0_1_24;
  wire [(20 - 1):0] d1_1_27;
  wire [(18 - 1):0] d2_1_30;
  localparam [(20 - 1):0] const_value = 20'b00000000000000000000;
  reg [(20 - 1):0] pipe_18_22[0:(1 - 1)];
  initial
    begin
      pipe_18_22[0] = 20'b00000000000000000000;
    end
  wire [(20 - 1):0] pipe_18_22_front_din;
  wire [(20 - 1):0] pipe_18_22_back;
  wire pipe_18_22_push_front_pop_back_en;
  reg [(20 - 1):0] unregy_join_6_1;
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
            unregy_join_6_1 = {{2{d0_1_24[17]}}, d0_1_24[17:0]};
          end
        2'b01 :
          begin
            unregy_join_6_1 = d1_1_27;
          end
        default:
          begin
            unregy_join_6_1 = {{2{d2_1_30[17]}}, d2_1_30[17:0]};
          end
      endcase
    end
  assign pipe_18_22_front_din = unregy_join_6_1;
  assign pipe_18_22_push_front_pop_back_en = 1'b1;
  assign y = pipe_18_22_back;
endmodule
`timescale 1 ns / 10 ps
module sysgen_mux_e4a3492e0a (
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
module sysgen_mux_3b1f622740 (
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
module sysgen_inverter_37648f5b56 (
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
module sysgen_mux_a8cb38cf25 (
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
module sysgen_reinterpret_1bf89b9c73 (
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

module  fpga_kf_2dof_xlslice  (x, y);

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
module sysgen_mux_1ee4c69857 (
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
module sysgen_relational_b158ed43fd (
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
module fpga_kf_2dof_xldelay #(parameter width = -1, latency = -1, reg_retiming = 0, reset = 0)
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
module sysgen_logical_21f61bb21b (
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
module sysgen_relational_c599de7d39 (
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
module sysgen_relational_7832a15fa6 (
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
module sysgen_delay_f215291190 (
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
module axi_clock_domain_wrapper_cfg_in_axi_lite_interface#(parameter C_S_AXI_DATA_WIDTH = 32, C_S_AXI_ADDR_WIDTH = 11, C_S_NUM_OFFSETS = 105)(
  output wire[17:0] x_ref_in,
  output wire[24:0] gateway_in79,
  output wire[24:0] gateway_in78,
  output wire[24:0] gateway_in77,
  output wire[24:0] gateway_in76,
  output wire[24:0] gateway_in75,
  output wire[24:0] gateway_in74,
  output wire[24:0] gateway_in73,
  output wire[24:0] gateway_in72,
  output wire[24:0] gateway_in71,
  output wire[24:0] gateway_in70,
  output wire[24:0] gateway_in69,
  output wire[24:0] gateway_in68,
  output wire[24:0] gateway_in67,
  output wire[24:0] gateway_in66,
  output wire[24:0] gateway_in65,
  output wire[24:0] gateway_in64,
  output wire[24:0] gateway_in63,
  output wire[24:0] gateway_in62,
  output wire[24:0] gateway_in61,
  output wire[24:0] gateway_in60,
  output wire[24:0] gateway_in59,
  output wire[24:0] gateway_in58,
  output wire[24:0] gateway_in57,
  output wire[24:0] gateway_in56,
  output wire[24:0] gateway_in55,
  output wire[24:0] gateway_in54,
  output wire[24:0] gateway_in53,
  output wire[24:0] gateway_in52,
  output wire[24:0] gateway_in51,
  output wire[24:0] gateway_in50,
  output wire[24:0] gateway_in49,
  output wire[24:0] gateway_in48,
  output wire[24:0] gateway_in47,
  output wire[24:0] gateway_in46,
  output wire[24:0] gateway_in45,
  output wire[24:0] gateway_in44,
  output wire[24:0] gateway_in43,
  output wire[24:0] gateway_in42,
  output wire[24:0] gateway_in41,
  output wire[24:0] gateway_in40,
  output wire[24:0] gateway_in39,
  output wire[24:0] gateway_in38,
  output wire[24:0] gateway_in37,
  output wire[24:0] gateway_in36,
  output wire[24:0] gateway_in35,
  output wire[24:0] gateway_in34,
  output wire[24:0] gateway_in33,
  output wire[24:0] gateway_in32,
  output wire[24:0] gateway_in31,
  output wire[24:0] gateway_in30,
  output wire[24:0] gateway_in29,
  output wire[24:0] gateway_in28,
  output wire[24:0] gateway_in27,
  output wire[24:0] gateway_in26,
  output wire[24:0] gateway_in25,
  output wire[24:0] gateway_in24,
  output wire[24:0] gateway_in23,
  output wire[24:0] gateway_in22,
  output wire[24:0] gateway_in21,
  output wire[24:0] gateway_in20,
  output wire[24:0] gateway_in19,
  output wire[24:0] gateway_in18,
  output wire[24:0] gateway_in17,
  output wire[24:0] gateway_in16,
  output wire[24:0] gateway_in9,
  output wire[24:0] gateway_in8,
  output wire[24:0] gateway_in7,
  output wire[24:0] gateway_in6,
  output wire[24:0] gateway_in5,
  output wire[24:0] gateway_in4,
  output wire[24:0] gateway_in3,
  output wire[24:0] gateway_in2,
  output wire[24:0] gateway_in15,
  output wire[24:0] gateway_in14,
  output wire[24:0] gateway_in13,
  output wire[24:0] gateway_in12,
  output wire[24:0] gateway_in11,
  output wire[24:0] gateway_in10,
  output wire[24:0] gateway_in1,
  output wire[24:0] gateway_in,
  output wire[1:0] sw_override_in,
  output wire[31:0] reg_timer_period,
  output wire[31:0] reg_rp_switch_tf,
  output wire[31:0] reg_rp_switch_t0,
  output wire[31:0] reg_out_switch_tf,
  output wire[31:0] reg_out_switch_t0,
  output wire[13:0] out_switch_on,
  output wire[13:0] out_switch_off,
  output wire[1:0] fb_src_switch_in,
  output wire[31:0] dma_trigger_time,
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
assign x_ref_in[17:0] = slv_wire_array[0][17:0];
// map input 1
assign slv_wire_array[1] = slv_reg_array[1];
assign gateway_in79[24:0] = slv_wire_array[1][24:0];
// map input 2
assign slv_wire_array[2] = slv_reg_array[2];
assign gateway_in78[24:0] = slv_wire_array[2][24:0];
// map input 3
assign slv_wire_array[3] = slv_reg_array[3];
assign gateway_in77[24:0] = slv_wire_array[3][24:0];
// map input 4
assign slv_wire_array[4] = slv_reg_array[4];
assign gateway_in76[24:0] = slv_wire_array[4][24:0];
// map input 5
assign slv_wire_array[5] = slv_reg_array[5];
assign gateway_in75[24:0] = slv_wire_array[5][24:0];
// map input 6
assign slv_wire_array[6] = slv_reg_array[6];
assign gateway_in74[24:0] = slv_wire_array[6][24:0];
// map input 7
assign slv_wire_array[7] = slv_reg_array[7];
assign gateway_in73[24:0] = slv_wire_array[7][24:0];
// map input 8
assign slv_wire_array[8] = slv_reg_array[8];
assign gateway_in72[24:0] = slv_wire_array[8][24:0];
// map input 9
assign slv_wire_array[9] = slv_reg_array[9];
assign gateway_in71[24:0] = slv_wire_array[9][24:0];
// map input 10
assign slv_wire_array[10] = slv_reg_array[10];
assign gateway_in70[24:0] = slv_wire_array[10][24:0];
// map input 11
assign slv_wire_array[11] = slv_reg_array[11];
assign gateway_in69[24:0] = slv_wire_array[11][24:0];
// map input 12
assign slv_wire_array[12] = slv_reg_array[12];
assign gateway_in68[24:0] = slv_wire_array[12][24:0];
// map input 13
assign slv_wire_array[13] = slv_reg_array[13];
assign gateway_in67[24:0] = slv_wire_array[13][24:0];
// map input 14
assign slv_wire_array[14] = slv_reg_array[14];
assign gateway_in66[24:0] = slv_wire_array[14][24:0];
// map input 15
assign slv_wire_array[15] = slv_reg_array[15];
assign gateway_in65[24:0] = slv_wire_array[15][24:0];
// map input 16
assign slv_wire_array[16] = slv_reg_array[16];
assign gateway_in64[24:0] = slv_wire_array[16][24:0];
// map input 17
assign slv_wire_array[17] = slv_reg_array[17];
assign gateway_in63[24:0] = slv_wire_array[17][24:0];
// map input 18
assign slv_wire_array[18] = slv_reg_array[18];
assign gateway_in62[24:0] = slv_wire_array[18][24:0];
// map input 19
assign slv_wire_array[19] = slv_reg_array[19];
assign gateway_in61[24:0] = slv_wire_array[19][24:0];
// map input 20
assign slv_wire_array[20] = slv_reg_array[20];
assign gateway_in60[24:0] = slv_wire_array[20][24:0];
// map input 21
assign slv_wire_array[21] = slv_reg_array[21];
assign gateway_in59[24:0] = slv_wire_array[21][24:0];
// map input 22
assign slv_wire_array[22] = slv_reg_array[22];
assign gateway_in58[24:0] = slv_wire_array[22][24:0];
// map input 23
assign slv_wire_array[23] = slv_reg_array[23];
assign gateway_in57[24:0] = slv_wire_array[23][24:0];
// map input 24
assign slv_wire_array[24] = slv_reg_array[24];
assign gateway_in56[24:0] = slv_wire_array[24][24:0];
// map input 25
assign slv_wire_array[25] = slv_reg_array[25];
assign gateway_in55[24:0] = slv_wire_array[25][24:0];
// map input 26
assign slv_wire_array[26] = slv_reg_array[26];
assign gateway_in54[24:0] = slv_wire_array[26][24:0];
// map input 27
assign slv_wire_array[27] = slv_reg_array[27];
assign gateway_in53[24:0] = slv_wire_array[27][24:0];
// map input 28
assign slv_wire_array[28] = slv_reg_array[28];
assign gateway_in52[24:0] = slv_wire_array[28][24:0];
// map input 29
assign slv_wire_array[29] = slv_reg_array[29];
assign gateway_in51[24:0] = slv_wire_array[29][24:0];
// map input 30
assign slv_wire_array[30] = slv_reg_array[30];
assign gateway_in50[24:0] = slv_wire_array[30][24:0];
// map input 31
assign slv_wire_array[31] = slv_reg_array[31];
assign gateway_in49[24:0] = slv_wire_array[31][24:0];
// map input 32
assign slv_wire_array[32] = slv_reg_array[32];
assign gateway_in48[24:0] = slv_wire_array[32][24:0];
// map input 33
assign slv_wire_array[33] = slv_reg_array[33];
assign gateway_in47[24:0] = slv_wire_array[33][24:0];
// map input 34
assign slv_wire_array[34] = slv_reg_array[34];
assign gateway_in46[24:0] = slv_wire_array[34][24:0];
// map input 35
assign slv_wire_array[35] = slv_reg_array[35];
assign gateway_in45[24:0] = slv_wire_array[35][24:0];
// map input 36
assign slv_wire_array[36] = slv_reg_array[36];
assign gateway_in44[24:0] = slv_wire_array[36][24:0];
// map input 37
assign slv_wire_array[37] = slv_reg_array[37];
assign gateway_in43[24:0] = slv_wire_array[37][24:0];
// map input 38
assign slv_wire_array[38] = slv_reg_array[38];
assign gateway_in42[24:0] = slv_wire_array[38][24:0];
// map input 39
assign slv_wire_array[39] = slv_reg_array[39];
assign gateway_in41[24:0] = slv_wire_array[39][24:0];
// map input 40
assign slv_wire_array[40] = slv_reg_array[40];
assign gateway_in40[24:0] = slv_wire_array[40][24:0];
// map input 41
assign slv_wire_array[41] = slv_reg_array[41];
assign gateway_in39[24:0] = slv_wire_array[41][24:0];
// map input 42
assign slv_wire_array[42] = slv_reg_array[42];
assign gateway_in38[24:0] = slv_wire_array[42][24:0];
// map input 43
assign slv_wire_array[43] = slv_reg_array[43];
assign gateway_in37[24:0] = slv_wire_array[43][24:0];
// map input 44
assign slv_wire_array[44] = slv_reg_array[44];
assign gateway_in36[24:0] = slv_wire_array[44][24:0];
// map input 45
assign slv_wire_array[45] = slv_reg_array[45];
assign gateway_in35[24:0] = slv_wire_array[45][24:0];
// map input 46
assign slv_wire_array[46] = slv_reg_array[46];
assign gateway_in34[24:0] = slv_wire_array[46][24:0];
// map input 47
assign slv_wire_array[47] = slv_reg_array[47];
assign gateway_in33[24:0] = slv_wire_array[47][24:0];
// map input 48
assign slv_wire_array[48] = slv_reg_array[48];
assign gateway_in32[24:0] = slv_wire_array[48][24:0];
// map input 49
assign slv_wire_array[49] = slv_reg_array[49];
assign gateway_in31[24:0] = slv_wire_array[49][24:0];
// map input 50
assign slv_wire_array[50] = slv_reg_array[50];
assign gateway_in30[24:0] = slv_wire_array[50][24:0];
// map input 51
assign slv_wire_array[51] = slv_reg_array[51];
assign gateway_in29[24:0] = slv_wire_array[51][24:0];
// map input 52
assign slv_wire_array[52] = slv_reg_array[52];
assign gateway_in28[24:0] = slv_wire_array[52][24:0];
// map input 53
assign slv_wire_array[53] = slv_reg_array[53];
assign gateway_in27[24:0] = slv_wire_array[53][24:0];
// map input 54
assign slv_wire_array[54] = slv_reg_array[54];
assign gateway_in26[24:0] = slv_wire_array[54][24:0];
// map input 55
assign slv_wire_array[55] = slv_reg_array[55];
assign gateway_in25[24:0] = slv_wire_array[55][24:0];
// map input 56
assign slv_wire_array[56] = slv_reg_array[56];
assign gateway_in24[24:0] = slv_wire_array[56][24:0];
// map input 57
assign slv_wire_array[57] = slv_reg_array[57];
assign gateway_in23[24:0] = slv_wire_array[57][24:0];
// map input 58
assign slv_wire_array[58] = slv_reg_array[58];
assign gateway_in22[24:0] = slv_wire_array[58][24:0];
// map input 59
assign slv_wire_array[59] = slv_reg_array[59];
assign gateway_in21[24:0] = slv_wire_array[59][24:0];
// map input 60
assign slv_wire_array[60] = slv_reg_array[60];
assign gateway_in20[24:0] = slv_wire_array[60][24:0];
// map input 61
assign slv_wire_array[61] = slv_reg_array[61];
assign gateway_in19[24:0] = slv_wire_array[61][24:0];
// map input 62
assign slv_wire_array[62] = slv_reg_array[62];
assign gateway_in18[24:0] = slv_wire_array[62][24:0];
// map input 63
assign slv_wire_array[63] = slv_reg_array[63];
assign gateway_in17[24:0] = slv_wire_array[63][24:0];
// map input 64
assign slv_wire_array[64] = slv_reg_array[64];
assign gateway_in16[24:0] = slv_wire_array[64][24:0];
// map input 65
assign slv_wire_array[65] = slv_reg_array[65];
assign gateway_in9[24:0] = slv_wire_array[65][24:0];
// map input 66
assign slv_wire_array[66] = slv_reg_array[66];
assign gateway_in8[24:0] = slv_wire_array[66][24:0];
// map input 67
assign slv_wire_array[67] = slv_reg_array[67];
assign gateway_in7[24:0] = slv_wire_array[67][24:0];
// map input 68
assign slv_wire_array[68] = slv_reg_array[68];
assign gateway_in6[24:0] = slv_wire_array[68][24:0];
// map input 69
assign slv_wire_array[69] = slv_reg_array[69];
assign gateway_in5[24:0] = slv_wire_array[69][24:0];
// map input 70
assign slv_wire_array[70] = slv_reg_array[70];
assign gateway_in4[24:0] = slv_wire_array[70][24:0];
// map input 71
assign slv_wire_array[71] = slv_reg_array[71];
assign gateway_in3[24:0] = slv_wire_array[71][24:0];
// map input 72
assign slv_wire_array[72] = slv_reg_array[72];
assign gateway_in2[24:0] = slv_wire_array[72][24:0];
// map input 73
assign slv_wire_array[73] = slv_reg_array[73];
assign gateway_in15[24:0] = slv_wire_array[73][24:0];
// map input 74
assign slv_wire_array[74] = slv_reg_array[74];
assign gateway_in14[24:0] = slv_wire_array[74][24:0];
// map input 75
assign slv_wire_array[75] = slv_reg_array[75];
assign gateway_in13[24:0] = slv_wire_array[75][24:0];
// map input 76
assign slv_wire_array[76] = slv_reg_array[76];
assign gateway_in12[24:0] = slv_wire_array[76][24:0];
// map input 77
assign slv_wire_array[77] = slv_reg_array[77];
assign gateway_in11[24:0] = slv_wire_array[77][24:0];
// map input 78
assign slv_wire_array[78] = slv_reg_array[78];
assign gateway_in10[24:0] = slv_wire_array[78][24:0];
// map input 79
assign slv_wire_array[79] = slv_reg_array[79];
assign gateway_in1[24:0] = slv_wire_array[79][24:0];
// map input 80
assign slv_wire_array[80] = slv_reg_array[80];
assign gateway_in[24:0] = slv_wire_array[80][24:0];
// map input 81
assign slv_wire_array[81] = slv_reg_array[81];
assign sw_override_in[1:0] = slv_wire_array[81][1:0];
// map input 82
assign slv_wire_array[82] = slv_reg_array[82];
assign reg_timer_period[31:0] = slv_wire_array[82][31:0];
// map input 83
assign slv_wire_array[83] = slv_reg_array[83];
assign reg_rp_switch_tf[31:0] = slv_wire_array[83][31:0];
// map input 84
assign slv_wire_array[84] = slv_reg_array[84];
assign reg_rp_switch_t0[31:0] = slv_wire_array[84][31:0];
// map input 85
assign slv_wire_array[85] = slv_reg_array[85];
assign reg_out_switch_tf[31:0] = slv_wire_array[85][31:0];
// map input 86
assign slv_wire_array[86] = slv_reg_array[86];
assign reg_out_switch_t0[31:0] = slv_wire_array[86][31:0];
// map input 87
assign slv_wire_array[87] = slv_reg_array[87];
assign out_switch_on[13:0] = slv_wire_array[87][13:0];
// map input 88
assign slv_wire_array[88] = slv_reg_array[88];
assign out_switch_off[13:0] = slv_wire_array[88][13:0];
// map input 89
assign slv_wire_array[89] = slv_reg_array[89];
assign fb_src_switch_in[1:0] = slv_wire_array[89][1:0];
// map input 90
assign slv_wire_array[90] = slv_reg_array[90];
assign dma_trigger_time[31:0] = slv_wire_array[90][31:0];
// map input 91
assign slv_wire_array[91] = slv_reg_array[91];
assign barrier_ub_in[17:0] = slv_wire_array[91][17:0];
// map input 92
assign slv_wire_array[92] = slv_reg_array[92];
assign barrier_lb_in[17:0] = slv_wire_array[92][17:0];
// map input 93
assign slv_wire_array[93] = slv_reg_array[93];
assign barrier_ram_we_in = slv_wire_array[93][0];
// map input 94
assign slv_wire_array[94] = slv_reg_array[94];
assign barrier_ram_addr_in[9:0] = slv_wire_array[94][9:0];
// map input 95
assign slv_wire_array[95] = slv_reg_array[95];
assign barrier_c_ofst_idx_in[9:0] = slv_wire_array[95][9:0];
// map input 96
assign slv_wire_array[96] = slv_reg_array[96];
assign barrier_c_idx_in[24:0] = slv_wire_array[96][24:0];
// map input 97
assign slv_wire_array[97] = slv_reg_array[97];
assign barrier_c1_data_in[24:0] = slv_wire_array[97][24:0];
// map input 98
assign slv_wire_array[98] = slv_reg_array[98];
assign barrier_c0_data_in[24:0] = slv_wire_array[98][24:0];
// map input 99
assign slv_wire_array[99] = slv_reg_array[99];
assign fixed_led_pattern_in[15:0] = slv_wire_array[99][15:0];
// map input 100
assign slv_wire_array[100] = slv_reg_array[100];
assign disco_mode_enable = slv_wire_array[100][0];
// map input 101
assign slv_wire_array[101] = slv_reg_array[101];
assign ap_ip_switch_in[1:0] = slv_wire_array[101][1:0];
// map input 102
assign slv_wire_array[102] = slv_reg_array[102];
assign adc_ch2_offst[13:0] = slv_wire_array[102][13:0];
// map input 103
assign slv_wire_array[103] = slv_reg_array[103];
assign adc_ch1_offst[13:0] = slv_wire_array[103][13:0];
// map input 104
assign slv_wire_array[104] = slv_reg_array[104];
assign registers_wren_in = slv_wire_array[104][0];
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
    slv_reg_array[104] = 32'd0;
  end
  always @(axi_awaddr)
  begin
    case(axi_awaddr)
      11'd12 : dec_w = 0;
      11'd668 : dec_w = 1;
      11'd664 : dec_w = 2;
      11'd660 : dec_w = 3;
      11'd656 : dec_w = 4;
      11'd652 : dec_w = 5;
      11'd648 : dec_w = 6;
      11'd644 : dec_w = 7;
      11'd640 : dec_w = 8;
      11'd636 : dec_w = 9;
      11'd632 : dec_w = 10;
      11'd628 : dec_w = 11;
      11'd624 : dec_w = 12;
      11'd620 : dec_w = 13;
      11'd616 : dec_w = 14;
      11'd612 : dec_w = 15;
      11'd608 : dec_w = 16;
      11'd604 : dec_w = 17;
      11'd600 : dec_w = 18;
      11'd596 : dec_w = 19;
      11'd592 : dec_w = 20;
      11'd588 : dec_w = 21;
      11'd584 : dec_w = 22;
      11'd580 : dec_w = 23;
      11'd576 : dec_w = 24;
      11'd548 : dec_w = 25;
      11'd544 : dec_w = 26;
      11'd540 : dec_w = 27;
      11'd536 : dec_w = 28;
      11'd532 : dec_w = 29;
      11'd528 : dec_w = 30;
      11'd524 : dec_w = 31;
      11'd520 : dec_w = 32;
      11'd572 : dec_w = 33;
      11'd568 : dec_w = 34;
      11'd564 : dec_w = 35;
      11'd560 : dec_w = 36;
      11'd556 : dec_w = 37;
      11'd552 : dec_w = 38;
      11'd516 : dec_w = 39;
      11'd512 : dec_w = 40;
      11'd412 : dec_w = 41;
      11'd408 : dec_w = 42;
      11'd404 : dec_w = 43;
      11'd400 : dec_w = 44;
      11'd396 : dec_w = 45;
      11'd392 : dec_w = 46;
      11'd388 : dec_w = 47;
      11'd384 : dec_w = 48;
      11'd380 : dec_w = 49;
      11'd376 : dec_w = 50;
      11'd372 : dec_w = 51;
      11'd368 : dec_w = 52;
      11'd364 : dec_w = 53;
      11'd360 : dec_w = 54;
      11'd356 : dec_w = 55;
      11'd352 : dec_w = 56;
      11'd348 : dec_w = 57;
      11'd344 : dec_w = 58;
      11'd340 : dec_w = 59;
      11'd336 : dec_w = 60;
      11'd332 : dec_w = 61;
      11'd328 : dec_w = 62;
      11'd324 : dec_w = 63;
      11'd320 : dec_w = 64;
      11'd292 : dec_w = 65;
      11'd288 : dec_w = 66;
      11'd284 : dec_w = 67;
      11'd280 : dec_w = 68;
      11'd276 : dec_w = 69;
      11'd272 : dec_w = 70;
      11'd268 : dec_w = 71;
      11'd264 : dec_w = 72;
      11'd316 : dec_w = 73;
      11'd312 : dec_w = 74;
      11'd308 : dec_w = 75;
      11'd304 : dec_w = 76;
      11'd300 : dec_w = 77;
      11'd296 : dec_w = 78;
      11'd260 : dec_w = 79;
      11'd256 : dec_w = 80;
      11'd8 : dec_w = 81;
      11'd80 : dec_w = 82;
      11'd88 : dec_w = 83;
      11'd84 : dec_w = 84;
      11'd96 : dec_w = 85;
      11'd92 : dec_w = 86;
      11'd108 : dec_w = 87;
      11'd104 : dec_w = 88;
      11'd4 : dec_w = 89;
      11'd100 : dec_w = 90;
      11'd1024 : dec_w = 91;
      11'd1028 : dec_w = 92;
      11'd1052 : dec_w = 93;
      11'd1040 : dec_w = 94;
      11'd1036 : dec_w = 95;
      11'd1032 : dec_w = 96;
      11'd1048 : dec_w = 97;
      11'd1044 : dec_w = 98;
      11'd28 : dec_w = 99;
      11'd24 : dec_w = 100;
      11'd0 : dec_w = 101;
      11'd20 : dec_w = 102;
      11'd16 : dec_w = 103;
      11'd768 : dec_w = 104;
      default : dec_w = 0;
    endcase
  end
  always @(axi_araddr)
  begin
    case(axi_araddr)
      11'd12 : dec_r = 0;
      11'd668 : dec_r = 1;
      11'd664 : dec_r = 2;
      11'd660 : dec_r = 3;
      11'd656 : dec_r = 4;
      11'd652 : dec_r = 5;
      11'd648 : dec_r = 6;
      11'd644 : dec_r = 7;
      11'd640 : dec_r = 8;
      11'd636 : dec_r = 9;
      11'd632 : dec_r = 10;
      11'd628 : dec_r = 11;
      11'd624 : dec_r = 12;
      11'd620 : dec_r = 13;
      11'd616 : dec_r = 14;
      11'd612 : dec_r = 15;
      11'd608 : dec_r = 16;
      11'd604 : dec_r = 17;
      11'd600 : dec_r = 18;
      11'd596 : dec_r = 19;
      11'd592 : dec_r = 20;
      11'd588 : dec_r = 21;
      11'd584 : dec_r = 22;
      11'd580 : dec_r = 23;
      11'd576 : dec_r = 24;
      11'd548 : dec_r = 25;
      11'd544 : dec_r = 26;
      11'd540 : dec_r = 27;
      11'd536 : dec_r = 28;
      11'd532 : dec_r = 29;
      11'd528 : dec_r = 30;
      11'd524 : dec_r = 31;
      11'd520 : dec_r = 32;
      11'd572 : dec_r = 33;
      11'd568 : dec_r = 34;
      11'd564 : dec_r = 35;
      11'd560 : dec_r = 36;
      11'd556 : dec_r = 37;
      11'd552 : dec_r = 38;
      11'd516 : dec_r = 39;
      11'd512 : dec_r = 40;
      11'd412 : dec_r = 41;
      11'd408 : dec_r = 42;
      11'd404 : dec_r = 43;
      11'd400 : dec_r = 44;
      11'd396 : dec_r = 45;
      11'd392 : dec_r = 46;
      11'd388 : dec_r = 47;
      11'd384 : dec_r = 48;
      11'd380 : dec_r = 49;
      11'd376 : dec_r = 50;
      11'd372 : dec_r = 51;
      11'd368 : dec_r = 52;
      11'd364 : dec_r = 53;
      11'd360 : dec_r = 54;
      11'd356 : dec_r = 55;
      11'd352 : dec_r = 56;
      11'd348 : dec_r = 57;
      11'd344 : dec_r = 58;
      11'd340 : dec_r = 59;
      11'd336 : dec_r = 60;
      11'd332 : dec_r = 61;
      11'd328 : dec_r = 62;
      11'd324 : dec_r = 63;
      11'd320 : dec_r = 64;
      11'd292 : dec_r = 65;
      11'd288 : dec_r = 66;
      11'd284 : dec_r = 67;
      11'd280 : dec_r = 68;
      11'd276 : dec_r = 69;
      11'd272 : dec_r = 70;
      11'd268 : dec_r = 71;
      11'd264 : dec_r = 72;
      11'd316 : dec_r = 73;
      11'd312 : dec_r = 74;
      11'd308 : dec_r = 75;
      11'd304 : dec_r = 76;
      11'd300 : dec_r = 77;
      11'd296 : dec_r = 78;
      11'd260 : dec_r = 79;
      11'd256 : dec_r = 80;
      11'd8 : dec_r = 81;
      11'd80 : dec_r = 82;
      11'd88 : dec_r = 83;
      11'd84 : dec_r = 84;
      11'd96 : dec_r = 85;
      11'd92 : dec_r = 86;
      11'd108 : dec_r = 87;
      11'd104 : dec_r = 88;
      11'd4 : dec_r = 89;
      11'd100 : dec_r = 90;
      11'd1024 : dec_r = 91;
      11'd1028 : dec_r = 92;
      11'd1052 : dec_r = 93;
      11'd1040 : dec_r = 94;
      11'd1036 : dec_r = 95;
      11'd1032 : dec_r = 96;
      11'd1048 : dec_r = 97;
      11'd1044 : dec_r = 98;
      11'd28 : dec_r = 99;
      11'd24 : dec_r = 100;
      11'd0 : dec_r = 101;
      11'd20 : dec_r = 102;
      11'd16 : dec_r = 103;
      11'd768 : dec_r = 104;
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
        slv_reg_array[104] = 32'd0;
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

module fpga_kf_2dof_xladdsub (a, b, c_in, ce, clr, clk, rst, en, c_out, s);
 
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


if (core_name0 == "fpga_kf_2dof_c_addsub_v12_0_i0") 
     begin:comp0
fpga_kf_2dof_c_addsub_v12_0_i0 core_instance0 ( 
         .A(full_a),
         .CLK(clk),
         .CE(internal_ce),
         .S(core_s),
         .B(full_b) 
       ); 
     end 

if (core_name0 == "fpga_kf_2dof_c_addsub_v12_0_i1") 
     begin:comp1
fpga_kf_2dof_c_addsub_v12_0_i1 core_instance1 ( 
         .A(full_a),
         .S(core_s),
         .B(full_b) 
       ); 
     end 

if (core_name0 == "fpga_kf_2dof_c_addsub_v12_0_i2") 
     begin:comp2
fpga_kf_2dof_c_addsub_v12_0_i2 core_instance2 ( 
         .A(full_a),
         .S(core_s),
         .B(full_b) 
       ); 
     end 

if (core_name0 == "fpga_kf_2dof_c_addsub_v12_0_i3") 
     begin:comp3
fpga_kf_2dof_c_addsub_v12_0_i3 core_instance3 ( 
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

module fpga_kf_2dof_xlcounter_free  (ce, clr, clk, op, up, load, din, en, rst);
 
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



if (core_name0 == "fpga_kf_2dof_c_counter_binary_v12_0_i0") 
     begin:comp0
fpga_kf_2dof_c_counter_binary_v12_0_i0 core_instance0 ( 
        .CLK(clk),
        .CE(core_ce),
        .SINIT(core_sinit),
        .Q(op_net) 
       ); 
     end 

endgenerate 
 endmodule
module fpga_kf_2dof_xlcounter_limit (ce, clr, clk, op, up, en, rst);
 
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



if (core_name0 == "fpga_kf_2dof_c_counter_binary_v12_0_i1") 
     begin:comp0
fpga_kf_2dof_c_counter_binary_v12_0_i1 core_instance0 ( 
        .CLK(clk),
        .CE(core_ce),
        .SINIT(core_sinit),
        .Q(op_net) 
       ); 
     end 

endgenerate
 
 endmodule

module fpga_kf_2dof_xlmult (a, b, ce, clr, clk, core_ce, core_clr,core_clk, rst, en,p);
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
 


if (core_name0 == "fpga_kf_2dof_mult_gen_v12_0_i0") 
     begin:comp0
fpga_kf_2dof_mult_gen_v12_0_i0 core_instance0 ( 
        .A(tmp_a),
        .B(tmp_b),
        .P(tmp_p) 
       ); 
     end 

if (core_name0 == "fpga_kf_2dof_mult_gen_v12_0_i1") 
     begin:comp1
fpga_kf_2dof_mult_gen_v12_0_i1 core_instance1 ( 
        .A(tmp_a),
        .B(tmp_b),
        .P(tmp_p) 
       ); 
     end 

if (core_name0 == "fpga_kf_2dof_mult_gen_v12_0_i2") 
     begin:comp2
fpga_kf_2dof_mult_gen_v12_0_i2 core_instance2 ( 
        .A(tmp_a),
        .B(tmp_b),
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

