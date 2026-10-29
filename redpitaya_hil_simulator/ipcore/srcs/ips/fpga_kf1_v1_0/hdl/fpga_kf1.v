`ifndef xlConvPkgIncluded
`include "conv_pkg.v"
`endif

`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/ADC_clock_domain_wrapper/Monitor_reciproc_ema
module fpga_kf1_monitor_reciproc_ema (
  input [18-1:0] mon_in,
  input [25-1:0] ema_const,
  input clk_1,
  input ce_1,
  output [25-1:0] ema_out
);
  wire [18-1:0] reciproc_float_to_fix_dout_net;
  wire [25-1:0] register4_q_net;
  wire clk_net;
  wire ce_net;
  wire [25-1:0] ema_accumulator_s_net;
  wire [25-1:0] prod_prev_ema_p_net;
  wire [1-1:0] const_one1_op_net;
  wire [25-1:0] ema_c_delay_mtch_q_net;
  wire [25-1:0] prod_div_ema_const_p_net;
  wire [25-1:0] const_one_op_net;
  wire [1-1:0] en_delay_q_net;
  wire [18-1:0] subtract_one_s_net;
  assign ema_out = ema_accumulator_s_net;
  assign reciproc_float_to_fix_dout_net = mon_in;
  assign register4_q_net = ema_const;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_constant_695e1c5d4d const_one (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(const_one_op_net)
  );
  sysgen_constant_87a8ecd79a const_one1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(const_one1_op_net)
  );
  fpga_kf1_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(16),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(26),
    .core_name0("fpga_kf1_c_addsub_v12_0_i5"),
    .en_arith(`xlUnsigned),
    .en_bin_pt(0),
    .en_width(1),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(16),
    .s_width(25)
  )
  ema_accumulator (
    .clr(1'b0),
    .a(prod_div_ema_const_p_net),
    .b(prod_prev_ema_p_net),
    .en(en_delay_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(ema_accumulator_s_net)
  );
  fpga_kf1_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(25)
  )
  ema_c_delay_mtch (
    .en(1'b1),
    .rst(1'b0),
    .d(register4_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(ema_c_delay_mtch_q_net)
  );
  fpga_kf1_xldelay #(
    .latency(5),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  en_delay (
    .en(1'b1),
    .rst(1'b0),
    .d(const_one1_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(en_delay_q_net)
  );
  fpga_kf1_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(13),
    .a_width(18),
    .b_arith(`xlUnsigned),
    .b_bin_pt(16),
    .b_width(25),
    .c_a_type(0),
    .c_a_width(18),
    .c_b_type(1),
    .c_b_width(25),
    .c_baat(18),
    .c_output_width(43),
    .c_type(0),
    .core_name0("fpga_kf1_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(16),
    .p_width(25),
    .quantization(1)
  )
  prod_div_ema_const (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(reciproc_float_to_fix_dout_net),
    .b(ema_c_delay_mtch_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(prod_div_ema_const_p_net)
  );
  fpga_kf1_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(18),
    .b_arith(`xlSigned),
    .b_bin_pt(16),
    .b_width(25),
    .c_a_type(0),
    .c_a_width(18),
    .c_b_type(0),
    .c_b_width(25),
    .c_baat(18),
    .c_output_width(43),
    .c_type(0),
    .core_name0("fpga_kf1_mult_gen_v12_0_i0"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(16),
    .p_width(25),
    .quantization(1)
  )
  prod_prev_ema (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(subtract_one_s_net),
    .b(ema_accumulator_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(prod_prev_ema_p_net)
  );
  fpga_kf1_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlUnsigned),
    .b_bin_pt(16),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(27),
    .core_name0("fpga_kf1_c_addsub_v12_0_i6"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(27),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(16),
    .s_width(18)
  )
  subtract_one (
    .clr(1'b0),
    .en(1'b1),
    .a(const_one_op_net),
    .b(register4_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(subtract_one_s_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/ADC_clock_domain_wrapper/Monitor_slow_ema
module fpga_kf1_monitor_slow_ema (
  input [18-1:0] mon_in,
  input [25-1:0] ema_const,
  input clk_1,
  input ce_1,
  output [25-1:0] ema_out
);
  wire [25-1:0] prod_div_ema_const_p_net;
  wire [25-1:0] prod_prev_ema_p_net;
  wire [1-1:0] en_delay_q_net;
  wire [25-1:0] register10_q_net;
  wire [18-1:0] div_scale_prod_p_net;
  wire ce_net;
  wire [25-1:0] const_one_op_net;
  wire [25-1:0] ema_accumulator_s_net;
  wire clk_net;
  wire [1-1:0] const_one1_op_net;
  wire [25-1:0] ema_c_delay_mtch_q_net;
  wire [18-1:0] subtract_one_s_net;
  assign ema_out = ema_accumulator_s_net;
  assign div_scale_prod_p_net = mon_in;
  assign register10_q_net = ema_const;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_constant_695e1c5d4d const_one (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(const_one_op_net)
  );
  sysgen_constant_87a8ecd79a const_one1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(const_one1_op_net)
  );
  fpga_kf1_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(16),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(26),
    .core_name0("fpga_kf1_c_addsub_v12_0_i5"),
    .en_arith(`xlUnsigned),
    .en_bin_pt(0),
    .en_width(1),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(16),
    .s_width(25)
  )
  ema_accumulator (
    .clr(1'b0),
    .a(prod_div_ema_const_p_net),
    .b(prod_prev_ema_p_net),
    .en(en_delay_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(ema_accumulator_s_net)
  );
  fpga_kf1_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(25)
  )
  ema_c_delay_mtch (
    .en(1'b1),
    .rst(1'b0),
    .d(register10_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(ema_c_delay_mtch_q_net)
  );
  fpga_kf1_xldelay #(
    .latency(5),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  en_delay (
    .en(1'b1),
    .rst(1'b0),
    .d(const_one1_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(en_delay_q_net)
  );
  fpga_kf1_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(13),
    .a_width(18),
    .b_arith(`xlUnsigned),
    .b_bin_pt(16),
    .b_width(25),
    .c_a_type(0),
    .c_a_width(18),
    .c_b_type(1),
    .c_b_width(25),
    .c_baat(18),
    .c_output_width(43),
    .c_type(0),
    .core_name0("fpga_kf1_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(16),
    .p_width(25),
    .quantization(1)
  )
  prod_div_ema_const (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(div_scale_prod_p_net),
    .b(ema_c_delay_mtch_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(prod_div_ema_const_p_net)
  );
  fpga_kf1_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(18),
    .b_arith(`xlSigned),
    .b_bin_pt(16),
    .b_width(25),
    .c_a_type(0),
    .c_a_width(18),
    .c_b_type(0),
    .c_b_width(25),
    .c_baat(18),
    .c_output_width(43),
    .c_type(0),
    .core_name0("fpga_kf1_mult_gen_v12_0_i0"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(16),
    .p_width(25),
    .quantization(1)
  )
  prod_prev_ema (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(subtract_one_s_net),
    .b(ema_accumulator_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(prod_prev_ema_p_net)
  );
  fpga_kf1_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlUnsigned),
    .b_bin_pt(16),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(27),
    .core_name0("fpga_kf1_c_addsub_v12_0_i6"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(27),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(16),
    .s_width(18)
  )
  subtract_one (
    .clr(1'b0),
    .en(1'b1),
    .a(const_one_op_net),
    .b(register10_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(subtract_one_s_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/ADC_clock_domain_wrapper/Vector Down Sample
module fpga_kf1_vector_down_sample (
  input [25-1:0] in_1,
  input [25-1:0] in_2,
  input [25-1:0] in_3,
  input [25-1:0] in_4,
  input clk_1,
  input ce_1,
  input clk_4,
  input ce_4,
  output [25-1:0] out_1,
  output [25-1:0] out_2,
  output [25-1:0] out_3,
  output [25-1:0] out_4
);
  wire dest_clk_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] downsample1_q_net;
  wire [25-1:0] downsample0_q_net;
  wire [25-1:0] downsample2_q_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] register3_q_net;
  wire clk_net;
  wire ce_net;
  wire dest_ce_net;
  wire [25-1:0] downsample3_q_net;
  assign out_1 = downsample0_q_net;
  assign out_2 = downsample1_q_net;
  assign out_3 = downsample2_q_net;
  assign out_4 = downsample3_q_net;
  assign register0_q_net = in_1;
  assign register1_q_net = in_2;
  assign register2_q_net = in_3;
  assign register3_q_net = in_4;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  assign dest_clk_net = clk_4;
  assign dest_ce_net = ce_4;
  fpga_kf1_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample0 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register0_q_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(dest_clk_net),
    .dest_ce(dest_ce_net),
    .q(downsample0_q_net)
  );
  fpga_kf1_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample1 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register1_q_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(dest_clk_net),
    .dest_ce(dest_ce_net),
    .q(downsample1_q_net)
  );
  fpga_kf1_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample2 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register2_q_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(dest_clk_net),
    .dest_ce(dest_ce_net),
    .q(downsample2_q_net)
  );
  fpga_kf1_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample3 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register3_q_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(dest_clk_net),
    .dest_ce(dest_ce_net),
    .q(downsample3_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/ADC_clock_domain_wrapper/Vector Down Sample1
module fpga_kf1_vector_down_sample1 (
  input [25-1:0] in_1,
  input [25-1:0] in_2,
  input [25-1:0] in_3,
  input [25-1:0] in_4,
  input clk_1,
  input ce_1,
  input clk_4,
  input ce_4,
  output [25-1:0] out_1,
  output [25-1:0] out_2,
  output [25-1:0] out_3,
  output [25-1:0] out_4
);
  wire ce_net;
  wire dest_ce_net;
  wire clk_net;
  wire dest_clk_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] downsample2_q_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] downsample1_q_net;
  wire [25-1:0] downsample3_q_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] downsample0_q_net;
  assign out_1 = downsample0_q_net;
  assign out_2 = downsample1_q_net;
  assign out_3 = downsample2_q_net;
  assign out_4 = downsample3_q_net;
  assign register0_q_net = in_1;
  assign register1_q_net = in_2;
  assign register2_q_net = in_3;
  assign register3_q_net = in_4;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  assign dest_clk_net = clk_4;
  assign dest_ce_net = ce_4;
  fpga_kf1_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample0 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register0_q_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(dest_clk_net),
    .dest_ce(dest_ce_net),
    .q(downsample0_q_net)
  );
  fpga_kf1_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample1 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register1_q_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(dest_clk_net),
    .dest_ce(dest_ce_net),
    .q(downsample1_q_net)
  );
  fpga_kf1_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample2 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register2_q_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(dest_clk_net),
    .dest_ce(dest_ce_net),
    .q(downsample2_q_net)
  );
  fpga_kf1_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample3 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register3_q_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(dest_clk_net),
    .dest_ce(dest_ce_net),
    .q(downsample3_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/ADC_clock_domain_wrapper/Vector Down Sample2
module fpga_kf1_vector_down_sample2 (
  input [25-1:0] in_1,
  input [25-1:0] in_2,
  input clk_1,
  input ce_1,
  input clk_4,
  input ce_4,
  output [25-1:0] out_1,
  output [25-1:0] out_2
);
  wire clk_net;
  wire ce_net;
  wire dest_clk_net;
  wire [25-1:0] downsample1_q_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] register0_q_net;
  wire dest_ce_net;
  wire [25-1:0] downsample0_q_net;
  assign out_1 = downsample0_q_net;
  assign out_2 = downsample1_q_net;
  assign register0_q_net = in_1;
  assign register1_q_net = in_2;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  assign dest_clk_net = clk_4;
  assign dest_ce_net = ce_4;
  fpga_kf1_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample0 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register0_q_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(dest_clk_net),
    .dest_ce(dest_ce_net),
    .q(downsample0_q_net)
  );
  fpga_kf1_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample1 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register1_q_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(dest_clk_net),
    .dest_ce(dest_ce_net),
    .q(downsample1_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/ADC_clock_domain_wrapper/Vector Down Sample3
module fpga_kf1_vector_down_sample3 (
  input [25-1:0] in_1,
  input [25-1:0] in_2,
  input clk_1,
  input ce_1,
  input clk_4,
  input ce_4,
  output [25-1:0] out_1,
  output [25-1:0] out_2
);
  wire clk_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] downsample0_q_net;
  wire [25-1:0] downsample1_q_net;
  wire ce_net;
  wire [25-1:0] register1_q_net;
  wire dest_clk_net;
  wire dest_ce_net;
  assign out_1 = downsample0_q_net;
  assign out_2 = downsample1_q_net;
  assign register0_q_net = in_1;
  assign register1_q_net = in_2;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  assign dest_clk_net = clk_4;
  assign dest_ce_net = ce_4;
  fpga_kf1_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample0 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register0_q_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(dest_clk_net),
    .dest_ce(dest_ce_net),
    .q(downsample0_q_net)
  );
  fpga_kf1_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample1 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register1_q_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(dest_clk_net),
    .dest_ce(dest_ce_net),
    .q(downsample1_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/ADC_clock_domain_wrapper/Vector Down Sample4
module fpga_kf1_vector_down_sample4 (
  input [25-1:0] in_1,
  input [25-1:0] in_2,
  input clk_1,
  input ce_1,
  input clk_4,
  input ce_4,
  output [25-1:0] out_1,
  output [25-1:0] out_2
);
  wire dest_ce_net;
  wire clk_net;
  wire dest_clk_net;
  wire [25-1:0] downsample0_q_net;
  wire ce_net;
  wire [25-1:0] downsample1_q_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] register0_q_net;
  assign out_1 = downsample0_q_net;
  assign out_2 = downsample1_q_net;
  assign register0_q_net = in_1;
  assign register1_q_net = in_2;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  assign dest_clk_net = clk_4;
  assign dest_ce_net = ce_4;
  fpga_kf1_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample0 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register0_q_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(dest_clk_net),
    .dest_ce(dest_ce_net),
    .q(downsample0_q_net)
  );
  fpga_kf1_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample1 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register1_q_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(dest_clk_net),
    .dest_ce(dest_ce_net),
    .q(downsample1_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/ADC_clock_domain_wrapper/Vector Down Sample5
module fpga_kf1_vector_down_sample5 (
  input [25-1:0] in_1,
  input [25-1:0] in_2,
  input clk_1,
  input ce_1,
  input clk_4,
  input ce_4,
  output [25-1:0] out_1,
  output [25-1:0] out_2
);
  wire [25-1:0] downsample1_q_net;
  wire dest_clk_net;
  wire [25-1:0] register1_q_net;
  wire clk_net;
  wire [25-1:0] downsample0_q_net;
  wire ce_net;
  wire dest_ce_net;
  wire [25-1:0] register0_q_net;
  assign out_1 = downsample0_q_net;
  assign out_2 = downsample1_q_net;
  assign register0_q_net = in_1;
  assign register1_q_net = in_2;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  assign dest_clk_net = clk_4;
  assign dest_ce_net = ce_4;
  fpga_kf1_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample0 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register0_q_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(dest_clk_net),
    .dest_ce(dest_ce_net),
    .q(downsample0_q_net)
  );
  fpga_kf1_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample1 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register1_q_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(dest_clk_net),
    .dest_ce(dest_ce_net),
    .q(downsample1_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/ADC_clock_domain_wrapper/Vector Down Sample6
module fpga_kf1_vector_down_sample6 (
  input [25-1:0] in_1,
  input [25-1:0] in_2,
  input clk_1,
  input ce_1,
  input clk_4,
  input ce_4,
  output [25-1:0] out_1,
  output [25-1:0] out_2
);
  wire [25-1:0] register1_q_net;
  wire clk_net;
  wire ce_net;
  wire dest_ce_net;
  wire dest_clk_net;
  wire [25-1:0] downsample0_q_net;
  wire [25-1:0] downsample1_q_net;
  wire [25-1:0] register0_q_net;
  assign out_1 = downsample0_q_net;
  assign out_2 = downsample1_q_net;
  assign register0_q_net = in_1;
  assign register1_q_net = in_2;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  assign dest_clk_net = clk_4;
  assign dest_ce_net = ce_4;
  fpga_kf1_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample0 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register0_q_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(dest_clk_net),
    .dest_ce(dest_ce_net),
    .q(downsample0_q_net)
  );
  fpga_kf1_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample1 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register1_q_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(dest_clk_net),
    .dest_ce(dest_ce_net),
    .q(downsample1_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/ADC_clock_domain_wrapper/Vector Down Sample7
module fpga_kf1_vector_down_sample7 (
  input [18-1:0] in_1,
  input [18-1:0] in_2,
  input clk_1,
  input ce_1,
  input clk_4,
  input ce_4,
  output [18-1:0] out_1,
  output [18-1:0] out_2
);
  wire [18-1:0] downsample0_q_net;
  wire clk_net;
  wire [18-1:0] register0_q_net;
  wire [18-1:0] register1_q_net;
  wire [18-1:0] downsample1_q_net;
  wire ce_net;
  wire dest_clk_net;
  wire dest_ce_net;
  assign out_1 = downsample0_q_net;
  assign out_2 = downsample1_q_net;
  assign register0_q_net = in_1;
  assign register1_q_net = in_2;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  assign dest_clk_net = clk_4;
  assign dest_ce_net = ce_4;
  fpga_kf1_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(15),
    .d_width(18),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(15),
    .q_width(18)
  )
  downsample0 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register0_q_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(dest_clk_net),
    .dest_ce(dest_ce_net),
    .q(downsample0_q_net)
  );
  fpga_kf1_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(15),
    .d_width(18),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(15),
    .q_width(18)
  )
  downsample1 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register1_q_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(dest_clk_net),
    .dest_ce(dest_ce_net),
    .q(downsample1_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/ADC_clock_domain_wrapper/Vector Down Sample8
module fpga_kf1_vector_down_sample8 (
  input [25-1:0] in_1,
  input [25-1:0] in_2,
  input clk_1,
  input ce_1,
  input clk_4,
  input ce_4,
  output [25-1:0] out_1,
  output [25-1:0] out_2
);
  wire [25-1:0] register0_q_net;
  wire [25-1:0] downsample0_q_net;
  wire [25-1:0] downsample1_q_net;
  wire [25-1:0] register1_q_net;
  wire dest_ce_net;
  wire clk_net;
  wire dest_clk_net;
  wire ce_net;
  assign out_1 = downsample0_q_net;
  assign out_2 = downsample1_q_net;
  assign register0_q_net = in_1;
  assign register1_q_net = in_2;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  assign dest_clk_net = clk_4;
  assign dest_ce_net = ce_4;
  fpga_kf1_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample0 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register0_q_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(dest_clk_net),
    .dest_ce(dest_ce_net),
    .q(downsample0_q_net)
  );
  fpga_kf1_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample1 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register1_q_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(dest_clk_net),
    .dest_ce(dest_ce_net),
    .q(downsample1_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/ADC_clock_domain_wrapper/Vector Down Sample9
module fpga_kf1_vector_down_sample9 (
  input [25-1:0] in_1,
  input [25-1:0] in_2,
  input clk_1,
  input ce_1,
  input clk_4,
  input ce_4,
  output [25-1:0] out_1,
  output [25-1:0] out_2
);
  wire [25-1:0] downsample0_q_net;
  wire [25-1:0] downsample1_q_net;
  wire ce_net;
  wire dest_clk_net;
  wire [25-1:0] register0_q_net;
  wire dest_ce_net;
  wire [25-1:0] register1_q_net;
  wire clk_net;
  assign out_1 = downsample0_q_net;
  assign out_2 = downsample1_q_net;
  assign register0_q_net = in_1;
  assign register1_q_net = in_2;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  assign dest_clk_net = clk_4;
  assign dest_ce_net = ce_4;
  fpga_kf1_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample0 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register0_q_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(dest_clk_net),
    .dest_ce(dest_ce_net),
    .q(downsample0_q_net)
  );
  fpga_kf1_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  downsample1 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register1_q_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(dest_clk_net),
    .dest_ce(dest_ce_net),
    .q(downsample1_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/ADC_clock_domain_wrapper
module fpga_kf1_adc_clock_domain_wrapper (
  input [1-1:0] sw_in,
  input [25-1:0] fmat_in_1,
  input [25-1:0] lmat_in_1,
  input [25-1:0] kmat_in_1,
  input [25-1:0] bmat_in_1,
  input [25-1:0] fmat_ip_in_1,
  input [25-1:0] lmat_ip_in_1,
  input [25-1:0] kmat_ip_in_1,
  input [25-1:0] bmat_ip_in_1,
  input [2-1:0] divider_mux_sel_in,
  input [25-1:0] div_scale_const_in,
  input [25-1:0] ema_const_in,
  input [2-1:0] hw_switch_override,
  input [14-1:0] adc_ch1_offst,
  input [14-1:0] adc_ch2_offst,
  input [14-1:0] pot_switch_hw,
  input [1-1:0] pot_switch_hw_flag,
  input [6-1:0] leds_in,
  input [25-1:0] ema_const_fast_in,
  input [18-1:0] x_ref_in,
  input [2-1:0] fb_src_switch,
  input [18-1:0] barrier_ub_lb_in_1,
  input [25-1:0] barrier_c_idx_in,
  input [10-1:0] barrier_c_ofst_idx_in,
  input [10-1:0] barrier_ram_addr_in,
  input [25-1:0] barrier_ram_data_in_1,
  input [1-1:0] barrier_ram_we_in,
  input [25-1:0] fmat_in_2,
  input [25-1:0] fmat_in_3,
  input [25-1:0] fmat_in_4,
  input [25-1:0] lmat_in_2,
  input [25-1:0] kmat_in_2,
  input [25-1:0] bmat_in_2,
  input [25-1:0] fmat_ip_in_2,
  input [25-1:0] fmat_ip_in_3,
  input [25-1:0] fmat_ip_in_4,
  input [25-1:0] lmat_ip_in_2,
  input [25-1:0] kmat_ip_in_2,
  input [25-1:0] bmat_ip_in_2,
  input [18-1:0] barrier_ub_lb_in_2,
  input [25-1:0] barrier_ram_data_in_2,
  input [1-1:0] hw_pot_switch,
  input [14-1:0] power_monitor_in,
  input [14-1:0] x_in,
  input clk_1,
  input ce_1,
  input clk_4,
  input ce_4,
  output [16-1:0] divisor_out,
  output [32-1:0] dma_out,
  output [14-1:0] gate_ch2_out,
  output [14-1:0] gate_fb_out,
  output [8-1:0] gate_leds_out,
  output [14-1:0] gate_x1_out,
  output [14-1:0] gate_x2_out,
  output [14-1:0] gate_x_ref_out,
  output [16-1:0] gate_y_corrected_out
);
  wire [1-1:0] register9_q_net;
  wire [25-1:0] register10_q_net;
  wire [2-1:0] register5_q_net_x0;
  wire [25-1:0] register0_q_net_x2;
  wire [18-1:0] register11_q_net;
  wire [10-1:0] register14_q_net;
  wire [25-1:0] register0_q_net_x0;
  wire [1-1:0] register15_q_net;
  wire [25-1:0] register0_q_net_x1;
  wire [25-1:0] register2_q_net_x1;
  wire [1-1:0] register_q_net_x0;
  wire [25-1:0] register0_q_net_x3;
  wire [14-1:0] register8_q_net;
  wire [6-1:0] register7_q_net_x0;
  wire [2-1:0] register16_q_net;
  wire [25-1:0] register4_q_net;
  wire [25-1:0] register12_q_net;
  wire [25-1:0] register3_q_net_x1;
  wire [25-1:0] register1_q_net_x7;
  wire [18-1:0] register0_q_net_x8;
  wire [25-1:0] register1_q_net_x4;
  wire [14-1:0] register3_q_net_x0;
  wire [10-1:0] register13_q_net;
  wire [25-1:0] register0_q_net_x6;
  wire [25-1:0] register0_q_net_x4;
  wire [25-1:0] register0_q_net_x7;
  wire [2-1:0] register1_q_net_x3;
  wire [25-1:0] register0_q_net_x5;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] register2_q_net_x0;
  wire [14-1:0] register6_q_net;
  wire [25-1:0] ema_accumulator_s_net;
  wire [25-1:0] downsample0_q_net_x0;
  wire [25-1:0] downsample2_q_net_x0;
  wire ce_net;
  wire [25-1:0] register1_q_net_x9;
  wire [16-1:0] divider_out_mux_y_net;
  wire [25-1:0] register3_q_net_x2;
  wire [32-1:0] concat_y_net;
  wire [14-1:0] x_in_net;
  wire [18-1:0] div_scale_prod_p_net;
  wire [25-1:0] downsample2_q_net;
  wire [25-1:0] downsample1_q_net;
  wire [18-1:0] reciproc_float_to_fix_dout_net;
  wire [25-1:0] downsample3_q_net_x0;
  wire [16-1:0] sfix16_13_cast_dout_net;
  wire [25-1:0] register1_q_net_x5;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] register2_q_net_x2;
  wire [18-1:0] register1_q_net_x1;
  wire [14-1:0] power_monitor_in_net;
  wire dest_ce_net;
  wire [25-1:0] downsample0_q_net;
  wire [25-1:0] downsample3_q_net;
  wire [25-1:0] downsample1_q_net_x0;
  wire [25-1:0] downsample0_q_net_x1;
  wire [1-1:0] hw_pot_switch_net;
  wire [25-1:0] register1_q_net_x8;
  wire [25-1:0] register1_q_net_x0;
  wire [14-1:0] convert6_dout_net;
  wire [8-1:0] concat1_y_net;
  wire [14-1:0] convert7_dout_net;
  wire [25-1:0] register1_q_net_x10;
  wire [25-1:0] ema_accumulator_s_net_x0;
  wire [14-1:0] register2_q_net;
  wire [25-1:0] register1_q_net_x6;
  wire [14-1:0] convert8_dout_net;
  wire [14-1:0] register3_q_net;
  wire clk_net;
  wire dest_clk_net;
  wire [25-1:0] downsample0_q_net_x3;
  wire [25-1:0] downsample1_q_net_x7;
  wire [18-1:0] divider_mux_y_net;
  wire [25-1:0] downsample1_q_net_x2;
  wire [25-1:0] downsample1_q_net_x5;
  wire [25-1:0] downsample0_q_net_x8;
  wire [10-1:0] addsub3_s_net;
  wire [10-1:0] down_sample3_q_net;
  wire [25-1:0] downsample1_q_net_x1;
  wire [25-1:0] downsample1_q_net_x4;
  wire [25-1:0] downsample0_q_net_x5;
  wire [20-1:0] addsub1_s_net;
  wire [20-1:0] addsub4_s_net;
  wire [25-1:0] downsample1_q_net_x3;
  wire [25-1:0] downsample0_q_net_x7;
  wire [43-1:0] mult11_p_net;
  wire [25-1:0] downsample1_q_net_x8;
  wire [11-1:0] mult1_p_net;
  wire [20-1:0] addsub10_s_net;
  wire [25-1:0] downsample0_q_net_x2;
  wire [18-1:0] downsample0_q_net_x6;
  wire [20-1:0] addsub6_s_net;
  wire [43-1:0] mult_p_net;
  wire [18-1:0] downsample1_q_net_x6;
  wire [25-1:0] downsample0_q_net_x4;
  wire [20-1:0] addsub11_s_net;
  wire [18-1:0] addsub_s_net;
  wire [43-1:0] mult12_p_net;
  wire [25-1:0] c0_ram_doutb_net;
  wire [43-1:0] mult9_p_net;
  wire [20-1:0] addsub5_s_net;
  wire [44-1:0] addsub7_s_net;
  wire [25-1:0] constant3_op_net;
  wire [43-1:0] mult7_p_net;
  wire [43-1:0] mult4_p_net;
  wire [43-1:0] mult6_p_net;
  wire [43-1:0] mult2_p_net;
  wire [43-1:0] mult8_p_net;
  wire [43-1:0] mult3_p_net;
  wire [18-1:0] addsub8_s_net;
  wire [25-1:0] c0_ram_douta_net;
  wire [18-1:0] mult5_p_net;
  wire [18-1:0] convert_dout_net;
  wire [16-1:0] reinterpret5_output_port_net;
  wire [18-1:0] constant_op_net;
  wire [18-1:0] constant1_op_net;
  wire [16-1:0] reinterpret3_output_port_net;
  wire [25-1:0] c1_ram_doutb_net;
  wire [1-1:0] constant4_op_net;
  wire [1-1:0] pot_sw_mux_y_net;
  wire [10-1:0] down_sample4_q_net;
  wire [1-1:0] down_sample5_q_net;
  wire [25-1:0] c1_ram_douta_net;
  wire [1-1:0] relational_op_net;
  wire [18-1:0] up_sample1_q_net;
  wire [2-1:0] convert3_dout_net;
  wire [18-1:0] convert1_dout_net;
  wire [14-1:0] convert5_dout_net;
  wire [18-1:0] convert2_dout_net;
  wire [14-1:0] convert4_dout_net;
  wire [18-1:0] add_offset_ch2_s_net;
  wire [2-1:0] down_sample6_q_net;
  wire [1-1:0] down_sample1_q_net;
  wire [25-1:0] down_sample2_q_net;
  wire [18-1:0] down_sample_q_net;
  wire [25-1:0] mux11_y_net;
  wire [2-1:0] expression_dout_net;
  wire [25-1:0] mux12_y_net;
  wire [18-1:0] mux10_y_net;
  wire [25-1:0] mux_y_net;
  wire [18-1:0] mux8_y_net;
  wire [1-1:0] inverter_op_net;
  wire [1-1:0] register_q_net;
  wire [2-1:0] shift_op_net;
  wire [25-1:0] mux4_y_net;
  wire [18-1:0] register5_q_net;
  wire [25-1:0] mux3_y_net;
  wire [18-1:0] register7_q_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] mux2_y_net;
  wire [18-1:0] register1_q_net_x2;
  wire [25-1:0] mux6_y_net;
  wire [25-1:0] mux7_y_net;
  wire [25-1:0] mux5_y_net;
  wire [16-1:0] reinterpret_output_port_net;
  wire [16-1:0] sfix16_cast1_dout_net;
  wire [16-1:0] reinterpret4_output_port_net;
  wire [16-1:0] sfix16_cast3_dout_net;
  wire [16-1:0] reinterpret1_output_port_net;
  wire [16-1:0] sfix16_cast2_dout_net;
  wire [16-1:0] reinterpret2_output_port_net;
  wire [14-1:0] up_sample3_q_net;
  wire [16-1:0] sfix16_cast4_dout_net;
  wire [14-1:0] up_sample2_q_net;
  wire [1-1:0] relational1_op_net;
  wire [18-1:0] add_offset_ch1_s_net;
  wire [16-1:0] sfix16_cast6_dout_net;
  wire [14-1:0] x_in_reg_q_net;
  wire [16-1:0] sfix16_cast5_dout_net;
  wire [25-1:0] ema_times_slow_ema_p_net;
  wire [14-1:0] ofst_mon_in_reg_q_net;
  wire [32-1:0] div_fix_to_float_dout_net;
  wire [18-1:0] prod_x_ema_div_p_net;
  wire [18-1:0] prod_x_ema_rat_p_net;
  wire [32-1:0] div_reciproc_op_net;
  wire [18-1:0] prod_x_div_p_net;
  assign register_q_net_x0 = sw_in;
  assign register0_q_net_x1 = fmat_in_1;
  assign register0_q_net_x4 = lmat_in_1;
  assign register0_q_net_x3 = kmat_in_1;
  assign register0_q_net = bmat_in_1;
  assign register0_q_net_x2 = fmat_ip_in_1;
  assign register0_q_net_x5 = lmat_ip_in_1;
  assign register0_q_net_x6 = kmat_ip_in_1;
  assign register0_q_net_x7 = bmat_ip_in_1;
  assign register1_q_net_x3 = divider_mux_sel_in;
  assign register2_q_net_x0 = div_scale_const_in;
  assign register4_q_net = ema_const_in;
  assign register5_q_net_x0 = hw_switch_override;
  assign register3_q_net_x0 = adc_ch1_offst;
  assign register6_q_net = adc_ch2_offst;
  assign register8_q_net = pot_switch_hw;
  assign register9_q_net = pot_switch_hw_flag;
  assign register7_q_net_x0 = leds_in;
  assign register10_q_net = ema_const_fast_in;
  assign register11_q_net = x_ref_in;
  assign register16_q_net = fb_src_switch;
  assign register0_q_net_x8 = barrier_ub_lb_in_1;
  assign register12_q_net = barrier_c_idx_in;
  assign register13_q_net = barrier_c_ofst_idx_in;
  assign register14_q_net = barrier_ram_addr_in;
  assign register0_q_net_x0 = barrier_ram_data_in_1;
  assign register15_q_net = barrier_ram_we_in;
  assign register1_q_net_x4 = fmat_in_2;
  assign register2_q_net_x1 = fmat_in_3;
  assign register3_q_net_x1 = fmat_in_4;
  assign register1_q_net_x7 = lmat_in_2;
  assign register1_q_net_x6 = kmat_in_2;
  assign register1_q_net = bmat_in_2;
  assign register1_q_net_x5 = fmat_ip_in_2;
  assign register2_q_net_x2 = fmat_ip_in_3;
  assign register3_q_net_x2 = fmat_ip_in_4;
  assign register1_q_net_x8 = lmat_ip_in_2;
  assign register1_q_net_x9 = kmat_ip_in_2;
  assign register1_q_net_x10 = bmat_ip_in_2;
  assign register1_q_net_x1 = barrier_ub_lb_in_2;
  assign register1_q_net_x0 = barrier_ram_data_in_2;
  assign divisor_out = divider_out_mux_y_net;
  assign dma_out = concat_y_net;
  assign gate_ch2_out = convert8_dout_net;
  assign gate_fb_out = convert6_dout_net;
  assign gate_leds_out = concat1_y_net;
  assign gate_x1_out = register2_q_net;
  assign gate_x2_out = register3_q_net;
  assign gate_x_ref_out = convert7_dout_net;
  assign gate_y_corrected_out = sfix16_13_cast_dout_net;
  assign hw_pot_switch_net = hw_pot_switch;
  assign power_monitor_in_net = power_monitor_in;
  assign x_in_net = x_in;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  assign dest_clk_net = clk_4;
  assign dest_ce_net = ce_4;
  fpga_kf1_monitor_reciproc_ema monitor_reciproc_ema (
    .mon_in(reciproc_float_to_fix_dout_net),
    .ema_const(register4_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .ema_out(ema_accumulator_s_net_x0)
  );
  fpga_kf1_monitor_slow_ema monitor_slow_ema (
    .mon_in(div_scale_prod_p_net),
    .ema_const(register10_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .ema_out(ema_accumulator_s_net)
  );
  fpga_kf1_vector_down_sample vector_down_sample (
    .in_1(register0_q_net_x1),
    .in_2(register1_q_net_x4),
    .in_3(register2_q_net_x1),
    .in_4(register3_q_net_x1),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .clk_4(dest_clk_net),
    .ce_4(dest_ce_net),
    .out_1(downsample0_q_net),
    .out_2(downsample1_q_net),
    .out_3(downsample2_q_net),
    .out_4(downsample3_q_net)
  );
  fpga_kf1_vector_down_sample1 vector_down_sample1 (
    .in_1(register0_q_net_x2),
    .in_2(register1_q_net_x5),
    .in_3(register2_q_net_x2),
    .in_4(register3_q_net_x2),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .clk_4(dest_clk_net),
    .ce_4(dest_ce_net),
    .out_1(downsample0_q_net_x0),
    .out_2(downsample1_q_net_x0),
    .out_3(downsample2_q_net_x0),
    .out_4(downsample3_q_net_x0)
  );
  fpga_kf1_vector_down_sample2 vector_down_sample2 (
    .in_1(register0_q_net_x4),
    .in_2(register1_q_net_x7),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .clk_4(dest_clk_net),
    .ce_4(dest_ce_net),
    .out_1(downsample0_q_net_x1),
    .out_2(downsample1_q_net_x1)
  );
  fpga_kf1_vector_down_sample3 vector_down_sample3 (
    .in_1(register0_q_net_x3),
    .in_2(register1_q_net_x6),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .clk_4(dest_clk_net),
    .ce_4(dest_ce_net),
    .out_1(downsample0_q_net_x2),
    .out_2(downsample1_q_net_x2)
  );
  fpga_kf1_vector_down_sample4 vector_down_sample4 (
    .in_1(register0_q_net_x5),
    .in_2(register1_q_net_x8),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .clk_4(dest_clk_net),
    .ce_4(dest_ce_net),
    .out_1(downsample0_q_net_x3),
    .out_2(downsample1_q_net_x3)
  );
  fpga_kf1_vector_down_sample5 vector_down_sample5 (
    .in_1(register0_q_net_x6),
    .in_2(register1_q_net_x9),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .clk_4(dest_clk_net),
    .ce_4(dest_ce_net),
    .out_1(downsample0_q_net_x4),
    .out_2(downsample1_q_net_x4)
  );
  fpga_kf1_vector_down_sample6 vector_down_sample6 (
    .in_1(register0_q_net_x7),
    .in_2(register1_q_net_x10),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .clk_4(dest_clk_net),
    .ce_4(dest_ce_net),
    .out_1(downsample0_q_net_x5),
    .out_2(downsample1_q_net_x5)
  );
  fpga_kf1_vector_down_sample7 vector_down_sample7 (
    .in_1(register0_q_net_x8),
    .in_2(register1_q_net_x1),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .clk_4(dest_clk_net),
    .ce_4(dest_ce_net),
    .out_1(downsample0_q_net_x6),
    .out_2(downsample1_q_net_x6)
  );
  fpga_kf1_vector_down_sample8 vector_down_sample8 (
    .in_1(register0_q_net_x0),
    .in_2(register1_q_net_x0),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .clk_4(dest_clk_net),
    .ce_4(dest_ce_net),
    .out_1(downsample0_q_net_x7),
    .out_2(downsample1_q_net_x7)
  );
  fpga_kf1_vector_down_sample9 vector_down_sample9 (
    .in_1(register0_q_net),
    .in_2(register1_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .clk_4(dest_clk_net),
    .ce_4(dest_ce_net),
    .out_1(downsample0_q_net_x8),
    .out_2(downsample1_q_net_x8)
  );
  fpga_kf1_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(15),
    .a_width(18),
    .b_arith(`xlSigned),
    .b_bin_pt(15),
    .b_width(18),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(19),
    .core_name0("fpga_kf1_c_addsub_v12_0_i0"),
    .extra_registers(1),
    .full_s_arith(2),
    .full_s_width(19),
    .latency(2),
    .overflow(2),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(15),
    .s_width(18)
  )
  addsub (
    .clr(1'b0),
    .en(1'b1),
    .a(divider_mux_y_net),
    .b(register11_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub_s_net)
  );
  fpga_kf1_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(31),
    .a_width(43),
    .b_arith(`xlSigned),
    .b_bin_pt(15),
    .b_width(20),
    .c_has_c_out(0),
    .c_latency(0),
    .c_output_width(44),
    .core_name0("fpga_kf1_c_addsub_v12_0_i1"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(44),
    .latency(0),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(15),
    .s_width(20)
  )
  addsub1 (
    .clr(1'b0),
    .en(1'b1),
    .a(mult_p_net),
    .b(addsub6_s_net),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .s(addsub1_s_net)
  );
  fpga_kf1_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(15),
    .a_width(20),
    .b_arith(`xlSigned),
    .b_bin_pt(31),
    .b_width(43),
    .c_has_c_out(0),
    .c_latency(0),
    .c_output_width(44),
    .core_name0("fpga_kf1_c_addsub_v12_0_i1"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(44),
    .latency(0),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(15),
    .s_width(20)
  )
  addsub10 (
    .clr(1'b0),
    .en(1'b1),
    .a(addsub4_s_net),
    .b(mult11_p_net),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .s(addsub10_s_net)
  );
  fpga_kf1_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(15),
    .a_width(20),
    .b_arith(`xlSigned),
    .b_bin_pt(31),
    .b_width(43),
    .c_has_c_out(0),
    .c_latency(0),
    .c_output_width(44),
    .core_name0("fpga_kf1_c_addsub_v12_0_i1"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(44),
    .latency(0),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(15),
    .s_width(20)
  )
  addsub11 (
    .clr(1'b0),
    .en(1'b1),
    .a(addsub1_s_net),
    .b(mult12_p_net),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .s(addsub11_s_net)
  );
  fpga_kf1_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(0),
    .a_width(11),
    .b_arith(`xlUnsigned),
    .b_bin_pt(0),
    .b_width(10),
    .c_has_c_out(0),
    .c_latency(0),
    .c_output_width(12),
    .core_name0("fpga_kf1_c_addsub_v12_0_i2"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(12),
    .latency(0),
    .overflow(2),
    .quantization(1),
    .s_arith(`xlUnsigned),
    .s_bin_pt(0),
    .s_width(10)
  )
  addsub3 (
    .clr(1'b0),
    .en(1'b1),
    .a(mult1_p_net),
    .b(down_sample3_q_net),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .s(addsub3_s_net)
  );
  fpga_kf1_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(31),
    .a_width(43),
    .b_arith(`xlSigned),
    .b_bin_pt(15),
    .b_width(20),
    .c_has_c_out(0),
    .c_latency(0),
    .c_output_width(44),
    .core_name0("fpga_kf1_c_addsub_v12_0_i1"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(44),
    .latency(0),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(15),
    .s_width(20)
  )
  addsub4 (
    .clr(1'b0),
    .en(1'b1),
    .a(mult4_p_net),
    .b(addsub5_s_net),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .s(addsub4_s_net)
  );
  fpga_kf1_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(31),
    .a_width(43),
    .b_arith(`xlSigned),
    .b_bin_pt(31),
    .b_width(43),
    .c_has_c_out(0),
    .c_latency(0),
    .c_output_width(44),
    .core_name0("fpga_kf1_c_addsub_v12_0_i1"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(44),
    .latency(0),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(15),
    .s_width(20)
  )
  addsub5 (
    .clr(1'b0),
    .en(1'b1),
    .a(mult6_p_net),
    .b(mult7_p_net),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .s(addsub5_s_net)
  );
  fpga_kf1_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(31),
    .a_width(43),
    .b_arith(`xlSigned),
    .b_bin_pt(31),
    .b_width(43),
    .c_has_c_out(0),
    .c_latency(0),
    .c_output_width(44),
    .core_name0("fpga_kf1_c_addsub_v12_0_i1"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(44),
    .latency(0),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(15),
    .s_width(20)
  )
  addsub6 (
    .clr(1'b0),
    .en(1'b1),
    .a(mult2_p_net),
    .b(mult3_p_net),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .s(addsub6_s_net)
  );
  fpga_kf1_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(31),
    .a_width(43),
    .b_arith(`xlSigned),
    .b_bin_pt(31),
    .b_width(43),
    .c_has_c_out(0),
    .c_latency(0),
    .c_output_width(44),
    .core_name0("fpga_kf1_c_addsub_v12_0_i1"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(44),
    .latency(0),
    .overflow(2),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(31),
    .s_width(44)
  )
  addsub7 (
    .clr(1'b0),
    .en(1'b1),
    .a(mult8_p_net),
    .b(mult9_p_net),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .s(addsub7_s_net)
  );
  fpga_kf1_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(15),
    .b_width(18),
    .c_has_c_out(0),
    .c_latency(0),
    .c_output_width(26),
    .core_name0("fpga_kf1_c_addsub_v12_0_i3"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(0),
    .overflow(2),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(15),
    .s_width(18)
  )
  addsub8 (
    .clr(1'b0),
    .en(1'b1),
    .a(c0_ram_douta_net),
    .b(mult5_p_net),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .s(addsub8_s_net)
  );
  fpga_kf1_xltdpram #(
    .addr_width_b(10),
    .clocking_mode("common_clock"),
    .data_width_b(25),
    .latency(1),
    .mem_init_file("xpm_1da7c4_vivado.mem"),
    .mem_size(25600),
    .mem_type("block"),
    .read_reset_a("0"),
    .read_reset_b("0"),
    .width(25),
    .width_addr(10),
    .write_mode_a("read_first"),
    .write_mode_b("read_first")
  )
  c0_ram (
    .ena(1'b1),
    .enb(1'b1),
    .rsta(1'b0),
    .rstb(1'b0),
    .addra(addsub3_s_net),
    .dina(constant3_op_net),
    .wea(constant4_op_net),
    .addrb(down_sample4_q_net),
    .dinb(downsample0_q_net_x7),
    .web(down_sample5_q_net),
    .a_clk(dest_clk_net),
    .a_ce(dest_ce_net),
    .b_clk(dest_clk_net),
    .b_ce(dest_ce_net),
    .douta(c0_ram_douta_net),
    .doutb(c0_ram_doutb_net)
  );
  fpga_kf1_xltdpram #(
    .addr_width_b(10),
    .clocking_mode("common_clock"),
    .data_width_b(25),
    .latency(1),
    .mem_init_file("xpm_667eaa_vivado.mem"),
    .mem_size(25600),
    .mem_type("block"),
    .read_reset_a("0"),
    .read_reset_b("0"),
    .width(25),
    .width_addr(10),
    .write_mode_a("read_first"),
    .write_mode_b("read_first")
  )
  c1_ram (
    .ena(1'b1),
    .enb(1'b1),
    .rsta(1'b0),
    .rstb(1'b0),
    .addra(addsub3_s_net),
    .dina(constant3_op_net),
    .wea(constant4_op_net),
    .addrb(down_sample4_q_net),
    .dinb(downsample1_q_net_x7),
    .web(down_sample5_q_net),
    .a_clk(dest_clk_net),
    .a_ce(dest_ce_net),
    .b_clk(dest_clk_net),
    .b_ce(dest_ce_net),
    .douta(c1_ram_douta_net),
    .doutb(c1_ram_doutb_net)
  );
  sysgen_concat_f9930963fd concat (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .in0(reinterpret3_output_port_net),
    .in1(reinterpret5_output_port_net),
    .y(concat_y_net)
  );
  sysgen_concat_3661dafc99 concat1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .in0(register7_q_net_x0),
    .in1(register9_q_net),
    .in2(pot_sw_mux_y_net),
    .y(concat1_y_net)
  );
  sysgen_constant_d6c664d38e constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  sysgen_constant_d6c664d38e constant1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant1_op_net)
  );
  sysgen_constant_d3d0f6cd4c constant3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant3_op_net)
  );
  sysgen_constant_2301c2f8c1 constant4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant4_op_net)
  );
  fpga_kf1_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(15),
    .din_width(20),
    .dout_arith(2),
    .dout_bin_pt(15),
    .dout_width(18),
    .latency(0),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert (
    .clr(1'b0),
    .en(1'b1),
    .din(addsub10_s_net),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .dout(convert_dout_net)
  );
  fpga_kf1_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(15),
    .din_width(20),
    .dout_arith(2),
    .dout_bin_pt(15),
    .dout_width(18),
    .latency(0),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert1 (
    .clr(1'b0),
    .en(1'b1),
    .din(addsub11_s_net),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .dout(convert1_dout_net)
  );
  fpga_kf1_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(31),
    .din_width(44),
    .dout_arith(2),
    .dout_bin_pt(15),
    .dout_width(18),
    .latency(0),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert2 (
    .clr(1'b0),
    .en(1'b1),
    .din(addsub7_s_net),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .dout(convert2_dout_net)
  );
  fpga_kf1_xlconvert #(
    .bool_conversion(0),
    .din_arith(1),
    .din_bin_pt(0),
    .din_width(1),
    .dout_arith(1),
    .dout_bin_pt(0),
    .dout_width(2),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  convert3 (
    .clr(1'b0),
    .en(1'b1),
    .din(relational_op_net),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .dout(convert3_dout_net)
  );
  fpga_kf1_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(15),
    .din_width(18),
    .dout_arith(2),
    .dout_bin_pt(13),
    .dout_width(14),
    .latency(0),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert4 (
    .clr(1'b0),
    .en(1'b1),
    .din(convert_dout_net),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .dout(convert4_dout_net)
  );
  fpga_kf1_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(15),
    .din_width(18),
    .dout_arith(2),
    .dout_bin_pt(13),
    .dout_width(14),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  convert5 (
    .clr(1'b0),
    .en(1'b1),
    .din(convert1_dout_net),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .dout(convert5_dout_net)
  );
  fpga_kf1_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(15),
    .din_width(18),
    .dout_arith(2),
    .dout_bin_pt(13),
    .dout_width(14),
    .latency(0),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert6 (
    .clr(1'b0),
    .en(1'b1),
    .din(up_sample1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert6_dout_net)
  );
  fpga_kf1_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(15),
    .din_width(18),
    .dout_arith(2),
    .dout_bin_pt(13),
    .dout_width(14),
    .latency(0),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert7 (
    .clr(1'b0),
    .en(1'b1),
    .din(register11_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert7_dout_net)
  );
  fpga_kf1_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(13),
    .din_width(18),
    .dout_arith(2),
    .dout_bin_pt(13),
    .dout_width(14),
    .latency(1),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert8 (
    .clr(1'b0),
    .en(1'b1),
    .din(add_offset_ch2_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert8_dout_net)
  );
  fpga_kf1_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(15),
    .d_width(18),
    .ds_ratio(4),
    .latency(1),
    .phase(0),
    .q_arith(`xlSigned),
    .q_bin_pt(15),
    .q_width(18)
  )
  down_sample (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(addsub_s_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(dest_clk_net),
    .dest_ce(dest_ce_net),
    .q(down_sample_q_net)
  );
  fpga_kf1_xldsamp #(
    .d_arith(`xlUnsigned),
    .d_bin_pt(0),
    .d_width(1),
    .ds_ratio(4),
    .latency(1),
    .phase(0),
    .q_arith(`xlUnsigned),
    .q_bin_pt(0),
    .q_width(1)
  )
  down_sample1 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(pot_sw_mux_y_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(dest_clk_net),
    .dest_ce(dest_ce_net),
    .q(down_sample1_q_net)
  );
  fpga_kf1_xldsamp #(
    .d_arith(`xlUnsigned),
    .d_bin_pt(0),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(0),
    .q_arith(`xlUnsigned),
    .q_bin_pt(0),
    .q_width(25)
  )
  down_sample2 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register12_q_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(dest_clk_net),
    .dest_ce(dest_ce_net),
    .q(down_sample2_q_net)
  );
  fpga_kf1_xldsamp #(
    .d_arith(`xlUnsigned),
    .d_bin_pt(0),
    .d_width(10),
    .ds_ratio(4),
    .latency(1),
    .phase(0),
    .q_arith(`xlUnsigned),
    .q_bin_pt(0),
    .q_width(10)
  )
  down_sample3 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register13_q_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(dest_clk_net),
    .dest_ce(dest_ce_net),
    .q(down_sample3_q_net)
  );
  fpga_kf1_xldsamp #(
    .d_arith(`xlUnsigned),
    .d_bin_pt(0),
    .d_width(10),
    .ds_ratio(4),
    .latency(1),
    .phase(0),
    .q_arith(`xlUnsigned),
    .q_bin_pt(0),
    .q_width(10)
  )
  down_sample4 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register14_q_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(dest_clk_net),
    .dest_ce(dest_ce_net),
    .q(down_sample4_q_net)
  );
  fpga_kf1_xldsamp #(
    .d_arith(`xlUnsigned),
    .d_bin_pt(0),
    .d_width(1),
    .ds_ratio(4),
    .latency(1),
    .phase(0),
    .q_arith(`xlUnsigned),
    .q_bin_pt(0),
    .q_width(1)
  )
  down_sample5 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register15_q_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(dest_clk_net),
    .dest_ce(dest_ce_net),
    .q(down_sample5_q_net)
  );
  fpga_kf1_xldsamp #(
    .d_arith(`xlUnsigned),
    .d_bin_pt(0),
    .d_width(2),
    .ds_ratio(4),
    .latency(1),
    .phase(0),
    .q_arith(`xlUnsigned),
    .q_bin_pt(0),
    .q_width(2)
  )
  down_sample6 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register16_q_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(dest_clk_net),
    .dest_ce(dest_ce_net),
    .q(down_sample6_q_net)
  );
  sysgen_expr_bffd6a35db expression (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .a(convert3_dout_net),
    .b(shift_op_net),
    .dout(expression_dout_net)
  );
  sysgen_inverter_e0df036076 inverter (
    .clr(1'b0),
    .ip(register_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(inverter_op_net)
  );
  fpga_kf1_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(15),
    .a_width(18),
    .b_arith(`xlSigned),
    .b_bin_pt(16),
    .b_width(25),
    .c_a_type(0),
    .c_a_width(18),
    .c_b_type(0),
    .c_b_width(25),
    .c_baat(18),
    .c_output_width(43),
    .c_type(0),
    .core_name0("fpga_kf1_mult_gen_v12_0_i0"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(31),
    .p_width(43),
    .quantization(1)
  )
  mult (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(down_sample_q_net),
    .b(mux_y_net),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .core_clk(dest_clk_net),
    .core_ce(dest_ce_net),
    .p(mult_p_net)
  );
  fpga_kf1_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(15),
    .a_width(18),
    .b_arith(`xlUnsigned),
    .b_bin_pt(0),
    .b_width(25),
    .c_a_type(0),
    .c_a_width(18),
    .c_b_type(1),
    .c_b_width(25),
    .c_baat(18),
    .c_output_width(43),
    .c_type(0),
    .core_name0("fpga_kf1_mult_gen_v12_0_i1"),
    .extra_registers(0),
    .multsign(2),
    .overflow(2),
    .p_arith(`xlSigned),
    .p_bin_pt(0),
    .p_width(11),
    .quantization(1)
  )
  mult1 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux8_y_net),
    .b(down_sample2_q_net),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .core_clk(dest_clk_net),
    .core_ce(dest_ce_net),
    .p(mult1_p_net)
  );
  fpga_kf1_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(15),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("fpga_kf1_mult_gen_v12_0_i2"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(31),
    .p_width(43),
    .quantization(1)
  )
  mult11 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux12_y_net),
    .b(mux10_y_net),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .core_clk(dest_clk_net),
    .core_ce(dest_ce_net),
    .p(mult11_p_net)
  );
  fpga_kf1_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(15),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("fpga_kf1_mult_gen_v12_0_i2"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(31),
    .p_width(43),
    .quantization(1)
  )
  mult12 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux11_y_net),
    .b(mux10_y_net),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .core_clk(dest_clk_net),
    .core_ce(dest_ce_net),
    .p(mult12_p_net)
  );
  fpga_kf1_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(15),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("fpga_kf1_mult_gen_v12_0_i2"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(31),
    .p_width(43),
    .quantization(1)
  )
  mult2 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux1_y_net),
    .b(register5_q_net),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .core_clk(dest_clk_net),
    .core_ce(dest_ce_net),
    .p(mult2_p_net)
  );
  fpga_kf1_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(15),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("fpga_kf1_mult_gen_v12_0_i2"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(31),
    .p_width(43),
    .quantization(1)
  )
  mult3 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux2_y_net),
    .b(register1_q_net_x2),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .core_clk(dest_clk_net),
    .core_ce(dest_ce_net),
    .p(mult3_p_net)
  );
  fpga_kf1_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(15),
    .a_width(18),
    .b_arith(`xlSigned),
    .b_bin_pt(16),
    .b_width(25),
    .c_a_type(0),
    .c_a_width(18),
    .c_b_type(0),
    .c_b_width(25),
    .c_baat(18),
    .c_output_width(43),
    .c_type(0),
    .core_name0("fpga_kf1_mult_gen_v12_0_i0"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(31),
    .p_width(43),
    .quantization(1)
  )
  mult4 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(down_sample_q_net),
    .b(mux3_y_net),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .core_clk(dest_clk_net),
    .core_ce(dest_ce_net),
    .p(mult4_p_net)
  );
  fpga_kf1_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(15),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("fpga_kf1_mult_gen_v12_0_i2"),
    .extra_registers(0),
    .multsign(2),
    .overflow(2),
    .p_arith(`xlSigned),
    .p_bin_pt(15),
    .p_width(18),
    .quantization(1)
  )
  mult5 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(c1_ram_douta_net),
    .b(register7_q_net),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .core_clk(dest_clk_net),
    .core_ce(dest_ce_net),
    .p(mult5_p_net)
  );
  fpga_kf1_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(15),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("fpga_kf1_mult_gen_v12_0_i2"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(31),
    .p_width(43),
    .quantization(1)
  )
  mult6 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux4_y_net),
    .b(register5_q_net),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .core_clk(dest_clk_net),
    .core_ce(dest_ce_net),
    .p(mult6_p_net)
  );
  fpga_kf1_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(15),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("fpga_kf1_mult_gen_v12_0_i2"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(31),
    .p_width(43),
    .quantization(1)
  )
  mult7 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux5_y_net),
    .b(register1_q_net_x2),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .core_clk(dest_clk_net),
    .core_ce(dest_ce_net),
    .p(mult7_p_net)
  );
  fpga_kf1_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(15),
    .a_width(18),
    .b_arith(`xlSigned),
    .b_bin_pt(16),
    .b_width(25),
    .c_a_type(0),
    .c_a_width(18),
    .c_b_type(0),
    .c_b_width(25),
    .c_baat(18),
    .c_output_width(43),
    .c_type(0),
    .core_name0("fpga_kf1_mult_gen_v12_0_i0"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(31),
    .p_width(43),
    .quantization(1)
  )
  mult8 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(convert1_dout_net),
    .b(mux7_y_net),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .core_clk(dest_clk_net),
    .core_ce(dest_ce_net),
    .p(mult8_p_net)
  );
  fpga_kf1_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(15),
    .a_width(18),
    .b_arith(`xlSigned),
    .b_bin_pt(16),
    .b_width(25),
    .c_a_type(0),
    .c_a_width(18),
    .c_b_type(0),
    .c_b_width(25),
    .c_baat(18),
    .c_output_width(43),
    .c_type(0),
    .core_name0("fpga_kf1_mult_gen_v12_0_i0"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(31),
    .p_width(43),
    .quantization(1)
  )
  mult9 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(convert_dout_net),
    .b(mux6_y_net),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .core_clk(dest_clk_net),
    .core_ce(dest_ce_net),
    .p(mult9_p_net)
  );
  sysgen_mux_f07a2cab4b mux (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample0_q_net_x1),
    .d1(downsample0_q_net_x3),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .y(mux_y_net)
  );
  sysgen_mux_f07a2cab4b mux1 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample0_q_net),
    .d1(downsample0_q_net_x0),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .y(mux1_y_net)
  );
  sysgen_mux_01a10d0c1a mux10 (
    .clr(1'b0),
    .sel(down_sample6_q_net),
    .d0(constant_op_net),
    .d1(convert2_dout_net),
    .d2(addsub8_s_net),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .y(mux10_y_net)
  );
  sysgen_mux_f07a2cab4b mux11 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample0_q_net_x8),
    .d1(downsample0_q_net_x5),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .y(mux11_y_net)
  );
  sysgen_mux_f07a2cab4b mux12 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample1_q_net_x8),
    .d1(downsample1_q_net_x5),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .y(mux12_y_net)
  );
  sysgen_mux_f07a2cab4b mux2 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample1_q_net),
    .d1(downsample1_q_net_x0),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .y(mux2_y_net)
  );
  sysgen_mux_f07a2cab4b mux3 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample1_q_net_x1),
    .d1(downsample1_q_net_x3),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .y(mux3_y_net)
  );
  sysgen_mux_f07a2cab4b mux4 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample2_q_net),
    .d1(downsample2_q_net_x0),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .y(mux4_y_net)
  );
  sysgen_mux_f07a2cab4b mux5 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample3_q_net),
    .d1(downsample3_q_net_x0),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .y(mux5_y_net)
  );
  sysgen_mux_f07a2cab4b mux6 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample1_q_net_x2),
    .d1(downsample1_q_net_x4),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .y(mux6_y_net)
  );
  sysgen_mux_f07a2cab4b mux7 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample0_q_net_x2),
    .d1(downsample0_q_net_x4),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .y(mux7_y_net)
  );
  sysgen_mux_bb05fa83ec mux8 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .sel(expression_dout_net),
    .d0(convert1_dout_net),
    .d1(downsample0_q_net_x6),
    .d2(downsample1_q_net_x6),
    .d3(constant1_op_net),
    .y(mux8_y_net)
  );
  fpga_kf1_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register (
    .en(1'b1),
    .rst(1'b0),
    .d(hw_pot_switch_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register_q_net)
  );
  fpga_kf1_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(convert_dout_net),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .q(register1_q_net_x2)
  );
  fpga_kf1_xlregister #(
    .d_width(14),
    .init_value(14'b00000000000000)
  )
  register2 (
    .en(1'b1),
    .rst(1'b0),
    .d(up_sample2_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register2_q_net)
  );
  fpga_kf1_xlregister #(
    .d_width(14),
    .init_value(14'b00000000000000)
  )
  register3 (
    .en(1'b1),
    .rst(1'b0),
    .d(up_sample3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register3_q_net)
  );
  fpga_kf1_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register5 (
    .en(1'b1),
    .rst(1'b0),
    .d(convert1_dout_net),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .q(register5_q_net)
  );
  fpga_kf1_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register7 (
    .en(1'b1),
    .rst(1'b0),
    .d(convert_dout_net),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .q(register7_q_net)
  );
  sysgen_reinterpret_9e3ebfd9e1 reinterpret (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(sfix16_cast3_dout_net),
    .output_port(reinterpret_output_port_net)
  );
  sysgen_reinterpret_9e3ebfd9e1 reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(sfix16_cast2_dout_net),
    .output_port(reinterpret1_output_port_net)
  );
  sysgen_reinterpret_9e3ebfd9e1 reinterpret2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(sfix16_cast1_dout_net),
    .output_port(reinterpret2_output_port_net)
  );
  sysgen_reinterpret_9e3ebfd9e1 reinterpret3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(sfix16_cast4_dout_net),
    .output_port(reinterpret3_output_port_net)
  );
  sysgen_reinterpret_9e3ebfd9e1 reinterpret4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(sfix16_cast5_dout_net),
    .output_port(reinterpret4_output_port_net)
  );
  sysgen_reinterpret_9e3ebfd9e1 reinterpret5 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(sfix16_cast6_dout_net),
    .output_port(reinterpret5_output_port_net)
  );
  sysgen_relational_73cffbc801 relational (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .a(convert1_dout_net),
    .b(downsample0_q_net_x6),
    .op(relational_op_net)
  );
  sysgen_relational_3b1a00b94d relational1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .a(convert1_dout_net),
    .b(downsample1_q_net_x6),
    .op(relational1_op_net)
  );
  sysgen_shift_fd3f308cef shift (
    .clr(1'b0),
    .ip(relational1_op_net),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .op(shift_op_net)
  );
  fpga_kf1_xlusamp #(
    .copy_samples(1),
    .d_arith(`xlSigned),
    .d_bin_pt(15),
    .d_width(18),
    .latency(1),
    .q_arith(`xlSigned),
    .q_bin_pt(15),
    .q_width(18)
  )
  up_sample1 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .d(mux10_y_net),
    .src_clk(dest_clk_net),
    .src_ce(dest_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(up_sample1_q_net)
  );
  fpga_kf1_xlusamp #(
    .copy_samples(1),
    .d_arith(`xlSigned),
    .d_bin_pt(13),
    .d_width(14),
    .latency(1),
    .q_arith(`xlSigned),
    .q_bin_pt(13),
    .q_width(14)
  )
  up_sample2 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .d(convert5_dout_net),
    .src_clk(dest_clk_net),
    .src_ce(dest_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(up_sample2_q_net)
  );
  fpga_kf1_xlusamp #(
    .copy_samples(1),
    .d_arith(`xlSigned),
    .d_bin_pt(13),
    .d_width(14),
    .latency(1),
    .q_arith(`xlSigned),
    .q_bin_pt(13),
    .q_width(14)
  )
  up_sample3 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .d(convert4_dout_net),
    .src_clk(dest_clk_net),
    .src_ce(dest_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(up_sample3_q_net)
  );
  fpga_kf1_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(13),
    .a_width(14),
    .b_arith(`xlSigned),
    .b_bin_pt(13),
    .b_width(14),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(15),
    .core_name0("fpga_kf1_c_addsub_v12_0_i4"),
    .extra_registers(1),
    .full_s_arith(2),
    .full_s_width(15),
    .latency(2),
    .overflow(2),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(15),
    .s_width(18)
  )
  add_offset_ch1 (
    .clr(1'b0),
    .en(1'b1),
    .a(x_in_reg_q_net),
    .b(register3_q_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .s(add_offset_ch1_s_net)
  );
  fpga_kf1_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(13),
    .a_width(14),
    .b_arith(`xlSigned),
    .b_bin_pt(13),
    .b_width(14),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(15),
    .core_name0("fpga_kf1_c_addsub_v12_0_i4"),
    .extra_registers(1),
    .full_s_arith(2),
    .full_s_width(15),
    .latency(2),
    .overflow(2),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(13),
    .s_width(18)
  )
  add_offset_ch2 (
    .clr(1'b0),
    .en(1'b1),
    .a(ofst_mon_in_reg_q_net),
    .b(register6_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(add_offset_ch2_s_net)
  );
  fpga_kf1_xlfpconvert #(
    .c_latency(2),
    .core_name0("fpga_kf1_floating_point_v7_1_i0"),
    .din_arith(`xlSigned),
    .din_bin_pt(13),
    .din_tdata_width(24),
    .din_width(18),
    .dout_arith(`xlFloat),
    .dout_bin_pt(24),
    .dout_tdata_width(32),
    .dout_width(32),
    .extra_registers(0),
    .latency(2),
    .overflow(1),
    .quantization(1)
  )
  div_fix_to_float (
    .clr(1'b0),
    .en(1'b1),
    .din(div_scale_prod_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(div_fix_to_float_dout_net)
  );
  fpga_kf1_xlfpreciprocal #(
    .a_arith(`xlFloat),
    .a_bin_pt(24),
    .a_tdata_width(32),
    .a_width(32),
    .c_latency(9),
    .core_name0("fpga_kf1_floating_point_v7_1_i1"),
    .extra_registers(0),
    .latency(9),
    .op_arith(`xlFloat),
    .op_bin_pt(24),
    .op_tdata_width(32),
    .op_width(32),
    .overflow(0),
    .quantization(0)
  )
  div_reciproc (
    .clr(1'b0),
    .en(1'b1),
    .a(div_fix_to_float_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(div_reciproc_op_net)
  );
  fpga_kf1_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(13),
    .a_width(18),
    .b_arith(`xlUnsigned),
    .b_bin_pt(16),
    .b_width(25),
    .c_a_type(0),
    .c_a_width(18),
    .c_b_type(1),
    .c_b_width(25),
    .c_baat(18),
    .c_output_width(43),
    .c_type(0),
    .core_name0("fpga_kf1_mult_gen_v12_0_i3"),
    .extra_registers(1),
    .multsign(2),
    .overflow(2),
    .p_arith(`xlSigned),
    .p_bin_pt(13),
    .p_width(18),
    .quantization(1)
  )
  div_scale_prod (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(add_offset_ch2_s_net),
    .b(register2_q_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(div_scale_prod_p_net)
  );
  sysgen_mux_a2d3dc6d76 divider_mux (
    .clr(1'b0),
    .sel(register1_q_net_x3),
    .d0(add_offset_ch1_s_net),
    .d1(prod_x_div_p_net),
    .d2(prod_x_ema_div_p_net),
    .d3(prod_x_ema_rat_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(divider_mux_y_net)
  );
  sysgen_mux_c9e90427b5 divider_out_mux (
    .clr(1'b0),
    .sel(register1_q_net_x3),
    .d0(reinterpret_output_port_net),
    .d1(reinterpret1_output_port_net),
    .d2(reinterpret2_output_port_net),
    .d3(reinterpret4_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(divider_out_mux_y_net)
  );
  fpga_kf1_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(16),
    .b_width(25),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(25),
    .c_baat(25),
    .c_output_width(50),
    .c_type(0),
    .core_name0("fpga_kf1_mult_gen_v12_0_i4"),
    .extra_registers(1),
    .multsign(2),
    .overflow(2),
    .p_arith(`xlSigned),
    .p_bin_pt(16),
    .p_width(25),
    .quantization(1)
  )
  ema_times_slow_ema (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(ema_accumulator_s_net_x0),
    .b(ema_accumulator_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(ema_times_slow_ema_p_net)
  );
  fpga_kf1_xlregister #(
    .d_width(14),
    .init_value(14'b00000000000000)
  )
  ofst_mon_in_reg (
    .en(1'b1),
    .rst(1'b0),
    .d(power_monitor_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(ofst_mon_in_reg_q_net)
  );
  sysgen_mux_915b650546 pot_sw_mux (
    .clr(1'b0),
    .sel(register5_q_net_x0),
    .d0(register_q_net),
    .d1(inverter_op_net),
    .d2(register_q_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .y(pot_sw_mux_y_net)
  );
  fpga_kf1_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(15),
    .a_width(18),
    .b_arith(`xlSigned),
    .b_bin_pt(13),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(18),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(18),
    .c_output_width(36),
    .c_type(0),
    .core_name0("fpga_kf1_mult_gen_v12_0_i5"),
    .extra_registers(1),
    .multsign(2),
    .overflow(2),
    .p_arith(`xlSigned),
    .p_bin_pt(15),
    .p_width(18),
    .quantization(1)
  )
  prod_x_div (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(add_offset_ch1_s_net),
    .b(reciproc_float_to_fix_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(prod_x_div_p_net)
  );
  fpga_kf1_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(15),
    .a_width(18),
    .b_arith(`xlSigned),
    .b_bin_pt(16),
    .b_width(25),
    .c_a_type(0),
    .c_a_width(18),
    .c_b_type(0),
    .c_b_width(25),
    .c_baat(18),
    .c_output_width(43),
    .c_type(0),
    .core_name0("fpga_kf1_mult_gen_v12_0_i6"),
    .extra_registers(1),
    .multsign(2),
    .overflow(2),
    .p_arith(`xlSigned),
    .p_bin_pt(15),
    .p_width(18),
    .quantization(1)
  )
  prod_x_ema_div (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(add_offset_ch1_s_net),
    .b(ema_accumulator_s_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(prod_x_ema_div_p_net)
  );
  fpga_kf1_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(15),
    .a_width(18),
    .b_arith(`xlSigned),
    .b_bin_pt(16),
    .b_width(25),
    .c_a_type(0),
    .c_a_width(18),
    .c_b_type(0),
    .c_b_width(25),
    .c_baat(18),
    .c_output_width(43),
    .c_type(0),
    .core_name0("fpga_kf1_mult_gen_v12_0_i6"),
    .extra_registers(1),
    .multsign(2),
    .overflow(2),
    .p_arith(`xlSigned),
    .p_bin_pt(15),
    .p_width(18),
    .quantization(1)
  )
  prod_x_ema_rat (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(add_offset_ch1_s_net),
    .b(ema_times_slow_ema_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(prod_x_ema_rat_p_net)
  );
  fpga_kf1_xlfpconvert #(
    .c_latency(3),
    .core_name0("fpga_kf1_floating_point_v7_1_i2"),
    .din_arith(`xlFloat),
    .din_bin_pt(24),
    .din_tdata_width(32),
    .din_width(32),
    .dout_arith(`xlSigned),
    .dout_bin_pt(13),
    .dout_tdata_width(24),
    .dout_width(18),
    .extra_registers(0),
    .latency(3),
    .overflow(2),
    .quantization(2)
  )
  reciproc_float_to_fix (
    .clr(1'b0),
    .en(1'b1),
    .din(div_reciproc_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(reciproc_float_to_fix_dout_net)
  );
  fpga_kf1_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(15),
    .din_width(18),
    .dout_arith(2),
    .dout_bin_pt(13),
    .dout_width(16),
    .latency(1),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  sfix16_13_cast (
    .clr(1'b0),
    .en(1'b1),
    .din(divider_mux_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(sfix16_13_cast_dout_net)
  );
  fpga_kf1_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(16),
    .din_width(25),
    .dout_arith(2),
    .dout_bin_pt(10),
    .dout_width(16),
    .latency(1),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  sfix16_cast1 (
    .clr(1'b0),
    .en(1'b1),
    .din(ema_accumulator_s_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .dout(sfix16_cast1_dout_net)
  );
  fpga_kf1_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(13),
    .din_width(18),
    .dout_arith(2),
    .dout_bin_pt(10),
    .dout_width(16),
    .latency(1),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  sfix16_cast2 (
    .clr(1'b0),
    .en(1'b1),
    .din(reciproc_float_to_fix_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(sfix16_cast2_dout_net)
  );
  fpga_kf1_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(13),
    .din_width(18),
    .dout_arith(2),
    .dout_bin_pt(13),
    .dout_width(16),
    .latency(1),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  sfix16_cast3 (
    .clr(1'b0),
    .en(1'b1),
    .din(add_offset_ch2_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(sfix16_cast3_dout_net)
  );
  fpga_kf1_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(15),
    .din_width(18),
    .dout_arith(2),
    .dout_bin_pt(13),
    .dout_width(16),
    .latency(1),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  sfix16_cast4 (
    .clr(1'b0),
    .en(1'b1),
    .din(add_offset_ch1_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(sfix16_cast4_dout_net)
  );
  fpga_kf1_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(16),
    .din_width(25),
    .dout_arith(2),
    .dout_bin_pt(10),
    .dout_width(16),
    .latency(1),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  sfix16_cast5 (
    .clr(1'b0),
    .en(1'b1),
    .din(ema_times_slow_ema_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(sfix16_cast5_dout_net)
  );
  fpga_kf1_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(13),
    .din_width(14),
    .dout_arith(2),
    .dout_bin_pt(13),
    .dout_width(16),
    .latency(1),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  sfix16_cast6 (
    .clr(1'b0),
    .en(1'b1),
    .din(convert6_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(sfix16_cast6_dout_net)
  );
  fpga_kf1_xlregister #(
    .d_width(14),
    .init_value(14'b00000000000000)
  )
  x_in_reg (
    .en(1'b1),
    .rst(1'b0),
    .d(x_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(x_in_reg_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/AXI_clock_domain_wrapper/Vector Register
module fpga_kf1_vector_register (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  input [25-1:0] d_3,
  input [25-1:0] d_4,
  input clk_1,
  input ce_1,
  output [25-1:0] q_1,
  output [25-1:0] q_2,
  output [25-1:0] q_3,
  output [25-1:0] q_4
);
  wire [25-1:0] register2_q_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] gateway_in_f11_net;
  wire [25-1:0] gateway_in_f12_net;
  wire [25-1:0] register1_q_net;
  wire ce_net;
  wire [25-1:0] gateway_in_f21_net;
  wire clk_net;
  wire [25-1:0] gateway_in_f22_net;
  assign q_1 = register0_q_net;
  assign q_2 = register1_q_net;
  assign q_3 = register2_q_net;
  assign q_4 = register3_q_net;
  assign gateway_in_f11_net = d_1;
  assign gateway_in_f12_net = d_2;
  assign gateway_in_f21_net = d_3;
  assign gateway_in_f22_net = d_4;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf1_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register0 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in_f11_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register0_q_net)
  );
  fpga_kf1_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in_f12_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register1_q_net)
  );
  fpga_kf1_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register2 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in_f21_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register2_q_net)
  );
  fpga_kf1_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register3 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in_f22_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register3_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/AXI_clock_domain_wrapper/Vector Register1
module fpga_kf1_vector_register1 (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  input [25-1:0] d_3,
  input [25-1:0] d_4,
  input clk_1,
  input ce_1,
  output [25-1:0] q_1,
  output [25-1:0] q_2,
  output [25-1:0] q_3,
  output [25-1:0] q_4
);
  wire [25-1:0] gateway_in_f12_ip_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] gateway_in_f11_ip_net;
  wire [25-1:0] gateway_in_f22_ip_net;
  wire ce_net;
  wire clk_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] gateway_in_f21_ip_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] register1_q_net;
  assign q_1 = register0_q_net;
  assign q_2 = register1_q_net;
  assign q_3 = register2_q_net;
  assign q_4 = register3_q_net;
  assign gateway_in_f11_ip_net = d_1;
  assign gateway_in_f12_ip_net = d_2;
  assign gateway_in_f21_ip_net = d_3;
  assign gateway_in_f22_ip_net = d_4;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf1_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register0 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in_f11_ip_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register0_q_net)
  );
  fpga_kf1_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in_f12_ip_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register1_q_net)
  );
  fpga_kf1_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register2 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in_f21_ip_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register2_q_net)
  );
  fpga_kf1_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register3 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in_f22_ip_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register3_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/AXI_clock_domain_wrapper/Vector Register2
module fpga_kf1_vector_register2 (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  input clk_1,
  input ce_1,
  output [25-1:0] q_1,
  output [25-1:0] q_2
);
  wire [25-1:0] gateway_in_l2_net;
  wire ce_net;
  wire clk_net;
  wire [25-1:0] gateway_in_l1_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] register0_q_net;
  assign q_1 = register0_q_net;
  assign q_2 = register1_q_net;
  assign gateway_in_l1_net = d_1;
  assign gateway_in_l2_net = d_2;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf1_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register0 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in_l1_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register0_q_net)
  );
  fpga_kf1_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in_l2_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register1_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/AXI_clock_domain_wrapper/Vector Register3
module fpga_kf1_vector_register3 (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  input clk_1,
  input ce_1,
  output [25-1:0] q_1,
  output [25-1:0] q_2
);
  wire [25-1:0] register1_q_net;
  wire [25-1:0] gateway_in_k2_net;
  wire [25-1:0] gateway_in_k1_net;
  wire clk_net;
  wire [25-1:0] register0_q_net;
  wire ce_net;
  assign q_1 = register0_q_net;
  assign q_2 = register1_q_net;
  assign gateway_in_k1_net = d_1;
  assign gateway_in_k2_net = d_2;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf1_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register0 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in_k1_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register0_q_net)
  );
  fpga_kf1_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in_k2_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register1_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/AXI_clock_domain_wrapper/Vector Register4
module fpga_kf1_vector_register4 (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  input clk_1,
  input ce_1,
  output [25-1:0] q_1,
  output [25-1:0] q_2
);
  wire [25-1:0] register1_q_net;
  wire [25-1:0] gateway_in_l1_ip_net;
  wire [25-1:0] gateway_in_l2_ip_net;
  wire clk_net;
  wire [25-1:0] register0_q_net;
  wire ce_net;
  assign q_1 = register0_q_net;
  assign q_2 = register1_q_net;
  assign gateway_in_l1_ip_net = d_1;
  assign gateway_in_l2_ip_net = d_2;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf1_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register0 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in_l1_ip_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register0_q_net)
  );
  fpga_kf1_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in_l2_ip_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register1_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/AXI_clock_domain_wrapper/Vector Register5
module fpga_kf1_vector_register5 (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  input clk_1,
  input ce_1,
  output [25-1:0] q_1,
  output [25-1:0] q_2
);
  wire ce_net;
  wire clk_net;
  wire [25-1:0] gateway_in_k1_ip_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] gateway_in_k2_ip_net;
  assign q_1 = register0_q_net;
  assign q_2 = register1_q_net;
  assign gateway_in_k1_ip_net = d_1;
  assign gateway_in_k2_ip_net = d_2;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf1_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register0 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in_k1_ip_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register0_q_net)
  );
  fpga_kf1_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in_k2_ip_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register1_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/AXI_clock_domain_wrapper/Vector Register6
module fpga_kf1_vector_register6 (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  input clk_1,
  input ce_1,
  output [25-1:0] q_1,
  output [25-1:0] q_2
);
  wire [25-1:0] register1_q_net;
  wire [25-1:0] gateway_in_b1_ip_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] gateway_in_b2_ip_net;
  wire clk_net;
  wire ce_net;
  assign q_1 = register0_q_net;
  assign q_2 = register1_q_net;
  assign gateway_in_b1_ip_net = d_1;
  assign gateway_in_b2_ip_net = d_2;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf1_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register0 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in_b1_ip_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register0_q_net)
  );
  fpga_kf1_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in_b2_ip_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register1_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/AXI_clock_domain_wrapper/Vector Register7
module fpga_kf1_vector_register7 (
  input [18-1:0] d_1,
  input [18-1:0] d_2,
  input clk_1,
  input ce_1,
  output [18-1:0] q_1,
  output [18-1:0] q_2
);
  wire [18-1:0] register1_q_net;
  wire [18-1:0] barrier_lb_in_net;
  wire [18-1:0] barrier_ub_in_net;
  wire clk_net;
  wire ce_net;
  wire [18-1:0] register0_q_net;
  assign q_1 = register0_q_net;
  assign q_2 = register1_q_net;
  assign barrier_ub_in_net = d_1;
  assign barrier_lb_in_net = d_2;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf1_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register0 (
    .en(1'b1),
    .rst(1'b0),
    .d(barrier_ub_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register0_q_net)
  );
  fpga_kf1_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(barrier_lb_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register1_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/AXI_clock_domain_wrapper/Vector Register8
module fpga_kf1_vector_register8 (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  input clk_1,
  input ce_1,
  output [25-1:0] q_1,
  output [25-1:0] q_2
);
  wire [25-1:0] register0_q_net;
  wire [25-1:0] barrier_c0_data_in_net;
  wire clk_net;
  wire [25-1:0] barrier_c1_data_in_net;
  wire ce_net;
  wire [25-1:0] register1_q_net;
  assign q_1 = register0_q_net;
  assign q_2 = register1_q_net;
  assign barrier_c0_data_in_net = d_1;
  assign barrier_c1_data_in_net = d_2;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf1_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register0 (
    .en(1'b1),
    .rst(1'b0),
    .d(barrier_c0_data_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register0_q_net)
  );
  fpga_kf1_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(barrier_c1_data_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register1_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/AXI_clock_domain_wrapper/Vector Register9
module fpga_kf1_vector_register9 (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  input clk_1,
  input ce_1,
  output [25-1:0] q_1,
  output [25-1:0] q_2
);
  wire [25-1:0] register0_q_net;
  wire clk_net;
  wire ce_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] gateway_in_b1_net;
  wire [25-1:0] gateway_in_b2_net;
  assign q_1 = register0_q_net;
  assign q_2 = register1_q_net;
  assign gateway_in_b1_net = d_1;
  assign gateway_in_b2_net = d_2;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf1_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register0 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in_b1_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register0_q_net)
  );
  fpga_kf1_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(gateway_in_b2_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register1_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/AXI_clock_domain_wrapper/Vector latching register/Vector Delay
module fpga_kf1_vector_delay (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  output [25-1:0] q_1,
  output [25-1:0] q_2
);
  wire [25-1:0] delay1_q_net;
  wire [25-1:0] delay0_q_net;
  wire [25-1:0] mux0_y_net;
  wire [25-1:0] mux1_y_net;
  assign q_1 = delay0_q_net;
  assign q_2 = delay1_q_net;
  assign mux0_y_net = d_1;
  assign mux1_y_net = d_2;
  sysgen_delay_6909f5ee44 delay0 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux0_y_net),
    .q(delay0_q_net)
  );
  sysgen_delay_6909f5ee44 delay1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux1_y_net),
    .q(delay1_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/AXI_clock_domain_wrapper/Vector latching register/Vector Mux
module fpga_kf1_vector_mux_x1 (
  input [1-1:0] sel,
  input [25-1:0] i0_1,
  input [25-1:0] i1_1,
  input [25-1:0] i0_2,
  input [25-1:0] i1_2,
  input clk_1,
  input ce_1,
  output [25-1:0] o_1,
  output [25-1:0] o_2
);
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] mux0_y_net;
  wire [25-1:0] delay1_q_net;
  wire [25-1:0] register1_q_net;
  wire clk_net;
  wire ce_net;
  wire [25-1:0] delay0_q_net;
  wire [1-1:0] register22_q_net;
  wire [25-1:0] register0_q_net;
  assign o_1 = mux0_y_net;
  assign o_2 = mux1_y_net;
  assign register22_q_net = sel;
  assign delay0_q_net = i0_1;
  assign register0_q_net = i1_1;
  assign delay1_q_net = i0_2;
  assign register1_q_net = i1_2;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_mux_f07a2cab4b mux0 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay0_q_net),
    .d1(register0_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux0_y_net)
  );
  sysgen_mux_f07a2cab4b mux1 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay1_q_net),
    .d1(register1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux1_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/AXI_clock_domain_wrapper/Vector latching register
module fpga_kf1_vector_latching_register (
  input [25-1:0] data_in_1,
  input [1-1:0] wren,
  input [25-1:0] data_in_2,
  input clk_1,
  input ce_1,
  output [25-1:0] data_out_1,
  output [25-1:0] data_out_2
);
  wire [25-1:0] mux0_y_net;
  wire clk_net;
  wire [1-1:0] register22_q_net;
  wire [25-1:0] delay0_q_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] delay1_q_net;
  wire ce_net;
  wire [25-1:0] register1_q_net;
  assign data_out_1 = mux0_y_net;
  assign data_out_2 = mux1_y_net;
  assign register0_q_net = data_in_1;
  assign register22_q_net = wren;
  assign register1_q_net = data_in_2;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf1_vector_delay vector_delay (
    .d_1(mux0_y_net),
    .d_2(mux1_y_net),
    .q_1(delay0_q_net),
    .q_2(delay1_q_net)
  );
  fpga_kf1_vector_mux_x1 vector_mux (
    .sel(register22_q_net),
    .i0_1(delay0_q_net),
    .i1_1(register0_q_net),
    .i0_2(delay1_q_net),
    .i1_2(register1_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .o_1(mux0_y_net),
    .o_2(mux1_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/AXI_clock_domain_wrapper/Vector latching register1/Vector Delay
module fpga_kf1_vector_delay_x0 (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  output [25-1:0] q_1,
  output [25-1:0] q_2
);
  wire [25-1:0] delay1_q_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] delay0_q_net;
  wire [25-1:0] mux0_y_net;
  assign q_1 = delay0_q_net;
  assign q_2 = delay1_q_net;
  assign mux0_y_net = d_1;
  assign mux1_y_net = d_2;
  sysgen_delay_6909f5ee44 delay0 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux0_y_net),
    .q(delay0_q_net)
  );
  sysgen_delay_6909f5ee44 delay1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux1_y_net),
    .q(delay1_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/AXI_clock_domain_wrapper/Vector latching register1/Vector Mux
module fpga_kf1_vector_mux_x0 (
  input [1-1:0] sel,
  input [25-1:0] i0_1,
  input [25-1:0] i1_1,
  input [25-1:0] i0_2,
  input [25-1:0] i1_2,
  input clk_1,
  input ce_1,
  output [25-1:0] o_1,
  output [25-1:0] o_2
);
  wire ce_net;
  wire [25-1:0] mux0_y_net;
  wire [1-1:0] register22_q_net;
  wire [25-1:0] delay0_q_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] delay1_q_net;
  wire [25-1:0] register1_q_net;
  wire clk_net;
  wire [25-1:0] mux1_y_net;
  assign o_1 = mux0_y_net;
  assign o_2 = mux1_y_net;
  assign register22_q_net = sel;
  assign delay0_q_net = i0_1;
  assign register0_q_net = i1_1;
  assign delay1_q_net = i0_2;
  assign register1_q_net = i1_2;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_mux_f07a2cab4b mux0 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay0_q_net),
    .d1(register0_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux0_y_net)
  );
  sysgen_mux_f07a2cab4b mux1 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay1_q_net),
    .d1(register1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux1_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/AXI_clock_domain_wrapper/Vector latching register1
module fpga_kf1_vector_latching_register1 (
  input [25-1:0] data_in_1,
  input [1-1:0] wren,
  input [25-1:0] data_in_2,
  input clk_1,
  input ce_1,
  output [25-1:0] data_out_1,
  output [25-1:0] data_out_2
);
  wire [25-1:0] mux1_y_net;
  wire [1-1:0] register22_q_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] mux0_y_net;
  wire [25-1:0] delay1_q_net;
  wire [25-1:0] register1_q_net;
  wire clk_net;
  wire ce_net;
  wire [25-1:0] delay0_q_net;
  assign data_out_1 = mux0_y_net;
  assign data_out_2 = mux1_y_net;
  assign register0_q_net = data_in_1;
  assign register22_q_net = wren;
  assign register1_q_net = data_in_2;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf1_vector_delay_x0 vector_delay (
    .d_1(mux0_y_net),
    .d_2(mux1_y_net),
    .q_1(delay0_q_net),
    .q_2(delay1_q_net)
  );
  fpga_kf1_vector_mux_x0 vector_mux (
    .sel(register22_q_net),
    .i0_1(delay0_q_net),
    .i1_1(register0_q_net),
    .i0_2(delay1_q_net),
    .i1_2(register1_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .o_1(mux0_y_net),
    .o_2(mux1_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/AXI_clock_domain_wrapper/Vector latching register2/Vector Delay
module fpga_kf1_vector_delay_x1 (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  output [25-1:0] q_1,
  output [25-1:0] q_2
);
  wire [25-1:0] delay0_q_net;
  wire [25-1:0] mux0_y_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] delay1_q_net;
  assign q_1 = delay0_q_net;
  assign q_2 = delay1_q_net;
  assign mux0_y_net = d_1;
  assign mux1_y_net = d_2;
  sysgen_delay_6909f5ee44 delay0 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux0_y_net),
    .q(delay0_q_net)
  );
  sysgen_delay_6909f5ee44 delay1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux1_y_net),
    .q(delay1_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/AXI_clock_domain_wrapper/Vector latching register2/Vector Mux
module fpga_kf1_vector_mux_x2 (
  input [1-1:0] sel,
  input [25-1:0] i0_1,
  input [25-1:0] i1_1,
  input [25-1:0] i0_2,
  input [25-1:0] i1_2,
  input clk_1,
  input ce_1,
  output [25-1:0] o_1,
  output [25-1:0] o_2
);
  wire [25-1:0] register0_q_net;
  wire [25-1:0] delay1_q_net;
  wire [25-1:0] mux0_y_net;
  wire [25-1:0] mux1_y_net;
  wire clk_net;
  wire ce_net;
  wire [25-1:0] delay0_q_net;
  wire [1-1:0] register22_q_net;
  wire [25-1:0] register1_q_net;
  assign o_1 = mux0_y_net;
  assign o_2 = mux1_y_net;
  assign register22_q_net = sel;
  assign delay0_q_net = i0_1;
  assign register0_q_net = i1_1;
  assign delay1_q_net = i0_2;
  assign register1_q_net = i1_2;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_mux_f07a2cab4b mux0 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay0_q_net),
    .d1(register0_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux0_y_net)
  );
  sysgen_mux_f07a2cab4b mux1 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay1_q_net),
    .d1(register1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux1_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/AXI_clock_domain_wrapper/Vector latching register2
module fpga_kf1_vector_latching_register2 (
  input [25-1:0] data_in_1,
  input [1-1:0] wren,
  input [25-1:0] data_in_2,
  input clk_1,
  input ce_1,
  output [25-1:0] data_out_1,
  output [25-1:0] data_out_2
);
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] delay0_q_net;
  wire [25-1:0] mux0_y_net;
  wire [1-1:0] register22_q_net;
  wire ce_net;
  wire [25-1:0] delay1_q_net;
  wire [25-1:0] register0_q_net;
  wire clk_net;
  wire [25-1:0] register1_q_net;
  assign data_out_1 = mux0_y_net;
  assign data_out_2 = mux1_y_net;
  assign register0_q_net = data_in_1;
  assign register22_q_net = wren;
  assign register1_q_net = data_in_2;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf1_vector_delay_x1 vector_delay (
    .d_1(mux0_y_net),
    .d_2(mux1_y_net),
    .q_1(delay0_q_net),
    .q_2(delay1_q_net)
  );
  fpga_kf1_vector_mux_x2 vector_mux (
    .sel(register22_q_net),
    .i0_1(delay0_q_net),
    .i1_1(register0_q_net),
    .i0_2(delay1_q_net),
    .i1_2(register1_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .o_1(mux0_y_net),
    .o_2(mux1_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/AXI_clock_domain_wrapper/Vector latching register3/Vector Delay
module fpga_kf1_vector_delay_x3 (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  input [25-1:0] d_3,
  input [25-1:0] d_4,
  output [25-1:0] q_1,
  output [25-1:0] q_2,
  output [25-1:0] q_3,
  output [25-1:0] q_4
);
  wire [25-1:0] mux2_y_net;
  wire [25-1:0] delay3_q_net;
  wire [25-1:0] delay0_q_net;
  wire [25-1:0] mux0_y_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] mux3_y_net;
  wire [25-1:0] delay1_q_net;
  wire [25-1:0] delay2_q_net;
  assign q_1 = delay0_q_net;
  assign q_2 = delay1_q_net;
  assign q_3 = delay2_q_net;
  assign q_4 = delay3_q_net;
  assign mux0_y_net = d_1;
  assign mux1_y_net = d_2;
  assign mux2_y_net = d_3;
  assign mux3_y_net = d_4;
  sysgen_delay_6909f5ee44 delay0 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux0_y_net),
    .q(delay0_q_net)
  );
  sysgen_delay_6909f5ee44 delay1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux1_y_net),
    .q(delay1_q_net)
  );
  sysgen_delay_6909f5ee44 delay2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux2_y_net),
    .q(delay2_q_net)
  );
  sysgen_delay_6909f5ee44 delay3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux3_y_net),
    .q(delay3_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/AXI_clock_domain_wrapper/Vector latching register3/Vector Mux
module fpga_kf1_vector_mux_x3 (
  input [1-1:0] sel,
  input [25-1:0] i0_1,
  input [25-1:0] i1_1,
  input [25-1:0] i0_2,
  input [25-1:0] i0_3,
  input [25-1:0] i0_4,
  input [25-1:0] i1_2,
  input [25-1:0] i1_3,
  input [25-1:0] i1_4,
  input clk_1,
  input ce_1,
  output [25-1:0] o_1,
  output [25-1:0] o_2,
  output [25-1:0] o_3,
  output [25-1:0] o_4
);
  wire [25-1:0] mux0_y_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] mux1_y_net;
  wire ce_net;
  wire [25-1:0] delay1_q_net;
  wire [25-1:0] mux3_y_net;
  wire [25-1:0] mux2_y_net;
  wire [25-1:0] delay3_q_net;
  wire [1-1:0] register22_q_net;
  wire [25-1:0] delay0_q_net;
  wire [25-1:0] delay2_q_net;
  wire [25-1:0] register2_q_net;
  wire clk_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] register1_q_net;
  assign o_1 = mux0_y_net;
  assign o_2 = mux1_y_net;
  assign o_3 = mux2_y_net;
  assign o_4 = mux3_y_net;
  assign register22_q_net = sel;
  assign delay0_q_net = i0_1;
  assign register0_q_net = i1_1;
  assign delay1_q_net = i0_2;
  assign delay2_q_net = i0_3;
  assign delay3_q_net = i0_4;
  assign register1_q_net = i1_2;
  assign register2_q_net = i1_3;
  assign register3_q_net = i1_4;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_mux_f07a2cab4b mux0 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay0_q_net),
    .d1(register0_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux0_y_net)
  );
  sysgen_mux_f07a2cab4b mux1 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay1_q_net),
    .d1(register1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux1_y_net)
  );
  sysgen_mux_f07a2cab4b mux2 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay2_q_net),
    .d1(register2_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux2_y_net)
  );
  sysgen_mux_f07a2cab4b mux3 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay3_q_net),
    .d1(register3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux3_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/AXI_clock_domain_wrapper/Vector latching register3
module fpga_kf1_vector_latching_register3 (
  input [25-1:0] data_in_1,
  input [1-1:0] wren,
  input [25-1:0] data_in_2,
  input [25-1:0] data_in_3,
  input [25-1:0] data_in_4,
  input clk_1,
  input ce_1,
  output [25-1:0] data_out_1,
  output [25-1:0] data_out_2,
  output [25-1:0] data_out_3,
  output [25-1:0] data_out_4
);
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] mux0_y_net;
  wire [25-1:0] mux2_y_net;
  wire [25-1:0] mux3_y_net;
  wire clk_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] delay2_q_net;
  wire [1-1:0] register22_q_net;
  wire ce_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] delay0_q_net;
  wire [25-1:0] delay3_q_net;
  wire [25-1:0] delay1_q_net;
  wire [25-1:0] register2_q_net;
  assign data_out_1 = mux0_y_net;
  assign data_out_2 = mux1_y_net;
  assign data_out_3 = mux2_y_net;
  assign data_out_4 = mux3_y_net;
  assign register0_q_net = data_in_1;
  assign register22_q_net = wren;
  assign register1_q_net = data_in_2;
  assign register2_q_net = data_in_3;
  assign register3_q_net = data_in_4;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf1_vector_delay_x3 vector_delay (
    .d_1(mux0_y_net),
    .d_2(mux1_y_net),
    .d_3(mux2_y_net),
    .d_4(mux3_y_net),
    .q_1(delay0_q_net),
    .q_2(delay1_q_net),
    .q_3(delay2_q_net),
    .q_4(delay3_q_net)
  );
  fpga_kf1_vector_mux_x3 vector_mux (
    .sel(register22_q_net),
    .i0_1(delay0_q_net),
    .i1_1(register0_q_net),
    .i0_2(delay1_q_net),
    .i0_3(delay2_q_net),
    .i0_4(delay3_q_net),
    .i1_2(register1_q_net),
    .i1_3(register2_q_net),
    .i1_4(register3_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .o_1(mux0_y_net),
    .o_2(mux1_y_net),
    .o_3(mux2_y_net),
    .o_4(mux3_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/AXI_clock_domain_wrapper/Vector latching register4/Vector Delay
module fpga_kf1_vector_delay_x2 (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  output [25-1:0] q_1,
  output [25-1:0] q_2
);
  wire [25-1:0] delay1_q_net;
  wire [25-1:0] delay0_q_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] mux0_y_net;
  assign q_1 = delay0_q_net;
  assign q_2 = delay1_q_net;
  assign mux0_y_net = d_1;
  assign mux1_y_net = d_2;
  sysgen_delay_6909f5ee44 delay0 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux0_y_net),
    .q(delay0_q_net)
  );
  sysgen_delay_6909f5ee44 delay1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux1_y_net),
    .q(delay1_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/AXI_clock_domain_wrapper/Vector latching register4/Vector Mux
module fpga_kf1_vector_mux_x4 (
  input [1-1:0] sel,
  input [25-1:0] i0_1,
  input [25-1:0] i1_1,
  input [25-1:0] i0_2,
  input [25-1:0] i1_2,
  input clk_1,
  input ce_1,
  output [25-1:0] o_1,
  output [25-1:0] o_2
);
  wire [25-1:0] mux0_y_net;
  wire [1-1:0] register22_q_net;
  wire [25-1:0] register0_q_net;
  wire clk_net;
  wire ce_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] delay1_q_net;
  wire [25-1:0] delay0_q_net;
  wire [25-1:0] register1_q_net;
  assign o_1 = mux0_y_net;
  assign o_2 = mux1_y_net;
  assign register22_q_net = sel;
  assign delay0_q_net = i0_1;
  assign register0_q_net = i1_1;
  assign delay1_q_net = i0_2;
  assign register1_q_net = i1_2;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_mux_f07a2cab4b mux0 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay0_q_net),
    .d1(register0_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux0_y_net)
  );
  sysgen_mux_f07a2cab4b mux1 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay1_q_net),
    .d1(register1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux1_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/AXI_clock_domain_wrapper/Vector latching register4
module fpga_kf1_vector_latching_register4 (
  input [25-1:0] data_in_1,
  input [1-1:0] wren,
  input [25-1:0] data_in_2,
  input clk_1,
  input ce_1,
  output [25-1:0] data_out_1,
  output [25-1:0] data_out_2
);
  wire [1-1:0] register22_q_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] delay0_q_net;
  wire clk_net;
  wire ce_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] delay1_q_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] mux0_y_net;
  assign data_out_1 = mux0_y_net;
  assign data_out_2 = mux1_y_net;
  assign register0_q_net = data_in_1;
  assign register22_q_net = wren;
  assign register1_q_net = data_in_2;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf1_vector_delay_x2 vector_delay (
    .d_1(mux0_y_net),
    .d_2(mux1_y_net),
    .q_1(delay0_q_net),
    .q_2(delay1_q_net)
  );
  fpga_kf1_vector_mux_x4 vector_mux (
    .sel(register22_q_net),
    .i0_1(delay0_q_net),
    .i1_1(register0_q_net),
    .i0_2(delay1_q_net),
    .i1_2(register1_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .o_1(mux0_y_net),
    .o_2(mux1_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/AXI_clock_domain_wrapper/Vector latching register5/Vector Delay
module fpga_kf1_vector_delay_x4 (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  output [25-1:0] q_1,
  output [25-1:0] q_2
);
  wire [25-1:0] mux0_y_net;
  wire [25-1:0] delay0_q_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] delay1_q_net;
  assign q_1 = delay0_q_net;
  assign q_2 = delay1_q_net;
  assign mux0_y_net = d_1;
  assign mux1_y_net = d_2;
  sysgen_delay_6909f5ee44 delay0 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux0_y_net),
    .q(delay0_q_net)
  );
  sysgen_delay_6909f5ee44 delay1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux1_y_net),
    .q(delay1_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/AXI_clock_domain_wrapper/Vector latching register5/Vector Mux
module fpga_kf1_vector_mux_x5 (
  input [1-1:0] sel,
  input [25-1:0] i0_1,
  input [25-1:0] i1_1,
  input [25-1:0] i0_2,
  input [25-1:0] i1_2,
  input clk_1,
  input ce_1,
  output [25-1:0] o_1,
  output [25-1:0] o_2
);
  wire [25-1:0] delay1_q_net;
  wire clk_net;
  wire ce_net;
  wire [25-1:0] register1_q_net;
  wire [1-1:0] register22_q_net;
  wire [25-1:0] mux0_y_net;
  wire [25-1:0] delay0_q_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] mux1_y_net;
  assign o_1 = mux0_y_net;
  assign o_2 = mux1_y_net;
  assign register22_q_net = sel;
  assign delay0_q_net = i0_1;
  assign register0_q_net = i1_1;
  assign delay1_q_net = i0_2;
  assign register1_q_net = i1_2;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_mux_f07a2cab4b mux0 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay0_q_net),
    .d1(register0_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux0_y_net)
  );
  sysgen_mux_f07a2cab4b mux1 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay1_q_net),
    .d1(register1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux1_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/AXI_clock_domain_wrapper/Vector latching register5
module fpga_kf1_vector_latching_register5 (
  input [25-1:0] data_in_1,
  input [1-1:0] wren,
  input [25-1:0] data_in_2,
  input clk_1,
  input ce_1,
  output [25-1:0] data_out_1,
  output [25-1:0] data_out_2
);
  wire [25-1:0] register0_q_net;
  wire [25-1:0] register1_q_net;
  wire ce_net;
  wire [25-1:0] mux0_y_net;
  wire clk_net;
  wire [25-1:0] delay0_q_net;
  wire [25-1:0] mux1_y_net;
  wire [1-1:0] register22_q_net;
  wire [25-1:0] delay1_q_net;
  assign data_out_1 = mux0_y_net;
  assign data_out_2 = mux1_y_net;
  assign register0_q_net = data_in_1;
  assign register22_q_net = wren;
  assign register1_q_net = data_in_2;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf1_vector_delay_x4 vector_delay (
    .d_1(mux0_y_net),
    .d_2(mux1_y_net),
    .q_1(delay0_q_net),
    .q_2(delay1_q_net)
  );
  fpga_kf1_vector_mux_x5 vector_mux (
    .sel(register22_q_net),
    .i0_1(delay0_q_net),
    .i1_1(register0_q_net),
    .i0_2(delay1_q_net),
    .i1_2(register1_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .o_1(mux0_y_net),
    .o_2(mux1_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/AXI_clock_domain_wrapper/Vector latching register6/Vector Delay
module fpga_kf1_vector_delay_x5 (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  output [25-1:0] q_1,
  output [25-1:0] q_2
);
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] delay0_q_net;
  wire [25-1:0] mux0_y_net;
  wire [25-1:0] delay1_q_net;
  assign q_1 = delay0_q_net;
  assign q_2 = delay1_q_net;
  assign mux0_y_net = d_1;
  assign mux1_y_net = d_2;
  sysgen_delay_6909f5ee44 delay0 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux0_y_net),
    .q(delay0_q_net)
  );
  sysgen_delay_6909f5ee44 delay1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux1_y_net),
    .q(delay1_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/AXI_clock_domain_wrapper/Vector latching register6/Vector Mux
module fpga_kf1_vector_mux_x6 (
  input [1-1:0] sel,
  input [25-1:0] i0_1,
  input [25-1:0] i1_1,
  input [25-1:0] i0_2,
  input [25-1:0] i1_2,
  input clk_1,
  input ce_1,
  output [25-1:0] o_1,
  output [25-1:0] o_2
);
  wire [25-1:0] mux1_y_net;
  wire [1-1:0] register22_q_net;
  wire [25-1:0] delay0_q_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] delay1_q_net;
  wire [25-1:0] register1_q_net;
  wire clk_net;
  wire [25-1:0] mux0_y_net;
  wire ce_net;
  assign o_1 = mux0_y_net;
  assign o_2 = mux1_y_net;
  assign register22_q_net = sel;
  assign delay0_q_net = i0_1;
  assign register0_q_net = i1_1;
  assign delay1_q_net = i0_2;
  assign register1_q_net = i1_2;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_mux_f07a2cab4b mux0 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay0_q_net),
    .d1(register0_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux0_y_net)
  );
  sysgen_mux_f07a2cab4b mux1 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay1_q_net),
    .d1(register1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux1_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/AXI_clock_domain_wrapper/Vector latching register6
module fpga_kf1_vector_latching_register6 (
  input [25-1:0] data_in_1,
  input [1-1:0] wren,
  input [25-1:0] data_in_2,
  input clk_1,
  input ce_1,
  output [25-1:0] data_out_1,
  output [25-1:0] data_out_2
);
  wire [25-1:0] register0_q_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] delay1_q_net;
  wire [25-1:0] mux0_y_net;
  wire [25-1:0] mux1_y_net;
  wire [1-1:0] register22_q_net;
  wire ce_net;
  wire [25-1:0] delay0_q_net;
  wire clk_net;
  assign data_out_1 = mux0_y_net;
  assign data_out_2 = mux1_y_net;
  assign register0_q_net = data_in_1;
  assign register22_q_net = wren;
  assign register1_q_net = data_in_2;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf1_vector_delay_x5 vector_delay (
    .d_1(mux0_y_net),
    .d_2(mux1_y_net),
    .q_1(delay0_q_net),
    .q_2(delay1_q_net)
  );
  fpga_kf1_vector_mux_x6 vector_mux (
    .sel(register22_q_net),
    .i0_1(delay0_q_net),
    .i1_1(register0_q_net),
    .i0_2(delay1_q_net),
    .i1_2(register1_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .o_1(mux0_y_net),
    .o_2(mux1_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/AXI_clock_domain_wrapper/Vector latching register7/Vector Delay
module fpga_kf1_vector_delay_x6 (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  input [25-1:0] d_3,
  input [25-1:0] d_4,
  output [25-1:0] q_1,
  output [25-1:0] q_2,
  output [25-1:0] q_3,
  output [25-1:0] q_4
);
  wire [25-1:0] delay2_q_net;
  wire [25-1:0] mux3_y_net;
  wire [25-1:0] mux0_y_net;
  wire [25-1:0] delay0_q_net;
  wire [25-1:0] delay3_q_net;
  wire [25-1:0] mux2_y_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] delay1_q_net;
  assign q_1 = delay0_q_net;
  assign q_2 = delay1_q_net;
  assign q_3 = delay2_q_net;
  assign q_4 = delay3_q_net;
  assign mux0_y_net = d_1;
  assign mux1_y_net = d_2;
  assign mux2_y_net = d_3;
  assign mux3_y_net = d_4;
  sysgen_delay_6909f5ee44 delay0 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux0_y_net),
    .q(delay0_q_net)
  );
  sysgen_delay_6909f5ee44 delay1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux1_y_net),
    .q(delay1_q_net)
  );
  sysgen_delay_6909f5ee44 delay2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux2_y_net),
    .q(delay2_q_net)
  );
  sysgen_delay_6909f5ee44 delay3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(mux3_y_net),
    .q(delay3_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/AXI_clock_domain_wrapper/Vector latching register7/Vector Mux
module fpga_kf1_vector_mux (
  input [1-1:0] sel,
  input [25-1:0] i0_1,
  input [25-1:0] i1_1,
  input [25-1:0] i0_2,
  input [25-1:0] i0_3,
  input [25-1:0] i0_4,
  input [25-1:0] i1_2,
  input [25-1:0] i1_3,
  input [25-1:0] i1_4,
  input clk_1,
  input ce_1,
  output [25-1:0] o_1,
  output [25-1:0] o_2,
  output [25-1:0] o_3,
  output [25-1:0] o_4
);
  wire [25-1:0] mux2_y_net;
  wire [25-1:0] delay2_q_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] mux0_y_net;
  wire [1-1:0] register22_q_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] delay3_q_net;
  wire ce_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] delay1_q_net;
  wire clk_net;
  wire [25-1:0] mux3_y_net;
  wire [25-1:0] delay0_q_net;
  wire [25-1:0] register1_q_net;
  assign o_1 = mux0_y_net;
  assign o_2 = mux1_y_net;
  assign o_3 = mux2_y_net;
  assign o_4 = mux3_y_net;
  assign register22_q_net = sel;
  assign delay0_q_net = i0_1;
  assign register0_q_net = i1_1;
  assign delay1_q_net = i0_2;
  assign delay2_q_net = i0_3;
  assign delay3_q_net = i0_4;
  assign register1_q_net = i1_2;
  assign register2_q_net = i1_3;
  assign register3_q_net = i1_4;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_mux_f07a2cab4b mux0 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay0_q_net),
    .d1(register0_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux0_y_net)
  );
  sysgen_mux_f07a2cab4b mux1 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay1_q_net),
    .d1(register1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux1_y_net)
  );
  sysgen_mux_f07a2cab4b mux2 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay2_q_net),
    .d1(register2_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux2_y_net)
  );
  sysgen_mux_f07a2cab4b mux3 (
    .clr(1'b0),
    .sel(register22_q_net),
    .d0(delay3_q_net),
    .d1(register3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux3_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/AXI_clock_domain_wrapper/Vector latching register7
module fpga_kf1_vector_latching_register7 (
  input [25-1:0] data_in_1,
  input [1-1:0] wren,
  input [25-1:0] data_in_2,
  input [25-1:0] data_in_3,
  input [25-1:0] data_in_4,
  input clk_1,
  input ce_1,
  output [25-1:0] data_out_1,
  output [25-1:0] data_out_2,
  output [25-1:0] data_out_3,
  output [25-1:0] data_out_4
);
  wire [25-1:0] mux3_y_net;
  wire [1-1:0] register22_q_net;
  wire [25-1:0] delay1_q_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] delay3_q_net;
  wire ce_net;
  wire clk_net;
  wire [25-1:0] delay2_q_net;
  wire [25-1:0] delay0_q_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] mux2_y_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] mux0_y_net;
  assign data_out_1 = mux0_y_net;
  assign data_out_2 = mux1_y_net;
  assign data_out_3 = mux2_y_net;
  assign data_out_4 = mux3_y_net;
  assign register0_q_net = data_in_1;
  assign register22_q_net = wren;
  assign register1_q_net = data_in_2;
  assign register2_q_net = data_in_3;
  assign register3_q_net = data_in_4;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf1_vector_delay_x6 vector_delay (
    .d_1(mux0_y_net),
    .d_2(mux1_y_net),
    .d_3(mux2_y_net),
    .d_4(mux3_y_net),
    .q_1(delay0_q_net),
    .q_2(delay1_q_net),
    .q_3(delay2_q_net),
    .q_4(delay3_q_net)
  );
  fpga_kf1_vector_mux vector_mux (
    .sel(register22_q_net),
    .i0_1(delay0_q_net),
    .i1_1(register0_q_net),
    .i0_2(delay1_q_net),
    .i0_3(delay2_q_net),
    .i0_4(delay3_q_net),
    .i1_2(register1_q_net),
    .i1_3(register2_q_net),
    .i1_4(register3_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .o_1(mux0_y_net),
    .o_2(mux1_y_net),
    .o_3(mux2_y_net),
    .o_4(mux3_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/AXI_clock_domain_wrapper/four_vector_axi_gateway
module fpga_kf1_four_vector_axi_gateway (
  input [25-1:0] gateway_in_f11,
  input [25-1:0] gateway_in_f12,
  input [25-1:0] gateway_in_f21,
  input [25-1:0] gateway_in_f22
);
  wire [25-1:0] gateway_in_f22_net;
  wire [25-1:0] gateway_in_f12_net;
  wire [25-1:0] gateway_in_f11_net;
  wire [25-1:0] gateway_in_f21_net;
  assign gateway_in_f11_net = gateway_in_f11;
  assign gateway_in_f12_net = gateway_in_f12;
  assign gateway_in_f21_net = gateway_in_f21;
  assign gateway_in_f22_net = gateway_in_f22;
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/AXI_clock_domain_wrapper/four_vector_axi_gateway1
module fpga_kf1_four_vector_axi_gateway1 (
  input [25-1:0] gateway_in_f11_ip,
  input [25-1:0] gateway_in_f12_ip,
  input [25-1:0] gateway_in_f21_ip,
  input [25-1:0] gateway_in_f22_ip
);
  wire [25-1:0] gateway_in_f22_ip_net;
  wire [25-1:0] gateway_in_f11_ip_net;
  wire [25-1:0] gateway_in_f12_ip_net;
  wire [25-1:0] gateway_in_f21_ip_net;
  assign gateway_in_f11_ip_net = gateway_in_f11_ip;
  assign gateway_in_f12_ip_net = gateway_in_f12_ip;
  assign gateway_in_f21_ip_net = gateway_in_f21_ip;
  assign gateway_in_f22_ip_net = gateway_in_f22_ip;
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/AXI_clock_domain_wrapper/two_vector_axi_gateway
module fpga_kf1_two_vector_axi_gateway (
  input [25-1:0] gateway_in_l1,
  input [25-1:0] gateway_in_l2
);
  wire [25-1:0] gateway_in_l1_net;
  wire [25-1:0] gateway_in_l2_net;
  assign gateway_in_l1_net = gateway_in_l1;
  assign gateway_in_l2_net = gateway_in_l2;
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/AXI_clock_domain_wrapper/two_vector_axi_gateway1
module fpga_kf1_two_vector_axi_gateway1 (
  input [25-1:0] gateway_in_k1,
  input [25-1:0] gateway_in_k2
);
  wire [25-1:0] gateway_in_k1_net;
  wire [25-1:0] gateway_in_k2_net;
  assign gateway_in_k1_net = gateway_in_k1;
  assign gateway_in_k2_net = gateway_in_k2;
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/AXI_clock_domain_wrapper/two_vector_axi_gateway2
module fpga_kf1_two_vector_axi_gateway2 (
  input [25-1:0] gateway_in_l1_ip,
  input [25-1:0] gateway_in_l2_ip
);
  wire [25-1:0] gateway_in_l1_ip_net;
  wire [25-1:0] gateway_in_l2_ip_net;
  assign gateway_in_l1_ip_net = gateway_in_l1_ip;
  assign gateway_in_l2_ip_net = gateway_in_l2_ip;
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/AXI_clock_domain_wrapper/two_vector_axi_gateway3
module fpga_kf1_two_vector_axi_gateway3 (
  input [25-1:0] gateway_in_k1_ip,
  input [25-1:0] gateway_in_k2_ip
);
  wire [25-1:0] gateway_in_k1_ip_net;
  wire [25-1:0] gateway_in_k2_ip_net;
  assign gateway_in_k1_ip_net = gateway_in_k1_ip;
  assign gateway_in_k2_ip_net = gateway_in_k2_ip;
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/AXI_clock_domain_wrapper/two_vector_axi_gateway4
module fpga_kf1_two_vector_axi_gateway4 (
  input [25-1:0] gateway_in_b1_ip,
  input [25-1:0] gateway_in_b2_ip
);
  wire [25-1:0] gateway_in_b1_ip_net;
  wire [25-1:0] gateway_in_b2_ip_net;
  assign gateway_in_b1_ip_net = gateway_in_b1_ip;
  assign gateway_in_b2_ip_net = gateway_in_b2_ip;
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/AXI_clock_domain_wrapper/two_vector_axi_gateway5
module fpga_kf1_two_vector_axi_gateway5 (
  input [25-1:0] gateway_in_b1,
  input [25-1:0] gateway_in_b2
);
  wire [25-1:0] gateway_in_b1_net;
  wire [25-1:0] gateway_in_b2_net;
  assign gateway_in_b1_net = gateway_in_b1;
  assign gateway_in_b2_net = gateway_in_b2;
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/AXI_clock_domain_wrapper
module fpga_kf1_axi_clock_domain_wrapper (
  input [1-1:0] registers_wren_in,
  input [14-1:0] adc_ch1_offst,
  input [14-1:0] adc_ch2_offst,
  input [2-1:0] ap_ip_switch_in,
  input [1-1:0] disco_mode_enable,
  input [16-1:0] fixed_led_pattern_in,
  input [25-1:0] barrier_c0_data_in,
  input [25-1:0] barrier_c1_data_in,
  input [25-1:0] barrier_c_idx_in,
  input [10-1:0] barrier_c_ofst_idx_in,
  input [10-1:0] barrier_ram_addr_in,
  input [1-1:0] barrier_ram_we_in,
  input [18-1:0] barrier_lb_in,
  input [18-1:0] barrier_ub_in,
  input [2-1:0] div_mux_selector,
  input [25-1:0] div_scale_in,
  input [32-1:0] dma_trigger_time,
  input [25-1:0] ema_const_in,
  input [25-1:0] ema_const_slow_in,
  input [2-1:0] fb_src_switch_in,
  input [14-1:0] out_switch_off,
  input [14-1:0] out_switch_on,
  input [32-1:0] reg_out_switch_t0,
  input [32-1:0] reg_out_switch_tf,
  input [32-1:0] reg_rp_switch_t0,
  input [32-1:0] reg_rp_switch_tf,
  input [32-1:0] reg_timer_period,
  input [2-1:0] sw_override_in,
  input [18-1:0] x_ref_in,
  input [25-1:0] gateway_in_f11,
  input [25-1:0] gateway_in_f12,
  input [25-1:0] gateway_in_f21,
  input [25-1:0] gateway_in_f22,
  input [25-1:0] gateway_in_f11_ip,
  input [25-1:0] gateway_in_f12_ip,
  input [25-1:0] gateway_in_f21_ip,
  input [25-1:0] gateway_in_f22_ip,
  input [25-1:0] gateway_in_l1,
  input [25-1:0] gateway_in_l2,
  input [25-1:0] gateway_in_k1,
  input [25-1:0] gateway_in_k2,
  input [25-1:0] gateway_in_l1_ip,
  input [25-1:0] gateway_in_l2_ip,
  input [25-1:0] gateway_in_k1_ip,
  input [25-1:0] gateway_in_k2_ip,
  input [25-1:0] gateway_in_b1_ip,
  input [25-1:0] gateway_in_b2_ip,
  input [25-1:0] gateway_in_b1,
  input [25-1:0] gateway_in_b2,
  input clk_1,
  input ce_1,
  output [1-1:0] ap_ip_switch_out,
  output [25-1:0] f_reg_out_1,
  output [25-1:0] l_reg_out_1,
  output [25-1:0] k_reg_out_1,
  output [25-1:0] b_reg_out_1,
  output [25-1:0] f_ip_reg_out_1,
  output [25-1:0] l_ip_reg_out_1,
  output [25-1:0] k_ip_reg_out_1,
  output [25-1:0] b_ip_reg_out_1,
  output [6-1:0] leds_cross_out,
  output [2-1:0] div_mux_reg_out,
  output [25-1:0] div_scale_reg_out,
  output [25-1:0] ema_const_reg_out,
  output [2-1:0] switch_override_reg_out,
  output [14-1:0] adc_offset_1,
  output [14-1:0] adc_offset_2,
  output [14-1:0] hw_switch_output,
  output [1-1:0] hw_switch_flag,
  output [25-1:0] ema_const_slow_reg_out,
  output [18-1:0] x_ref_out,
  output [2-1:0] fb_src_switch_out,
  output [18-1:0] barrier_ub_lb_out_1,
  output [25-1:0] barrier_c_idx_out,
  output [10-1:0] barrier_c_ofst_idx_out,
  output [10-1:0] barrier_ram_addr_out,
  output [25-1:0] barrier_ram_data_out_1,
  output [1-1:0] barrier_ram_we_out,
  output [25-1:0] f_reg_out_2,
  output [25-1:0] f_reg_out_3,
  output [25-1:0] f_reg_out_4,
  output [25-1:0] l_reg_out_2,
  output [25-1:0] k_reg_out_2,
  output [25-1:0] b_reg_out_2,
  output [25-1:0] f_ip_reg_out_2,
  output [25-1:0] f_ip_reg_out_3,
  output [25-1:0] f_ip_reg_out_4,
  output [25-1:0] l_ip_reg_out_2,
  output [25-1:0] k_ip_reg_out_2,
  output [25-1:0] b_ip_reg_out_2,
  output [18-1:0] barrier_ub_lb_out_2,
  output [25-1:0] barrier_ram_data_out_2,
  output [1-1:0] dma_trigger_output
);
  wire [1-1:0] period_reached_switch_op_net;
  wire [1-1:0] out_switch_tf_op_net;
  wire [1-1:0] rp_switch_tf_op_net;
  wire [1-1:0] rp_switch_t0_op_net;
  wire [1-1:0] out_switch_t0_op_net;
  wire [1-1:0] rp_switch_enable_y_net;
  wire [25-1:0] mux0_y_net_x2;
  wire [14-1:0] register8_q_net;
  wire [1-1:0] hw_switch_flag_delay_match_q_net;
  wire [6-1:0] mux_y_net;
  wire [25-1:0] register18_q_net;
  wire [10-1:0] register19_q_net;
  wire [25-1:0] mux0_y_net;
  wire [2-1:0] register6_q_net;
  wire [25-1:0] mux0_y_net_x4;
  wire [14-1:0] register7_q_net;
  wire [2-1:0] register2_q_net_x1;
  wire [25-1:0] register15_q_net;
  wire [18-1:0] register16_q_net;
  wire [18-1:0] register0_q_net_x1;
  wire [10-1:0] register20_q_net;
  wire [1-1:0] sw_switch_mux_y_net;
  wire [25-1:0] mux0_y_net_x5;
  wire [25-1:0] mux0_y_net_x3;
  wire [25-1:0] mux0_y_net_x6;
  wire [25-1:0] register3_q_net_x1;
  wire [25-1:0] mux0_y_net_x0;
  wire [25-1:0] register4_q_net;
  wire [14-1:0] dac_enable_y_net;
  wire [25-1:0] mux0_y_net_x1;
  wire [2-1:0] register17_q_net;
  wire [10-1:0] barrier_ram_addr_in_net;
  wire [18-1:0] barrier_lb_in_net;
  wire [25-1:0] mux1_y_net_x1;
  wire [1-1:0] barrier_ram_we_in_net;
  wire [25-1:0] mux1_y_net_x3;
  wire [25-1:0] mux1_y_net_x2;
  wire [2-1:0] div_mux_selector_net;
  wire [25-1:0] mux2_y_net_x0;
  wire [1-1:0] registers_wren_in_net;
  wire [10-1:0] barrier_c_ofst_idx_in_net;
  wire [25-1:0] mux1_y_net_x5;
  wire [25-1:0] mux1_y_net_x0;
  wire [1-1:0] register21_q_net;
  wire [16-1:0] fixed_led_pattern_in_net;
  wire [25-1:0] barrier_c0_data_in_net;
  wire [1-1:0] dma_trigger_threshold_op_net;
  wire [25-1:0] mux2_y_net;
  wire [18-1:0] barrier_ub_in_net;
  wire [18-1:0] register1_q_net_x1;
  wire [2-1:0] ap_ip_switch_in_net;
  wire [25-1:0] mux1_y_net_x6;
  wire [14-1:0] adc_ch1_offst_net;
  wire [14-1:0] adc_ch2_offst_net;
  wire [1-1:0] disco_mode_enable_net;
  wire [25-1:0] barrier_c1_data_in_net;
  wire [25-1:0] mux3_y_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] register0_q_net_x0;
  wire [25-1:0] mux3_y_net_x0;
  wire [25-1:0] mux1_y_net_x4;
  wire [25-1:0] register1_q_net_x0;
  wire [25-1:0] barrier_c_idx_in_net;
  wire [25-1:0] ema_const_slow_in_net;
  wire [14-1:0] out_switch_off_net;
  wire [25-1:0] gateway_in_f11_ip_net;
  wire [25-1:0] gateway_in_l2_ip_net;
  wire [25-1:0] gateway_in_f21_net;
  wire [25-1:0] gateway_in_b1_ip_net;
  wire [25-1:0] gateway_in_b2_ip_net;
  wire [25-1:0] gateway_in_f11_net;
  wire [32-1:0] reg_out_switch_tf_net;
  wire [25-1:0] gateway_in_f12_net;
  wire [25-1:0] gateway_in_f12_ip_net;
  wire [25-1:0] ema_const_in_net;
  wire [25-1:0] gateway_in_f22_ip_net;
  wire [25-1:0] gateway_in_k1_net;
  wire [2-1:0] fb_src_switch_in_net;
  wire [25-1:0] gateway_in_k2_net;
  wire [25-1:0] gateway_in_k1_ip_net;
  wire [25-1:0] div_scale_in_net;
  wire [25-1:0] gateway_in_k2_ip_net;
  wire [14-1:0] out_switch_on_net;
  wire [32-1:0] reg_out_switch_t0_net;
  wire [32-1:0] reg_rp_switch_tf_net;
  wire [25-1:0] gateway_in_l1_net;
  wire [25-1:0] gateway_in_f22_net;
  wire [25-1:0] gateway_in_f21_ip_net;
  wire [25-1:0] gateway_in_l2_net;
  wire [32-1:0] dma_trigger_time_net;
  wire [32-1:0] reg_timer_period_net;
  wire [32-1:0] reg_rp_switch_t0_net;
  wire [18-1:0] x_ref_in_net;
  wire [2-1:0] sw_override_in_net;
  wire [25-1:0] gateway_in_l1_ip_net;
  wire [1-1:0] sw_switch_y_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] register0_q_net_x8;
  wire [25-1:0] register1_q_net_x3;
  wire [1-1:0] register22_q_net;
  wire [25-1:0] register2_q_net_x0;
  wire [25-1:0] gateway_in_b1_net;
  wire [25-1:0] register1_q_net_x8;
  wire [25-1:0] register1_q_net_x7;
  wire [25-1:0] register0_q_net_x6;
  wire [1-1:0] register5_q_net;
  wire [1-1:0] switching_logic_selector_y_net;
  wire [14-1:0] ip_ap_value_mux_y_net;
  wire clk_net;
  wire [25-1:0] register0_q_net_x3;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] register0_q_net_x4;
  wire [25-1:0] register1_q_net_x6;
  wire [25-1:0] register0_q_net_x7;
  wire [25-1:0] register0_q_net_x2;
  wire [24-1:0] counter_op_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] register0_q_net_x5;
  wire ce_net;
  wire [25-1:0] register1_q_net_x5;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] register1_q_net_x4;
  wire [14-1:0] dac_value_mux_y_net;
  wire [1-1:0] out_switch_enable_y_net;
  wire [25-1:0] register1_q_net_x2;
  wire [25-1:0] gateway_in_b2_net;
  wire [25-1:0] register3_q_net_x0;
  wire [32-1:0] register13_q_net;
  wire [6-1:0] reinterpret_output_port_net;
  wire [1-1:0] inverter_op_net;
  wire [16-1:0] register_q_net;
  wire [32-1:0] register12_q_net;
  wire [32-1:0] register14_q_net;
  wire [32-1:0] register11_q_net;
  wire [6-1:0] slice_y_net;
  wire [2-1:0] register1_q_net_x9;
  wire [32-1:0] register10_q_net;
  wire [32-1:0] register9_q_net;
  wire [1-1:0] rp_switch_delay_match_q_net;
  wire [6-1:0] slice1_y_net;
  wire [32-1:0] sec_counter_op_net;
  assign ap_ip_switch_out = sw_switch_mux_y_net;
  assign f_reg_out_1 = mux0_y_net_x1;
  assign l_reg_out_1 = mux0_y_net_x2;
  assign k_reg_out_1 = mux0_y_net_x3;
  assign b_reg_out_1 = mux0_y_net_x4;
  assign f_ip_reg_out_1 = mux0_y_net_x5;
  assign l_ip_reg_out_1 = mux0_y_net_x6;
  assign k_ip_reg_out_1 = mux0_y_net;
  assign b_ip_reg_out_1 = mux0_y_net_x0;
  assign leds_cross_out = mux_y_net;
  assign div_mux_reg_out = register2_q_net_x1;
  assign div_scale_reg_out = register3_q_net_x1;
  assign ema_const_reg_out = register4_q_net;
  assign switch_override_reg_out = register6_q_net;
  assign adc_offset_1 = register7_q_net;
  assign adc_offset_2 = register8_q_net;
  assign hw_switch_output = dac_enable_y_net;
  assign hw_switch_flag = hw_switch_flag_delay_match_q_net;
  assign ema_const_slow_reg_out = register15_q_net;
  assign x_ref_out = register16_q_net;
  assign fb_src_switch_out = register17_q_net;
  assign barrier_ub_lb_out_1 = register0_q_net_x1;
  assign barrier_c_idx_out = register18_q_net;
  assign barrier_c_ofst_idx_out = register19_q_net;
  assign barrier_ram_addr_out = register20_q_net;
  assign barrier_ram_data_out_1 = register0_q_net_x0;
  assign barrier_ram_we_out = register21_q_net;
  assign f_reg_out_2 = mux1_y_net_x0;
  assign f_reg_out_3 = mux2_y_net;
  assign f_reg_out_4 = mux3_y_net;
  assign l_reg_out_2 = mux1_y_net_x1;
  assign k_reg_out_2 = mux1_y_net_x2;
  assign b_reg_out_2 = mux1_y_net_x3;
  assign f_ip_reg_out_2 = mux1_y_net_x4;
  assign f_ip_reg_out_3 = mux2_y_net_x0;
  assign f_ip_reg_out_4 = mux3_y_net_x0;
  assign l_ip_reg_out_2 = mux1_y_net_x5;
  assign k_ip_reg_out_2 = mux1_y_net_x6;
  assign b_ip_reg_out_2 = mux1_y_net;
  assign barrier_ub_lb_out_2 = register1_q_net_x1;
  assign barrier_ram_data_out_2 = register1_q_net_x0;
  assign registers_wren_in_net = registers_wren_in;
  assign adc_ch1_offst_net = adc_ch1_offst;
  assign adc_ch2_offst_net = adc_ch2_offst;
  assign ap_ip_switch_in_net = ap_ip_switch_in;
  assign dma_trigger_output = dma_trigger_threshold_op_net;
  assign disco_mode_enable_net = disco_mode_enable;
  assign fixed_led_pattern_in_net = fixed_led_pattern_in;
  assign barrier_c0_data_in_net = barrier_c0_data_in;
  assign barrier_c1_data_in_net = barrier_c1_data_in;
  assign barrier_c_idx_in_net = barrier_c_idx_in;
  assign barrier_c_ofst_idx_in_net = barrier_c_ofst_idx_in;
  assign barrier_ram_addr_in_net = barrier_ram_addr_in;
  assign barrier_ram_we_in_net = barrier_ram_we_in;
  assign barrier_lb_in_net = barrier_lb_in;
  assign barrier_ub_in_net = barrier_ub_in;
  assign div_mux_selector_net = div_mux_selector;
  assign div_scale_in_net = div_scale_in;
  assign dma_trigger_time_net = dma_trigger_time;
  assign ema_const_in_net = ema_const_in;
  assign ema_const_slow_in_net = ema_const_slow_in;
  assign fb_src_switch_in_net = fb_src_switch_in;
  assign out_switch_off_net = out_switch_off;
  assign out_switch_on_net = out_switch_on;
  assign reg_out_switch_t0_net = reg_out_switch_t0;
  assign reg_out_switch_tf_net = reg_out_switch_tf;
  assign reg_rp_switch_t0_net = reg_rp_switch_t0;
  assign reg_rp_switch_tf_net = reg_rp_switch_tf;
  assign reg_timer_period_net = reg_timer_period;
  assign sw_override_in_net = sw_override_in;
  assign x_ref_in_net = x_ref_in;
  assign gateway_in_f11_net = gateway_in_f11;
  assign gateway_in_f12_net = gateway_in_f12;
  assign gateway_in_f21_net = gateway_in_f21;
  assign gateway_in_f22_net = gateway_in_f22;
  assign gateway_in_f11_ip_net = gateway_in_f11_ip;
  assign gateway_in_f12_ip_net = gateway_in_f12_ip;
  assign gateway_in_f21_ip_net = gateway_in_f21_ip;
  assign gateway_in_f22_ip_net = gateway_in_f22_ip;
  assign gateway_in_l1_net = gateway_in_l1;
  assign gateway_in_l2_net = gateway_in_l2;
  assign gateway_in_k1_net = gateway_in_k1;
  assign gateway_in_k2_net = gateway_in_k2;
  assign gateway_in_l1_ip_net = gateway_in_l1_ip;
  assign gateway_in_l2_ip_net = gateway_in_l2_ip;
  assign gateway_in_k1_ip_net = gateway_in_k1_ip;
  assign gateway_in_k2_ip_net = gateway_in_k2_ip;
  assign gateway_in_b1_ip_net = gateway_in_b1_ip;
  assign gateway_in_b2_ip_net = gateway_in_b2_ip;
  assign gateway_in_b1_net = gateway_in_b1;
  assign gateway_in_b2_net = gateway_in_b2;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf1_vector_register vector_register (
    .d_1(gateway_in_f11_net),
    .d_2(gateway_in_f12_net),
    .d_3(gateway_in_f21_net),
    .d_4(gateway_in_f22_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .q_1(register0_q_net_x8),
    .q_2(register1_q_net_x8),
    .q_3(register2_q_net_x0),
    .q_4(register3_q_net_x0)
  );
  fpga_kf1_vector_register1 vector_register1 (
    .d_1(gateway_in_f11_ip_net),
    .d_2(gateway_in_f12_ip_net),
    .d_3(gateway_in_f21_ip_net),
    .d_4(gateway_in_f22_ip_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .q_1(register0_q_net_x7),
    .q_2(register1_q_net_x7),
    .q_3(register2_q_net),
    .q_4(register3_q_net)
  );
  fpga_kf1_vector_register2 vector_register2 (
    .d_1(gateway_in_l1_net),
    .d_2(gateway_in_l2_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .q_1(register0_q_net_x6),
    .q_2(register1_q_net_x6)
  );
  fpga_kf1_vector_register3 vector_register3 (
    .d_1(gateway_in_k1_net),
    .d_2(gateway_in_k2_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .q_1(register0_q_net_x5),
    .q_2(register1_q_net_x5)
  );
  fpga_kf1_vector_register4 vector_register4 (
    .d_1(gateway_in_l1_ip_net),
    .d_2(gateway_in_l2_ip_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .q_1(register0_q_net_x4),
    .q_2(register1_q_net_x4)
  );
  fpga_kf1_vector_register5 vector_register5 (
    .d_1(gateway_in_k1_ip_net),
    .d_2(gateway_in_k2_ip_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .q_1(register0_q_net_x3),
    .q_2(register1_q_net_x3)
  );
  fpga_kf1_vector_register6 vector_register6 (
    .d_1(gateway_in_b1_ip_net),
    .d_2(gateway_in_b2_ip_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .q_1(register0_q_net_x2),
    .q_2(register1_q_net_x2)
  );
  fpga_kf1_vector_register7 vector_register7 (
    .d_1(barrier_ub_in_net),
    .d_2(barrier_lb_in_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .q_1(register0_q_net_x1),
    .q_2(register1_q_net_x1)
  );
  fpga_kf1_vector_register8 vector_register8 (
    .d_1(barrier_c0_data_in_net),
    .d_2(barrier_c1_data_in_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .q_1(register0_q_net_x0),
    .q_2(register1_q_net_x0)
  );
  fpga_kf1_vector_register9 vector_register9 (
    .d_1(gateway_in_b1_net),
    .d_2(gateway_in_b2_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .q_1(register0_q_net),
    .q_2(register1_q_net)
  );
  fpga_kf1_vector_latching_register vector_latching_register (
    .data_in_1(register0_q_net_x2),
    .wren(register22_q_net),
    .data_in_2(register1_q_net_x2),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .data_out_1(mux0_y_net_x0),
    .data_out_2(mux1_y_net)
  );
  fpga_kf1_vector_latching_register1 vector_latching_register1 (
    .data_in_1(register0_q_net_x3),
    .wren(register22_q_net),
    .data_in_2(register1_q_net_x3),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .data_out_1(mux0_y_net),
    .data_out_2(mux1_y_net_x6)
  );
  fpga_kf1_vector_latching_register2 vector_latching_register2 (
    .data_in_1(register0_q_net_x4),
    .wren(register22_q_net),
    .data_in_2(register1_q_net_x4),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .data_out_1(mux0_y_net_x6),
    .data_out_2(mux1_y_net_x5)
  );
  fpga_kf1_vector_latching_register3 vector_latching_register3 (
    .data_in_1(register0_q_net_x7),
    .wren(register22_q_net),
    .data_in_2(register1_q_net_x7),
    .data_in_3(register2_q_net),
    .data_in_4(register3_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .data_out_1(mux0_y_net_x5),
    .data_out_2(mux1_y_net_x4),
    .data_out_3(mux2_y_net_x0),
    .data_out_4(mux3_y_net_x0)
  );
  fpga_kf1_vector_latching_register4 vector_latching_register4 (
    .data_in_1(register0_q_net),
    .wren(register22_q_net),
    .data_in_2(register1_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .data_out_1(mux0_y_net_x4),
    .data_out_2(mux1_y_net_x3)
  );
  fpga_kf1_vector_latching_register5 vector_latching_register5 (
    .data_in_1(register0_q_net_x5),
    .wren(register22_q_net),
    .data_in_2(register1_q_net_x5),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .data_out_1(mux0_y_net_x3),
    .data_out_2(mux1_y_net_x2)
  );
  fpga_kf1_vector_latching_register6 vector_latching_register6 (
    .data_in_1(register0_q_net_x6),
    .wren(register22_q_net),
    .data_in_2(register1_q_net_x6),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .data_out_1(mux0_y_net_x2),
    .data_out_2(mux1_y_net_x1)
  );
  fpga_kf1_vector_latching_register7 vector_latching_register7 (
    .data_in_1(register0_q_net_x8),
    .wren(register22_q_net),
    .data_in_2(register1_q_net_x8),
    .data_in_3(register2_q_net_x0),
    .data_in_4(register3_q_net_x0),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .data_out_1(mux0_y_net_x1),
    .data_out_2(mux1_y_net_x0),
    .data_out_3(mux2_y_net),
    .data_out_4(mux3_y_net)
  );
  fpga_kf1_four_vector_axi_gateway four_vector_axi_gateway (
    .gateway_in_f11(gateway_in_f11_net),
    .gateway_in_f12(gateway_in_f12_net),
    .gateway_in_f21(gateway_in_f21_net),
    .gateway_in_f22(gateway_in_f22_net)
  );
  fpga_kf1_four_vector_axi_gateway1 four_vector_axi_gateway1 (
    .gateway_in_f11_ip(gateway_in_f11_ip_net),
    .gateway_in_f12_ip(gateway_in_f12_ip_net),
    .gateway_in_f21_ip(gateway_in_f21_ip_net),
    .gateway_in_f22_ip(gateway_in_f22_ip_net)
  );
  fpga_kf1_two_vector_axi_gateway two_vector_axi_gateway (
    .gateway_in_l1(gateway_in_l1_net),
    .gateway_in_l2(gateway_in_l2_net)
  );
  fpga_kf1_two_vector_axi_gateway1 two_vector_axi_gateway1 (
    .gateway_in_k1(gateway_in_k1_net),
    .gateway_in_k2(gateway_in_k2_net)
  );
  fpga_kf1_two_vector_axi_gateway2 two_vector_axi_gateway2 (
    .gateway_in_l1_ip(gateway_in_l1_ip_net),
    .gateway_in_l2_ip(gateway_in_l2_ip_net)
  );
  fpga_kf1_two_vector_axi_gateway3 two_vector_axi_gateway3 (
    .gateway_in_k1_ip(gateway_in_k1_ip_net),
    .gateway_in_k2_ip(gateway_in_k2_ip_net)
  );
  fpga_kf1_two_vector_axi_gateway4 two_vector_axi_gateway4 (
    .gateway_in_b1_ip(gateway_in_b1_ip_net),
    .gateway_in_b2_ip(gateway_in_b2_ip_net)
  );
  fpga_kf1_two_vector_axi_gateway5 two_vector_axi_gateway5 (
    .gateway_in_b1(gateway_in_b1_net),
    .gateway_in_b2(gateway_in_b2_net)
  );
  fpga_kf1_xlcounter_free #(
    .core_name0("fpga_kf1_c_counter_binary_v12_0_i0"),
    .op_arith(`xlUnsigned),
    .op_width(24)
  )
  counter (
    .rst(1'b0),
    .clr(1'b0),
    .en(register5_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(counter_op_net)
  );
  sysgen_mux_6699c60d29 dac_enable (
    .clr(1'b0),
    .sel(switching_logic_selector_y_net),
    .d0(ip_ap_value_mux_y_net),
    .d1(dac_value_mux_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(dac_enable_y_net)
  );
  sysgen_mux_6699c60d29 dac_value_mux (
    .clr(1'b0),
    .sel(out_switch_enable_y_net),
    .d0(out_switch_off_net),
    .d1(out_switch_on_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(dac_value_mux_y_net)
  );
  sysgen_mux_d4afbfae9c ip_ap_value_mux (
    .clr(1'b0),
    .sel(sw_switch_y_net),
    .d0(out_switch_off_net),
    .d1(out_switch_on_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(ip_ap_value_mux_y_net)
  );
  sysgen_inverter_d51a680162 inverter (
    .clr(1'b0),
    .ip(register5_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(inverter_op_net)
  );
  sysgen_mux_c8952da60a mux (
    .clr(1'b0),
    .sel(inverter_op_net),
    .d0(slice_y_net),
    .d1(reinterpret_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux_y_net)
  );
  fpga_kf1_xlregister #(
    .d_width(16),
    .init_value(16'b0000000000000000)
  )
  register (
    .en(1'b1),
    .rst(1'b0),
    .d(fixed_led_pattern_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register_q_net)
  );
  fpga_kf1_xlregister #(
    .d_width(2),
    .init_value(2'b00)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(ap_ip_switch_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register1_q_net_x9)
  );
  fpga_kf1_xlregister #(
    .d_width(32),
    .init_value(32'b00000000000000000000000000000000)
  )
  register10 (
    .en(1'b1),
    .rst(1'b0),
    .d(reg_rp_switch_tf_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register10_q_net)
  );
  fpga_kf1_xlregister #(
    .d_width(32),
    .init_value(32'b00000000000000000000000000000000)
  )
  register11 (
    .en(1'b1),
    .rst(1'b0),
    .d(reg_out_switch_t0_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register11_q_net)
  );
  fpga_kf1_xlregister #(
    .d_width(32),
    .init_value(32'b00000000000000000000000000000000)
  )
  register12 (
    .en(1'b1),
    .rst(1'b0),
    .d(reg_out_switch_tf_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register12_q_net)
  );
  fpga_kf1_xlregister #(
    .d_width(32),
    .init_value(32'b00000000000000000000000000000000)
  )
  register13 (
    .en(1'b1),
    .rst(1'b0),
    .d(reg_timer_period_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register13_q_net)
  );
  fpga_kf1_xlregister #(
    .d_width(32),
    .init_value(32'b00000000000000000000000000000000)
  )
  register14 (
    .en(1'b1),
    .rst(1'b0),
    .d(dma_trigger_time_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register14_q_net)
  );
  fpga_kf1_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register15 (
    .en(1'b1),
    .rst(1'b0),
    .d(ema_const_slow_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register15_q_net)
  );
  fpga_kf1_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register16 (
    .en(1'b1),
    .rst(1'b0),
    .d(x_ref_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register16_q_net)
  );
  fpga_kf1_xlregister #(
    .d_width(2),
    .init_value(2'b00)
  )
  register17 (
    .en(1'b1),
    .rst(1'b0),
    .d(fb_src_switch_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register17_q_net)
  );
  fpga_kf1_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register18 (
    .en(1'b1),
    .rst(1'b0),
    .d(barrier_c_idx_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register18_q_net)
  );
  fpga_kf1_xlregister #(
    .d_width(10),
    .init_value(10'b0000000000)
  )
  register19 (
    .en(1'b1),
    .rst(1'b0),
    .d(barrier_c_ofst_idx_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register19_q_net)
  );
  fpga_kf1_xlregister #(
    .d_width(2),
    .init_value(2'b00)
  )
  register2 (
    .en(1'b1),
    .rst(1'b0),
    .d(div_mux_selector_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register2_q_net_x1)
  );
  fpga_kf1_xlregister #(
    .d_width(10),
    .init_value(10'b0000000000)
  )
  register20 (
    .en(1'b1),
    .rst(1'b0),
    .d(barrier_ram_addr_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register20_q_net)
  );
  fpga_kf1_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register21 (
    .en(1'b1),
    .rst(1'b0),
    .d(barrier_ram_we_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register21_q_net)
  );
  fpga_kf1_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register22 (
    .en(1'b1),
    .rst(1'b0),
    .d(registers_wren_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register22_q_net)
  );
  fpga_kf1_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register3 (
    .en(1'b1),
    .rst(1'b0),
    .d(div_scale_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register3_q_net_x1)
  );
  fpga_kf1_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register4 (
    .en(1'b1),
    .rst(1'b0),
    .d(ema_const_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register4_q_net)
  );
  fpga_kf1_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register5 (
    .en(1'b1),
    .rst(1'b0),
    .d(disco_mode_enable_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register5_q_net)
  );
  fpga_kf1_xlregister #(
    .d_width(2),
    .init_value(2'b00)
  )
  register6 (
    .en(1'b1),
    .rst(1'b0),
    .d(sw_override_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register6_q_net)
  );
  fpga_kf1_xlregister #(
    .d_width(14),
    .init_value(14'b00000000000000)
  )
  register7 (
    .en(1'b1),
    .rst(1'b0),
    .d(adc_ch1_offst_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register7_q_net)
  );
  fpga_kf1_xlregister #(
    .d_width(14),
    .init_value(14'b00000000000000)
  )
  register8 (
    .en(1'b1),
    .rst(1'b0),
    .d(adc_ch2_offst_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register8_q_net)
  );
  fpga_kf1_xlregister #(
    .d_width(32),
    .init_value(32'b00000000000000000000000000000000)
  )
  register9 (
    .en(1'b1),
    .rst(1'b0),
    .d(reg_rp_switch_t0_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register9_q_net)
  );
  sysgen_reinterpret_989059ee92 reinterpret (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice1_y_net),
    .output_port(reinterpret_output_port_net)
  );
  fpga_kf1_xlslice #(
    .new_lsb(0),
    .new_msb(0),
    .x_width(2),
    .y_width(1)
  )
  sw_switch (
    .x(register1_q_net_x9),
    .y(sw_switch_y_net)
  );
  sysgen_mux_b34c65b900 sw_switch_mux (
    .clr(1'b0),
    .sel(switching_logic_selector_y_net),
    .d0(sw_switch_y_net),
    .d1(rp_switch_delay_match_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(sw_switch_mux_y_net)
  );
  fpga_kf1_xlslice #(
    .new_lsb(18),
    .new_msb(23),
    .x_width(24),
    .y_width(6)
  )
  slice (
    .x(counter_op_net),
    .y(slice_y_net)
  );
  fpga_kf1_xlslice #(
    .new_lsb(10),
    .new_msb(15),
    .x_width(16),
    .y_width(6)
  )
  slice1 (
    .x(register_q_net),
    .y(slice1_y_net)
  );
  sysgen_relational_1ca93e1976 dma_trigger_threshold (
    .clr(1'b0),
    .a(sec_counter_op_net),
    .b(register14_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(dma_trigger_threshold_op_net)
  );
  fpga_kf1_xldelay #(
    .latency(2),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  hw_switch_flag_delay_match (
    .en(1'b1),
    .rst(1'b0),
    .d(out_switch_enable_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(hw_switch_flag_delay_match_q_net)
  );
  sysgen_logical_6ff523a523 out_switch_enable (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(out_switch_t0_op_net),
    .d1(out_switch_tf_op_net),
    .y(out_switch_enable_y_net)
  );
  sysgen_relational_1ca93e1976 out_switch_t0 (
    .clr(1'b0),
    .a(sec_counter_op_net),
    .b(register11_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(out_switch_t0_op_net)
  );
  sysgen_relational_72511a64eb out_switch_tf (
    .clr(1'b0),
    .a(sec_counter_op_net),
    .b(register12_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(out_switch_tf_op_net)
  );
  sysgen_relational_cced38b5c3 period_reached_switch (
    .clr(1'b0),
    .a(sec_counter_op_net),
    .b(register13_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(period_reached_switch_op_net)
  );
  fpga_kf1_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  rp_switch_delay_match (
    .en(1'b1),
    .rst(1'b0),
    .d(rp_switch_enable_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(rp_switch_delay_match_q_net)
  );
  sysgen_logical_6ff523a523 rp_switch_enable (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(rp_switch_t0_op_net),
    .d1(rp_switch_tf_op_net),
    .y(rp_switch_enable_y_net)
  );
  sysgen_relational_1ca93e1976 rp_switch_t0 (
    .clr(1'b0),
    .a(sec_counter_op_net),
    .b(register9_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(rp_switch_t0_op_net)
  );
  sysgen_relational_72511a64eb rp_switch_tf (
    .clr(1'b0),
    .a(sec_counter_op_net),
    .b(register10_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(rp_switch_tf_op_net)
  );
  fpga_kf1_xlcounter_limit #(
    .cnt_15_0(31872),
    .cnt_31_16(19073),
    .cnt_47_32(0),
    .cnt_63_48(0),
    .core_name0("fpga_kf1_c_counter_binary_v12_0_i1"),
    .count_limited(1),
    .op_arith(`xlUnsigned),
    .op_width(32)
  )
  sec_counter (
    .en(1'b1),
    .clr(1'b0),
    .rst(period_reached_switch_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(sec_counter_op_net)
  );
  fpga_kf1_xlslice #(
    .new_lsb(1),
    .new_msb(1),
    .x_width(2),
    .y_width(1)
  )
  switching_logic_selector (
    .x(register1_q_net_x9),
    .y(switching_logic_selector_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/Vector Register
module fpga_kf1_vector_register_x0 (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  input [25-1:0] d_3,
  input [25-1:0] d_4,
  input clk_1_x0,
  input ce_1_x0,
  input clk_1,
  input ce_1,
  output [25-1:0] q_1,
  output [25-1:0] q_2,
  output [25-1:0] q_3,
  output [25-1:0] q_4
);
  wire clk_net_x0;
  wire clk_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] mux3_y_net;
  wire [25-1:0] register1_q_net;
  wire ce_net_x0;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] mux2_y_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] mux0_y_net;
  wire ce_net;
  assign q_1 = register0_q_net;
  assign q_2 = register1_q_net;
  assign q_3 = register2_q_net;
  assign q_4 = register3_q_net;
  assign mux0_y_net = d_1;
  assign mux1_y_net = d_2;
  assign mux2_y_net = d_3;
  assign mux3_y_net = d_4;
  assign clk_net_x0 = clk_1_x0;
  assign ce_net_x0 = ce_1_x0;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf1_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register0 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux0_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(clk_net_x0),
    .d_ce(ce_net_x0),
    .q(register0_q_net)
  );
  fpga_kf1_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux1_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(clk_net_x0),
    .d_ce(ce_net_x0),
    .q(register1_q_net)
  );
  fpga_kf1_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register2 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux2_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(clk_net_x0),
    .d_ce(ce_net_x0),
    .q(register2_q_net)
  );
  fpga_kf1_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register3 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux3_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(clk_net_x0),
    .d_ce(ce_net_x0),
    .q(register3_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/Vector Register1
module fpga_kf1_vector_register1_x0 (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  input [25-1:0] d_3,
  input [25-1:0] d_4,
  input clk_1_x0,
  input ce_1_x0,
  input clk_1,
  input ce_1,
  output [25-1:0] q_1,
  output [25-1:0] q_2,
  output [25-1:0] q_3,
  output [25-1:0] q_4
);
  wire [25-1:0] register1_q_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] register2_q_net;
  wire clk_net_x0;
  wire [25-1:0] mux3_y_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] mux2_y_net;
  wire clk_net;
  wire [25-1:0] mux0_y_net;
  wire ce_net_x0;
  wire ce_net;
  assign q_1 = register0_q_net;
  assign q_2 = register1_q_net;
  assign q_3 = register2_q_net;
  assign q_4 = register3_q_net;
  assign mux0_y_net = d_1;
  assign mux1_y_net = d_2;
  assign mux2_y_net = d_3;
  assign mux3_y_net = d_4;
  assign clk_net_x0 = clk_1_x0;
  assign ce_net_x0 = ce_1_x0;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf1_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register0 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux0_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(clk_net_x0),
    .d_ce(ce_net_x0),
    .q(register0_q_net)
  );
  fpga_kf1_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux1_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(clk_net_x0),
    .d_ce(ce_net_x0),
    .q(register1_q_net)
  );
  fpga_kf1_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register2 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux2_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(clk_net_x0),
    .d_ce(ce_net_x0),
    .q(register2_q_net)
  );
  fpga_kf1_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register3 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux3_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(clk_net_x0),
    .d_ce(ce_net_x0),
    .q(register3_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/Vector Register2
module fpga_kf1_vector_register2_x0 (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  input clk_1_x0,
  input ce_1_x0,
  input clk_1,
  input ce_1,
  output [25-1:0] q_1,
  output [25-1:0] q_2
);
  wire [25-1:0] register1_q_net;
  wire [25-1:0] mux1_y_net;
  wire clk_net_x0;
  wire ce_net_x0;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] mux0_y_net;
  wire ce_net;
  wire clk_net;
  assign q_1 = register0_q_net;
  assign q_2 = register1_q_net;
  assign mux0_y_net = d_1;
  assign mux1_y_net = d_2;
  assign clk_net_x0 = clk_1_x0;
  assign ce_net_x0 = ce_1_x0;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf1_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register0 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux0_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(clk_net_x0),
    .d_ce(ce_net_x0),
    .q(register0_q_net)
  );
  fpga_kf1_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux1_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(clk_net_x0),
    .d_ce(ce_net_x0),
    .q(register1_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/Vector Register3
module fpga_kf1_vector_register3_x0 (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  input clk_1_x0,
  input ce_1_x0,
  input clk_1,
  input ce_1,
  output [25-1:0] q_1,
  output [25-1:0] q_2
);
  wire [25-1:0] register0_q_net;
  wire ce_net;
  wire [25-1:0] mux1_y_net;
  wire ce_net_x0;
  wire clk_net;
  wire [25-1:0] register1_q_net;
  wire clk_net_x0;
  wire [25-1:0] mux0_y_net;
  assign q_1 = register0_q_net;
  assign q_2 = register1_q_net;
  assign mux0_y_net = d_1;
  assign mux1_y_net = d_2;
  assign clk_net_x0 = clk_1_x0;
  assign ce_net_x0 = ce_1_x0;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf1_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register0 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux0_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(clk_net_x0),
    .d_ce(ce_net_x0),
    .q(register0_q_net)
  );
  fpga_kf1_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux1_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(clk_net_x0),
    .d_ce(ce_net_x0),
    .q(register1_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/Vector Register4
module fpga_kf1_vector_register4_x0 (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  input clk_1_x0,
  input ce_1_x0,
  input clk_1,
  input ce_1,
  output [25-1:0] q_1,
  output [25-1:0] q_2
);
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] mux0_y_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] register0_q_net;
  wire clk_net_x0;
  wire clk_net;
  wire ce_net;
  wire ce_net_x0;
  assign q_1 = register0_q_net;
  assign q_2 = register1_q_net;
  assign mux0_y_net = d_1;
  assign mux1_y_net = d_2;
  assign clk_net_x0 = clk_1_x0;
  assign ce_net_x0 = ce_1_x0;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf1_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register0 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux0_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(clk_net_x0),
    .d_ce(ce_net_x0),
    .q(register0_q_net)
  );
  fpga_kf1_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux1_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(clk_net_x0),
    .d_ce(ce_net_x0),
    .q(register1_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/Vector Register5
module fpga_kf1_vector_register5_x0 (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  input clk_1_x0,
  input ce_1_x0,
  input clk_1,
  input ce_1,
  output [25-1:0] q_1,
  output [25-1:0] q_2
);
  wire ce_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] register1_q_net;
  wire clk_net_x0;
  wire [25-1:0] register0_q_net;
  wire ce_net_x0;
  wire [25-1:0] mux0_y_net;
  wire clk_net;
  assign q_1 = register0_q_net;
  assign q_2 = register1_q_net;
  assign mux0_y_net = d_1;
  assign mux1_y_net = d_2;
  assign clk_net_x0 = clk_1_x0;
  assign ce_net_x0 = ce_1_x0;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf1_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register0 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux0_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(clk_net_x0),
    .d_ce(ce_net_x0),
    .q(register0_q_net)
  );
  fpga_kf1_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux1_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(clk_net_x0),
    .d_ce(ce_net_x0),
    .q(register1_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/Vector Register6
module fpga_kf1_vector_register6_x0 (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  input clk_1_x0,
  input ce_1_x0,
  input clk_1,
  input ce_1,
  output [25-1:0] q_1,
  output [25-1:0] q_2
);
  wire [25-1:0] register0_q_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] mux0_y_net;
  wire [25-1:0] mux1_y_net;
  wire clk_net_x0;
  wire ce_net;
  wire ce_net_x0;
  wire clk_net;
  assign q_1 = register0_q_net;
  assign q_2 = register1_q_net;
  assign mux0_y_net = d_1;
  assign mux1_y_net = d_2;
  assign clk_net_x0 = clk_1_x0;
  assign ce_net_x0 = ce_1_x0;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf1_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register0 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux0_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(clk_net_x0),
    .d_ce(ce_net_x0),
    .q(register0_q_net)
  );
  fpga_kf1_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux1_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(clk_net_x0),
    .d_ce(ce_net_x0),
    .q(register1_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/Vector Register7
module fpga_kf1_vector_register7_x0 (
  input [18-1:0] d_1,
  input [18-1:0] d_2,
  input clk_1_x0,
  input ce_1_x0,
  input clk_1,
  input ce_1,
  output [18-1:0] q_1,
  output [18-1:0] q_2
);
  wire clk_net;
  wire [18-1:0] register1_q_net;
  wire [18-1:0] register0_q_net_x0;
  wire clk_net_x0;
  wire ce_net;
  wire [18-1:0] register0_q_net;
  wire [18-1:0] register1_q_net_x0;
  wire ce_net_x0;
  assign q_1 = register0_q_net;
  assign q_2 = register1_q_net;
  assign register0_q_net_x0 = d_1;
  assign register1_q_net_x0 = d_2;
  assign clk_net_x0 = clk_1_x0;
  assign ce_net_x0 = ce_1_x0;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf1_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000010110011001101)
  )
  register0 (
    .en(1'b1),
    .rst(1'b0),
    .d(register0_q_net_x0),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(clk_net_x0),
    .d_ce(ce_net_x0),
    .q(register0_q_net)
  );
  fpga_kf1_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b111101001100110011)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(register1_q_net_x0),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(clk_net_x0),
    .d_ce(ce_net_x0),
    .q(register1_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/Vector Register8
module fpga_kf1_vector_register8_x0 (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  input clk_1_x0,
  input ce_1_x0,
  input clk_1,
  input ce_1,
  output [25-1:0] q_1,
  output [25-1:0] q_2
);
  wire [25-1:0] register0_q_net;
  wire [25-1:0] register0_q_net_x0;
  wire [25-1:0] register1_q_net;
  wire clk_net_x0;
  wire ce_net;
  wire [25-1:0] register1_q_net_x0;
  wire clk_net;
  wire ce_net_x0;
  assign q_1 = register0_q_net;
  assign q_2 = register1_q_net;
  assign register0_q_net_x0 = d_1;
  assign register1_q_net_x0 = d_2;
  assign clk_net_x0 = clk_1_x0;
  assign ce_net_x0 = ce_1_x0;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf1_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register0 (
    .en(1'b1),
    .rst(1'b0),
    .d(register0_q_net_x0),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(clk_net_x0),
    .d_ce(ce_net_x0),
    .q(register0_q_net)
  );
  fpga_kf1_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(register1_q_net_x0),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(clk_net_x0),
    .d_ce(ce_net_x0),
    .q(register1_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1/Vector Register9
module fpga_kf1_vector_register9_x0 (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  input clk_1_x0,
  input ce_1_x0,
  input clk_1,
  input ce_1,
  output [25-1:0] q_1,
  output [25-1:0] q_2
);
  wire ce_net_x0;
  wire ce_net;
  wire clk_net_x0;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] mux0_y_net;
  wire clk_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] mux1_y_net;
  assign q_1 = register0_q_net;
  assign q_2 = register1_q_net;
  assign mux0_y_net = d_1;
  assign mux1_y_net = d_2;
  assign clk_net_x0 = clk_1_x0;
  assign ce_net_x0 = ce_1_x0;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf1_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register0 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux0_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(clk_net_x0),
    .d_ce(ce_net_x0),
    .q(register0_q_net)
  );
  fpga_kf1_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux1_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(clk_net_x0),
    .d_ce(ce_net_x0),
    .q(register1_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block single_axis_plant_ver_barrier/FPGA_KF1_struct
module fpga_kf1_struct (
  input [1-1:0] hw_pot_switch,
  input [14-1:0] power_monitor_in,
  input [14-1:0] x_in,
  input [1-1:0] registers_wren_in,
  input [14-1:0] adc_ch1_offst,
  input [14-1:0] adc_ch2_offst,
  input [2-1:0] ap_ip_switch_in,
  input [1-1:0] disco_mode_enable,
  input [16-1:0] fixed_led_pattern_in,
  input [25-1:0] barrier_c0_data_in,
  input [25-1:0] barrier_c1_data_in,
  input [25-1:0] barrier_c_idx_in,
  input [10-1:0] barrier_c_ofst_idx_in,
  input [10-1:0] barrier_ram_addr_in,
  input [1-1:0] barrier_ram_we_in,
  input [18-1:0] barrier_lb_in,
  input [18-1:0] barrier_ub_in,
  input [2-1:0] div_mux_selector,
  input [25-1:0] div_scale_in,
  input [32-1:0] dma_trigger_time,
  input [25-1:0] ema_const_in,
  input [25-1:0] ema_const_slow_in,
  input [2-1:0] fb_src_switch_in,
  input [14-1:0] out_switch_off,
  input [14-1:0] out_switch_on,
  input [32-1:0] reg_out_switch_t0,
  input [32-1:0] reg_out_switch_tf,
  input [32-1:0] reg_rp_switch_t0,
  input [32-1:0] reg_rp_switch_tf,
  input [32-1:0] reg_timer_period,
  input [2-1:0] sw_override_in,
  input [18-1:0] x_ref_in,
  input [25-1:0] gateway_in_f11,
  input [25-1:0] gateway_in_f12,
  input [25-1:0] gateway_in_f21,
  input [25-1:0] gateway_in_f22,
  input [25-1:0] gateway_in_f11_ip,
  input [25-1:0] gateway_in_f12_ip,
  input [25-1:0] gateway_in_f21_ip,
  input [25-1:0] gateway_in_f22_ip,
  input [25-1:0] gateway_in_l1,
  input [25-1:0] gateway_in_l2,
  input [25-1:0] gateway_in_k1,
  input [25-1:0] gateway_in_k2,
  input [25-1:0] gateway_in_l1_ip,
  input [25-1:0] gateway_in_l2_ip,
  input [25-1:0] gateway_in_k1_ip,
  input [25-1:0] gateway_in_k2_ip,
  input [25-1:0] gateway_in_b1_ip,
  input [25-1:0] gateway_in_b2_ip,
  input [25-1:0] gateway_in_b1,
  input [25-1:0] gateway_in_b2,
  input clk_1_x0,
  input ce_1_x0,
  input clk_4,
  input ce_4,
  input clk_1,
  input ce_1,
  output [14-1:0] dac_pulse_out,
  output [16-1:0] divisor_out,
  output [32-1:0] dma_out,
  output [14-1:0] gate_ch2_out,
  output [14-1:0] gate_fb_out,
  output [8-1:0] gate_leds_out,
  output [14-1:0] gate_x1_out,
  output [14-1:0] gate_x2_out,
  output [14-1:0] gate_x_ref_out,
  output [16-1:0] gate_y_corrected_out,
  output [1-1:0] dma_trigger_output
);
  wire [16-1:0] divider_out_mux_y_net;
  wire [14-1:0] register8_q_net;
  wire [14-1:0] adc_ch1_offst_net;
  wire [16-1:0] fixed_led_pattern_in_net;
  wire [14-1:0] convert6_dout_net;
  wire [1-1:0] registers_wren_in_net;
  wire [1-1:0] dma_trigger_threshold_op_net;
  wire [14-1:0] register3_q_net_x1;
  wire [25-1:0] barrier_c1_data_in_net;
  wire [14-1:0] convert8_dout_net;
  wire [18-1:0] barrier_lb_in_net;
  wire [14-1:0] convert7_dout_net;
  wire [25-1:0] barrier_c0_data_in_net;
  wire [25-1:0] div_scale_in_net;
  wire [1-1:0] barrier_ram_we_in_net;
  wire [10-1:0] barrier_c_ofst_idx_in_net;
  wire [25-1:0] ema_const_in_net;
  wire [25-1:0] barrier_c_idx_in_net;
  wire [14-1:0] adc_ch2_offst_net;
  wire [2-1:0] fb_src_switch_in_net;
  wire [32-1:0] concat_y_net;
  wire [14-1:0] register2_q_net_x1;
  wire [1-1:0] hw_pot_switch_net;
  wire [14-1:0] power_monitor_in_net;
  wire [1-1:0] disco_mode_enable_net;
  wire [10-1:0] barrier_ram_addr_in_net;
  wire [2-1:0] div_mux_selector_net;
  wire [18-1:0] barrier_ub_in_net;
  wire [2-1:0] ap_ip_switch_in_net;
  wire [14-1:0] x_in_net;
  wire [32-1:0] dma_trigger_time_net;
  wire [25-1:0] ema_const_slow_in_net;
  wire [16-1:0] sfix16_13_cast_dout_net;
  wire [8-1:0] concat1_y_net;
  wire [32-1:0] reg_out_switch_tf_net;
  wire [25-1:0] gateway_in_f21_ip_net;
  wire [25-1:0] gateway_in_l1_ip_net;
  wire [25-1:0] gateway_in_l1_net;
  wire [32-1:0] reg_timer_period_net;
  wire [25-1:0] gateway_in_f11_net;
  wire [25-1:0] gateway_in_l2_ip_net;
  wire [25-1:0] gateway_in_b2_ip_net;
  wire [25-1:0] gateway_in_b1_net;
  wire [18-1:0] x_ref_in_net;
  wire [25-1:0] gateway_in_f22_net;
  wire [25-1:0] gateway_in_f11_ip_net;
  wire [25-1:0] gateway_in_k2_net;
  wire [25-1:0] gateway_in_l2_net;
  wire [25-1:0] gateway_in_b1_ip_net;
  wire dest_clk_net;
  wire [2-1:0] sw_override_in_net;
  wire [32-1:0] reg_rp_switch_t0_net;
  wire [25-1:0] gateway_in_f12_ip_net;
  wire [25-1:0] gateway_in_f12_net;
  wire [14-1:0] out_switch_on_net;
  wire [32-1:0] reg_out_switch_t0_net;
  wire [25-1:0] gateway_in_f21_net;
  wire [25-1:0] gateway_in_f22_ip_net;
  wire [25-1:0] gateway_in_k2_ip_net;
  wire [32-1:0] reg_rp_switch_tf_net;
  wire [25-1:0] gateway_in_b2_net;
  wire clk_net_x0;
  wire [14-1:0] out_switch_off_net;
  wire ce_net_x0;
  wire [25-1:0] gateway_in_k1_ip_net;
  wire [25-1:0] gateway_in_k1_net;
  wire [14-1:0] register3_q_net;
  wire [14-1:0] register6_q_net;
  wire [25-1:0] register0_q_net_x8;
  wire [2-1:0] register16_q_net;
  wire [25-1:0] register0_q_net_x4;
  wire [25-1:0] register3_q_net_x3;
  wire [25-1:0] register1_q_net_x2;
  wire [25-1:0] register1_q_net_x10;
  wire [18-1:0] register1_q_net_x4;
  wire [25-1:0] mux0_y_net_x3;
  wire [25-1:0] mux0_y_net_x5;
  wire [25-1:0] mux0_y_net_x6;
  wire [25-1:0] register3_q_net_x0;
  wire [25-1:0] register4_q_net_x0;
  wire [2-1:0] register6_q_net_x0;
  wire [14-1:0] dac_enable_y_net;
  wire [1-1:0] register15_q_net;
  wire [6-1:0] mux_y_net;
  wire [25-1:0] register2_q_net_x3;
  wire [25-1:0] register1_q_net_x3;
  wire [6-1:0] register7_q_net;
  wire [25-1:0] register1_q_net_x11;
  wire [25-1:0] mux0_y_net_x2;
  wire [10-1:0] register14_q_net;
  wire [25-1:0] register1_q_net_x9;
  wire [25-1:0] mux0_y_net_x4;
  wire [18-1:0] register11_q_net;
  wire [25-1:0] register0_q_net_x5;
  wire [25-1:0] register12_q_net;
  wire [25-1:0] register0_q_net_x10;
  wire [10-1:0] register13_q_net;
  wire [25-1:0] register1_q_net_x8;
  wire [25-1:0] register1_q_net_x7;
  wire [25-1:0] mux0_y_net_x0;
  wire [25-1:0] register0_q_net_x6;
  wire [2-1:0] register2_q_net_x0;
  wire [14-1:0] register7_q_net_x0;
  wire [14-1:0] register8_q_net_x0;
  wire [1-1:0] hw_switch_flag_delay_match_q_net;
  wire [25-1:0] register15_q_net_x0;
  wire [25-1:0] register0_q_net_x2;
  wire [1-1:0] register_q_net;
  wire [25-1:0] register3_q_net_x2;
  wire [25-1:0] mux0_y_net;
  wire dest_ce_net;
  wire [25-1:0] register0_q_net_x1;
  wire [18-1:0] register0_q_net_x3;
  wire [2-1:0] register1_q_net;
  wire [25-1:0] register2_q_net;
  wire [1-1:0] register9_q_net;
  wire [25-1:0] register4_q_net;
  wire [2-1:0] register5_q_net;
  wire [25-1:0] register1_q_net_x6;
  wire [25-1:0] register2_q_net_x2;
  wire [25-1:0] register1_q_net_x5;
  wire [1-1:0] sw_switch_mux_y_net;
  wire ce_net;
  wire [25-1:0] mux0_y_net_x1;
  wire [25-1:0] register0_q_net_x9;
  wire clk_net;
  wire [25-1:0] register10_q_net;
  wire [25-1:0] register0_q_net_x7;
  wire [10-1:0] register19_q_net;
  wire [18-1:0] register16_q_net_x0;
  wire [25-1:0] mux1_y_net_x4;
  wire [25-1:0] register1_q_net_x0;
  wire [25-1:0] mux2_y_net_x0;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] mux3_y_net;
  wire [25-1:0] mux1_y_net_x3;
  wire [18-1:0] register1_q_net_x1;
  wire [25-1:0] mux1_y_net_x1;
  wire [25-1:0] register18_q_net;
  wire [2-1:0] register17_q_net;
  wire [25-1:0] mux2_y_net;
  wire [1-1:0] register21_q_net;
  wire [25-1:0] mux1_y_net_x5;
  wire [25-1:0] mux1_y_net_x0;
  wire [18-1:0] register0_q_net_x0;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] mux1_y_net_x6;
  wire [25-1:0] mux1_y_net_x2;
  wire [10-1:0] register20_q_net;
  wire [25-1:0] mux3_y_net_x0;
  assign dac_pulse_out = register8_q_net;
  assign divisor_out = divider_out_mux_y_net;
  assign dma_out = concat_y_net;
  assign gate_ch2_out = convert8_dout_net;
  assign gate_fb_out = convert6_dout_net;
  assign gate_leds_out = concat1_y_net;
  assign gate_x1_out = register2_q_net_x1;
  assign gate_x2_out = register3_q_net_x1;
  assign gate_x_ref_out = convert7_dout_net;
  assign gate_y_corrected_out = sfix16_13_cast_dout_net;
  assign hw_pot_switch_net = hw_pot_switch;
  assign power_monitor_in_net = power_monitor_in;
  assign x_in_net = x_in;
  assign registers_wren_in_net = registers_wren_in;
  assign adc_ch1_offst_net = adc_ch1_offst;
  assign adc_ch2_offst_net = adc_ch2_offst;
  assign ap_ip_switch_in_net = ap_ip_switch_in;
  assign dma_trigger_output = dma_trigger_threshold_op_net;
  assign disco_mode_enable_net = disco_mode_enable;
  assign fixed_led_pattern_in_net = fixed_led_pattern_in;
  assign barrier_c0_data_in_net = barrier_c0_data_in;
  assign barrier_c1_data_in_net = barrier_c1_data_in;
  assign barrier_c_idx_in_net = barrier_c_idx_in;
  assign barrier_c_ofst_idx_in_net = barrier_c_ofst_idx_in;
  assign barrier_ram_addr_in_net = barrier_ram_addr_in;
  assign barrier_ram_we_in_net = barrier_ram_we_in;
  assign barrier_lb_in_net = barrier_lb_in;
  assign barrier_ub_in_net = barrier_ub_in;
  assign div_mux_selector_net = div_mux_selector;
  assign div_scale_in_net = div_scale_in;
  assign dma_trigger_time_net = dma_trigger_time;
  assign ema_const_in_net = ema_const_in;
  assign ema_const_slow_in_net = ema_const_slow_in;
  assign fb_src_switch_in_net = fb_src_switch_in;
  assign out_switch_off_net = out_switch_off;
  assign out_switch_on_net = out_switch_on;
  assign reg_out_switch_t0_net = reg_out_switch_t0;
  assign reg_out_switch_tf_net = reg_out_switch_tf;
  assign reg_rp_switch_t0_net = reg_rp_switch_t0;
  assign reg_rp_switch_tf_net = reg_rp_switch_tf;
  assign reg_timer_period_net = reg_timer_period;
  assign sw_override_in_net = sw_override_in;
  assign x_ref_in_net = x_ref_in;
  assign gateway_in_f11_net = gateway_in_f11;
  assign gateway_in_f12_net = gateway_in_f12;
  assign gateway_in_f21_net = gateway_in_f21;
  assign gateway_in_f22_net = gateway_in_f22;
  assign gateway_in_f11_ip_net = gateway_in_f11_ip;
  assign gateway_in_f12_ip_net = gateway_in_f12_ip;
  assign gateway_in_f21_ip_net = gateway_in_f21_ip;
  assign gateway_in_f22_ip_net = gateway_in_f22_ip;
  assign gateway_in_l1_net = gateway_in_l1;
  assign gateway_in_l2_net = gateway_in_l2;
  assign gateway_in_k1_net = gateway_in_k1;
  assign gateway_in_k2_net = gateway_in_k2;
  assign gateway_in_l1_ip_net = gateway_in_l1_ip;
  assign gateway_in_l2_ip_net = gateway_in_l2_ip;
  assign gateway_in_k1_ip_net = gateway_in_k1_ip;
  assign gateway_in_k2_ip_net = gateway_in_k2_ip;
  assign gateway_in_b1_ip_net = gateway_in_b1_ip;
  assign gateway_in_b2_ip_net = gateway_in_b2_ip;
  assign gateway_in_b1_net = gateway_in_b1;
  assign gateway_in_b2_net = gateway_in_b2;
  assign clk_net_x0 = clk_1_x0;
  assign ce_net_x0 = ce_1_x0;
  assign dest_clk_net = clk_4;
  assign dest_ce_net = ce_4;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf1_adc_clock_domain_wrapper adc_clock_domain_wrapper (
    .sw_in(register_q_net),
    .fmat_in_1(register0_q_net_x10),
    .lmat_in_1(register0_q_net_x7),
    .kmat_in_1(register0_q_net_x8),
    .bmat_in_1(register0_q_net_x1),
    .fmat_ip_in_1(register0_q_net_x9),
    .lmat_ip_in_1(register0_q_net_x6),
    .kmat_ip_in_1(register0_q_net_x5),
    .bmat_ip_in_1(register0_q_net_x4),
    .divider_mux_sel_in(register1_q_net),
    .div_scale_const_in(register2_q_net),
    .ema_const_in(register4_q_net),
    .hw_switch_override(register5_q_net),
    .adc_ch1_offst(register3_q_net),
    .adc_ch2_offst(register6_q_net),
    .pot_switch_hw(register8_q_net),
    .pot_switch_hw_flag(register9_q_net),
    .leds_in(register7_q_net),
    .ema_const_fast_in(register10_q_net),
    .x_ref_in(register11_q_net),
    .fb_src_switch(register16_q_net),
    .barrier_ub_lb_in_1(register0_q_net_x3),
    .barrier_c_idx_in(register12_q_net),
    .barrier_c_ofst_idx_in(register13_q_net),
    .barrier_ram_addr_in(register14_q_net),
    .barrier_ram_data_in_1(register0_q_net_x2),
    .barrier_ram_we_in(register15_q_net),
    .fmat_in_2(register1_q_net_x11),
    .fmat_in_3(register2_q_net_x3),
    .fmat_in_4(register3_q_net_x3),
    .lmat_in_2(register1_q_net_x8),
    .kmat_in_2(register1_q_net_x9),
    .bmat_in_2(register1_q_net_x2),
    .fmat_ip_in_2(register1_q_net_x10),
    .fmat_ip_in_3(register2_q_net_x2),
    .fmat_ip_in_4(register3_q_net_x2),
    .lmat_ip_in_2(register1_q_net_x7),
    .kmat_ip_in_2(register1_q_net_x6),
    .bmat_ip_in_2(register1_q_net_x5),
    .barrier_ub_lb_in_2(register1_q_net_x4),
    .barrier_ram_data_in_2(register1_q_net_x3),
    .hw_pot_switch(hw_pot_switch_net),
    .power_monitor_in(power_monitor_in_net),
    .x_in(x_in_net),
    .clk_1(clk_net_x0),
    .ce_1(ce_net_x0),
    .clk_4(dest_clk_net),
    .ce_4(dest_ce_net),
    .divisor_out(divider_out_mux_y_net),
    .dma_out(concat_y_net),
    .gate_ch2_out(convert8_dout_net),
    .gate_fb_out(convert6_dout_net),
    .gate_leds_out(concat1_y_net),
    .gate_x1_out(register2_q_net_x1),
    .gate_x2_out(register3_q_net_x1),
    .gate_x_ref_out(convert7_dout_net),
    .gate_y_corrected_out(sfix16_13_cast_dout_net)
  );
  fpga_kf1_axi_clock_domain_wrapper axi_clock_domain_wrapper (
    .registers_wren_in(registers_wren_in_net),
    .adc_ch1_offst(adc_ch1_offst_net),
    .adc_ch2_offst(adc_ch2_offst_net),
    .ap_ip_switch_in(ap_ip_switch_in_net),
    .disco_mode_enable(disco_mode_enable_net),
    .fixed_led_pattern_in(fixed_led_pattern_in_net),
    .barrier_c0_data_in(barrier_c0_data_in_net),
    .barrier_c1_data_in(barrier_c1_data_in_net),
    .barrier_c_idx_in(barrier_c_idx_in_net),
    .barrier_c_ofst_idx_in(barrier_c_ofst_idx_in_net),
    .barrier_ram_addr_in(barrier_ram_addr_in_net),
    .barrier_ram_we_in(barrier_ram_we_in_net),
    .barrier_lb_in(barrier_lb_in_net),
    .barrier_ub_in(barrier_ub_in_net),
    .div_mux_selector(div_mux_selector_net),
    .div_scale_in(div_scale_in_net),
    .dma_trigger_time(dma_trigger_time_net),
    .ema_const_in(ema_const_in_net),
    .ema_const_slow_in(ema_const_slow_in_net),
    .fb_src_switch_in(fb_src_switch_in_net),
    .out_switch_off(out_switch_off_net),
    .out_switch_on(out_switch_on_net),
    .reg_out_switch_t0(reg_out_switch_t0_net),
    .reg_out_switch_tf(reg_out_switch_tf_net),
    .reg_rp_switch_t0(reg_rp_switch_t0_net),
    .reg_rp_switch_tf(reg_rp_switch_tf_net),
    .reg_timer_period(reg_timer_period_net),
    .sw_override_in(sw_override_in_net),
    .x_ref_in(x_ref_in_net),
    .gateway_in_f11(gateway_in_f11_net),
    .gateway_in_f12(gateway_in_f12_net),
    .gateway_in_f21(gateway_in_f21_net),
    .gateway_in_f22(gateway_in_f22_net),
    .gateway_in_f11_ip(gateway_in_f11_ip_net),
    .gateway_in_f12_ip(gateway_in_f12_ip_net),
    .gateway_in_f21_ip(gateway_in_f21_ip_net),
    .gateway_in_f22_ip(gateway_in_f22_ip_net),
    .gateway_in_l1(gateway_in_l1_net),
    .gateway_in_l2(gateway_in_l2_net),
    .gateway_in_k1(gateway_in_k1_net),
    .gateway_in_k2(gateway_in_k2_net),
    .gateway_in_l1_ip(gateway_in_l1_ip_net),
    .gateway_in_l2_ip(gateway_in_l2_ip_net),
    .gateway_in_k1_ip(gateway_in_k1_ip_net),
    .gateway_in_k2_ip(gateway_in_k2_ip_net),
    .gateway_in_b1_ip(gateway_in_b1_ip_net),
    .gateway_in_b2_ip(gateway_in_b2_ip_net),
    .gateway_in_b1(gateway_in_b1_net),
    .gateway_in_b2(gateway_in_b2_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .ap_ip_switch_out(sw_switch_mux_y_net),
    .f_reg_out_1(mux0_y_net),
    .l_reg_out_1(mux0_y_net_x0),
    .k_reg_out_1(mux0_y_net_x1),
    .b_reg_out_1(mux0_y_net_x2),
    .f_ip_reg_out_1(mux0_y_net_x3),
    .l_ip_reg_out_1(mux0_y_net_x4),
    .k_ip_reg_out_1(mux0_y_net_x5),
    .b_ip_reg_out_1(mux0_y_net_x6),
    .leds_cross_out(mux_y_net),
    .div_mux_reg_out(register2_q_net_x0),
    .div_scale_reg_out(register3_q_net_x0),
    .ema_const_reg_out(register4_q_net_x0),
    .switch_override_reg_out(register6_q_net_x0),
    .adc_offset_1(register7_q_net_x0),
    .adc_offset_2(register8_q_net_x0),
    .hw_switch_output(dac_enable_y_net),
    .hw_switch_flag(hw_switch_flag_delay_match_q_net),
    .ema_const_slow_reg_out(register15_q_net_x0),
    .x_ref_out(register16_q_net_x0),
    .fb_src_switch_out(register17_q_net),
    .barrier_ub_lb_out_1(register0_q_net_x0),
    .barrier_c_idx_out(register18_q_net),
    .barrier_c_ofst_idx_out(register19_q_net),
    .barrier_ram_addr_out(register20_q_net),
    .barrier_ram_data_out_1(register0_q_net),
    .barrier_ram_we_out(register21_q_net),
    .f_reg_out_2(mux1_y_net),
    .f_reg_out_3(mux2_y_net),
    .f_reg_out_4(mux3_y_net),
    .l_reg_out_2(mux1_y_net_x0),
    .k_reg_out_2(mux1_y_net_x1),
    .b_reg_out_2(mux1_y_net_x2),
    .f_ip_reg_out_2(mux1_y_net_x3),
    .f_ip_reg_out_3(mux2_y_net_x0),
    .f_ip_reg_out_4(mux3_y_net_x0),
    .l_ip_reg_out_2(mux1_y_net_x4),
    .k_ip_reg_out_2(mux1_y_net_x5),
    .b_ip_reg_out_2(mux1_y_net_x6),
    .barrier_ub_lb_out_2(register1_q_net_x1),
    .barrier_ram_data_out_2(register1_q_net_x0),
    .dma_trigger_output(dma_trigger_threshold_op_net)
  );
  fpga_kf1_vector_register_x0 vector_register (
    .d_1(mux0_y_net),
    .d_2(mux1_y_net),
    .d_3(mux2_y_net),
    .d_4(mux3_y_net),
    .clk_1_x0(clk_net_x0),
    .ce_1_x0(ce_net_x0),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .q_1(register0_q_net_x10),
    .q_2(register1_q_net_x11),
    .q_3(register2_q_net_x3),
    .q_4(register3_q_net_x3)
  );
  fpga_kf1_vector_register1_x0 vector_register1 (
    .d_1(mux0_y_net_x3),
    .d_2(mux1_y_net_x3),
    .d_3(mux2_y_net_x0),
    .d_4(mux3_y_net_x0),
    .clk_1_x0(clk_net_x0),
    .ce_1_x0(ce_net_x0),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .q_1(register0_q_net_x9),
    .q_2(register1_q_net_x10),
    .q_3(register2_q_net_x2),
    .q_4(register3_q_net_x2)
  );
  fpga_kf1_vector_register2_x0 vector_register2 (
    .d_1(mux0_y_net_x1),
    .d_2(mux1_y_net_x1),
    .clk_1_x0(clk_net_x0),
    .ce_1_x0(ce_net_x0),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .q_1(register0_q_net_x8),
    .q_2(register1_q_net_x9)
  );
  fpga_kf1_vector_register3_x0 vector_register3 (
    .d_1(mux0_y_net_x0),
    .d_2(mux1_y_net_x0),
    .clk_1_x0(clk_net_x0),
    .ce_1_x0(ce_net_x0),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .q_1(register0_q_net_x7),
    .q_2(register1_q_net_x8)
  );
  fpga_kf1_vector_register4_x0 vector_register4 (
    .d_1(mux0_y_net_x4),
    .d_2(mux1_y_net_x4),
    .clk_1_x0(clk_net_x0),
    .ce_1_x0(ce_net_x0),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .q_1(register0_q_net_x6),
    .q_2(register1_q_net_x7)
  );
  fpga_kf1_vector_register5_x0 vector_register5 (
    .d_1(mux0_y_net_x5),
    .d_2(mux1_y_net_x5),
    .clk_1_x0(clk_net_x0),
    .ce_1_x0(ce_net_x0),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .q_1(register0_q_net_x5),
    .q_2(register1_q_net_x6)
  );
  fpga_kf1_vector_register6_x0 vector_register6 (
    .d_1(mux0_y_net_x6),
    .d_2(mux1_y_net_x6),
    .clk_1_x0(clk_net_x0),
    .ce_1_x0(ce_net_x0),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .q_1(register0_q_net_x4),
    .q_2(register1_q_net_x5)
  );
  fpga_kf1_vector_register7_x0 vector_register7 (
    .d_1(register0_q_net_x0),
    .d_2(register1_q_net_x1),
    .clk_1_x0(clk_net_x0),
    .ce_1_x0(ce_net_x0),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .q_1(register0_q_net_x3),
    .q_2(register1_q_net_x4)
  );
  fpga_kf1_vector_register8_x0 vector_register8 (
    .d_1(register0_q_net),
    .d_2(register1_q_net_x0),
    .clk_1_x0(clk_net_x0),
    .ce_1_x0(ce_net_x0),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .q_1(register0_q_net_x2),
    .q_2(register1_q_net_x3)
  );
  fpga_kf1_vector_register9_x0 vector_register9 (
    .d_1(mux0_y_net_x2),
    .d_2(mux1_y_net_x2),
    .clk_1_x0(clk_net_x0),
    .ce_1_x0(ce_net_x0),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .q_1(register0_q_net_x1),
    .q_2(register1_q_net_x2)
  );
  fpga_kf1_xlAsynRegister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register (
    .en(1'b1),
    .rst(1'b0),
    .d(sw_switch_mux_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(clk_net_x0),
    .d_ce(ce_net_x0),
    .q(register_q_net)
  );
  fpga_kf1_xlAsynRegister #(
    .d_width(2),
    .init_value(2'b00)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(register2_q_net_x0),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(clk_net_x0),
    .d_ce(ce_net_x0),
    .q(register1_q_net)
  );
  fpga_kf1_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register10 (
    .en(1'b1),
    .rst(1'b0),
    .d(register15_q_net_x0),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(clk_net_x0),
    .d_ce(ce_net_x0),
    .q(register10_q_net)
  );
  fpga_kf1_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register11 (
    .en(1'b1),
    .rst(1'b0),
    .d(register16_q_net_x0),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(clk_net_x0),
    .d_ce(ce_net_x0),
    .q(register11_q_net)
  );
  fpga_kf1_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register12 (
    .en(1'b1),
    .rst(1'b0),
    .d(register18_q_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(clk_net_x0),
    .d_ce(ce_net_x0),
    .q(register12_q_net)
  );
  fpga_kf1_xlAsynRegister #(
    .d_width(10),
    .init_value(10'b0000000000)
  )
  register13 (
    .en(1'b1),
    .rst(1'b0),
    .d(register19_q_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(clk_net_x0),
    .d_ce(ce_net_x0),
    .q(register13_q_net)
  );
  fpga_kf1_xlAsynRegister #(
    .d_width(10),
    .init_value(10'b0000000000)
  )
  register14 (
    .en(1'b1),
    .rst(1'b0),
    .d(register20_q_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(clk_net_x0),
    .d_ce(ce_net_x0),
    .q(register14_q_net)
  );
  fpga_kf1_xlAsynRegister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register15 (
    .en(1'b1),
    .rst(1'b0),
    .d(register21_q_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(clk_net_x0),
    .d_ce(ce_net_x0),
    .q(register15_q_net)
  );
  fpga_kf1_xlAsynRegister #(
    .d_width(2),
    .init_value(2'b00)
  )
  register16 (
    .en(1'b1),
    .rst(1'b0),
    .d(register17_q_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(clk_net_x0),
    .d_ce(ce_net_x0),
    .q(register16_q_net)
  );
  fpga_kf1_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register2 (
    .en(1'b1),
    .rst(1'b0),
    .d(register3_q_net_x0),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(clk_net_x0),
    .d_ce(ce_net_x0),
    .q(register2_q_net)
  );
  fpga_kf1_xlAsynRegister #(
    .d_width(14),
    .init_value(14'b00000000000000)
  )
  register3 (
    .en(1'b1),
    .rst(1'b0),
    .d(register7_q_net_x0),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(clk_net_x0),
    .d_ce(ce_net_x0),
    .q(register3_q_net)
  );
  fpga_kf1_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register4 (
    .en(1'b1),
    .rst(1'b0),
    .d(register4_q_net_x0),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(clk_net_x0),
    .d_ce(ce_net_x0),
    .q(register4_q_net)
  );
  fpga_kf1_xlAsynRegister #(
    .d_width(2),
    .init_value(2'b00)
  )
  register5 (
    .en(1'b1),
    .rst(1'b0),
    .d(register6_q_net_x0),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(clk_net_x0),
    .d_ce(ce_net_x0),
    .q(register5_q_net)
  );
  fpga_kf1_xlAsynRegister #(
    .d_width(14),
    .init_value(14'b00000000000000)
  )
  register6 (
    .en(1'b1),
    .rst(1'b0),
    .d(register8_q_net_x0),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(clk_net_x0),
    .d_ce(ce_net_x0),
    .q(register6_q_net)
  );
  fpga_kf1_xlAsynRegister #(
    .d_width(6),
    .init_value(6'b000000)
  )
  register7 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(clk_net_x0),
    .d_ce(ce_net_x0),
    .q(register7_q_net)
  );
  fpga_kf1_xlAsynRegister #(
    .d_width(14),
    .init_value(14'b00000000000000)
  )
  register8 (
    .en(1'b1),
    .rst(1'b0),
    .d(dac_enable_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(clk_net_x0),
    .d_ce(ce_net_x0),
    .q(register8_q_net)
  );
  fpga_kf1_xlAsynRegister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register9 (
    .en(1'b1),
    .rst(1'b0),
    .d(hw_switch_flag_delay_match_q_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(clk_net_x0),
    .d_ce(ce_net_x0),
    .q(register9_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block 
module fpga_kf1_default_clock_driver (
  input adc_clock_domain_wrapper_sysclk,
  input adc_clock_domain_wrapper_sysce,
  input adc_clock_domain_wrapper_sysclr,
  input axi_clock_domain_wrapper_sysclk,
  input axi_clock_domain_wrapper_sysce,
  input axi_clock_domain_wrapper_sysclr,
  output adc_clock_domain_wrapper_clk1,
  output adc_clock_domain_wrapper_ce1,
  output adc_clock_domain_wrapper_clk4,
  output adc_clock_domain_wrapper_ce4,
  output axi_clock_domain_wrapper_clk1,
  output axi_clock_domain_wrapper_ce1
);
  xlclockdriver #(
    .period(1),
    .log_2_period(1)
  )
  clockdriver_x1 (
    .sysclk(adc_clock_domain_wrapper_sysclk),
    .sysce(adc_clock_domain_wrapper_sysce),
    .sysclr(adc_clock_domain_wrapper_sysclr),
    .clk(adc_clock_domain_wrapper_clk1),
    .ce(adc_clock_domain_wrapper_ce1)
  );
  xlclockdriver #(
    .period(4),
    .log_2_period(3)
  )
  clockdriver_x0 (
    .sysclk(adc_clock_domain_wrapper_sysclk),
    .sysce(adc_clock_domain_wrapper_sysce),
    .sysclr(adc_clock_domain_wrapper_sysclr),
    .clk(adc_clock_domain_wrapper_clk4),
    .ce(adc_clock_domain_wrapper_ce4)
  );
  xlclockdriver #(
    .period(1),
    .log_2_period(1)
  )
  clockdriver (
    .sysclk(axi_clock_domain_wrapper_sysclk),
    .sysce(axi_clock_domain_wrapper_sysce),
    .sysclr(axi_clock_domain_wrapper_sysclr),
    .clk(axi_clock_domain_wrapper_clk1),
    .ce(axi_clock_domain_wrapper_ce1)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block 
(* core_generation_info = "fpga_kf1,sysgen_core_2020_2,{,compilation=IP Catalog,block_icon_display=Default,family=zynq,part=xc7z020,speed=-1,package=clg400,synthesis_language=verilog,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=-10,system_simulink_period=-1,waveform_viewer=0,axilite_interface=1,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=0.00828068,addsub=16,concat=2,constant=8,convert=18,counter=2,delay=26,dpram=2,dsamp=31,expr=1,inv=2,logical=2,mult=21,mux=40,reciprocal=1,register=96,reinterpret=7,relational=8,shift=1,slice=4,usamp=3,}" *)
module fpga_kf1 (
  input [1-1:0] hw_pot_switch,
  input [14-1:0] power_monitor_in,
  input [14-1:0] x_in,
  input adc_clock_domain_wrapper_clk,
  input axi_clock_domain_wrapper_clk,
  input axi_clock_domain_wrapper_aresetn,
  input [9-1:0] axi_clock_domain_wrapper_cfg_in_s_axi_awaddr,
  input axi_clock_domain_wrapper_cfg_in_s_axi_awvalid,
  input [32-1:0] axi_clock_domain_wrapper_cfg_in_s_axi_wdata,
  input [4-1:0] axi_clock_domain_wrapper_cfg_in_s_axi_wstrb,
  input axi_clock_domain_wrapper_cfg_in_s_axi_wvalid,
  input axi_clock_domain_wrapper_cfg_in_s_axi_bready,
  input [9-1:0] axi_clock_domain_wrapper_cfg_in_s_axi_araddr,
  input axi_clock_domain_wrapper_cfg_in_s_axi_arvalid,
  input axi_clock_domain_wrapper_cfg_in_s_axi_rready,
  output [14-1:0] dac_pulse_out,
  output [16-1:0] divisor_out,
  output [32-1:0] dma_out,
  output [14-1:0] gate_ch2_out,
  output [14-1:0] gate_fb_out,
  output [8-1:0] gate_leds_out,
  output [14-1:0] gate_x1_out,
  output [14-1:0] gate_x2_out,
  output [14-1:0] gate_x_ref_out,
  output [16-1:0] gate_y_corrected_out,
  output [1-1:0] dma_trigger_output,
  output axi_clock_domain_wrapper_cfg_in_s_axi_awready,
  output axi_clock_domain_wrapper_cfg_in_s_axi_wready,
  output [2-1:0] axi_clock_domain_wrapper_cfg_in_s_axi_bresp,
  output axi_clock_domain_wrapper_cfg_in_s_axi_bvalid,
  output axi_clock_domain_wrapper_cfg_in_s_axi_arready,
  output [32-1:0] axi_clock_domain_wrapper_cfg_in_s_axi_rdata,
  output [2-1:0] axi_clock_domain_wrapper_cfg_in_s_axi_rresp,
  output axi_clock_domain_wrapper_cfg_in_s_axi_rvalid
);
  wire [25-1:0] barrier_c1_data_in;
  wire [25-1:0] barrier_c_idx_in;
  wire [2-1:0] div_mux_selector;
  wire [25-1:0] ema_const_in;
  wire [25-1:0] ema_const_slow_in;
  wire [14-1:0] adc_ch2_offst;
  wire [25-1:0] div_scale_in;
  wire [14-1:0] adc_ch1_offst;
  wire [1-1:0] registers_wren_in;
  wire [16-1:0] fixed_led_pattern_in;
  wire [25-1:0] barrier_c0_data_in;
  wire [2-1:0] ap_ip_switch_in;
  wire [10-1:0] barrier_ram_addr_in;
  wire [1-1:0] barrier_ram_we_in;
  wire [10-1:0] barrier_c_ofst_idx_in;
  wire [18-1:0] barrier_lb_in;
  wire [18-1:0] barrier_ub_in;
  wire [1-1:0] disco_mode_enable;
  wire [32-1:0] dma_trigger_time;
  wire clk_1_net_x0;
  wire [32-1:0] reg_timer_period;
  wire [2-1:0] sw_override_in;
  wire [14-1:0] out_switch_on;
  wire [25-1:0] gateway_in_f22;
  wire [25-1:0] gateway_in_k2;
  wire clk_4_net;
  wire [25-1:0] gateway_in_l1_ip;
  wire [25-1:0] gateway_in_f21;
  wire [32-1:0] reg_rp_switch_tf;
  wire [25-1:0] gateway_in_f11_ip;
  wire [25-1:0] gateway_in_l1;
  wire [25-1:0] gateway_in_f12;
  wire [25-1:0] gateway_in_k2_ip;
  wire [25-1:0] gateway_in_f22_ip;
  wire [25-1:0] gateway_in_b1;
  wire ce_4_net;
  wire [32-1:0] reg_out_switch_t0;
  wire [25-1:0] gateway_in_l2_ip;
  wire ce_1_net_x0;
  wire clk_1_net;
  wire [25-1:0] gateway_in_b1_ip;
  wire [25-1:0] gateway_in_f11;
  wire ce_1_net;
  wire [14-1:0] out_switch_off;
  wire [25-1:0] gateway_in_f12_ip;
  wire [32-1:0] reg_rp_switch_t0;
  wire [25-1:0] gateway_in_k1;
  wire [2-1:0] fb_src_switch_in;
  wire [25-1:0] gateway_in_b2_ip;
  wire [18-1:0] x_ref_in;
  wire [32-1:0] reg_out_switch_tf;
  wire [25-1:0] gateway_in_b2;
  wire [25-1:0] gateway_in_k1_ip;
  wire [25-1:0] gateway_in_l2;
  wire [25-1:0] gateway_in_f21_ip;
  wire axi_clock_domain_wrapper_clk_net;
  axi_clock_domain_wrapper_cfg_in_axi_lite_interface axi_clock_domain_wrapper_cfg_in_axi_lite_interface (
    .axi_clock_domain_wrapper_cfg_in_s_axi_awaddr(axi_clock_domain_wrapper_cfg_in_s_axi_awaddr),
    .axi_clock_domain_wrapper_cfg_in_s_axi_awvalid(axi_clock_domain_wrapper_cfg_in_s_axi_awvalid),
    .axi_clock_domain_wrapper_cfg_in_s_axi_wdata(axi_clock_domain_wrapper_cfg_in_s_axi_wdata),
    .axi_clock_domain_wrapper_cfg_in_s_axi_wstrb(axi_clock_domain_wrapper_cfg_in_s_axi_wstrb),
    .axi_clock_domain_wrapper_cfg_in_s_axi_wvalid(axi_clock_domain_wrapper_cfg_in_s_axi_wvalid),
    .axi_clock_domain_wrapper_cfg_in_s_axi_bready(axi_clock_domain_wrapper_cfg_in_s_axi_bready),
    .axi_clock_domain_wrapper_cfg_in_s_axi_araddr(axi_clock_domain_wrapper_cfg_in_s_axi_araddr),
    .axi_clock_domain_wrapper_cfg_in_s_axi_arvalid(axi_clock_domain_wrapper_cfg_in_s_axi_arvalid),
    .axi_clock_domain_wrapper_cfg_in_s_axi_rready(axi_clock_domain_wrapper_cfg_in_s_axi_rready),
    .axi_clock_domain_wrapper_cfg_in_aresetn(axi_clock_domain_wrapper_aresetn),
    .axi_clock_domain_wrapper_cfg_in_aclk(axi_clock_domain_wrapper_clk),
    .gateway_in_b2(gateway_in_b2),
    .gateway_in_b1(gateway_in_b1),
    .gateway_in_b2_ip(gateway_in_b2_ip),
    .gateway_in_b1_ip(gateway_in_b1_ip),
    .gateway_in_k2_ip(gateway_in_k2_ip),
    .gateway_in_k1_ip(gateway_in_k1_ip),
    .gateway_in_l2_ip(gateway_in_l2_ip),
    .gateway_in_l1_ip(gateway_in_l1_ip),
    .gateway_in_k2(gateway_in_k2),
    .gateway_in_k1(gateway_in_k1),
    .gateway_in_l2(gateway_in_l2),
    .gateway_in_l1(gateway_in_l1),
    .gateway_in_f22_ip(gateway_in_f22_ip),
    .gateway_in_f21_ip(gateway_in_f21_ip),
    .gateway_in_f12_ip(gateway_in_f12_ip),
    .gateway_in_f11_ip(gateway_in_f11_ip),
    .gateway_in_f22(gateway_in_f22),
    .gateway_in_f21(gateway_in_f21),
    .gateway_in_f12(gateway_in_f12),
    .gateway_in_f11(gateway_in_f11),
    .x_ref_in(x_ref_in),
    .sw_override_in(sw_override_in),
    .reg_timer_period(reg_timer_period),
    .reg_rp_switch_tf(reg_rp_switch_tf),
    .reg_rp_switch_t0(reg_rp_switch_t0),
    .reg_out_switch_tf(reg_out_switch_tf),
    .reg_out_switch_t0(reg_out_switch_t0),
    .out_switch_on(out_switch_on),
    .out_switch_off(out_switch_off),
    .fb_src_switch_in(fb_src_switch_in),
    .ema_const_slow_in(ema_const_slow_in),
    .ema_const_in(ema_const_in),
    .dma_trigger_time(dma_trigger_time),
    .div_scale_in(div_scale_in),
    .div_mux_selector(div_mux_selector),
    .barrier_ub_in(barrier_ub_in),
    .barrier_lb_in(barrier_lb_in),
    .barrier_ram_we_in(barrier_ram_we_in),
    .barrier_ram_addr_in(barrier_ram_addr_in),
    .barrier_c_ofst_idx_in(barrier_c_ofst_idx_in),
    .barrier_c_idx_in(barrier_c_idx_in),
    .barrier_c1_data_in(barrier_c1_data_in),
    .barrier_c0_data_in(barrier_c0_data_in),
    .fixed_led_pattern_in(fixed_led_pattern_in),
    .disco_mode_enable(disco_mode_enable),
    .ap_ip_switch_in(ap_ip_switch_in),
    .adc_ch2_offst(adc_ch2_offst),
    .adc_ch1_offst(adc_ch1_offst),
    .registers_wren_in(registers_wren_in),
    .axi_clock_domain_wrapper_cfg_in_s_axi_awready(axi_clock_domain_wrapper_cfg_in_s_axi_awready),
    .axi_clock_domain_wrapper_cfg_in_s_axi_wready(axi_clock_domain_wrapper_cfg_in_s_axi_wready),
    .axi_clock_domain_wrapper_cfg_in_s_axi_bresp(axi_clock_domain_wrapper_cfg_in_s_axi_bresp),
    .axi_clock_domain_wrapper_cfg_in_s_axi_bvalid(axi_clock_domain_wrapper_cfg_in_s_axi_bvalid),
    .axi_clock_domain_wrapper_cfg_in_s_axi_arready(axi_clock_domain_wrapper_cfg_in_s_axi_arready),
    .axi_clock_domain_wrapper_cfg_in_s_axi_rdata(axi_clock_domain_wrapper_cfg_in_s_axi_rdata),
    .axi_clock_domain_wrapper_cfg_in_s_axi_rresp(axi_clock_domain_wrapper_cfg_in_s_axi_rresp),
    .axi_clock_domain_wrapper_cfg_in_s_axi_rvalid(axi_clock_domain_wrapper_cfg_in_s_axi_rvalid),
    .axi_clock_domain_wrapper_clk(axi_clock_domain_wrapper_clk_net)
  );
  fpga_kf1_default_clock_driver fpga_kf1_default_clock_driver (
    .adc_clock_domain_wrapper_sysclk(adc_clock_domain_wrapper_clk),
    .adc_clock_domain_wrapper_sysce(1'b1),
    .adc_clock_domain_wrapper_sysclr(1'b0),
    .axi_clock_domain_wrapper_sysclk(axi_clock_domain_wrapper_clk_net),
    .axi_clock_domain_wrapper_sysce(1'b1),
    .axi_clock_domain_wrapper_sysclr(1'b0),
    .adc_clock_domain_wrapper_clk1(clk_1_net_x0),
    .adc_clock_domain_wrapper_ce1(ce_1_net_x0),
    .adc_clock_domain_wrapper_clk4(clk_4_net),
    .adc_clock_domain_wrapper_ce4(ce_4_net),
    .axi_clock_domain_wrapper_clk1(clk_1_net),
    .axi_clock_domain_wrapper_ce1(ce_1_net)
  );
  fpga_kf1_struct fpga_kf1_struct (
    .hw_pot_switch(hw_pot_switch),
    .power_monitor_in(power_monitor_in),
    .x_in(x_in),
    .registers_wren_in(registers_wren_in),
    .adc_ch1_offst(adc_ch1_offst),
    .adc_ch2_offst(adc_ch2_offst),
    .ap_ip_switch_in(ap_ip_switch_in),
    .disco_mode_enable(disco_mode_enable),
    .fixed_led_pattern_in(fixed_led_pattern_in),
    .barrier_c0_data_in(barrier_c0_data_in),
    .barrier_c1_data_in(barrier_c1_data_in),
    .barrier_c_idx_in(barrier_c_idx_in),
    .barrier_c_ofst_idx_in(barrier_c_ofst_idx_in),
    .barrier_ram_addr_in(barrier_ram_addr_in),
    .barrier_ram_we_in(barrier_ram_we_in),
    .barrier_lb_in(barrier_lb_in),
    .barrier_ub_in(barrier_ub_in),
    .div_mux_selector(div_mux_selector),
    .div_scale_in(div_scale_in),
    .dma_trigger_time(dma_trigger_time),
    .ema_const_in(ema_const_in),
    .ema_const_slow_in(ema_const_slow_in),
    .fb_src_switch_in(fb_src_switch_in),
    .out_switch_off(out_switch_off),
    .out_switch_on(out_switch_on),
    .reg_out_switch_t0(reg_out_switch_t0),
    .reg_out_switch_tf(reg_out_switch_tf),
    .reg_rp_switch_t0(reg_rp_switch_t0),
    .reg_rp_switch_tf(reg_rp_switch_tf),
    .reg_timer_period(reg_timer_period),
    .sw_override_in(sw_override_in),
    .x_ref_in(x_ref_in),
    .gateway_in_f11(gateway_in_f11),
    .gateway_in_f12(gateway_in_f12),
    .gateway_in_f21(gateway_in_f21),
    .gateway_in_f22(gateway_in_f22),
    .gateway_in_f11_ip(gateway_in_f11_ip),
    .gateway_in_f12_ip(gateway_in_f12_ip),
    .gateway_in_f21_ip(gateway_in_f21_ip),
    .gateway_in_f22_ip(gateway_in_f22_ip),
    .gateway_in_l1(gateway_in_l1),
    .gateway_in_l2(gateway_in_l2),
    .gateway_in_k1(gateway_in_k1),
    .gateway_in_k2(gateway_in_k2),
    .gateway_in_l1_ip(gateway_in_l1_ip),
    .gateway_in_l2_ip(gateway_in_l2_ip),
    .gateway_in_k1_ip(gateway_in_k1_ip),
    .gateway_in_k2_ip(gateway_in_k2_ip),
    .gateway_in_b1_ip(gateway_in_b1_ip),
    .gateway_in_b2_ip(gateway_in_b2_ip),
    .gateway_in_b1(gateway_in_b1),
    .gateway_in_b2(gateway_in_b2),
    .clk_1_x0(clk_1_net_x0),
    .ce_1_x0(ce_1_net_x0),
    .clk_4(clk_4_net),
    .ce_4(ce_4_net),
    .clk_1(clk_1_net),
    .ce_1(ce_1_net),
    .dac_pulse_out(dac_pulse_out),
    .divisor_out(divisor_out),
    .dma_out(dma_out),
    .gate_ch2_out(gate_ch2_out),
    .gate_fb_out(gate_fb_out),
    .gate_leds_out(gate_leds_out),
    .gate_x1_out(gate_x1_out),
    .gate_x2_out(gate_x2_out),
    .gate_x_ref_out(gate_x_ref_out),
    .gate_y_corrected_out(gate_y_corrected_out),
    .dma_trigger_output(dma_trigger_output)
  );
endmodule
