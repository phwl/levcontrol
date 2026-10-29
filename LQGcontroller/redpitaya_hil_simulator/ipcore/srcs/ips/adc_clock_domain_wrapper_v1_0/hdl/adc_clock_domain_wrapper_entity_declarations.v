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
module adc_clock_domain_wrapper_xltdpram
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
module sysgen_concat_f5d43f203f (
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
module sysgen_concat_f6d876abe9 (
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
module sysgen_constant_f9c9803e57 (
  output [(18 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 18'b000000000000000000;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_fa4e55f92b (
  output [(25 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 25'b0000000000000000000000000;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_2e02d264b6 (
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 1'b0;
endmodule
`timescale 1 ns / 10 ps


module adc_clock_domain_wrapper_xlconvert (din, clk, ce, clr, en, dout);

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


module  adc_clock_domain_wrapper_xldsamp  (d, src_clk, src_ce, src_clr, dest_clk, dest_ce, dest_clr, en, rst, q);


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
module sysgen_expr_a27c1d6e27 (
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
module sysgen_inverter_ed2748a1d9 (
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
module sysgen_mux_c34f4b49ab (
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
module adc_clock_domain_wrapper_xlregister (d, rst, en, ce, clk, q);
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
module sysgen_reinterpret_fe33ed3323 (
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
module sysgen_relational_b2ebb8201b (
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
module sysgen_relational_e9eaeabe1a (
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
module sysgen_shift_13681f552b (
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
module sysgen_mux_fb3649325e (
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
module sysgen_addsub_64db4aaa89 (
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
module sysgen_addsub_99a08bd73f (
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
module sysgen_addsub_60c5af81fc (
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
module sysgen_addsub_fcb4be5e1a (
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
module sysgen_addsub_fde56498e5 (
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
module sysgen_mux_db9d2c0c46 (
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
module sysgen_mux_e00d1677ec (
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


module  adc_clock_domain_wrapper_xlusamp  (d, src_clk, src_ce, src_clr, dest_clk, dest_ce, dest_clr, en, q);


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

module adc_clock_domain_wrapper_xladdsub (a, b, c_in, ce, clr, clk, rst, en, c_out, s);
 
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


if (core_name0 == "adc_clock_domain_wrapper_c_addsub_v12_0_i0") 
     begin:comp0
adc_clock_domain_wrapper_c_addsub_v12_0_i0 core_instance0 ( 
         .A(full_a),
         .CLK(clk),
         .CE(internal_ce),
         .S(core_s),
         .B(full_b) 
       ); 
     end 

if (core_name0 == "adc_clock_domain_wrapper_c_addsub_v12_0_i1") 
     begin:comp1
adc_clock_domain_wrapper_c_addsub_v12_0_i1 core_instance1 ( 
         .A(full_a),
         .S(core_s),
         .B(full_b) 
       ); 
     end 

if (core_name0 == "adc_clock_domain_wrapper_c_addsub_v12_0_i2") 
     begin:comp2
adc_clock_domain_wrapper_c_addsub_v12_0_i2 core_instance2 ( 
         .A(full_a),
         .S(core_s),
         .B(full_b) 
       ); 
     end 

if (core_name0 == "adc_clock_domain_wrapper_c_addsub_v12_0_i3") 
     begin:comp3
adc_clock_domain_wrapper_c_addsub_v12_0_i3 core_instance3 ( 
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

module adc_clock_domain_wrapper_xlmult (a, b, ce, clr, clk, core_ce, core_clr,core_clk, rst, en,p);
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
 


if (core_name0 == "adc_clock_domain_wrapper_mult_gen_v12_0_i0") 
     begin:comp0
adc_clock_domain_wrapper_mult_gen_v12_0_i0 core_instance0 ( 
        .A(tmp_a),
        .B(tmp_b),
        .P(tmp_p) 
       ); 
     end 

if (core_name0 == "adc_clock_domain_wrapper_mult_gen_v12_0_i1") 
     begin:comp1
adc_clock_domain_wrapper_mult_gen_v12_0_i1 core_instance1 ( 
        .A(tmp_a),
        .B(tmp_b),
        .P(tmp_p) 
       ); 
     end 

if (core_name0 == "adc_clock_domain_wrapper_mult_gen_v12_0_i2") 
     begin:comp2
adc_clock_domain_wrapper_mult_gen_v12_0_i2 core_instance2 ( 
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

