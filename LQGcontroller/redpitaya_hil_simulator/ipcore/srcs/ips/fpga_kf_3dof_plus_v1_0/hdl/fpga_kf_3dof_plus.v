`ifndef xlConvPkgIncluded
`include "conv_pkg.v"
`endif

`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Random_number_generator
module fpga_kf_3dof_plus_random_number_generator (
  input [14-1:0] noise_gain_in,
  input clk_64,
  input ce_64,
  output [14-1:0] noise_out
);
  wire clk_net;
  wire [14-1:0] register_q_net;
  wire ce_net;
  wire [14-1:0] down_sample9_q_net;
  wire [14-1:0] addsub1_s_net;
  wire [14-1:0] lfsr_dout_net;
  wire [14-1:0] lfsr1_dout_net;
  wire [14-1:0] addsub6_s_net;
  wire [14-1:0] lfsr6_dout_net;
  wire [14-1:0] addsub7_s_net;
  wire [14-1:0] addsub4_s_net;
  wire [14-1:0] addsub3_s_net;
  wire [14-1:0] lfsr7_dout_net;
  wire [14-1:0] lfsr3_dout_net;
  wire [14-1:0] addsub2_s_net;
  wire [14-1:0] lfsr5_dout_net;
  wire [14-1:0] addsub5_s_net;
  wire [14-1:0] lfsr4_dout_net;
  wire [14-1:0] lfsr2_dout_net;
  wire [14-1:0] mult_p_net;
  assign noise_out = register_q_net;
  assign down_sample9_q_net = noise_gain_in;
  assign clk_net = clk_64;
  assign ce_net = ce_64;
  fpga_kf_3dof_plus_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(13),
    .a_width(14),
    .b_arith(`xlSigned),
    .b_bin_pt(13),
    .b_width(14),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(15),
    .core_name0("fpga_kf_3dof_plus_c_addsub_v12_0_i3"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(15),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(13),
    .s_width(14)
  )
  addsub1 (
    .clr(1'b0),
    .en(1'b1),
    .a(lfsr_dout_net),
    .b(lfsr1_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub1_s_net)
  );
  fpga_kf_3dof_plus_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(13),
    .a_width(14),
    .b_arith(`xlSigned),
    .b_bin_pt(13),
    .b_width(14),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(15),
    .core_name0("fpga_kf_3dof_plus_c_addsub_v12_0_i3"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(15),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(13),
    .s_width(14)
  )
  addsub2 (
    .clr(1'b0),
    .en(1'b1),
    .a(lfsr2_dout_net),
    .b(lfsr3_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub2_s_net)
  );
  fpga_kf_3dof_plus_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(13),
    .a_width(14),
    .b_arith(`xlSigned),
    .b_bin_pt(13),
    .b_width(14),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(15),
    .core_name0("fpga_kf_3dof_plus_c_addsub_v12_0_i3"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(15),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(13),
    .s_width(14)
  )
  addsub3 (
    .clr(1'b0),
    .en(1'b1),
    .a(lfsr4_dout_net),
    .b(lfsr5_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub3_s_net)
  );
  fpga_kf_3dof_plus_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(13),
    .a_width(14),
    .b_arith(`xlSigned),
    .b_bin_pt(13),
    .b_width(14),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(15),
    .core_name0("fpga_kf_3dof_plus_c_addsub_v12_0_i3"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(15),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(13),
    .s_width(14)
  )
  addsub4 (
    .clr(1'b0),
    .en(1'b1),
    .a(lfsr6_dout_net),
    .b(lfsr7_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub4_s_net)
  );
  fpga_kf_3dof_plus_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(13),
    .a_width(14),
    .b_arith(`xlSigned),
    .b_bin_pt(13),
    .b_width(14),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(15),
    .core_name0("fpga_kf_3dof_plus_c_addsub_v12_0_i3"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(15),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(13),
    .s_width(14)
  )
  addsub5 (
    .clr(1'b0),
    .en(1'b1),
    .a(addsub1_s_net),
    .b(addsub2_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub5_s_net)
  );
  fpga_kf_3dof_plus_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(13),
    .a_width(14),
    .b_arith(`xlSigned),
    .b_bin_pt(13),
    .b_width(14),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(15),
    .core_name0("fpga_kf_3dof_plus_c_addsub_v12_0_i3"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(15),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(13),
    .s_width(14)
  )
  addsub6 (
    .clr(1'b0),
    .en(1'b1),
    .a(addsub3_s_net),
    .b(addsub4_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub6_s_net)
  );
  fpga_kf_3dof_plus_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(13),
    .a_width(14),
    .b_arith(`xlSigned),
    .b_bin_pt(13),
    .b_width(14),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(15),
    .core_name0("fpga_kf_3dof_plus_c_addsub_v12_0_i3"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(15),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(13),
    .s_width(14)
  )
  addsub7 (
    .clr(1'b0),
    .en(1'b1),
    .a(addsub5_s_net),
    .b(addsub6_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub7_s_net)
  );
  sysgen_lfsr_9ee43b41d4 lfsr (
    .clr(1'b0),
    .clk(clk_net),
    .ce(ce_net),
    .dout(lfsr_dout_net)
  );
  sysgen_lfsr_e4e17c84e4 lfsr1 (
    .clr(1'b0),
    .clk(clk_net),
    .ce(ce_net),
    .dout(lfsr1_dout_net)
  );
  sysgen_lfsr_01ee79268c lfsr2 (
    .clr(1'b0),
    .clk(clk_net),
    .ce(ce_net),
    .dout(lfsr2_dout_net)
  );
  sysgen_lfsr_a18cacaa21 lfsr3 (
    .clr(1'b0),
    .clk(clk_net),
    .ce(ce_net),
    .dout(lfsr3_dout_net)
  );
  sysgen_lfsr_3f8253c19b lfsr4 (
    .clr(1'b0),
    .clk(clk_net),
    .ce(ce_net),
    .dout(lfsr4_dout_net)
  );
  sysgen_lfsr_096bcc3437 lfsr5 (
    .clr(1'b0),
    .clk(clk_net),
    .ce(ce_net),
    .dout(lfsr5_dout_net)
  );
  sysgen_lfsr_beddef31c1 lfsr6 (
    .clr(1'b0),
    .clk(clk_net),
    .ce(ce_net),
    .dout(lfsr6_dout_net)
  );
  sysgen_lfsr_fa53e811e3 lfsr7 (
    .clr(1'b0),
    .clk(clk_net),
    .ce(ce_net),
    .dout(lfsr7_dout_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(13),
    .a_width(14),
    .b_arith(`xlSigned),
    .b_bin_pt(13),
    .b_width(14),
    .c_a_type(0),
    .c_a_width(14),
    .c_b_type(0),
    .c_b_width(14),
    .c_baat(14),
    .c_output_width(28),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i4"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(13),
    .p_width(14),
    .quantization(1)
  )
  mult (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(addsub7_s_net),
    .b(down_sample9_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_p_net)
  );
  fpga_kf_3dof_plus_xlregister #(
    .d_width(14),
    .init_value(14'b00000000000000)
  )
  register (
    .en(1'b1),
    .rst(1'b0),
    .d(mult_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Sum_seven_elements
module fpga_kf_3dof_plus_sum_seven_elements (
  input [55-1:0] in1_1,
  input [55-1:0] in1_2,
  input [55-1:0] in1_3,
  input [55-1:0] in1_4,
  input [55-1:0] in1_5,
  input [55-1:0] in1_6,
  input [55-1:0] in1_7,
  input clk_4,
  input ce_4,
  output [57-1:0] out1
);
  wire [55-1:0] mult3_p_net;
  wire [55-1:0] mult2_p_net;
  wire [57-1:0] addsub4_s_net;
  wire [57-1:0] addsub2_s_net;
  wire [57-1:0] addsub6_s_net;
  wire [55-1:0] mult4_p_net;
  wire [57-1:0] addsub3_s_net;
  wire [55-1:0] mult5_p_net;
  wire [55-1:0] mult6_p_net;
  wire [55-1:0] mult1_p_net;
  wire [57-1:0] addsub1_s_net;
  wire [57-1:0] addsub5_s_net;
  wire ce_net;
  wire [55-1:0] mult0_p_net;
  wire clk_net;
  assign out1 = addsub6_s_net;
  assign mult0_p_net = in1_1;
  assign mult1_p_net = in1_2;
  assign mult2_p_net = in1_3;
  assign mult3_p_net = in1_4;
  assign mult4_p_net = in1_5;
  assign mult5_p_net = in1_6;
  assign mult6_p_net = in1_7;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_addsub_5685292545 addsub1 (
    .clr(1'b0),
    .a(mult2_p_net),
    .b(mult3_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub1_s_net)
  );
  sysgen_addsub_5685292545 addsub2 (
    .clr(1'b0),
    .a(mult0_p_net),
    .b(mult1_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub2_s_net)
  );
  sysgen_addsub_0974a21f60 addsub3 (
    .clr(1'b0),
    .a(addsub2_s_net),
    .b(addsub1_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub3_s_net)
  );
  sysgen_addsub_4678755333 addsub4 (
    .clr(1'b0),
    .a(addsub5_s_net),
    .b(mult6_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub4_s_net)
  );
  sysgen_addsub_5685292545 addsub5 (
    .clr(1'b0),
    .a(mult4_p_net),
    .b(mult5_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub5_s_net)
  );
  sysgen_addsub_0974a21f60 addsub6 (
    .clr(1'b0),
    .a(addsub3_s_net),
    .b(addsub4_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub6_s_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Sum_seven_elements1
module fpga_kf_3dof_plus_sum_seven_elements1 (
  input [55-1:0] in1_1,
  input [55-1:0] in1_2,
  input [55-1:0] in1_3,
  input [55-1:0] in1_4,
  input [55-1:0] in1_5,
  input [55-1:0] in1_6,
  input [55-1:0] in1_7,
  input clk_4,
  input ce_4,
  output [57-1:0] out1
);
  wire [57-1:0] addsub6_s_net;
  wire ce_net;
  wire [57-1:0] addsub5_s_net;
  wire [55-1:0] mult5_p_net;
  wire [55-1:0] mult4_p_net;
  wire [55-1:0] mult3_p_net;
  wire [55-1:0] mult0_p_net;
  wire [55-1:0] mult6_p_net;
  wire clk_net;
  wire [55-1:0] mult2_p_net;
  wire [55-1:0] mult1_p_net;
  wire [57-1:0] addsub2_s_net;
  wire [57-1:0] addsub1_s_net;
  wire [57-1:0] addsub4_s_net;
  wire [57-1:0] addsub3_s_net;
  assign out1 = addsub6_s_net;
  assign mult0_p_net = in1_1;
  assign mult1_p_net = in1_2;
  assign mult2_p_net = in1_3;
  assign mult3_p_net = in1_4;
  assign mult4_p_net = in1_5;
  assign mult5_p_net = in1_6;
  assign mult6_p_net = in1_7;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_addsub_5685292545 addsub1 (
    .clr(1'b0),
    .a(mult2_p_net),
    .b(mult3_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub1_s_net)
  );
  sysgen_addsub_5685292545 addsub2 (
    .clr(1'b0),
    .a(mult0_p_net),
    .b(mult1_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub2_s_net)
  );
  sysgen_addsub_0974a21f60 addsub3 (
    .clr(1'b0),
    .a(addsub2_s_net),
    .b(addsub1_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub3_s_net)
  );
  sysgen_addsub_4678755333 addsub4 (
    .clr(1'b0),
    .a(addsub5_s_net),
    .b(mult6_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub4_s_net)
  );
  sysgen_addsub_5685292545 addsub5 (
    .clr(1'b0),
    .a(mult4_p_net),
    .b(mult5_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub5_s_net)
  );
  sysgen_addsub_0974a21f60 addsub6 (
    .clr(1'b0),
    .a(addsub3_s_net),
    .b(addsub4_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub6_s_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Sum_seven_elements2
module fpga_kf_3dof_plus_sum_seven_elements2 (
  input [55-1:0] in1_1,
  input [55-1:0] in1_2,
  input [55-1:0] in1_3,
  input [55-1:0] in1_4,
  input [55-1:0] in1_5,
  input [55-1:0] in1_6,
  input [55-1:0] in1_7,
  input clk_4,
  input ce_4,
  output [57-1:0] out1
);
  wire [57-1:0] addsub6_s_net;
  wire [55-1:0] mult0_p_net;
  wire [55-1:0] mult2_p_net;
  wire clk_net;
  wire [57-1:0] addsub4_s_net;
  wire [55-1:0] mult3_p_net;
  wire [55-1:0] mult4_p_net;
  wire [57-1:0] addsub3_s_net;
  wire [57-1:0] addsub5_s_net;
  wire [55-1:0] mult1_p_net;
  wire ce_net;
  wire [55-1:0] mult6_p_net;
  wire [57-1:0] addsub2_s_net;
  wire [57-1:0] addsub1_s_net;
  wire [55-1:0] mult5_p_net;
  assign out1 = addsub6_s_net;
  assign mult0_p_net = in1_1;
  assign mult1_p_net = in1_2;
  assign mult2_p_net = in1_3;
  assign mult3_p_net = in1_4;
  assign mult4_p_net = in1_5;
  assign mult5_p_net = in1_6;
  assign mult6_p_net = in1_7;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_addsub_5685292545 addsub1 (
    .clr(1'b0),
    .a(mult2_p_net),
    .b(mult3_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub1_s_net)
  );
  sysgen_addsub_5685292545 addsub2 (
    .clr(1'b0),
    .a(mult0_p_net),
    .b(mult1_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub2_s_net)
  );
  sysgen_addsub_0974a21f60 addsub3 (
    .clr(1'b0),
    .a(addsub2_s_net),
    .b(addsub1_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub3_s_net)
  );
  sysgen_addsub_4678755333 addsub4 (
    .clr(1'b0),
    .a(addsub5_s_net),
    .b(mult6_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub4_s_net)
  );
  sysgen_addsub_5685292545 addsub5 (
    .clr(1'b0),
    .a(mult4_p_net),
    .b(mult5_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub5_s_net)
  );
  sysgen_addsub_0974a21f60 addsub6 (
    .clr(1'b0),
    .a(addsub3_s_net),
    .b(addsub4_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub6_s_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Sum_seven_elements3
module fpga_kf_3dof_plus_sum_seven_elements3 (
  input [55-1:0] in1_1,
  input [55-1:0] in1_2,
  input [55-1:0] in1_3,
  input [55-1:0] in1_4,
  input [55-1:0] in1_5,
  input [55-1:0] in1_6,
  input [55-1:0] in1_7,
  input clk_4,
  input ce_4,
  output [57-1:0] out1
);
  wire [57-1:0] addsub6_s_net;
  wire [55-1:0] mult1_p_net;
  wire [55-1:0] mult0_p_net;
  wire [55-1:0] mult3_p_net;
  wire [55-1:0] mult4_p_net;
  wire [57-1:0] addsub2_s_net;
  wire [55-1:0] mult6_p_net;
  wire [57-1:0] addsub3_s_net;
  wire clk_net;
  wire [55-1:0] mult2_p_net;
  wire [57-1:0] addsub1_s_net;
  wire [57-1:0] addsub4_s_net;
  wire ce_net;
  wire [55-1:0] mult5_p_net;
  wire [57-1:0] addsub5_s_net;
  assign out1 = addsub6_s_net;
  assign mult0_p_net = in1_1;
  assign mult1_p_net = in1_2;
  assign mult2_p_net = in1_3;
  assign mult3_p_net = in1_4;
  assign mult4_p_net = in1_5;
  assign mult5_p_net = in1_6;
  assign mult6_p_net = in1_7;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_addsub_5685292545 addsub1 (
    .clr(1'b0),
    .a(mult2_p_net),
    .b(mult3_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub1_s_net)
  );
  sysgen_addsub_5685292545 addsub2 (
    .clr(1'b0),
    .a(mult0_p_net),
    .b(mult1_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub2_s_net)
  );
  sysgen_addsub_0974a21f60 addsub3 (
    .clr(1'b0),
    .a(addsub2_s_net),
    .b(addsub1_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub3_s_net)
  );
  sysgen_addsub_4678755333 addsub4 (
    .clr(1'b0),
    .a(addsub5_s_net),
    .b(mult6_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub4_s_net)
  );
  sysgen_addsub_5685292545 addsub5 (
    .clr(1'b0),
    .a(mult4_p_net),
    .b(mult5_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub5_s_net)
  );
  sysgen_addsub_0974a21f60 addsub6 (
    .clr(1'b0),
    .a(addsub3_s_net),
    .b(addsub4_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub6_s_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Sum_seven_elements4
module fpga_kf_3dof_plus_sum_seven_elements4 (
  input [55-1:0] in1_1,
  input [55-1:0] in1_2,
  input [55-1:0] in1_3,
  input [55-1:0] in1_4,
  input [55-1:0] in1_5,
  input [55-1:0] in1_6,
  input [55-1:0] in1_7,
  input clk_4,
  input ce_4,
  output [57-1:0] out1
);
  wire [55-1:0] mult2_p_net;
  wire clk_net;
  wire [55-1:0] mult1_p_net;
  wire [55-1:0] mult0_p_net;
  wire [57-1:0] addsub1_s_net;
  wire [55-1:0] mult6_p_net;
  wire [57-1:0] addsub2_s_net;
  wire [57-1:0] addsub3_s_net;
  wire [57-1:0] addsub4_s_net;
  wire [55-1:0] mult4_p_net;
  wire [57-1:0] addsub6_s_net;
  wire [55-1:0] mult3_p_net;
  wire ce_net;
  wire [57-1:0] addsub5_s_net;
  wire [55-1:0] mult5_p_net;
  assign out1 = addsub6_s_net;
  assign mult0_p_net = in1_1;
  assign mult1_p_net = in1_2;
  assign mult2_p_net = in1_3;
  assign mult3_p_net = in1_4;
  assign mult4_p_net = in1_5;
  assign mult5_p_net = in1_6;
  assign mult6_p_net = in1_7;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_addsub_5685292545 addsub1 (
    .clr(1'b0),
    .a(mult2_p_net),
    .b(mult3_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub1_s_net)
  );
  sysgen_addsub_5685292545 addsub2 (
    .clr(1'b0),
    .a(mult0_p_net),
    .b(mult1_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub2_s_net)
  );
  sysgen_addsub_0974a21f60 addsub3 (
    .clr(1'b0),
    .a(addsub2_s_net),
    .b(addsub1_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub3_s_net)
  );
  sysgen_addsub_4678755333 addsub4 (
    .clr(1'b0),
    .a(addsub5_s_net),
    .b(mult6_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub4_s_net)
  );
  sysgen_addsub_5685292545 addsub5 (
    .clr(1'b0),
    .a(mult4_p_net),
    .b(mult5_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub5_s_net)
  );
  sysgen_addsub_0974a21f60 addsub6 (
    .clr(1'b0),
    .a(addsub3_s_net),
    .b(addsub4_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub6_s_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Sum_seven_elements5
module fpga_kf_3dof_plus_sum_seven_elements5 (
  input [55-1:0] in1_1,
  input [55-1:0] in1_2,
  input [55-1:0] in1_3,
  input [55-1:0] in1_4,
  input [55-1:0] in1_5,
  input [55-1:0] in1_6,
  input [55-1:0] in1_7,
  input clk_4,
  input ce_4,
  output [57-1:0] out1
);
  wire [57-1:0] addsub3_s_net;
  wire [55-1:0] mult3_p_net;
  wire [57-1:0] addsub2_s_net;
  wire [57-1:0] addsub6_s_net;
  wire clk_net;
  wire [55-1:0] mult6_p_net;
  wire [57-1:0] addsub4_s_net;
  wire [55-1:0] mult0_p_net;
  wire [57-1:0] addsub5_s_net;
  wire ce_net;
  wire [57-1:0] addsub1_s_net;
  wire [55-1:0] mult4_p_net;
  wire [55-1:0] mult5_p_net;
  wire [55-1:0] mult2_p_net;
  wire [55-1:0] mult1_p_net;
  assign out1 = addsub6_s_net;
  assign mult0_p_net = in1_1;
  assign mult1_p_net = in1_2;
  assign mult2_p_net = in1_3;
  assign mult3_p_net = in1_4;
  assign mult4_p_net = in1_5;
  assign mult5_p_net = in1_6;
  assign mult6_p_net = in1_7;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_addsub_5685292545 addsub1 (
    .clr(1'b0),
    .a(mult2_p_net),
    .b(mult3_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub1_s_net)
  );
  sysgen_addsub_5685292545 addsub2 (
    .clr(1'b0),
    .a(mult0_p_net),
    .b(mult1_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub2_s_net)
  );
  sysgen_addsub_0974a21f60 addsub3 (
    .clr(1'b0),
    .a(addsub2_s_net),
    .b(addsub1_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub3_s_net)
  );
  sysgen_addsub_4678755333 addsub4 (
    .clr(1'b0),
    .a(addsub5_s_net),
    .b(mult6_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub4_s_net)
  );
  sysgen_addsub_5685292545 addsub5 (
    .clr(1'b0),
    .a(mult4_p_net),
    .b(mult5_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub5_s_net)
  );
  sysgen_addsub_0974a21f60 addsub6 (
    .clr(1'b0),
    .a(addsub3_s_net),
    .b(addsub4_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub6_s_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Sum_seven_elements6
module fpga_kf_3dof_plus_sum_seven_elements6 (
  input [55-1:0] in1_1,
  input [55-1:0] in1_2,
  input [55-1:0] in1_3,
  input [55-1:0] in1_4,
  input [55-1:0] in1_5,
  input [55-1:0] in1_6,
  input [55-1:0] in1_7,
  input clk_4,
  input ce_4,
  output [57-1:0] out1
);
  wire [57-1:0] addsub6_s_net;
  wire [55-1:0] mult4_p_net;
  wire [55-1:0] mult5_p_net;
  wire [57-1:0] addsub4_s_net;
  wire [57-1:0] addsub5_s_net;
  wire [55-1:0] mult3_p_net;
  wire [55-1:0] mult6_p_net;
  wire [57-1:0] addsub1_s_net;
  wire [57-1:0] addsub2_s_net;
  wire clk_net;
  wire ce_net;
  wire [55-1:0] mult1_p_net;
  wire [55-1:0] mult2_p_net;
  wire [55-1:0] mult0_p_net;
  wire [57-1:0] addsub3_s_net;
  assign out1 = addsub6_s_net;
  assign mult0_p_net = in1_1;
  assign mult1_p_net = in1_2;
  assign mult2_p_net = in1_3;
  assign mult3_p_net = in1_4;
  assign mult4_p_net = in1_5;
  assign mult5_p_net = in1_6;
  assign mult6_p_net = in1_7;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_addsub_5685292545 addsub1 (
    .clr(1'b0),
    .a(mult2_p_net),
    .b(mult3_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub1_s_net)
  );
  sysgen_addsub_5685292545 addsub2 (
    .clr(1'b0),
    .a(mult0_p_net),
    .b(mult1_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub2_s_net)
  );
  sysgen_addsub_0974a21f60 addsub3 (
    .clr(1'b0),
    .a(addsub2_s_net),
    .b(addsub1_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub3_s_net)
  );
  sysgen_addsub_4678755333 addsub4 (
    .clr(1'b0),
    .a(addsub5_s_net),
    .b(mult6_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub4_s_net)
  );
  sysgen_addsub_5685292545 addsub5 (
    .clr(1'b0),
    .a(mult4_p_net),
    .b(mult5_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub5_s_net)
  );
  sysgen_addsub_0974a21f60 addsub6 (
    .clr(1'b0),
    .a(addsub3_s_net),
    .b(addsub4_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub6_s_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Sum_seven_elements7
module fpga_kf_3dof_plus_sum_seven_elements7 (
  input [55-1:0] in1_1,
  input [55-1:0] in1_2,
  input [55-1:0] in1_3,
  input [55-1:0] in1_4,
  input [55-1:0] in1_5,
  input [55-1:0] in1_6,
  input [55-1:0] in1_7,
  input clk_4,
  input ce_4,
  output [57-1:0] out1
);
  wire [57-1:0] addsub6_s_net;
  wire [55-1:0] mult0_p_net;
  wire [55-1:0] mult2_p_net;
  wire [55-1:0] mult1_p_net;
  wire [55-1:0] mult5_p_net;
  wire ce_net;
  wire [57-1:0] addsub5_s_net;
  wire [57-1:0] addsub4_s_net;
  wire clk_net;
  wire [55-1:0] mult6_p_net;
  wire [57-1:0] addsub1_s_net;
  wire [57-1:0] addsub3_s_net;
  wire [55-1:0] mult4_p_net;
  wire [57-1:0] addsub2_s_net;
  wire [55-1:0] mult3_p_net;
  assign out1 = addsub6_s_net;
  assign mult0_p_net = in1_1;
  assign mult1_p_net = in1_2;
  assign mult2_p_net = in1_3;
  assign mult3_p_net = in1_4;
  assign mult4_p_net = in1_5;
  assign mult5_p_net = in1_6;
  assign mult6_p_net = in1_7;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_addsub_5685292545 addsub1 (
    .clr(1'b0),
    .a(mult2_p_net),
    .b(mult3_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub1_s_net)
  );
  sysgen_addsub_5685292545 addsub2 (
    .clr(1'b0),
    .a(mult0_p_net),
    .b(mult1_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub2_s_net)
  );
  sysgen_addsub_0974a21f60 addsub3 (
    .clr(1'b0),
    .a(addsub2_s_net),
    .b(addsub1_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub3_s_net)
  );
  sysgen_addsub_4678755333 addsub4 (
    .clr(1'b0),
    .a(addsub5_s_net),
    .b(mult6_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub4_s_net)
  );
  sysgen_addsub_5685292545 addsub5 (
    .clr(1'b0),
    .a(mult4_p_net),
    .b(mult5_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub5_s_net)
  );
  sysgen_addsub_0974a21f60 addsub6 (
    .clr(1'b0),
    .a(addsub3_s_net),
    .b(addsub4_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub6_s_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Sum_seven_elements8
module fpga_kf_3dof_plus_sum_seven_elements8 (
  input [55-1:0] in1_1,
  input [55-1:0] in1_2,
  input [55-1:0] in1_3,
  input [55-1:0] in1_4,
  input [55-1:0] in1_5,
  input [55-1:0] in1_6,
  input [55-1:0] in1_7,
  input clk_4,
  input ce_4,
  output [57-1:0] out1
);
  wire [55-1:0] mult0_p_net;
  wire clk_net;
  wire [57-1:0] addsub3_s_net;
  wire [55-1:0] mult1_p_net;
  wire [55-1:0] mult6_p_net;
  wire [57-1:0] addsub2_s_net;
  wire [57-1:0] addsub4_s_net;
  wire [55-1:0] mult5_p_net;
  wire [55-1:0] mult4_p_net;
  wire [57-1:0] addsub5_s_net;
  wire [55-1:0] mult2_p_net;
  wire ce_net;
  wire [57-1:0] addsub1_s_net;
  wire [55-1:0] mult3_p_net;
  wire [57-1:0] addsub6_s_net;
  assign out1 = addsub6_s_net;
  assign mult0_p_net = in1_1;
  assign mult1_p_net = in1_2;
  assign mult2_p_net = in1_3;
  assign mult3_p_net = in1_4;
  assign mult4_p_net = in1_5;
  assign mult5_p_net = in1_6;
  assign mult6_p_net = in1_7;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_addsub_5685292545 addsub1 (
    .clr(1'b0),
    .a(mult2_p_net),
    .b(mult3_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub1_s_net)
  );
  sysgen_addsub_5685292545 addsub2 (
    .clr(1'b0),
    .a(mult0_p_net),
    .b(mult1_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub2_s_net)
  );
  sysgen_addsub_0974a21f60 addsub3 (
    .clr(1'b0),
    .a(addsub2_s_net),
    .b(addsub1_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub3_s_net)
  );
  sysgen_addsub_4678755333 addsub4 (
    .clr(1'b0),
    .a(addsub5_s_net),
    .b(mult6_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub4_s_net)
  );
  sysgen_addsub_5685292545 addsub5 (
    .clr(1'b0),
    .a(mult4_p_net),
    .b(mult5_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub5_s_net)
  );
  sysgen_addsub_0974a21f60 addsub6 (
    .clr(1'b0),
    .a(addsub3_s_net),
    .b(addsub4_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub6_s_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Sum_two_elements
module fpga_kf_3dof_plus_sum_two_elements (
  input [39-1:0] in1_1,
  input [39-1:0] in1_2,
  input clk_4,
  input ce_4,
  output [57-1:0] out1
);
  wire [57-1:0] addsub2_s_net;
  wire ce_net;
  wire [39-1:0] mult1_p_net;
  wire [39-1:0] mult0_p_net;
  wire clk_net;
  assign out1 = addsub2_s_net;
  assign mult0_p_net = in1_1;
  assign mult1_p_net = in1_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_addsub_4333c78646 addsub2 (
    .clr(1'b0),
    .a(mult0_p_net),
    .b(mult1_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub2_s_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Sum_two_elements1
module fpga_kf_3dof_plus_sum_two_elements1 (
  input [39-1:0] in1_1,
  input [39-1:0] in1_2,
  input clk_4,
  input ce_4,
  output [57-1:0] out1
);
  wire clk_net;
  wire [39-1:0] mult0_p_net;
  wire [39-1:0] mult1_p_net;
  wire [57-1:0] addsub2_s_net;
  wire ce_net;
  assign out1 = addsub2_s_net;
  assign mult0_p_net = in1_1;
  assign mult1_p_net = in1_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_addsub_4333c78646 addsub2 (
    .clr(1'b0),
    .a(mult0_p_net),
    .b(mult1_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub2_s_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Sum_two_elements10
module fpga_kf_3dof_plus_sum_two_elements10 (
  input [55-1:0] in1_1,
  input [55-1:0] in1_2,
  input clk_4,
  input ce_4,
  output [57-1:0] out1
);
  wire clk_net;
  wire [55-1:0] mult0_p_net;
  wire [57-1:0] addsub2_s_net;
  wire [55-1:0] mult1_p_net;
  wire ce_net;
  assign out1 = addsub2_s_net;
  assign mult0_p_net = in1_1;
  assign mult1_p_net = in1_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_addsub_5685292545 addsub2 (
    .clr(1'b0),
    .a(mult0_p_net),
    .b(mult1_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub2_s_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Sum_two_elements11
module fpga_kf_3dof_plus_sum_two_elements11 (
  input [55-1:0] in1_1,
  input [55-1:0] in1_2,
  input clk_4,
  input ce_4,
  output [57-1:0] out1
);
  wire [55-1:0] mult1_p_net;
  wire clk_net;
  wire [57-1:0] addsub2_s_net;
  wire ce_net;
  wire [55-1:0] mult0_p_net;
  assign out1 = addsub2_s_net;
  assign mult0_p_net = in1_1;
  assign mult1_p_net = in1_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_addsub_5685292545 addsub2 (
    .clr(1'b0),
    .a(mult0_p_net),
    .b(mult1_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub2_s_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Sum_two_elements12
module fpga_kf_3dof_plus_sum_two_elements12 (
  input [55-1:0] in1_1,
  input [55-1:0] in1_2,
  input clk_4,
  input ce_4,
  output [57-1:0] out1
);
  wire [55-1:0] mult0_p_net;
  wire ce_net;
  wire [55-1:0] mult1_p_net;
  wire clk_net;
  wire [57-1:0] addsub2_s_net;
  assign out1 = addsub2_s_net;
  assign mult0_p_net = in1_1;
  assign mult1_p_net = in1_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_addsub_5685292545 addsub2 (
    .clr(1'b0),
    .a(mult0_p_net),
    .b(mult1_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub2_s_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Sum_two_elements13
module fpga_kf_3dof_plus_sum_two_elements13 (
  input [55-1:0] in1_1,
  input [55-1:0] in1_2,
  input clk_4,
  input ce_4,
  output [57-1:0] out1
);
  wire ce_net;
  wire [55-1:0] mult1_p_net;
  wire [55-1:0] mult0_p_net;
  wire [57-1:0] addsub2_s_net;
  wire clk_net;
  assign out1 = addsub2_s_net;
  assign mult0_p_net = in1_1;
  assign mult1_p_net = in1_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_addsub_5685292545 addsub2 (
    .clr(1'b0),
    .a(mult0_p_net),
    .b(mult1_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub2_s_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Sum_two_elements2
module fpga_kf_3dof_plus_sum_two_elements2 (
  input [39-1:0] in1_1,
  input [39-1:0] in1_2,
  input clk_4,
  input ce_4,
  output [57-1:0] out1
);
  wire [57-1:0] addsub2_s_net;
  wire [39-1:0] mult0_p_net;
  wire [39-1:0] mult1_p_net;
  wire clk_net;
  wire ce_net;
  assign out1 = addsub2_s_net;
  assign mult0_p_net = in1_1;
  assign mult1_p_net = in1_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_addsub_4333c78646 addsub2 (
    .clr(1'b0),
    .a(mult0_p_net),
    .b(mult1_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub2_s_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Sum_two_elements3
module fpga_kf_3dof_plus_sum_two_elements3 (
  input [39-1:0] in1_1,
  input [39-1:0] in1_2,
  input clk_4,
  input ce_4,
  output [57-1:0] out1
);
  wire [39-1:0] mult0_p_net;
  wire ce_net;
  wire [39-1:0] mult1_p_net;
  wire [57-1:0] addsub2_s_net;
  wire clk_net;
  assign out1 = addsub2_s_net;
  assign mult0_p_net = in1_1;
  assign mult1_p_net = in1_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_addsub_4333c78646 addsub2 (
    .clr(1'b0),
    .a(mult0_p_net),
    .b(mult1_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub2_s_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Sum_two_elements4
module fpga_kf_3dof_plus_sum_two_elements4 (
  input [39-1:0] in1_1,
  input [39-1:0] in1_2,
  input clk_4,
  input ce_4,
  output [57-1:0] out1
);
  wire clk_net;
  wire [39-1:0] mult0_p_net;
  wire [39-1:0] mult1_p_net;
  wire [57-1:0] addsub2_s_net;
  wire ce_net;
  assign out1 = addsub2_s_net;
  assign mult0_p_net = in1_1;
  assign mult1_p_net = in1_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_addsub_4333c78646 addsub2 (
    .clr(1'b0),
    .a(mult0_p_net),
    .b(mult1_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub2_s_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Sum_two_elements5
module fpga_kf_3dof_plus_sum_two_elements5 (
  input [39-1:0] in1_1,
  input [39-1:0] in1_2,
  input clk_4,
  input ce_4,
  output [57-1:0] out1
);
  wire [39-1:0] mult0_p_net;
  wire [57-1:0] addsub2_s_net;
  wire [39-1:0] mult1_p_net;
  wire clk_net;
  wire ce_net;
  assign out1 = addsub2_s_net;
  assign mult0_p_net = in1_1;
  assign mult1_p_net = in1_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_addsub_4333c78646 addsub2 (
    .clr(1'b0),
    .a(mult0_p_net),
    .b(mult1_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub2_s_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Sum_two_elements6
module fpga_kf_3dof_plus_sum_two_elements6 (
  input [39-1:0] in1_1,
  input [39-1:0] in1_2,
  input clk_4,
  input ce_4,
  output [57-1:0] out1
);
  wire [57-1:0] addsub2_s_net;
  wire [39-1:0] mult0_p_net;
  wire [39-1:0] mult1_p_net;
  wire clk_net;
  wire ce_net;
  assign out1 = addsub2_s_net;
  assign mult0_p_net = in1_1;
  assign mult1_p_net = in1_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_addsub_4333c78646 addsub2 (
    .clr(1'b0),
    .a(mult0_p_net),
    .b(mult1_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub2_s_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Sum_two_elements7
module fpga_kf_3dof_plus_sum_two_elements7 (
  input [55-1:0] in1_1,
  input [55-1:0] in1_2,
  input clk_4,
  input ce_4,
  output [57-1:0] out1
);
  wire [57-1:0] addsub2_s_net;
  wire [55-1:0] mult1_p_net;
  wire [55-1:0] mult0_p_net;
  wire clk_net;
  wire ce_net;
  assign out1 = addsub2_s_net;
  assign mult0_p_net = in1_1;
  assign mult1_p_net = in1_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_addsub_5685292545 addsub2 (
    .clr(1'b0),
    .a(mult0_p_net),
    .b(mult1_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub2_s_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Sum_two_elements8
module fpga_kf_3dof_plus_sum_two_elements8 (
  input [55-1:0] in1_1,
  input [55-1:0] in1_2,
  input clk_4,
  input ce_4,
  output [57-1:0] out1
);
  wire [57-1:0] addsub2_s_net;
  wire [55-1:0] mult0_p_net;
  wire ce_net;
  wire [55-1:0] mult1_p_net;
  wire clk_net;
  assign out1 = addsub2_s_net;
  assign mult0_p_net = in1_1;
  assign mult1_p_net = in1_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_addsub_5685292545 addsub2 (
    .clr(1'b0),
    .a(mult0_p_net),
    .b(mult1_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub2_s_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Sum_two_elements9
module fpga_kf_3dof_plus_sum_two_elements9 (
  input [55-1:0] in1_1,
  input [55-1:0] in1_2,
  input clk_4,
  input ce_4,
  output [57-1:0] out1
);
  wire [57-1:0] addsub2_s_net;
  wire [55-1:0] mult0_p_net;
  wire [55-1:0] mult1_p_net;
  wire clk_net;
  wire ce_net;
  assign out1 = addsub2_s_net;
  assign mult0_p_net = in1_1;
  assign mult1_p_net = in1_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_addsub_5685292545 addsub2 (
    .clr(1'b0),
    .a(mult0_p_net),
    .b(mult1_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub2_s_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Vector AddSub Fabric
module fpga_kf_3dof_plus_vector_addsub_fabric (
  input [58-1:0] a_1,
  input [57-1:0] b_1,
  input [58-1:0] a_2,
  input [58-1:0] a_3,
  input [58-1:0] a_4,
  input [58-1:0] a_5,
  input [58-1:0] a_6,
  input [58-1:0] a_7,
  input [57-1:0] b_2,
  input [57-1:0] b_3,
  input [57-1:0] b_4,
  input [57-1:0] b_5,
  input [57-1:0] b_6,
  input [57-1:0] b_7,
  input clk_4,
  input ce_4,
  output [59-1:0] a_b_1,
  output [59-1:0] a_b_2,
  output [59-1:0] a_b_3,
  output [59-1:0] a_b_4,
  output [59-1:0] a_b_5,
  output [59-1:0] a_b_6,
  output [59-1:0] a_b_7
);
  wire [58-1:0] addsub2_s_net_x6;
  wire [58-1:0] addsub3_s_net_x0;
  wire [58-1:0] addsub4_s_net_x0;
  wire [59-1:0] addsub1_s_net_x0;
  wire [59-1:0] addsub2_s_net;
  wire [58-1:0] addsub5_s_net_x0;
  wire [59-1:0] addsub5_s_net;
  wire [57-1:0] addsub2_s_net_x1;
  wire [59-1:0] addsub6_s_net;
  wire [59-1:0] addsub3_s_net;
  wire [58-1:0] addsub1_s_net;
  wire [59-1:0] addsub4_s_net;
  wire [59-1:0] addsub0_s_net_x0;
  wire [58-1:0] addsub0_s_net;
  wire [58-1:0] addsub6_s_net_x0;
  wire clk_net;
  wire ce_net;
  wire [57-1:0] addsub2_s_net_x2;
  wire [57-1:0] addsub2_s_net_x7;
  wire [57-1:0] addsub2_s_net_x4;
  wire [57-1:0] addsub2_s_net_x3;
  wire [57-1:0] addsub2_s_net_x0;
  wire [57-1:0] addsub2_s_net_x5;
  assign a_b_1 = addsub0_s_net_x0;
  assign a_b_2 = addsub1_s_net_x0;
  assign a_b_3 = addsub2_s_net;
  assign a_b_4 = addsub3_s_net;
  assign a_b_5 = addsub4_s_net;
  assign a_b_6 = addsub5_s_net;
  assign a_b_7 = addsub6_s_net;
  assign addsub0_s_net = a_1;
  assign addsub2_s_net_x1 = b_1;
  assign addsub1_s_net = a_2;
  assign addsub2_s_net_x6 = a_3;
  assign addsub3_s_net_x0 = a_4;
  assign addsub4_s_net_x0 = a_5;
  assign addsub5_s_net_x0 = a_6;
  assign addsub6_s_net_x0 = a_7;
  assign addsub2_s_net_x7 = b_2;
  assign addsub2_s_net_x0 = b_3;
  assign addsub2_s_net_x5 = b_4;
  assign addsub2_s_net_x4 = b_5;
  assign addsub2_s_net_x3 = b_6;
  assign addsub2_s_net_x2 = b_7;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_addsub_6717e0c67c addsub0 (
    .clr(1'b0),
    .a(addsub0_s_net),
    .b(addsub2_s_net_x1),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub0_s_net_x0)
  );
  sysgen_addsub_6717e0c67c addsub1 (
    .clr(1'b0),
    .a(addsub1_s_net),
    .b(addsub2_s_net_x7),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub1_s_net_x0)
  );
  sysgen_addsub_6717e0c67c addsub2 (
    .clr(1'b0),
    .a(addsub2_s_net_x6),
    .b(addsub2_s_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub2_s_net)
  );
  sysgen_addsub_6717e0c67c addsub3 (
    .clr(1'b0),
    .a(addsub3_s_net_x0),
    .b(addsub2_s_net_x5),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub3_s_net)
  );
  sysgen_addsub_6717e0c67c addsub4 (
    .clr(1'b0),
    .a(addsub4_s_net_x0),
    .b(addsub2_s_net_x4),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub4_s_net)
  );
  sysgen_addsub_6717e0c67c addsub5 (
    .clr(1'b0),
    .a(addsub5_s_net_x0),
    .b(addsub2_s_net_x3),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub5_s_net)
  );
  sysgen_addsub_6717e0c67c addsub6 (
    .clr(1'b0),
    .a(addsub6_s_net_x0),
    .b(addsub2_s_net_x2),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub6_s_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Vector AddSub Fabric1
module fpga_kf_3dof_plus_vector_addsub_fabric1 (
  input [57-1:0] a_1,
  input [57-1:0] b_1,
  input [57-1:0] a_2,
  input [57-1:0] a_3,
  input [57-1:0] a_4,
  input [57-1:0] a_5,
  input [57-1:0] a_6,
  input [57-1:0] a_7,
  input [57-1:0] b_2,
  input [57-1:0] b_3,
  input [57-1:0] b_4,
  input [57-1:0] b_5,
  input [57-1:0] b_6,
  input [57-1:0] b_7,
  input clk_4,
  input ce_4,
  output [58-1:0] a_b_1,
  output [58-1:0] a_b_2,
  output [58-1:0] a_b_3,
  output [58-1:0] a_b_4,
  output [58-1:0] a_b_5,
  output [58-1:0] a_b_6,
  output [58-1:0] a_b_7
);
  wire [58-1:0] addsub2_s_net_x6;
  wire [58-1:0] addsub5_s_net;
  wire [57-1:0] addsub2_s_net_x5;
  wire [58-1:0] addsub4_s_net;
  wire [57-1:0] addsub6_s_net_x2;
  wire [57-1:0] addsub6_s_net_x3;
  wire [57-1:0] addsub6_s_net_x1;
  wire [57-1:0] addsub6_s_net_x4;
  wire [57-1:0] addsub6_s_net_x6;
  wire [58-1:0] addsub1_s_net;
  wire [57-1:0] addsub6_s_net;
  wire [57-1:0] addsub2_s_net_x4;
  wire [58-1:0] addsub3_s_net;
  wire [57-1:0] addsub2_s_net_x3;
  wire [57-1:0] addsub2_s_net_x2;
  wire [58-1:0] addsub6_s_net_x0;
  wire [58-1:0] addsub0_s_net;
  wire [57-1:0] addsub6_s_net_x5;
  wire [57-1:0] addsub2_s_net;
  wire clk_net;
  wire ce_net;
  wire [57-1:0] addsub2_s_net_x0;
  wire [57-1:0] addsub2_s_net_x1;
  assign a_b_1 = addsub0_s_net;
  assign a_b_2 = addsub1_s_net;
  assign a_b_3 = addsub2_s_net_x6;
  assign a_b_4 = addsub3_s_net;
  assign a_b_5 = addsub4_s_net;
  assign a_b_6 = addsub5_s_net;
  assign a_b_7 = addsub6_s_net_x0;
  assign addsub6_s_net_x5 = a_1;
  assign addsub2_s_net_x5 = b_1;
  assign addsub6_s_net_x4 = a_2;
  assign addsub6_s_net_x3 = a_3;
  assign addsub6_s_net_x2 = a_4;
  assign addsub6_s_net_x1 = a_5;
  assign addsub6_s_net_x6 = a_6;
  assign addsub6_s_net = a_7;
  assign addsub2_s_net_x4 = b_2;
  assign addsub2_s_net_x3 = b_3;
  assign addsub2_s_net_x2 = b_4;
  assign addsub2_s_net_x1 = b_5;
  assign addsub2_s_net_x0 = b_6;
  assign addsub2_s_net = b_7;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_addsub_281396195b addsub0 (
    .clr(1'b0),
    .a(addsub6_s_net_x5),
    .b(addsub2_s_net_x5),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub0_s_net)
  );
  sysgen_addsub_281396195b addsub1 (
    .clr(1'b0),
    .a(addsub6_s_net_x4),
    .b(addsub2_s_net_x4),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub1_s_net)
  );
  sysgen_addsub_281396195b addsub2 (
    .clr(1'b0),
    .a(addsub6_s_net_x3),
    .b(addsub2_s_net_x3),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub2_s_net_x6)
  );
  sysgen_addsub_281396195b addsub3 (
    .clr(1'b0),
    .a(addsub6_s_net_x2),
    .b(addsub2_s_net_x2),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub3_s_net)
  );
  sysgen_addsub_281396195b addsub4 (
    .clr(1'b0),
    .a(addsub6_s_net_x1),
    .b(addsub2_s_net_x1),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub4_s_net)
  );
  sysgen_addsub_281396195b addsub5 (
    .clr(1'b0),
    .a(addsub6_s_net_x6),
    .b(addsub2_s_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub5_s_net)
  );
  sysgen_addsub_281396195b addsub6 (
    .clr(1'b0),
    .a(addsub6_s_net),
    .b(addsub2_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub6_s_net_x0)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Vector AddSub Fabric2
module fpga_kf_3dof_plus_vector_addsub_fabric2 (
  input [14-1:0] a_1,
  input [57-1:0] b_1,
  input [14-1:0] a_2,
  input [57-1:0] b_2,
  input clk_4,
  input ce_4,
  output [58-1:0] a_b_1,
  output [58-1:0] a_b_2
);
  wire clk_net;
  wire [58-1:0] addsub0_s_net;
  wire [57-1:0] addsub6_s_net_x0;
  wire [58-1:0] addsub1_s_net;
  wire [14-1:0] constant_op_net;
  wire [57-1:0] addsub6_s_net;
  wire [14-1:0] up_sample7_q_net;
  wire ce_net;
  assign a_b_1 = addsub0_s_net;
  assign a_b_2 = addsub1_s_net;
  assign up_sample7_q_net = a_1;
  assign addsub6_s_net_x0 = b_1;
  assign constant_op_net = a_2;
  assign addsub6_s_net = b_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_addsub_20963e5e52 addsub0 (
    .clr(1'b0),
    .a(up_sample7_q_net),
    .b(addsub6_s_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub0_s_net)
  );
  sysgen_addsub_20963e5e52 addsub1 (
    .clr(1'b0),
    .a(constant_op_net),
    .b(addsub6_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub1_s_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Vector AddSub Fabric3
module fpga_kf_3dof_plus_vector_addsub_fabric3 (
  input [14-1:0] a_1,
  input [30-1:0] b_1,
  input [14-1:0] a_2,
  input [30-1:0] b_2,
  input clk_4,
  input ce_4,
  output [31-1:0] a_b_1,
  output [31-1:0] a_b_2
);
  wire [30-1:0] addsub8_s_net;
  wire [31-1:0] addsub0_s_net;
  wire [31-1:0] addsub1_s_net;
  wire [14-1:0] constant_op_net;
  wire clk_net;
  wire ce_net;
  wire [30-1:0] constant2_op_net;
  wire [14-1:0] up_sample7_q_net;
  assign a_b_1 = addsub0_s_net;
  assign a_b_2 = addsub1_s_net;
  assign up_sample7_q_net = a_1;
  assign addsub8_s_net = b_1;
  assign constant_op_net = a_2;
  assign constant2_op_net = b_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_addsub_88a64bb0c5 addsub0 (
    .clr(1'b0),
    .a(up_sample7_q_net),
    .b(addsub8_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub0_s_net)
  );
  sysgen_addsub_88a64bb0c5 addsub1 (
    .clr(1'b0),
    .a(constant_op_net),
    .b(constant2_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub1_s_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Vector Constant
module fpga_kf_3dof_plus_vector_constant (
  output [30-1:0] out1_1,
  output [30-1:0] out1_2
);
  wire [30-1:0] constant1_op_net;
  wire [30-1:0] constant0_op_net;
  assign out1_1 = constant0_op_net;
  assign out1_2 = constant1_op_net;
  sysgen_constant_9725c8f107 constant0 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant0_op_net)
  );
  sysgen_constant_9725c8f107 constant1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant1_op_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Vector Convert
module fpga_kf_3dof_plus_vector_convert (
  input [59-1:0] i_1,
  input [59-1:0] i_2,
  input [59-1:0] i_3,
  input [59-1:0] i_4,
  input [59-1:0] i_5,
  input [59-1:0] i_6,
  input [59-1:0] i_7,
  input clk_4,
  input ce_4,
  output [30-1:0] o_1,
  output [30-1:0] o_2,
  output [30-1:0] o_3,
  output [30-1:0] o_4,
  output [30-1:0] o_5,
  output [30-1:0] o_6,
  output [30-1:0] o_7
);
  wire [30-1:0] convert5_dout_net;
  wire [30-1:0] convert1_dout_net;
  wire [30-1:0] convert4_dout_net;
  wire [59-1:0] addsub4_s_net;
  wire [59-1:0] addsub6_s_net;
  wire clk_net;
  wire [59-1:0] addsub0_s_net;
  wire [30-1:0] convert0_dout_net;
  wire [30-1:0] convert3_dout_net;
  wire [59-1:0] addsub5_s_net;
  wire [59-1:0] addsub1_s_net;
  wire [30-1:0] convert6_dout_net;
  wire ce_net;
  wire [30-1:0] convert2_dout_net;
  wire [59-1:0] addsub2_s_net;
  wire [59-1:0] addsub3_s_net;
  assign o_1 = convert0_dout_net;
  assign o_2 = convert1_dout_net;
  assign o_3 = convert2_dout_net;
  assign o_4 = convert3_dout_net;
  assign o_5 = convert4_dout_net;
  assign o_6 = convert5_dout_net;
  assign o_7 = convert6_dout_net;
  assign addsub0_s_net = i_1;
  assign addsub1_s_net = i_2;
  assign addsub2_s_net = i_3;
  assign addsub3_s_net = i_4;
  assign addsub4_s_net = i_5;
  assign addsub5_s_net = i_6;
  assign addsub6_s_net = i_7;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_3dof_plus_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(43),
    .din_width(59),
    .dout_arith(2),
    .dout_bin_pt(25),
    .dout_width(30),
    .latency(0),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert0 (
    .clr(1'b0),
    .en(1'b1),
    .din(addsub0_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert0_dout_net)
  );
  fpga_kf_3dof_plus_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(43),
    .din_width(59),
    .dout_arith(2),
    .dout_bin_pt(25),
    .dout_width(30),
    .latency(0),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert1 (
    .clr(1'b0),
    .en(1'b1),
    .din(addsub1_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert1_dout_net)
  );
  fpga_kf_3dof_plus_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(43),
    .din_width(59),
    .dout_arith(2),
    .dout_bin_pt(25),
    .dout_width(30),
    .latency(0),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert2 (
    .clr(1'b0),
    .en(1'b1),
    .din(addsub2_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert2_dout_net)
  );
  fpga_kf_3dof_plus_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(43),
    .din_width(59),
    .dout_arith(2),
    .dout_bin_pt(25),
    .dout_width(30),
    .latency(0),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert3 (
    .clr(1'b0),
    .en(1'b1),
    .din(addsub3_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert3_dout_net)
  );
  fpga_kf_3dof_plus_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(43),
    .din_width(59),
    .dout_arith(2),
    .dout_bin_pt(25),
    .dout_width(30),
    .latency(0),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert4 (
    .clr(1'b0),
    .en(1'b1),
    .din(addsub4_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert4_dout_net)
  );
  fpga_kf_3dof_plus_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(43),
    .din_width(59),
    .dout_arith(2),
    .dout_bin_pt(25),
    .dout_width(30),
    .latency(0),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert5 (
    .clr(1'b0),
    .en(1'b1),
    .din(addsub5_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert5_dout_net)
  );
  fpga_kf_3dof_plus_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(43),
    .din_width(59),
    .dout_arith(2),
    .dout_bin_pt(25),
    .dout_width(30),
    .latency(0),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert6 (
    .clr(1'b0),
    .en(1'b1),
    .din(addsub6_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert6_dout_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Vector Convert1
module fpga_kf_3dof_plus_vector_convert1 (
  input [30-1:0] i_1,
  input [30-1:0] i_2,
  input [30-1:0] i_3,
  input [30-1:0] i_4,
  input [30-1:0] i_5,
  input [30-1:0] i_6,
  input [30-1:0] i_7,
  input clk_4,
  input ce_4,
  output [14-1:0] o_1,
  output [14-1:0] o_2,
  output [14-1:0] o_3,
  output [14-1:0] o_4,
  output [14-1:0] o_5,
  output [14-1:0] o_6,
  output [14-1:0] o_7
);
  wire [14-1:0] convert0_dout_net_x0;
  wire [14-1:0] convert2_dout_net_x0;
  wire [14-1:0] convert3_dout_net_x0;
  wire [14-1:0] convert4_dout_net_x0;
  wire [14-1:0] convert1_dout_net_x0;
  wire [14-1:0] convert5_dout_net_x0;
  wire [14-1:0] convert6_dout_net;
  wire [30-1:0] convert0_dout_net;
  wire clk_net;
  wire [30-1:0] convert5_dout_net;
  wire [30-1:0] convert6_dout_net_x0;
  wire [30-1:0] convert1_dout_net;
  wire [30-1:0] convert3_dout_net;
  wire [30-1:0] convert2_dout_net;
  wire [30-1:0] convert4_dout_net;
  wire ce_net;
  assign o_1 = convert0_dout_net_x0;
  assign o_2 = convert1_dout_net_x0;
  assign o_3 = convert2_dout_net_x0;
  assign o_4 = convert3_dout_net_x0;
  assign o_5 = convert4_dout_net_x0;
  assign o_6 = convert5_dout_net_x0;
  assign o_7 = convert6_dout_net;
  assign convert0_dout_net = i_1;
  assign convert1_dout_net = i_2;
  assign convert2_dout_net = i_3;
  assign convert3_dout_net = i_4;
  assign convert4_dout_net = i_5;
  assign convert5_dout_net = i_6;
  assign convert6_dout_net_x0 = i_7;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_3dof_plus_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(25),
    .din_width(30),
    .dout_arith(2),
    .dout_bin_pt(13),
    .dout_width(14),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  convert0 (
    .clr(1'b0),
    .en(1'b1),
    .din(convert0_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert0_dout_net_x0)
  );
  fpga_kf_3dof_plus_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(25),
    .din_width(30),
    .dout_arith(2),
    .dout_bin_pt(13),
    .dout_width(14),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  convert1 (
    .clr(1'b0),
    .en(1'b1),
    .din(convert1_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert1_dout_net_x0)
  );
  fpga_kf_3dof_plus_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(25),
    .din_width(30),
    .dout_arith(2),
    .dout_bin_pt(13),
    .dout_width(14),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  convert2 (
    .clr(1'b0),
    .en(1'b1),
    .din(convert2_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert2_dout_net_x0)
  );
  fpga_kf_3dof_plus_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(25),
    .din_width(30),
    .dout_arith(2),
    .dout_bin_pt(13),
    .dout_width(14),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  convert3 (
    .clr(1'b0),
    .en(1'b1),
    .din(convert3_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert3_dout_net_x0)
  );
  fpga_kf_3dof_plus_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(25),
    .din_width(30),
    .dout_arith(2),
    .dout_bin_pt(13),
    .dout_width(14),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  convert4 (
    .clr(1'b0),
    .en(1'b1),
    .din(convert4_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert4_dout_net_x0)
  );
  fpga_kf_3dof_plus_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(25),
    .din_width(30),
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
    .din(convert5_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert5_dout_net_x0)
  );
  fpga_kf_3dof_plus_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(25),
    .din_width(30),
    .dout_arith(2),
    .dout_bin_pt(13),
    .dout_width(14),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  convert6 (
    .clr(1'b0),
    .en(1'b1),
    .din(convert6_dout_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert6_dout_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Vector Convert2
module fpga_kf_3dof_plus_vector_convert2 (
  input [58-1:0] i_1,
  input [58-1:0] i_2,
  input clk_4,
  input ce_4,
  output [14-1:0] o_1,
  output [14-1:0] o_2
);
  wire [58-1:0] mux1_y_net;
  wire clk_net;
  wire ce_net;
  wire [14-1:0] convert0_dout_net;
  wire [14-1:0] convert1_dout_net;
  wire [58-1:0] mux0_y_net;
  assign o_1 = convert0_dout_net;
  assign o_2 = convert1_dout_net;
  assign mux0_y_net = i_1;
  assign mux1_y_net = i_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_3dof_plus_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(43),
    .din_width(58),
    .dout_arith(2),
    .dout_bin_pt(13),
    .dout_width(14),
    .latency(0),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert0 (
    .clr(1'b0),
    .en(1'b1),
    .din(mux0_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert0_dout_net)
  );
  fpga_kf_3dof_plus_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(43),
    .din_width(58),
    .dout_arith(2),
    .dout_bin_pt(13),
    .dout_width(14),
    .latency(0),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert1 (
    .clr(1'b0),
    .en(1'b1),
    .din(mux1_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert1_dout_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Vector Down Sample
module fpga_kf_3dof_plus_vector_down_sample (
  input [25-1:0] in_1,
  input [25-1:0] in_2,
  input [25-1:0] in_3,
  input [25-1:0] in_4,
  input [25-1:0] in_5,
  input [25-1:0] in_6,
  input [25-1:0] in_7,
  input [25-1:0] in_8,
  input [25-1:0] in_9,
  input [25-1:0] in_10,
  input [25-1:0] in_11,
  input [25-1:0] in_12,
  input [25-1:0] in_13,
  input [25-1:0] in_14,
  input [25-1:0] in_15,
  input [25-1:0] in_16,
  input [25-1:0] in_17,
  input [25-1:0] in_18,
  input [25-1:0] in_19,
  input [25-1:0] in_20,
  input [25-1:0] in_21,
  input [25-1:0] in_22,
  input [25-1:0] in_23,
  input [25-1:0] in_24,
  input [25-1:0] in_25,
  input [25-1:0] in_26,
  input [25-1:0] in_27,
  input [25-1:0] in_28,
  input [25-1:0] in_29,
  input [25-1:0] in_30,
  input [25-1:0] in_31,
  input [25-1:0] in_32,
  input [25-1:0] in_33,
  input [25-1:0] in_34,
  input [25-1:0] in_35,
  input [25-1:0] in_36,
  input [25-1:0] in_37,
  input [25-1:0] in_38,
  input [25-1:0] in_39,
  input [25-1:0] in_40,
  input [25-1:0] in_41,
  input [25-1:0] in_42,
  input [25-1:0] in_43,
  input [25-1:0] in_44,
  input [25-1:0] in_45,
  input [25-1:0] in_46,
  input [25-1:0] in_47,
  input [25-1:0] in_48,
  input [25-1:0] in_49,
  input clk_1,
  input ce_1,
  input clk_4,
  input ce_4,
  output [25-1:0] out_1,
  output [25-1:0] out_2,
  output [25-1:0] out_3,
  output [25-1:0] out_4,
  output [25-1:0] out_5,
  output [25-1:0] out_6,
  output [25-1:0] out_7,
  output [25-1:0] out_8,
  output [25-1:0] out_9,
  output [25-1:0] out_10,
  output [25-1:0] out_11,
  output [25-1:0] out_12,
  output [25-1:0] out_13,
  output [25-1:0] out_14,
  output [25-1:0] out_15,
  output [25-1:0] out_16,
  output [25-1:0] out_17,
  output [25-1:0] out_18,
  output [25-1:0] out_19,
  output [25-1:0] out_20,
  output [25-1:0] out_21,
  output [25-1:0] out_22,
  output [25-1:0] out_23,
  output [25-1:0] out_24,
  output [25-1:0] out_25,
  output [25-1:0] out_26,
  output [25-1:0] out_27,
  output [25-1:0] out_28,
  output [25-1:0] out_29,
  output [25-1:0] out_30,
  output [25-1:0] out_31,
  output [25-1:0] out_32,
  output [25-1:0] out_33,
  output [25-1:0] out_34,
  output [25-1:0] out_35,
  output [25-1:0] out_36,
  output [25-1:0] out_37,
  output [25-1:0] out_38,
  output [25-1:0] out_39,
  output [25-1:0] out_40,
  output [25-1:0] out_41,
  output [25-1:0] out_42,
  output [25-1:0] out_43,
  output [25-1:0] out_44,
  output [25-1:0] out_45,
  output [25-1:0] out_46,
  output [25-1:0] out_47,
  output [25-1:0] out_48,
  output [25-1:0] out_49
);
  wire [25-1:0] register31_q_net;
  wire [25-1:0] register27_q_net;
  wire [25-1:0] register42_q_net;
  wire [25-1:0] register36_q_net;
  wire [25-1:0] register32_q_net;
  wire [25-1:0] register37_q_net;
  wire [25-1:0] register35_q_net;
  wire [25-1:0] register43_q_net;
  wire [25-1:0] register44_q_net;
  wire [25-1:0] register45_q_net;
  wire [25-1:0] register46_q_net;
  wire [25-1:0] register47_q_net;
  wire [25-1:0] register48_q_net;
  wire [25-1:0] register30_q_net;
  wire [25-1:0] register28_q_net;
  wire [25-1:0] register34_q_net;
  wire [25-1:0] register38_q_net;
  wire [25-1:0] register33_q_net;
  wire [25-1:0] register29_q_net;
  wire [25-1:0] register41_q_net;
  wire [25-1:0] register40_q_net;
  wire [25-1:0] register39_q_net;
  wire src_clk_net;
  wire src_ce_net;
  wire ce_net;
  wire clk_net;
  wire [25-1:0] downsample7_q_net;
  wire [25-1:0] downsample10_q_net;
  wire [25-1:0] downsample11_q_net;
  wire [25-1:0] downsample12_q_net;
  wire [25-1:0] downsample13_q_net;
  wire [25-1:0] downsample0_q_net;
  wire [25-1:0] downsample15_q_net;
  wire [25-1:0] downsample2_q_net;
  wire [25-1:0] downsample3_q_net;
  wire [25-1:0] downsample6_q_net;
  wire [25-1:0] downsample9_q_net;
  wire [25-1:0] downsample14_q_net;
  wire [25-1:0] downsample1_q_net;
  wire [25-1:0] downsample4_q_net;
  wire [25-1:0] downsample5_q_net;
  wire [25-1:0] downsample8_q_net;
  wire [25-1:0] downsample34_q_net;
  wire [25-1:0] downsample35_q_net;
  wire [25-1:0] downsample36_q_net;
  wire [25-1:0] downsample31_q_net;
  wire [25-1:0] downsample26_q_net;
  wire [25-1:0] downsample20_q_net;
  wire [25-1:0] downsample17_q_net;
  wire [25-1:0] downsample32_q_net;
  wire [25-1:0] downsample38_q_net;
  wire [25-1:0] downsample41_q_net;
  wire [25-1:0] downsample33_q_net;
  wire [25-1:0] downsample29_q_net;
  wire [25-1:0] downsample19_q_net;
  wire [25-1:0] downsample23_q_net;
  wire [25-1:0] downsample27_q_net;
  wire [25-1:0] downsample28_q_net;
  wire [25-1:0] downsample16_q_net;
  wire [25-1:0] downsample25_q_net;
  wire [25-1:0] downsample30_q_net;
  wire [25-1:0] downsample39_q_net;
  wire [25-1:0] downsample40_q_net;
  wire [25-1:0] downsample42_q_net;
  wire [25-1:0] downsample43_q_net;
  wire [25-1:0] downsample37_q_net;
  wire [25-1:0] downsample18_q_net;
  wire [25-1:0] downsample24_q_net;
  wire [25-1:0] downsample21_q_net;
  wire [25-1:0] downsample22_q_net;
  wire [25-1:0] register15_q_net;
  wire [25-1:0] register17_q_net;
  wire [25-1:0] downsample48_q_net;
  wire [25-1:0] register14_q_net;
  wire [25-1:0] register8_q_net;
  wire [25-1:0] register20_q_net;
  wire [25-1:0] register23_q_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] register6_q_net;
  wire [25-1:0] register10_q_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] register24_q_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] register21_q_net;
  wire [25-1:0] register25_q_net;
  wire [25-1:0] register9_q_net;
  wire [25-1:0] register11_q_net;
  wire [25-1:0] register18_q_net;
  wire [25-1:0] register22_q_net;
  wire [25-1:0] register26_q_net;
  wire [25-1:0] downsample44_q_net;
  wire [25-1:0] register7_q_net;
  wire [25-1:0] downsample46_q_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] register5_q_net;
  wire [25-1:0] downsample45_q_net;
  wire [25-1:0] register12_q_net;
  wire [25-1:0] register13_q_net;
  wire [25-1:0] downsample47_q_net;
  wire [25-1:0] register4_q_net;
  wire [25-1:0] register16_q_net;
  wire [25-1:0] register19_q_net;
  assign out_1 = downsample0_q_net;
  assign out_2 = downsample1_q_net;
  assign out_3 = downsample2_q_net;
  assign out_4 = downsample3_q_net;
  assign out_5 = downsample4_q_net;
  assign out_6 = downsample5_q_net;
  assign out_7 = downsample6_q_net;
  assign out_8 = downsample7_q_net;
  assign out_9 = downsample8_q_net;
  assign out_10 = downsample9_q_net;
  assign out_11 = downsample10_q_net;
  assign out_12 = downsample11_q_net;
  assign out_13 = downsample12_q_net;
  assign out_14 = downsample13_q_net;
  assign out_15 = downsample14_q_net;
  assign out_16 = downsample15_q_net;
  assign out_17 = downsample16_q_net;
  assign out_18 = downsample17_q_net;
  assign out_19 = downsample18_q_net;
  assign out_20 = downsample19_q_net;
  assign out_21 = downsample20_q_net;
  assign out_22 = downsample21_q_net;
  assign out_23 = downsample22_q_net;
  assign out_24 = downsample23_q_net;
  assign out_25 = downsample24_q_net;
  assign out_26 = downsample25_q_net;
  assign out_27 = downsample26_q_net;
  assign out_28 = downsample27_q_net;
  assign out_29 = downsample28_q_net;
  assign out_30 = downsample29_q_net;
  assign out_31 = downsample30_q_net;
  assign out_32 = downsample31_q_net;
  assign out_33 = downsample32_q_net;
  assign out_34 = downsample33_q_net;
  assign out_35 = downsample34_q_net;
  assign out_36 = downsample35_q_net;
  assign out_37 = downsample36_q_net;
  assign out_38 = downsample37_q_net;
  assign out_39 = downsample38_q_net;
  assign out_40 = downsample39_q_net;
  assign out_41 = downsample40_q_net;
  assign out_42 = downsample41_q_net;
  assign out_43 = downsample42_q_net;
  assign out_44 = downsample43_q_net;
  assign out_45 = downsample44_q_net;
  assign out_46 = downsample45_q_net;
  assign out_47 = downsample46_q_net;
  assign out_48 = downsample47_q_net;
  assign out_49 = downsample48_q_net;
  assign register0_q_net = in_1;
  assign register1_q_net = in_2;
  assign register2_q_net = in_3;
  assign register3_q_net = in_4;
  assign register4_q_net = in_5;
  assign register5_q_net = in_6;
  assign register6_q_net = in_7;
  assign register7_q_net = in_8;
  assign register8_q_net = in_9;
  assign register9_q_net = in_10;
  assign register10_q_net = in_11;
  assign register11_q_net = in_12;
  assign register12_q_net = in_13;
  assign register13_q_net = in_14;
  assign register14_q_net = in_15;
  assign register15_q_net = in_16;
  assign register16_q_net = in_17;
  assign register17_q_net = in_18;
  assign register18_q_net = in_19;
  assign register19_q_net = in_20;
  assign register20_q_net = in_21;
  assign register21_q_net = in_22;
  assign register22_q_net = in_23;
  assign register23_q_net = in_24;
  assign register24_q_net = in_25;
  assign register25_q_net = in_26;
  assign register26_q_net = in_27;
  assign register27_q_net = in_28;
  assign register28_q_net = in_29;
  assign register29_q_net = in_30;
  assign register30_q_net = in_31;
  assign register31_q_net = in_32;
  assign register32_q_net = in_33;
  assign register33_q_net = in_34;
  assign register34_q_net = in_35;
  assign register35_q_net = in_36;
  assign register36_q_net = in_37;
  assign register37_q_net = in_38;
  assign register38_q_net = in_39;
  assign register39_q_net = in_40;
  assign register40_q_net = in_41;
  assign register41_q_net = in_42;
  assign register42_q_net = in_43;
  assign register43_q_net = in_44;
  assign register44_q_net = in_45;
  assign register45_q_net = in_46;
  assign register46_q_net = in_47;
  assign register47_q_net = in_48;
  assign register48_q_net = in_49;
  assign src_clk_net = clk_1;
  assign src_ce_net = ce_1;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_3dof_plus_xldsamp #(
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
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample0_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample1_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample2_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample3_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample4 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register4_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample4_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample5 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register5_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample5_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample6 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register6_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample6_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample7 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register7_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample7_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample8 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register8_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample8_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample9 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register9_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample9_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample10 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register10_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample10_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample11 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register11_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample11_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample12 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register12_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample12_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample13 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register13_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample13_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample14 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register14_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample14_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample15 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register15_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample15_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample16 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register16_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample16_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample17 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register17_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample17_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample18 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register18_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample18_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample19 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register19_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample19_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample20 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register20_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample20_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample21 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register21_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample21_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample22 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register22_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample22_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample23 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register23_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample23_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample24 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register24_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample24_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample25 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register25_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample25_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample26 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register26_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample26_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample27 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register27_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample27_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample28 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register28_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample28_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample29 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register29_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample29_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample30 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register30_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample30_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample31 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register31_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample31_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample32 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register32_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample32_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample33 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register33_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample33_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample34 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register34_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample34_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample35 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register35_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample35_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample36 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register36_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample36_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample37 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register37_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample37_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample38 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register38_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample38_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample39 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register39_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample39_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample40 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register40_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample40_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample41 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register41_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample41_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample42 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register42_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample42_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample43 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register43_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample43_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample44 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register44_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample44_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample45 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register45_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample45_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample46 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register46_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample46_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample47 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register47_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample47_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample48 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register48_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample48_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Vector Down Sample1
module fpga_kf_3dof_plus_vector_down_sample1 (
  input [25-1:0] in_1,
  input [25-1:0] in_2,
  input [25-1:0] in_3,
  input [25-1:0] in_4,
  input [25-1:0] in_5,
  input [25-1:0] in_6,
  input [25-1:0] in_7,
  input [25-1:0] in_8,
  input [25-1:0] in_9,
  input [25-1:0] in_10,
  input [25-1:0] in_11,
  input [25-1:0] in_12,
  input [25-1:0] in_13,
  input [25-1:0] in_14,
  input [25-1:0] in_15,
  input [25-1:0] in_16,
  input [25-1:0] in_17,
  input [25-1:0] in_18,
  input [25-1:0] in_19,
  input [25-1:0] in_20,
  input [25-1:0] in_21,
  input [25-1:0] in_22,
  input [25-1:0] in_23,
  input [25-1:0] in_24,
  input [25-1:0] in_25,
  input [25-1:0] in_26,
  input [25-1:0] in_27,
  input [25-1:0] in_28,
  input [25-1:0] in_29,
  input [25-1:0] in_30,
  input [25-1:0] in_31,
  input [25-1:0] in_32,
  input [25-1:0] in_33,
  input [25-1:0] in_34,
  input [25-1:0] in_35,
  input [25-1:0] in_36,
  input [25-1:0] in_37,
  input [25-1:0] in_38,
  input [25-1:0] in_39,
  input [25-1:0] in_40,
  input [25-1:0] in_41,
  input [25-1:0] in_42,
  input [25-1:0] in_43,
  input [25-1:0] in_44,
  input [25-1:0] in_45,
  input [25-1:0] in_46,
  input [25-1:0] in_47,
  input [25-1:0] in_48,
  input [25-1:0] in_49,
  input clk_1,
  input ce_1,
  input clk_4,
  input ce_4,
  output [25-1:0] out_1,
  output [25-1:0] out_2,
  output [25-1:0] out_3,
  output [25-1:0] out_4,
  output [25-1:0] out_5,
  output [25-1:0] out_6,
  output [25-1:0] out_7,
  output [25-1:0] out_8,
  output [25-1:0] out_9,
  output [25-1:0] out_10,
  output [25-1:0] out_11,
  output [25-1:0] out_12,
  output [25-1:0] out_13,
  output [25-1:0] out_14,
  output [25-1:0] out_15,
  output [25-1:0] out_16,
  output [25-1:0] out_17,
  output [25-1:0] out_18,
  output [25-1:0] out_19,
  output [25-1:0] out_20,
  output [25-1:0] out_21,
  output [25-1:0] out_22,
  output [25-1:0] out_23,
  output [25-1:0] out_24,
  output [25-1:0] out_25,
  output [25-1:0] out_26,
  output [25-1:0] out_27,
  output [25-1:0] out_28,
  output [25-1:0] out_29,
  output [25-1:0] out_30,
  output [25-1:0] out_31,
  output [25-1:0] out_32,
  output [25-1:0] out_33,
  output [25-1:0] out_34,
  output [25-1:0] out_35,
  output [25-1:0] out_36,
  output [25-1:0] out_37,
  output [25-1:0] out_38,
  output [25-1:0] out_39,
  output [25-1:0] out_40,
  output [25-1:0] out_41,
  output [25-1:0] out_42,
  output [25-1:0] out_43,
  output [25-1:0] out_44,
  output [25-1:0] out_45,
  output [25-1:0] out_46,
  output [25-1:0] out_47,
  output [25-1:0] out_48,
  output [25-1:0] out_49
);
  wire ce_net;
  wire [25-1:0] register46_q_net;
  wire src_ce_net;
  wire clk_net;
  wire [25-1:0] register47_q_net;
  wire [25-1:0] register48_q_net;
  wire src_clk_net;
  wire [25-1:0] register45_q_net;
  wire [25-1:0] downsample26_q_net;
  wire [25-1:0] downsample27_q_net;
  wire [25-1:0] downsample30_q_net;
  wire [25-1:0] downsample31_q_net;
  wire [25-1:0] downsample32_q_net;
  wire [25-1:0] downsample33_q_net;
  wire [25-1:0] downsample29_q_net;
  wire [25-1:0] downsample34_q_net;
  wire [25-1:0] downsample28_q_net;
  wire [25-1:0] downsample41_q_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] register7_q_net;
  wire [25-1:0] register4_q_net;
  wire [25-1:0] downsample38_q_net;
  wire [25-1:0] downsample46_q_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] downsample37_q_net;
  wire [25-1:0] downsample45_q_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] register9_q_net;
  wire [25-1:0] register10_q_net;
  wire [25-1:0] register13_q_net;
  wire [25-1:0] downsample42_q_net;
  wire [25-1:0] downsample35_q_net;
  wire [25-1:0] downsample36_q_net;
  wire [25-1:0] downsample43_q_net;
  wire [25-1:0] downsample44_q_net;
  wire [25-1:0] register14_q_net;
  wire [25-1:0] register15_q_net;
  wire [25-1:0] register16_q_net;
  wire [25-1:0] register17_q_net;
  wire [25-1:0] downsample39_q_net;
  wire [25-1:0] downsample47_q_net;
  wire [25-1:0] register5_q_net;
  wire [25-1:0] register6_q_net;
  wire [25-1:0] downsample40_q_net;
  wire [25-1:0] downsample48_q_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] register8_q_net;
  wire [25-1:0] register11_q_net;
  wire [25-1:0] register12_q_net;
  wire [25-1:0] register28_q_net;
  wire [25-1:0] register25_q_net;
  wire [25-1:0] register22_q_net;
  wire [25-1:0] register36_q_net;
  wire [25-1:0] register38_q_net;
  wire [25-1:0] register26_q_net;
  wire [25-1:0] register32_q_net;
  wire [25-1:0] register27_q_net;
  wire [25-1:0] register20_q_net;
  wire [25-1:0] register24_q_net;
  wire [25-1:0] register29_q_net;
  wire [25-1:0] register33_q_net;
  wire [25-1:0] register37_q_net;
  wire [25-1:0] register39_q_net;
  wire [25-1:0] register31_q_net;
  wire [25-1:0] register30_q_net;
  wire [25-1:0] register34_q_net;
  wire [25-1:0] register23_q_net;
  wire [25-1:0] register40_q_net;
  wire [25-1:0] register35_q_net;
  wire [25-1:0] register21_q_net;
  wire [25-1:0] register19_q_net;
  wire [25-1:0] register18_q_net;
  wire [25-1:0] register43_q_net;
  wire [25-1:0] register44_q_net;
  wire [25-1:0] register41_q_net;
  wire [25-1:0] register42_q_net;
  wire [25-1:0] downsample15_q_net;
  wire [25-1:0] downsample16_q_net;
  wire [25-1:0] downsample17_q_net;
  wire [25-1:0] downsample18_q_net;
  wire [25-1:0] downsample22_q_net;
  wire [25-1:0] downsample23_q_net;
  wire [25-1:0] downsample21_q_net;
  wire [25-1:0] downsample19_q_net;
  wire [25-1:0] downsample24_q_net;
  wire [25-1:0] downsample20_q_net;
  wire [25-1:0] downsample25_q_net;
  wire [25-1:0] downsample0_q_net;
  wire [25-1:0] downsample1_q_net;
  wire [25-1:0] downsample2_q_net;
  wire [25-1:0] downsample3_q_net;
  wire [25-1:0] downsample4_q_net;
  wire [25-1:0] downsample6_q_net;
  wire [25-1:0] downsample7_q_net;
  wire [25-1:0] downsample8_q_net;
  wire [25-1:0] downsample5_q_net;
  wire [25-1:0] downsample10_q_net;
  wire [25-1:0] downsample9_q_net;
  wire [25-1:0] downsample11_q_net;
  wire [25-1:0] downsample12_q_net;
  wire [25-1:0] downsample13_q_net;
  wire [25-1:0] downsample14_q_net;
  assign out_1 = downsample0_q_net;
  assign out_2 = downsample1_q_net;
  assign out_3 = downsample2_q_net;
  assign out_4 = downsample3_q_net;
  assign out_5 = downsample4_q_net;
  assign out_6 = downsample5_q_net;
  assign out_7 = downsample6_q_net;
  assign out_8 = downsample7_q_net;
  assign out_9 = downsample8_q_net;
  assign out_10 = downsample9_q_net;
  assign out_11 = downsample10_q_net;
  assign out_12 = downsample11_q_net;
  assign out_13 = downsample12_q_net;
  assign out_14 = downsample13_q_net;
  assign out_15 = downsample14_q_net;
  assign out_16 = downsample15_q_net;
  assign out_17 = downsample16_q_net;
  assign out_18 = downsample17_q_net;
  assign out_19 = downsample18_q_net;
  assign out_20 = downsample19_q_net;
  assign out_21 = downsample20_q_net;
  assign out_22 = downsample21_q_net;
  assign out_23 = downsample22_q_net;
  assign out_24 = downsample23_q_net;
  assign out_25 = downsample24_q_net;
  assign out_26 = downsample25_q_net;
  assign out_27 = downsample26_q_net;
  assign out_28 = downsample27_q_net;
  assign out_29 = downsample28_q_net;
  assign out_30 = downsample29_q_net;
  assign out_31 = downsample30_q_net;
  assign out_32 = downsample31_q_net;
  assign out_33 = downsample32_q_net;
  assign out_34 = downsample33_q_net;
  assign out_35 = downsample34_q_net;
  assign out_36 = downsample35_q_net;
  assign out_37 = downsample36_q_net;
  assign out_38 = downsample37_q_net;
  assign out_39 = downsample38_q_net;
  assign out_40 = downsample39_q_net;
  assign out_41 = downsample40_q_net;
  assign out_42 = downsample41_q_net;
  assign out_43 = downsample42_q_net;
  assign out_44 = downsample43_q_net;
  assign out_45 = downsample44_q_net;
  assign out_46 = downsample45_q_net;
  assign out_47 = downsample46_q_net;
  assign out_48 = downsample47_q_net;
  assign out_49 = downsample48_q_net;
  assign register0_q_net = in_1;
  assign register1_q_net = in_2;
  assign register2_q_net = in_3;
  assign register3_q_net = in_4;
  assign register4_q_net = in_5;
  assign register5_q_net = in_6;
  assign register6_q_net = in_7;
  assign register7_q_net = in_8;
  assign register8_q_net = in_9;
  assign register9_q_net = in_10;
  assign register10_q_net = in_11;
  assign register11_q_net = in_12;
  assign register12_q_net = in_13;
  assign register13_q_net = in_14;
  assign register14_q_net = in_15;
  assign register15_q_net = in_16;
  assign register16_q_net = in_17;
  assign register17_q_net = in_18;
  assign register18_q_net = in_19;
  assign register19_q_net = in_20;
  assign register20_q_net = in_21;
  assign register21_q_net = in_22;
  assign register22_q_net = in_23;
  assign register23_q_net = in_24;
  assign register24_q_net = in_25;
  assign register25_q_net = in_26;
  assign register26_q_net = in_27;
  assign register27_q_net = in_28;
  assign register28_q_net = in_29;
  assign register29_q_net = in_30;
  assign register30_q_net = in_31;
  assign register31_q_net = in_32;
  assign register32_q_net = in_33;
  assign register33_q_net = in_34;
  assign register34_q_net = in_35;
  assign register35_q_net = in_36;
  assign register36_q_net = in_37;
  assign register37_q_net = in_38;
  assign register38_q_net = in_39;
  assign register39_q_net = in_40;
  assign register40_q_net = in_41;
  assign register41_q_net = in_42;
  assign register42_q_net = in_43;
  assign register43_q_net = in_44;
  assign register44_q_net = in_45;
  assign register45_q_net = in_46;
  assign register46_q_net = in_47;
  assign register47_q_net = in_48;
  assign register48_q_net = in_49;
  assign src_clk_net = clk_1;
  assign src_ce_net = ce_1;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_3dof_plus_xldsamp #(
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
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample0_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample1_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample2_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample3_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample4 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register4_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample4_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample5 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register5_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample5_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample6 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register6_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample6_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample7 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register7_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample7_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample8 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register8_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample8_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample9 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register9_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample9_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample10 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register10_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample10_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample11 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register11_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample11_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample12 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register12_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample12_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample13 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register13_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample13_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample14 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register14_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample14_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample15 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register15_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample15_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample16 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register16_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample16_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample17 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register17_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample17_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample18 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register18_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample18_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample19 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register19_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample19_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample20 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register20_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample20_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample21 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register21_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample21_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample22 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register22_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample22_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample23 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register23_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample23_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample24 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register24_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample24_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample25 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register25_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample25_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample26 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register26_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample26_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample27 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register27_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample27_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample28 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register28_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample28_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample29 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register29_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample29_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample30 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register30_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample30_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample31 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register31_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample31_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample32 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register32_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample32_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample33 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register33_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample33_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample34 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register34_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample34_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample35 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register35_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample35_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample36 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register36_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample36_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample37 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register37_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample37_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample38 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register38_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample38_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample39 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register39_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample39_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample40 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register40_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample40_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample41 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register41_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample41_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample42 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register42_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample42_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample43 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register43_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample43_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample44 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register44_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample44_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample45 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register45_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample45_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample46 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register46_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample46_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample47 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register47_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample47_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample48 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register48_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample48_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Vector Down Sample2
module fpga_kf_3dof_plus_vector_down_sample2 (
  input [25-1:0] in_1,
  input [25-1:0] in_2,
  input [25-1:0] in_3,
  input [25-1:0] in_4,
  input [25-1:0] in_5,
  input [25-1:0] in_6,
  input [25-1:0] in_7,
  input [25-1:0] in_8,
  input [25-1:0] in_9,
  input [25-1:0] in_10,
  input [25-1:0] in_11,
  input [25-1:0] in_12,
  input [25-1:0] in_13,
  input [25-1:0] in_14,
  input clk_1,
  input ce_1,
  input clk_4,
  input ce_4,
  output [25-1:0] out_1,
  output [25-1:0] out_2,
  output [25-1:0] out_3,
  output [25-1:0] out_4,
  output [25-1:0] out_5,
  output [25-1:0] out_6,
  output [25-1:0] out_7,
  output [25-1:0] out_8,
  output [25-1:0] out_9,
  output [25-1:0] out_10,
  output [25-1:0] out_11,
  output [25-1:0] out_12,
  output [25-1:0] out_13,
  output [25-1:0] out_14
);
  wire [25-1:0] downsample10_q_net;
  wire [25-1:0] downsample2_q_net;
  wire [25-1:0] downsample3_q_net;
  wire [25-1:0] downsample11_q_net;
  wire [25-1:0] downsample13_q_net;
  wire [25-1:0] downsample9_q_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] downsample1_q_net;
  wire [25-1:0] downsample5_q_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] downsample12_q_net;
  wire [25-1:0] downsample4_q_net;
  wire [25-1:0] downsample6_q_net;
  wire [25-1:0] downsample0_q_net;
  wire [25-1:0] downsample7_q_net;
  wire [25-1:0] downsample8_q_net;
  wire [25-1:0] register7_q_net;
  wire src_clk_net;
  wire ce_net;
  wire [25-1:0] register6_q_net;
  wire [25-1:0] register5_q_net;
  wire src_ce_net;
  wire [25-1:0] register11_q_net;
  wire [25-1:0] register4_q_net;
  wire [25-1:0] register10_q_net;
  wire [25-1:0] register12_q_net;
  wire [25-1:0] register13_q_net;
  wire [25-1:0] register8_q_net;
  wire [25-1:0] register9_q_net;
  wire clk_net;
  assign out_1 = downsample0_q_net;
  assign out_2 = downsample1_q_net;
  assign out_3 = downsample2_q_net;
  assign out_4 = downsample3_q_net;
  assign out_5 = downsample4_q_net;
  assign out_6 = downsample5_q_net;
  assign out_7 = downsample6_q_net;
  assign out_8 = downsample7_q_net;
  assign out_9 = downsample8_q_net;
  assign out_10 = downsample9_q_net;
  assign out_11 = downsample10_q_net;
  assign out_12 = downsample11_q_net;
  assign out_13 = downsample12_q_net;
  assign out_14 = downsample13_q_net;
  assign register0_q_net = in_1;
  assign register1_q_net = in_2;
  assign register2_q_net = in_3;
  assign register3_q_net = in_4;
  assign register4_q_net = in_5;
  assign register5_q_net = in_6;
  assign register6_q_net = in_7;
  assign register7_q_net = in_8;
  assign register8_q_net = in_9;
  assign register9_q_net = in_10;
  assign register10_q_net = in_11;
  assign register11_q_net = in_12;
  assign register12_q_net = in_13;
  assign register13_q_net = in_14;
  assign src_clk_net = clk_1;
  assign src_ce_net = ce_1;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_3dof_plus_xldsamp #(
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
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample0_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample1_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample2_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample3_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample4 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register4_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample4_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample5 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register5_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample5_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample6 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register6_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample6_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample7 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register7_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample7_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample8 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register8_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample8_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample9 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register9_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample9_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample10 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register10_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample10_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample11 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register11_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample11_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample12 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register12_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample12_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample13 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register13_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample13_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Vector Down Sample3
module fpga_kf_3dof_plus_vector_down_sample3 (
  input [25-1:0] in_1,
  input [25-1:0] in_2,
  input [25-1:0] in_3,
  input [25-1:0] in_4,
  input [25-1:0] in_5,
  input [25-1:0] in_6,
  input [25-1:0] in_7,
  input [25-1:0] in_8,
  input [25-1:0] in_9,
  input [25-1:0] in_10,
  input [25-1:0] in_11,
  input [25-1:0] in_12,
  input [25-1:0] in_13,
  input [25-1:0] in_14,
  input clk_1,
  input ce_1,
  input clk_4,
  input ce_4,
  output [25-1:0] out_1,
  output [25-1:0] out_2,
  output [25-1:0] out_3,
  output [25-1:0] out_4,
  output [25-1:0] out_5,
  output [25-1:0] out_6,
  output [25-1:0] out_7,
  output [25-1:0] out_8,
  output [25-1:0] out_9,
  output [25-1:0] out_10,
  output [25-1:0] out_11,
  output [25-1:0] out_12,
  output [25-1:0] out_13,
  output [25-1:0] out_14
);
  wire [25-1:0] downsample8_q_net;
  wire [25-1:0] downsample6_q_net;
  wire [25-1:0] downsample3_q_net;
  wire [25-1:0] downsample9_q_net;
  wire [25-1:0] downsample10_q_net;
  wire [25-1:0] downsample11_q_net;
  wire [25-1:0] downsample0_q_net;
  wire [25-1:0] downsample5_q_net;
  wire [25-1:0] downsample7_q_net;
  wire [25-1:0] downsample1_q_net;
  wire [25-1:0] downsample2_q_net;
  wire [25-1:0] downsample4_q_net;
  wire [25-1:0] register11_q_net;
  wire [25-1:0] register6_q_net;
  wire [25-1:0] register12_q_net;
  wire [25-1:0] register9_q_net;
  wire src_ce_net;
  wire [25-1:0] register5_q_net;
  wire [25-1:0] register8_q_net;
  wire [25-1:0] downsample13_q_net;
  wire ce_net;
  wire [25-1:0] register13_q_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] register4_q_net;
  wire src_clk_net;
  wire [25-1:0] downsample12_q_net;
  wire [25-1:0] register7_q_net;
  wire clk_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] register10_q_net;
  assign out_1 = downsample0_q_net;
  assign out_2 = downsample1_q_net;
  assign out_3 = downsample2_q_net;
  assign out_4 = downsample3_q_net;
  assign out_5 = downsample4_q_net;
  assign out_6 = downsample5_q_net;
  assign out_7 = downsample6_q_net;
  assign out_8 = downsample7_q_net;
  assign out_9 = downsample8_q_net;
  assign out_10 = downsample9_q_net;
  assign out_11 = downsample10_q_net;
  assign out_12 = downsample11_q_net;
  assign out_13 = downsample12_q_net;
  assign out_14 = downsample13_q_net;
  assign register0_q_net = in_1;
  assign register1_q_net = in_2;
  assign register2_q_net = in_3;
  assign register3_q_net = in_4;
  assign register4_q_net = in_5;
  assign register5_q_net = in_6;
  assign register6_q_net = in_7;
  assign register7_q_net = in_8;
  assign register8_q_net = in_9;
  assign register9_q_net = in_10;
  assign register10_q_net = in_11;
  assign register11_q_net = in_12;
  assign register12_q_net = in_13;
  assign register13_q_net = in_14;
  assign src_clk_net = clk_1;
  assign src_ce_net = ce_1;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_3dof_plus_xldsamp #(
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
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample0_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample1_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample2_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample3_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample4 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register4_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample4_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample5 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register5_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample5_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample6 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register6_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample6_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample7 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register7_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample7_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample8 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register8_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample8_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample9 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register9_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample9_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample10 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register10_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample10_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample11 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register11_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample11_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample12 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register12_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample12_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample13 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register13_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample13_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Vector Down Sample4
module fpga_kf_3dof_plus_vector_down_sample4 (
  input [25-1:0] in_1,
  input [25-1:0] in_2,
  input [25-1:0] in_3,
  input [25-1:0] in_4,
  input [25-1:0] in_5,
  input [25-1:0] in_6,
  input [25-1:0] in_7,
  input [25-1:0] in_8,
  input [25-1:0] in_9,
  input [25-1:0] in_10,
  input [25-1:0] in_11,
  input [25-1:0] in_12,
  input [25-1:0] in_13,
  input [25-1:0] in_14,
  input clk_1,
  input ce_1,
  input clk_4,
  input ce_4,
  output [25-1:0] out_1,
  output [25-1:0] out_2,
  output [25-1:0] out_3,
  output [25-1:0] out_4,
  output [25-1:0] out_5,
  output [25-1:0] out_6,
  output [25-1:0] out_7,
  output [25-1:0] out_8,
  output [25-1:0] out_9,
  output [25-1:0] out_10,
  output [25-1:0] out_11,
  output [25-1:0] out_12,
  output [25-1:0] out_13,
  output [25-1:0] out_14
);
  wire [25-1:0] downsample7_q_net;
  wire [25-1:0] downsample8_q_net;
  wire [25-1:0] downsample9_q_net;
  wire [25-1:0] downsample0_q_net;
  wire [25-1:0] downsample2_q_net;
  wire [25-1:0] downsample1_q_net;
  wire [25-1:0] downsample3_q_net;
  wire [25-1:0] downsample4_q_net;
  wire [25-1:0] downsample5_q_net;
  wire [25-1:0] downsample6_q_net;
  wire [25-1:0] downsample12_q_net;
  wire [25-1:0] register10_q_net;
  wire [25-1:0] register0_q_net;
  wire src_clk_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] downsample13_q_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] register11_q_net;
  wire [25-1:0] downsample10_q_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] register4_q_net;
  wire [25-1:0] register12_q_net;
  wire [25-1:0] register5_q_net;
  wire [25-1:0] register13_q_net;
  wire [25-1:0] register7_q_net;
  wire src_ce_net;
  wire [25-1:0] register8_q_net;
  wire [25-1:0] downsample11_q_net;
  wire [25-1:0] register6_q_net;
  wire [25-1:0] register9_q_net;
  wire clk_net;
  wire ce_net;
  assign out_1 = downsample0_q_net;
  assign out_2 = downsample1_q_net;
  assign out_3 = downsample2_q_net;
  assign out_4 = downsample3_q_net;
  assign out_5 = downsample4_q_net;
  assign out_6 = downsample5_q_net;
  assign out_7 = downsample6_q_net;
  assign out_8 = downsample7_q_net;
  assign out_9 = downsample8_q_net;
  assign out_10 = downsample9_q_net;
  assign out_11 = downsample10_q_net;
  assign out_12 = downsample11_q_net;
  assign out_13 = downsample12_q_net;
  assign out_14 = downsample13_q_net;
  assign register0_q_net = in_1;
  assign register1_q_net = in_2;
  assign register2_q_net = in_3;
  assign register3_q_net = in_4;
  assign register4_q_net = in_5;
  assign register5_q_net = in_6;
  assign register6_q_net = in_7;
  assign register7_q_net = in_8;
  assign register8_q_net = in_9;
  assign register9_q_net = in_10;
  assign register10_q_net = in_11;
  assign register11_q_net = in_12;
  assign register12_q_net = in_13;
  assign register13_q_net = in_14;
  assign src_clk_net = clk_1;
  assign src_ce_net = ce_1;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_3dof_plus_xldsamp #(
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
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample0_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample1_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample2_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample3_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample4 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register4_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample4_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample5 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register5_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample5_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample6 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register6_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample6_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample7 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register7_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample7_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample8 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register8_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample8_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample9 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register9_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample9_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample10 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register10_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample10_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample11 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register11_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample11_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample12 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register12_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample12_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample13 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register13_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample13_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Vector Down Sample5
module fpga_kf_3dof_plus_vector_down_sample5 (
  input [25-1:0] in_1,
  input [25-1:0] in_2,
  input [25-1:0] in_3,
  input [25-1:0] in_4,
  input [25-1:0] in_5,
  input [25-1:0] in_6,
  input [25-1:0] in_7,
  input [25-1:0] in_8,
  input [25-1:0] in_9,
  input [25-1:0] in_10,
  input [25-1:0] in_11,
  input [25-1:0] in_12,
  input [25-1:0] in_13,
  input [25-1:0] in_14,
  input clk_1,
  input ce_1,
  input clk_4,
  input ce_4,
  output [25-1:0] out_1,
  output [25-1:0] out_2,
  output [25-1:0] out_3,
  output [25-1:0] out_4,
  output [25-1:0] out_5,
  output [25-1:0] out_6,
  output [25-1:0] out_7,
  output [25-1:0] out_8,
  output [25-1:0] out_9,
  output [25-1:0] out_10,
  output [25-1:0] out_11,
  output [25-1:0] out_12,
  output [25-1:0] out_13,
  output [25-1:0] out_14
);
  wire [25-1:0] downsample0_q_net;
  wire [25-1:0] downsample1_q_net;
  wire [25-1:0] downsample2_q_net;
  wire [25-1:0] register10_q_net;
  wire [25-1:0] register4_q_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] downsample9_q_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] downsample11_q_net;
  wire clk_net;
  wire src_clk_net;
  wire [25-1:0] register6_q_net;
  wire src_ce_net;
  wire [25-1:0] downsample5_q_net;
  wire [25-1:0] downsample10_q_net;
  wire [25-1:0] register11_q_net;
  wire [25-1:0] register8_q_net;
  wire [25-1:0] downsample13_q_net;
  wire [25-1:0] downsample7_q_net;
  wire [25-1:0] downsample8_q_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] register5_q_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] register7_q_net;
  wire ce_net;
  wire [25-1:0] downsample4_q_net;
  wire [25-1:0] downsample3_q_net;
  wire [25-1:0] register12_q_net;
  wire [25-1:0] register13_q_net;
  wire [25-1:0] downsample6_q_net;
  wire [25-1:0] downsample12_q_net;
  wire [25-1:0] register9_q_net;
  assign out_1 = downsample0_q_net;
  assign out_2 = downsample1_q_net;
  assign out_3 = downsample2_q_net;
  assign out_4 = downsample3_q_net;
  assign out_5 = downsample4_q_net;
  assign out_6 = downsample5_q_net;
  assign out_7 = downsample6_q_net;
  assign out_8 = downsample7_q_net;
  assign out_9 = downsample8_q_net;
  assign out_10 = downsample9_q_net;
  assign out_11 = downsample10_q_net;
  assign out_12 = downsample11_q_net;
  assign out_13 = downsample12_q_net;
  assign out_14 = downsample13_q_net;
  assign register0_q_net = in_1;
  assign register1_q_net = in_2;
  assign register2_q_net = in_3;
  assign register3_q_net = in_4;
  assign register4_q_net = in_5;
  assign register5_q_net = in_6;
  assign register6_q_net = in_7;
  assign register7_q_net = in_8;
  assign register8_q_net = in_9;
  assign register9_q_net = in_10;
  assign register10_q_net = in_11;
  assign register11_q_net = in_12;
  assign register12_q_net = in_13;
  assign register13_q_net = in_14;
  assign src_clk_net = clk_1;
  assign src_ce_net = ce_1;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_3dof_plus_xldsamp #(
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
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample0_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample1_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample2_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample3_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample4 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register4_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample4_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample5 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register5_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample5_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample6 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register6_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample6_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample7 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register7_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample7_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample8 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register8_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample8_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample9 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register9_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample9_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample10 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register10_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample10_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample11 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register11_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample11_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample12 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register12_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample12_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample13 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register13_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample13_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Vector Down Sample6
module fpga_kf_3dof_plus_vector_down_sample6 (
  input [25-1:0] in_1,
  input [25-1:0] in_2,
  input [25-1:0] in_3,
  input [25-1:0] in_4,
  input [25-1:0] in_5,
  input [25-1:0] in_6,
  input [25-1:0] in_7,
  input [25-1:0] in_8,
  input [25-1:0] in_9,
  input [25-1:0] in_10,
  input [25-1:0] in_11,
  input [25-1:0] in_12,
  input [25-1:0] in_13,
  input [25-1:0] in_14,
  input clk_1,
  input ce_1,
  input clk_4,
  input ce_4,
  output [25-1:0] out_1,
  output [25-1:0] out_2,
  output [25-1:0] out_3,
  output [25-1:0] out_4,
  output [25-1:0] out_5,
  output [25-1:0] out_6,
  output [25-1:0] out_7,
  output [25-1:0] out_8,
  output [25-1:0] out_9,
  output [25-1:0] out_10,
  output [25-1:0] out_11,
  output [25-1:0] out_12,
  output [25-1:0] out_13,
  output [25-1:0] out_14
);
  wire [25-1:0] downsample0_q_net;
  wire [25-1:0] downsample6_q_net;
  wire [25-1:0] downsample9_q_net;
  wire [25-1:0] downsample11_q_net;
  wire [25-1:0] downsample12_q_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] downsample7_q_net;
  wire [25-1:0] register11_q_net;
  wire [25-1:0] register13_q_net;
  wire src_clk_net;
  wire [25-1:0] downsample1_q_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] downsample13_q_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] register8_q_net;
  wire [25-1:0] downsample2_q_net;
  wire [25-1:0] downsample10_q_net;
  wire [25-1:0] downsample3_q_net;
  wire [25-1:0] register7_q_net;
  wire [25-1:0] downsample8_q_net;
  wire [25-1:0] register10_q_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] register6_q_net;
  wire [25-1:0] register12_q_net;
  wire [25-1:0] register9_q_net;
  wire [25-1:0] register4_q_net;
  wire [25-1:0] downsample5_q_net;
  wire [25-1:0] register5_q_net;
  wire [25-1:0] downsample4_q_net;
  wire clk_net;
  wire ce_net;
  wire src_ce_net;
  assign out_1 = downsample0_q_net;
  assign out_2 = downsample1_q_net;
  assign out_3 = downsample2_q_net;
  assign out_4 = downsample3_q_net;
  assign out_5 = downsample4_q_net;
  assign out_6 = downsample5_q_net;
  assign out_7 = downsample6_q_net;
  assign out_8 = downsample7_q_net;
  assign out_9 = downsample8_q_net;
  assign out_10 = downsample9_q_net;
  assign out_11 = downsample10_q_net;
  assign out_12 = downsample11_q_net;
  assign out_13 = downsample12_q_net;
  assign out_14 = downsample13_q_net;
  assign register0_q_net = in_1;
  assign register1_q_net = in_2;
  assign register2_q_net = in_3;
  assign register3_q_net = in_4;
  assign register4_q_net = in_5;
  assign register5_q_net = in_6;
  assign register6_q_net = in_7;
  assign register7_q_net = in_8;
  assign register8_q_net = in_9;
  assign register9_q_net = in_10;
  assign register10_q_net = in_11;
  assign register11_q_net = in_12;
  assign register12_q_net = in_13;
  assign register13_q_net = in_14;
  assign src_clk_net = clk_1;
  assign src_ce_net = ce_1;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_3dof_plus_xldsamp #(
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
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample0_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample1_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample2_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample3_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample4 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register4_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample4_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample5 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register5_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample5_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample6 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register6_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample6_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample7 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register7_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample7_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample8 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register8_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample8_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample9 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register9_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample9_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample10 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register10_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample10_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample11 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register11_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample11_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample12 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register12_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample12_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample13 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register13_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample13_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Vector Down Sample7
module fpga_kf_3dof_plus_vector_down_sample7 (
  input [30-1:0] in_1,
  input [30-1:0] in_2,
  input clk_1,
  input ce_1,
  input clk_4,
  input ce_4,
  output [30-1:0] out_1,
  output [30-1:0] out_2
);
  wire [30-1:0] downsample0_q_net;
  wire [30-1:0] register0_q_net;
  wire [30-1:0] register1_q_net;
  wire src_ce_net;
  wire ce_net;
  wire [30-1:0] downsample1_q_net;
  wire clk_net;
  wire src_clk_net;
  assign out_1 = downsample0_q_net;
  assign out_2 = downsample1_q_net;
  assign register0_q_net = in_1;
  assign register1_q_net = in_2;
  assign src_clk_net = clk_1;
  assign src_ce_net = ce_1;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_3dof_plus_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(25),
    .d_width(30),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(25),
    .q_width(30)
  )
  downsample0 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register0_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample0_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(25),
    .d_width(30),
    .ds_ratio(4),
    .latency(1),
    .phase(3),
    .q_arith(`xlSigned),
    .q_bin_pt(25),
    .q_width(30)
  )
  downsample1 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register1_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample1_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Vector Down Sample8
module fpga_kf_3dof_plus_vector_down_sample8 (
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
  wire [25-1:0] register0_q_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] downsample0_q_net;
  wire src_ce_net;
  wire ce_net;
  wire src_clk_net;
  wire clk_net;
  assign out_1 = downsample0_q_net;
  assign out_2 = downsample1_q_net;
  assign register0_q_net = in_1;
  assign register1_q_net = in_2;
  assign src_clk_net = clk_1;
  assign src_ce_net = ce_1;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_3dof_plus_xldsamp #(
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
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample0_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample1_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Vector Down Sample9
module fpga_kf_3dof_plus_vector_down_sample9 (
  input [25-1:0] in_1,
  input [25-1:0] in_2,
  input [25-1:0] in_3,
  input [25-1:0] in_4,
  input [25-1:0] in_5,
  input [25-1:0] in_6,
  input [25-1:0] in_7,
  input [25-1:0] in_8,
  input [25-1:0] in_9,
  input [25-1:0] in_10,
  input [25-1:0] in_11,
  input [25-1:0] in_12,
  input [25-1:0] in_13,
  input [25-1:0] in_14,
  input clk_1,
  input ce_1,
  input clk_4,
  input ce_4,
  output [25-1:0] out_1,
  output [25-1:0] out_2,
  output [25-1:0] out_3,
  output [25-1:0] out_4,
  output [25-1:0] out_5,
  output [25-1:0] out_6,
  output [25-1:0] out_7,
  output [25-1:0] out_8,
  output [25-1:0] out_9,
  output [25-1:0] out_10,
  output [25-1:0] out_11,
  output [25-1:0] out_12,
  output [25-1:0] out_13,
  output [25-1:0] out_14
);
  wire [25-1:0] downsample4_q_net;
  wire [25-1:0] downsample6_q_net;
  wire [25-1:0] downsample7_q_net;
  wire [25-1:0] downsample8_q_net;
  wire [25-1:0] downsample10_q_net;
  wire [25-1:0] downsample11_q_net;
  wire [25-1:0] downsample3_q_net;
  wire [25-1:0] downsample12_q_net;
  wire [25-1:0] downsample9_q_net;
  wire [25-1:0] downsample13_q_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] downsample0_q_net;
  wire [25-1:0] downsample2_q_net;
  wire [25-1:0] downsample1_q_net;
  wire [25-1:0] downsample5_q_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] register9_q_net;
  wire [25-1:0] register7_q_net;
  wire [25-1:0] register10_q_net;
  wire [25-1:0] register4_q_net;
  wire ce_net;
  wire src_clk_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] register8_q_net;
  wire src_ce_net;
  wire [25-1:0] register12_q_net;
  wire [25-1:0] register13_q_net;
  wire [25-1:0] register11_q_net;
  wire [25-1:0] register6_q_net;
  wire [25-1:0] register5_q_net;
  wire clk_net;
  assign out_1 = downsample0_q_net;
  assign out_2 = downsample1_q_net;
  assign out_3 = downsample2_q_net;
  assign out_4 = downsample3_q_net;
  assign out_5 = downsample4_q_net;
  assign out_6 = downsample5_q_net;
  assign out_7 = downsample6_q_net;
  assign out_8 = downsample7_q_net;
  assign out_9 = downsample8_q_net;
  assign out_10 = downsample9_q_net;
  assign out_11 = downsample10_q_net;
  assign out_12 = downsample11_q_net;
  assign out_13 = downsample12_q_net;
  assign out_14 = downsample13_q_net;
  assign register0_q_net = in_1;
  assign register1_q_net = in_2;
  assign register2_q_net = in_3;
  assign register3_q_net = in_4;
  assign register4_q_net = in_5;
  assign register5_q_net = in_6;
  assign register6_q_net = in_7;
  assign register7_q_net = in_8;
  assign register8_q_net = in_9;
  assign register9_q_net = in_10;
  assign register10_q_net = in_11;
  assign register11_q_net = in_12;
  assign register12_q_net = in_13;
  assign register13_q_net = in_14;
  assign src_clk_net = clk_1;
  assign src_ce_net = ce_1;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_3dof_plus_xldsamp #(
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
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample0_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample1_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample2_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample3_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample4 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register4_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample4_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample5 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register5_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample5_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample6 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register6_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample6_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample7 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register7_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample7_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample8 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register8_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample8_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample9 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register9_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample9_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample10 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register10_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample10_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample11 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register11_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample11_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample12 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register12_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample12_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  downsample13 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register13_q_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(downsample13_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Vector Mux
module fpga_kf_3dof_plus_vector_mux (
  input [1-1:0] sel,
  input [25-1:0] i0_1,
  input [25-1:0] i1_1,
  input [25-1:0] i0_2,
  input [25-1:0] i0_3,
  input [25-1:0] i0_4,
  input [25-1:0] i0_5,
  input [25-1:0] i0_6,
  input [25-1:0] i0_7,
  input [25-1:0] i0_8,
  input [25-1:0] i0_9,
  input [25-1:0] i0_10,
  input [25-1:0] i0_11,
  input [25-1:0] i0_12,
  input [25-1:0] i0_13,
  input [25-1:0] i0_14,
  input [25-1:0] i0_15,
  input [25-1:0] i0_16,
  input [25-1:0] i0_17,
  input [25-1:0] i0_18,
  input [25-1:0] i0_19,
  input [25-1:0] i0_20,
  input [25-1:0] i0_21,
  input [25-1:0] i0_22,
  input [25-1:0] i0_23,
  input [25-1:0] i0_24,
  input [25-1:0] i0_25,
  input [25-1:0] i0_26,
  input [25-1:0] i0_27,
  input [25-1:0] i0_28,
  input [25-1:0] i0_29,
  input [25-1:0] i0_30,
  input [25-1:0] i0_31,
  input [25-1:0] i0_32,
  input [25-1:0] i0_33,
  input [25-1:0] i0_34,
  input [25-1:0] i0_35,
  input [25-1:0] i0_36,
  input [25-1:0] i0_37,
  input [25-1:0] i0_38,
  input [25-1:0] i0_39,
  input [25-1:0] i0_40,
  input [25-1:0] i0_41,
  input [25-1:0] i0_42,
  input [25-1:0] i0_43,
  input [25-1:0] i0_44,
  input [25-1:0] i0_45,
  input [25-1:0] i0_46,
  input [25-1:0] i0_47,
  input [25-1:0] i0_48,
  input [25-1:0] i0_49,
  input [25-1:0] i1_2,
  input [25-1:0] i1_3,
  input [25-1:0] i1_4,
  input [25-1:0] i1_5,
  input [25-1:0] i1_6,
  input [25-1:0] i1_7,
  input [25-1:0] i1_8,
  input [25-1:0] i1_9,
  input [25-1:0] i1_10,
  input [25-1:0] i1_11,
  input [25-1:0] i1_12,
  input [25-1:0] i1_13,
  input [25-1:0] i1_14,
  input [25-1:0] i1_15,
  input [25-1:0] i1_16,
  input [25-1:0] i1_17,
  input [25-1:0] i1_18,
  input [25-1:0] i1_19,
  input [25-1:0] i1_20,
  input [25-1:0] i1_21,
  input [25-1:0] i1_22,
  input [25-1:0] i1_23,
  input [25-1:0] i1_24,
  input [25-1:0] i1_25,
  input [25-1:0] i1_26,
  input [25-1:0] i1_27,
  input [25-1:0] i1_28,
  input [25-1:0] i1_29,
  input [25-1:0] i1_30,
  input [25-1:0] i1_31,
  input [25-1:0] i1_32,
  input [25-1:0] i1_33,
  input [25-1:0] i1_34,
  input [25-1:0] i1_35,
  input [25-1:0] i1_36,
  input [25-1:0] i1_37,
  input [25-1:0] i1_38,
  input [25-1:0] i1_39,
  input [25-1:0] i1_40,
  input [25-1:0] i1_41,
  input [25-1:0] i1_42,
  input [25-1:0] i1_43,
  input [25-1:0] i1_44,
  input [25-1:0] i1_45,
  input [25-1:0] i1_46,
  input [25-1:0] i1_47,
  input [25-1:0] i1_48,
  input [25-1:0] i1_49,
  input clk_4,
  input ce_4,
  output [25-1:0] o_1,
  output [25-1:0] o_2,
  output [25-1:0] o_3,
  output [25-1:0] o_4,
  output [25-1:0] o_5,
  output [25-1:0] o_6,
  output [25-1:0] o_7,
  output [25-1:0] o_8,
  output [25-1:0] o_9,
  output [25-1:0] o_10,
  output [25-1:0] o_11,
  output [25-1:0] o_12,
  output [25-1:0] o_13,
  output [25-1:0] o_14,
  output [25-1:0] o_15,
  output [25-1:0] o_16,
  output [25-1:0] o_17,
  output [25-1:0] o_18,
  output [25-1:0] o_19,
  output [25-1:0] o_20,
  output [25-1:0] o_21,
  output [25-1:0] o_22,
  output [25-1:0] o_23,
  output [25-1:0] o_24,
  output [25-1:0] o_25,
  output [25-1:0] o_26,
  output [25-1:0] o_27,
  output [25-1:0] o_28,
  output [25-1:0] o_29,
  output [25-1:0] o_30,
  output [25-1:0] o_31,
  output [25-1:0] o_32,
  output [25-1:0] o_33,
  output [25-1:0] o_34,
  output [25-1:0] o_35,
  output [25-1:0] o_36,
  output [25-1:0] o_37,
  output [25-1:0] o_38,
  output [25-1:0] o_39,
  output [25-1:0] o_40,
  output [25-1:0] o_41,
  output [25-1:0] o_42,
  output [25-1:0] o_43,
  output [25-1:0] o_44,
  output [25-1:0] o_45,
  output [25-1:0] o_46,
  output [25-1:0] o_47,
  output [25-1:0] o_48,
  output [25-1:0] o_49
);
  wire [25-1:0] downsample40_q_net;
  wire [25-1:0] downsample41_q_net;
  wire ce_net;
  wire [25-1:0] downsample47_q_net;
  wire clk_net;
  wire [25-1:0] downsample43_q_net;
  wire [25-1:0] downsample39_q_net;
  wire [25-1:0] downsample44_q_net;
  wire [25-1:0] downsample45_q_net;
  wire [25-1:0] downsample48_q_net;
  wire [25-1:0] downsample42_q_net;
  wire [25-1:0] downsample46_q_net;
  wire [25-1:0] mux8_y_net;
  wire [25-1:0] mux10_y_net;
  wire [25-1:0] mux9_y_net;
  wire [25-1:0] mux3_y_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] mux0_y_net;
  wire [25-1:0] mux2_y_net;
  wire [25-1:0] mux4_y_net;
  wire [25-1:0] mux5_y_net;
  wire [25-1:0] mux6_y_net;
  wire [25-1:0] mux7_y_net;
  wire [25-1:0] mux27_y_net;
  wire [25-1:0] mux13_y_net;
  wire [25-1:0] mux21_y_net;
  wire [25-1:0] mux19_y_net;
  wire [25-1:0] mux28_y_net;
  wire [25-1:0] mux23_y_net;
  wire [25-1:0] mux31_y_net;
  wire [25-1:0] mux32_y_net;
  wire [25-1:0] mux34_y_net;
  wire [25-1:0] mux29_y_net;
  wire [25-1:0] mux22_y_net;
  wire [25-1:0] mux33_y_net;
  wire [25-1:0] mux26_y_net;
  wire [25-1:0] mux20_y_net;
  wire [25-1:0] mux35_y_net;
  wire [25-1:0] mux36_y_net;
  wire [25-1:0] mux14_y_net;
  wire [25-1:0] mux18_y_net;
  wire [25-1:0] mux30_y_net;
  wire [25-1:0] mux37_y_net;
  wire [25-1:0] mux38_y_net;
  wire [25-1:0] mux39_y_net;
  wire [25-1:0] mux12_y_net;
  wire [25-1:0] mux40_y_net;
  wire [25-1:0] mux41_y_net;
  wire [25-1:0] mux42_y_net;
  wire [25-1:0] mux16_y_net;
  wire [25-1:0] mux11_y_net;
  wire [25-1:0] mux17_y_net;
  wire [25-1:0] mux15_y_net;
  wire [25-1:0] mux24_y_net;
  wire [25-1:0] mux25_y_net;
  wire [25-1:0] downsample13_q_net_x0;
  wire [25-1:0] mux46_y_net;
  wire [25-1:0] downsample3_q_net_x0;
  wire [25-1:0] downsample0_q_net;
  wire [25-1:0] downsample4_q_net_x0;
  wire [25-1:0] downsample0_q_net_x0;
  wire [25-1:0] downsample17_q_net_x0;
  wire [25-1:0] downsample10_q_net_x0;
  wire [25-1:0] downsample14_q_net_x0;
  wire [25-1:0] mux44_y_net;
  wire [25-1:0] mux48_y_net;
  wire [25-1:0] downsample1_q_net_x0;
  wire [25-1:0] downsample8_q_net_x0;
  wire [25-1:0] mux47_y_net;
  wire [1-1:0] down_sample1_q_net;
  wire [25-1:0] downsample19_q_net_x0;
  wire [25-1:0] downsample22_q_net_x0;
  wire [25-1:0] downsample9_q_net_x0;
  wire [25-1:0] downsample12_q_net_x0;
  wire [25-1:0] downsample5_q_net_x0;
  wire [25-1:0] downsample20_q_net_x0;
  wire [25-1:0] downsample21_q_net_x0;
  wire [25-1:0] downsample16_q_net_x0;
  wire [25-1:0] downsample15_q_net_x0;
  wire [25-1:0] downsample2_q_net_x0;
  wire [25-1:0] downsample18_q_net_x0;
  wire [25-1:0] downsample7_q_net_x0;
  wire [25-1:0] downsample23_q_net_x0;
  wire [25-1:0] downsample6_q_net_x0;
  wire [25-1:0] mux45_y_net;
  wire [25-1:0] mux43_y_net;
  wire [25-1:0] downsample11_q_net_x0;
  wire [25-1:0] downsample28_q_net_x0;
  wire [25-1:0] downsample39_q_net_x0;
  wire [25-1:0] downsample3_q_net;
  wire [25-1:0] downsample26_q_net_x0;
  wire [25-1:0] downsample27_q_net_x0;
  wire [25-1:0] downsample47_q_net_x0;
  wire [25-1:0] downsample31_q_net_x0;
  wire [25-1:0] downsample7_q_net;
  wire [25-1:0] downsample45_q_net_x0;
  wire [25-1:0] downsample25_q_net_x0;
  wire [25-1:0] downsample38_q_net_x0;
  wire [25-1:0] downsample33_q_net_x0;
  wire [25-1:0] downsample32_q_net_x0;
  wire [25-1:0] downsample36_q_net_x0;
  wire [25-1:0] downsample2_q_net;
  wire [25-1:0] downsample40_q_net_x0;
  wire [25-1:0] downsample37_q_net_x0;
  wire [25-1:0] downsample41_q_net_x0;
  wire [25-1:0] downsample30_q_net_x0;
  wire [25-1:0] downsample42_q_net_x0;
  wire [25-1:0] downsample44_q_net_x0;
  wire [25-1:0] downsample4_q_net;
  wire [25-1:0] downsample6_q_net;
  wire [25-1:0] downsample35_q_net_x0;
  wire [25-1:0] downsample46_q_net_x0;
  wire [25-1:0] downsample24_q_net_x0;
  wire [25-1:0] downsample34_q_net_x0;
  wire [25-1:0] downsample5_q_net;
  wire [25-1:0] downsample29_q_net_x0;
  wire [25-1:0] downsample48_q_net_x0;
  wire [25-1:0] downsample1_q_net;
  wire [25-1:0] downsample43_q_net_x0;
  wire [25-1:0] downsample23_q_net;
  wire [25-1:0] downsample30_q_net;
  wire [25-1:0] downsample14_q_net;
  wire [25-1:0] downsample11_q_net;
  wire [25-1:0] downsample12_q_net;
  wire [25-1:0] downsample38_q_net;
  wire [25-1:0] downsample9_q_net;
  wire [25-1:0] downsample24_q_net;
  wire [25-1:0] downsample32_q_net;
  wire [25-1:0] downsample17_q_net;
  wire [25-1:0] downsample28_q_net;
  wire [25-1:0] downsample36_q_net;
  wire [25-1:0] downsample25_q_net;
  wire [25-1:0] downsample18_q_net;
  wire [25-1:0] downsample10_q_net;
  wire [25-1:0] downsample29_q_net;
  wire [25-1:0] downsample33_q_net;
  wire [25-1:0] downsample34_q_net;
  wire [25-1:0] downsample35_q_net;
  wire [25-1:0] downsample31_q_net;
  wire [25-1:0] downsample37_q_net;
  wire [25-1:0] downsample20_q_net;
  wire [25-1:0] downsample27_q_net;
  wire [25-1:0] downsample13_q_net;
  wire [25-1:0] downsample19_q_net;
  wire [25-1:0] downsample21_q_net;
  wire [25-1:0] downsample8_q_net;
  wire [25-1:0] downsample15_q_net;
  wire [25-1:0] downsample16_q_net;
  wire [25-1:0] downsample22_q_net;
  wire [25-1:0] downsample26_q_net;
  assign o_1 = mux0_y_net;
  assign o_2 = mux1_y_net;
  assign o_3 = mux2_y_net;
  assign o_4 = mux3_y_net;
  assign o_5 = mux4_y_net;
  assign o_6 = mux5_y_net;
  assign o_7 = mux6_y_net;
  assign o_8 = mux7_y_net;
  assign o_9 = mux8_y_net;
  assign o_10 = mux9_y_net;
  assign o_11 = mux10_y_net;
  assign o_12 = mux11_y_net;
  assign o_13 = mux12_y_net;
  assign o_14 = mux13_y_net;
  assign o_15 = mux14_y_net;
  assign o_16 = mux15_y_net;
  assign o_17 = mux16_y_net;
  assign o_18 = mux17_y_net;
  assign o_19 = mux18_y_net;
  assign o_20 = mux19_y_net;
  assign o_21 = mux20_y_net;
  assign o_22 = mux21_y_net;
  assign o_23 = mux22_y_net;
  assign o_24 = mux23_y_net;
  assign o_25 = mux24_y_net;
  assign o_26 = mux25_y_net;
  assign o_27 = mux26_y_net;
  assign o_28 = mux27_y_net;
  assign o_29 = mux28_y_net;
  assign o_30 = mux29_y_net;
  assign o_31 = mux30_y_net;
  assign o_32 = mux31_y_net;
  assign o_33 = mux32_y_net;
  assign o_34 = mux33_y_net;
  assign o_35 = mux34_y_net;
  assign o_36 = mux35_y_net;
  assign o_37 = mux36_y_net;
  assign o_38 = mux37_y_net;
  assign o_39 = mux38_y_net;
  assign o_40 = mux39_y_net;
  assign o_41 = mux40_y_net;
  assign o_42 = mux41_y_net;
  assign o_43 = mux42_y_net;
  assign o_44 = mux43_y_net;
  assign o_45 = mux44_y_net;
  assign o_46 = mux45_y_net;
  assign o_47 = mux46_y_net;
  assign o_48 = mux47_y_net;
  assign o_49 = mux48_y_net;
  assign down_sample1_q_net = sel;
  assign downsample0_q_net_x0 = i0_1;
  assign downsample0_q_net = i1_1;
  assign downsample1_q_net_x0 = i0_2;
  assign downsample2_q_net_x0 = i0_3;
  assign downsample3_q_net_x0 = i0_4;
  assign downsample4_q_net_x0 = i0_5;
  assign downsample5_q_net_x0 = i0_6;
  assign downsample6_q_net_x0 = i0_7;
  assign downsample7_q_net_x0 = i0_8;
  assign downsample8_q_net_x0 = i0_9;
  assign downsample9_q_net_x0 = i0_10;
  assign downsample10_q_net_x0 = i0_11;
  assign downsample11_q_net_x0 = i0_12;
  assign downsample12_q_net_x0 = i0_13;
  assign downsample13_q_net_x0 = i0_14;
  assign downsample14_q_net_x0 = i0_15;
  assign downsample15_q_net_x0 = i0_16;
  assign downsample16_q_net_x0 = i0_17;
  assign downsample17_q_net_x0 = i0_18;
  assign downsample18_q_net_x0 = i0_19;
  assign downsample19_q_net_x0 = i0_20;
  assign downsample20_q_net_x0 = i0_21;
  assign downsample21_q_net_x0 = i0_22;
  assign downsample22_q_net_x0 = i0_23;
  assign downsample23_q_net_x0 = i0_24;
  assign downsample24_q_net_x0 = i0_25;
  assign downsample25_q_net_x0 = i0_26;
  assign downsample26_q_net_x0 = i0_27;
  assign downsample27_q_net_x0 = i0_28;
  assign downsample28_q_net_x0 = i0_29;
  assign downsample29_q_net_x0 = i0_30;
  assign downsample30_q_net_x0 = i0_31;
  assign downsample31_q_net_x0 = i0_32;
  assign downsample32_q_net_x0 = i0_33;
  assign downsample33_q_net_x0 = i0_34;
  assign downsample34_q_net_x0 = i0_35;
  assign downsample35_q_net_x0 = i0_36;
  assign downsample36_q_net_x0 = i0_37;
  assign downsample37_q_net_x0 = i0_38;
  assign downsample38_q_net_x0 = i0_39;
  assign downsample39_q_net_x0 = i0_40;
  assign downsample40_q_net_x0 = i0_41;
  assign downsample41_q_net_x0 = i0_42;
  assign downsample42_q_net_x0 = i0_43;
  assign downsample43_q_net_x0 = i0_44;
  assign downsample44_q_net_x0 = i0_45;
  assign downsample45_q_net_x0 = i0_46;
  assign downsample46_q_net_x0 = i0_47;
  assign downsample47_q_net_x0 = i0_48;
  assign downsample48_q_net_x0 = i0_49;
  assign downsample1_q_net = i1_2;
  assign downsample2_q_net = i1_3;
  assign downsample3_q_net = i1_4;
  assign downsample4_q_net = i1_5;
  assign downsample5_q_net = i1_6;
  assign downsample6_q_net = i1_7;
  assign downsample7_q_net = i1_8;
  assign downsample8_q_net = i1_9;
  assign downsample9_q_net = i1_10;
  assign downsample10_q_net = i1_11;
  assign downsample11_q_net = i1_12;
  assign downsample12_q_net = i1_13;
  assign downsample13_q_net = i1_14;
  assign downsample14_q_net = i1_15;
  assign downsample15_q_net = i1_16;
  assign downsample16_q_net = i1_17;
  assign downsample17_q_net = i1_18;
  assign downsample18_q_net = i1_19;
  assign downsample19_q_net = i1_20;
  assign downsample20_q_net = i1_21;
  assign downsample21_q_net = i1_22;
  assign downsample22_q_net = i1_23;
  assign downsample23_q_net = i1_24;
  assign downsample24_q_net = i1_25;
  assign downsample25_q_net = i1_26;
  assign downsample26_q_net = i1_27;
  assign downsample27_q_net = i1_28;
  assign downsample28_q_net = i1_29;
  assign downsample29_q_net = i1_30;
  assign downsample30_q_net = i1_31;
  assign downsample31_q_net = i1_32;
  assign downsample32_q_net = i1_33;
  assign downsample33_q_net = i1_34;
  assign downsample34_q_net = i1_35;
  assign downsample35_q_net = i1_36;
  assign downsample36_q_net = i1_37;
  assign downsample37_q_net = i1_38;
  assign downsample38_q_net = i1_39;
  assign downsample39_q_net = i1_40;
  assign downsample40_q_net = i1_41;
  assign downsample41_q_net = i1_42;
  assign downsample42_q_net = i1_43;
  assign downsample43_q_net = i1_44;
  assign downsample44_q_net = i1_45;
  assign downsample45_q_net = i1_46;
  assign downsample46_q_net = i1_47;
  assign downsample47_q_net = i1_48;
  assign downsample48_q_net = i1_49;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_mux_9d27a008ef mux0 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample0_q_net_x0),
    .d1(downsample0_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux0_y_net)
  );
  sysgen_mux_9d27a008ef mux1 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample1_q_net_x0),
    .d1(downsample1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux1_y_net)
  );
  sysgen_mux_9d27a008ef mux2 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample2_q_net_x0),
    .d1(downsample2_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux2_y_net)
  );
  sysgen_mux_9d27a008ef mux3 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample3_q_net_x0),
    .d1(downsample3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux3_y_net)
  );
  sysgen_mux_9d27a008ef mux4 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample4_q_net_x0),
    .d1(downsample4_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux4_y_net)
  );
  sysgen_mux_9d27a008ef mux5 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample5_q_net_x0),
    .d1(downsample5_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux5_y_net)
  );
  sysgen_mux_9d27a008ef mux6 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample6_q_net_x0),
    .d1(downsample6_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux6_y_net)
  );
  sysgen_mux_9d27a008ef mux7 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample7_q_net_x0),
    .d1(downsample7_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux7_y_net)
  );
  sysgen_mux_9d27a008ef mux8 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample8_q_net_x0),
    .d1(downsample8_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux8_y_net)
  );
  sysgen_mux_9d27a008ef mux9 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample9_q_net_x0),
    .d1(downsample9_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux9_y_net)
  );
  sysgen_mux_9d27a008ef mux10 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample10_q_net_x0),
    .d1(downsample10_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux10_y_net)
  );
  sysgen_mux_9d27a008ef mux11 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample11_q_net_x0),
    .d1(downsample11_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux11_y_net)
  );
  sysgen_mux_9d27a008ef mux12 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample12_q_net_x0),
    .d1(downsample12_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux12_y_net)
  );
  sysgen_mux_9d27a008ef mux13 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample13_q_net_x0),
    .d1(downsample13_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux13_y_net)
  );
  sysgen_mux_9d27a008ef mux14 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample14_q_net_x0),
    .d1(downsample14_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux14_y_net)
  );
  sysgen_mux_9d27a008ef mux15 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample15_q_net_x0),
    .d1(downsample15_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux15_y_net)
  );
  sysgen_mux_9d27a008ef mux16 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample16_q_net_x0),
    .d1(downsample16_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux16_y_net)
  );
  sysgen_mux_9d27a008ef mux17 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample17_q_net_x0),
    .d1(downsample17_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux17_y_net)
  );
  sysgen_mux_9d27a008ef mux18 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample18_q_net_x0),
    .d1(downsample18_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux18_y_net)
  );
  sysgen_mux_9d27a008ef mux19 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample19_q_net_x0),
    .d1(downsample19_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux19_y_net)
  );
  sysgen_mux_9d27a008ef mux20 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample20_q_net_x0),
    .d1(downsample20_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux20_y_net)
  );
  sysgen_mux_9d27a008ef mux21 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample21_q_net_x0),
    .d1(downsample21_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux21_y_net)
  );
  sysgen_mux_9d27a008ef mux22 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample22_q_net_x0),
    .d1(downsample22_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux22_y_net)
  );
  sysgen_mux_9d27a008ef mux23 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample23_q_net_x0),
    .d1(downsample23_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux23_y_net)
  );
  sysgen_mux_9d27a008ef mux24 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample24_q_net_x0),
    .d1(downsample24_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux24_y_net)
  );
  sysgen_mux_9d27a008ef mux25 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample25_q_net_x0),
    .d1(downsample25_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux25_y_net)
  );
  sysgen_mux_9d27a008ef mux26 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample26_q_net_x0),
    .d1(downsample26_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux26_y_net)
  );
  sysgen_mux_9d27a008ef mux27 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample27_q_net_x0),
    .d1(downsample27_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux27_y_net)
  );
  sysgen_mux_9d27a008ef mux28 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample28_q_net_x0),
    .d1(downsample28_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux28_y_net)
  );
  sysgen_mux_9d27a008ef mux29 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample29_q_net_x0),
    .d1(downsample29_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux29_y_net)
  );
  sysgen_mux_9d27a008ef mux30 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample30_q_net_x0),
    .d1(downsample30_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux30_y_net)
  );
  sysgen_mux_9d27a008ef mux31 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample31_q_net_x0),
    .d1(downsample31_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux31_y_net)
  );
  sysgen_mux_9d27a008ef mux32 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample32_q_net_x0),
    .d1(downsample32_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux32_y_net)
  );
  sysgen_mux_9d27a008ef mux33 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample33_q_net_x0),
    .d1(downsample33_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux33_y_net)
  );
  sysgen_mux_9d27a008ef mux34 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample34_q_net_x0),
    .d1(downsample34_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux34_y_net)
  );
  sysgen_mux_9d27a008ef mux35 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample35_q_net_x0),
    .d1(downsample35_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux35_y_net)
  );
  sysgen_mux_9d27a008ef mux36 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample36_q_net_x0),
    .d1(downsample36_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux36_y_net)
  );
  sysgen_mux_9d27a008ef mux37 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample37_q_net_x0),
    .d1(downsample37_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux37_y_net)
  );
  sysgen_mux_9d27a008ef mux38 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample38_q_net_x0),
    .d1(downsample38_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux38_y_net)
  );
  sysgen_mux_9d27a008ef mux39 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample39_q_net_x0),
    .d1(downsample39_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux39_y_net)
  );
  sysgen_mux_9d27a008ef mux40 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample40_q_net_x0),
    .d1(downsample40_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux40_y_net)
  );
  sysgen_mux_9d27a008ef mux41 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample41_q_net_x0),
    .d1(downsample41_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux41_y_net)
  );
  sysgen_mux_9d27a008ef mux42 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample42_q_net_x0),
    .d1(downsample42_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux42_y_net)
  );
  sysgen_mux_9d27a008ef mux43 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample43_q_net_x0),
    .d1(downsample43_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux43_y_net)
  );
  sysgen_mux_9d27a008ef mux44 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample44_q_net_x0),
    .d1(downsample44_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux44_y_net)
  );
  sysgen_mux_9d27a008ef mux45 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample45_q_net_x0),
    .d1(downsample45_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux45_y_net)
  );
  sysgen_mux_9d27a008ef mux46 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample46_q_net_x0),
    .d1(downsample46_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux46_y_net)
  );
  sysgen_mux_9d27a008ef mux47 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample47_q_net_x0),
    .d1(downsample47_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux47_y_net)
  );
  sysgen_mux_9d27a008ef mux48 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample48_q_net_x0),
    .d1(downsample48_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux48_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Vector Mux1
module fpga_kf_3dof_plus_vector_mux1 (
  input [1-1:0] sel,
  input [25-1:0] i0_1,
  input [25-1:0] i1_1,
  input [25-1:0] i0_2,
  input [25-1:0] i0_3,
  input [25-1:0] i0_4,
  input [25-1:0] i0_5,
  input [25-1:0] i0_6,
  input [25-1:0] i0_7,
  input [25-1:0] i0_8,
  input [25-1:0] i0_9,
  input [25-1:0] i0_10,
  input [25-1:0] i0_11,
  input [25-1:0] i0_12,
  input [25-1:0] i0_13,
  input [25-1:0] i0_14,
  input [25-1:0] i1_2,
  input [25-1:0] i1_3,
  input [25-1:0] i1_4,
  input [25-1:0] i1_5,
  input [25-1:0] i1_6,
  input [25-1:0] i1_7,
  input [25-1:0] i1_8,
  input [25-1:0] i1_9,
  input [25-1:0] i1_10,
  input [25-1:0] i1_11,
  input [25-1:0] i1_12,
  input [25-1:0] i1_13,
  input [25-1:0] i1_14,
  input clk_4,
  input ce_4,
  output [25-1:0] o_1,
  output [25-1:0] o_2,
  output [25-1:0] o_3,
  output [25-1:0] o_4,
  output [25-1:0] o_5,
  output [25-1:0] o_6,
  output [25-1:0] o_7,
  output [25-1:0] o_8,
  output [25-1:0] o_9,
  output [25-1:0] o_10,
  output [25-1:0] o_11,
  output [25-1:0] o_12,
  output [25-1:0] o_13,
  output [25-1:0] o_14
);
  wire [25-1:0] mux0_y_net;
  wire [25-1:0] mux3_y_net;
  wire [25-1:0] mux4_y_net;
  wire [25-1:0] mux5_y_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] mux2_y_net;
  wire [25-1:0] mux6_y_net;
  wire [25-1:0] mux7_y_net;
  wire [25-1:0] downsample5_q_net_x0;
  wire [25-1:0] downsample10_q_net;
  wire [25-1:0] downsample0_q_net_x0;
  wire [25-1:0] mux12_y_net;
  wire [25-1:0] mux8_y_net;
  wire [25-1:0] downsample13_q_net;
  wire [25-1:0] downsample7_q_net_x0;
  wire [25-1:0] downsample2_q_net;
  wire [25-1:0] downsample10_q_net_x0;
  wire [1-1:0] down_sample1_q_net;
  wire [25-1:0] downsample1_q_net_x0;
  wire [25-1:0] mux9_y_net;
  wire [25-1:0] mux10_y_net;
  wire [25-1:0] downsample1_q_net;
  wire [25-1:0] downsample9_q_net;
  wire [25-1:0] downsample3_q_net;
  wire [25-1:0] downsample6_q_net;
  wire [25-1:0] downsample4_q_net;
  wire [25-1:0] downsample8_q_net;
  wire [25-1:0] downsample0_q_net;
  wire [25-1:0] downsample2_q_net_x0;
  wire [25-1:0] mux13_y_net;
  wire [25-1:0] downsample6_q_net_x0;
  wire [25-1:0] mux11_y_net;
  wire [25-1:0] downsample7_q_net;
  wire [25-1:0] downsample4_q_net_x0;
  wire [25-1:0] downsample5_q_net;
  wire [25-1:0] downsample8_q_net_x0;
  wire [25-1:0] downsample9_q_net_x0;
  wire [25-1:0] downsample11_q_net;
  wire [25-1:0] downsample3_q_net_x0;
  wire [25-1:0] downsample12_q_net;
  wire clk_net;
  wire [25-1:0] downsample11_q_net_x0;
  wire [25-1:0] downsample13_q_net_x0;
  wire [25-1:0] downsample12_q_net_x0;
  wire ce_net;
  assign o_1 = mux0_y_net;
  assign o_2 = mux1_y_net;
  assign o_3 = mux2_y_net;
  assign o_4 = mux3_y_net;
  assign o_5 = mux4_y_net;
  assign o_6 = mux5_y_net;
  assign o_7 = mux6_y_net;
  assign o_8 = mux7_y_net;
  assign o_9 = mux8_y_net;
  assign o_10 = mux9_y_net;
  assign o_11 = mux10_y_net;
  assign o_12 = mux11_y_net;
  assign o_13 = mux12_y_net;
  assign o_14 = mux13_y_net;
  assign down_sample1_q_net = sel;
  assign downsample0_q_net = i0_1;
  assign downsample0_q_net_x0 = i1_1;
  assign downsample1_q_net = i0_2;
  assign downsample2_q_net = i0_3;
  assign downsample3_q_net = i0_4;
  assign downsample4_q_net = i0_5;
  assign downsample5_q_net = i0_6;
  assign downsample6_q_net = i0_7;
  assign downsample7_q_net = i0_8;
  assign downsample8_q_net = i0_9;
  assign downsample9_q_net = i0_10;
  assign downsample10_q_net = i0_11;
  assign downsample11_q_net = i0_12;
  assign downsample12_q_net = i0_13;
  assign downsample13_q_net = i0_14;
  assign downsample1_q_net_x0 = i1_2;
  assign downsample2_q_net_x0 = i1_3;
  assign downsample3_q_net_x0 = i1_4;
  assign downsample4_q_net_x0 = i1_5;
  assign downsample5_q_net_x0 = i1_6;
  assign downsample6_q_net_x0 = i1_7;
  assign downsample7_q_net_x0 = i1_8;
  assign downsample8_q_net_x0 = i1_9;
  assign downsample9_q_net_x0 = i1_10;
  assign downsample10_q_net_x0 = i1_11;
  assign downsample11_q_net_x0 = i1_12;
  assign downsample12_q_net_x0 = i1_13;
  assign downsample13_q_net_x0 = i1_14;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_mux_9d27a008ef mux0 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample0_q_net),
    .d1(downsample0_q_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux0_y_net)
  );
  sysgen_mux_9d27a008ef mux1 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample1_q_net),
    .d1(downsample1_q_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux1_y_net)
  );
  sysgen_mux_9d27a008ef mux2 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample2_q_net),
    .d1(downsample2_q_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux2_y_net)
  );
  sysgen_mux_9d27a008ef mux3 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample3_q_net),
    .d1(downsample3_q_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux3_y_net)
  );
  sysgen_mux_9d27a008ef mux4 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample4_q_net),
    .d1(downsample4_q_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux4_y_net)
  );
  sysgen_mux_9d27a008ef mux5 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample5_q_net),
    .d1(downsample5_q_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux5_y_net)
  );
  sysgen_mux_9d27a008ef mux6 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample6_q_net),
    .d1(downsample6_q_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux6_y_net)
  );
  sysgen_mux_9d27a008ef mux7 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample7_q_net),
    .d1(downsample7_q_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux7_y_net)
  );
  sysgen_mux_9d27a008ef mux8 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample8_q_net),
    .d1(downsample8_q_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux8_y_net)
  );
  sysgen_mux_9d27a008ef mux9 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample9_q_net),
    .d1(downsample9_q_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux9_y_net)
  );
  sysgen_mux_9d27a008ef mux10 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample10_q_net),
    .d1(downsample10_q_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux10_y_net)
  );
  sysgen_mux_9d27a008ef mux11 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample11_q_net),
    .d1(downsample11_q_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux11_y_net)
  );
  sysgen_mux_9d27a008ef mux12 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample12_q_net),
    .d1(downsample12_q_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux12_y_net)
  );
  sysgen_mux_9d27a008ef mux13 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample13_q_net),
    .d1(downsample13_q_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux13_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Vector Mux2
module fpga_kf_3dof_plus_vector_mux2 (
  input [1-1:0] sel,
  input [25-1:0] i0_1,
  input [25-1:0] i1_1,
  input [25-1:0] i0_2,
  input [25-1:0] i0_3,
  input [25-1:0] i0_4,
  input [25-1:0] i0_5,
  input [25-1:0] i0_6,
  input [25-1:0] i0_7,
  input [25-1:0] i0_8,
  input [25-1:0] i0_9,
  input [25-1:0] i0_10,
  input [25-1:0] i0_11,
  input [25-1:0] i0_12,
  input [25-1:0] i0_13,
  input [25-1:0] i0_14,
  input [25-1:0] i1_2,
  input [25-1:0] i1_3,
  input [25-1:0] i1_4,
  input [25-1:0] i1_5,
  input [25-1:0] i1_6,
  input [25-1:0] i1_7,
  input [25-1:0] i1_8,
  input [25-1:0] i1_9,
  input [25-1:0] i1_10,
  input [25-1:0] i1_11,
  input [25-1:0] i1_12,
  input [25-1:0] i1_13,
  input [25-1:0] i1_14,
  input clk_4,
  input ce_4,
  output [25-1:0] o_1,
  output [25-1:0] o_2,
  output [25-1:0] o_3,
  output [25-1:0] o_4,
  output [25-1:0] o_5,
  output [25-1:0] o_6,
  output [25-1:0] o_7,
  output [25-1:0] o_8,
  output [25-1:0] o_9,
  output [25-1:0] o_10,
  output [25-1:0] o_11,
  output [25-1:0] o_12,
  output [25-1:0] o_13,
  output [25-1:0] o_14
);
  wire [25-1:0] mux5_y_net;
  wire [25-1:0] mux0_y_net;
  wire [25-1:0] mux8_y_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] mux3_y_net;
  wire [25-1:0] mux4_y_net;
  wire [25-1:0] mux2_y_net;
  wire [25-1:0] mux6_y_net;
  wire [25-1:0] mux7_y_net;
  wire [25-1:0] downsample3_q_net_x0;
  wire [25-1:0] downsample4_q_net;
  wire [1-1:0] down_sample1_q_net;
  wire [25-1:0] downsample1_q_net;
  wire [25-1:0] downsample2_q_net_x0;
  wire [25-1:0] downsample10_q_net_x0;
  wire [25-1:0] downsample6_q_net_x0;
  wire [25-1:0] downsample9_q_net_x0;
  wire [25-1:0] downsample4_q_net_x0;
  wire [25-1:0] downsample2_q_net;
  wire [25-1:0] mux13_y_net;
  wire [25-1:0] downsample7_q_net_x0;
  wire [25-1:0] downsample5_q_net;
  wire [25-1:0] downsample6_q_net;
  wire [25-1:0] downsample8_q_net;
  wire [25-1:0] downsample13_q_net_x0;
  wire [25-1:0] downsample9_q_net;
  wire [25-1:0] mux9_y_net;
  wire [25-1:0] downsample10_q_net;
  wire [25-1:0] downsample5_q_net_x0;
  wire [25-1:0] downsample7_q_net;
  wire [25-1:0] downsample1_q_net_x0;
  wire [25-1:0] downsample12_q_net_x0;
  wire [25-1:0] downsample0_q_net_x0;
  wire [25-1:0] downsample11_q_net;
  wire [25-1:0] mux11_y_net;
  wire [25-1:0] mux10_y_net;
  wire [25-1:0] downsample8_q_net_x0;
  wire [25-1:0] mux12_y_net;
  wire [25-1:0] downsample11_q_net_x0;
  wire [25-1:0] downsample0_q_net;
  wire [25-1:0] downsample3_q_net;
  wire ce_net;
  wire [25-1:0] downsample13_q_net;
  wire clk_net;
  wire [25-1:0] downsample12_q_net;
  assign o_1 = mux0_y_net;
  assign o_2 = mux1_y_net;
  assign o_3 = mux2_y_net;
  assign o_4 = mux3_y_net;
  assign o_5 = mux4_y_net;
  assign o_6 = mux5_y_net;
  assign o_7 = mux6_y_net;
  assign o_8 = mux7_y_net;
  assign o_9 = mux8_y_net;
  assign o_10 = mux9_y_net;
  assign o_11 = mux10_y_net;
  assign o_12 = mux11_y_net;
  assign o_13 = mux12_y_net;
  assign o_14 = mux13_y_net;
  assign down_sample1_q_net = sel;
  assign downsample0_q_net_x0 = i0_1;
  assign downsample0_q_net = i1_1;
  assign downsample1_q_net_x0 = i0_2;
  assign downsample2_q_net_x0 = i0_3;
  assign downsample3_q_net_x0 = i0_4;
  assign downsample4_q_net_x0 = i0_5;
  assign downsample5_q_net_x0 = i0_6;
  assign downsample6_q_net_x0 = i0_7;
  assign downsample7_q_net_x0 = i0_8;
  assign downsample8_q_net_x0 = i0_9;
  assign downsample9_q_net_x0 = i0_10;
  assign downsample10_q_net_x0 = i0_11;
  assign downsample11_q_net_x0 = i0_12;
  assign downsample12_q_net_x0 = i0_13;
  assign downsample13_q_net_x0 = i0_14;
  assign downsample1_q_net = i1_2;
  assign downsample2_q_net = i1_3;
  assign downsample3_q_net = i1_4;
  assign downsample4_q_net = i1_5;
  assign downsample5_q_net = i1_6;
  assign downsample6_q_net = i1_7;
  assign downsample7_q_net = i1_8;
  assign downsample8_q_net = i1_9;
  assign downsample9_q_net = i1_10;
  assign downsample10_q_net = i1_11;
  assign downsample11_q_net = i1_12;
  assign downsample12_q_net = i1_13;
  assign downsample13_q_net = i1_14;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_mux_9d27a008ef mux0 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample0_q_net_x0),
    .d1(downsample0_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux0_y_net)
  );
  sysgen_mux_9d27a008ef mux1 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample1_q_net_x0),
    .d1(downsample1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux1_y_net)
  );
  sysgen_mux_9d27a008ef mux2 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample2_q_net_x0),
    .d1(downsample2_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux2_y_net)
  );
  sysgen_mux_9d27a008ef mux3 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample3_q_net_x0),
    .d1(downsample3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux3_y_net)
  );
  sysgen_mux_9d27a008ef mux4 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample4_q_net_x0),
    .d1(downsample4_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux4_y_net)
  );
  sysgen_mux_9d27a008ef mux5 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample5_q_net_x0),
    .d1(downsample5_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux5_y_net)
  );
  sysgen_mux_9d27a008ef mux6 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample6_q_net_x0),
    .d1(downsample6_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux6_y_net)
  );
  sysgen_mux_9d27a008ef mux7 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample7_q_net_x0),
    .d1(downsample7_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux7_y_net)
  );
  sysgen_mux_9d27a008ef mux8 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample8_q_net_x0),
    .d1(downsample8_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux8_y_net)
  );
  sysgen_mux_9d27a008ef mux9 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample9_q_net_x0),
    .d1(downsample9_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux9_y_net)
  );
  sysgen_mux_9d27a008ef mux10 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample10_q_net_x0),
    .d1(downsample10_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux10_y_net)
  );
  sysgen_mux_9d27a008ef mux11 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample11_q_net_x0),
    .d1(downsample11_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux11_y_net)
  );
  sysgen_mux_9d27a008ef mux12 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample12_q_net_x0),
    .d1(downsample12_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux12_y_net)
  );
  sysgen_mux_9d27a008ef mux13 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample13_q_net_x0),
    .d1(downsample13_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux13_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Vector Mux3
module fpga_kf_3dof_plus_vector_mux3 (
  input [1-1:0] sel,
  input [25-1:0] i0_1,
  input [25-1:0] i1_1,
  input [25-1:0] i0_2,
  input [25-1:0] i0_3,
  input [25-1:0] i0_4,
  input [25-1:0] i0_5,
  input [25-1:0] i0_6,
  input [25-1:0] i0_7,
  input [25-1:0] i0_8,
  input [25-1:0] i0_9,
  input [25-1:0] i0_10,
  input [25-1:0] i0_11,
  input [25-1:0] i0_12,
  input [25-1:0] i0_13,
  input [25-1:0] i0_14,
  input [25-1:0] i1_2,
  input [25-1:0] i1_3,
  input [25-1:0] i1_4,
  input [25-1:0] i1_5,
  input [25-1:0] i1_6,
  input [25-1:0] i1_7,
  input [25-1:0] i1_8,
  input [25-1:0] i1_9,
  input [25-1:0] i1_10,
  input [25-1:0] i1_11,
  input [25-1:0] i1_12,
  input [25-1:0] i1_13,
  input [25-1:0] i1_14,
  input clk_4,
  input ce_4,
  output [25-1:0] o_1,
  output [25-1:0] o_2,
  output [25-1:0] o_3,
  output [25-1:0] o_4,
  output [25-1:0] o_5,
  output [25-1:0] o_6,
  output [25-1:0] o_7,
  output [25-1:0] o_8,
  output [25-1:0] o_9,
  output [25-1:0] o_10,
  output [25-1:0] o_11,
  output [25-1:0] o_12,
  output [25-1:0] o_13,
  output [25-1:0] o_14
);
  wire [25-1:0] mux0_y_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] mux2_y_net;
  wire [25-1:0] mux3_y_net;
  wire [25-1:0] mux5_y_net;
  wire [25-1:0] mux7_y_net;
  wire [25-1:0] mux6_y_net;
  wire [25-1:0] mux8_y_net;
  wire [25-1:0] mux9_y_net;
  wire [25-1:0] mux10_y_net;
  wire [25-1:0] mux4_y_net;
  wire [25-1:0] downsample2_q_net;
  wire [25-1:0] downsample0_q_net_x0;
  wire [25-1:0] downsample3_q_net_x0;
  wire [25-1:0] downsample13_q_net_x0;
  wire [25-1:0] downsample3_q_net;
  wire [25-1:0] downsample5_q_net;
  wire [25-1:0] downsample8_q_net_x0;
  wire [25-1:0] downsample11_q_net_x0;
  wire [25-1:0] downsample10_q_net;
  wire [25-1:0] downsample11_q_net;
  wire [25-1:0] downsample7_q_net_x0;
  wire [25-1:0] mux11_y_net;
  wire [25-1:0] downsample12_q_net;
  wire [25-1:0] downsample13_q_net;
  wire [25-1:0] downsample6_q_net;
  wire [25-1:0] downsample7_q_net;
  wire [25-1:0] downsample4_q_net;
  wire [25-1:0] mux12_y_net;
  wire [25-1:0] downsample4_q_net_x0;
  wire [25-1:0] downsample10_q_net_x0;
  wire [25-1:0] mux13_y_net;
  wire [25-1:0] downsample0_q_net;
  wire [25-1:0] downsample1_q_net_x0;
  wire [25-1:0] downsample5_q_net_x0;
  wire [1-1:0] down_sample1_q_net;
  wire [25-1:0] downsample8_q_net;
  wire [25-1:0] downsample12_q_net_x0;
  wire [25-1:0] downsample9_q_net_x0;
  wire [25-1:0] downsample9_q_net;
  wire [25-1:0] downsample2_q_net_x0;
  wire [25-1:0] downsample6_q_net_x0;
  wire [25-1:0] downsample1_q_net;
  wire clk_net;
  wire ce_net;
  assign o_1 = mux0_y_net;
  assign o_2 = mux1_y_net;
  assign o_3 = mux2_y_net;
  assign o_4 = mux3_y_net;
  assign o_5 = mux4_y_net;
  assign o_6 = mux5_y_net;
  assign o_7 = mux6_y_net;
  assign o_8 = mux7_y_net;
  assign o_9 = mux8_y_net;
  assign o_10 = mux9_y_net;
  assign o_11 = mux10_y_net;
  assign o_12 = mux11_y_net;
  assign o_13 = mux12_y_net;
  assign o_14 = mux13_y_net;
  assign down_sample1_q_net = sel;
  assign downsample0_q_net_x0 = i0_1;
  assign downsample0_q_net = i1_1;
  assign downsample1_q_net_x0 = i0_2;
  assign downsample2_q_net_x0 = i0_3;
  assign downsample3_q_net_x0 = i0_4;
  assign downsample4_q_net_x0 = i0_5;
  assign downsample5_q_net_x0 = i0_6;
  assign downsample6_q_net_x0 = i0_7;
  assign downsample7_q_net_x0 = i0_8;
  assign downsample8_q_net_x0 = i0_9;
  assign downsample9_q_net_x0 = i0_10;
  assign downsample10_q_net_x0 = i0_11;
  assign downsample11_q_net_x0 = i0_12;
  assign downsample12_q_net_x0 = i0_13;
  assign downsample13_q_net_x0 = i0_14;
  assign downsample1_q_net = i1_2;
  assign downsample2_q_net = i1_3;
  assign downsample3_q_net = i1_4;
  assign downsample4_q_net = i1_5;
  assign downsample5_q_net = i1_6;
  assign downsample6_q_net = i1_7;
  assign downsample7_q_net = i1_8;
  assign downsample8_q_net = i1_9;
  assign downsample9_q_net = i1_10;
  assign downsample10_q_net = i1_11;
  assign downsample11_q_net = i1_12;
  assign downsample12_q_net = i1_13;
  assign downsample13_q_net = i1_14;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_mux_9d27a008ef mux0 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample0_q_net_x0),
    .d1(downsample0_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux0_y_net)
  );
  sysgen_mux_9d27a008ef mux1 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample1_q_net_x0),
    .d1(downsample1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux1_y_net)
  );
  sysgen_mux_9d27a008ef mux2 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample2_q_net_x0),
    .d1(downsample2_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux2_y_net)
  );
  sysgen_mux_9d27a008ef mux3 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample3_q_net_x0),
    .d1(downsample3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux3_y_net)
  );
  sysgen_mux_9d27a008ef mux4 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample4_q_net_x0),
    .d1(downsample4_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux4_y_net)
  );
  sysgen_mux_9d27a008ef mux5 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample5_q_net_x0),
    .d1(downsample5_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux5_y_net)
  );
  sysgen_mux_9d27a008ef mux6 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample6_q_net_x0),
    .d1(downsample6_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux6_y_net)
  );
  sysgen_mux_9d27a008ef mux7 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample7_q_net_x0),
    .d1(downsample7_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux7_y_net)
  );
  sysgen_mux_9d27a008ef mux8 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample8_q_net_x0),
    .d1(downsample8_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux8_y_net)
  );
  sysgen_mux_9d27a008ef mux9 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample9_q_net_x0),
    .d1(downsample9_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux9_y_net)
  );
  sysgen_mux_9d27a008ef mux10 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample10_q_net_x0),
    .d1(downsample10_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux10_y_net)
  );
  sysgen_mux_9d27a008ef mux11 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample11_q_net_x0),
    .d1(downsample11_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux11_y_net)
  );
  sysgen_mux_9d27a008ef mux12 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample12_q_net_x0),
    .d1(downsample12_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux12_y_net)
  );
  sysgen_mux_9d27a008ef mux13 (
    .clr(1'b0),
    .sel(down_sample1_q_net),
    .d0(downsample13_q_net_x0),
    .d1(downsample13_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux13_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Vector Mux4
module fpga_kf_3dof_plus_vector_mux4 (
  input [3-1:0] sel,
  input [30-1:0] i0_1,
  input [57-1:0] i1_1,
  input [30-1:0] i2_1,
  input [14-1:0] i3_1,
  input [58-1:0] i4_1,
  input [31-1:0] i5_1,
  input [30-1:0] i0_2,
  input [57-1:0] i1_2,
  input [30-1:0] i2_2,
  input [14-1:0] i3_2,
  input [58-1:0] i4_2,
  input [31-1:0] i5_2,
  input clk_4,
  input ce_4,
  output [58-1:0] o_1,
  output [58-1:0] o_2
);
  wire [57-1:0] addsub6_s_net_x0;
  wire [58-1:0] mux0_y_net;
  wire [3-1:0] down_sample6_q_net;
  wire [30-1:0] constant0_op_net;
  wire [58-1:0] mux1_y_net;
  wire [30-1:0] addsub8_s_net;
  wire [14-1:0] up_sample7_q_net;
  wire [30-1:0] constant1_op_net;
  wire [57-1:0] addsub6_s_net;
  wire [31-1:0] addsub0_s_net;
  wire [30-1:0] constant2_op_net;
  wire [58-1:0] addsub0_s_net_x0;
  wire clk_net;
  wire [31-1:0] addsub1_s_net;
  wire [14-1:0] constant_op_net;
  wire [58-1:0] addsub1_s_net_x0;
  wire ce_net;
  assign o_1 = mux0_y_net;
  assign o_2 = mux1_y_net;
  assign down_sample6_q_net = sel;
  assign constant0_op_net = i0_1;
  assign addsub6_s_net_x0 = i1_1;
  assign addsub8_s_net = i2_1;
  assign up_sample7_q_net = i3_1;
  assign addsub0_s_net_x0 = i4_1;
  assign addsub0_s_net = i5_1;
  assign constant1_op_net = i0_2;
  assign addsub6_s_net = i1_2;
  assign constant2_op_net = i2_2;
  assign constant_op_net = i3_2;
  assign addsub1_s_net_x0 = i4_2;
  assign addsub1_s_net = i5_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  sysgen_mux_b287233b91 mux0 (
    .clr(1'b0),
    .sel(down_sample6_q_net),
    .d0(constant0_op_net),
    .d1(addsub6_s_net_x0),
    .d2(addsub8_s_net),
    .d3(up_sample7_q_net),
    .d4(addsub0_s_net_x0),
    .d5(addsub0_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux0_y_net)
  );
  sysgen_mux_b287233b91 mux1 (
    .clr(1'b0),
    .sel(down_sample6_q_net),
    .d0(constant1_op_net),
    .d1(addsub6_s_net),
    .d2(constant2_op_net),
    .d3(constant_op_net),
    .d4(addsub1_s_net_x0),
    .d5(addsub1_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux1_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Vector Real Mult
module fpga_kf_3dof_plus_vector_real_mult (
  input [25-1:0] a_1,
  input [30-1:0] b_1,
  input [25-1:0] a_2,
  input [25-1:0] a_3,
  input [25-1:0] a_4,
  input [25-1:0] a_5,
  input [25-1:0] a_6,
  input [25-1:0] a_7,
  input [30-1:0] b_2,
  input [30-1:0] b_3,
  input [30-1:0] b_4,
  input [30-1:0] b_5,
  input [30-1:0] b_6,
  input [30-1:0] b_7,
  input clk_4,
  input ce_4,
  output [55-1:0] a_x_b_1,
  output [55-1:0] a_x_b_2,
  output [55-1:0] a_x_b_3,
  output [55-1:0] a_x_b_4,
  output [55-1:0] a_x_b_5,
  output [55-1:0] a_x_b_6,
  output [55-1:0] a_x_b_7
);
  wire [55-1:0] mult4_p_net;
  wire [55-1:0] mult3_p_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] mux3_y_net;
  wire [55-1:0] mult2_p_net;
  wire [30-1:0] register0_q_net;
  wire [55-1:0] mult0_p_net;
  wire [55-1:0] mult6_p_net;
  wire [55-1:0] mult5_p_net;
  wire [25-1:0] mux2_y_net;
  wire [25-1:0] mux4_y_net;
  wire [25-1:0] mux5_y_net;
  wire [25-1:0] mux6_y_net;
  wire [55-1:0] mult1_p_net;
  wire [25-1:0] mux0_y_net;
  wire [30-1:0] register1_q_net;
  wire [30-1:0] register5_q_net;
  wire [30-1:0] register2_q_net;
  wire [30-1:0] register3_q_net;
  wire [30-1:0] mcode_data_out_net;
  wire clk_net;
  wire [30-1:0] register4_q_net;
  wire ce_net;
  assign a_x_b_1 = mult0_p_net;
  assign a_x_b_2 = mult1_p_net;
  assign a_x_b_3 = mult2_p_net;
  assign a_x_b_4 = mult3_p_net;
  assign a_x_b_5 = mult4_p_net;
  assign a_x_b_6 = mult5_p_net;
  assign a_x_b_7 = mult6_p_net;
  assign mux0_y_net = a_1;
  assign register0_q_net = b_1;
  assign mux1_y_net = a_2;
  assign mux2_y_net = a_3;
  assign mux3_y_net = a_4;
  assign mux4_y_net = a_5;
  assign mux5_y_net = a_6;
  assign mux6_y_net = a_7;
  assign register1_q_net = b_2;
  assign register2_q_net = b_3;
  assign register3_q_net = b_4;
  assign register4_q_net = b_5;
  assign register5_q_net = b_6;
  assign mcode_data_out_net = b_7;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult0 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux0_y_net),
    .b(register0_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult0_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult1 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux1_y_net),
    .b(register1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult1_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult2 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux2_y_net),
    .b(register2_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult2_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult3 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux3_y_net),
    .b(register3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult3_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult4 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux4_y_net),
    .b(register4_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult4_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult5 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux5_y_net),
    .b(register5_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult5_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult6 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux6_y_net),
    .b(mcode_data_out_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult6_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Vector Real Mult1
module fpga_kf_3dof_plus_vector_real_mult1 (
  input [25-1:0] a_1,
  input [30-1:0] b_1,
  input [25-1:0] a_2,
  input [25-1:0] a_3,
  input [25-1:0] a_4,
  input [25-1:0] a_5,
  input [25-1:0] a_6,
  input [25-1:0] a_7,
  input [30-1:0] b_2,
  input [30-1:0] b_3,
  input [30-1:0] b_4,
  input [30-1:0] b_5,
  input [30-1:0] b_6,
  input [30-1:0] b_7,
  input clk_4,
  input ce_4,
  output [55-1:0] a_x_b_1,
  output [55-1:0] a_x_b_2,
  output [55-1:0] a_x_b_3,
  output [55-1:0] a_x_b_4,
  output [55-1:0] a_x_b_5,
  output [55-1:0] a_x_b_6,
  output [55-1:0] a_x_b_7
);
  wire [55-1:0] mult1_p_net;
  wire [30-1:0] register1_q_net;
  wire [25-1:0] mux12_y_net;
  wire [30-1:0] register2_q_net;
  wire [55-1:0] mult2_p_net;
  wire [55-1:0] mult6_p_net;
  wire [30-1:0] register3_q_net;
  wire [55-1:0] mult0_p_net;
  wire [55-1:0] mult4_p_net;
  wire [55-1:0] mult5_p_net;
  wire [25-1:0] mux7_y_net;
  wire [30-1:0] register0_q_net;
  wire [25-1:0] mux8_y_net;
  wire [55-1:0] mult3_p_net;
  wire [25-1:0] mux11_y_net;
  wire [25-1:0] mux13_y_net;
  wire [25-1:0] mux9_y_net;
  wire [25-1:0] mux10_y_net;
  wire [30-1:0] register4_q_net;
  wire clk_net;
  wire ce_net;
  wire [30-1:0] mcode_data_out_net;
  wire [30-1:0] register5_q_net;
  assign a_x_b_1 = mult0_p_net;
  assign a_x_b_2 = mult1_p_net;
  assign a_x_b_3 = mult2_p_net;
  assign a_x_b_4 = mult3_p_net;
  assign a_x_b_5 = mult4_p_net;
  assign a_x_b_6 = mult5_p_net;
  assign a_x_b_7 = mult6_p_net;
  assign mux7_y_net = a_1;
  assign register0_q_net = b_1;
  assign mux8_y_net = a_2;
  assign mux9_y_net = a_3;
  assign mux10_y_net = a_4;
  assign mux11_y_net = a_5;
  assign mux12_y_net = a_6;
  assign mux13_y_net = a_7;
  assign register1_q_net = b_2;
  assign register2_q_net = b_3;
  assign register3_q_net = b_4;
  assign register4_q_net = b_5;
  assign register5_q_net = b_6;
  assign mcode_data_out_net = b_7;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult0 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux7_y_net),
    .b(register0_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult0_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult1 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux8_y_net),
    .b(register1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult1_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult2 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux9_y_net),
    .b(register2_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult2_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult3 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux10_y_net),
    .b(register3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult3_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult4 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux11_y_net),
    .b(register4_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult4_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult5 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux12_y_net),
    .b(register5_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult5_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult6 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux13_y_net),
    .b(mcode_data_out_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult6_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Vector Real Mult10
module fpga_kf_3dof_plus_vector_real_mult10 (
  input [25-1:0] a_1,
  input [30-1:0] b_1,
  input [25-1:0] a_2,
  input [30-1:0] b_2,
  input clk_4,
  input ce_4,
  output [55-1:0] a_x_b_1,
  output [55-1:0] a_x_b_2
);
  wire [25-1:0] mux4_y_net;
  wire [25-1:0] mux5_y_net;
  wire clk_net;
  wire [30-1:0] down_sample8_q_net;
  wire [55-1:0] mult1_p_net;
  wire ce_net;
  wire [30-1:0] down_sample_q_net;
  wire [55-1:0] mult0_p_net;
  assign a_x_b_1 = mult0_p_net;
  assign a_x_b_2 = mult1_p_net;
  assign mux4_y_net = a_1;
  assign down_sample_q_net = b_1;
  assign mux5_y_net = a_2;
  assign down_sample8_q_net = b_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult0 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux4_y_net),
    .b(down_sample_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult0_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult1 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux5_y_net),
    .b(down_sample8_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult1_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Vector Real Mult11
module fpga_kf_3dof_plus_vector_real_mult11 (
  input [25-1:0] a_1,
  input [30-1:0] b_1,
  input [25-1:0] a_2,
  input [30-1:0] b_2,
  input clk_4,
  input ce_4,
  output [55-1:0] a_x_b_1,
  output [55-1:0] a_x_b_2
);
  wire [25-1:0] mux7_y_net;
  wire [30-1:0] down_sample_q_net;
  wire [55-1:0] mult1_p_net;
  wire clk_net;
  wire [30-1:0] down_sample8_q_net;
  wire ce_net;
  wire [25-1:0] mux6_y_net;
  wire [55-1:0] mult0_p_net;
  assign a_x_b_1 = mult0_p_net;
  assign a_x_b_2 = mult1_p_net;
  assign mux6_y_net = a_1;
  assign down_sample_q_net = b_1;
  assign mux7_y_net = a_2;
  assign down_sample8_q_net = b_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult0 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux6_y_net),
    .b(down_sample_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult0_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult1 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux7_y_net),
    .b(down_sample8_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult1_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Vector Real Mult12
module fpga_kf_3dof_plus_vector_real_mult12 (
  input [25-1:0] a_1,
  input [30-1:0] b_1,
  input [25-1:0] a_2,
  input [25-1:0] a_3,
  input [25-1:0] a_4,
  input [25-1:0] a_5,
  input [25-1:0] a_6,
  input [25-1:0] a_7,
  input [30-1:0] b_2,
  input [30-1:0] b_3,
  input [30-1:0] b_4,
  input [30-1:0] b_5,
  input [30-1:0] b_6,
  input [30-1:0] b_7,
  input clk_4,
  input ce_4,
  output [55-1:0] a_x_b_1,
  output [55-1:0] a_x_b_2,
  output [55-1:0] a_x_b_3,
  output [55-1:0] a_x_b_4,
  output [55-1:0] a_x_b_5,
  output [55-1:0] a_x_b_6,
  output [55-1:0] a_x_b_7
);
  wire [55-1:0] mult1_p_net;
  wire [55-1:0] mult2_p_net;
  wire [30-1:0] register0_q_net;
  wire [25-1:0] mux0_y_net;
  wire [55-1:0] mult4_p_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] mux2_y_net;
  wire [25-1:0] mux3_y_net;
  wire [55-1:0] mult0_p_net;
  wire [55-1:0] mult5_p_net;
  wire [55-1:0] mult3_p_net;
  wire [55-1:0] mult6_p_net;
  wire [30-1:0] mcode_data_out_net;
  wire [25-1:0] mux4_y_net;
  wire [25-1:0] mux6_y_net;
  wire [25-1:0] mux5_y_net;
  wire ce_net;
  wire [30-1:0] register1_q_net;
  wire [30-1:0] register5_q_net;
  wire [30-1:0] register4_q_net;
  wire clk_net;
  wire [30-1:0] register3_q_net;
  wire [30-1:0] register2_q_net;
  assign a_x_b_1 = mult0_p_net;
  assign a_x_b_2 = mult1_p_net;
  assign a_x_b_3 = mult2_p_net;
  assign a_x_b_4 = mult3_p_net;
  assign a_x_b_5 = mult4_p_net;
  assign a_x_b_6 = mult5_p_net;
  assign a_x_b_7 = mult6_p_net;
  assign mux0_y_net = a_1;
  assign register0_q_net = b_1;
  assign mux1_y_net = a_2;
  assign mux2_y_net = a_3;
  assign mux3_y_net = a_4;
  assign mux4_y_net = a_5;
  assign mux5_y_net = a_6;
  assign mux6_y_net = a_7;
  assign register1_q_net = b_2;
  assign register2_q_net = b_3;
  assign register3_q_net = b_4;
  assign register4_q_net = b_5;
  assign register5_q_net = b_6;
  assign mcode_data_out_net = b_7;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult0 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux0_y_net),
    .b(register0_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult0_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult1 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux1_y_net),
    .b(register1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult1_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult2 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux2_y_net),
    .b(register2_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult2_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult3 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux3_y_net),
    .b(register3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult3_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult4 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux4_y_net),
    .b(register4_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult4_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult5 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux5_y_net),
    .b(register5_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult5_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult6 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux6_y_net),
    .b(mcode_data_out_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult6_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Vector Real Mult13
module fpga_kf_3dof_plus_vector_real_mult13 (
  input [25-1:0] a_1,
  input [30-1:0] b_1,
  input [25-1:0] a_2,
  input [25-1:0] a_3,
  input [25-1:0] a_4,
  input [25-1:0] a_5,
  input [25-1:0] a_6,
  input [25-1:0] a_7,
  input [30-1:0] b_2,
  input [30-1:0] b_3,
  input [30-1:0] b_4,
  input [30-1:0] b_5,
  input [30-1:0] b_6,
  input [30-1:0] b_7,
  input clk_4,
  input ce_4,
  output [55-1:0] a_x_b_1,
  output [55-1:0] a_x_b_2,
  output [55-1:0] a_x_b_3,
  output [55-1:0] a_x_b_4,
  output [55-1:0] a_x_b_5,
  output [55-1:0] a_x_b_6,
  output [55-1:0] a_x_b_7
);
  wire [55-1:0] mult0_p_net;
  wire [25-1:0] mux8_y_net;
  wire [25-1:0] mux9_y_net;
  wire [55-1:0] mult3_p_net;
  wire [55-1:0] mult5_p_net;
  wire [55-1:0] mult6_p_net;
  wire [25-1:0] mux10_y_net;
  wire [25-1:0] mux11_y_net;
  wire [55-1:0] mult1_p_net;
  wire [25-1:0] mux7_y_net;
  wire [30-1:0] register0_q_net;
  wire [25-1:0] mux12_y_net;
  wire [55-1:0] mult2_p_net;
  wire [55-1:0] mult4_p_net;
  wire [30-1:0] mcode_data_out_net;
  wire [30-1:0] register1_q_net;
  wire [30-1:0] register3_q_net;
  wire clk_net;
  wire [25-1:0] mux13_y_net;
  wire [30-1:0] register4_q_net;
  wire [30-1:0] register5_q_net;
  wire ce_net;
  wire [30-1:0] register2_q_net;
  assign a_x_b_1 = mult0_p_net;
  assign a_x_b_2 = mult1_p_net;
  assign a_x_b_3 = mult2_p_net;
  assign a_x_b_4 = mult3_p_net;
  assign a_x_b_5 = mult4_p_net;
  assign a_x_b_6 = mult5_p_net;
  assign a_x_b_7 = mult6_p_net;
  assign mux7_y_net = a_1;
  assign register0_q_net = b_1;
  assign mux8_y_net = a_2;
  assign mux9_y_net = a_3;
  assign mux10_y_net = a_4;
  assign mux11_y_net = a_5;
  assign mux12_y_net = a_6;
  assign mux13_y_net = a_7;
  assign register1_q_net = b_2;
  assign register2_q_net = b_3;
  assign register3_q_net = b_4;
  assign register4_q_net = b_5;
  assign register5_q_net = b_6;
  assign mcode_data_out_net = b_7;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult0 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux7_y_net),
    .b(register0_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult0_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult1 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux8_y_net),
    .b(register1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult1_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult2 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux9_y_net),
    .b(register2_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult2_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult3 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux10_y_net),
    .b(register3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult3_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult4 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux11_y_net),
    .b(register4_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult4_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult5 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux12_y_net),
    .b(register5_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult5_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult6 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux13_y_net),
    .b(mcode_data_out_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult6_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Vector Real Mult14
module fpga_kf_3dof_plus_vector_real_mult14 (
  input [25-1:0] a_1,
  input [30-1:0] b_1,
  input [25-1:0] a_2,
  input [25-1:0] a_3,
  input [25-1:0] a_4,
  input [25-1:0] a_5,
  input [25-1:0] a_6,
  input [25-1:0] a_7,
  input [30-1:0] b_2,
  input [30-1:0] b_3,
  input [30-1:0] b_4,
  input [30-1:0] b_5,
  input [30-1:0] b_6,
  input [30-1:0] b_7,
  input clk_4,
  input ce_4,
  output [55-1:0] a_x_b_1,
  output [55-1:0] a_x_b_2,
  output [55-1:0] a_x_b_3,
  output [55-1:0] a_x_b_4,
  output [55-1:0] a_x_b_5,
  output [55-1:0] a_x_b_6,
  output [55-1:0] a_x_b_7
);
  wire [55-1:0] mult2_p_net;
  wire [55-1:0] mult4_p_net;
  wire [30-1:0] register0_q_net;
  wire [55-1:0] mult0_p_net;
  wire [55-1:0] mult6_p_net;
  wire [25-1:0] mux35_y_net;
  wire [25-1:0] mux36_y_net;
  wire [25-1:0] mux37_y_net;
  wire [25-1:0] mux38_y_net;
  wire [55-1:0] mult1_p_net;
  wire [25-1:0] mux39_y_net;
  wire [25-1:0] mux40_y_net;
  wire [25-1:0] mux41_y_net;
  wire [30-1:0] register1_q_net;
  wire [55-1:0] mult5_p_net;
  wire [55-1:0] mult3_p_net;
  wire [30-1:0] register2_q_net;
  wire [30-1:0] register4_q_net;
  wire [30-1:0] register3_q_net;
  wire ce_net;
  wire [30-1:0] mcode_data_out_net;
  wire clk_net;
  wire [30-1:0] register5_q_net;
  assign a_x_b_1 = mult0_p_net;
  assign a_x_b_2 = mult1_p_net;
  assign a_x_b_3 = mult2_p_net;
  assign a_x_b_4 = mult3_p_net;
  assign a_x_b_5 = mult4_p_net;
  assign a_x_b_6 = mult5_p_net;
  assign a_x_b_7 = mult6_p_net;
  assign mux35_y_net = a_1;
  assign register0_q_net = b_1;
  assign mux36_y_net = a_2;
  assign mux37_y_net = a_3;
  assign mux38_y_net = a_4;
  assign mux39_y_net = a_5;
  assign mux40_y_net = a_6;
  assign mux41_y_net = a_7;
  assign register1_q_net = b_2;
  assign register2_q_net = b_3;
  assign register3_q_net = b_4;
  assign register4_q_net = b_5;
  assign register5_q_net = b_6;
  assign mcode_data_out_net = b_7;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult0 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux35_y_net),
    .b(register0_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult0_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult1 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux36_y_net),
    .b(register1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult1_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult2 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux37_y_net),
    .b(register2_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult2_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult3 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux38_y_net),
    .b(register3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult3_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult4 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux39_y_net),
    .b(register4_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult4_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult5 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux40_y_net),
    .b(register5_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult5_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult6 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux41_y_net),
    .b(mcode_data_out_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult6_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Vector Real Mult15
module fpga_kf_3dof_plus_vector_real_mult15 (
  input [25-1:0] a_1,
  input [30-1:0] b_1,
  input [25-1:0] a_2,
  input [25-1:0] a_3,
  input [25-1:0] a_4,
  input [25-1:0] a_5,
  input [25-1:0] a_6,
  input [25-1:0] a_7,
  input [30-1:0] b_2,
  input [30-1:0] b_3,
  input [30-1:0] b_4,
  input [30-1:0] b_5,
  input [30-1:0] b_6,
  input [30-1:0] b_7,
  input clk_4,
  input ce_4,
  output [55-1:0] a_x_b_1,
  output [55-1:0] a_x_b_2,
  output [55-1:0] a_x_b_3,
  output [55-1:0] a_x_b_4,
  output [55-1:0] a_x_b_5,
  output [55-1:0] a_x_b_6,
  output [55-1:0] a_x_b_7
);
  wire [55-1:0] mult0_p_net;
  wire [25-1:0] mux32_y_net;
  wire [55-1:0] mult1_p_net;
  wire [55-1:0] mult3_p_net;
  wire [55-1:0] mult5_p_net;
  wire [30-1:0] register0_q_net;
  wire [55-1:0] mult2_p_net;
  wire [25-1:0] mux28_y_net;
  wire [25-1:0] mux29_y_net;
  wire [25-1:0] mux30_y_net;
  wire [25-1:0] mux33_y_net;
  wire [25-1:0] mux31_y_net;
  wire [25-1:0] mux34_y_net;
  wire [30-1:0] register1_q_net;
  wire [30-1:0] register3_q_net;
  wire [55-1:0] mult6_p_net;
  wire [55-1:0] mult4_p_net;
  wire [30-1:0] register2_q_net;
  wire ce_net;
  wire [30-1:0] mcode_data_out_net;
  wire [30-1:0] register5_q_net;
  wire clk_net;
  wire [30-1:0] register4_q_net;
  assign a_x_b_1 = mult0_p_net;
  assign a_x_b_2 = mult1_p_net;
  assign a_x_b_3 = mult2_p_net;
  assign a_x_b_4 = mult3_p_net;
  assign a_x_b_5 = mult4_p_net;
  assign a_x_b_6 = mult5_p_net;
  assign a_x_b_7 = mult6_p_net;
  assign mux28_y_net = a_1;
  assign register0_q_net = b_1;
  assign mux29_y_net = a_2;
  assign mux30_y_net = a_3;
  assign mux31_y_net = a_4;
  assign mux32_y_net = a_5;
  assign mux33_y_net = a_6;
  assign mux34_y_net = a_7;
  assign register1_q_net = b_2;
  assign register2_q_net = b_3;
  assign register3_q_net = b_4;
  assign register4_q_net = b_5;
  assign register5_q_net = b_6;
  assign mcode_data_out_net = b_7;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult0 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux28_y_net),
    .b(register0_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult0_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult1 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux29_y_net),
    .b(register1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult1_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult2 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux30_y_net),
    .b(register2_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult2_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult3 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux31_y_net),
    .b(register3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult3_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult4 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux32_y_net),
    .b(register4_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult4_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult5 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux33_y_net),
    .b(register5_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult5_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult6 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux34_y_net),
    .b(mcode_data_out_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult6_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Vector Real Mult16
module fpga_kf_3dof_plus_vector_real_mult16 (
  input [25-1:0] a_1,
  input [14-1:0] b_1,
  input [25-1:0] a_2,
  input [14-1:0] b_2,
  input clk_4,
  input ce_4,
  output [39-1:0] a_x_b_1,
  output [39-1:0] a_x_b_2
);
  wire [14-1:0] convert1_dout_net;
  wire clk_net;
  wire [39-1:0] mult1_p_net;
  wire [25-1:0] mux8_y_net;
  wire [39-1:0] mult0_p_net;
  wire ce_net;
  wire [25-1:0] mux9_y_net;
  wire [14-1:0] convert0_dout_net;
  assign a_x_b_1 = mult0_p_net;
  assign a_x_b_2 = mult1_p_net;
  assign mux8_y_net = a_1;
  assign convert0_dout_net = b_1;
  assign mux9_y_net = a_2;
  assign convert1_dout_net = b_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(13),
    .b_width(14),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(14),
    .c_baat(25),
    .c_output_width(39),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i5"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(29),
    .p_width(39),
    .quantization(1)
  )
  mult0 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux8_y_net),
    .b(convert0_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult0_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(13),
    .b_width(14),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(14),
    .c_baat(25),
    .c_output_width(39),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i5"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(29),
    .p_width(39),
    .quantization(1)
  )
  mult1 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux9_y_net),
    .b(convert1_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult1_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Vector Real Mult17
module fpga_kf_3dof_plus_vector_real_mult17 (
  input [25-1:0] a_1,
  input [14-1:0] b_1,
  input [25-1:0] a_2,
  input [14-1:0] b_2,
  input clk_4,
  input ce_4,
  output [39-1:0] a_x_b_1,
  output [39-1:0] a_x_b_2
);
  wire [39-1:0] mult0_p_net;
  wire [39-1:0] mult1_p_net;
  wire ce_net;
  wire [25-1:0] mux10_y_net;
  wire [14-1:0] convert1_dout_net;
  wire clk_net;
  wire [14-1:0] convert0_dout_net;
  wire [25-1:0] mux11_y_net;
  assign a_x_b_1 = mult0_p_net;
  assign a_x_b_2 = mult1_p_net;
  assign mux10_y_net = a_1;
  assign convert0_dout_net = b_1;
  assign mux11_y_net = a_2;
  assign convert1_dout_net = b_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(13),
    .b_width(14),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(14),
    .c_baat(25),
    .c_output_width(39),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i5"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(29),
    .p_width(39),
    .quantization(1)
  )
  mult0 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux10_y_net),
    .b(convert0_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult0_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(13),
    .b_width(14),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(14),
    .c_baat(25),
    .c_output_width(39),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i5"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(29),
    .p_width(39),
    .quantization(1)
  )
  mult1 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux11_y_net),
    .b(convert1_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult1_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Vector Real Mult18
module fpga_kf_3dof_plus_vector_real_mult18 (
  input [25-1:0] a_1,
  input [30-1:0] b_1,
  input [25-1:0] a_2,
  input [30-1:0] b_2,
  input clk_4,
  input ce_4,
  output [55-1:0] a_x_b_1,
  output [55-1:0] a_x_b_2
);
  wire ce_net;
  wire [55-1:0] mult0_p_net;
  wire [55-1:0] mult1_p_net;
  wire [30-1:0] down_sample_q_net;
  wire [25-1:0] mux9_y_net;
  wire clk_net;
  wire [25-1:0] mux8_y_net;
  wire [30-1:0] down_sample8_q_net;
  assign a_x_b_1 = mult0_p_net;
  assign a_x_b_2 = mult1_p_net;
  assign mux8_y_net = a_1;
  assign down_sample_q_net = b_1;
  assign mux9_y_net = a_2;
  assign down_sample8_q_net = b_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult0 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux8_y_net),
    .b(down_sample_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult0_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult1 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux9_y_net),
    .b(down_sample8_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult1_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Vector Real Mult19
module fpga_kf_3dof_plus_vector_real_mult19 (
  input [25-1:0] a_1,
  input [30-1:0] b_1,
  input [25-1:0] a_2,
  input [30-1:0] b_2,
  input clk_4,
  input ce_4,
  output [55-1:0] a_x_b_1,
  output [55-1:0] a_x_b_2
);
  wire [55-1:0] mult1_p_net;
  wire [25-1:0] mux10_y_net;
  wire [30-1:0] down_sample8_q_net;
  wire clk_net;
  wire ce_net;
  wire [30-1:0] down_sample_q_net;
  wire [55-1:0] mult0_p_net;
  wire [25-1:0] mux11_y_net;
  assign a_x_b_1 = mult0_p_net;
  assign a_x_b_2 = mult1_p_net;
  assign mux10_y_net = a_1;
  assign down_sample_q_net = b_1;
  assign mux11_y_net = a_2;
  assign down_sample8_q_net = b_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult0 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux10_y_net),
    .b(down_sample_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult0_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult1 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux11_y_net),
    .b(down_sample8_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult1_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Vector Real Mult2
module fpga_kf_3dof_plus_vector_real_mult2 (
  input [25-1:0] a_1,
  input [30-1:0] b_1,
  input [25-1:0] a_2,
  input [25-1:0] a_3,
  input [25-1:0] a_4,
  input [25-1:0] a_5,
  input [25-1:0] a_6,
  input [25-1:0] a_7,
  input [30-1:0] b_2,
  input [30-1:0] b_3,
  input [30-1:0] b_4,
  input [30-1:0] b_5,
  input [30-1:0] b_6,
  input [30-1:0] b_7,
  input clk_4,
  input ce_4,
  output [55-1:0] a_x_b_1,
  output [55-1:0] a_x_b_2,
  output [55-1:0] a_x_b_3,
  output [55-1:0] a_x_b_4,
  output [55-1:0] a_x_b_5,
  output [55-1:0] a_x_b_6,
  output [55-1:0] a_x_b_7
);
  wire [55-1:0] mult3_p_net;
  wire [55-1:0] mult4_p_net;
  wire [55-1:0] mult5_p_net;
  wire [55-1:0] mult0_p_net;
  wire [55-1:0] mult1_p_net;
  wire [55-1:0] mult2_p_net;
  wire [30-1:0] mcode_data_out_net;
  wire [25-1:0] mux17_y_net;
  wire [30-1:0] register5_q_net;
  wire [55-1:0] mult6_p_net;
  wire [25-1:0] mux14_y_net;
  wire [30-1:0] register1_q_net;
  wire [25-1:0] mux16_y_net;
  wire [25-1:0] mux19_y_net;
  wire [30-1:0] register0_q_net;
  wire [25-1:0] mux20_y_net;
  wire [30-1:0] register4_q_net;
  wire clk_net;
  wire [30-1:0] register3_q_net;
  wire ce_net;
  wire [25-1:0] mux18_y_net;
  wire [25-1:0] mux15_y_net;
  wire [30-1:0] register2_q_net;
  assign a_x_b_1 = mult0_p_net;
  assign a_x_b_2 = mult1_p_net;
  assign a_x_b_3 = mult2_p_net;
  assign a_x_b_4 = mult3_p_net;
  assign a_x_b_5 = mult4_p_net;
  assign a_x_b_6 = mult5_p_net;
  assign a_x_b_7 = mult6_p_net;
  assign mux14_y_net = a_1;
  assign register0_q_net = b_1;
  assign mux15_y_net = a_2;
  assign mux16_y_net = a_3;
  assign mux17_y_net = a_4;
  assign mux18_y_net = a_5;
  assign mux19_y_net = a_6;
  assign mux20_y_net = a_7;
  assign register1_q_net = b_2;
  assign register2_q_net = b_3;
  assign register3_q_net = b_4;
  assign register4_q_net = b_5;
  assign register5_q_net = b_6;
  assign mcode_data_out_net = b_7;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult0 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux14_y_net),
    .b(register0_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult0_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult1 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux15_y_net),
    .b(register1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult1_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult2 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux16_y_net),
    .b(register2_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult2_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult3 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux17_y_net),
    .b(register3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult3_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult4 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux18_y_net),
    .b(register4_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult4_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult5 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux19_y_net),
    .b(register5_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult5_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult6 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux20_y_net),
    .b(mcode_data_out_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult6_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Vector Real Mult20
module fpga_kf_3dof_plus_vector_real_mult20 (
  input [25-1:0] a_1,
  input [30-1:0] b_1,
  input [25-1:0] a_2,
  input [30-1:0] b_2,
  input clk_4,
  input ce_4,
  output [55-1:0] a_x_b_1,
  output [55-1:0] a_x_b_2
);
  wire [55-1:0] mult1_p_net;
  wire [30-1:0] down_sample_q_net;
  wire [55-1:0] mult0_p_net;
  wire [25-1:0] mux12_y_net;
  wire [30-1:0] down_sample8_q_net;
  wire clk_net;
  wire ce_net;
  wire [25-1:0] mux13_y_net;
  assign a_x_b_1 = mult0_p_net;
  assign a_x_b_2 = mult1_p_net;
  assign mux12_y_net = a_1;
  assign down_sample_q_net = b_1;
  assign mux13_y_net = a_2;
  assign down_sample8_q_net = b_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult0 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux12_y_net),
    .b(down_sample_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult0_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult1 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux13_y_net),
    .b(down_sample8_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult1_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Vector Real Mult21
module fpga_kf_3dof_plus_vector_real_mult21 (
  input [25-1:0] a_1,
  input [14-1:0] b_1,
  input [25-1:0] a_2,
  input [14-1:0] b_2,
  input clk_4,
  input ce_4,
  output [39-1:0] a_x_b_1,
  output [39-1:0] a_x_b_2
);
  wire clk_net;
  wire [25-1:0] mux13_y_net;
  wire ce_net;
  wire [39-1:0] mult1_p_net;
  wire [14-1:0] convert1_dout_net;
  wire [14-1:0] convert0_dout_net;
  wire [39-1:0] mult0_p_net;
  wire [25-1:0] mux12_y_net;
  assign a_x_b_1 = mult0_p_net;
  assign a_x_b_2 = mult1_p_net;
  assign mux12_y_net = a_1;
  assign convert0_dout_net = b_1;
  assign mux13_y_net = a_2;
  assign convert1_dout_net = b_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(13),
    .b_width(14),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(14),
    .c_baat(25),
    .c_output_width(39),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i5"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(29),
    .p_width(39),
    .quantization(1)
  )
  mult0 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux12_y_net),
    .b(convert0_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult0_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(13),
    .b_width(14),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(14),
    .c_baat(25),
    .c_output_width(39),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i5"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(29),
    .p_width(39),
    .quantization(1)
  )
  mult1 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux13_y_net),
    .b(convert1_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult1_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Vector Real Mult22
module fpga_kf_3dof_plus_vector_real_mult22 (
  input [25-1:0] a_1,
  input [30-1:0] b_1,
  input [25-1:0] a_2,
  input [25-1:0] a_3,
  input [25-1:0] a_4,
  input [25-1:0] a_5,
  input [25-1:0] a_6,
  input [25-1:0] a_7,
  input [30-1:0] b_2,
  input [30-1:0] b_3,
  input [30-1:0] b_4,
  input [30-1:0] b_5,
  input [30-1:0] b_6,
  input [30-1:0] b_7,
  input clk_4,
  input ce_4,
  output [55-1:0] a_x_b_1,
  output [55-1:0] a_x_b_2,
  output [55-1:0] a_x_b_3,
  output [55-1:0] a_x_b_4,
  output [55-1:0] a_x_b_5,
  output [55-1:0] a_x_b_6,
  output [55-1:0] a_x_b_7
);
  wire [55-1:0] mult0_p_net;
  wire ce_net;
  wire [30-1:0] register0_q_net;
  wire [25-1:0] mux44_y_net;
  wire [55-1:0] mult6_p_net;
  wire [30-1:0] register2_q_net;
  wire [25-1:0] mux45_y_net;
  wire [25-1:0] mux43_y_net;
  wire [25-1:0] mux46_y_net;
  wire [25-1:0] mux47_y_net;
  wire [55-1:0] mult2_p_net;
  wire [55-1:0] mult1_p_net;
  wire [25-1:0] mux48_y_net;
  wire clk_net;
  wire [30-1:0] register1_q_net;
  wire [30-1:0] register3_q_net;
  wire [30-1:0] register5_q_net;
  wire [55-1:0] mult5_p_net;
  wire [25-1:0] mux42_y_net;
  wire [55-1:0] mult3_p_net;
  wire [30-1:0] register4_q_net;
  wire [30-1:0] mcode_data_out_net;
  wire [55-1:0] mult4_p_net;
  assign a_x_b_1 = mult0_p_net;
  assign a_x_b_2 = mult1_p_net;
  assign a_x_b_3 = mult2_p_net;
  assign a_x_b_4 = mult3_p_net;
  assign a_x_b_5 = mult4_p_net;
  assign a_x_b_6 = mult5_p_net;
  assign a_x_b_7 = mult6_p_net;
  assign mux42_y_net = a_1;
  assign register0_q_net = b_1;
  assign mux43_y_net = a_2;
  assign mux44_y_net = a_3;
  assign mux45_y_net = a_4;
  assign mux46_y_net = a_5;
  assign mux47_y_net = a_6;
  assign mux48_y_net = a_7;
  assign register1_q_net = b_2;
  assign register2_q_net = b_3;
  assign register3_q_net = b_4;
  assign register4_q_net = b_5;
  assign register5_q_net = b_6;
  assign mcode_data_out_net = b_7;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult0 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux42_y_net),
    .b(register0_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult0_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult1 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux43_y_net),
    .b(register1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult1_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult2 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux44_y_net),
    .b(register2_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult2_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult3 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux45_y_net),
    .b(register3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult3_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult4 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux46_y_net),
    .b(register4_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult4_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult5 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux47_y_net),
    .b(register5_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult5_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult6 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux48_y_net),
    .b(mcode_data_out_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult6_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Vector Real Mult3
module fpga_kf_3dof_plus_vector_real_mult3 (
  input [25-1:0] a_1,
  input [30-1:0] b_1,
  input [25-1:0] a_2,
  input [25-1:0] a_3,
  input [25-1:0] a_4,
  input [25-1:0] a_5,
  input [25-1:0] a_6,
  input [25-1:0] a_7,
  input [30-1:0] b_2,
  input [30-1:0] b_3,
  input [30-1:0] b_4,
  input [30-1:0] b_5,
  input [30-1:0] b_6,
  input [30-1:0] b_7,
  input clk_4,
  input ce_4,
  output [55-1:0] a_x_b_1,
  output [55-1:0] a_x_b_2,
  output [55-1:0] a_x_b_3,
  output [55-1:0] a_x_b_4,
  output [55-1:0] a_x_b_5,
  output [55-1:0] a_x_b_6,
  output [55-1:0] a_x_b_7
);
  wire [55-1:0] mult0_p_net;
  wire [55-1:0] mult2_p_net;
  wire [55-1:0] mult1_p_net;
  wire [30-1:0] mcode_data_out_net;
  wire [55-1:0] mult3_p_net;
  wire [25-1:0] mux27_y_net;
  wire [25-1:0] mux23_y_net;
  wire [25-1:0] mux21_y_net;
  wire [30-1:0] register4_q_net;
  wire [55-1:0] mult6_p_net;
  wire [30-1:0] register2_q_net;
  wire [25-1:0] mux25_y_net;
  wire [25-1:0] mux26_y_net;
  wire [25-1:0] mux22_y_net;
  wire [30-1:0] register0_q_net;
  wire [55-1:0] mult4_p_net;
  wire clk_net;
  wire ce_net;
  wire [25-1:0] mux24_y_net;
  wire [30-1:0] register3_q_net;
  wire [30-1:0] register1_q_net;
  wire [30-1:0] register5_q_net;
  wire [55-1:0] mult5_p_net;
  assign a_x_b_1 = mult0_p_net;
  assign a_x_b_2 = mult1_p_net;
  assign a_x_b_3 = mult2_p_net;
  assign a_x_b_4 = mult3_p_net;
  assign a_x_b_5 = mult4_p_net;
  assign a_x_b_6 = mult5_p_net;
  assign a_x_b_7 = mult6_p_net;
  assign mux21_y_net = a_1;
  assign register0_q_net = b_1;
  assign mux22_y_net = a_2;
  assign mux23_y_net = a_3;
  assign mux24_y_net = a_4;
  assign mux25_y_net = a_5;
  assign mux26_y_net = a_6;
  assign mux27_y_net = a_7;
  assign register1_q_net = b_2;
  assign register2_q_net = b_3;
  assign register3_q_net = b_4;
  assign register4_q_net = b_5;
  assign register5_q_net = b_6;
  assign mcode_data_out_net = b_7;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult0 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux21_y_net),
    .b(register0_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult0_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult1 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux22_y_net),
    .b(register1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult1_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult2 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux23_y_net),
    .b(register2_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult2_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult3 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux24_y_net),
    .b(register3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult3_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult4 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux25_y_net),
    .b(register4_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult4_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult5 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux26_y_net),
    .b(register5_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult5_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult6 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux27_y_net),
    .b(mcode_data_out_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult6_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Vector Real Mult4
module fpga_kf_3dof_plus_vector_real_mult4 (
  input [25-1:0] a_1,
  input [14-1:0] b_1,
  input [25-1:0] a_2,
  input [14-1:0] b_2,
  input clk_4,
  input ce_4,
  output [39-1:0] a_x_b_1,
  output [39-1:0] a_x_b_2
);
  wire [39-1:0] mult0_p_net;
  wire [39-1:0] mult1_p_net;
  wire [25-1:0] mux0_y_net;
  wire [14-1:0] convert0_dout_net;
  wire [25-1:0] mux1_y_net;
  wire [14-1:0] convert1_dout_net;
  wire ce_net;
  wire clk_net;
  assign a_x_b_1 = mult0_p_net;
  assign a_x_b_2 = mult1_p_net;
  assign mux0_y_net = a_1;
  assign convert0_dout_net = b_1;
  assign mux1_y_net = a_2;
  assign convert1_dout_net = b_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(13),
    .b_width(14),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(14),
    .c_baat(25),
    .c_output_width(39),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i5"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(29),
    .p_width(39),
    .quantization(1)
  )
  mult0 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux0_y_net),
    .b(convert0_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult0_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(13),
    .b_width(14),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(14),
    .c_baat(25),
    .c_output_width(39),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i5"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(29),
    .p_width(39),
    .quantization(1)
  )
  mult1 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux1_y_net),
    .b(convert1_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult1_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Vector Real Mult5
module fpga_kf_3dof_plus_vector_real_mult5 (
  input [25-1:0] a_1,
  input [14-1:0] b_1,
  input [25-1:0] a_2,
  input [14-1:0] b_2,
  input clk_4,
  input ce_4,
  output [39-1:0] a_x_b_1,
  output [39-1:0] a_x_b_2
);
  wire [39-1:0] mult1_p_net;
  wire [14-1:0] convert0_dout_net;
  wire clk_net;
  wire ce_net;
  wire [25-1:0] mux2_y_net;
  wire [39-1:0] mult0_p_net;
  wire [14-1:0] convert1_dout_net;
  wire [25-1:0] mux3_y_net;
  assign a_x_b_1 = mult0_p_net;
  assign a_x_b_2 = mult1_p_net;
  assign mux2_y_net = a_1;
  assign convert0_dout_net = b_1;
  assign mux3_y_net = a_2;
  assign convert1_dout_net = b_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(13),
    .b_width(14),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(14),
    .c_baat(25),
    .c_output_width(39),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i5"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(29),
    .p_width(39),
    .quantization(1)
  )
  mult0 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux2_y_net),
    .b(convert0_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult0_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(13),
    .b_width(14),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(14),
    .c_baat(25),
    .c_output_width(39),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i5"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(29),
    .p_width(39),
    .quantization(1)
  )
  mult1 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux3_y_net),
    .b(convert1_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult1_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Vector Real Mult6
module fpga_kf_3dof_plus_vector_real_mult6 (
  input [25-1:0] a_1,
  input [14-1:0] b_1,
  input [25-1:0] a_2,
  input [14-1:0] b_2,
  input clk_4,
  input ce_4,
  output [39-1:0] a_x_b_1,
  output [39-1:0] a_x_b_2
);
  wire [25-1:0] mux4_y_net;
  wire [14-1:0] convert1_dout_net;
  wire [25-1:0] mux5_y_net;
  wire [39-1:0] mult0_p_net;
  wire ce_net;
  wire clk_net;
  wire [39-1:0] mult1_p_net;
  wire [14-1:0] convert0_dout_net;
  assign a_x_b_1 = mult0_p_net;
  assign a_x_b_2 = mult1_p_net;
  assign mux4_y_net = a_1;
  assign convert0_dout_net = b_1;
  assign mux5_y_net = a_2;
  assign convert1_dout_net = b_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(13),
    .b_width(14),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(14),
    .c_baat(25),
    .c_output_width(39),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i5"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(29),
    .p_width(39),
    .quantization(1)
  )
  mult0 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux4_y_net),
    .b(convert0_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult0_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(13),
    .b_width(14),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(14),
    .c_baat(25),
    .c_output_width(39),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i5"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(29),
    .p_width(39),
    .quantization(1)
  )
  mult1 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux5_y_net),
    .b(convert1_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult1_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Vector Real Mult7
module fpga_kf_3dof_plus_vector_real_mult7 (
  input [25-1:0] a_1,
  input [14-1:0] b_1,
  input [25-1:0] a_2,
  input [14-1:0] b_2,
  input clk_4,
  input ce_4,
  output [39-1:0] a_x_b_1,
  output [39-1:0] a_x_b_2
);
  wire ce_net;
  wire clk_net;
  wire [39-1:0] mult0_p_net;
  wire [14-1:0] convert0_dout_net;
  wire [25-1:0] mux6_y_net;
  wire [25-1:0] mux7_y_net;
  wire [14-1:0] convert1_dout_net;
  wire [39-1:0] mult1_p_net;
  assign a_x_b_1 = mult0_p_net;
  assign a_x_b_2 = mult1_p_net;
  assign mux6_y_net = a_1;
  assign convert0_dout_net = b_1;
  assign mux7_y_net = a_2;
  assign convert1_dout_net = b_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(13),
    .b_width(14),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(14),
    .c_baat(25),
    .c_output_width(39),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i5"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(29),
    .p_width(39),
    .quantization(1)
  )
  mult0 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux6_y_net),
    .b(convert0_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult0_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(13),
    .b_width(14),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(14),
    .c_baat(25),
    .c_output_width(39),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i5"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(29),
    .p_width(39),
    .quantization(1)
  )
  mult1 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux7_y_net),
    .b(convert1_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult1_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Vector Real Mult8
module fpga_kf_3dof_plus_vector_real_mult8 (
  input [25-1:0] a_1,
  input [30-1:0] b_1,
  input [25-1:0] a_2,
  input [30-1:0] b_2,
  input clk_4,
  input ce_4,
  output [55-1:0] a_x_b_1,
  output [55-1:0] a_x_b_2
);
  wire ce_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] mux0_y_net;
  wire [30-1:0] down_sample_q_net;
  wire [30-1:0] down_sample8_q_net;
  wire clk_net;
  wire [55-1:0] mult1_p_net;
  wire [55-1:0] mult0_p_net;
  assign a_x_b_1 = mult0_p_net;
  assign a_x_b_2 = mult1_p_net;
  assign mux0_y_net = a_1;
  assign down_sample_q_net = b_1;
  assign mux1_y_net = a_2;
  assign down_sample8_q_net = b_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult0 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux0_y_net),
    .b(down_sample_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult0_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult1 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux1_y_net),
    .b(down_sample8_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult1_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Vector Real Mult9
module fpga_kf_3dof_plus_vector_real_mult9 (
  input [25-1:0] a_1,
  input [30-1:0] b_1,
  input [25-1:0] a_2,
  input [30-1:0] b_2,
  input clk_4,
  input ce_4,
  output [55-1:0] a_x_b_1,
  output [55-1:0] a_x_b_2
);
  wire [30-1:0] down_sample_q_net;
  wire ce_net;
  wire clk_net;
  wire [25-1:0] mux3_y_net;
  wire [30-1:0] down_sample8_q_net;
  wire [25-1:0] mux2_y_net;
  wire [55-1:0] mult0_p_net;
  wire [55-1:0] mult1_p_net;
  assign a_x_b_1 = mult0_p_net;
  assign a_x_b_2 = mult1_p_net;
  assign mux2_y_net = a_1;
  assign down_sample_q_net = b_1;
  assign mux3_y_net = a_2;
  assign down_sample8_q_net = b_2;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult0 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux2_y_net),
    .b(down_sample_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult0_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(41),
    .p_width(55),
    .quantization(1)
  )
  mult1 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux3_y_net),
    .b(down_sample8_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult1_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Vector Register
module fpga_kf_3dof_plus_vector_register (
  input [30-1:0] d_1,
  input [30-1:0] d_2,
  input [30-1:0] d_3,
  input [30-1:0] d_4,
  input [30-1:0] d_5,
  input [30-1:0] d_6,
  input [30-1:0] d_7,
  input clk_4,
  input ce_4,
  output [30-1:0] q_1,
  output [30-1:0] q_2,
  output [30-1:0] q_3,
  output [30-1:0] q_4,
  output [30-1:0] q_5,
  output [30-1:0] q_6,
  output [30-1:0] q_7
);
  wire [30-1:0] convert3_dout_net;
  wire [30-1:0] register0_q_net;
  wire [30-1:0] register1_q_net;
  wire [30-1:0] convert4_dout_net;
  wire [30-1:0] convert6_dout_net;
  wire [30-1:0] convert0_dout_net;
  wire [30-1:0] convert5_dout_net;
  wire [30-1:0] register2_q_net;
  wire [30-1:0] register5_q_net;
  wire [30-1:0] register6_q_net;
  wire [30-1:0] convert1_dout_net;
  wire clk_net;
  wire [30-1:0] register3_q_net;
  wire [30-1:0] register4_q_net;
  wire [30-1:0] convert2_dout_net;
  wire ce_net;
  assign q_1 = register0_q_net;
  assign q_2 = register1_q_net;
  assign q_3 = register2_q_net;
  assign q_4 = register3_q_net;
  assign q_5 = register4_q_net;
  assign q_6 = register5_q_net;
  assign q_7 = register6_q_net;
  assign convert0_dout_net = d_1;
  assign convert1_dout_net = d_2;
  assign convert2_dout_net = d_3;
  assign convert3_dout_net = d_4;
  assign convert4_dout_net = d_5;
  assign convert5_dout_net = d_6;
  assign convert6_dout_net = d_7;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_3dof_plus_xlregister #(
    .d_width(30),
    .init_value(30'b000000000000000000000000000000)
  )
  register0 (
    .en(1'b1),
    .rst(1'b0),
    .d(convert0_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register0_q_net)
  );
  fpga_kf_3dof_plus_xlregister #(
    .d_width(30),
    .init_value(30'b000000000000000000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(convert1_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register1_q_net)
  );
  fpga_kf_3dof_plus_xlregister #(
    .d_width(30),
    .init_value(30'b000000000000000000000000000000)
  )
  register2 (
    .en(1'b1),
    .rst(1'b0),
    .d(convert2_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register2_q_net)
  );
  fpga_kf_3dof_plus_xlregister #(
    .d_width(30),
    .init_value(30'b000000000000000000000000000000)
  )
  register3 (
    .en(1'b1),
    .rst(1'b0),
    .d(convert3_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register3_q_net)
  );
  fpga_kf_3dof_plus_xlregister #(
    .d_width(30),
    .init_value(30'b000000000000000000000000000000)
  )
  register4 (
    .en(1'b1),
    .rst(1'b0),
    .d(convert4_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register4_q_net)
  );
  fpga_kf_3dof_plus_xlregister #(
    .d_width(30),
    .init_value(30'b000000000000000000000000000000)
  )
  register5 (
    .en(1'b1),
    .rst(1'b0),
    .d(convert5_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register5_q_net)
  );
  fpga_kf_3dof_plus_xlregister #(
    .d_width(30),
    .init_value(30'b000000000000000000000000000000)
  )
  register6 (
    .en(1'b1),
    .rst(1'b0),
    .d(convert6_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register6_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Vector Up Sample
module fpga_kf_3dof_plus_vector_up_sample (
  input [14-1:0] in_1,
  input [14-1:0] in_2,
  input [14-1:0] in_3,
  input [14-1:0] in_4,
  input [14-1:0] in_5,
  input [14-1:0] in_6,
  input [14-1:0] in_7,
  input clk_1,
  input ce_1,
  input clk_4,
  input ce_4,
  output [14-1:0] out_1,
  output [14-1:0] out_2,
  output [14-1:0] out_3,
  output [14-1:0] out_4,
  output [14-1:0] out_5,
  output [14-1:0] out_6,
  output [14-1:0] out_7
);
  wire [14-1:0] upsample4_q_net;
  wire [14-1:0] upsample5_q_net;
  wire [14-1:0] upsample6_q_net;
  wire [14-1:0] upsample2_q_net;
  wire [14-1:0] upsample3_q_net;
  wire [14-1:0] upsample0_q_net;
  wire [14-1:0] convert0_dout_net;
  wire [14-1:0] upsample1_q_net;
  wire [14-1:0] convert1_dout_net;
  wire src_clk_net;
  wire clk_net;
  wire src_ce_net;
  wire [14-1:0] convert6_dout_net;
  wire ce_net;
  wire [14-1:0] convert5_dout_net;
  wire [14-1:0] convert3_dout_net;
  wire [14-1:0] convert4_dout_net;
  wire [14-1:0] convert2_dout_net;
  assign out_1 = upsample0_q_net;
  assign out_2 = upsample1_q_net;
  assign out_3 = upsample2_q_net;
  assign out_4 = upsample3_q_net;
  assign out_5 = upsample4_q_net;
  assign out_6 = upsample5_q_net;
  assign out_7 = upsample6_q_net;
  assign convert0_dout_net = in_1;
  assign convert1_dout_net = in_2;
  assign convert2_dout_net = in_3;
  assign convert3_dout_net = in_4;
  assign convert4_dout_net = in_5;
  assign convert5_dout_net = in_6;
  assign convert6_dout_net = in_7;
  assign src_clk_net = clk_1;
  assign src_ce_net = ce_1;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_3dof_plus_xlusamp #(
    .copy_samples(1),
    .d_arith(`xlSigned),
    .d_bin_pt(13),
    .d_width(14),
    .latency(1),
    .q_arith(`xlSigned),
    .q_bin_pt(13),
    .q_width(14)
  )
  upsample0 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .d(convert0_dout_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(src_clk_net),
    .dest_ce(src_ce_net),
    .q(upsample0_q_net)
  );
  fpga_kf_3dof_plus_xlusamp #(
    .copy_samples(1),
    .d_arith(`xlSigned),
    .d_bin_pt(13),
    .d_width(14),
    .latency(1),
    .q_arith(`xlSigned),
    .q_bin_pt(13),
    .q_width(14)
  )
  upsample1 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .d(convert1_dout_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(src_clk_net),
    .dest_ce(src_ce_net),
    .q(upsample1_q_net)
  );
  fpga_kf_3dof_plus_xlusamp #(
    .copy_samples(1),
    .d_arith(`xlSigned),
    .d_bin_pt(13),
    .d_width(14),
    .latency(1),
    .q_arith(`xlSigned),
    .q_bin_pt(13),
    .q_width(14)
  )
  upsample2 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .d(convert2_dout_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(src_clk_net),
    .dest_ce(src_ce_net),
    .q(upsample2_q_net)
  );
  fpga_kf_3dof_plus_xlusamp #(
    .copy_samples(1),
    .d_arith(`xlSigned),
    .d_bin_pt(13),
    .d_width(14),
    .latency(1),
    .q_arith(`xlSigned),
    .q_bin_pt(13),
    .q_width(14)
  )
  upsample3 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .d(convert3_dout_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(src_clk_net),
    .dest_ce(src_ce_net),
    .q(upsample3_q_net)
  );
  fpga_kf_3dof_plus_xlusamp #(
    .copy_samples(1),
    .d_arith(`xlSigned),
    .d_bin_pt(13),
    .d_width(14),
    .latency(1),
    .q_arith(`xlSigned),
    .q_bin_pt(13),
    .q_width(14)
  )
  upsample4 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .d(convert4_dout_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(src_clk_net),
    .dest_ce(src_ce_net),
    .q(upsample4_q_net)
  );
  fpga_kf_3dof_plus_xlusamp #(
    .copy_samples(1),
    .d_arith(`xlSigned),
    .d_bin_pt(13),
    .d_width(14),
    .latency(1),
    .q_arith(`xlSigned),
    .q_bin_pt(13),
    .q_width(14)
  )
  upsample5 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .d(convert5_dout_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(src_clk_net),
    .dest_ce(src_ce_net),
    .q(upsample5_q_net)
  );
  fpga_kf_3dof_plus_xlusamp #(
    .copy_samples(1),
    .d_arith(`xlSigned),
    .d_bin_pt(13),
    .d_width(14),
    .latency(1),
    .q_arith(`xlSigned),
    .q_bin_pt(13),
    .q_width(14)
  )
  upsample6 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .d(convert6_dout_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(src_clk_net),
    .dest_ce(src_ce_net),
    .q(upsample6_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper/Vector Up Sample1
module fpga_kf_3dof_plus_vector_up_sample1 (
  input [14-1:0] in_1,
  input [14-1:0] in_2,
  input clk_1,
  input ce_1,
  input clk_4,
  input ce_4,
  output [14-1:0] out_1,
  output [14-1:0] out_2
);
  wire src_clk_net;
  wire clk_net;
  wire [14-1:0] convert0_dout_net;
  wire ce_net;
  wire src_ce_net;
  wire [14-1:0] upsample1_q_net;
  wire [14-1:0] upsample0_q_net;
  wire [14-1:0] convert1_dout_net;
  assign out_1 = upsample0_q_net;
  assign out_2 = upsample1_q_net;
  assign convert0_dout_net = in_1;
  assign convert1_dout_net = in_2;
  assign src_clk_net = clk_1;
  assign src_ce_net = ce_1;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  fpga_kf_3dof_plus_xlusamp #(
    .copy_samples(1),
    .d_arith(`xlSigned),
    .d_bin_pt(13),
    .d_width(14),
    .latency(1),
    .q_arith(`xlSigned),
    .q_bin_pt(13),
    .q_width(14)
  )
  upsample0 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .d(convert0_dout_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(src_clk_net),
    .dest_ce(src_ce_net),
    .q(upsample0_q_net)
  );
  fpga_kf_3dof_plus_xlusamp #(
    .copy_samples(1),
    .d_arith(`xlSigned),
    .d_bin_pt(13),
    .d_width(14),
    .latency(1),
    .q_arith(`xlSigned),
    .q_bin_pt(13),
    .q_width(14)
  )
  upsample1 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .d(convert1_dout_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(src_clk_net),
    .dest_ce(src_ce_net),
    .q(upsample1_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/ADC_clock_domain_wrapper
module fpga_kf_3dof_plus_adc_clock_domain_wrapper (
  input [1-1:0] sw_in,
  input [25-1:0] fmat_in_1,
  input [25-1:0] lmat_in_1,
  input [25-1:0] kmat_in_1,
  input [25-1:0] bmat_in_1,
  input [25-1:0] fmat_ip_in_1,
  input [25-1:0] lmat_ip_in_1,
  input [25-1:0] kmat_ip_in_1,
  input [25-1:0] bmat_ip_in_1,
  input [2-1:0] hw_switch_override,
  input [14-1:0] adc_ch1_offst,
  input [14-1:0] adc_ch2_offst,
  input [14-1:0] pot_switch_hw,
  input [1-1:0] pot_switch_hw_flag,
  input [6-1:0] leds_in,
  input [18-1:0] x_ref_in,
  input [3-1:0] fb_src_switch,
  input [30-1:0] barrier_ub_lb_in_1,
  input [25-1:0] barrier_c_idx_in,
  input [10-1:0] barrier_c_ofst_idx_in,
  input [10-1:0] barrier_ram_addr_in,
  input [25-1:0] barrier_ram_data_in_1,
  input [1-1:0] barrier_ram_we_in,
  input [14-1:0] noise_gain_in,
  input [30-1:0] x_ref_ub_in,
  input [30-1:0] x_ref_lb_in,
  input [1-1:0] x_ref_enb_in,
  input [25-1:0] c_iu_in,
  input [25-1:0] iu_ub_in,
  input [25-1:0] iu_lb_in,
  input [1-1:0] iu_enb,
  input [25-1:0] k_iu_in,
  input [14-1:0] dac_1_bias_in,
  input [14-1:0] dac_2_bias_in,
  input [25-1:0] fmat_in_2,
  input [25-1:0] fmat_in_3,
  input [25-1:0] fmat_in_4,
  input [25-1:0] fmat_in_5,
  input [25-1:0] fmat_in_6,
  input [25-1:0] fmat_in_7,
  input [25-1:0] fmat_in_8,
  input [25-1:0] fmat_in_9,
  input [25-1:0] fmat_in_10,
  input [25-1:0] fmat_in_11,
  input [25-1:0] fmat_in_12,
  input [25-1:0] fmat_in_13,
  input [25-1:0] fmat_in_14,
  input [25-1:0] fmat_in_15,
  input [25-1:0] fmat_in_16,
  input [25-1:0] fmat_in_17,
  input [25-1:0] fmat_in_18,
  input [25-1:0] fmat_in_19,
  input [25-1:0] fmat_in_20,
  input [25-1:0] fmat_in_21,
  input [25-1:0] fmat_in_22,
  input [25-1:0] fmat_in_23,
  input [25-1:0] fmat_in_24,
  input [25-1:0] fmat_in_25,
  input [25-1:0] fmat_in_26,
  input [25-1:0] fmat_in_27,
  input [25-1:0] fmat_in_28,
  input [25-1:0] fmat_in_29,
  input [25-1:0] fmat_in_30,
  input [25-1:0] fmat_in_31,
  input [25-1:0] fmat_in_32,
  input [25-1:0] fmat_in_33,
  input [25-1:0] fmat_in_34,
  input [25-1:0] fmat_in_35,
  input [25-1:0] fmat_in_36,
  input [25-1:0] fmat_in_37,
  input [25-1:0] fmat_in_38,
  input [25-1:0] fmat_in_39,
  input [25-1:0] fmat_in_40,
  input [25-1:0] fmat_in_41,
  input [25-1:0] fmat_in_42,
  input [25-1:0] fmat_in_43,
  input [25-1:0] fmat_in_44,
  input [25-1:0] fmat_in_45,
  input [25-1:0] fmat_in_46,
  input [25-1:0] fmat_in_47,
  input [25-1:0] fmat_in_48,
  input [25-1:0] fmat_in_49,
  input [25-1:0] lmat_in_2,
  input [25-1:0] lmat_in_3,
  input [25-1:0] lmat_in_4,
  input [25-1:0] lmat_in_5,
  input [25-1:0] lmat_in_6,
  input [25-1:0] lmat_in_7,
  input [25-1:0] lmat_in_8,
  input [25-1:0] lmat_in_9,
  input [25-1:0] lmat_in_10,
  input [25-1:0] lmat_in_11,
  input [25-1:0] lmat_in_12,
  input [25-1:0] lmat_in_13,
  input [25-1:0] lmat_in_14,
  input [25-1:0] kmat_in_2,
  input [25-1:0] kmat_in_3,
  input [25-1:0] kmat_in_4,
  input [25-1:0] kmat_in_5,
  input [25-1:0] kmat_in_6,
  input [25-1:0] kmat_in_7,
  input [25-1:0] kmat_in_8,
  input [25-1:0] kmat_in_9,
  input [25-1:0] kmat_in_10,
  input [25-1:0] kmat_in_11,
  input [25-1:0] kmat_in_12,
  input [25-1:0] kmat_in_13,
  input [25-1:0] kmat_in_14,
  input [25-1:0] bmat_in_2,
  input [25-1:0] bmat_in_3,
  input [25-1:0] bmat_in_4,
  input [25-1:0] bmat_in_5,
  input [25-1:0] bmat_in_6,
  input [25-1:0] bmat_in_7,
  input [25-1:0] bmat_in_8,
  input [25-1:0] bmat_in_9,
  input [25-1:0] bmat_in_10,
  input [25-1:0] bmat_in_11,
  input [25-1:0] bmat_in_12,
  input [25-1:0] bmat_in_13,
  input [25-1:0] bmat_in_14,
  input [25-1:0] fmat_ip_in_2,
  input [25-1:0] fmat_ip_in_3,
  input [25-1:0] fmat_ip_in_4,
  input [25-1:0] fmat_ip_in_5,
  input [25-1:0] fmat_ip_in_6,
  input [25-1:0] fmat_ip_in_7,
  input [25-1:0] fmat_ip_in_8,
  input [25-1:0] fmat_ip_in_9,
  input [25-1:0] fmat_ip_in_10,
  input [25-1:0] fmat_ip_in_11,
  input [25-1:0] fmat_ip_in_12,
  input [25-1:0] fmat_ip_in_13,
  input [25-1:0] fmat_ip_in_14,
  input [25-1:0] fmat_ip_in_15,
  input [25-1:0] fmat_ip_in_16,
  input [25-1:0] fmat_ip_in_17,
  input [25-1:0] fmat_ip_in_18,
  input [25-1:0] fmat_ip_in_19,
  input [25-1:0] fmat_ip_in_20,
  input [25-1:0] fmat_ip_in_21,
  input [25-1:0] fmat_ip_in_22,
  input [25-1:0] fmat_ip_in_23,
  input [25-1:0] fmat_ip_in_24,
  input [25-1:0] fmat_ip_in_25,
  input [25-1:0] fmat_ip_in_26,
  input [25-1:0] fmat_ip_in_27,
  input [25-1:0] fmat_ip_in_28,
  input [25-1:0] fmat_ip_in_29,
  input [25-1:0] fmat_ip_in_30,
  input [25-1:0] fmat_ip_in_31,
  input [25-1:0] fmat_ip_in_32,
  input [25-1:0] fmat_ip_in_33,
  input [25-1:0] fmat_ip_in_34,
  input [25-1:0] fmat_ip_in_35,
  input [25-1:0] fmat_ip_in_36,
  input [25-1:0] fmat_ip_in_37,
  input [25-1:0] fmat_ip_in_38,
  input [25-1:0] fmat_ip_in_39,
  input [25-1:0] fmat_ip_in_40,
  input [25-1:0] fmat_ip_in_41,
  input [25-1:0] fmat_ip_in_42,
  input [25-1:0] fmat_ip_in_43,
  input [25-1:0] fmat_ip_in_44,
  input [25-1:0] fmat_ip_in_45,
  input [25-1:0] fmat_ip_in_46,
  input [25-1:0] fmat_ip_in_47,
  input [25-1:0] fmat_ip_in_48,
  input [25-1:0] fmat_ip_in_49,
  input [25-1:0] lmat_ip_in_2,
  input [25-1:0] lmat_ip_in_3,
  input [25-1:0] lmat_ip_in_4,
  input [25-1:0] lmat_ip_in_5,
  input [25-1:0] lmat_ip_in_6,
  input [25-1:0] lmat_ip_in_7,
  input [25-1:0] lmat_ip_in_8,
  input [25-1:0] lmat_ip_in_9,
  input [25-1:0] lmat_ip_in_10,
  input [25-1:0] lmat_ip_in_11,
  input [25-1:0] lmat_ip_in_12,
  input [25-1:0] lmat_ip_in_13,
  input [25-1:0] lmat_ip_in_14,
  input [25-1:0] kmat_ip_in_2,
  input [25-1:0] kmat_ip_in_3,
  input [25-1:0] kmat_ip_in_4,
  input [25-1:0] kmat_ip_in_5,
  input [25-1:0] kmat_ip_in_6,
  input [25-1:0] kmat_ip_in_7,
  input [25-1:0] kmat_ip_in_8,
  input [25-1:0] kmat_ip_in_9,
  input [25-1:0] kmat_ip_in_10,
  input [25-1:0] kmat_ip_in_11,
  input [25-1:0] kmat_ip_in_12,
  input [25-1:0] kmat_ip_in_13,
  input [25-1:0] kmat_ip_in_14,
  input [25-1:0] bmat_ip_in_2,
  input [25-1:0] bmat_ip_in_3,
  input [25-1:0] bmat_ip_in_4,
  input [25-1:0] bmat_ip_in_5,
  input [25-1:0] bmat_ip_in_6,
  input [25-1:0] bmat_ip_in_7,
  input [25-1:0] bmat_ip_in_8,
  input [25-1:0] bmat_ip_in_9,
  input [25-1:0] bmat_ip_in_10,
  input [25-1:0] bmat_ip_in_11,
  input [25-1:0] bmat_ip_in_12,
  input [25-1:0] bmat_ip_in_13,
  input [25-1:0] bmat_ip_in_14,
  input [30-1:0] barrier_ub_lb_in_2,
  input [25-1:0] barrier_ram_data_in_2,
  input [1-1:0] hw_pot_switch,
  input [14-1:0] x_in,
  input [14-1:0] z_in,
  input clk_1,
  input ce_1,
  input clk_4,
  input ce_4,
  input clk_64,
  input ce_64,
  output [30-1:0] divisor_out,
  output [32-1:0] dma_out_1,
  output [32-1:0] dma_out_2,
  output [32-1:0] dma_out_3,
  output [32-1:0] dma_out_4,
  output [32-1:0] dma_out_5,
  output [32-1:0] dma_out_6,
  output [32-1:0] dma_out_7,
  output [14-1:0] gate_fb_x_out,
  output [14-1:0] gate_fb_z_out,
  output [8-1:0] gate_leds_out,
  output [14-1:0] gate_x1_out,
  output [14-1:0] gate_x2_out,
  output [14-1:0] gate_x3_out,
  output [14-1:0] gate_x4_out,
  output [14-1:0] gate_x5_out,
  output [14-1:0] gate_x6_out,
  output [14-1:0] gate_x7_out,
  output [16-1:0] gate_y_x_corrected_out,
  output [16-1:0] gate_y_z_corrected_out
);
  wire [16-1:0] reinterpret7_output_port_net;
  wire [16-1:0] reinterpret11_output_port_net;
  wire [16-1:0] reinterpret9_output_port_net;
  wire [16-1:0] reinterpret14_output_port_net;
  wire [16-1:0] reinterpret12_output_port_net;
  wire [2-1:0] convert3_dout_net_x1;
  wire [1-1:0] relational_op_net;
  wire [16-1:0] reinterpret10_output_port_net;
  wire [30-1:0] constant1_op_net_x0;
  wire [16-1:0] reinterpret8_output_port_net;
  wire [16-1:0] reinterpret13_output_port_net;
  wire [34-1:0] mcode1_data_out_net;
  wire [25-1:0] fb_integral_s_net;
  wire [25-1:0] delay1_q_net;
  wire [30-1:0] down_sample10_q_net;
  wire [30-1:0] down_sample11_q_net;
  wire [25-1:0] down_sample15_q_net;
  wire [25-1:0] down_sample16_q_net;
  wire [1-1:0] down_sample17_q_net;
  wire [25-1:0] down_sample14_q_net;
  wire [1-1:0] down_sample12_q_net;
  wire [25-1:0] down_sample13_q_net;
  wire [25-1:0] down_sample2_q_net;
  wire [2-1:0] shift_op_net;
  wire [39-1:0] mult_p_net;
  wire [1-1:0] inverter_op_net;
  wire [2-1:0] expression_dout_net;
  wire [30-1:0] mux8_y_net_x3;
  wire [1-1:0] register_q_net;
  wire [30-1:0] mult2_p_net;
  wire [16-1:0] sfix16_cast1_dout_net;
  wire [30-1:0] register7_q_net_x7;
  wire [16-1:0] sfix16_cast12_dout_net;
  wire [16-1:0] sfix16_cast10_dout_net;
  wire [16-1:0] sfix16_cast11_dout_net;
  wire [16-1:0] sfix16_cast3_dout_net;
  wire [16-1:0] sfix16_cast14_dout_net;
  wire [16-1:0] sfix16_cast7_dout_net;
  wire [16-1:0] sfix16_cast4_dout_net;
  wire [16-1:0] sfix16_cast9_dout_net;
  wire [16-1:0] sfix16_cast13_dout_net;
  wire [16-1:0] sfix16_cast5_dout_net;
  wire [16-1:0] sfix16_cast2_dout_net;
  wire [16-1:0] sfix16_cast8_dout_net;
  wire [16-1:0] sfix16_cast6_dout_net;
  wire [30-1:0] up_sample4_q_net;
  wire [30-1:0] up_sample1_q_net;
  wire [30-1:0] up_sample3_q_net;
  wire [1-1:0] relational1_op_net;
  wire [30-1:0] up_sample_q_net;
  wire [30-1:0] up_sample2_q_net;
  wire [14-1:0] up_sample6_q_net;
  wire [14-1:0] x_in_reg_q_net;
  wire [30-1:0] up_sample5_q_net;
  wire [14-1:0] ofst_mon_in_reg_q_net;
  wire [14-1:0] dac_2_bias_reg_q_net;
  wire [14-1:0] dac_1_bias_reg_q_net;
  wire [10-1:0] down_sample4_q_net;
  wire [16-1:0] reinterpret3_output_port_net;
  wire [1-1:0] constant4_op_net;
  wire [25-1:0] constant3_op_net;
  wire [16-1:0] reinterpret2_output_port_net;
  wire [25-1:0] c0_ram_doutb_net;
  wire [16-1:0] reinterpret4_output_port_net;
  wire [16-1:0] reinterpret6_output_port_net;
  wire [16-1:0] reinterpret1_output_port_net;
  wire [1-1:0] down_sample5_q_net;
  wire [25-1:0] c1_ram_douta_net;
  wire [25-1:0] c1_ram_doutb_net;
  wire [16-1:0] reinterpret5_output_port_net;
  wire [1-1:0] pot_sw_mux_y_net;
  wire [1-1:0] register_q_net_x1;
  wire [25-1:0] register0_q_net_x5;
  wire [25-1:0] register0_q_net_x9;
  wire [25-1:0] register0_q_net_x6;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] register0_q_net_x7;
  wire [1-1:0] register20_q_net_x1;
  wire [1-1:0] register15_q_net_x0;
  wire [14-1:0] register1_q_net_x9;
  wire [1-1:0] register9_q_net_x7;
  wire [25-1:0] register3_q_net_x6;
  wire [25-1:0] register0_q_net_x4;
  wire [25-1:0] register0_q_net_x2;
  wire [10-1:0] register14_q_net_x0;
  wire [2-1:0] register5_q_net_x8;
  wire [25-1:0] register1_q_net_x10;
  wire [25-1:0] register2_q_net_x6;
  wire [25-1:0] register4_q_net_x6;
  wire [25-1:0] register0_q_net_x0;
  wire [30-1:0] register4_q_net_x8;
  wire [25-1:0] register17_q_net_x1;
  wire [30-1:0] register0_q_net_x1;
  wire [6-1:0] register7_q_net_x8;
  wire [25-1:0] register18_q_net_x1;
  wire [25-1:0] register21_q_net_x1;
  wire [1-1:0] register10_q_net_x6;
  wire [14-1:0] register8_q_net_x7;
  wire [25-1:0] register12_q_net_x6;
  wire [25-1:0] register19_q_net_x1;
  wire [14-1:0] register6_q_net_x8;
  wire [3-1:0] register16_q_net_x1;
  wire [25-1:0] register0_q_net_x3;
  wire [14-1:0] register23_q_net_x1;
  wire [14-1:0] register3_q_net_x8;
  wire [10-1:0] register13_q_net_x6;
  wire [30-1:0] register2_q_net_x8;
  wire [14-1:0] register22_q_net_x1;
  wire [18-1:0] register11_q_net_x6;
  wire [25-1:0] register10_q_net_x7;
  wire [25-1:0] register17_q_net_x0;
  wire [25-1:0] register18_q_net_x0;
  wire [25-1:0] register20_q_net_x0;
  wire [25-1:0] register25_q_net_x0;
  wire [25-1:0] register27_q_net_x0;
  wire [25-1:0] register16_q_net_x0;
  wire [25-1:0] register31_q_net_x0;
  wire [25-1:0] register5_q_net_x6;
  wire [25-1:0] register8_q_net_x6;
  wire [25-1:0] register22_q_net_x0;
  wire [25-1:0] register28_q_net_x0;
  wire [25-1:0] register19_q_net_x0;
  wire [25-1:0] register21_q_net_x0;
  wire [25-1:0] register12_q_net_x7;
  wire [25-1:0] register15_q_net_x1;
  wire [25-1:0] register30_q_net_x0;
  wire [25-1:0] register33_q_net_x0;
  wire [25-1:0] register29_q_net_x0;
  wire [25-1:0] register9_q_net_x6;
  wire [25-1:0] register35_q_net_x0;
  wire [25-1:0] register36_q_net_x0;
  wire [25-1:0] register7_q_net_x6;
  wire [25-1:0] register24_q_net_x0;
  wire [25-1:0] register11_q_net_x7;
  wire [25-1:0] register32_q_net_x0;
  wire [25-1:0] register13_q_net_x7;
  wire [25-1:0] register6_q_net_x6;
  wire [25-1:0] register14_q_net_x1;
  wire [25-1:0] register26_q_net_x0;
  wire [25-1:0] register23_q_net_x0;
  wire [25-1:0] register34_q_net_x0;
  wire [25-1:0] register4_q_net_x3;
  wire [25-1:0] register38_q_net_x0;
  wire [25-1:0] register37_q_net_x0;
  wire [25-1:0] register1_q_net_x5;
  wire [25-1:0] register10_q_net_x3;
  wire [25-1:0] register12_q_net_x3;
  wire [25-1:0] register8_q_net_x3;
  wire [25-1:0] register1_q_net_x6;
  wire [25-1:0] register3_q_net_x4;
  wire [25-1:0] register6_q_net_x3;
  wire [25-1:0] register39_q_net_x0;
  wire [25-1:0] register43_q_net_x0;
  wire [25-1:0] register44_q_net_x0;
  wire [25-1:0] register47_q_net_x0;
  wire [25-1:0] register5_q_net_x3;
  wire [25-1:0] register7_q_net_x3;
  wire [25-1:0] register45_q_net_x0;
  wire [25-1:0] register42_q_net_x0;
  wire [25-1:0] register46_q_net_x0;
  wire [25-1:0] register2_q_net_x3;
  wire [25-1:0] register13_q_net_x3;
  wire [25-1:0] register2_q_net_x4;
  wire [25-1:0] register48_q_net_x0;
  wire [25-1:0] register4_q_net_x4;
  wire [25-1:0] register5_q_net_x4;
  wire [25-1:0] register40_q_net_x0;
  wire [25-1:0] register11_q_net_x3;
  wire [25-1:0] register6_q_net_x4;
  wire [25-1:0] register41_q_net_x0;
  wire [25-1:0] register7_q_net_x4;
  wire [25-1:0] register9_q_net_x3;
  wire [25-1:0] register3_q_net_x3;
  wire [25-1:0] register3_q_net_x5;
  wire [25-1:0] register4_q_net_x5;
  wire [25-1:0] register6_q_net_x5;
  wire [25-1:0] register10_q_net_x4;
  wire [25-1:0] register8_q_net_x4;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] register12_q_net_x4;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] register9_q_net;
  wire [25-1:0] register11_q_net;
  wire [25-1:0] register7_q_net_x5;
  wire [25-1:0] register5_q_net_x5;
  wire [25-1:0] register9_q_net_x5;
  wire [25-1:0] register11_q_net_x5;
  wire [25-1:0] register12_q_net_x5;
  wire [25-1:0] register9_q_net_x4;
  wire [25-1:0] register13_q_net_x5;
  wire [25-1:0] register4_q_net;
  wire [25-1:0] register7_q_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] register10_q_net;
  wire [25-1:0] register6_q_net;
  wire [25-1:0] register12_q_net;
  wire [25-1:0] register1_q_net_x7;
  wire [25-1:0] register2_q_net_x5;
  wire [25-1:0] register11_q_net_x4;
  wire [25-1:0] register8_q_net_x5;
  wire [25-1:0] register5_q_net;
  wire [25-1:0] register13_q_net;
  wire [25-1:0] register10_q_net_x5;
  wire [25-1:0] register13_q_net_x4;
  wire [25-1:0] register8_q_net;
  wire [25-1:0] register16_q_net;
  wire [25-1:0] register37_q_net;
  wire [25-1:0] register40_q_net;
  wire [25-1:0] register23_q_net;
  wire [25-1:0] register21_q_net;
  wire [25-1:0] register38_q_net;
  wire [25-1:0] register30_q_net;
  wire [25-1:0] register39_q_net;
  wire [25-1:0] register41_q_net;
  wire [25-1:0] register14_q_net;
  wire [25-1:0] register25_q_net;
  wire [25-1:0] register29_q_net;
  wire [25-1:0] register24_q_net;
  wire [25-1:0] register31_q_net;
  wire [25-1:0] register33_q_net;
  wire [25-1:0] register19_q_net;
  wire [25-1:0] register35_q_net;
  wire [25-1:0] register18_q_net;
  wire [25-1:0] register20_q_net;
  wire [25-1:0] register28_q_net;
  wire [25-1:0] register42_q_net;
  wire [25-1:0] register44_q_net;
  wire [25-1:0] register45_q_net;
  wire [25-1:0] register15_q_net;
  wire [25-1:0] register32_q_net;
  wire [25-1:0] register26_q_net;
  wire [25-1:0] register43_q_net;
  wire [25-1:0] register34_q_net;
  wire [25-1:0] register27_q_net;
  wire [25-1:0] register17_q_net;
  wire [25-1:0] register36_q_net;
  wire [25-1:0] register22_q_net;
  wire [25-1:0] register13_q_net_x2;
  wire [25-1:0] register5_q_net_x2;
  wire [25-1:0] register7_q_net_x1;
  wire [25-1:0] register11_q_net_x2;
  wire [25-1:0] register5_q_net_x1;
  wire [25-1:0] register9_q_net_x1;
  wire [25-1:0] register47_q_net;
  wire [25-1:0] register4_q_net_x2;
  wire [25-1:0] register10_q_net_x1;
  wire [25-1:0] register12_q_net_x1;
  wire [25-1:0] register1_q_net_x2;
  wire [25-1:0] register2_q_net_x1;
  wire [25-1:0] register12_q_net_x2;
  wire [25-1:0] register9_q_net_x2;
  wire [25-1:0] register3_q_net_x1;
  wire [25-1:0] register4_q_net_x1;
  wire [25-1:0] register6_q_net_x1;
  wire [25-1:0] register3_q_net_x2;
  wire [25-1:0] register8_q_net_x1;
  wire [25-1:0] register11_q_net_x1;
  wire [25-1:0] register48_q_net;
  wire [25-1:0] register1_q_net_x3;
  wire [25-1:0] register2_q_net_x0;
  wire [25-1:0] register3_q_net_x0;
  wire [25-1:0] register6_q_net_x2;
  wire [25-1:0] register8_q_net_x2;
  wire [25-1:0] register13_q_net_x1;
  wire [25-1:0] register46_q_net;
  wire [25-1:0] register1_q_net_x4;
  wire [25-1:0] register2_q_net_x2;
  wire [25-1:0] register10_q_net_x2;
  wire [25-1:0] register7_q_net_x2;
  wire [32-1:0] concat3_y_net;
  wire [32-1:0] concat5_y_net;
  wire [32-1:0] concat6_y_net;
  wire [25-1:0] register5_q_net_x0;
  wire [14-1:0] upsample1_q_net;
  wire [14-1:0] upsample4_q_net;
  wire [14-1:0] add_dac_1_bias_s_net;
  wire [25-1:0] register1_q_net_x0;
  wire [16-1:0] sfix16_13_cast1_dout_net;
  wire [14-1:0] upsample0_q_net;
  wire [32-1:0] concat2_y_net;
  wire [25-1:0] register8_q_net_x0;
  wire [32-1:0] concat7_y_net;
  wire [30-1:0] add_offset_ch2_s_net;
  wire [14-1:0] add_dac_2_bias_s_net;
  wire [8-1:0] concat1_y_net;
  wire [25-1:0] register10_q_net_x0;
  wire [25-1:0] register6_q_net_x0;
  wire [30-1:0] register1_q_net_x1;
  wire [25-1:0] register4_q_net_x0;
  wire [32-1:0] concat_y_net;
  wire [25-1:0] register9_q_net_x0;
  wire [14-1:0] upsample2_q_net;
  wire [14-1:0] upsample3_q_net;
  wire [32-1:0] concat4_y_net;
  wire [14-1:0] upsample5_q_net;
  wire [14-1:0] upsample6_q_net;
  wire [16-1:0] sfix16_13_cast_dout_net;
  wire [25-1:0] register7_q_net_x0;
  wire [25-1:0] register11_q_net_x0;
  wire [25-1:0] register12_q_net_x0;
  wire [25-1:0] register13_q_net_x0;
  wire [55-1:0] mult5_p_net_x1;
  wire [55-1:0] mult3_p_net_x5;
  wire [57-1:0] addsub6_s_net_x5;
  wire [55-1:0] mult2_p_net_x8;
  wire [55-1:0] mult1_p_net_x0;
  wire [55-1:0] mult3_p_net_x7;
  wire [55-1:0] mult0_p_net_x6;
  wire ce_net;
  wire src_ce_net;
  wire [14-1:0] down_sample9_q_net;
  wire src_clk_net;
  wire [55-1:0] mult5_p_net_x0;
  wire [55-1:0] mult2_p_net_x1;
  wire [55-1:0] mult1_p_net_x12;
  wire [55-1:0] mult4_p_net_x5;
  wire [55-1:0] mult2_p_net_x5;
  wire ce_net_x0;
  wire [55-1:0] mult2_p_net_x0;
  wire [55-1:0] mult3_p_net_x0;
  wire [55-1:0] mult5_p_net_x6;
  wire [55-1:0] mult6_p_net;
  wire [55-1:0] mult0_p_net_x15;
  wire [55-1:0] mult4_p_net_x7;
  wire [55-1:0] mult6_p_net_x0;
  wire [57-1:0] addsub6_s_net_x7;
  wire [55-1:0] mult3_p_net_x4;
  wire [55-1:0] mult4_p_net_x4;
  wire [55-1:0] mult6_p_net_x7;
  wire clk_net_x0;
  wire [55-1:0] mult0_p_net;
  wire [55-1:0] mult2_p_net_x6;
  wire [57-1:0] addsub6_s_net_x6;
  wire [55-1:0] mult6_p_net_x5;
  wire [57-1:0] addsub6_s_net_x4;
  wire [55-1:0] mult5_p_net_x5;
  wire [55-1:0] mult6_p_net_x4;
  wire [14-1:0] register_q_net_x0;
  wire [55-1:0] mult0_p_net_x11;
  wire [57-1:0] addsub6_s_net_x3;
  wire [55-1:0] mult0_p_net_x5;
  wire [14-1:0] x_in_net;
  wire [55-1:0] mult1_p_net_x6;
  wire [55-1:0] mult2_p_net_x4;
  wire [14-1:0] z_in_net;
  wire [55-1:0] mult1_p_net_x16;
  wire [55-1:0] mult5_p_net_x8;
  wire [55-1:0] mult1_p_net_x7;
  wire [57-1:0] addsub6_s_net_x8;
  wire [1-1:0] hw_pot_switch_net;
  wire [55-1:0] mult1_p_net_x1;
  wire [55-1:0] mult4_p_net_x0;
  wire clk_net;
  wire [55-1:0] mult4_p_net;
  wire [55-1:0] mult3_p_net;
  wire [55-1:0] mult0_p_net_x0;
  wire [57-1:0] addsub2_s_net_x12;
  wire [55-1:0] mult0_p_net_x14;
  wire [55-1:0] mult4_p_net_x6;
  wire [55-1:0] mult5_p_net_x2;
  wire [55-1:0] mult1_p_net_x15;
  wire [55-1:0] mult4_p_net_x2;
  wire [39-1:0] mult1_p_net_x17;
  wire [55-1:0] mult0_p_net_x2;
  wire [57-1:0] addsub6_s_net_x2;
  wire [55-1:0] mult1_p_net_x10;
  wire [55-1:0] mult5_p_net_x4;
  wire [55-1:0] mult6_p_net_x1;
  wire [55-1:0] mult0_p_net_x12;
  wire [55-1:0] mult1_p_net_x13;
  wire [55-1:0] mult3_p_net_x1;
  wire [39-1:0] mult1_p_net_x18;
  wire [55-1:0] mult6_p_net_x3;
  wire [55-1:0] mult3_p_net_x6;
  wire [39-1:0] mult1_p_net_x19;
  wire [57-1:0] addsub2_s_net_x7;
  wire [57-1:0] addsub2_s_net_x14;
  wire [57-1:0] addsub2_s_net_x11;
  wire [39-1:0] mult0_p_net_x19;
  wire [57-1:0] addsub2_s_net_x8;
  wire [57-1:0] addsub2_s_net_x6;
  wire [55-1:0] mult5_p_net_x3;
  wire [55-1:0] mult1_p_net_x3;
  wire [39-1:0] mult1_p_net_x8;
  wire [55-1:0] mult4_p_net_x3;
  wire [55-1:0] mult3_p_net_x2;
  wire [55-1:0] mult6_p_net_x2;
  wire [57-1:0] addsub2_s_net_x5;
  wire [39-1:0] mult0_p_net_x8;
  wire [55-1:0] mult6_p_net_x6;
  wire [55-1:0] mult3_p_net_x3;
  wire [55-1:0] mult1_p_net_x5;
  wire [57-1:0] addsub6_s_net_x1;
  wire [57-1:0] addsub2_s_net_x13;
  wire [57-1:0] addsub2_s_net_x10;
  wire [55-1:0] mult2_p_net_x3;
  wire [39-1:0] mult0_p_net_x18;
  wire [39-1:0] mult1_p_net_x9;
  wire [55-1:0] mult5_p_net_x7;
  wire [55-1:0] mult4_p_net_x1;
  wire [55-1:0] mult0_p_net_x10;
  wire [57-1:0] addsub2_s_net_x9;
  wire [57-1:0] addsub2_s_net_x4;
  wire [39-1:0] mult0_p_net_x13;
  wire [39-1:0] mult1_p_net_x14;
  wire [57-1:0] addsub2_s_net_x3;
  wire [39-1:0] mult1_p_net_x20;
  wire [55-1:0] mult0_p_net_x3;
  wire [55-1:0] mult0_p_net_x20;
  wire [55-1:0] mult1_p_net_x21;
  wire [39-1:0] mult0_p_net_x7;
  wire [55-1:0] mult1_p_net_x11;
  wire [39-1:0] mult0_p_net_x16;
  wire [55-1:0] mult0_p_net_x4;
  wire [55-1:0] mult0_p_net_x9;
  wire [39-1:0] mult0_p_net_x17;
  wire [55-1:0] mult1_p_net_x4;
  wire [57-1:0] addsub6_s_net_x0;
  wire [55-1:0] mult2_p_net_x7;
  wire [55-1:0] mult2_p_net_x2;
  wire [25-1:0] downsample0_q_net_x8;
  wire [55-1:0] mult0_p_net_x1;
  wire [58-1:0] addsub5_s_net;
  wire [58-1:0] addsub2_s_net;
  wire [55-1:0] mult1_p_net_x2;
  wire [31-1:0] addsub1_s_net;
  wire [59-1:0] addsub0_s_net_x2;
  wire [30-1:0] addsub8_s_net;
  wire [57-1:0] addsub2_s_net_x1;
  wire [59-1:0] addsub1_s_net_x2;
  wire [55-1:0] mult0_p_net_x21;
  wire [14-1:0] constant_op_net;
  wire [58-1:0] addsub4_s_net;
  wire [31-1:0] addsub0_s_net;
  wire [30-1:0] constant2_op_net;
  wire [30-1:0] constant0_op_net;
  wire [30-1:0] convert6_dout_net_x0;
  wire [14-1:0] convert2_dout_net;
  wire [58-1:0] addsub6_s_net;
  wire [58-1:0] addsub0_s_net_x1;
  wire [58-1:0] addsub3_s_net;
  wire [14-1:0] up_sample7_q_net;
  wire [30-1:0] convert4_dout_net_x0;
  wire [57-1:0] addsub6_s_net_x9;
  wire [58-1:0] mux0_y_net_x3;
  wire [59-1:0] addsub2_s_net_x0;
  wire [58-1:0] mux1_y_net_x3;
  wire [25-1:0] downsample3_q_net_x6;
  wire [59-1:0] addsub4_s_net_x0;
  wire [25-1:0] downsample1_q_net_x8;
  wire [25-1:0] downsample5_q_net_x6;
  wire [25-1:0] downsample6_q_net_x6;
  wire [14-1:0] convert6_dout_net;
  wire [25-1:0] downsample7_q_net_x6;
  wire [25-1:0] downsample8_q_net_x6;
  wire [14-1:0] convert0_dout_net_x0;
  wire [58-1:0] addsub1_s_net_x1;
  wire [30-1:0] convert1_dout_net_x1;
  wire [57-1:0] addsub2_s_net_x2;
  wire [59-1:0] addsub3_s_net_x0;
  wire [30-1:0] convert2_dout_net_x0;
  wire [25-1:0] downsample4_q_net_x6;
  wire [14-1:0] convert0_dout_net;
  wire [25-1:0] downsample9_q_net_x6;
  wire [25-1:0] downsample10_q_net_x6;
  wire [25-1:0] downsample11_q_net_x6;
  wire [25-1:0] downsample12_q_net_x6;
  wire [25-1:0] downsample13_q_net_x6;
  wire [25-1:0] downsample2_q_net_x6;
  wire [25-1:0] downsample14_q_net_x0;
  wire [14-1:0] convert4_dout_net;
  wire [59-1:0] addsub6_s_net_x10;
  wire [30-1:0] convert3_dout_net_x0;
  wire [30-1:0] constant1_op_net;
  wire [58-1:0] addsub1_s_net_x0;
  wire [30-1:0] convert5_dout_net_x0;
  wire [14-1:0] convert1_dout_net_x0;
  wire [58-1:0] addsub0_s_net_x0;
  wire [14-1:0] convert3_dout_net;
  wire [30-1:0] convert0_dout_net_x1;
  wire [14-1:0] convert5_dout_net;
  wire [55-1:0] mult1_p_net_x22;
  wire [59-1:0] addsub5_s_net_x0;
  wire [14-1:0] convert1_dout_net;
  wire [25-1:0] downsample20_q_net;
  wire [25-1:0] downsample30_q_net_x0;
  wire [25-1:0] downsample25_q_net;
  wire [25-1:0] downsample1_q_net_x7;
  wire [25-1:0] downsample21_q_net_x0;
  wire [25-1:0] downsample24_q_net_x0;
  wire [25-1:0] downsample26_q_net_x0;
  wire [25-1:0] downsample29_q_net_x0;
  wire [25-1:0] downsample7_q_net_x5;
  wire [25-1:0] downsample43_q_net_x0;
  wire [25-1:0] downsample15_q_net_x0;
  wire [25-1:0] downsample31_q_net_x0;
  wire [25-1:0] downsample41_q_net_x0;
  wire [25-1:0] downsample44_q_net_x0;
  wire [25-1:0] downsample37_q_net_x0;
  wire [25-1:0] downsample13_q_net_x5;
  wire [25-1:0] downsample14_q_net;
  wire [25-1:0] downsample17_q_net;
  wire [25-1:0] downsample19_q_net;
  wire [25-1:0] downsample19_q_net_x0;
  wire [25-1:0] downsample16_q_net_x0;
  wire [25-1:0] downsample33_q_net_x0;
  wire [25-1:0] downsample25_q_net_x0;
  wire [25-1:0] downsample36_q_net_x0;
  wire [25-1:0] downsample34_q_net_x0;
  wire [25-1:0] downsample47_q_net_x0;
  wire [25-1:0] downsample27_q_net_x0;
  wire [25-1:0] downsample48_q_net_x0;
  wire [25-1:0] downsample3_q_net_x5;
  wire [25-1:0] downsample5_q_net_x5;
  wire [25-1:0] downsample42_q_net_x0;
  wire [25-1:0] downsample15_q_net;
  wire [25-1:0] downsample18_q_net;
  wire [25-1:0] downsample4_q_net_x5;
  wire [25-1:0] downsample21_q_net;
  wire [25-1:0] downsample38_q_net_x0;
  wire [25-1:0] downsample23_q_net_x0;
  wire [25-1:0] downsample40_q_net_x0;
  wire [25-1:0] downsample22_q_net_x0;
  wire [25-1:0] downsample39_q_net_x0;
  wire [25-1:0] downsample8_q_net_x5;
  wire [25-1:0] downsample9_q_net_x5;
  wire [25-1:0] downsample6_q_net_x5;
  wire [25-1:0] downsample12_q_net_x5;
  wire [25-1:0] downsample24_q_net;
  wire [25-1:0] downsample28_q_net_x0;
  wire [25-1:0] downsample22_q_net;
  wire [25-1:0] downsample20_q_net_x0;
  wire [25-1:0] downsample11_q_net_x5;
  wire [25-1:0] downsample17_q_net_x0;
  wire [25-1:0] downsample16_q_net;
  wire [25-1:0] downsample0_q_net_x7;
  wire [25-1:0] downsample23_q_net;
  wire [25-1:0] downsample26_q_net;
  wire [25-1:0] downsample2_q_net_x5;
  wire [25-1:0] downsample27_q_net;
  wire [25-1:0] downsample45_q_net_x0;
  wire [25-1:0] downsample28_q_net;
  wire [25-1:0] downsample10_q_net_x5;
  wire [25-1:0] downsample29_q_net;
  wire [25-1:0] downsample18_q_net_x0;
  wire [25-1:0] downsample35_q_net_x0;
  wire [25-1:0] downsample32_q_net_x0;
  wire [25-1:0] downsample46_q_net_x0;
  wire [25-1:0] downsample6_q_net_x4;
  wire [25-1:0] downsample8_q_net_x4;
  wire [25-1:0] downsample13_q_net_x3;
  wire [25-1:0] downsample2_q_net_x2;
  wire [25-1:0] downsample0_q_net_x3;
  wire [25-1:0] downsample2_q_net_x1;
  wire [25-1:0] downsample39_q_net;
  wire [25-1:0] downsample30_q_net;
  wire [25-1:0] downsample33_q_net;
  wire [25-1:0] downsample1_q_net_x6;
  wire [25-1:0] downsample45_q_net;
  wire [25-1:0] downsample7_q_net_x4;
  wire [25-1:0] downsample10_q_net_x4;
  wire [25-1:0] downsample12_q_net_x4;
  wire [25-1:0] downsample48_q_net;
  wire [25-1:0] downsample0_q_net_x5;
  wire [25-1:0] downsample10_q_net_x3;
  wire [25-1:0] downsample12_q_net_x3;
  wire [25-1:0] downsample36_q_net;
  wire [25-1:0] downsample34_q_net;
  wire [25-1:0] downsample43_q_net;
  wire [25-1:0] downsample9_q_net_x4;
  wire [25-1:0] downsample31_q_net;
  wire [25-1:0] downsample13_q_net_x4;
  wire [25-1:0] downsample1_q_net_x5;
  wire [25-1:0] downsample7_q_net_x3;
  wire [25-1:0] downsample5_q_net_x4;
  wire [25-1:0] downsample8_q_net_x3;
  wire [25-1:0] downsample46_q_net;
  wire [25-1:0] downsample4_q_net_x3;
  wire [25-1:0] downsample3_q_net_x2;
  wire [25-1:0] downsample47_q_net;
  wire [25-1:0] downsample4_q_net_x2;
  wire [25-1:0] downsample32_q_net;
  wire [25-1:0] downsample42_q_net;
  wire [25-1:0] downsample6_q_net_x3;
  wire [25-1:0] downsample41_q_net;
  wire [25-1:0] downsample0_q_net_x4;
  wire [25-1:0] downsample5_q_net_x2;
  wire [25-1:0] downsample3_q_net_x3;
  wire [25-1:0] downsample7_q_net_x2;
  wire [25-1:0] downsample38_q_net;
  wire [25-1:0] downsample44_q_net;
  wire [25-1:0] downsample8_q_net_x2;
  wire [25-1:0] downsample9_q_net_x2;
  wire [25-1:0] downsample35_q_net;
  wire [25-1:0] downsample5_q_net_x3;
  wire [25-1:0] downsample37_q_net;
  wire [25-1:0] downsample11_q_net_x4;
  wire [25-1:0] downsample10_q_net_x2;
  wire [25-1:0] downsample3_q_net_x4;
  wire [25-1:0] downsample11_q_net_x3;
  wire [25-1:0] downsample11_q_net_x2;
  wire [25-1:0] downsample12_q_net_x2;
  wire [25-1:0] downsample2_q_net_x4;
  wire [25-1:0] downsample13_q_net_x2;
  wire [25-1:0] downsample0_q_net_x6;
  wire [25-1:0] downsample9_q_net_x3;
  wire [25-1:0] downsample1_q_net_x4;
  wire [25-1:0] downsample6_q_net_x2;
  wire [25-1:0] downsample2_q_net_x3;
  wire [25-1:0] downsample1_q_net_x3;
  wire [25-1:0] downsample4_q_net_x4;
  wire [25-1:0] downsample40_q_net;
  wire [25-1:0] downsample1_q_net;
  wire [25-1:0] downsample9_q_net;
  wire [25-1:0] downsample9_q_net_x0;
  wire [25-1:0] downsample7_q_net_x0;
  wire [25-1:0] downsample7_q_net;
  wire [25-1:0] downsample10_q_net;
  wire [25-1:0] downsample12_q_net_x0;
  wire [25-1:0] downsample13_q_net;
  wire [25-1:0] mux1_y_net_x2;
  wire [25-1:0] downsample12_q_net_x1;
  wire [25-1:0] downsample3_q_net_x1;
  wire [25-1:0] downsample0_q_net_x0;
  wire [25-1:0] mux0_y_net_x2;
  wire [25-1:0] mux6_y_net_x2;
  wire [25-1:0] downsample4_q_net_x1;
  wire [25-1:0] mux10_y_net_x2;
  wire [25-1:0] mux11_y_net_x2;
  wire [25-1:0] mux12_y_net_x2;
  wire [25-1:0] mux13_y_net_x2;
  wire [25-1:0] downsample12_q_net;
  wire [25-1:0] downsample8_q_net_x0;
  wire [25-1:0] downsample2_q_net_x0;
  wire [25-1:0] downsample4_q_net;
  wire [25-1:0] mux2_y_net_x2;
  wire [25-1:0] mux15_y_net;
  wire [25-1:0] mux16_y_net;
  wire [25-1:0] mux17_y_net;
  wire [25-1:0] mux18_y_net;
  wire [25-1:0] downsample8_q_net;
  wire [25-1:0] downsample11_q_net_x1;
  wire [25-1:0] mux19_y_net;
  wire [25-1:0] mux14_y_net;
  wire [25-1:0] mux20_y_net;
  wire [25-1:0] downsample6_q_net_x1;
  wire [25-1:0] downsample11_q_net;
  wire [25-1:0] downsample7_q_net_x1;
  wire [25-1:0] downsample9_q_net_x1;
  wire [25-1:0] downsample10_q_net_x1;
  wire [25-1:0] downsample3_q_net_x0;
  wire [25-1:0] downsample8_q_net_x1;
  wire [25-1:0] downsample4_q_net_x0;
  wire [25-1:0] downsample11_q_net_x0;
  wire [25-1:0] downsample1_q_net_x2;
  wire [30-1:0] downsample0_q_net_x1;
  wire [25-1:0] downsample3_q_net;
  wire [25-1:0] downsample13_q_net_x1;
  wire [25-1:0] downsample1_q_net_x0;
  wire [25-1:0] downsample10_q_net_x0;
  wire [25-1:0] downsample5_q_net;
  wire [25-1:0] mux5_y_net_x2;
  wire [25-1:0] mux4_y_net_x2;
  wire [25-1:0] mux7_y_net_x2;
  wire [25-1:0] downsample6_q_net;
  wire [25-1:0] downsample5_q_net_x1;
  wire [25-1:0] downsample0_q_net_x2;
  wire [25-1:0] downsample2_q_net;
  wire [25-1:0] mux3_y_net_x2;
  wire [25-1:0] downsample5_q_net_x0;
  wire [25-1:0] downsample0_q_net;
  wire [25-1:0] mux8_y_net_x2;
  wire [25-1:0] mux9_y_net_x1;
  wire [25-1:0] downsample6_q_net_x0;
  wire [30-1:0] downsample1_q_net_x1;
  wire [25-1:0] downsample13_q_net_x0;
  wire [25-1:0] mux42_y_net;
  wire [1-1:0] down_sample1_q_net;
  wire [25-1:0] mux30_y_net;
  wire [25-1:0] mux33_y_net;
  wire [25-1:0] mux3_y_net_x1;
  wire [25-1:0] mux25_y_net;
  wire [25-1:0] mux46_y_net;
  wire [25-1:0] mux1_y_net_x0;
  wire [25-1:0] mux21_y_net;
  wire [25-1:0] mux48_y_net;
  wire [25-1:0] mux1_y_net_x1;
  wire [25-1:0] mux8_y_net_x1;
  wire [25-1:0] mux32_y_net;
  wire [25-1:0] mux10_y_net_x1;
  wire [25-1:0] mux0_y_net_x0;
  wire [25-1:0] mux2_y_net_x0;
  wire [25-1:0] mux3_y_net_x0;
  wire [25-1:0] mux4_y_net_x0;
  wire [25-1:0] mux31_y_net;
  wire [25-1:0] mux44_y_net;
  wire [25-1:0] mux29_y_net;
  wire [25-1:0] mux34_y_net;
  wire [25-1:0] mux35_y_net;
  wire [25-1:0] mux0_y_net_x1;
  wire [25-1:0] mux37_y_net;
  wire [25-1:0] mux5_y_net_x0;
  wire [25-1:0] mux6_y_net_x0;
  wire [25-1:0] mux40_y_net;
  wire [25-1:0] mux41_y_net;
  wire [25-1:0] mux9_y_net;
  wire [25-1:0] mux7_y_net_x0;
  wire [25-1:0] mux12_y_net_x0;
  wire [25-1:0] mux13_y_net_x0;
  wire [25-1:0] mux24_y_net;
  wire [25-1:0] mux39_y_net;
  wire [25-1:0] mux23_y_net;
  wire [25-1:0] mux6_y_net_x1;
  wire [25-1:0] mux11_y_net_x1;
  wire [25-1:0] mux12_y_net_x1;
  wire [25-1:0] mux11_y_net_x0;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] mux2_y_net;
  wire [25-1:0] mux10_y_net_x0;
  wire [25-1:0] mux3_y_net;
  wire [25-1:0] mux4_y_net;
  wire [25-1:0] mux38_y_net;
  wire [25-1:0] mux2_y_net_x1;
  wire [25-1:0] mux5_y_net_x1;
  wire [25-1:0] mux4_y_net_x1;
  wire [25-1:0] mux47_y_net;
  wire [25-1:0] mux45_y_net;
  wire [25-1:0] mux8_y_net_x0;
  wire [25-1:0] mux0_y_net;
  wire [25-1:0] mux5_y_net;
  wire [25-1:0] mux6_y_net;
  wire [25-1:0] mux43_y_net;
  wire [25-1:0] mux28_y_net;
  wire [25-1:0] mux26_y_net;
  wire [25-1:0] mux36_y_net;
  wire [25-1:0] mux7_y_net_x1;
  wire [25-1:0] mux13_y_net_x1;
  wire [25-1:0] mux22_y_net;
  wire [25-1:0] mux27_y_net;
  wire [25-1:0] mux9_y_net_x0;
  wire [25-1:0] mux11_y_net;
  wire [30-1:0] down_sample_q_net;
  wire [30-1:0] down_sample8_q_net;
  wire [3-1:0] down_sample6_q_net;
  wire [30-1:0] mcode_data_out_net;
  wire [25-1:0] mux9_y_net_x2;
  wire [30-1:0] add_offset_ch1_s_net;
  wire [34-1:0] delay_q_net;
  wire [10-1:0] down_sample3_q_net;
  wire [30-1:0] register0_q_net_x8;
  wire [10-1:0] addsub3_s_net_x1;
  wire [30-1:0] addsub_s_net;
  wire [30-1:0] register5_q_net_x7;
  wire [30-1:0] register6_q_net_x7;
  wire [25-1:0] mux13_y_net;
  wire [30-1:0] register3_q_net_x7;
  wire [25-1:0] mux12_y_net;
  wire [30-1:0] register1_q_net_x8;
  wire [14-1:0] upsample0_q_net_x0;
  wire [25-1:0] mux7_y_net;
  wire [30-1:0] register4_q_net_x7;
  wire [25-1:0] mux10_y_net;
  wire [14-1:0] upsample1_q_net_x0;
  wire [25-1:0] c0_ram_douta_net;
  wire [30-1:0] register2_q_net_x7;
  wire [25-1:0] mux8_y_net;
  wire [11-1:0] mult1_p_net;
  wire [30-1:0] mult5_p_net;
  assign register_q_net_x1 = sw_in;
  assign register0_q_net_x9 = fmat_in_1;
  assign register0_q_net_x5 = lmat_in_1;
  assign register0_q_net_x6 = kmat_in_1;
  assign register0_q_net = bmat_in_1;
  assign register0_q_net_x7 = fmat_ip_in_1;
  assign register0_q_net_x4 = lmat_ip_in_1;
  assign register0_q_net_x3 = kmat_ip_in_1;
  assign register0_q_net_x2 = bmat_ip_in_1;
  assign register5_q_net_x8 = hw_switch_override;
  assign register3_q_net_x8 = adc_ch1_offst;
  assign register6_q_net_x8 = adc_ch2_offst;
  assign register8_q_net_x7 = pot_switch_hw;
  assign register9_q_net_x7 = pot_switch_hw_flag;
  assign register7_q_net_x8 = leds_in;
  assign register11_q_net_x6 = x_ref_in;
  assign register16_q_net_x1 = fb_src_switch;
  assign register0_q_net_x1 = barrier_ub_lb_in_1;
  assign register12_q_net_x6 = barrier_c_idx_in;
  assign register13_q_net_x6 = barrier_c_ofst_idx_in;
  assign register14_q_net_x0 = barrier_ram_addr_in;
  assign register0_q_net_x0 = barrier_ram_data_in_1;
  assign register15_q_net_x0 = barrier_ram_we_in;
  assign register1_q_net_x9 = noise_gain_in;
  assign register2_q_net_x8 = x_ref_ub_in;
  assign register4_q_net_x8 = x_ref_lb_in;
  assign register10_q_net_x6 = x_ref_enb_in;
  assign register17_q_net_x1 = c_iu_in;
  assign register18_q_net_x1 = iu_ub_in;
  assign register19_q_net_x1 = iu_lb_in;
  assign register20_q_net_x1 = iu_enb;
  assign register21_q_net_x1 = k_iu_in;
  assign register22_q_net_x1 = dac_1_bias_in;
  assign register23_q_net_x1 = dac_2_bias_in;
  assign register1_q_net_x10 = fmat_in_2;
  assign register2_q_net_x6 = fmat_in_3;
  assign register3_q_net_x6 = fmat_in_4;
  assign register4_q_net_x6 = fmat_in_5;
  assign register5_q_net_x6 = fmat_in_6;
  assign register6_q_net_x6 = fmat_in_7;
  assign register7_q_net_x6 = fmat_in_8;
  assign register8_q_net_x6 = fmat_in_9;
  assign register9_q_net_x6 = fmat_in_10;
  assign register10_q_net_x7 = fmat_in_11;
  assign register11_q_net_x7 = fmat_in_12;
  assign register12_q_net_x7 = fmat_in_13;
  assign register13_q_net_x7 = fmat_in_14;
  assign register14_q_net_x1 = fmat_in_15;
  assign register15_q_net_x1 = fmat_in_16;
  assign register16_q_net_x0 = fmat_in_17;
  assign register17_q_net_x0 = fmat_in_18;
  assign register18_q_net_x0 = fmat_in_19;
  assign register19_q_net_x0 = fmat_in_20;
  assign register20_q_net_x0 = fmat_in_21;
  assign register21_q_net_x0 = fmat_in_22;
  assign register22_q_net_x0 = fmat_in_23;
  assign register23_q_net_x0 = fmat_in_24;
  assign register24_q_net_x0 = fmat_in_25;
  assign register25_q_net_x0 = fmat_in_26;
  assign register26_q_net_x0 = fmat_in_27;
  assign register27_q_net_x0 = fmat_in_28;
  assign register28_q_net_x0 = fmat_in_29;
  assign register29_q_net_x0 = fmat_in_30;
  assign register30_q_net_x0 = fmat_in_31;
  assign register31_q_net_x0 = fmat_in_32;
  assign register32_q_net_x0 = fmat_in_33;
  assign register33_q_net_x0 = fmat_in_34;
  assign register34_q_net_x0 = fmat_in_35;
  assign register35_q_net_x0 = fmat_in_36;
  assign register36_q_net_x0 = fmat_in_37;
  assign register37_q_net_x0 = fmat_in_38;
  assign register38_q_net_x0 = fmat_in_39;
  assign register39_q_net_x0 = fmat_in_40;
  assign register40_q_net_x0 = fmat_in_41;
  assign register41_q_net_x0 = fmat_in_42;
  assign register42_q_net_x0 = fmat_in_43;
  assign register43_q_net_x0 = fmat_in_44;
  assign register44_q_net_x0 = fmat_in_45;
  assign register45_q_net_x0 = fmat_in_46;
  assign register46_q_net_x0 = fmat_in_47;
  assign register47_q_net_x0 = fmat_in_48;
  assign register48_q_net_x0 = fmat_in_49;
  assign register1_q_net_x5 = lmat_in_2;
  assign register2_q_net_x3 = lmat_in_3;
  assign register3_q_net_x3 = lmat_in_4;
  assign register4_q_net_x3 = lmat_in_5;
  assign register5_q_net_x3 = lmat_in_6;
  assign register6_q_net_x3 = lmat_in_7;
  assign register7_q_net_x3 = lmat_in_8;
  assign register8_q_net_x3 = lmat_in_9;
  assign register9_q_net_x3 = lmat_in_10;
  assign register10_q_net_x3 = lmat_in_11;
  assign register11_q_net_x3 = lmat_in_12;
  assign register12_q_net_x3 = lmat_in_13;
  assign register13_q_net_x3 = lmat_in_14;
  assign register1_q_net_x6 = kmat_in_2;
  assign register2_q_net_x4 = kmat_in_3;
  assign register3_q_net_x4 = kmat_in_4;
  assign register4_q_net_x4 = kmat_in_5;
  assign register5_q_net_x4 = kmat_in_6;
  assign register6_q_net_x4 = kmat_in_7;
  assign register7_q_net_x4 = kmat_in_8;
  assign register8_q_net_x4 = kmat_in_9;
  assign register9_q_net_x4 = kmat_in_10;
  assign register10_q_net_x4 = kmat_in_11;
  assign register11_q_net_x4 = kmat_in_12;
  assign register12_q_net_x4 = kmat_in_13;
  assign register13_q_net_x4 = kmat_in_14;
  assign register1_q_net = bmat_in_2;
  assign register2_q_net = bmat_in_3;
  assign register3_q_net = bmat_in_4;
  assign register4_q_net = bmat_in_5;
  assign register5_q_net = bmat_in_6;
  assign register6_q_net = bmat_in_7;
  assign register7_q_net = bmat_in_8;
  assign register8_q_net = bmat_in_9;
  assign register9_q_net = bmat_in_10;
  assign register10_q_net = bmat_in_11;
  assign register11_q_net = bmat_in_12;
  assign register12_q_net = bmat_in_13;
  assign register13_q_net = bmat_in_14;
  assign register1_q_net_x7 = fmat_ip_in_2;
  assign register2_q_net_x5 = fmat_ip_in_3;
  assign register3_q_net_x5 = fmat_ip_in_4;
  assign register4_q_net_x5 = fmat_ip_in_5;
  assign register5_q_net_x5 = fmat_ip_in_6;
  assign register6_q_net_x5 = fmat_ip_in_7;
  assign register7_q_net_x5 = fmat_ip_in_8;
  assign register8_q_net_x5 = fmat_ip_in_9;
  assign register9_q_net_x5 = fmat_ip_in_10;
  assign register10_q_net_x5 = fmat_ip_in_11;
  assign register11_q_net_x5 = fmat_ip_in_12;
  assign register12_q_net_x5 = fmat_ip_in_13;
  assign register13_q_net_x5 = fmat_ip_in_14;
  assign register14_q_net = fmat_ip_in_15;
  assign register15_q_net = fmat_ip_in_16;
  assign register16_q_net = fmat_ip_in_17;
  assign register17_q_net = fmat_ip_in_18;
  assign register18_q_net = fmat_ip_in_19;
  assign register19_q_net = fmat_ip_in_20;
  assign register20_q_net = fmat_ip_in_21;
  assign register21_q_net = fmat_ip_in_22;
  assign register22_q_net = fmat_ip_in_23;
  assign register23_q_net = fmat_ip_in_24;
  assign register24_q_net = fmat_ip_in_25;
  assign register25_q_net = fmat_ip_in_26;
  assign register26_q_net = fmat_ip_in_27;
  assign register27_q_net = fmat_ip_in_28;
  assign register28_q_net = fmat_ip_in_29;
  assign register29_q_net = fmat_ip_in_30;
  assign register30_q_net = fmat_ip_in_31;
  assign register31_q_net = fmat_ip_in_32;
  assign register32_q_net = fmat_ip_in_33;
  assign register33_q_net = fmat_ip_in_34;
  assign register34_q_net = fmat_ip_in_35;
  assign register35_q_net = fmat_ip_in_36;
  assign register36_q_net = fmat_ip_in_37;
  assign register37_q_net = fmat_ip_in_38;
  assign register38_q_net = fmat_ip_in_39;
  assign register39_q_net = fmat_ip_in_40;
  assign register40_q_net = fmat_ip_in_41;
  assign register41_q_net = fmat_ip_in_42;
  assign register42_q_net = fmat_ip_in_43;
  assign register43_q_net = fmat_ip_in_44;
  assign register44_q_net = fmat_ip_in_45;
  assign register45_q_net = fmat_ip_in_46;
  assign register46_q_net = fmat_ip_in_47;
  assign register47_q_net = fmat_ip_in_48;
  assign register48_q_net = fmat_ip_in_49;
  assign register1_q_net_x4 = lmat_ip_in_2;
  assign register2_q_net_x2 = lmat_ip_in_3;
  assign register3_q_net_x2 = lmat_ip_in_4;
  assign register4_q_net_x2 = lmat_ip_in_5;
  assign register5_q_net_x2 = lmat_ip_in_6;
  assign register6_q_net_x2 = lmat_ip_in_7;
  assign register7_q_net_x2 = lmat_ip_in_8;
  assign register8_q_net_x2 = lmat_ip_in_9;
  assign register9_q_net_x2 = lmat_ip_in_10;
  assign register10_q_net_x2 = lmat_ip_in_11;
  assign register11_q_net_x2 = lmat_ip_in_12;
  assign register12_q_net_x2 = lmat_ip_in_13;
  assign register13_q_net_x2 = lmat_ip_in_14;
  assign register1_q_net_x3 = kmat_ip_in_2;
  assign register2_q_net_x1 = kmat_ip_in_3;
  assign register3_q_net_x1 = kmat_ip_in_4;
  assign register4_q_net_x1 = kmat_ip_in_5;
  assign register5_q_net_x1 = kmat_ip_in_6;
  assign register6_q_net_x1 = kmat_ip_in_7;
  assign register7_q_net_x1 = kmat_ip_in_8;
  assign register8_q_net_x1 = kmat_ip_in_9;
  assign register9_q_net_x1 = kmat_ip_in_10;
  assign register10_q_net_x1 = kmat_ip_in_11;
  assign register11_q_net_x1 = kmat_ip_in_12;
  assign register12_q_net_x1 = kmat_ip_in_13;
  assign register13_q_net_x1 = kmat_ip_in_14;
  assign register1_q_net_x2 = bmat_ip_in_2;
  assign register2_q_net_x0 = bmat_ip_in_3;
  assign register3_q_net_x0 = bmat_ip_in_4;
  assign register4_q_net_x0 = bmat_ip_in_5;
  assign register5_q_net_x0 = bmat_ip_in_6;
  assign register6_q_net_x0 = bmat_ip_in_7;
  assign register7_q_net_x0 = bmat_ip_in_8;
  assign register8_q_net_x0 = bmat_ip_in_9;
  assign register9_q_net_x0 = bmat_ip_in_10;
  assign register10_q_net_x0 = bmat_ip_in_11;
  assign register11_q_net_x0 = bmat_ip_in_12;
  assign register12_q_net_x0 = bmat_ip_in_13;
  assign register13_q_net_x0 = bmat_ip_in_14;
  assign register1_q_net_x1 = barrier_ub_lb_in_2;
  assign register1_q_net_x0 = barrier_ram_data_in_2;
  assign divisor_out = add_offset_ch2_s_net;
  assign dma_out_1 = concat_y_net;
  assign dma_out_2 = concat2_y_net;
  assign dma_out_3 = concat3_y_net;
  assign dma_out_4 = concat5_y_net;
  assign dma_out_5 = concat4_y_net;
  assign dma_out_6 = concat6_y_net;
  assign dma_out_7 = concat7_y_net;
  assign gate_fb_x_out = add_dac_1_bias_s_net;
  assign gate_fb_z_out = add_dac_2_bias_s_net;
  assign gate_leds_out = concat1_y_net;
  assign gate_x1_out = upsample0_q_net;
  assign gate_x2_out = upsample1_q_net;
  assign gate_x3_out = upsample2_q_net;
  assign gate_x4_out = upsample3_q_net;
  assign gate_x5_out = upsample4_q_net;
  assign gate_x6_out = upsample5_q_net;
  assign gate_x7_out = upsample6_q_net;
  assign gate_y_x_corrected_out = sfix16_13_cast_dout_net;
  assign gate_y_z_corrected_out = sfix16_13_cast1_dout_net;
  assign hw_pot_switch_net = hw_pot_switch;
  assign x_in_net = x_in;
  assign z_in_net = z_in;
  assign src_clk_net = clk_1;
  assign src_ce_net = ce_1;
  assign clk_net = clk_4;
  assign ce_net = ce_4;
  assign clk_net_x0 = clk_64;
  assign ce_net_x0 = ce_64;
  fpga_kf_3dof_plus_random_number_generator random_number_generator (
    .noise_gain_in(down_sample9_q_net),
    .clk_64(clk_net_x0),
    .ce_64(ce_net_x0),
    .noise_out(register_q_net_x0)
  );
  fpga_kf_3dof_plus_sum_seven_elements sum_seven_elements (
    .in1_1(mult0_p_net),
    .in1_2(mult1_p_net_x0),
    .in1_3(mult2_p_net_x0),
    .in1_4(mult3_p_net),
    .in1_5(mult4_p_net),
    .in1_6(mult5_p_net_x0),
    .in1_7(mult6_p_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out1(addsub6_s_net_x8)
  );
  fpga_kf_3dof_plus_sum_seven_elements1 sum_seven_elements1 (
    .in1_1(mult0_p_net_x0),
    .in1_2(mult1_p_net_x1),
    .in1_3(mult2_p_net_x1),
    .in1_4(mult3_p_net_x0),
    .in1_5(mult4_p_net_x0),
    .in1_6(mult5_p_net_x1),
    .in1_7(mult6_p_net_x0),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out1(addsub6_s_net_x7)
  );
  fpga_kf_3dof_plus_sum_seven_elements2 sum_seven_elements2 (
    .in1_1(mult0_p_net_x11),
    .in1_2(mult1_p_net_x12),
    .in1_3(mult2_p_net_x6),
    .in1_4(mult3_p_net_x5),
    .in1_5(mult4_p_net_x5),
    .in1_6(mult5_p_net_x6),
    .in1_7(mult6_p_net_x5),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out1(addsub6_s_net_x6)
  );
  fpga_kf_3dof_plus_sum_seven_elements3 sum_seven_elements3 (
    .in1_1(mult0_p_net_x15),
    .in1_2(mult1_p_net_x16),
    .in1_3(mult2_p_net_x8),
    .in1_4(mult3_p_net_x7),
    .in1_5(mult4_p_net_x7),
    .in1_6(mult5_p_net_x8),
    .in1_7(mult6_p_net_x7),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out1(addsub6_s_net_x5)
  );
  fpga_kf_3dof_plus_sum_seven_elements4 sum_seven_elements4 (
    .in1_1(mult0_p_net_x6),
    .in1_2(mult1_p_net_x7),
    .in1_3(mult2_p_net_x5),
    .in1_4(mult3_p_net_x4),
    .in1_5(mult4_p_net_x4),
    .in1_6(mult5_p_net_x5),
    .in1_7(mult6_p_net_x4),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out1(addsub6_s_net_x4)
  );
  fpga_kf_3dof_plus_sum_seven_elements5 sum_seven_elements5 (
    .in1_1(mult0_p_net_x5),
    .in1_2(mult1_p_net_x6),
    .in1_3(mult2_p_net_x4),
    .in1_4(mult3_p_net_x3),
    .in1_5(mult4_p_net_x3),
    .in1_6(mult5_p_net_x4),
    .in1_7(mult6_p_net_x3),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out1(addsub6_s_net_x3)
  );
  fpga_kf_3dof_plus_sum_seven_elements6 sum_seven_elements6 (
    .in1_1(mult0_p_net_x14),
    .in1_2(mult1_p_net_x15),
    .in1_3(mult2_p_net_x7),
    .in1_4(mult3_p_net_x6),
    .in1_5(mult4_p_net_x6),
    .in1_6(mult5_p_net_x7),
    .in1_7(mult6_p_net_x6),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out1(addsub6_s_net_x2)
  );
  fpga_kf_3dof_plus_sum_seven_elements7 sum_seven_elements7 (
    .in1_1(mult0_p_net_x3),
    .in1_2(mult1_p_net_x4),
    .in1_3(mult2_p_net_x2),
    .in1_4(mult3_p_net_x1),
    .in1_5(mult4_p_net_x1),
    .in1_6(mult5_p_net_x2),
    .in1_7(mult6_p_net_x1),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out1(addsub6_s_net_x1)
  );
  fpga_kf_3dof_plus_sum_seven_elements8 sum_seven_elements8 (
    .in1_1(mult0_p_net_x4),
    .in1_2(mult1_p_net_x5),
    .in1_3(mult2_p_net_x3),
    .in1_4(mult3_p_net_x2),
    .in1_5(mult4_p_net_x2),
    .in1_6(mult5_p_net_x3),
    .in1_7(mult6_p_net_x2),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out1(addsub6_s_net_x0)
  );
  fpga_kf_3dof_plus_sum_two_elements sum_two_elements (
    .in1_1(mult0_p_net_x16),
    .in1_2(mult1_p_net_x17),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out1(addsub2_s_net_x14)
  );
  fpga_kf_3dof_plus_sum_two_elements1 sum_two_elements1 (
    .in1_1(mult0_p_net_x17),
    .in1_2(mult1_p_net_x18),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out1(addsub2_s_net_x13)
  );
  fpga_kf_3dof_plus_sum_two_elements10 sum_two_elements10 (
    .in1_1(mult0_p_net_x2),
    .in1_2(mult1_p_net_x3),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out1(addsub2_s_net_x12)
  );
  fpga_kf_3dof_plus_sum_two_elements11 sum_two_elements11 (
    .in1_1(mult0_p_net_x9),
    .in1_2(mult1_p_net_x10),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out1(addsub2_s_net_x11)
  );
  fpga_kf_3dof_plus_sum_two_elements12 sum_two_elements12 (
    .in1_1(mult0_p_net_x10),
    .in1_2(mult1_p_net_x11),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out1(addsub2_s_net_x10)
  );
  fpga_kf_3dof_plus_sum_two_elements13 sum_two_elements13 (
    .in1_1(mult0_p_net_x12),
    .in1_2(mult1_p_net_x13),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out1(addsub2_s_net_x9)
  );
  fpga_kf_3dof_plus_sum_two_elements2 sum_two_elements2 (
    .in1_1(mult0_p_net_x18),
    .in1_2(mult1_p_net_x19),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out1(addsub2_s_net_x8)
  );
  fpga_kf_3dof_plus_sum_two_elements3 sum_two_elements3 (
    .in1_1(mult0_p_net_x19),
    .in1_2(mult1_p_net_x20),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out1(addsub2_s_net_x7)
  );
  fpga_kf_3dof_plus_sum_two_elements4 sum_two_elements4 (
    .in1_1(mult0_p_net_x7),
    .in1_2(mult1_p_net_x8),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out1(addsub2_s_net_x6)
  );
  fpga_kf_3dof_plus_sum_two_elements5 sum_two_elements5 (
    .in1_1(mult0_p_net_x8),
    .in1_2(mult1_p_net_x9),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out1(addsub2_s_net_x5)
  );
  fpga_kf_3dof_plus_sum_two_elements6 sum_two_elements6 (
    .in1_1(mult0_p_net_x13),
    .in1_2(mult1_p_net_x14),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out1(addsub2_s_net_x4)
  );
  fpga_kf_3dof_plus_sum_two_elements7 sum_two_elements7 (
    .in1_1(mult0_p_net_x20),
    .in1_2(mult1_p_net_x21),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out1(addsub2_s_net_x3)
  );
  fpga_kf_3dof_plus_sum_two_elements8 sum_two_elements8 (
    .in1_1(mult0_p_net_x21),
    .in1_2(mult1_p_net_x22),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out1(addsub2_s_net_x2)
  );
  fpga_kf_3dof_plus_sum_two_elements9 sum_two_elements9 (
    .in1_1(mult0_p_net_x1),
    .in1_2(mult1_p_net_x2),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out1(addsub2_s_net_x1)
  );
  fpga_kf_3dof_plus_vector_addsub_fabric vector_addsub_fabric (
    .a_1(addsub0_s_net_x1),
    .b_1(addsub2_s_net_x3),
    .a_2(addsub1_s_net_x1),
    .a_3(addsub2_s_net),
    .a_4(addsub3_s_net),
    .a_5(addsub4_s_net),
    .a_6(addsub5_s_net),
    .a_7(addsub6_s_net),
    .b_2(addsub2_s_net_x2),
    .b_3(addsub2_s_net_x1),
    .b_4(addsub2_s_net_x12),
    .b_5(addsub2_s_net_x11),
    .b_6(addsub2_s_net_x10),
    .b_7(addsub2_s_net_x9),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .a_b_1(addsub0_s_net_x2),
    .a_b_2(addsub1_s_net_x2),
    .a_b_3(addsub2_s_net_x0),
    .a_b_4(addsub3_s_net_x0),
    .a_b_5(addsub4_s_net_x0),
    .a_b_6(addsub5_s_net_x0),
    .a_b_7(addsub6_s_net_x10)
  );
  fpga_kf_3dof_plus_vector_addsub_fabric1 vector_addsub_fabric1 (
    .a_1(addsub6_s_net_x8),
    .b_1(addsub2_s_net_x14),
    .a_2(addsub6_s_net_x7),
    .a_3(addsub6_s_net_x6),
    .a_4(addsub6_s_net_x5),
    .a_5(addsub6_s_net_x4),
    .a_6(addsub6_s_net_x3),
    .a_7(addsub6_s_net_x2),
    .b_2(addsub2_s_net_x13),
    .b_3(addsub2_s_net_x8),
    .b_4(addsub2_s_net_x7),
    .b_5(addsub2_s_net_x6),
    .b_6(addsub2_s_net_x5),
    .b_7(addsub2_s_net_x4),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .a_b_1(addsub0_s_net_x1),
    .a_b_2(addsub1_s_net_x1),
    .a_b_3(addsub2_s_net),
    .a_b_4(addsub3_s_net),
    .a_b_5(addsub4_s_net),
    .a_b_6(addsub5_s_net),
    .a_b_7(addsub6_s_net)
  );
  fpga_kf_3dof_plus_vector_addsub_fabric2 vector_addsub_fabric2 (
    .a_1(up_sample7_q_net),
    .b_1(addsub6_s_net_x9),
    .a_2(constant_op_net),
    .b_2(addsub6_s_net_x0),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .a_b_1(addsub0_s_net_x0),
    .a_b_2(addsub1_s_net_x0)
  );
  fpga_kf_3dof_plus_vector_addsub_fabric3 vector_addsub_fabric3 (
    .a_1(up_sample7_q_net),
    .b_1(addsub8_s_net),
    .a_2(constant_op_net),
    .b_2(constant2_op_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .a_b_1(addsub0_s_net),
    .a_b_2(addsub1_s_net)
  );
  fpga_kf_3dof_plus_vector_constant vector_constant (
    .out1_1(constant0_op_net),
    .out1_2(constant1_op_net)
  );
  fpga_kf_3dof_plus_vector_convert vector_convert (
    .i_1(addsub0_s_net_x2),
    .i_2(addsub1_s_net_x2),
    .i_3(addsub2_s_net_x0),
    .i_4(addsub3_s_net_x0),
    .i_5(addsub4_s_net_x0),
    .i_6(addsub5_s_net_x0),
    .i_7(addsub6_s_net_x10),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .o_1(convert0_dout_net_x1),
    .o_2(convert1_dout_net_x1),
    .o_3(convert2_dout_net_x0),
    .o_4(convert3_dout_net_x0),
    .o_5(convert4_dout_net_x0),
    .o_6(convert5_dout_net_x0),
    .o_7(convert6_dout_net_x0)
  );
  fpga_kf_3dof_plus_vector_convert1 vector_convert1 (
    .i_1(convert0_dout_net_x1),
    .i_2(convert1_dout_net_x1),
    .i_3(convert2_dout_net_x0),
    .i_4(convert3_dout_net_x0),
    .i_5(convert4_dout_net_x0),
    .i_6(convert5_dout_net_x0),
    .i_7(convert6_dout_net_x0),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .o_1(convert0_dout_net_x0),
    .o_2(convert1_dout_net_x0),
    .o_3(convert2_dout_net),
    .o_4(convert3_dout_net),
    .o_5(convert4_dout_net),
    .o_6(convert5_dout_net),
    .o_7(convert6_dout_net)
  );
  fpga_kf_3dof_plus_vector_convert2 vector_convert2 (
    .i_1(mux0_y_net_x3),
    .i_2(mux1_y_net_x3),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .o_1(convert0_dout_net),
    .o_2(convert1_dout_net)
  );
  fpga_kf_3dof_plus_vector_down_sample vector_down_sample (
    .in_1(register0_q_net_x9),
    .in_2(register1_q_net_x10),
    .in_3(register2_q_net_x6),
    .in_4(register3_q_net_x6),
    .in_5(register4_q_net_x6),
    .in_6(register5_q_net_x6),
    .in_7(register6_q_net_x6),
    .in_8(register7_q_net_x6),
    .in_9(register8_q_net_x6),
    .in_10(register9_q_net_x6),
    .in_11(register10_q_net_x7),
    .in_12(register11_q_net_x7),
    .in_13(register12_q_net_x7),
    .in_14(register13_q_net_x7),
    .in_15(register14_q_net_x1),
    .in_16(register15_q_net_x1),
    .in_17(register16_q_net_x0),
    .in_18(register17_q_net_x0),
    .in_19(register18_q_net_x0),
    .in_20(register19_q_net_x0),
    .in_21(register20_q_net_x0),
    .in_22(register21_q_net_x0),
    .in_23(register22_q_net_x0),
    .in_24(register23_q_net_x0),
    .in_25(register24_q_net_x0),
    .in_26(register25_q_net_x0),
    .in_27(register26_q_net_x0),
    .in_28(register27_q_net_x0),
    .in_29(register28_q_net_x0),
    .in_30(register29_q_net_x0),
    .in_31(register30_q_net_x0),
    .in_32(register31_q_net_x0),
    .in_33(register32_q_net_x0),
    .in_34(register33_q_net_x0),
    .in_35(register34_q_net_x0),
    .in_36(register35_q_net_x0),
    .in_37(register36_q_net_x0),
    .in_38(register37_q_net_x0),
    .in_39(register38_q_net_x0),
    .in_40(register39_q_net_x0),
    .in_41(register40_q_net_x0),
    .in_42(register41_q_net_x0),
    .in_43(register42_q_net_x0),
    .in_44(register43_q_net_x0),
    .in_45(register44_q_net_x0),
    .in_46(register45_q_net_x0),
    .in_47(register46_q_net_x0),
    .in_48(register47_q_net_x0),
    .in_49(register48_q_net_x0),
    .clk_1(src_clk_net),
    .ce_1(src_ce_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out_1(downsample0_q_net_x8),
    .out_2(downsample1_q_net_x8),
    .out_3(downsample2_q_net_x6),
    .out_4(downsample3_q_net_x6),
    .out_5(downsample4_q_net_x6),
    .out_6(downsample5_q_net_x6),
    .out_7(downsample6_q_net_x6),
    .out_8(downsample7_q_net_x6),
    .out_9(downsample8_q_net_x6),
    .out_10(downsample9_q_net_x6),
    .out_11(downsample10_q_net_x6),
    .out_12(downsample11_q_net_x6),
    .out_13(downsample12_q_net_x6),
    .out_14(downsample13_q_net_x6),
    .out_15(downsample14_q_net_x0),
    .out_16(downsample15_q_net_x0),
    .out_17(downsample16_q_net_x0),
    .out_18(downsample17_q_net_x0),
    .out_19(downsample18_q_net_x0),
    .out_20(downsample19_q_net_x0),
    .out_21(downsample20_q_net_x0),
    .out_22(downsample21_q_net_x0),
    .out_23(downsample22_q_net_x0),
    .out_24(downsample23_q_net_x0),
    .out_25(downsample24_q_net_x0),
    .out_26(downsample25_q_net_x0),
    .out_27(downsample26_q_net_x0),
    .out_28(downsample27_q_net_x0),
    .out_29(downsample28_q_net_x0),
    .out_30(downsample29_q_net_x0),
    .out_31(downsample30_q_net_x0),
    .out_32(downsample31_q_net_x0),
    .out_33(downsample32_q_net_x0),
    .out_34(downsample33_q_net_x0),
    .out_35(downsample34_q_net_x0),
    .out_36(downsample35_q_net_x0),
    .out_37(downsample36_q_net_x0),
    .out_38(downsample37_q_net_x0),
    .out_39(downsample38_q_net_x0),
    .out_40(downsample39_q_net_x0),
    .out_41(downsample40_q_net_x0),
    .out_42(downsample41_q_net_x0),
    .out_43(downsample42_q_net_x0),
    .out_44(downsample43_q_net_x0),
    .out_45(downsample44_q_net_x0),
    .out_46(downsample45_q_net_x0),
    .out_47(downsample46_q_net_x0),
    .out_48(downsample47_q_net_x0),
    .out_49(downsample48_q_net_x0)
  );
  fpga_kf_3dof_plus_vector_down_sample1 vector_down_sample1 (
    .in_1(register0_q_net_x7),
    .in_2(register1_q_net_x7),
    .in_3(register2_q_net_x5),
    .in_4(register3_q_net_x5),
    .in_5(register4_q_net_x5),
    .in_6(register5_q_net_x5),
    .in_7(register6_q_net_x5),
    .in_8(register7_q_net_x5),
    .in_9(register8_q_net_x5),
    .in_10(register9_q_net_x5),
    .in_11(register10_q_net_x5),
    .in_12(register11_q_net_x5),
    .in_13(register12_q_net_x5),
    .in_14(register13_q_net_x5),
    .in_15(register14_q_net),
    .in_16(register15_q_net),
    .in_17(register16_q_net),
    .in_18(register17_q_net),
    .in_19(register18_q_net),
    .in_20(register19_q_net),
    .in_21(register20_q_net),
    .in_22(register21_q_net),
    .in_23(register22_q_net),
    .in_24(register23_q_net),
    .in_25(register24_q_net),
    .in_26(register25_q_net),
    .in_27(register26_q_net),
    .in_28(register27_q_net),
    .in_29(register28_q_net),
    .in_30(register29_q_net),
    .in_31(register30_q_net),
    .in_32(register31_q_net),
    .in_33(register32_q_net),
    .in_34(register33_q_net),
    .in_35(register34_q_net),
    .in_36(register35_q_net),
    .in_37(register36_q_net),
    .in_38(register37_q_net),
    .in_39(register38_q_net),
    .in_40(register39_q_net),
    .in_41(register40_q_net),
    .in_42(register41_q_net),
    .in_43(register42_q_net),
    .in_44(register43_q_net),
    .in_45(register44_q_net),
    .in_46(register45_q_net),
    .in_47(register46_q_net),
    .in_48(register47_q_net),
    .in_49(register48_q_net),
    .clk_1(src_clk_net),
    .ce_1(src_ce_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out_1(downsample0_q_net_x7),
    .out_2(downsample1_q_net_x7),
    .out_3(downsample2_q_net_x5),
    .out_4(downsample3_q_net_x5),
    .out_5(downsample4_q_net_x5),
    .out_6(downsample5_q_net_x5),
    .out_7(downsample6_q_net_x5),
    .out_8(downsample7_q_net_x5),
    .out_9(downsample8_q_net_x5),
    .out_10(downsample9_q_net_x5),
    .out_11(downsample10_q_net_x5),
    .out_12(downsample11_q_net_x5),
    .out_13(downsample12_q_net_x5),
    .out_14(downsample13_q_net_x5),
    .out_15(downsample14_q_net),
    .out_16(downsample15_q_net),
    .out_17(downsample16_q_net),
    .out_18(downsample17_q_net),
    .out_19(downsample18_q_net),
    .out_20(downsample19_q_net),
    .out_21(downsample20_q_net),
    .out_22(downsample21_q_net),
    .out_23(downsample22_q_net),
    .out_24(downsample23_q_net),
    .out_25(downsample24_q_net),
    .out_26(downsample25_q_net),
    .out_27(downsample26_q_net),
    .out_28(downsample27_q_net),
    .out_29(downsample28_q_net),
    .out_30(downsample29_q_net),
    .out_31(downsample30_q_net),
    .out_32(downsample31_q_net),
    .out_33(downsample32_q_net),
    .out_34(downsample33_q_net),
    .out_35(downsample34_q_net),
    .out_36(downsample35_q_net),
    .out_37(downsample36_q_net),
    .out_38(downsample37_q_net),
    .out_39(downsample38_q_net),
    .out_40(downsample39_q_net),
    .out_41(downsample40_q_net),
    .out_42(downsample41_q_net),
    .out_43(downsample42_q_net),
    .out_44(downsample43_q_net),
    .out_45(downsample44_q_net),
    .out_46(downsample45_q_net),
    .out_47(downsample46_q_net),
    .out_48(downsample47_q_net),
    .out_49(downsample48_q_net)
  );
  fpga_kf_3dof_plus_vector_down_sample2 vector_down_sample2 (
    .in_1(register0_q_net_x5),
    .in_2(register1_q_net_x5),
    .in_3(register2_q_net_x3),
    .in_4(register3_q_net_x3),
    .in_5(register4_q_net_x3),
    .in_6(register5_q_net_x3),
    .in_7(register6_q_net_x3),
    .in_8(register7_q_net_x3),
    .in_9(register8_q_net_x3),
    .in_10(register9_q_net_x3),
    .in_11(register10_q_net_x3),
    .in_12(register11_q_net_x3),
    .in_13(register12_q_net_x3),
    .in_14(register13_q_net_x3),
    .clk_1(src_clk_net),
    .ce_1(src_ce_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out_1(downsample0_q_net_x6),
    .out_2(downsample1_q_net_x6),
    .out_3(downsample2_q_net_x4),
    .out_4(downsample3_q_net_x4),
    .out_5(downsample4_q_net_x4),
    .out_6(downsample5_q_net_x4),
    .out_7(downsample6_q_net_x4),
    .out_8(downsample7_q_net_x4),
    .out_9(downsample8_q_net_x4),
    .out_10(downsample9_q_net_x4),
    .out_11(downsample10_q_net_x4),
    .out_12(downsample11_q_net_x4),
    .out_13(downsample12_q_net_x4),
    .out_14(downsample13_q_net_x4)
  );
  fpga_kf_3dof_plus_vector_down_sample3 vector_down_sample3 (
    .in_1(register0_q_net_x6),
    .in_2(register1_q_net_x6),
    .in_3(register2_q_net_x4),
    .in_4(register3_q_net_x4),
    .in_5(register4_q_net_x4),
    .in_6(register5_q_net_x4),
    .in_7(register6_q_net_x4),
    .in_8(register7_q_net_x4),
    .in_9(register8_q_net_x4),
    .in_10(register9_q_net_x4),
    .in_11(register10_q_net_x4),
    .in_12(register11_q_net_x4),
    .in_13(register12_q_net_x4),
    .in_14(register13_q_net_x4),
    .clk_1(src_clk_net),
    .ce_1(src_ce_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out_1(downsample0_q_net_x5),
    .out_2(downsample1_q_net_x5),
    .out_3(downsample2_q_net_x3),
    .out_4(downsample3_q_net_x3),
    .out_5(downsample4_q_net_x3),
    .out_6(downsample5_q_net_x3),
    .out_7(downsample6_q_net_x3),
    .out_8(downsample7_q_net_x3),
    .out_9(downsample8_q_net_x3),
    .out_10(downsample9_q_net_x3),
    .out_11(downsample10_q_net_x3),
    .out_12(downsample11_q_net_x3),
    .out_13(downsample12_q_net_x3),
    .out_14(downsample13_q_net_x3)
  );
  fpga_kf_3dof_plus_vector_down_sample4 vector_down_sample4 (
    .in_1(register0_q_net_x4),
    .in_2(register1_q_net_x4),
    .in_3(register2_q_net_x2),
    .in_4(register3_q_net_x2),
    .in_5(register4_q_net_x2),
    .in_6(register5_q_net_x2),
    .in_7(register6_q_net_x2),
    .in_8(register7_q_net_x2),
    .in_9(register8_q_net_x2),
    .in_10(register9_q_net_x2),
    .in_11(register10_q_net_x2),
    .in_12(register11_q_net_x2),
    .in_13(register12_q_net_x2),
    .in_14(register13_q_net_x2),
    .clk_1(src_clk_net),
    .ce_1(src_ce_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out_1(downsample0_q_net_x4),
    .out_2(downsample1_q_net_x4),
    .out_3(downsample2_q_net_x2),
    .out_4(downsample3_q_net_x2),
    .out_5(downsample4_q_net_x2),
    .out_6(downsample5_q_net_x2),
    .out_7(downsample6_q_net_x2),
    .out_8(downsample7_q_net_x2),
    .out_9(downsample8_q_net_x2),
    .out_10(downsample9_q_net_x2),
    .out_11(downsample10_q_net_x2),
    .out_12(downsample11_q_net_x2),
    .out_13(downsample12_q_net_x2),
    .out_14(downsample13_q_net_x2)
  );
  fpga_kf_3dof_plus_vector_down_sample5 vector_down_sample5 (
    .in_1(register0_q_net_x3),
    .in_2(register1_q_net_x3),
    .in_3(register2_q_net_x1),
    .in_4(register3_q_net_x1),
    .in_5(register4_q_net_x1),
    .in_6(register5_q_net_x1),
    .in_7(register6_q_net_x1),
    .in_8(register7_q_net_x1),
    .in_9(register8_q_net_x1),
    .in_10(register9_q_net_x1),
    .in_11(register10_q_net_x1),
    .in_12(register11_q_net_x1),
    .in_13(register12_q_net_x1),
    .in_14(register13_q_net_x1),
    .clk_1(src_clk_net),
    .ce_1(src_ce_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out_1(downsample0_q_net_x3),
    .out_2(downsample1_q_net_x3),
    .out_3(downsample2_q_net_x1),
    .out_4(downsample3_q_net_x1),
    .out_5(downsample4_q_net_x1),
    .out_6(downsample5_q_net_x1),
    .out_7(downsample6_q_net_x1),
    .out_8(downsample7_q_net_x1),
    .out_9(downsample8_q_net_x1),
    .out_10(downsample9_q_net_x1),
    .out_11(downsample10_q_net_x1),
    .out_12(downsample11_q_net_x1),
    .out_13(downsample12_q_net_x1),
    .out_14(downsample13_q_net_x1)
  );
  fpga_kf_3dof_plus_vector_down_sample6 vector_down_sample6 (
    .in_1(register0_q_net_x2),
    .in_2(register1_q_net_x2),
    .in_3(register2_q_net_x0),
    .in_4(register3_q_net_x0),
    .in_5(register4_q_net_x0),
    .in_6(register5_q_net_x0),
    .in_7(register6_q_net_x0),
    .in_8(register7_q_net_x0),
    .in_9(register8_q_net_x0),
    .in_10(register9_q_net_x0),
    .in_11(register10_q_net_x0),
    .in_12(register11_q_net_x0),
    .in_13(register12_q_net_x0),
    .in_14(register13_q_net_x0),
    .clk_1(src_clk_net),
    .ce_1(src_ce_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out_1(downsample0_q_net_x2),
    .out_2(downsample1_q_net_x2),
    .out_3(downsample2_q_net_x0),
    .out_4(downsample3_q_net_x0),
    .out_5(downsample4_q_net_x0),
    .out_6(downsample5_q_net_x0),
    .out_7(downsample6_q_net_x0),
    .out_8(downsample7_q_net_x0),
    .out_9(downsample8_q_net_x0),
    .out_10(downsample9_q_net_x0),
    .out_11(downsample10_q_net_x0),
    .out_12(downsample11_q_net_x0),
    .out_13(downsample12_q_net_x0),
    .out_14(downsample13_q_net_x0)
  );
  fpga_kf_3dof_plus_vector_down_sample7 vector_down_sample7 (
    .in_1(register0_q_net_x1),
    .in_2(register1_q_net_x1),
    .clk_1(src_clk_net),
    .ce_1(src_ce_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out_1(downsample0_q_net_x1),
    .out_2(downsample1_q_net_x1)
  );
  fpga_kf_3dof_plus_vector_down_sample8 vector_down_sample8 (
    .in_1(register0_q_net_x0),
    .in_2(register1_q_net_x0),
    .clk_1(src_clk_net),
    .ce_1(src_ce_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out_1(downsample0_q_net_x0),
    .out_2(downsample1_q_net_x0)
  );
  fpga_kf_3dof_plus_vector_down_sample9 vector_down_sample9 (
    .in_1(register0_q_net),
    .in_2(register1_q_net),
    .in_3(register2_q_net),
    .in_4(register3_q_net),
    .in_5(register4_q_net),
    .in_6(register5_q_net),
    .in_7(register6_q_net),
    .in_8(register7_q_net),
    .in_9(register8_q_net),
    .in_10(register9_q_net),
    .in_11(register10_q_net),
    .in_12(register11_q_net),
    .in_13(register12_q_net),
    .in_14(register13_q_net),
    .clk_1(src_clk_net),
    .ce_1(src_ce_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out_1(downsample0_q_net),
    .out_2(downsample1_q_net),
    .out_3(downsample2_q_net),
    .out_4(downsample3_q_net),
    .out_5(downsample4_q_net),
    .out_6(downsample5_q_net),
    .out_7(downsample6_q_net),
    .out_8(downsample7_q_net),
    .out_9(downsample8_q_net),
    .out_10(downsample9_q_net),
    .out_11(downsample10_q_net),
    .out_12(downsample11_q_net),
    .out_13(downsample12_q_net),
    .out_14(downsample13_q_net)
  );
  fpga_kf_3dof_plus_vector_mux vector_mux (
    .sel(down_sample1_q_net),
    .i0_1(downsample0_q_net_x8),
    .i1_1(downsample0_q_net_x7),
    .i0_2(downsample1_q_net_x8),
    .i0_3(downsample2_q_net_x6),
    .i0_4(downsample3_q_net_x6),
    .i0_5(downsample4_q_net_x6),
    .i0_6(downsample5_q_net_x6),
    .i0_7(downsample6_q_net_x6),
    .i0_8(downsample7_q_net_x6),
    .i0_9(downsample8_q_net_x6),
    .i0_10(downsample9_q_net_x6),
    .i0_11(downsample10_q_net_x6),
    .i0_12(downsample11_q_net_x6),
    .i0_13(downsample12_q_net_x6),
    .i0_14(downsample13_q_net_x6),
    .i0_15(downsample14_q_net_x0),
    .i0_16(downsample15_q_net_x0),
    .i0_17(downsample16_q_net_x0),
    .i0_18(downsample17_q_net_x0),
    .i0_19(downsample18_q_net_x0),
    .i0_20(downsample19_q_net_x0),
    .i0_21(downsample20_q_net_x0),
    .i0_22(downsample21_q_net_x0),
    .i0_23(downsample22_q_net_x0),
    .i0_24(downsample23_q_net_x0),
    .i0_25(downsample24_q_net_x0),
    .i0_26(downsample25_q_net_x0),
    .i0_27(downsample26_q_net_x0),
    .i0_28(downsample27_q_net_x0),
    .i0_29(downsample28_q_net_x0),
    .i0_30(downsample29_q_net_x0),
    .i0_31(downsample30_q_net_x0),
    .i0_32(downsample31_q_net_x0),
    .i0_33(downsample32_q_net_x0),
    .i0_34(downsample33_q_net_x0),
    .i0_35(downsample34_q_net_x0),
    .i0_36(downsample35_q_net_x0),
    .i0_37(downsample36_q_net_x0),
    .i0_38(downsample37_q_net_x0),
    .i0_39(downsample38_q_net_x0),
    .i0_40(downsample39_q_net_x0),
    .i0_41(downsample40_q_net_x0),
    .i0_42(downsample41_q_net_x0),
    .i0_43(downsample42_q_net_x0),
    .i0_44(downsample43_q_net_x0),
    .i0_45(downsample44_q_net_x0),
    .i0_46(downsample45_q_net_x0),
    .i0_47(downsample46_q_net_x0),
    .i0_48(downsample47_q_net_x0),
    .i0_49(downsample48_q_net_x0),
    .i1_2(downsample1_q_net_x7),
    .i1_3(downsample2_q_net_x5),
    .i1_4(downsample3_q_net_x5),
    .i1_5(downsample4_q_net_x5),
    .i1_6(downsample5_q_net_x5),
    .i1_7(downsample6_q_net_x5),
    .i1_8(downsample7_q_net_x5),
    .i1_9(downsample8_q_net_x5),
    .i1_10(downsample9_q_net_x5),
    .i1_11(downsample10_q_net_x5),
    .i1_12(downsample11_q_net_x5),
    .i1_13(downsample12_q_net_x5),
    .i1_14(downsample13_q_net_x5),
    .i1_15(downsample14_q_net),
    .i1_16(downsample15_q_net),
    .i1_17(downsample16_q_net),
    .i1_18(downsample17_q_net),
    .i1_19(downsample18_q_net),
    .i1_20(downsample19_q_net),
    .i1_21(downsample20_q_net),
    .i1_22(downsample21_q_net),
    .i1_23(downsample22_q_net),
    .i1_24(downsample23_q_net),
    .i1_25(downsample24_q_net),
    .i1_26(downsample25_q_net),
    .i1_27(downsample26_q_net),
    .i1_28(downsample27_q_net),
    .i1_29(downsample28_q_net),
    .i1_30(downsample29_q_net),
    .i1_31(downsample30_q_net),
    .i1_32(downsample31_q_net),
    .i1_33(downsample32_q_net),
    .i1_34(downsample33_q_net),
    .i1_35(downsample34_q_net),
    .i1_36(downsample35_q_net),
    .i1_37(downsample36_q_net),
    .i1_38(downsample37_q_net),
    .i1_39(downsample38_q_net),
    .i1_40(downsample39_q_net),
    .i1_41(downsample40_q_net),
    .i1_42(downsample41_q_net),
    .i1_43(downsample42_q_net),
    .i1_44(downsample43_q_net),
    .i1_45(downsample44_q_net),
    .i1_46(downsample45_q_net),
    .i1_47(downsample46_q_net),
    .i1_48(downsample47_q_net),
    .i1_49(downsample48_q_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .o_1(mux0_y_net_x2),
    .o_2(mux1_y_net_x2),
    .o_3(mux2_y_net_x2),
    .o_4(mux3_y_net_x2),
    .o_5(mux4_y_net_x2),
    .o_6(mux5_y_net_x2),
    .o_7(mux6_y_net_x2),
    .o_8(mux7_y_net_x2),
    .o_9(mux8_y_net_x2),
    .o_10(mux9_y_net_x1),
    .o_11(mux10_y_net_x2),
    .o_12(mux11_y_net_x2),
    .o_13(mux12_y_net_x2),
    .o_14(mux13_y_net_x2),
    .o_15(mux14_y_net),
    .o_16(mux15_y_net),
    .o_17(mux16_y_net),
    .o_18(mux17_y_net),
    .o_19(mux18_y_net),
    .o_20(mux19_y_net),
    .o_21(mux20_y_net),
    .o_22(mux21_y_net),
    .o_23(mux22_y_net),
    .o_24(mux23_y_net),
    .o_25(mux24_y_net),
    .o_26(mux25_y_net),
    .o_27(mux26_y_net),
    .o_28(mux27_y_net),
    .o_29(mux28_y_net),
    .o_30(mux29_y_net),
    .o_31(mux30_y_net),
    .o_32(mux31_y_net),
    .o_33(mux32_y_net),
    .o_34(mux33_y_net),
    .o_35(mux34_y_net),
    .o_36(mux35_y_net),
    .o_37(mux36_y_net),
    .o_38(mux37_y_net),
    .o_39(mux38_y_net),
    .o_40(mux39_y_net),
    .o_41(mux40_y_net),
    .o_42(mux41_y_net),
    .o_43(mux42_y_net),
    .o_44(mux43_y_net),
    .o_45(mux44_y_net),
    .o_46(mux45_y_net),
    .o_47(mux46_y_net),
    .o_48(mux47_y_net),
    .o_49(mux48_y_net)
  );
  fpga_kf_3dof_plus_vector_mux1 vector_mux1 (
    .sel(down_sample1_q_net),
    .i0_1(downsample0_q_net),
    .i1_1(downsample0_q_net_x2),
    .i0_2(downsample1_q_net),
    .i0_3(downsample2_q_net),
    .i0_4(downsample3_q_net),
    .i0_5(downsample4_q_net),
    .i0_6(downsample5_q_net),
    .i0_7(downsample6_q_net),
    .i0_8(downsample7_q_net),
    .i0_9(downsample8_q_net),
    .i0_10(downsample9_q_net),
    .i0_11(downsample10_q_net),
    .i0_12(downsample11_q_net),
    .i0_13(downsample12_q_net),
    .i0_14(downsample13_q_net),
    .i1_2(downsample1_q_net_x2),
    .i1_3(downsample2_q_net_x0),
    .i1_4(downsample3_q_net_x0),
    .i1_5(downsample4_q_net_x0),
    .i1_6(downsample5_q_net_x0),
    .i1_7(downsample6_q_net_x0),
    .i1_8(downsample7_q_net_x0),
    .i1_9(downsample8_q_net_x0),
    .i1_10(downsample9_q_net_x0),
    .i1_11(downsample10_q_net_x0),
    .i1_12(downsample11_q_net_x0),
    .i1_13(downsample12_q_net_x0),
    .i1_14(downsample13_q_net_x0),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .o_1(mux0_y_net_x1),
    .o_2(mux1_y_net_x1),
    .o_3(mux2_y_net_x1),
    .o_4(mux3_y_net_x1),
    .o_5(mux4_y_net_x1),
    .o_6(mux5_y_net_x1),
    .o_7(mux6_y_net_x1),
    .o_8(mux7_y_net_x1),
    .o_9(mux8_y_net_x1),
    .o_10(mux9_y_net_x0),
    .o_11(mux10_y_net_x1),
    .o_12(mux11_y_net_x1),
    .o_13(mux12_y_net_x1),
    .o_14(mux13_y_net_x1)
  );
  fpga_kf_3dof_plus_vector_mux2 vector_mux2 (
    .sel(down_sample1_q_net),
    .i0_1(downsample0_q_net_x6),
    .i1_1(downsample0_q_net_x4),
    .i0_2(downsample1_q_net_x6),
    .i0_3(downsample2_q_net_x4),
    .i0_4(downsample3_q_net_x4),
    .i0_5(downsample4_q_net_x4),
    .i0_6(downsample5_q_net_x4),
    .i0_7(downsample6_q_net_x4),
    .i0_8(downsample7_q_net_x4),
    .i0_9(downsample8_q_net_x4),
    .i0_10(downsample9_q_net_x4),
    .i0_11(downsample10_q_net_x4),
    .i0_12(downsample11_q_net_x4),
    .i0_13(downsample12_q_net_x4),
    .i0_14(downsample13_q_net_x4),
    .i1_2(downsample1_q_net_x4),
    .i1_3(downsample2_q_net_x2),
    .i1_4(downsample3_q_net_x2),
    .i1_5(downsample4_q_net_x2),
    .i1_6(downsample5_q_net_x2),
    .i1_7(downsample6_q_net_x2),
    .i1_8(downsample7_q_net_x2),
    .i1_9(downsample8_q_net_x2),
    .i1_10(downsample9_q_net_x2),
    .i1_11(downsample10_q_net_x2),
    .i1_12(downsample11_q_net_x2),
    .i1_13(downsample12_q_net_x2),
    .i1_14(downsample13_q_net_x2),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .o_1(mux0_y_net_x0),
    .o_2(mux1_y_net_x0),
    .o_3(mux2_y_net_x0),
    .o_4(mux3_y_net_x0),
    .o_5(mux4_y_net_x0),
    .o_6(mux5_y_net_x0),
    .o_7(mux6_y_net_x0),
    .o_8(mux7_y_net_x0),
    .o_9(mux8_y_net_x0),
    .o_10(mux9_y_net),
    .o_11(mux10_y_net_x0),
    .o_12(mux11_y_net_x0),
    .o_13(mux12_y_net_x0),
    .o_14(mux13_y_net_x0)
  );
  fpga_kf_3dof_plus_vector_mux3 vector_mux3 (
    .sel(down_sample1_q_net),
    .i0_1(downsample0_q_net_x5),
    .i1_1(downsample0_q_net_x3),
    .i0_2(downsample1_q_net_x5),
    .i0_3(downsample2_q_net_x3),
    .i0_4(downsample3_q_net_x3),
    .i0_5(downsample4_q_net_x3),
    .i0_6(downsample5_q_net_x3),
    .i0_7(downsample6_q_net_x3),
    .i0_8(downsample7_q_net_x3),
    .i0_9(downsample8_q_net_x3),
    .i0_10(downsample9_q_net_x3),
    .i0_11(downsample10_q_net_x3),
    .i0_12(downsample11_q_net_x3),
    .i0_13(downsample12_q_net_x3),
    .i0_14(downsample13_q_net_x3),
    .i1_2(downsample1_q_net_x3),
    .i1_3(downsample2_q_net_x1),
    .i1_4(downsample3_q_net_x1),
    .i1_5(downsample4_q_net_x1),
    .i1_6(downsample5_q_net_x1),
    .i1_7(downsample6_q_net_x1),
    .i1_8(downsample7_q_net_x1),
    .i1_9(downsample8_q_net_x1),
    .i1_10(downsample9_q_net_x1),
    .i1_11(downsample10_q_net_x1),
    .i1_12(downsample11_q_net_x1),
    .i1_13(downsample12_q_net_x1),
    .i1_14(downsample13_q_net_x1),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .o_1(mux0_y_net),
    .o_2(mux1_y_net),
    .o_3(mux2_y_net),
    .o_4(mux3_y_net),
    .o_5(mux4_y_net),
    .o_6(mux5_y_net),
    .o_7(mux6_y_net),
    .o_8(mux7_y_net),
    .o_9(mux8_y_net),
    .o_10(mux9_y_net_x2),
    .o_11(mux10_y_net),
    .o_12(mux11_y_net),
    .o_13(mux12_y_net),
    .o_14(mux13_y_net)
  );
  fpga_kf_3dof_plus_vector_mux4 vector_mux4 (
    .sel(down_sample6_q_net),
    .i0_1(constant0_op_net),
    .i1_1(addsub6_s_net_x9),
    .i2_1(addsub8_s_net),
    .i3_1(up_sample7_q_net),
    .i4_1(addsub0_s_net_x0),
    .i5_1(addsub0_s_net),
    .i0_2(constant1_op_net),
    .i1_2(addsub6_s_net_x0),
    .i2_2(constant2_op_net),
    .i3_2(constant_op_net),
    .i4_2(addsub1_s_net_x0),
    .i5_2(addsub1_s_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .o_1(mux0_y_net_x3),
    .o_2(mux1_y_net_x3)
  );
  fpga_kf_3dof_plus_vector_real_mult vector_real_mult (
    .a_1(mux0_y_net_x2),
    .b_1(register0_q_net_x8),
    .a_2(mux1_y_net_x2),
    .a_3(mux2_y_net_x2),
    .a_4(mux3_y_net_x2),
    .a_5(mux4_y_net_x2),
    .a_6(mux5_y_net_x2),
    .a_7(mux6_y_net_x2),
    .b_2(register1_q_net_x8),
    .b_3(register2_q_net_x7),
    .b_4(register3_q_net_x7),
    .b_5(register4_q_net_x7),
    .b_6(register5_q_net_x7),
    .b_7(mcode_data_out_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .a_x_b_1(mult0_p_net),
    .a_x_b_2(mult1_p_net_x0),
    .a_x_b_3(mult2_p_net_x0),
    .a_x_b_4(mult3_p_net),
    .a_x_b_5(mult4_p_net),
    .a_x_b_6(mult5_p_net_x0),
    .a_x_b_7(mult6_p_net)
  );
  fpga_kf_3dof_plus_vector_real_mult1 vector_real_mult1 (
    .a_1(mux7_y_net_x2),
    .b_1(register0_q_net_x8),
    .a_2(mux8_y_net_x2),
    .a_3(mux9_y_net_x1),
    .a_4(mux10_y_net_x2),
    .a_5(mux11_y_net_x2),
    .a_6(mux12_y_net_x2),
    .a_7(mux13_y_net_x2),
    .b_2(register1_q_net_x8),
    .b_3(register2_q_net_x7),
    .b_4(register3_q_net_x7),
    .b_5(register4_q_net_x7),
    .b_6(register5_q_net_x7),
    .b_7(mcode_data_out_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .a_x_b_1(mult0_p_net_x0),
    .a_x_b_2(mult1_p_net_x1),
    .a_x_b_3(mult2_p_net_x1),
    .a_x_b_4(mult3_p_net_x0),
    .a_x_b_5(mult4_p_net_x0),
    .a_x_b_6(mult5_p_net_x1),
    .a_x_b_7(mult6_p_net_x0)
  );
  fpga_kf_3dof_plus_vector_real_mult10 vector_real_mult10 (
    .a_1(mux4_y_net_x0),
    .b_1(down_sample_q_net),
    .a_2(mux5_y_net_x0),
    .b_2(down_sample8_q_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .a_x_b_1(mult0_p_net_x1),
    .a_x_b_2(mult1_p_net_x2)
  );
  fpga_kf_3dof_plus_vector_real_mult11 vector_real_mult11 (
    .a_1(mux6_y_net_x0),
    .b_1(down_sample_q_net),
    .a_2(mux7_y_net_x0),
    .b_2(down_sample8_q_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .a_x_b_1(mult0_p_net_x2),
    .a_x_b_2(mult1_p_net_x3)
  );
  fpga_kf_3dof_plus_vector_real_mult12 vector_real_mult12 (
    .a_1(mux0_y_net),
    .b_1(register0_q_net_x8),
    .a_2(mux1_y_net),
    .a_3(mux2_y_net),
    .a_4(mux3_y_net),
    .a_5(mux4_y_net),
    .a_6(mux5_y_net),
    .a_7(mux6_y_net),
    .b_2(register1_q_net_x8),
    .b_3(register2_q_net_x7),
    .b_4(register3_q_net_x7),
    .b_5(register4_q_net_x7),
    .b_6(register5_q_net_x7),
    .b_7(mcode_data_out_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .a_x_b_1(mult0_p_net_x3),
    .a_x_b_2(mult1_p_net_x4),
    .a_x_b_3(mult2_p_net_x2),
    .a_x_b_4(mult3_p_net_x1),
    .a_x_b_5(mult4_p_net_x1),
    .a_x_b_6(mult5_p_net_x2),
    .a_x_b_7(mult6_p_net_x1)
  );
  fpga_kf_3dof_plus_vector_real_mult13 vector_real_mult13 (
    .a_1(mux7_y_net),
    .b_1(register0_q_net_x8),
    .a_2(mux8_y_net),
    .a_3(mux9_y_net_x2),
    .a_4(mux10_y_net),
    .a_5(mux11_y_net),
    .a_6(mux12_y_net),
    .a_7(mux13_y_net),
    .b_2(register1_q_net_x8),
    .b_3(register2_q_net_x7),
    .b_4(register3_q_net_x7),
    .b_5(register4_q_net_x7),
    .b_6(register5_q_net_x7),
    .b_7(mcode_data_out_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .a_x_b_1(mult0_p_net_x4),
    .a_x_b_2(mult1_p_net_x5),
    .a_x_b_3(mult2_p_net_x3),
    .a_x_b_4(mult3_p_net_x2),
    .a_x_b_5(mult4_p_net_x2),
    .a_x_b_6(mult5_p_net_x3),
    .a_x_b_7(mult6_p_net_x2)
  );
  fpga_kf_3dof_plus_vector_real_mult14 vector_real_mult14 (
    .a_1(mux35_y_net),
    .b_1(register0_q_net_x8),
    .a_2(mux36_y_net),
    .a_3(mux37_y_net),
    .a_4(mux38_y_net),
    .a_5(mux39_y_net),
    .a_6(mux40_y_net),
    .a_7(mux41_y_net),
    .b_2(register1_q_net_x8),
    .b_3(register2_q_net_x7),
    .b_4(register3_q_net_x7),
    .b_5(register4_q_net_x7),
    .b_6(register5_q_net_x7),
    .b_7(mcode_data_out_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .a_x_b_1(mult0_p_net_x5),
    .a_x_b_2(mult1_p_net_x6),
    .a_x_b_3(mult2_p_net_x4),
    .a_x_b_4(mult3_p_net_x3),
    .a_x_b_5(mult4_p_net_x3),
    .a_x_b_6(mult5_p_net_x4),
    .a_x_b_7(mult6_p_net_x3)
  );
  fpga_kf_3dof_plus_vector_real_mult15 vector_real_mult15 (
    .a_1(mux28_y_net),
    .b_1(register0_q_net_x8),
    .a_2(mux29_y_net),
    .a_3(mux30_y_net),
    .a_4(mux31_y_net),
    .a_5(mux32_y_net),
    .a_6(mux33_y_net),
    .a_7(mux34_y_net),
    .b_2(register1_q_net_x8),
    .b_3(register2_q_net_x7),
    .b_4(register3_q_net_x7),
    .b_5(register4_q_net_x7),
    .b_6(register5_q_net_x7),
    .b_7(mcode_data_out_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .a_x_b_1(mult0_p_net_x6),
    .a_x_b_2(mult1_p_net_x7),
    .a_x_b_3(mult2_p_net_x5),
    .a_x_b_4(mult3_p_net_x4),
    .a_x_b_5(mult4_p_net_x4),
    .a_x_b_6(mult5_p_net_x5),
    .a_x_b_7(mult6_p_net_x4)
  );
  fpga_kf_3dof_plus_vector_real_mult16 vector_real_mult16 (
    .a_1(mux8_y_net_x1),
    .b_1(convert0_dout_net),
    .a_2(mux9_y_net_x0),
    .b_2(convert1_dout_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .a_x_b_1(mult0_p_net_x7),
    .a_x_b_2(mult1_p_net_x8)
  );
  fpga_kf_3dof_plus_vector_real_mult17 vector_real_mult17 (
    .a_1(mux10_y_net_x1),
    .b_1(convert0_dout_net),
    .a_2(mux11_y_net_x1),
    .b_2(convert1_dout_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .a_x_b_1(mult0_p_net_x8),
    .a_x_b_2(mult1_p_net_x9)
  );
  fpga_kf_3dof_plus_vector_real_mult18 vector_real_mult18 (
    .a_1(mux8_y_net_x0),
    .b_1(down_sample_q_net),
    .a_2(mux9_y_net),
    .b_2(down_sample8_q_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .a_x_b_1(mult0_p_net_x9),
    .a_x_b_2(mult1_p_net_x10)
  );
  fpga_kf_3dof_plus_vector_real_mult19 vector_real_mult19 (
    .a_1(mux10_y_net_x0),
    .b_1(down_sample_q_net),
    .a_2(mux11_y_net_x0),
    .b_2(down_sample8_q_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .a_x_b_1(mult0_p_net_x10),
    .a_x_b_2(mult1_p_net_x11)
  );
  fpga_kf_3dof_plus_vector_real_mult2 vector_real_mult2 (
    .a_1(mux14_y_net),
    .b_1(register0_q_net_x8),
    .a_2(mux15_y_net),
    .a_3(mux16_y_net),
    .a_4(mux17_y_net),
    .a_5(mux18_y_net),
    .a_6(mux19_y_net),
    .a_7(mux20_y_net),
    .b_2(register1_q_net_x8),
    .b_3(register2_q_net_x7),
    .b_4(register3_q_net_x7),
    .b_5(register4_q_net_x7),
    .b_6(register5_q_net_x7),
    .b_7(mcode_data_out_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .a_x_b_1(mult0_p_net_x11),
    .a_x_b_2(mult1_p_net_x12),
    .a_x_b_3(mult2_p_net_x6),
    .a_x_b_4(mult3_p_net_x5),
    .a_x_b_5(mult4_p_net_x5),
    .a_x_b_6(mult5_p_net_x6),
    .a_x_b_7(mult6_p_net_x5)
  );
  fpga_kf_3dof_plus_vector_real_mult20 vector_real_mult20 (
    .a_1(mux12_y_net_x0),
    .b_1(down_sample_q_net),
    .a_2(mux13_y_net_x0),
    .b_2(down_sample8_q_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .a_x_b_1(mult0_p_net_x12),
    .a_x_b_2(mult1_p_net_x13)
  );
  fpga_kf_3dof_plus_vector_real_mult21 vector_real_mult21 (
    .a_1(mux12_y_net_x1),
    .b_1(convert0_dout_net),
    .a_2(mux13_y_net_x1),
    .b_2(convert1_dout_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .a_x_b_1(mult0_p_net_x13),
    .a_x_b_2(mult1_p_net_x14)
  );
  fpga_kf_3dof_plus_vector_real_mult22 vector_real_mult22 (
    .a_1(mux42_y_net),
    .b_1(register0_q_net_x8),
    .a_2(mux43_y_net),
    .a_3(mux44_y_net),
    .a_4(mux45_y_net),
    .a_5(mux46_y_net),
    .a_6(mux47_y_net),
    .a_7(mux48_y_net),
    .b_2(register1_q_net_x8),
    .b_3(register2_q_net_x7),
    .b_4(register3_q_net_x7),
    .b_5(register4_q_net_x7),
    .b_6(register5_q_net_x7),
    .b_7(mcode_data_out_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .a_x_b_1(mult0_p_net_x14),
    .a_x_b_2(mult1_p_net_x15),
    .a_x_b_3(mult2_p_net_x7),
    .a_x_b_4(mult3_p_net_x6),
    .a_x_b_5(mult4_p_net_x6),
    .a_x_b_6(mult5_p_net_x7),
    .a_x_b_7(mult6_p_net_x6)
  );
  fpga_kf_3dof_plus_vector_real_mult3 vector_real_mult3 (
    .a_1(mux21_y_net),
    .b_1(register0_q_net_x8),
    .a_2(mux22_y_net),
    .a_3(mux23_y_net),
    .a_4(mux24_y_net),
    .a_5(mux25_y_net),
    .a_6(mux26_y_net),
    .a_7(mux27_y_net),
    .b_2(register1_q_net_x8),
    .b_3(register2_q_net_x7),
    .b_4(register3_q_net_x7),
    .b_5(register4_q_net_x7),
    .b_6(register5_q_net_x7),
    .b_7(mcode_data_out_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .a_x_b_1(mult0_p_net_x15),
    .a_x_b_2(mult1_p_net_x16),
    .a_x_b_3(mult2_p_net_x8),
    .a_x_b_4(mult3_p_net_x7),
    .a_x_b_5(mult4_p_net_x7),
    .a_x_b_6(mult5_p_net_x8),
    .a_x_b_7(mult6_p_net_x7)
  );
  fpga_kf_3dof_plus_vector_real_mult4 vector_real_mult4 (
    .a_1(mux0_y_net_x1),
    .b_1(convert0_dout_net),
    .a_2(mux1_y_net_x1),
    .b_2(convert1_dout_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .a_x_b_1(mult0_p_net_x16),
    .a_x_b_2(mult1_p_net_x17)
  );
  fpga_kf_3dof_plus_vector_real_mult5 vector_real_mult5 (
    .a_1(mux2_y_net_x1),
    .b_1(convert0_dout_net),
    .a_2(mux3_y_net_x1),
    .b_2(convert1_dout_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .a_x_b_1(mult0_p_net_x17),
    .a_x_b_2(mult1_p_net_x18)
  );
  fpga_kf_3dof_plus_vector_real_mult6 vector_real_mult6 (
    .a_1(mux4_y_net_x1),
    .b_1(convert0_dout_net),
    .a_2(mux5_y_net_x1),
    .b_2(convert1_dout_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .a_x_b_1(mult0_p_net_x18),
    .a_x_b_2(mult1_p_net_x19)
  );
  fpga_kf_3dof_plus_vector_real_mult7 vector_real_mult7 (
    .a_1(mux6_y_net_x1),
    .b_1(convert0_dout_net),
    .a_2(mux7_y_net_x1),
    .b_2(convert1_dout_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .a_x_b_1(mult0_p_net_x19),
    .a_x_b_2(mult1_p_net_x20)
  );
  fpga_kf_3dof_plus_vector_real_mult8 vector_real_mult8 (
    .a_1(mux0_y_net_x0),
    .b_1(down_sample_q_net),
    .a_2(mux1_y_net_x0),
    .b_2(down_sample8_q_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .a_x_b_1(mult0_p_net_x20),
    .a_x_b_2(mult1_p_net_x21)
  );
  fpga_kf_3dof_plus_vector_real_mult9 vector_real_mult9 (
    .a_1(mux2_y_net_x0),
    .b_1(down_sample_q_net),
    .a_2(mux3_y_net_x0),
    .b_2(down_sample8_q_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .a_x_b_1(mult0_p_net_x21),
    .a_x_b_2(mult1_p_net_x22)
  );
  fpga_kf_3dof_plus_vector_register vector_register (
    .d_1(convert0_dout_net_x1),
    .d_2(convert1_dout_net_x1),
    .d_3(convert2_dout_net_x0),
    .d_4(convert3_dout_net_x0),
    .d_5(convert4_dout_net_x0),
    .d_6(convert5_dout_net_x0),
    .d_7(convert6_dout_net_x0),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .q_1(register0_q_net_x8),
    .q_2(register1_q_net_x8),
    .q_3(register2_q_net_x7),
    .q_4(register3_q_net_x7),
    .q_5(register4_q_net_x7),
    .q_6(register5_q_net_x7),
    .q_7(register6_q_net_x7)
  );
  fpga_kf_3dof_plus_vector_up_sample vector_up_sample (
    .in_1(convert0_dout_net_x0),
    .in_2(convert1_dout_net_x0),
    .in_3(convert2_dout_net),
    .in_4(convert3_dout_net),
    .in_5(convert4_dout_net),
    .in_6(convert5_dout_net),
    .in_7(convert6_dout_net),
    .clk_1(src_clk_net),
    .ce_1(src_ce_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out_1(upsample0_q_net),
    .out_2(upsample1_q_net),
    .out_3(upsample2_q_net),
    .out_4(upsample3_q_net),
    .out_5(upsample4_q_net),
    .out_6(upsample5_q_net),
    .out_7(upsample6_q_net)
  );
  fpga_kf_3dof_plus_vector_up_sample1 vector_up_sample1 (
    .in_1(convert0_dout_net),
    .in_2(convert1_dout_net),
    .clk_1(src_clk_net),
    .ce_1(src_ce_net),
    .clk_4(clk_net),
    .ce_4(ce_net),
    .out_1(upsample0_q_net_x0),
    .out_2(upsample1_q_net_x0)
  );
  fpga_kf_3dof_plus_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(25),
    .a_width(30),
    .b_arith(`xlSigned),
    .b_bin_pt(15),
    .b_width(18),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(31),
    .core_name0("fpga_kf_3dof_plus_c_addsub_v12_0_i0"),
    .extra_registers(1),
    .full_s_arith(2),
    .full_s_width(31),
    .latency(2),
    .overflow(2),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(25),
    .s_width(30)
  )
  addsub (
    .clr(1'b0),
    .en(1'b1),
    .a(add_offset_ch1_s_net),
    .b(register11_q_net_x6),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .s(addsub_s_net)
  );
  fpga_kf_3dof_plus_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(0),
    .a_width(11),
    .b_arith(`xlUnsigned),
    .b_bin_pt(0),
    .b_width(10),
    .c_has_c_out(0),
    .c_latency(0),
    .c_output_width(12),
    .core_name0("fpga_kf_3dof_plus_c_addsub_v12_0_i1"),
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
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub3_s_net_x1)
  );
  sysgen_addsub_e9ef72f841 addsub6 (
    .clr(1'b0),
    .a(delay_q_net),
    .b(addsub6_s_net_x1),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub6_s_net_x9)
  );
  fpga_kf_3dof_plus_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_has_c_out(0),
    .c_latency(0),
    .c_output_width(35),
    .core_name0("fpga_kf_3dof_plus_c_addsub_v12_0_i2"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(35),
    .latency(0),
    .overflow(2),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(25),
    .s_width(30)
  )
  addsub8 (
    .clr(1'b0),
    .en(1'b1),
    .a(c0_ram_douta_net),
    .b(mult5_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub8_s_net)
  );
  fpga_kf_3dof_plus_xltdpram #(
    .addr_width_b(10),
    .clocking_mode("common_clock"),
    .data_width_b(25),
    .latency(1),
    .mem_init_file("xpm_d77206_vivado.mem"),
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
    .addra(addsub3_s_net_x1),
    .dina(constant3_op_net),
    .wea(constant4_op_net),
    .addrb(down_sample4_q_net),
    .dinb(downsample0_q_net_x0),
    .web(down_sample5_q_net),
    .a_clk(clk_net),
    .a_ce(ce_net),
    .b_clk(clk_net),
    .b_ce(ce_net),
    .douta(c0_ram_douta_net),
    .doutb(c0_ram_doutb_net)
  );
  fpga_kf_3dof_plus_xltdpram #(
    .addr_width_b(10),
    .clocking_mode("common_clock"),
    .data_width_b(25),
    .latency(1),
    .mem_init_file("xpm_b37ed1_vivado.mem"),
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
    .addra(addsub3_s_net_x1),
    .dina(constant3_op_net),
    .wea(constant4_op_net),
    .addrb(down_sample4_q_net),
    .dinb(downsample1_q_net_x0),
    .web(down_sample5_q_net),
    .a_clk(clk_net),
    .a_ce(ce_net),
    .b_clk(clk_net),
    .b_ce(ce_net),
    .douta(c1_ram_douta_net),
    .doutb(c1_ram_doutb_net)
  );
  sysgen_concat_18676b3df4 concat (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .in0(reinterpret3_output_port_net),
    .in1(reinterpret5_output_port_net),
    .y(concat_y_net)
  );
  sysgen_concat_24e77e399e concat1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .in0(register7_q_net_x8),
    .in1(register9_q_net_x7),
    .in2(pot_sw_mux_y_net),
    .y(concat1_y_net)
  );
  sysgen_concat_18676b3df4 concat2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .in0(reinterpret1_output_port_net),
    .in1(reinterpret2_output_port_net),
    .y(concat2_y_net)
  );
  sysgen_concat_18676b3df4 concat3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .in0(reinterpret4_output_port_net),
    .in1(reinterpret6_output_port_net),
    .y(concat3_y_net)
  );
  sysgen_concat_18676b3df4 concat4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .in0(reinterpret8_output_port_net),
    .in1(reinterpret7_output_port_net),
    .y(concat4_y_net)
  );
  sysgen_concat_18676b3df4 concat5 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .in0(reinterpret9_output_port_net),
    .in1(reinterpret10_output_port_net),
    .y(concat5_y_net)
  );
  sysgen_concat_18676b3df4 concat6 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .in0(reinterpret11_output_port_net),
    .in1(reinterpret12_output_port_net),
    .y(concat6_y_net)
  );
  sysgen_concat_18676b3df4 concat7 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .in0(reinterpret14_output_port_net),
    .in1(reinterpret13_output_port_net),
    .y(concat7_y_net)
  );
  sysgen_constant_7bedfdcdfa constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  sysgen_constant_9725c8f107 constant1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant1_op_net_x0)
  );
  sysgen_constant_9725c8f107 constant2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant2_op_net)
  );
  sysgen_constant_0f28ef8059 constant3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant3_op_net)
  );
  sysgen_constant_1c2258b819 constant4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant4_op_net)
  );
  fpga_kf_3dof_plus_xlconvert #(
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
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert3_dout_net_x1)
  );
  fpga_kf_3dof_plus_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(34)
  )
  delay (
    .en(1'b1),
    .rst(1'b0),
    .d(mcode1_data_out_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_q_net)
  );
  fpga_kf_3dof_plus_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(25)
  )
  delay1 (
    .en(1'b1),
    .rst(1'b0),
    .d(fb_integral_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay1_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(25),
    .d_width(30),
    .ds_ratio(4),
    .latency(1),
    .phase(0),
    .q_arith(`xlSigned),
    .q_bin_pt(25),
    .q_width(30)
  )
  down_sample (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(addsub_s_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(down_sample_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(down_sample1_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(25),
    .d_width(30),
    .ds_ratio(4),
    .latency(1),
    .phase(0),
    .q_arith(`xlSigned),
    .q_bin_pt(25),
    .q_width(30)
  )
  down_sample10 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register2_q_net_x8),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(down_sample10_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(25),
    .d_width(30),
    .ds_ratio(4),
    .latency(1),
    .phase(0),
    .q_arith(`xlSigned),
    .q_bin_pt(25),
    .q_width(30)
  )
  down_sample11 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register4_q_net_x8),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(down_sample11_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  down_sample12 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register10_q_net_x6),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(down_sample12_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(25),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(0),
    .q_arith(`xlSigned),
    .q_bin_pt(25),
    .q_width(25)
  )
  down_sample13 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register17_q_net_x1),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(down_sample13_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(0),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  down_sample14 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register18_q_net_x1),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(down_sample14_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(0),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  down_sample15 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register19_q_net_x1),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(down_sample15_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(16),
    .d_width(25),
    .ds_ratio(4),
    .latency(1),
    .phase(0),
    .q_arith(`xlSigned),
    .q_bin_pt(16),
    .q_width(25)
  )
  down_sample16 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register21_q_net_x1),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(down_sample16_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
  down_sample17 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register20_q_net_x1),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(down_sample17_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
    .d(register12_q_net_x6),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(down_sample2_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
    .d(register13_q_net_x6),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(down_sample3_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
    .d(register14_q_net_x0),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(down_sample4_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
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
    .d(register15_q_net_x0),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(down_sample5_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
    .d_arith(`xlUnsigned),
    .d_bin_pt(0),
    .d_width(3),
    .ds_ratio(4),
    .latency(1),
    .phase(0),
    .q_arith(`xlUnsigned),
    .q_bin_pt(0),
    .q_width(3)
  )
  down_sample6 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register16_q_net_x1),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(down_sample6_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(25),
    .d_width(30),
    .ds_ratio(4),
    .latency(1),
    .phase(0),
    .q_arith(`xlSigned),
    .q_bin_pt(25),
    .q_width(30)
  )
  down_sample8 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(add_offset_ch2_s_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(down_sample8_q_net)
  );
  fpga_kf_3dof_plus_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(13),
    .d_width(14),
    .ds_ratio(64),
    .latency(1),
    .phase(63),
    .q_arith(`xlSigned),
    .q_bin_pt(13),
    .q_width(14)
  )
  down_sample9 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(register1_q_net_x9),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net_x0),
    .dest_ce(ce_net_x0),
    .q(down_sample9_q_net)
  );
  sysgen_expr_f38f1cf01a expression (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .a(convert3_dout_net_x1),
    .b(shift_op_net),
    .dout(expression_dout_net)
  );
  sysgen_inverter_46f71034f1 inverter (
    .clr(1'b0),
    .ip(register_q_net),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .op(inverter_op_net)
  );
  sysgen_mcode_block_fec8abe7ce mcode (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .data_in(register6_q_net_x7),
    .ub(down_sample10_q_net),
    .lb(down_sample11_q_net),
    .enb(down_sample12_q_net),
    .data_out(mcode_data_out_net)
  );
  sysgen_mcode_block_ec76dd3d06 mcode1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .data_in(mult2_p_net),
    .ub(down_sample14_q_net),
    .lb(down_sample15_q_net),
    .enb(down_sample17_q_net),
    .data_out(mcode1_data_out_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(13),
    .a_width(14),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(25),
    .c_a_type(0),
    .c_a_width(14),
    .c_b_type(0),
    .c_b_width(25),
    .c_baat(14),
    .c_output_width(39),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i0"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(38),
    .p_width(39),
    .quantization(1)
  )
  mult (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(convert0_dout_net),
    .b(down_sample13_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(25),
    .a_width(30),
    .b_arith(`xlUnsigned),
    .b_bin_pt(0),
    .b_width(25),
    .c_a_type(0),
    .c_a_width(30),
    .c_b_type(1),
    .c_b_width(25),
    .c_baat(30),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i1"),
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
    .a(mux8_y_net_x3),
    .b(down_sample2_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult1_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(24),
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
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i2"),
    .extra_registers(0),
    .multsign(2),
    .overflow(2),
    .p_arith(`xlSigned),
    .p_bin_pt(25),
    .p_width(30),
    .quantization(1)
  )
  mult2 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(delay1_q_net),
    .b(down_sample16_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult2_p_net)
  );
  fpga_kf_3dof_plus_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(16),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(30),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(30),
    .c_baat(25),
    .c_output_width(55),
    .c_type(0),
    .core_name0("fpga_kf_3dof_plus_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(2),
    .p_arith(`xlSigned),
    .p_bin_pt(25),
    .p_width(30),
    .quantization(1)
  )
  mult5 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(c1_ram_douta_net),
    .b(register7_q_net_x7),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult5_p_net)
  );
  sysgen_mux_7db0f79b89 mux8 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .sel(expression_dout_net),
    .d0(register0_q_net_x8),
    .d1(downsample0_q_net_x1),
    .d2(downsample1_q_net_x1),
    .d3(constant1_op_net_x0),
    .y(mux8_y_net_x3)
  );
  fpga_kf_3dof_plus_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register (
    .en(1'b1),
    .rst(1'b0),
    .d(hw_pot_switch_net),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .q(register_q_net)
  );
  fpga_kf_3dof_plus_xlregister #(
    .d_width(30),
    .init_value(30'b000000000000000000000000000000)
  )
  register7 (
    .en(1'b1),
    .rst(1'b0),
    .d(register1_q_net_x8),
    .clk(clk_net),
    .ce(ce_net),
    .q(register7_q_net_x7)
  );
  sysgen_reinterpret_94d91c52e8 reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(sfix16_cast1_dout_net),
    .output_port(reinterpret1_output_port_net)
  );
  sysgen_reinterpret_94d91c52e8 reinterpret10 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(sfix16_cast10_dout_net),
    .output_port(reinterpret10_output_port_net)
  );
  sysgen_reinterpret_94d91c52e8 reinterpret11 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(sfix16_cast11_dout_net),
    .output_port(reinterpret11_output_port_net)
  );
  sysgen_reinterpret_94d91c52e8 reinterpret12 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(sfix16_cast12_dout_net),
    .output_port(reinterpret12_output_port_net)
  );
  sysgen_reinterpret_94d91c52e8 reinterpret13 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(sfix16_cast13_dout_net),
    .output_port(reinterpret13_output_port_net)
  );
  sysgen_reinterpret_94d91c52e8 reinterpret14 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(sfix16_cast14_dout_net),
    .output_port(reinterpret14_output_port_net)
  );
  sysgen_reinterpret_94d91c52e8 reinterpret2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(sfix16_cast2_dout_net),
    .output_port(reinterpret2_output_port_net)
  );
  sysgen_reinterpret_94d91c52e8 reinterpret3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(sfix16_cast4_dout_net),
    .output_port(reinterpret3_output_port_net)
  );
  sysgen_reinterpret_94d91c52e8 reinterpret4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(sfix16_cast3_dout_net),
    .output_port(reinterpret4_output_port_net)
  );
  sysgen_reinterpret_94d91c52e8 reinterpret5 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(sfix16_cast6_dout_net),
    .output_port(reinterpret5_output_port_net)
  );
  sysgen_reinterpret_94d91c52e8 reinterpret6 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(sfix16_cast5_dout_net),
    .output_port(reinterpret6_output_port_net)
  );
  sysgen_reinterpret_94d91c52e8 reinterpret7 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(sfix16_cast7_dout_net),
    .output_port(reinterpret7_output_port_net)
  );
  sysgen_reinterpret_94d91c52e8 reinterpret8 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(sfix16_cast8_dout_net),
    .output_port(reinterpret8_output_port_net)
  );
  sysgen_reinterpret_94d91c52e8 reinterpret9 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(sfix16_cast9_dout_net),
    .output_port(reinterpret9_output_port_net)
  );
  sysgen_relational_3150870eb8 relational (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .a(register0_q_net_x8),
    .b(downsample0_q_net_x1),
    .op(relational_op_net)
  );
  sysgen_relational_987ff2b46d relational1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .a(register0_q_net_x8),
    .b(downsample1_q_net_x1),
    .op(relational1_op_net)
  );
  sysgen_shift_e05118d61b shift (
    .clr(1'b0),
    .ip(relational1_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(shift_op_net)
  );
  fpga_kf_3dof_plus_xlusamp #(
    .copy_samples(1),
    .d_arith(`xlSigned),
    .d_bin_pt(25),
    .d_width(30),
    .latency(1),
    .q_arith(`xlSigned),
    .q_bin_pt(25),
    .q_width(30)
  )
  up_sample (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .d(register0_q_net_x8),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(src_clk_net),
    .dest_ce(src_ce_net),
    .q(up_sample_q_net)
  );
  fpga_kf_3dof_plus_xlusamp #(
    .copy_samples(1),
    .d_arith(`xlSigned),
    .d_bin_pt(25),
    .d_width(30),
    .latency(1),
    .q_arith(`xlSigned),
    .q_bin_pt(25),
    .q_width(30)
  )
  up_sample1 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .d(register1_q_net_x8),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(src_clk_net),
    .dest_ce(src_ce_net),
    .q(up_sample1_q_net)
  );
  fpga_kf_3dof_plus_xlusamp #(
    .copy_samples(1),
    .d_arith(`xlSigned),
    .d_bin_pt(25),
    .d_width(30),
    .latency(1),
    .q_arith(`xlSigned),
    .q_bin_pt(25),
    .q_width(30)
  )
  up_sample2 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .d(register2_q_net_x7),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(src_clk_net),
    .dest_ce(src_ce_net),
    .q(up_sample2_q_net)
  );
  fpga_kf_3dof_plus_xlusamp #(
    .copy_samples(1),
    .d_arith(`xlSigned),
    .d_bin_pt(25),
    .d_width(30),
    .latency(1),
    .q_arith(`xlSigned),
    .q_bin_pt(25),
    .q_width(30)
  )
  up_sample3 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .d(register3_q_net_x7),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(src_clk_net),
    .dest_ce(src_ce_net),
    .q(up_sample3_q_net)
  );
  fpga_kf_3dof_plus_xlusamp #(
    .copy_samples(1),
    .d_arith(`xlSigned),
    .d_bin_pt(25),
    .d_width(30),
    .latency(1),
    .q_arith(`xlSigned),
    .q_bin_pt(25),
    .q_width(30)
  )
  up_sample4 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .d(register4_q_net_x7),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(src_clk_net),
    .dest_ce(src_ce_net),
    .q(up_sample4_q_net)
  );
  fpga_kf_3dof_plus_xlusamp #(
    .copy_samples(1),
    .d_arith(`xlSigned),
    .d_bin_pt(25),
    .d_width(30),
    .latency(1),
    .q_arith(`xlSigned),
    .q_bin_pt(25),
    .q_width(30)
  )
  up_sample5 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .d(register5_q_net_x7),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(src_clk_net),
    .dest_ce(src_ce_net),
    .q(up_sample5_q_net)
  );
  fpga_kf_3dof_plus_xlusamp #(
    .copy_samples(1),
    .d_arith(`xlSigned),
    .d_bin_pt(13),
    .d_width(14),
    .latency(1),
    .q_arith(`xlSigned),
    .q_bin_pt(13),
    .q_width(14)
  )
  up_sample6 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .d(up_sample7_q_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(src_clk_net),
    .dest_ce(src_ce_net),
    .q(up_sample6_q_net)
  );
  fpga_kf_3dof_plus_xlusamp #(
    .copy_samples(1),
    .d_arith(`xlSigned),
    .d_bin_pt(13),
    .d_width(14),
    .latency(1),
    .q_arith(`xlSigned),
    .q_bin_pt(13),
    .q_width(14)
  )
  up_sample7 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .d(register_q_net_x0),
    .src_clk(clk_net_x0),
    .src_ce(ce_net_x0),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(up_sample7_q_net)
  );
  fpga_kf_3dof_plus_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(13),
    .a_width(14),
    .b_arith(`xlSigned),
    .b_bin_pt(13),
    .b_width(14),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(15),
    .core_name0("fpga_kf_3dof_plus_c_addsub_v12_0_i3"),
    .extra_registers(1),
    .full_s_arith(2),
    .full_s_width(15),
    .latency(2),
    .overflow(2),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(25),
    .s_width(30)
  )
  add_offset_ch1 (
    .clr(1'b0),
    .en(1'b1),
    .a(x_in_reg_q_net),
    .b(register3_q_net_x8),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .s(add_offset_ch1_s_net)
  );
  fpga_kf_3dof_plus_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(13),
    .a_width(14),
    .b_arith(`xlSigned),
    .b_bin_pt(13),
    .b_width(14),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(15),
    .core_name0("fpga_kf_3dof_plus_c_addsub_v12_0_i3"),
    .extra_registers(1),
    .full_s_arith(2),
    .full_s_width(15),
    .latency(2),
    .overflow(2),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(25),
    .s_width(30)
  )
  add_offset_ch2 (
    .clr(1'b0),
    .en(1'b1),
    .a(ofst_mon_in_reg_q_net),
    .b(register6_q_net_x8),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .s(add_offset_ch2_s_net)
  );
  sysgen_addsub_77d2d62e85 fb_integral (
    .clr(1'b0),
    .a(delay1_q_net),
    .b(mult_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(fb_integral_s_net)
  );
  fpga_kf_3dof_plus_xlregister #(
    .d_width(14),
    .init_value(14'b00000000000000)
  )
  ofst_mon_in_reg (
    .en(1'b1),
    .rst(1'b0),
    .d(z_in_net),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .q(ofst_mon_in_reg_q_net)
  );
  sysgen_mux_de59aa250a pot_sw_mux (
    .clr(1'b0),
    .sel(register5_q_net_x8),
    .d0(register_q_net),
    .d1(inverter_op_net),
    .d2(register_q_net_x1),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .y(pot_sw_mux_y_net)
  );
  fpga_kf_3dof_plus_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(25),
    .din_width(30),
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
    .din(add_offset_ch1_s_net),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .dout(sfix16_13_cast_dout_net)
  );
  fpga_kf_3dof_plus_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(25),
    .din_width(30),
    .dout_arith(2),
    .dout_bin_pt(13),
    .dout_width(16),
    .latency(1),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  sfix16_13_cast1 (
    .clr(1'b0),
    .en(1'b1),
    .din(add_offset_ch2_s_net),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .dout(sfix16_13_cast1_dout_net)
  );
  fpga_kf_3dof_plus_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(25),
    .din_width(30),
    .dout_arith(2),
    .dout_bin_pt(13),
    .dout_width(16),
    .latency(1),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  sfix16_cast1 (
    .clr(1'b0),
    .en(1'b1),
    .din(up_sample_q_net),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .dout(sfix16_cast1_dout_net)
  );
  fpga_kf_3dof_plus_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(25),
    .din_width(30),
    .dout_arith(2),
    .dout_bin_pt(13),
    .dout_width(16),
    .latency(1),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  sfix16_cast10 (
    .clr(1'b0),
    .en(1'b1),
    .din(mcode_data_out_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(sfix16_cast10_dout_net)
  );
  fpga_kf_3dof_plus_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(25),
    .din_width(30),
    .dout_arith(2),
    .dout_bin_pt(13),
    .dout_width(16),
    .latency(1),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  sfix16_cast11 (
    .clr(1'b0),
    .en(1'b1),
    .din(up_sample4_q_net),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .dout(sfix16_cast11_dout_net)
  );
  fpga_kf_3dof_plus_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(25),
    .din_width(30),
    .dout_arith(2),
    .dout_bin_pt(13),
    .dout_width(16),
    .latency(1),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  sfix16_cast12 (
    .clr(1'b0),
    .en(1'b1),
    .din(up_sample5_q_net),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .dout(sfix16_cast12_dout_net)
  );
  fpga_kf_3dof_plus_xlconvert #(
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
  sfix16_cast13 (
    .clr(1'b0),
    .en(1'b1),
    .din(up_sample6_q_net),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .dout(sfix16_cast13_dout_net)
  );
  fpga_kf_3dof_plus_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(25),
    .din_width(30),
    .dout_arith(2),
    .dout_bin_pt(13),
    .dout_width(16),
    .latency(1),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  sfix16_cast14 (
    .clr(1'b0),
    .en(1'b1),
    .din(add_offset_ch2_s_net),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .dout(sfix16_cast14_dout_net)
  );
  fpga_kf_3dof_plus_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(25),
    .din_width(30),
    .dout_arith(2),
    .dout_bin_pt(13),
    .dout_width(16),
    .latency(1),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  sfix16_cast2 (
    .clr(1'b0),
    .en(1'b1),
    .din(up_sample1_q_net),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .dout(sfix16_cast2_dout_net)
  );
  fpga_kf_3dof_plus_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(25),
    .din_width(30),
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
    .din(up_sample2_q_net),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .dout(sfix16_cast3_dout_net)
  );
  fpga_kf_3dof_plus_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(25),
    .din_width(30),
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
    .clk(src_clk_net),
    .ce(src_ce_net),
    .dout(sfix16_cast4_dout_net)
  );
  fpga_kf_3dof_plus_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(25),
    .din_width(30),
    .dout_arith(2),
    .dout_bin_pt(13),
    .dout_width(16),
    .latency(1),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  sfix16_cast5 (
    .clr(1'b0),
    .en(1'b1),
    .din(up_sample3_q_net),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .dout(sfix16_cast5_dout_net)
  );
  fpga_kf_3dof_plus_xlconvert #(
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
    .din(upsample0_q_net_x0),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .dout(sfix16_cast6_dout_net)
  );
  fpga_kf_3dof_plus_xlconvert #(
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
  sfix16_cast7 (
    .clr(1'b0),
    .en(1'b1),
    .din(upsample1_q_net_x0),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .dout(sfix16_cast7_dout_net)
  );
  fpga_kf_3dof_plus_xlconvert #(
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
  sfix16_cast8 (
    .clr(1'b0),
    .en(1'b1),
    .din(register11_q_net_x6),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .dout(sfix16_cast8_dout_net)
  );
  fpga_kf_3dof_plus_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(25),
    .din_width(30),
    .dout_arith(2),
    .dout_bin_pt(13),
    .dout_width(16),
    .latency(1),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  sfix16_cast9 (
    .clr(1'b0),
    .en(1'b1),
    .din(add_offset_ch2_s_net),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .dout(sfix16_cast9_dout_net)
  );
  fpga_kf_3dof_plus_xlregister #(
    .d_width(14),
    .init_value(14'b00000000000000)
  )
  x_in_reg (
    .en(1'b1),
    .rst(1'b0),
    .d(x_in_net),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .q(x_in_reg_q_net)
  );
  fpga_kf_3dof_plus_xlregister #(
    .d_width(14),
    .init_value(14'b00000000000000)
  )
  dac_1_bias_reg (
    .en(1'b1),
    .rst(1'b0),
    .d(register22_q_net_x1),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .q(dac_1_bias_reg_q_net)
  );
  fpga_kf_3dof_plus_xlregister #(
    .d_width(14),
    .init_value(14'b00000000000000)
  )
  dac_2_bias_reg (
    .en(1'b1),
    .rst(1'b0),
    .d(register23_q_net_x1),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .q(dac_2_bias_reg_q_net)
  );
  sysgen_addsub_005d3b856c add_dac_2_bias (
    .clr(1'b0),
    .a(upsample1_q_net_x0),
    .b(dac_2_bias_reg_q_net),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .s(add_dac_2_bias_s_net)
  );
  sysgen_addsub_005d3b856c add_dac_1_bias (
    .clr(1'b0),
    .a(upsample0_q_net_x0),
    .b(dac_1_bias_reg_q_net),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .s(add_dac_1_bias_s_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/AXI_clock_domain_wrapper/Scalar to Vector
module fpga_kf_3dof_plus_scalar_to_vector (
  input [1225-1:0] i,
  output [25-1:0] o_1,
  output [25-1:0] o_2,
  output [25-1:0] o_3,
  output [25-1:0] o_4,
  output [25-1:0] o_5,
  output [25-1:0] o_6,
  output [25-1:0] o_7,
  output [25-1:0] o_8,
  output [25-1:0] o_9,
  output [25-1:0] o_10,
  output [25-1:0] o_11,
  output [25-1:0] o_12,
  output [25-1:0] o_13,
  output [25-1:0] o_14,
  output [25-1:0] o_15,
  output [25-1:0] o_16,
  output [25-1:0] o_17,
  output [25-1:0] o_18,
  output [25-1:0] o_19,
  output [25-1:0] o_20,
  output [25-1:0] o_21,
  output [25-1:0] o_22,
  output [25-1:0] o_23,
  output [25-1:0] o_24,
  output [25-1:0] o_25,
  output [25-1:0] o_26,
  output [25-1:0] o_27,
  output [25-1:0] o_28,
  output [25-1:0] o_29,
  output [25-1:0] o_30,
  output [25-1:0] o_31,
  output [25-1:0] o_32,
  output [25-1:0] o_33,
  output [25-1:0] o_34,
  output [25-1:0] o_35,
  output [25-1:0] o_36,
  output [25-1:0] o_37,
  output [25-1:0] o_38,
  output [25-1:0] o_39,
  output [25-1:0] o_40,
  output [25-1:0] o_41,
  output [25-1:0] o_42,
  output [25-1:0] o_43,
  output [25-1:0] o_44,
  output [25-1:0] o_45,
  output [25-1:0] o_46,
  output [25-1:0] o_47,
  output [25-1:0] o_48,
  output [25-1:0] o_49
);
  wire [25-1:0] slice0_y_net;
  wire [25-1:0] slice10_y_net;
  wire [25-1:0] slice25_y_net;
  wire [25-1:0] slice18_y_net;
  wire [25-1:0] slice11_y_net;
  wire [25-1:0] slice32_y_net;
  wire [25-1:0] slice2_y_net;
  wire [25-1:0] slice14_y_net;
  wire [25-1:0] slice8_y_net;
  wire [25-1:0] slice16_y_net;
  wire [25-1:0] slice21_y_net;
  wire [25-1:0] slice1_y_net;
  wire [25-1:0] slice24_y_net;
  wire [25-1:0] slice26_y_net;
  wire [25-1:0] slice15_y_net;
  wire [25-1:0] slice13_y_net;
  wire [25-1:0] slice6_y_net;
  wire [25-1:0] slice17_y_net;
  wire [25-1:0] slice27_y_net;
  wire [25-1:0] slice31_y_net;
  wire [25-1:0] slice3_y_net;
  wire [25-1:0] slice5_y_net;
  wire [25-1:0] slice22_y_net;
  wire [25-1:0] slice7_y_net;
  wire [25-1:0] slice30_y_net;
  wire [25-1:0] slice12_y_net;
  wire [25-1:0] slice9_y_net;
  wire [25-1:0] slice19_y_net;
  wire [25-1:0] slice20_y_net;
  wire [25-1:0] slice28_y_net;
  wire [25-1:0] slice23_y_net;
  wire [25-1:0] slice4_y_net;
  wire [25-1:0] slice29_y_net;
  wire [25-1:0] slice38_y_net;
  wire [25-1:0] slice42_y_net;
  wire [1225-1:0] f_mat_store_mat_out_net;
  wire [25-1:0] slice48_y_net;
  wire [25-1:0] slice44_y_net;
  wire [25-1:0] slice43_y_net;
  wire [25-1:0] slice47_y_net;
  wire [25-1:0] slice37_y_net;
  wire [25-1:0] slice36_y_net;
  wire [25-1:0] slice40_y_net;
  wire [25-1:0] slice45_y_net;
  wire [25-1:0] slice46_y_net;
  wire [25-1:0] slice35_y_net;
  wire [25-1:0] slice34_y_net;
  wire [25-1:0] slice33_y_net;
  wire [25-1:0] slice41_y_net;
  wire [25-1:0] slice39_y_net;
  assign o_1 = slice0_y_net;
  assign o_2 = slice1_y_net;
  assign o_3 = slice2_y_net;
  assign o_4 = slice3_y_net;
  assign o_5 = slice4_y_net;
  assign o_6 = slice5_y_net;
  assign o_7 = slice6_y_net;
  assign o_8 = slice7_y_net;
  assign o_9 = slice8_y_net;
  assign o_10 = slice9_y_net;
  assign o_11 = slice10_y_net;
  assign o_12 = slice11_y_net;
  assign o_13 = slice12_y_net;
  assign o_14 = slice13_y_net;
  assign o_15 = slice14_y_net;
  assign o_16 = slice15_y_net;
  assign o_17 = slice16_y_net;
  assign o_18 = slice17_y_net;
  assign o_19 = slice18_y_net;
  assign o_20 = slice19_y_net;
  assign o_21 = slice20_y_net;
  assign o_22 = slice21_y_net;
  assign o_23 = slice22_y_net;
  assign o_24 = slice23_y_net;
  assign o_25 = slice24_y_net;
  assign o_26 = slice25_y_net;
  assign o_27 = slice26_y_net;
  assign o_28 = slice27_y_net;
  assign o_29 = slice28_y_net;
  assign o_30 = slice29_y_net;
  assign o_31 = slice30_y_net;
  assign o_32 = slice31_y_net;
  assign o_33 = slice32_y_net;
  assign o_34 = slice33_y_net;
  assign o_35 = slice34_y_net;
  assign o_36 = slice35_y_net;
  assign o_37 = slice36_y_net;
  assign o_38 = slice37_y_net;
  assign o_39 = slice38_y_net;
  assign o_40 = slice39_y_net;
  assign o_41 = slice40_y_net;
  assign o_42 = slice41_y_net;
  assign o_43 = slice42_y_net;
  assign o_44 = slice43_y_net;
  assign o_45 = slice44_y_net;
  assign o_46 = slice45_y_net;
  assign o_47 = slice46_y_net;
  assign o_48 = slice47_y_net;
  assign o_49 = slice48_y_net;
  assign f_mat_store_mat_out_net = i;
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(0),
    .new_msb(24),
    .x_width(1225),
    .y_width(25)
  )
  slice0 (
    .x(f_mat_store_mat_out_net),
    .y(slice0_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(25),
    .new_msb(49),
    .x_width(1225),
    .y_width(25)
  )
  slice1 (
    .x(f_mat_store_mat_out_net),
    .y(slice1_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(50),
    .new_msb(74),
    .x_width(1225),
    .y_width(25)
  )
  slice2 (
    .x(f_mat_store_mat_out_net),
    .y(slice2_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(75),
    .new_msb(99),
    .x_width(1225),
    .y_width(25)
  )
  slice3 (
    .x(f_mat_store_mat_out_net),
    .y(slice3_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(100),
    .new_msb(124),
    .x_width(1225),
    .y_width(25)
  )
  slice4 (
    .x(f_mat_store_mat_out_net),
    .y(slice4_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(125),
    .new_msb(149),
    .x_width(1225),
    .y_width(25)
  )
  slice5 (
    .x(f_mat_store_mat_out_net),
    .y(slice5_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(150),
    .new_msb(174),
    .x_width(1225),
    .y_width(25)
  )
  slice6 (
    .x(f_mat_store_mat_out_net),
    .y(slice6_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(175),
    .new_msb(199),
    .x_width(1225),
    .y_width(25)
  )
  slice7 (
    .x(f_mat_store_mat_out_net),
    .y(slice7_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(200),
    .new_msb(224),
    .x_width(1225),
    .y_width(25)
  )
  slice8 (
    .x(f_mat_store_mat_out_net),
    .y(slice8_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(225),
    .new_msb(249),
    .x_width(1225),
    .y_width(25)
  )
  slice9 (
    .x(f_mat_store_mat_out_net),
    .y(slice9_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(250),
    .new_msb(274),
    .x_width(1225),
    .y_width(25)
  )
  slice10 (
    .x(f_mat_store_mat_out_net),
    .y(slice10_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(275),
    .new_msb(299),
    .x_width(1225),
    .y_width(25)
  )
  slice11 (
    .x(f_mat_store_mat_out_net),
    .y(slice11_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(300),
    .new_msb(324),
    .x_width(1225),
    .y_width(25)
  )
  slice12 (
    .x(f_mat_store_mat_out_net),
    .y(slice12_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(325),
    .new_msb(349),
    .x_width(1225),
    .y_width(25)
  )
  slice13 (
    .x(f_mat_store_mat_out_net),
    .y(slice13_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(350),
    .new_msb(374),
    .x_width(1225),
    .y_width(25)
  )
  slice14 (
    .x(f_mat_store_mat_out_net),
    .y(slice14_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(375),
    .new_msb(399),
    .x_width(1225),
    .y_width(25)
  )
  slice15 (
    .x(f_mat_store_mat_out_net),
    .y(slice15_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(400),
    .new_msb(424),
    .x_width(1225),
    .y_width(25)
  )
  slice16 (
    .x(f_mat_store_mat_out_net),
    .y(slice16_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(425),
    .new_msb(449),
    .x_width(1225),
    .y_width(25)
  )
  slice17 (
    .x(f_mat_store_mat_out_net),
    .y(slice17_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(450),
    .new_msb(474),
    .x_width(1225),
    .y_width(25)
  )
  slice18 (
    .x(f_mat_store_mat_out_net),
    .y(slice18_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(475),
    .new_msb(499),
    .x_width(1225),
    .y_width(25)
  )
  slice19 (
    .x(f_mat_store_mat_out_net),
    .y(slice19_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(500),
    .new_msb(524),
    .x_width(1225),
    .y_width(25)
  )
  slice20 (
    .x(f_mat_store_mat_out_net),
    .y(slice20_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(525),
    .new_msb(549),
    .x_width(1225),
    .y_width(25)
  )
  slice21 (
    .x(f_mat_store_mat_out_net),
    .y(slice21_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(550),
    .new_msb(574),
    .x_width(1225),
    .y_width(25)
  )
  slice22 (
    .x(f_mat_store_mat_out_net),
    .y(slice22_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(575),
    .new_msb(599),
    .x_width(1225),
    .y_width(25)
  )
  slice23 (
    .x(f_mat_store_mat_out_net),
    .y(slice23_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(600),
    .new_msb(624),
    .x_width(1225),
    .y_width(25)
  )
  slice24 (
    .x(f_mat_store_mat_out_net),
    .y(slice24_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(625),
    .new_msb(649),
    .x_width(1225),
    .y_width(25)
  )
  slice25 (
    .x(f_mat_store_mat_out_net),
    .y(slice25_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(650),
    .new_msb(674),
    .x_width(1225),
    .y_width(25)
  )
  slice26 (
    .x(f_mat_store_mat_out_net),
    .y(slice26_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(675),
    .new_msb(699),
    .x_width(1225),
    .y_width(25)
  )
  slice27 (
    .x(f_mat_store_mat_out_net),
    .y(slice27_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(700),
    .new_msb(724),
    .x_width(1225),
    .y_width(25)
  )
  slice28 (
    .x(f_mat_store_mat_out_net),
    .y(slice28_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(725),
    .new_msb(749),
    .x_width(1225),
    .y_width(25)
  )
  slice29 (
    .x(f_mat_store_mat_out_net),
    .y(slice29_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(750),
    .new_msb(774),
    .x_width(1225),
    .y_width(25)
  )
  slice30 (
    .x(f_mat_store_mat_out_net),
    .y(slice30_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(775),
    .new_msb(799),
    .x_width(1225),
    .y_width(25)
  )
  slice31 (
    .x(f_mat_store_mat_out_net),
    .y(slice31_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(800),
    .new_msb(824),
    .x_width(1225),
    .y_width(25)
  )
  slice32 (
    .x(f_mat_store_mat_out_net),
    .y(slice32_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(825),
    .new_msb(849),
    .x_width(1225),
    .y_width(25)
  )
  slice33 (
    .x(f_mat_store_mat_out_net),
    .y(slice33_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(850),
    .new_msb(874),
    .x_width(1225),
    .y_width(25)
  )
  slice34 (
    .x(f_mat_store_mat_out_net),
    .y(slice34_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(875),
    .new_msb(899),
    .x_width(1225),
    .y_width(25)
  )
  slice35 (
    .x(f_mat_store_mat_out_net),
    .y(slice35_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(900),
    .new_msb(924),
    .x_width(1225),
    .y_width(25)
  )
  slice36 (
    .x(f_mat_store_mat_out_net),
    .y(slice36_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(925),
    .new_msb(949),
    .x_width(1225),
    .y_width(25)
  )
  slice37 (
    .x(f_mat_store_mat_out_net),
    .y(slice37_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(950),
    .new_msb(974),
    .x_width(1225),
    .y_width(25)
  )
  slice38 (
    .x(f_mat_store_mat_out_net),
    .y(slice38_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(975),
    .new_msb(999),
    .x_width(1225),
    .y_width(25)
  )
  slice39 (
    .x(f_mat_store_mat_out_net),
    .y(slice39_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(1000),
    .new_msb(1024),
    .x_width(1225),
    .y_width(25)
  )
  slice40 (
    .x(f_mat_store_mat_out_net),
    .y(slice40_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(1025),
    .new_msb(1049),
    .x_width(1225),
    .y_width(25)
  )
  slice41 (
    .x(f_mat_store_mat_out_net),
    .y(slice41_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(1050),
    .new_msb(1074),
    .x_width(1225),
    .y_width(25)
  )
  slice42 (
    .x(f_mat_store_mat_out_net),
    .y(slice42_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(1075),
    .new_msb(1099),
    .x_width(1225),
    .y_width(25)
  )
  slice43 (
    .x(f_mat_store_mat_out_net),
    .y(slice43_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(1100),
    .new_msb(1124),
    .x_width(1225),
    .y_width(25)
  )
  slice44 (
    .x(f_mat_store_mat_out_net),
    .y(slice44_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(1125),
    .new_msb(1149),
    .x_width(1225),
    .y_width(25)
  )
  slice45 (
    .x(f_mat_store_mat_out_net),
    .y(slice45_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(1150),
    .new_msb(1174),
    .x_width(1225),
    .y_width(25)
  )
  slice46 (
    .x(f_mat_store_mat_out_net),
    .y(slice46_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(1175),
    .new_msb(1199),
    .x_width(1225),
    .y_width(25)
  )
  slice47 (
    .x(f_mat_store_mat_out_net),
    .y(slice47_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(1200),
    .new_msb(1224),
    .x_width(1225),
    .y_width(25)
  )
  slice48 (
    .x(f_mat_store_mat_out_net),
    .y(slice48_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/AXI_clock_domain_wrapper/Scalar to Vector1
module fpga_kf_3dof_plus_scalar_to_vector1 (
  input [1225-1:0] i,
  output [25-1:0] o_1,
  output [25-1:0] o_2,
  output [25-1:0] o_3,
  output [25-1:0] o_4,
  output [25-1:0] o_5,
  output [25-1:0] o_6,
  output [25-1:0] o_7,
  output [25-1:0] o_8,
  output [25-1:0] o_9,
  output [25-1:0] o_10,
  output [25-1:0] o_11,
  output [25-1:0] o_12,
  output [25-1:0] o_13,
  output [25-1:0] o_14,
  output [25-1:0] o_15,
  output [25-1:0] o_16,
  output [25-1:0] o_17,
  output [25-1:0] o_18,
  output [25-1:0] o_19,
  output [25-1:0] o_20,
  output [25-1:0] o_21,
  output [25-1:0] o_22,
  output [25-1:0] o_23,
  output [25-1:0] o_24,
  output [25-1:0] o_25,
  output [25-1:0] o_26,
  output [25-1:0] o_27,
  output [25-1:0] o_28,
  output [25-1:0] o_29,
  output [25-1:0] o_30,
  output [25-1:0] o_31,
  output [25-1:0] o_32,
  output [25-1:0] o_33,
  output [25-1:0] o_34,
  output [25-1:0] o_35,
  output [25-1:0] o_36,
  output [25-1:0] o_37,
  output [25-1:0] o_38,
  output [25-1:0] o_39,
  output [25-1:0] o_40,
  output [25-1:0] o_41,
  output [25-1:0] o_42,
  output [25-1:0] o_43,
  output [25-1:0] o_44,
  output [25-1:0] o_45,
  output [25-1:0] o_46,
  output [25-1:0] o_47,
  output [25-1:0] o_48,
  output [25-1:0] o_49
);
  wire [25-1:0] slice14_y_net;
  wire [25-1:0] slice9_y_net;
  wire [25-1:0] slice5_y_net;
  wire [25-1:0] slice0_y_net;
  wire [25-1:0] slice1_y_net;
  wire [25-1:0] slice11_y_net;
  wire [25-1:0] slice18_y_net;
  wire [25-1:0] slice19_y_net;
  wire [25-1:0] slice20_y_net;
  wire [25-1:0] slice8_y_net;
  wire [25-1:0] slice22_y_net;
  wire [25-1:0] slice13_y_net;
  wire [25-1:0] slice6_y_net;
  wire [25-1:0] slice25_y_net;
  wire [25-1:0] slice3_y_net;
  wire [25-1:0] slice4_y_net;
  wire [25-1:0] slice17_y_net;
  wire [25-1:0] slice21_y_net;
  wire [25-1:0] slice27_y_net;
  wire [25-1:0] slice28_y_net;
  wire [25-1:0] slice23_y_net;
  wire [25-1:0] slice24_y_net;
  wire [25-1:0] slice26_y_net;
  wire [25-1:0] slice29_y_net;
  wire [25-1:0] slice10_y_net;
  wire [25-1:0] slice15_y_net;
  wire [25-1:0] slice2_y_net;
  wire [25-1:0] slice7_y_net;
  wire [25-1:0] slice12_y_net;
  wire [25-1:0] slice16_y_net;
  wire [25-1:0] slice44_y_net;
  wire [25-1:0] slice33_y_net;
  wire [25-1:0] slice36_y_net;
  wire [1225-1:0] f_ip_mat_store_mat_out_net;
  wire [25-1:0] slice40_y_net;
  wire [25-1:0] slice34_y_net;
  wire [25-1:0] slice43_y_net;
  wire [25-1:0] slice37_y_net;
  wire [25-1:0] slice41_y_net;
  wire [25-1:0] slice48_y_net;
  wire [25-1:0] slice46_y_net;
  wire [25-1:0] slice30_y_net;
  wire [25-1:0] slice35_y_net;
  wire [25-1:0] slice32_y_net;
  wire [25-1:0] slice45_y_net;
  wire [25-1:0] slice31_y_net;
  wire [25-1:0] slice38_y_net;
  wire [25-1:0] slice42_y_net;
  wire [25-1:0] slice39_y_net;
  wire [25-1:0] slice47_y_net;
  assign o_1 = slice0_y_net;
  assign o_2 = slice1_y_net;
  assign o_3 = slice2_y_net;
  assign o_4 = slice3_y_net;
  assign o_5 = slice4_y_net;
  assign o_6 = slice5_y_net;
  assign o_7 = slice6_y_net;
  assign o_8 = slice7_y_net;
  assign o_9 = slice8_y_net;
  assign o_10 = slice9_y_net;
  assign o_11 = slice10_y_net;
  assign o_12 = slice11_y_net;
  assign o_13 = slice12_y_net;
  assign o_14 = slice13_y_net;
  assign o_15 = slice14_y_net;
  assign o_16 = slice15_y_net;
  assign o_17 = slice16_y_net;
  assign o_18 = slice17_y_net;
  assign o_19 = slice18_y_net;
  assign o_20 = slice19_y_net;
  assign o_21 = slice20_y_net;
  assign o_22 = slice21_y_net;
  assign o_23 = slice22_y_net;
  assign o_24 = slice23_y_net;
  assign o_25 = slice24_y_net;
  assign o_26 = slice25_y_net;
  assign o_27 = slice26_y_net;
  assign o_28 = slice27_y_net;
  assign o_29 = slice28_y_net;
  assign o_30 = slice29_y_net;
  assign o_31 = slice30_y_net;
  assign o_32 = slice31_y_net;
  assign o_33 = slice32_y_net;
  assign o_34 = slice33_y_net;
  assign o_35 = slice34_y_net;
  assign o_36 = slice35_y_net;
  assign o_37 = slice36_y_net;
  assign o_38 = slice37_y_net;
  assign o_39 = slice38_y_net;
  assign o_40 = slice39_y_net;
  assign o_41 = slice40_y_net;
  assign o_42 = slice41_y_net;
  assign o_43 = slice42_y_net;
  assign o_44 = slice43_y_net;
  assign o_45 = slice44_y_net;
  assign o_46 = slice45_y_net;
  assign o_47 = slice46_y_net;
  assign o_48 = slice47_y_net;
  assign o_49 = slice48_y_net;
  assign f_ip_mat_store_mat_out_net = i;
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(0),
    .new_msb(24),
    .x_width(1225),
    .y_width(25)
  )
  slice0 (
    .x(f_ip_mat_store_mat_out_net),
    .y(slice0_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(25),
    .new_msb(49),
    .x_width(1225),
    .y_width(25)
  )
  slice1 (
    .x(f_ip_mat_store_mat_out_net),
    .y(slice1_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(50),
    .new_msb(74),
    .x_width(1225),
    .y_width(25)
  )
  slice2 (
    .x(f_ip_mat_store_mat_out_net),
    .y(slice2_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(75),
    .new_msb(99),
    .x_width(1225),
    .y_width(25)
  )
  slice3 (
    .x(f_ip_mat_store_mat_out_net),
    .y(slice3_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(100),
    .new_msb(124),
    .x_width(1225),
    .y_width(25)
  )
  slice4 (
    .x(f_ip_mat_store_mat_out_net),
    .y(slice4_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(125),
    .new_msb(149),
    .x_width(1225),
    .y_width(25)
  )
  slice5 (
    .x(f_ip_mat_store_mat_out_net),
    .y(slice5_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(150),
    .new_msb(174),
    .x_width(1225),
    .y_width(25)
  )
  slice6 (
    .x(f_ip_mat_store_mat_out_net),
    .y(slice6_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(175),
    .new_msb(199),
    .x_width(1225),
    .y_width(25)
  )
  slice7 (
    .x(f_ip_mat_store_mat_out_net),
    .y(slice7_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(200),
    .new_msb(224),
    .x_width(1225),
    .y_width(25)
  )
  slice8 (
    .x(f_ip_mat_store_mat_out_net),
    .y(slice8_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(225),
    .new_msb(249),
    .x_width(1225),
    .y_width(25)
  )
  slice9 (
    .x(f_ip_mat_store_mat_out_net),
    .y(slice9_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(250),
    .new_msb(274),
    .x_width(1225),
    .y_width(25)
  )
  slice10 (
    .x(f_ip_mat_store_mat_out_net),
    .y(slice10_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(275),
    .new_msb(299),
    .x_width(1225),
    .y_width(25)
  )
  slice11 (
    .x(f_ip_mat_store_mat_out_net),
    .y(slice11_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(300),
    .new_msb(324),
    .x_width(1225),
    .y_width(25)
  )
  slice12 (
    .x(f_ip_mat_store_mat_out_net),
    .y(slice12_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(325),
    .new_msb(349),
    .x_width(1225),
    .y_width(25)
  )
  slice13 (
    .x(f_ip_mat_store_mat_out_net),
    .y(slice13_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(350),
    .new_msb(374),
    .x_width(1225),
    .y_width(25)
  )
  slice14 (
    .x(f_ip_mat_store_mat_out_net),
    .y(slice14_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(375),
    .new_msb(399),
    .x_width(1225),
    .y_width(25)
  )
  slice15 (
    .x(f_ip_mat_store_mat_out_net),
    .y(slice15_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(400),
    .new_msb(424),
    .x_width(1225),
    .y_width(25)
  )
  slice16 (
    .x(f_ip_mat_store_mat_out_net),
    .y(slice16_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(425),
    .new_msb(449),
    .x_width(1225),
    .y_width(25)
  )
  slice17 (
    .x(f_ip_mat_store_mat_out_net),
    .y(slice17_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(450),
    .new_msb(474),
    .x_width(1225),
    .y_width(25)
  )
  slice18 (
    .x(f_ip_mat_store_mat_out_net),
    .y(slice18_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(475),
    .new_msb(499),
    .x_width(1225),
    .y_width(25)
  )
  slice19 (
    .x(f_ip_mat_store_mat_out_net),
    .y(slice19_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(500),
    .new_msb(524),
    .x_width(1225),
    .y_width(25)
  )
  slice20 (
    .x(f_ip_mat_store_mat_out_net),
    .y(slice20_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(525),
    .new_msb(549),
    .x_width(1225),
    .y_width(25)
  )
  slice21 (
    .x(f_ip_mat_store_mat_out_net),
    .y(slice21_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(550),
    .new_msb(574),
    .x_width(1225),
    .y_width(25)
  )
  slice22 (
    .x(f_ip_mat_store_mat_out_net),
    .y(slice22_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(575),
    .new_msb(599),
    .x_width(1225),
    .y_width(25)
  )
  slice23 (
    .x(f_ip_mat_store_mat_out_net),
    .y(slice23_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(600),
    .new_msb(624),
    .x_width(1225),
    .y_width(25)
  )
  slice24 (
    .x(f_ip_mat_store_mat_out_net),
    .y(slice24_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(625),
    .new_msb(649),
    .x_width(1225),
    .y_width(25)
  )
  slice25 (
    .x(f_ip_mat_store_mat_out_net),
    .y(slice25_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(650),
    .new_msb(674),
    .x_width(1225),
    .y_width(25)
  )
  slice26 (
    .x(f_ip_mat_store_mat_out_net),
    .y(slice26_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(675),
    .new_msb(699),
    .x_width(1225),
    .y_width(25)
  )
  slice27 (
    .x(f_ip_mat_store_mat_out_net),
    .y(slice27_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(700),
    .new_msb(724),
    .x_width(1225),
    .y_width(25)
  )
  slice28 (
    .x(f_ip_mat_store_mat_out_net),
    .y(slice28_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(725),
    .new_msb(749),
    .x_width(1225),
    .y_width(25)
  )
  slice29 (
    .x(f_ip_mat_store_mat_out_net),
    .y(slice29_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(750),
    .new_msb(774),
    .x_width(1225),
    .y_width(25)
  )
  slice30 (
    .x(f_ip_mat_store_mat_out_net),
    .y(slice30_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(775),
    .new_msb(799),
    .x_width(1225),
    .y_width(25)
  )
  slice31 (
    .x(f_ip_mat_store_mat_out_net),
    .y(slice31_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(800),
    .new_msb(824),
    .x_width(1225),
    .y_width(25)
  )
  slice32 (
    .x(f_ip_mat_store_mat_out_net),
    .y(slice32_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(825),
    .new_msb(849),
    .x_width(1225),
    .y_width(25)
  )
  slice33 (
    .x(f_ip_mat_store_mat_out_net),
    .y(slice33_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(850),
    .new_msb(874),
    .x_width(1225),
    .y_width(25)
  )
  slice34 (
    .x(f_ip_mat_store_mat_out_net),
    .y(slice34_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(875),
    .new_msb(899),
    .x_width(1225),
    .y_width(25)
  )
  slice35 (
    .x(f_ip_mat_store_mat_out_net),
    .y(slice35_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(900),
    .new_msb(924),
    .x_width(1225),
    .y_width(25)
  )
  slice36 (
    .x(f_ip_mat_store_mat_out_net),
    .y(slice36_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(925),
    .new_msb(949),
    .x_width(1225),
    .y_width(25)
  )
  slice37 (
    .x(f_ip_mat_store_mat_out_net),
    .y(slice37_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(950),
    .new_msb(974),
    .x_width(1225),
    .y_width(25)
  )
  slice38 (
    .x(f_ip_mat_store_mat_out_net),
    .y(slice38_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(975),
    .new_msb(999),
    .x_width(1225),
    .y_width(25)
  )
  slice39 (
    .x(f_ip_mat_store_mat_out_net),
    .y(slice39_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(1000),
    .new_msb(1024),
    .x_width(1225),
    .y_width(25)
  )
  slice40 (
    .x(f_ip_mat_store_mat_out_net),
    .y(slice40_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(1025),
    .new_msb(1049),
    .x_width(1225),
    .y_width(25)
  )
  slice41 (
    .x(f_ip_mat_store_mat_out_net),
    .y(slice41_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(1050),
    .new_msb(1074),
    .x_width(1225),
    .y_width(25)
  )
  slice42 (
    .x(f_ip_mat_store_mat_out_net),
    .y(slice42_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(1075),
    .new_msb(1099),
    .x_width(1225),
    .y_width(25)
  )
  slice43 (
    .x(f_ip_mat_store_mat_out_net),
    .y(slice43_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(1100),
    .new_msb(1124),
    .x_width(1225),
    .y_width(25)
  )
  slice44 (
    .x(f_ip_mat_store_mat_out_net),
    .y(slice44_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(1125),
    .new_msb(1149),
    .x_width(1225),
    .y_width(25)
  )
  slice45 (
    .x(f_ip_mat_store_mat_out_net),
    .y(slice45_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(1150),
    .new_msb(1174),
    .x_width(1225),
    .y_width(25)
  )
  slice46 (
    .x(f_ip_mat_store_mat_out_net),
    .y(slice46_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(1175),
    .new_msb(1199),
    .x_width(1225),
    .y_width(25)
  )
  slice47 (
    .x(f_ip_mat_store_mat_out_net),
    .y(slice47_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(1200),
    .new_msb(1224),
    .x_width(1225),
    .y_width(25)
  )
  slice48 (
    .x(f_ip_mat_store_mat_out_net),
    .y(slice48_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/AXI_clock_domain_wrapper/Scalar to Vector2
module fpga_kf_3dof_plus_scalar_to_vector2 (
  input [350-1:0] i,
  output [25-1:0] o_1,
  output [25-1:0] o_2,
  output [25-1:0] o_3,
  output [25-1:0] o_4,
  output [25-1:0] o_5,
  output [25-1:0] o_6,
  output [25-1:0] o_7,
  output [25-1:0] o_8,
  output [25-1:0] o_9,
  output [25-1:0] o_10,
  output [25-1:0] o_11,
  output [25-1:0] o_12,
  output [25-1:0] o_13,
  output [25-1:0] o_14
);
  wire [350-1:0] l_mat_store_mat_out_net;
  wire [25-1:0] slice10_y_net;
  wire [25-1:0] slice13_y_net;
  wire [25-1:0] slice7_y_net;
  wire [25-1:0] slice1_y_net;
  wire [25-1:0] slice5_y_net;
  wire [25-1:0] slice11_y_net;
  wire [25-1:0] slice6_y_net;
  wire [25-1:0] slice8_y_net;
  wire [25-1:0] slice9_y_net;
  wire [25-1:0] slice2_y_net;
  wire [25-1:0] slice12_y_net;
  wire [25-1:0] slice3_y_net;
  wire [25-1:0] slice4_y_net;
  wire [25-1:0] slice0_y_net;
  assign o_1 = slice0_y_net;
  assign o_2 = slice1_y_net;
  assign o_3 = slice2_y_net;
  assign o_4 = slice3_y_net;
  assign o_5 = slice4_y_net;
  assign o_6 = slice5_y_net;
  assign o_7 = slice6_y_net;
  assign o_8 = slice7_y_net;
  assign o_9 = slice8_y_net;
  assign o_10 = slice9_y_net;
  assign o_11 = slice10_y_net;
  assign o_12 = slice11_y_net;
  assign o_13 = slice12_y_net;
  assign o_14 = slice13_y_net;
  assign l_mat_store_mat_out_net = i;
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(0),
    .new_msb(24),
    .x_width(350),
    .y_width(25)
  )
  slice0 (
    .x(l_mat_store_mat_out_net),
    .y(slice0_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(25),
    .new_msb(49),
    .x_width(350),
    .y_width(25)
  )
  slice1 (
    .x(l_mat_store_mat_out_net),
    .y(slice1_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(50),
    .new_msb(74),
    .x_width(350),
    .y_width(25)
  )
  slice2 (
    .x(l_mat_store_mat_out_net),
    .y(slice2_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(75),
    .new_msb(99),
    .x_width(350),
    .y_width(25)
  )
  slice3 (
    .x(l_mat_store_mat_out_net),
    .y(slice3_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(100),
    .new_msb(124),
    .x_width(350),
    .y_width(25)
  )
  slice4 (
    .x(l_mat_store_mat_out_net),
    .y(slice4_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(125),
    .new_msb(149),
    .x_width(350),
    .y_width(25)
  )
  slice5 (
    .x(l_mat_store_mat_out_net),
    .y(slice5_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(150),
    .new_msb(174),
    .x_width(350),
    .y_width(25)
  )
  slice6 (
    .x(l_mat_store_mat_out_net),
    .y(slice6_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(175),
    .new_msb(199),
    .x_width(350),
    .y_width(25)
  )
  slice7 (
    .x(l_mat_store_mat_out_net),
    .y(slice7_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(200),
    .new_msb(224),
    .x_width(350),
    .y_width(25)
  )
  slice8 (
    .x(l_mat_store_mat_out_net),
    .y(slice8_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(225),
    .new_msb(249),
    .x_width(350),
    .y_width(25)
  )
  slice9 (
    .x(l_mat_store_mat_out_net),
    .y(slice9_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(250),
    .new_msb(274),
    .x_width(350),
    .y_width(25)
  )
  slice10 (
    .x(l_mat_store_mat_out_net),
    .y(slice10_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(275),
    .new_msb(299),
    .x_width(350),
    .y_width(25)
  )
  slice11 (
    .x(l_mat_store_mat_out_net),
    .y(slice11_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(300),
    .new_msb(324),
    .x_width(350),
    .y_width(25)
  )
  slice12 (
    .x(l_mat_store_mat_out_net),
    .y(slice12_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(325),
    .new_msb(349),
    .x_width(350),
    .y_width(25)
  )
  slice13 (
    .x(l_mat_store_mat_out_net),
    .y(slice13_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/AXI_clock_domain_wrapper/Scalar to Vector3
module fpga_kf_3dof_plus_scalar_to_vector3 (
  input [350-1:0] i,
  output [25-1:0] o_1,
  output [25-1:0] o_2,
  output [25-1:0] o_3,
  output [25-1:0] o_4,
  output [25-1:0] o_5,
  output [25-1:0] o_6,
  output [25-1:0] o_7,
  output [25-1:0] o_8,
  output [25-1:0] o_9,
  output [25-1:0] o_10,
  output [25-1:0] o_11,
  output [25-1:0] o_12,
  output [25-1:0] o_13,
  output [25-1:0] o_14
);
  wire [25-1:0] slice8_y_net;
  wire [25-1:0] slice12_y_net;
  wire [25-1:0] slice13_y_net;
  wire [25-1:0] slice10_y_net;
  wire [25-1:0] slice4_y_net;
  wire [25-1:0] slice6_y_net;
  wire [25-1:0] slice1_y_net;
  wire [25-1:0] slice0_y_net;
  wire [25-1:0] slice7_y_net;
  wire [25-1:0] slice2_y_net;
  wire [25-1:0] slice11_y_net;
  wire [25-1:0] slice9_y_net;
  wire [25-1:0] slice3_y_net;
  wire [25-1:0] slice5_y_net;
  wire [350-1:0] k_mat_store_mat_out_net;
  assign o_1 = slice0_y_net;
  assign o_2 = slice1_y_net;
  assign o_3 = slice2_y_net;
  assign o_4 = slice3_y_net;
  assign o_5 = slice4_y_net;
  assign o_6 = slice5_y_net;
  assign o_7 = slice6_y_net;
  assign o_8 = slice7_y_net;
  assign o_9 = slice8_y_net;
  assign o_10 = slice9_y_net;
  assign o_11 = slice10_y_net;
  assign o_12 = slice11_y_net;
  assign o_13 = slice12_y_net;
  assign o_14 = slice13_y_net;
  assign k_mat_store_mat_out_net = i;
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(0),
    .new_msb(24),
    .x_width(350),
    .y_width(25)
  )
  slice0 (
    .x(k_mat_store_mat_out_net),
    .y(slice0_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(25),
    .new_msb(49),
    .x_width(350),
    .y_width(25)
  )
  slice1 (
    .x(k_mat_store_mat_out_net),
    .y(slice1_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(50),
    .new_msb(74),
    .x_width(350),
    .y_width(25)
  )
  slice2 (
    .x(k_mat_store_mat_out_net),
    .y(slice2_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(75),
    .new_msb(99),
    .x_width(350),
    .y_width(25)
  )
  slice3 (
    .x(k_mat_store_mat_out_net),
    .y(slice3_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(100),
    .new_msb(124),
    .x_width(350),
    .y_width(25)
  )
  slice4 (
    .x(k_mat_store_mat_out_net),
    .y(slice4_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(125),
    .new_msb(149),
    .x_width(350),
    .y_width(25)
  )
  slice5 (
    .x(k_mat_store_mat_out_net),
    .y(slice5_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(150),
    .new_msb(174),
    .x_width(350),
    .y_width(25)
  )
  slice6 (
    .x(k_mat_store_mat_out_net),
    .y(slice6_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(175),
    .new_msb(199),
    .x_width(350),
    .y_width(25)
  )
  slice7 (
    .x(k_mat_store_mat_out_net),
    .y(slice7_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(200),
    .new_msb(224),
    .x_width(350),
    .y_width(25)
  )
  slice8 (
    .x(k_mat_store_mat_out_net),
    .y(slice8_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(225),
    .new_msb(249),
    .x_width(350),
    .y_width(25)
  )
  slice9 (
    .x(k_mat_store_mat_out_net),
    .y(slice9_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(250),
    .new_msb(274),
    .x_width(350),
    .y_width(25)
  )
  slice10 (
    .x(k_mat_store_mat_out_net),
    .y(slice10_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(275),
    .new_msb(299),
    .x_width(350),
    .y_width(25)
  )
  slice11 (
    .x(k_mat_store_mat_out_net),
    .y(slice11_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(300),
    .new_msb(324),
    .x_width(350),
    .y_width(25)
  )
  slice12 (
    .x(k_mat_store_mat_out_net),
    .y(slice12_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(325),
    .new_msb(349),
    .x_width(350),
    .y_width(25)
  )
  slice13 (
    .x(k_mat_store_mat_out_net),
    .y(slice13_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/AXI_clock_domain_wrapper/Scalar to Vector4
module fpga_kf_3dof_plus_scalar_to_vector4 (
  input [350-1:0] i,
  output [25-1:0] o_1,
  output [25-1:0] o_2,
  output [25-1:0] o_3,
  output [25-1:0] o_4,
  output [25-1:0] o_5,
  output [25-1:0] o_6,
  output [25-1:0] o_7,
  output [25-1:0] o_8,
  output [25-1:0] o_9,
  output [25-1:0] o_10,
  output [25-1:0] o_11,
  output [25-1:0] o_12,
  output [25-1:0] o_13,
  output [25-1:0] o_14
);
  wire [25-1:0] slice0_y_net;
  wire [25-1:0] slice6_y_net;
  wire [350-1:0] b_mat_store_mat_out_net;
  wire [25-1:0] slice11_y_net;
  wire [25-1:0] slice8_y_net;
  wire [25-1:0] slice2_y_net;
  wire [25-1:0] slice10_y_net;
  wire [25-1:0] slice3_y_net;
  wire [25-1:0] slice4_y_net;
  wire [25-1:0] slice7_y_net;
  wire [25-1:0] slice5_y_net;
  wire [25-1:0] slice13_y_net;
  wire [25-1:0] slice12_y_net;
  wire [25-1:0] slice1_y_net;
  wire [25-1:0] slice9_y_net;
  assign o_1 = slice0_y_net;
  assign o_2 = slice1_y_net;
  assign o_3 = slice2_y_net;
  assign o_4 = slice3_y_net;
  assign o_5 = slice4_y_net;
  assign o_6 = slice5_y_net;
  assign o_7 = slice6_y_net;
  assign o_8 = slice7_y_net;
  assign o_9 = slice8_y_net;
  assign o_10 = slice9_y_net;
  assign o_11 = slice10_y_net;
  assign o_12 = slice11_y_net;
  assign o_13 = slice12_y_net;
  assign o_14 = slice13_y_net;
  assign b_mat_store_mat_out_net = i;
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(0),
    .new_msb(24),
    .x_width(350),
    .y_width(25)
  )
  slice0 (
    .x(b_mat_store_mat_out_net),
    .y(slice0_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(25),
    .new_msb(49),
    .x_width(350),
    .y_width(25)
  )
  slice1 (
    .x(b_mat_store_mat_out_net),
    .y(slice1_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(50),
    .new_msb(74),
    .x_width(350),
    .y_width(25)
  )
  slice2 (
    .x(b_mat_store_mat_out_net),
    .y(slice2_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(75),
    .new_msb(99),
    .x_width(350),
    .y_width(25)
  )
  slice3 (
    .x(b_mat_store_mat_out_net),
    .y(slice3_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(100),
    .new_msb(124),
    .x_width(350),
    .y_width(25)
  )
  slice4 (
    .x(b_mat_store_mat_out_net),
    .y(slice4_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(125),
    .new_msb(149),
    .x_width(350),
    .y_width(25)
  )
  slice5 (
    .x(b_mat_store_mat_out_net),
    .y(slice5_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(150),
    .new_msb(174),
    .x_width(350),
    .y_width(25)
  )
  slice6 (
    .x(b_mat_store_mat_out_net),
    .y(slice6_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(175),
    .new_msb(199),
    .x_width(350),
    .y_width(25)
  )
  slice7 (
    .x(b_mat_store_mat_out_net),
    .y(slice7_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(200),
    .new_msb(224),
    .x_width(350),
    .y_width(25)
  )
  slice8 (
    .x(b_mat_store_mat_out_net),
    .y(slice8_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(225),
    .new_msb(249),
    .x_width(350),
    .y_width(25)
  )
  slice9 (
    .x(b_mat_store_mat_out_net),
    .y(slice9_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(250),
    .new_msb(274),
    .x_width(350),
    .y_width(25)
  )
  slice10 (
    .x(b_mat_store_mat_out_net),
    .y(slice10_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(275),
    .new_msb(299),
    .x_width(350),
    .y_width(25)
  )
  slice11 (
    .x(b_mat_store_mat_out_net),
    .y(slice11_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(300),
    .new_msb(324),
    .x_width(350),
    .y_width(25)
  )
  slice12 (
    .x(b_mat_store_mat_out_net),
    .y(slice12_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(325),
    .new_msb(349),
    .x_width(350),
    .y_width(25)
  )
  slice13 (
    .x(b_mat_store_mat_out_net),
    .y(slice13_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/AXI_clock_domain_wrapper/Scalar to Vector5
module fpga_kf_3dof_plus_scalar_to_vector5 (
  input [350-1:0] i,
  output [25-1:0] o_1,
  output [25-1:0] o_2,
  output [25-1:0] o_3,
  output [25-1:0] o_4,
  output [25-1:0] o_5,
  output [25-1:0] o_6,
  output [25-1:0] o_7,
  output [25-1:0] o_8,
  output [25-1:0] o_9,
  output [25-1:0] o_10,
  output [25-1:0] o_11,
  output [25-1:0] o_12,
  output [25-1:0] o_13,
  output [25-1:0] o_14
);
  wire [25-1:0] slice2_y_net;
  wire [25-1:0] slice8_y_net;
  wire [25-1:0] slice12_y_net;
  wire [350-1:0] l_ip_mat_store_mat_out_net;
  wire [25-1:0] slice7_y_net;
  wire [25-1:0] slice3_y_net;
  wire [25-1:0] slice5_y_net;
  wire [25-1:0] slice11_y_net;
  wire [25-1:0] slice10_y_net;
  wire [25-1:0] slice6_y_net;
  wire [25-1:0] slice4_y_net;
  wire [25-1:0] slice13_y_net;
  wire [25-1:0] slice9_y_net;
  wire [25-1:0] slice1_y_net;
  wire [25-1:0] slice0_y_net;
  assign o_1 = slice0_y_net;
  assign o_2 = slice1_y_net;
  assign o_3 = slice2_y_net;
  assign o_4 = slice3_y_net;
  assign o_5 = slice4_y_net;
  assign o_6 = slice5_y_net;
  assign o_7 = slice6_y_net;
  assign o_8 = slice7_y_net;
  assign o_9 = slice8_y_net;
  assign o_10 = slice9_y_net;
  assign o_11 = slice10_y_net;
  assign o_12 = slice11_y_net;
  assign o_13 = slice12_y_net;
  assign o_14 = slice13_y_net;
  assign l_ip_mat_store_mat_out_net = i;
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(0),
    .new_msb(24),
    .x_width(350),
    .y_width(25)
  )
  slice0 (
    .x(l_ip_mat_store_mat_out_net),
    .y(slice0_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(25),
    .new_msb(49),
    .x_width(350),
    .y_width(25)
  )
  slice1 (
    .x(l_ip_mat_store_mat_out_net),
    .y(slice1_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(50),
    .new_msb(74),
    .x_width(350),
    .y_width(25)
  )
  slice2 (
    .x(l_ip_mat_store_mat_out_net),
    .y(slice2_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(75),
    .new_msb(99),
    .x_width(350),
    .y_width(25)
  )
  slice3 (
    .x(l_ip_mat_store_mat_out_net),
    .y(slice3_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(100),
    .new_msb(124),
    .x_width(350),
    .y_width(25)
  )
  slice4 (
    .x(l_ip_mat_store_mat_out_net),
    .y(slice4_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(125),
    .new_msb(149),
    .x_width(350),
    .y_width(25)
  )
  slice5 (
    .x(l_ip_mat_store_mat_out_net),
    .y(slice5_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(150),
    .new_msb(174),
    .x_width(350),
    .y_width(25)
  )
  slice6 (
    .x(l_ip_mat_store_mat_out_net),
    .y(slice6_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(175),
    .new_msb(199),
    .x_width(350),
    .y_width(25)
  )
  slice7 (
    .x(l_ip_mat_store_mat_out_net),
    .y(slice7_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(200),
    .new_msb(224),
    .x_width(350),
    .y_width(25)
  )
  slice8 (
    .x(l_ip_mat_store_mat_out_net),
    .y(slice8_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(225),
    .new_msb(249),
    .x_width(350),
    .y_width(25)
  )
  slice9 (
    .x(l_ip_mat_store_mat_out_net),
    .y(slice9_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(250),
    .new_msb(274),
    .x_width(350),
    .y_width(25)
  )
  slice10 (
    .x(l_ip_mat_store_mat_out_net),
    .y(slice10_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(275),
    .new_msb(299),
    .x_width(350),
    .y_width(25)
  )
  slice11 (
    .x(l_ip_mat_store_mat_out_net),
    .y(slice11_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(300),
    .new_msb(324),
    .x_width(350),
    .y_width(25)
  )
  slice12 (
    .x(l_ip_mat_store_mat_out_net),
    .y(slice12_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(325),
    .new_msb(349),
    .x_width(350),
    .y_width(25)
  )
  slice13 (
    .x(l_ip_mat_store_mat_out_net),
    .y(slice13_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/AXI_clock_domain_wrapper/Scalar to Vector6
module fpga_kf_3dof_plus_scalar_to_vector6 (
  input [350-1:0] i,
  output [25-1:0] o_1,
  output [25-1:0] o_2,
  output [25-1:0] o_3,
  output [25-1:0] o_4,
  output [25-1:0] o_5,
  output [25-1:0] o_6,
  output [25-1:0] o_7,
  output [25-1:0] o_8,
  output [25-1:0] o_9,
  output [25-1:0] o_10,
  output [25-1:0] o_11,
  output [25-1:0] o_12,
  output [25-1:0] o_13,
  output [25-1:0] o_14
);
  wire [25-1:0] slice0_y_net;
  wire [25-1:0] slice1_y_net;
  wire [25-1:0] slice2_y_net;
  wire [25-1:0] slice8_y_net;
  wire [25-1:0] slice5_y_net;
  wire [25-1:0] slice11_y_net;
  wire [25-1:0] slice7_y_net;
  wire [25-1:0] slice3_y_net;
  wire [25-1:0] slice13_y_net;
  wire [350-1:0] k_ip_mat_store_mat_out_net;
  wire [25-1:0] slice12_y_net;
  wire [25-1:0] slice10_y_net;
  wire [25-1:0] slice9_y_net;
  wire [25-1:0] slice4_y_net;
  wire [25-1:0] slice6_y_net;
  assign o_1 = slice0_y_net;
  assign o_2 = slice1_y_net;
  assign o_3 = slice2_y_net;
  assign o_4 = slice3_y_net;
  assign o_5 = slice4_y_net;
  assign o_6 = slice5_y_net;
  assign o_7 = slice6_y_net;
  assign o_8 = slice7_y_net;
  assign o_9 = slice8_y_net;
  assign o_10 = slice9_y_net;
  assign o_11 = slice10_y_net;
  assign o_12 = slice11_y_net;
  assign o_13 = slice12_y_net;
  assign o_14 = slice13_y_net;
  assign k_ip_mat_store_mat_out_net = i;
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(0),
    .new_msb(24),
    .x_width(350),
    .y_width(25)
  )
  slice0 (
    .x(k_ip_mat_store_mat_out_net),
    .y(slice0_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(25),
    .new_msb(49),
    .x_width(350),
    .y_width(25)
  )
  slice1 (
    .x(k_ip_mat_store_mat_out_net),
    .y(slice1_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(50),
    .new_msb(74),
    .x_width(350),
    .y_width(25)
  )
  slice2 (
    .x(k_ip_mat_store_mat_out_net),
    .y(slice2_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(75),
    .new_msb(99),
    .x_width(350),
    .y_width(25)
  )
  slice3 (
    .x(k_ip_mat_store_mat_out_net),
    .y(slice3_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(100),
    .new_msb(124),
    .x_width(350),
    .y_width(25)
  )
  slice4 (
    .x(k_ip_mat_store_mat_out_net),
    .y(slice4_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(125),
    .new_msb(149),
    .x_width(350),
    .y_width(25)
  )
  slice5 (
    .x(k_ip_mat_store_mat_out_net),
    .y(slice5_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(150),
    .new_msb(174),
    .x_width(350),
    .y_width(25)
  )
  slice6 (
    .x(k_ip_mat_store_mat_out_net),
    .y(slice6_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(175),
    .new_msb(199),
    .x_width(350),
    .y_width(25)
  )
  slice7 (
    .x(k_ip_mat_store_mat_out_net),
    .y(slice7_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(200),
    .new_msb(224),
    .x_width(350),
    .y_width(25)
  )
  slice8 (
    .x(k_ip_mat_store_mat_out_net),
    .y(slice8_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(225),
    .new_msb(249),
    .x_width(350),
    .y_width(25)
  )
  slice9 (
    .x(k_ip_mat_store_mat_out_net),
    .y(slice9_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(250),
    .new_msb(274),
    .x_width(350),
    .y_width(25)
  )
  slice10 (
    .x(k_ip_mat_store_mat_out_net),
    .y(slice10_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(275),
    .new_msb(299),
    .x_width(350),
    .y_width(25)
  )
  slice11 (
    .x(k_ip_mat_store_mat_out_net),
    .y(slice11_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(300),
    .new_msb(324),
    .x_width(350),
    .y_width(25)
  )
  slice12 (
    .x(k_ip_mat_store_mat_out_net),
    .y(slice12_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(325),
    .new_msb(349),
    .x_width(350),
    .y_width(25)
  )
  slice13 (
    .x(k_ip_mat_store_mat_out_net),
    .y(slice13_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/AXI_clock_domain_wrapper/Scalar to Vector7
module fpga_kf_3dof_plus_scalar_to_vector7 (
  input [350-1:0] i,
  output [25-1:0] o_1,
  output [25-1:0] o_2,
  output [25-1:0] o_3,
  output [25-1:0] o_4,
  output [25-1:0] o_5,
  output [25-1:0] o_6,
  output [25-1:0] o_7,
  output [25-1:0] o_8,
  output [25-1:0] o_9,
  output [25-1:0] o_10,
  output [25-1:0] o_11,
  output [25-1:0] o_12,
  output [25-1:0] o_13,
  output [25-1:0] o_14
);
  wire [25-1:0] slice1_y_net;
  wire [25-1:0] slice2_y_net;
  wire [25-1:0] slice3_y_net;
  wire [25-1:0] slice4_y_net;
  wire [25-1:0] slice5_y_net;
  wire [25-1:0] slice0_y_net;
  wire [25-1:0] slice7_y_net;
  wire [25-1:0] slice12_y_net;
  wire [25-1:0] slice13_y_net;
  wire [25-1:0] slice9_y_net;
  wire [25-1:0] slice11_y_net;
  wire [25-1:0] slice8_y_net;
  wire [25-1:0] slice6_y_net;
  wire [350-1:0] b_ip_mat_store_mat_out_net;
  wire [25-1:0] slice10_y_net;
  assign o_1 = slice0_y_net;
  assign o_2 = slice1_y_net;
  assign o_3 = slice2_y_net;
  assign o_4 = slice3_y_net;
  assign o_5 = slice4_y_net;
  assign o_6 = slice5_y_net;
  assign o_7 = slice6_y_net;
  assign o_8 = slice7_y_net;
  assign o_9 = slice8_y_net;
  assign o_10 = slice9_y_net;
  assign o_11 = slice10_y_net;
  assign o_12 = slice11_y_net;
  assign o_13 = slice12_y_net;
  assign o_14 = slice13_y_net;
  assign b_ip_mat_store_mat_out_net = i;
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(0),
    .new_msb(24),
    .x_width(350),
    .y_width(25)
  )
  slice0 (
    .x(b_ip_mat_store_mat_out_net),
    .y(slice0_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(25),
    .new_msb(49),
    .x_width(350),
    .y_width(25)
  )
  slice1 (
    .x(b_ip_mat_store_mat_out_net),
    .y(slice1_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(50),
    .new_msb(74),
    .x_width(350),
    .y_width(25)
  )
  slice2 (
    .x(b_ip_mat_store_mat_out_net),
    .y(slice2_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(75),
    .new_msb(99),
    .x_width(350),
    .y_width(25)
  )
  slice3 (
    .x(b_ip_mat_store_mat_out_net),
    .y(slice3_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(100),
    .new_msb(124),
    .x_width(350),
    .y_width(25)
  )
  slice4 (
    .x(b_ip_mat_store_mat_out_net),
    .y(slice4_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(125),
    .new_msb(149),
    .x_width(350),
    .y_width(25)
  )
  slice5 (
    .x(b_ip_mat_store_mat_out_net),
    .y(slice5_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(150),
    .new_msb(174),
    .x_width(350),
    .y_width(25)
  )
  slice6 (
    .x(b_ip_mat_store_mat_out_net),
    .y(slice6_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(175),
    .new_msb(199),
    .x_width(350),
    .y_width(25)
  )
  slice7 (
    .x(b_ip_mat_store_mat_out_net),
    .y(slice7_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(200),
    .new_msb(224),
    .x_width(350),
    .y_width(25)
  )
  slice8 (
    .x(b_ip_mat_store_mat_out_net),
    .y(slice8_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(225),
    .new_msb(249),
    .x_width(350),
    .y_width(25)
  )
  slice9 (
    .x(b_ip_mat_store_mat_out_net),
    .y(slice9_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(250),
    .new_msb(274),
    .x_width(350),
    .y_width(25)
  )
  slice10 (
    .x(b_ip_mat_store_mat_out_net),
    .y(slice10_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(275),
    .new_msb(299),
    .x_width(350),
    .y_width(25)
  )
  slice11 (
    .x(b_ip_mat_store_mat_out_net),
    .y(slice11_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(300),
    .new_msb(324),
    .x_width(350),
    .y_width(25)
  )
  slice12 (
    .x(b_ip_mat_store_mat_out_net),
    .y(slice12_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(325),
    .new_msb(349),
    .x_width(350),
    .y_width(25)
  )
  slice13 (
    .x(b_ip_mat_store_mat_out_net),
    .y(slice13_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/AXI_clock_domain_wrapper/Vector Register7
module fpga_kf_3dof_plus_vector_register7 (
  input [30-1:0] d_1,
  input [30-1:0] d_2,
  input clk_1,
  input ce_1,
  output [30-1:0] q_1,
  output [30-1:0] q_2
);
  wire ce_net;
  wire [30-1:0] register1_q_net;
  wire [30-1:0] barrier_lb_in_net;
  wire [30-1:0] register0_q_net;
  wire [30-1:0] barrier_ub_in_net;
  wire clk_net;
  assign q_1 = register0_q_net;
  assign q_2 = register1_q_net;
  assign barrier_ub_in_net = d_1;
  assign barrier_lb_in_net = d_2;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf_3dof_plus_xlregister #(
    .d_width(30),
    .init_value(30'b000000000000000000000000000000)
  )
  register0 (
    .en(1'b1),
    .rst(1'b0),
    .d(barrier_ub_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register0_q_net)
  );
  fpga_kf_3dof_plus_xlregister #(
    .d_width(30),
    .init_value(30'b000000000000000000000000000000)
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
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/AXI_clock_domain_wrapper/Vector Register8
module fpga_kf_3dof_plus_vector_register8 (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  input clk_1,
  input ce_1,
  output [25-1:0] q_1,
  output [25-1:0] q_2
);
  wire [25-1:0] register0_q_net;
  wire ce_net;
  wire [25-1:0] register1_q_net;
  wire clk_net;
  wire [25-1:0] barrier_c0_data_in_net;
  wire [25-1:0] barrier_c1_data_in_net;
  assign q_1 = register0_q_net;
  assign q_2 = register1_q_net;
  assign barrier_c0_data_in_net = d_1;
  assign barrier_c1_data_in_net = d_2;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf_3dof_plus_xlregister #(
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
  fpga_kf_3dof_plus_xlregister #(
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
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/AXI_clock_domain_wrapper/Vector Reinterpret
module fpga_kf_3dof_plus_vector_reinterpret (
  input [25-1:0] in_1,
  input [25-1:0] in_2,
  input [25-1:0] in_3,
  input [25-1:0] in_4,
  input [25-1:0] in_5,
  input [25-1:0] in_6,
  input [25-1:0] in_7,
  input [25-1:0] in_8,
  input [25-1:0] in_9,
  input [25-1:0] in_10,
  input [25-1:0] in_11,
  input [25-1:0] in_12,
  input [25-1:0] in_13,
  input [25-1:0] in_14,
  input [25-1:0] in_15,
  input [25-1:0] in_16,
  input [25-1:0] in_17,
  input [25-1:0] in_18,
  input [25-1:0] in_19,
  input [25-1:0] in_20,
  input [25-1:0] in_21,
  input [25-1:0] in_22,
  input [25-1:0] in_23,
  input [25-1:0] in_24,
  input [25-1:0] in_25,
  input [25-1:0] in_26,
  input [25-1:0] in_27,
  input [25-1:0] in_28,
  input [25-1:0] in_29,
  input [25-1:0] in_30,
  input [25-1:0] in_31,
  input [25-1:0] in_32,
  input [25-1:0] in_33,
  input [25-1:0] in_34,
  input [25-1:0] in_35,
  input [25-1:0] in_36,
  input [25-1:0] in_37,
  input [25-1:0] in_38,
  input [25-1:0] in_39,
  input [25-1:0] in_40,
  input [25-1:0] in_41,
  input [25-1:0] in_42,
  input [25-1:0] in_43,
  input [25-1:0] in_44,
  input [25-1:0] in_45,
  input [25-1:0] in_46,
  input [25-1:0] in_47,
  input [25-1:0] in_48,
  input [25-1:0] in_49,
  output [25-1:0] out_1,
  output [25-1:0] out_2,
  output [25-1:0] out_3,
  output [25-1:0] out_4,
  output [25-1:0] out_5,
  output [25-1:0] out_6,
  output [25-1:0] out_7,
  output [25-1:0] out_8,
  output [25-1:0] out_9,
  output [25-1:0] out_10,
  output [25-1:0] out_11,
  output [25-1:0] out_12,
  output [25-1:0] out_13,
  output [25-1:0] out_14,
  output [25-1:0] out_15,
  output [25-1:0] out_16,
  output [25-1:0] out_17,
  output [25-1:0] out_18,
  output [25-1:0] out_19,
  output [25-1:0] out_20,
  output [25-1:0] out_21,
  output [25-1:0] out_22,
  output [25-1:0] out_23,
  output [25-1:0] out_24,
  output [25-1:0] out_25,
  output [25-1:0] out_26,
  output [25-1:0] out_27,
  output [25-1:0] out_28,
  output [25-1:0] out_29,
  output [25-1:0] out_30,
  output [25-1:0] out_31,
  output [25-1:0] out_32,
  output [25-1:0] out_33,
  output [25-1:0] out_34,
  output [25-1:0] out_35,
  output [25-1:0] out_36,
  output [25-1:0] out_37,
  output [25-1:0] out_38,
  output [25-1:0] out_39,
  output [25-1:0] out_40,
  output [25-1:0] out_41,
  output [25-1:0] out_42,
  output [25-1:0] out_43,
  output [25-1:0] out_44,
  output [25-1:0] out_45,
  output [25-1:0] out_46,
  output [25-1:0] out_47,
  output [25-1:0] out_48,
  output [25-1:0] out_49
);
  wire [25-1:0] reinterpret6_output_port_net;
  wire [25-1:0] reinterpret10_output_port_net;
  wire [25-1:0] reinterpret5_output_port_net;
  wire [25-1:0] reinterpret3_output_port_net;
  wire [25-1:0] reinterpret12_output_port_net;
  wire [25-1:0] reinterpret4_output_port_net;
  wire [25-1:0] reinterpret14_output_port_net;
  wire [25-1:0] reinterpret8_output_port_net;
  wire [25-1:0] reinterpret2_output_port_net;
  wire [25-1:0] reinterpret7_output_port_net;
  wire [25-1:0] reinterpret11_output_port_net;
  wire [25-1:0] reinterpret0_output_port_net;
  wire [25-1:0] reinterpret13_output_port_net;
  wire [25-1:0] reinterpret1_output_port_net;
  wire [25-1:0] reinterpret9_output_port_net;
  wire [25-1:0] reinterpret34_output_port_net;
  wire [25-1:0] reinterpret36_output_port_net;
  wire [25-1:0] reinterpret31_output_port_net;
  wire [25-1:0] reinterpret37_output_port_net;
  wire [25-1:0] reinterpret40_output_port_net;
  wire [25-1:0] reinterpret41_output_port_net;
  wire [25-1:0] reinterpret43_output_port_net;
  wire [25-1:0] reinterpret29_output_port_net;
  wire [25-1:0] reinterpret39_output_port_net;
  wire [25-1:0] reinterpret22_output_port_net;
  wire [25-1:0] reinterpret20_output_port_net;
  wire [25-1:0] reinterpret42_output_port_net;
  wire [25-1:0] reinterpret26_output_port_net;
  wire [25-1:0] reinterpret35_output_port_net;
  wire [25-1:0] reinterpret30_output_port_net;
  wire [25-1:0] reinterpret21_output_port_net;
  wire [25-1:0] reinterpret44_output_port_net;
  wire [25-1:0] reinterpret45_output_port_net;
  wire [25-1:0] reinterpret46_output_port_net;
  wire [25-1:0] reinterpret18_output_port_net;
  wire [25-1:0] reinterpret25_output_port_net;
  wire [25-1:0] reinterpret17_output_port_net;
  wire [25-1:0] reinterpret38_output_port_net;
  wire [25-1:0] reinterpret28_output_port_net;
  wire [25-1:0] reinterpret16_output_port_net;
  wire [25-1:0] reinterpret19_output_port_net;
  wire [25-1:0] reinterpret33_output_port_net;
  wire [25-1:0] reinterpret27_output_port_net;
  wire [25-1:0] reinterpret15_output_port_net;
  wire [25-1:0] reinterpret24_output_port_net;
  wire [25-1:0] reinterpret32_output_port_net;
  wire [25-1:0] reinterpret23_output_port_net;
  wire [25-1:0] slice19_y_net;
  wire [25-1:0] slice28_y_net;
  wire [25-1:0] slice0_y_net;
  wire [25-1:0] slice12_y_net;
  wire [25-1:0] slice4_y_net;
  wire [25-1:0] slice6_y_net;
  wire [25-1:0] slice14_y_net;
  wire [25-1:0] slice2_y_net;
  wire [25-1:0] reinterpret47_output_port_net;
  wire [25-1:0] slice5_y_net;
  wire [25-1:0] slice7_y_net;
  wire [25-1:0] slice3_y_net;
  wire [25-1:0] slice16_y_net;
  wire [25-1:0] slice8_y_net;
  wire [25-1:0] slice13_y_net;
  wire [25-1:0] slice18_y_net;
  wire [25-1:0] slice21_y_net;
  wire [25-1:0] slice17_y_net;
  wire [25-1:0] slice9_y_net;
  wire [25-1:0] slice22_y_net;
  wire [25-1:0] slice23_y_net;
  wire [25-1:0] slice25_y_net;
  wire [25-1:0] slice1_y_net;
  wire [25-1:0] slice26_y_net;
  wire [25-1:0] slice27_y_net;
  wire [25-1:0] slice20_y_net;
  wire [25-1:0] slice15_y_net;
  wire [25-1:0] slice10_y_net;
  wire [25-1:0] slice29_y_net;
  wire [25-1:0] reinterpret48_output_port_net;
  wire [25-1:0] slice11_y_net;
  wire [25-1:0] slice24_y_net;
  wire [25-1:0] slice41_y_net;
  wire [25-1:0] slice46_y_net;
  wire [25-1:0] slice35_y_net;
  wire [25-1:0] slice42_y_net;
  wire [25-1:0] slice47_y_net;
  wire [25-1:0] slice33_y_net;
  wire [25-1:0] slice45_y_net;
  wire [25-1:0] slice38_y_net;
  wire [25-1:0] slice48_y_net;
  wire [25-1:0] slice43_y_net;
  wire [25-1:0] slice32_y_net;
  wire [25-1:0] slice44_y_net;
  wire [25-1:0] slice30_y_net;
  wire [25-1:0] slice36_y_net;
  wire [25-1:0] slice34_y_net;
  wire [25-1:0] slice40_y_net;
  wire [25-1:0] slice31_y_net;
  wire [25-1:0] slice37_y_net;
  wire [25-1:0] slice39_y_net;
  assign out_1 = reinterpret0_output_port_net;
  assign out_2 = reinterpret1_output_port_net;
  assign out_3 = reinterpret2_output_port_net;
  assign out_4 = reinterpret3_output_port_net;
  assign out_5 = reinterpret4_output_port_net;
  assign out_6 = reinterpret5_output_port_net;
  assign out_7 = reinterpret6_output_port_net;
  assign out_8 = reinterpret7_output_port_net;
  assign out_9 = reinterpret8_output_port_net;
  assign out_10 = reinterpret9_output_port_net;
  assign out_11 = reinterpret10_output_port_net;
  assign out_12 = reinterpret11_output_port_net;
  assign out_13 = reinterpret12_output_port_net;
  assign out_14 = reinterpret13_output_port_net;
  assign out_15 = reinterpret14_output_port_net;
  assign out_16 = reinterpret15_output_port_net;
  assign out_17 = reinterpret16_output_port_net;
  assign out_18 = reinterpret17_output_port_net;
  assign out_19 = reinterpret18_output_port_net;
  assign out_20 = reinterpret19_output_port_net;
  assign out_21 = reinterpret20_output_port_net;
  assign out_22 = reinterpret21_output_port_net;
  assign out_23 = reinterpret22_output_port_net;
  assign out_24 = reinterpret23_output_port_net;
  assign out_25 = reinterpret24_output_port_net;
  assign out_26 = reinterpret25_output_port_net;
  assign out_27 = reinterpret26_output_port_net;
  assign out_28 = reinterpret27_output_port_net;
  assign out_29 = reinterpret28_output_port_net;
  assign out_30 = reinterpret29_output_port_net;
  assign out_31 = reinterpret30_output_port_net;
  assign out_32 = reinterpret31_output_port_net;
  assign out_33 = reinterpret32_output_port_net;
  assign out_34 = reinterpret33_output_port_net;
  assign out_35 = reinterpret34_output_port_net;
  assign out_36 = reinterpret35_output_port_net;
  assign out_37 = reinterpret36_output_port_net;
  assign out_38 = reinterpret37_output_port_net;
  assign out_39 = reinterpret38_output_port_net;
  assign out_40 = reinterpret39_output_port_net;
  assign out_41 = reinterpret40_output_port_net;
  assign out_42 = reinterpret41_output_port_net;
  assign out_43 = reinterpret42_output_port_net;
  assign out_44 = reinterpret43_output_port_net;
  assign out_45 = reinterpret44_output_port_net;
  assign out_46 = reinterpret45_output_port_net;
  assign out_47 = reinterpret46_output_port_net;
  assign out_48 = reinterpret47_output_port_net;
  assign out_49 = reinterpret48_output_port_net;
  assign slice0_y_net = in_1;
  assign slice1_y_net = in_2;
  assign slice2_y_net = in_3;
  assign slice3_y_net = in_4;
  assign slice4_y_net = in_5;
  assign slice5_y_net = in_6;
  assign slice6_y_net = in_7;
  assign slice7_y_net = in_8;
  assign slice8_y_net = in_9;
  assign slice9_y_net = in_10;
  assign slice10_y_net = in_11;
  assign slice11_y_net = in_12;
  assign slice12_y_net = in_13;
  assign slice13_y_net = in_14;
  assign slice14_y_net = in_15;
  assign slice15_y_net = in_16;
  assign slice16_y_net = in_17;
  assign slice17_y_net = in_18;
  assign slice18_y_net = in_19;
  assign slice19_y_net = in_20;
  assign slice20_y_net = in_21;
  assign slice21_y_net = in_22;
  assign slice22_y_net = in_23;
  assign slice23_y_net = in_24;
  assign slice24_y_net = in_25;
  assign slice25_y_net = in_26;
  assign slice26_y_net = in_27;
  assign slice27_y_net = in_28;
  assign slice28_y_net = in_29;
  assign slice29_y_net = in_30;
  assign slice30_y_net = in_31;
  assign slice31_y_net = in_32;
  assign slice32_y_net = in_33;
  assign slice33_y_net = in_34;
  assign slice34_y_net = in_35;
  assign slice35_y_net = in_36;
  assign slice36_y_net = in_37;
  assign slice37_y_net = in_38;
  assign slice38_y_net = in_39;
  assign slice39_y_net = in_40;
  assign slice40_y_net = in_41;
  assign slice41_y_net = in_42;
  assign slice42_y_net = in_43;
  assign slice43_y_net = in_44;
  assign slice44_y_net = in_45;
  assign slice45_y_net = in_46;
  assign slice46_y_net = in_47;
  assign slice47_y_net = in_48;
  assign slice48_y_net = in_49;
  sysgen_reinterpret_2e6151ebdc reinterpret0 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice0_y_net),
    .output_port(reinterpret0_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice1_y_net),
    .output_port(reinterpret1_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice2_y_net),
    .output_port(reinterpret2_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice3_y_net),
    .output_port(reinterpret3_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice4_y_net),
    .output_port(reinterpret4_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret5 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice5_y_net),
    .output_port(reinterpret5_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret6 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice6_y_net),
    .output_port(reinterpret6_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret7 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice7_y_net),
    .output_port(reinterpret7_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret8 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice8_y_net),
    .output_port(reinterpret8_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret9 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice9_y_net),
    .output_port(reinterpret9_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret10 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice10_y_net),
    .output_port(reinterpret10_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret11 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice11_y_net),
    .output_port(reinterpret11_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret12 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice12_y_net),
    .output_port(reinterpret12_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret13 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice13_y_net),
    .output_port(reinterpret13_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret14 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice14_y_net),
    .output_port(reinterpret14_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret15 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice15_y_net),
    .output_port(reinterpret15_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret16 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice16_y_net),
    .output_port(reinterpret16_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret17 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice17_y_net),
    .output_port(reinterpret17_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret18 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice18_y_net),
    .output_port(reinterpret18_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret19 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice19_y_net),
    .output_port(reinterpret19_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret20 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice20_y_net),
    .output_port(reinterpret20_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret21 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice21_y_net),
    .output_port(reinterpret21_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret22 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice22_y_net),
    .output_port(reinterpret22_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret23 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice23_y_net),
    .output_port(reinterpret23_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret24 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice24_y_net),
    .output_port(reinterpret24_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret25 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice25_y_net),
    .output_port(reinterpret25_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret26 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice26_y_net),
    .output_port(reinterpret26_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret27 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice27_y_net),
    .output_port(reinterpret27_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret28 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice28_y_net),
    .output_port(reinterpret28_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret29 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice29_y_net),
    .output_port(reinterpret29_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret30 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice30_y_net),
    .output_port(reinterpret30_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret31 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice31_y_net),
    .output_port(reinterpret31_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret32 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice32_y_net),
    .output_port(reinterpret32_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret33 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice33_y_net),
    .output_port(reinterpret33_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret34 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice34_y_net),
    .output_port(reinterpret34_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret35 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice35_y_net),
    .output_port(reinterpret35_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret36 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice36_y_net),
    .output_port(reinterpret36_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret37 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice37_y_net),
    .output_port(reinterpret37_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret38 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice38_y_net),
    .output_port(reinterpret38_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret39 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice39_y_net),
    .output_port(reinterpret39_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret40 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice40_y_net),
    .output_port(reinterpret40_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret41 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice41_y_net),
    .output_port(reinterpret41_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret42 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice42_y_net),
    .output_port(reinterpret42_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret43 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice43_y_net),
    .output_port(reinterpret43_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret44 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice44_y_net),
    .output_port(reinterpret44_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret45 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice45_y_net),
    .output_port(reinterpret45_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret46 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice46_y_net),
    .output_port(reinterpret46_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret47 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice47_y_net),
    .output_port(reinterpret47_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret48 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice48_y_net),
    .output_port(reinterpret48_output_port_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/AXI_clock_domain_wrapper/Vector Reinterpret1
module fpga_kf_3dof_plus_vector_reinterpret1 (
  input [25-1:0] in_1,
  input [25-1:0] in_2,
  input [25-1:0] in_3,
  input [25-1:0] in_4,
  input [25-1:0] in_5,
  input [25-1:0] in_6,
  input [25-1:0] in_7,
  input [25-1:0] in_8,
  input [25-1:0] in_9,
  input [25-1:0] in_10,
  input [25-1:0] in_11,
  input [25-1:0] in_12,
  input [25-1:0] in_13,
  input [25-1:0] in_14,
  input [25-1:0] in_15,
  input [25-1:0] in_16,
  input [25-1:0] in_17,
  input [25-1:0] in_18,
  input [25-1:0] in_19,
  input [25-1:0] in_20,
  input [25-1:0] in_21,
  input [25-1:0] in_22,
  input [25-1:0] in_23,
  input [25-1:0] in_24,
  input [25-1:0] in_25,
  input [25-1:0] in_26,
  input [25-1:0] in_27,
  input [25-1:0] in_28,
  input [25-1:0] in_29,
  input [25-1:0] in_30,
  input [25-1:0] in_31,
  input [25-1:0] in_32,
  input [25-1:0] in_33,
  input [25-1:0] in_34,
  input [25-1:0] in_35,
  input [25-1:0] in_36,
  input [25-1:0] in_37,
  input [25-1:0] in_38,
  input [25-1:0] in_39,
  input [25-1:0] in_40,
  input [25-1:0] in_41,
  input [25-1:0] in_42,
  input [25-1:0] in_43,
  input [25-1:0] in_44,
  input [25-1:0] in_45,
  input [25-1:0] in_46,
  input [25-1:0] in_47,
  input [25-1:0] in_48,
  input [25-1:0] in_49,
  output [25-1:0] out_1,
  output [25-1:0] out_2,
  output [25-1:0] out_3,
  output [25-1:0] out_4,
  output [25-1:0] out_5,
  output [25-1:0] out_6,
  output [25-1:0] out_7,
  output [25-1:0] out_8,
  output [25-1:0] out_9,
  output [25-1:0] out_10,
  output [25-1:0] out_11,
  output [25-1:0] out_12,
  output [25-1:0] out_13,
  output [25-1:0] out_14,
  output [25-1:0] out_15,
  output [25-1:0] out_16,
  output [25-1:0] out_17,
  output [25-1:0] out_18,
  output [25-1:0] out_19,
  output [25-1:0] out_20,
  output [25-1:0] out_21,
  output [25-1:0] out_22,
  output [25-1:0] out_23,
  output [25-1:0] out_24,
  output [25-1:0] out_25,
  output [25-1:0] out_26,
  output [25-1:0] out_27,
  output [25-1:0] out_28,
  output [25-1:0] out_29,
  output [25-1:0] out_30,
  output [25-1:0] out_31,
  output [25-1:0] out_32,
  output [25-1:0] out_33,
  output [25-1:0] out_34,
  output [25-1:0] out_35,
  output [25-1:0] out_36,
  output [25-1:0] out_37,
  output [25-1:0] out_38,
  output [25-1:0] out_39,
  output [25-1:0] out_40,
  output [25-1:0] out_41,
  output [25-1:0] out_42,
  output [25-1:0] out_43,
  output [25-1:0] out_44,
  output [25-1:0] out_45,
  output [25-1:0] out_46,
  output [25-1:0] out_47,
  output [25-1:0] out_48,
  output [25-1:0] out_49
);
  wire [25-1:0] reinterpret17_output_port_net;
  wire [25-1:0] reinterpret6_output_port_net;
  wire [25-1:0] reinterpret8_output_port_net;
  wire [25-1:0] reinterpret14_output_port_net;
  wire [25-1:0] reinterpret16_output_port_net;
  wire [25-1:0] reinterpret1_output_port_net;
  wire [25-1:0] reinterpret7_output_port_net;
  wire [25-1:0] reinterpret5_output_port_net;
  wire [25-1:0] reinterpret13_output_port_net;
  wire [25-1:0] reinterpret4_output_port_net;
  wire [25-1:0] reinterpret9_output_port_net;
  wire [25-1:0] reinterpret3_output_port_net;
  wire [25-1:0] reinterpret0_output_port_net;
  wire [25-1:0] reinterpret15_output_port_net;
  wire [25-1:0] reinterpret10_output_port_net;
  wire [25-1:0] reinterpret2_output_port_net;
  wire [25-1:0] reinterpret11_output_port_net;
  wire [25-1:0] reinterpret12_output_port_net;
  wire [25-1:0] reinterpret43_output_port_net;
  wire [25-1:0] slice0_y_net;
  wire [25-1:0] reinterpret40_output_port_net;
  wire [25-1:0] reinterpret18_output_port_net;
  wire [25-1:0] reinterpret30_output_port_net;
  wire [25-1:0] reinterpret27_output_port_net;
  wire [25-1:0] reinterpret25_output_port_net;
  wire [25-1:0] reinterpret39_output_port_net;
  wire [25-1:0] reinterpret34_output_port_net;
  wire [25-1:0] reinterpret33_output_port_net;
  wire [25-1:0] reinterpret37_output_port_net;
  wire [25-1:0] reinterpret23_output_port_net;
  wire [25-1:0] reinterpret46_output_port_net;
  wire [25-1:0] reinterpret21_output_port_net;
  wire [25-1:0] reinterpret29_output_port_net;
  wire [25-1:0] reinterpret31_output_port_net;
  wire [25-1:0] reinterpret41_output_port_net;
  wire [25-1:0] reinterpret38_output_port_net;
  wire [25-1:0] reinterpret44_output_port_net;
  wire [25-1:0] reinterpret47_output_port_net;
  wire [25-1:0] reinterpret48_output_port_net;
  wire [25-1:0] reinterpret26_output_port_net;
  wire [25-1:0] reinterpret28_output_port_net;
  wire [25-1:0] reinterpret35_output_port_net;
  wire [25-1:0] reinterpret20_output_port_net;
  wire [25-1:0] reinterpret36_output_port_net;
  wire [25-1:0] reinterpret42_output_port_net;
  wire [25-1:0] reinterpret24_output_port_net;
  wire [25-1:0] reinterpret32_output_port_net;
  wire [25-1:0] reinterpret22_output_port_net;
  wire [25-1:0] reinterpret45_output_port_net;
  wire [25-1:0] reinterpret19_output_port_net;
  wire [25-1:0] slice4_y_net;
  wire [25-1:0] slice30_y_net;
  wire [25-1:0] slice11_y_net;
  wire [25-1:0] slice8_y_net;
  wire [25-1:0] slice18_y_net;
  wire [25-1:0] slice24_y_net;
  wire [25-1:0] slice3_y_net;
  wire [25-1:0] slice16_y_net;
  wire [25-1:0] slice17_y_net;
  wire [25-1:0] slice27_y_net;
  wire [25-1:0] slice28_y_net;
  wire [25-1:0] slice1_y_net;
  wire [25-1:0] slice29_y_net;
  wire [25-1:0] slice7_y_net;
  wire [25-1:0] slice12_y_net;
  wire [25-1:0] slice13_y_net;
  wire [25-1:0] slice20_y_net;
  wire [25-1:0] slice23_y_net;
  wire [25-1:0] slice5_y_net;
  wire [25-1:0] slice25_y_net;
  wire [25-1:0] slice6_y_net;
  wire [25-1:0] slice10_y_net;
  wire [25-1:0] slice19_y_net;
  wire [25-1:0] slice31_y_net;
  wire [25-1:0] slice32_y_net;
  wire [25-1:0] slice22_y_net;
  wire [25-1:0] slice9_y_net;
  wire [25-1:0] slice15_y_net;
  wire [25-1:0] slice14_y_net;
  wire [25-1:0] slice2_y_net;
  wire [25-1:0] slice26_y_net;
  wire [25-1:0] slice21_y_net;
  wire [25-1:0] slice46_y_net;
  wire [25-1:0] slice47_y_net;
  wire [25-1:0] slice44_y_net;
  wire [25-1:0] slice36_y_net;
  wire [25-1:0] slice38_y_net;
  wire [25-1:0] slice35_y_net;
  wire [25-1:0] slice41_y_net;
  wire [25-1:0] slice45_y_net;
  wire [25-1:0] slice43_y_net;
  wire [25-1:0] slice48_y_net;
  wire [25-1:0] slice40_y_net;
  wire [25-1:0] slice34_y_net;
  wire [25-1:0] slice37_y_net;
  wire [25-1:0] slice39_y_net;
  wire [25-1:0] slice42_y_net;
  wire [25-1:0] slice33_y_net;
  assign out_1 = reinterpret0_output_port_net;
  assign out_2 = reinterpret1_output_port_net;
  assign out_3 = reinterpret2_output_port_net;
  assign out_4 = reinterpret3_output_port_net;
  assign out_5 = reinterpret4_output_port_net;
  assign out_6 = reinterpret5_output_port_net;
  assign out_7 = reinterpret6_output_port_net;
  assign out_8 = reinterpret7_output_port_net;
  assign out_9 = reinterpret8_output_port_net;
  assign out_10 = reinterpret9_output_port_net;
  assign out_11 = reinterpret10_output_port_net;
  assign out_12 = reinterpret11_output_port_net;
  assign out_13 = reinterpret12_output_port_net;
  assign out_14 = reinterpret13_output_port_net;
  assign out_15 = reinterpret14_output_port_net;
  assign out_16 = reinterpret15_output_port_net;
  assign out_17 = reinterpret16_output_port_net;
  assign out_18 = reinterpret17_output_port_net;
  assign out_19 = reinterpret18_output_port_net;
  assign out_20 = reinterpret19_output_port_net;
  assign out_21 = reinterpret20_output_port_net;
  assign out_22 = reinterpret21_output_port_net;
  assign out_23 = reinterpret22_output_port_net;
  assign out_24 = reinterpret23_output_port_net;
  assign out_25 = reinterpret24_output_port_net;
  assign out_26 = reinterpret25_output_port_net;
  assign out_27 = reinterpret26_output_port_net;
  assign out_28 = reinterpret27_output_port_net;
  assign out_29 = reinterpret28_output_port_net;
  assign out_30 = reinterpret29_output_port_net;
  assign out_31 = reinterpret30_output_port_net;
  assign out_32 = reinterpret31_output_port_net;
  assign out_33 = reinterpret32_output_port_net;
  assign out_34 = reinterpret33_output_port_net;
  assign out_35 = reinterpret34_output_port_net;
  assign out_36 = reinterpret35_output_port_net;
  assign out_37 = reinterpret36_output_port_net;
  assign out_38 = reinterpret37_output_port_net;
  assign out_39 = reinterpret38_output_port_net;
  assign out_40 = reinterpret39_output_port_net;
  assign out_41 = reinterpret40_output_port_net;
  assign out_42 = reinterpret41_output_port_net;
  assign out_43 = reinterpret42_output_port_net;
  assign out_44 = reinterpret43_output_port_net;
  assign out_45 = reinterpret44_output_port_net;
  assign out_46 = reinterpret45_output_port_net;
  assign out_47 = reinterpret46_output_port_net;
  assign out_48 = reinterpret47_output_port_net;
  assign out_49 = reinterpret48_output_port_net;
  assign slice0_y_net = in_1;
  assign slice1_y_net = in_2;
  assign slice2_y_net = in_3;
  assign slice3_y_net = in_4;
  assign slice4_y_net = in_5;
  assign slice5_y_net = in_6;
  assign slice6_y_net = in_7;
  assign slice7_y_net = in_8;
  assign slice8_y_net = in_9;
  assign slice9_y_net = in_10;
  assign slice10_y_net = in_11;
  assign slice11_y_net = in_12;
  assign slice12_y_net = in_13;
  assign slice13_y_net = in_14;
  assign slice14_y_net = in_15;
  assign slice15_y_net = in_16;
  assign slice16_y_net = in_17;
  assign slice17_y_net = in_18;
  assign slice18_y_net = in_19;
  assign slice19_y_net = in_20;
  assign slice20_y_net = in_21;
  assign slice21_y_net = in_22;
  assign slice22_y_net = in_23;
  assign slice23_y_net = in_24;
  assign slice24_y_net = in_25;
  assign slice25_y_net = in_26;
  assign slice26_y_net = in_27;
  assign slice27_y_net = in_28;
  assign slice28_y_net = in_29;
  assign slice29_y_net = in_30;
  assign slice30_y_net = in_31;
  assign slice31_y_net = in_32;
  assign slice32_y_net = in_33;
  assign slice33_y_net = in_34;
  assign slice34_y_net = in_35;
  assign slice35_y_net = in_36;
  assign slice36_y_net = in_37;
  assign slice37_y_net = in_38;
  assign slice38_y_net = in_39;
  assign slice39_y_net = in_40;
  assign slice40_y_net = in_41;
  assign slice41_y_net = in_42;
  assign slice42_y_net = in_43;
  assign slice43_y_net = in_44;
  assign slice44_y_net = in_45;
  assign slice45_y_net = in_46;
  assign slice46_y_net = in_47;
  assign slice47_y_net = in_48;
  assign slice48_y_net = in_49;
  sysgen_reinterpret_2e6151ebdc reinterpret0 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice0_y_net),
    .output_port(reinterpret0_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice1_y_net),
    .output_port(reinterpret1_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice2_y_net),
    .output_port(reinterpret2_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice3_y_net),
    .output_port(reinterpret3_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice4_y_net),
    .output_port(reinterpret4_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret5 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice5_y_net),
    .output_port(reinterpret5_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret6 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice6_y_net),
    .output_port(reinterpret6_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret7 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice7_y_net),
    .output_port(reinterpret7_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret8 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice8_y_net),
    .output_port(reinterpret8_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret9 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice9_y_net),
    .output_port(reinterpret9_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret10 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice10_y_net),
    .output_port(reinterpret10_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret11 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice11_y_net),
    .output_port(reinterpret11_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret12 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice12_y_net),
    .output_port(reinterpret12_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret13 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice13_y_net),
    .output_port(reinterpret13_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret14 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice14_y_net),
    .output_port(reinterpret14_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret15 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice15_y_net),
    .output_port(reinterpret15_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret16 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice16_y_net),
    .output_port(reinterpret16_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret17 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice17_y_net),
    .output_port(reinterpret17_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret18 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice18_y_net),
    .output_port(reinterpret18_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret19 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice19_y_net),
    .output_port(reinterpret19_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret20 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice20_y_net),
    .output_port(reinterpret20_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret21 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice21_y_net),
    .output_port(reinterpret21_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret22 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice22_y_net),
    .output_port(reinterpret22_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret23 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice23_y_net),
    .output_port(reinterpret23_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret24 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice24_y_net),
    .output_port(reinterpret24_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret25 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice25_y_net),
    .output_port(reinterpret25_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret26 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice26_y_net),
    .output_port(reinterpret26_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret27 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice27_y_net),
    .output_port(reinterpret27_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret28 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice28_y_net),
    .output_port(reinterpret28_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret29 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice29_y_net),
    .output_port(reinterpret29_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret30 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice30_y_net),
    .output_port(reinterpret30_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret31 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice31_y_net),
    .output_port(reinterpret31_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret32 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice32_y_net),
    .output_port(reinterpret32_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret33 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice33_y_net),
    .output_port(reinterpret33_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret34 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice34_y_net),
    .output_port(reinterpret34_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret35 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice35_y_net),
    .output_port(reinterpret35_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret36 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice36_y_net),
    .output_port(reinterpret36_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret37 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice37_y_net),
    .output_port(reinterpret37_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret38 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice38_y_net),
    .output_port(reinterpret38_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret39 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice39_y_net),
    .output_port(reinterpret39_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret40 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice40_y_net),
    .output_port(reinterpret40_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret41 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice41_y_net),
    .output_port(reinterpret41_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret42 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice42_y_net),
    .output_port(reinterpret42_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret43 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice43_y_net),
    .output_port(reinterpret43_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret44 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice44_y_net),
    .output_port(reinterpret44_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret45 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice45_y_net),
    .output_port(reinterpret45_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret46 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice46_y_net),
    .output_port(reinterpret46_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret47 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice47_y_net),
    .output_port(reinterpret47_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret48 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice48_y_net),
    .output_port(reinterpret48_output_port_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/AXI_clock_domain_wrapper/Vector Reinterpret2
module fpga_kf_3dof_plus_vector_reinterpret2 (
  input [25-1:0] in_1,
  input [25-1:0] in_2,
  input [25-1:0] in_3,
  input [25-1:0] in_4,
  input [25-1:0] in_5,
  input [25-1:0] in_6,
  input [25-1:0] in_7,
  input [25-1:0] in_8,
  input [25-1:0] in_9,
  input [25-1:0] in_10,
  input [25-1:0] in_11,
  input [25-1:0] in_12,
  input [25-1:0] in_13,
  input [25-1:0] in_14,
  output [25-1:0] out_1,
  output [25-1:0] out_2,
  output [25-1:0] out_3,
  output [25-1:0] out_4,
  output [25-1:0] out_5,
  output [25-1:0] out_6,
  output [25-1:0] out_7,
  output [25-1:0] out_8,
  output [25-1:0] out_9,
  output [25-1:0] out_10,
  output [25-1:0] out_11,
  output [25-1:0] out_12,
  output [25-1:0] out_13,
  output [25-1:0] out_14
);
  wire [25-1:0] reinterpret5_output_port_net;
  wire [25-1:0] reinterpret6_output_port_net;
  wire [25-1:0] reinterpret10_output_port_net;
  wire [25-1:0] reinterpret3_output_port_net;
  wire [25-1:0] reinterpret12_output_port_net;
  wire [25-1:0] reinterpret7_output_port_net;
  wire [25-1:0] slice0_y_net;
  wire [25-1:0] reinterpret4_output_port_net;
  wire [25-1:0] slice1_y_net;
  wire [25-1:0] slice2_y_net;
  wire [25-1:0] reinterpret11_output_port_net;
  wire [25-1:0] slice4_y_net;
  wire [25-1:0] reinterpret8_output_port_net;
  wire [25-1:0] reinterpret2_output_port_net;
  wire [25-1:0] slice3_y_net;
  wire [25-1:0] slice5_y_net;
  wire [25-1:0] reinterpret0_output_port_net;
  wire [25-1:0] reinterpret13_output_port_net;
  wire [25-1:0] slice6_y_net;
  wire [25-1:0] reinterpret1_output_port_net;
  wire [25-1:0] reinterpret9_output_port_net;
  wire [25-1:0] slice9_y_net;
  wire [25-1:0] slice10_y_net;
  wire [25-1:0] slice12_y_net;
  wire [25-1:0] slice11_y_net;
  wire [25-1:0] slice7_y_net;
  wire [25-1:0] slice13_y_net;
  wire [25-1:0] slice8_y_net;
  assign out_1 = reinterpret0_output_port_net;
  assign out_2 = reinterpret1_output_port_net;
  assign out_3 = reinterpret2_output_port_net;
  assign out_4 = reinterpret3_output_port_net;
  assign out_5 = reinterpret4_output_port_net;
  assign out_6 = reinterpret5_output_port_net;
  assign out_7 = reinterpret6_output_port_net;
  assign out_8 = reinterpret7_output_port_net;
  assign out_9 = reinterpret8_output_port_net;
  assign out_10 = reinterpret9_output_port_net;
  assign out_11 = reinterpret10_output_port_net;
  assign out_12 = reinterpret11_output_port_net;
  assign out_13 = reinterpret12_output_port_net;
  assign out_14 = reinterpret13_output_port_net;
  assign slice0_y_net = in_1;
  assign slice1_y_net = in_2;
  assign slice2_y_net = in_3;
  assign slice3_y_net = in_4;
  assign slice4_y_net = in_5;
  assign slice5_y_net = in_6;
  assign slice6_y_net = in_7;
  assign slice7_y_net = in_8;
  assign slice8_y_net = in_9;
  assign slice9_y_net = in_10;
  assign slice10_y_net = in_11;
  assign slice11_y_net = in_12;
  assign slice12_y_net = in_13;
  assign slice13_y_net = in_14;
  sysgen_reinterpret_2e6151ebdc reinterpret0 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice0_y_net),
    .output_port(reinterpret0_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice1_y_net),
    .output_port(reinterpret1_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice2_y_net),
    .output_port(reinterpret2_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice3_y_net),
    .output_port(reinterpret3_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice4_y_net),
    .output_port(reinterpret4_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret5 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice5_y_net),
    .output_port(reinterpret5_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret6 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice6_y_net),
    .output_port(reinterpret6_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret7 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice7_y_net),
    .output_port(reinterpret7_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret8 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice8_y_net),
    .output_port(reinterpret8_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret9 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice9_y_net),
    .output_port(reinterpret9_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret10 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice10_y_net),
    .output_port(reinterpret10_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret11 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice11_y_net),
    .output_port(reinterpret11_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret12 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice12_y_net),
    .output_port(reinterpret12_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret13 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice13_y_net),
    .output_port(reinterpret13_output_port_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/AXI_clock_domain_wrapper/Vector Reinterpret3
module fpga_kf_3dof_plus_vector_reinterpret3 (
  input [25-1:0] in_1,
  input [25-1:0] in_2,
  input [25-1:0] in_3,
  input [25-1:0] in_4,
  input [25-1:0] in_5,
  input [25-1:0] in_6,
  input [25-1:0] in_7,
  input [25-1:0] in_8,
  input [25-1:0] in_9,
  input [25-1:0] in_10,
  input [25-1:0] in_11,
  input [25-1:0] in_12,
  input [25-1:0] in_13,
  input [25-1:0] in_14,
  output [25-1:0] out_1,
  output [25-1:0] out_2,
  output [25-1:0] out_3,
  output [25-1:0] out_4,
  output [25-1:0] out_5,
  output [25-1:0] out_6,
  output [25-1:0] out_7,
  output [25-1:0] out_8,
  output [25-1:0] out_9,
  output [25-1:0] out_10,
  output [25-1:0] out_11,
  output [25-1:0] out_12,
  output [25-1:0] out_13,
  output [25-1:0] out_14
);
  wire [25-1:0] reinterpret1_output_port_net;
  wire [25-1:0] reinterpret3_output_port_net;
  wire [25-1:0] reinterpret4_output_port_net;
  wire [25-1:0] reinterpret2_output_port_net;
  wire [25-1:0] reinterpret5_output_port_net;
  wire [25-1:0] reinterpret6_output_port_net;
  wire [25-1:0] reinterpret10_output_port_net;
  wire [25-1:0] reinterpret11_output_port_net;
  wire [25-1:0] slice0_y_net;
  wire [25-1:0] slice1_y_net;
  wire [25-1:0] slice2_y_net;
  wire [25-1:0] reinterpret7_output_port_net;
  wire [25-1:0] reinterpret8_output_port_net;
  wire [25-1:0] reinterpret0_output_port_net;
  wire [25-1:0] reinterpret9_output_port_net;
  wire [25-1:0] reinterpret13_output_port_net;
  wire [25-1:0] slice3_y_net;
  wire [25-1:0] reinterpret12_output_port_net;
  wire [25-1:0] slice4_y_net;
  wire [25-1:0] slice5_y_net;
  wire [25-1:0] slice6_y_net;
  wire [25-1:0] slice7_y_net;
  wire [25-1:0] slice10_y_net;
  wire [25-1:0] slice8_y_net;
  wire [25-1:0] slice11_y_net;
  wire [25-1:0] slice13_y_net;
  wire [25-1:0] slice12_y_net;
  wire [25-1:0] slice9_y_net;
  assign out_1 = reinterpret0_output_port_net;
  assign out_2 = reinterpret1_output_port_net;
  assign out_3 = reinterpret2_output_port_net;
  assign out_4 = reinterpret3_output_port_net;
  assign out_5 = reinterpret4_output_port_net;
  assign out_6 = reinterpret5_output_port_net;
  assign out_7 = reinterpret6_output_port_net;
  assign out_8 = reinterpret7_output_port_net;
  assign out_9 = reinterpret8_output_port_net;
  assign out_10 = reinterpret9_output_port_net;
  assign out_11 = reinterpret10_output_port_net;
  assign out_12 = reinterpret11_output_port_net;
  assign out_13 = reinterpret12_output_port_net;
  assign out_14 = reinterpret13_output_port_net;
  assign slice0_y_net = in_1;
  assign slice1_y_net = in_2;
  assign slice2_y_net = in_3;
  assign slice3_y_net = in_4;
  assign slice4_y_net = in_5;
  assign slice5_y_net = in_6;
  assign slice6_y_net = in_7;
  assign slice7_y_net = in_8;
  assign slice8_y_net = in_9;
  assign slice9_y_net = in_10;
  assign slice10_y_net = in_11;
  assign slice11_y_net = in_12;
  assign slice12_y_net = in_13;
  assign slice13_y_net = in_14;
  sysgen_reinterpret_2e6151ebdc reinterpret0 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice0_y_net),
    .output_port(reinterpret0_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice1_y_net),
    .output_port(reinterpret1_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice2_y_net),
    .output_port(reinterpret2_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice3_y_net),
    .output_port(reinterpret3_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice4_y_net),
    .output_port(reinterpret4_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret5 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice5_y_net),
    .output_port(reinterpret5_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret6 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice6_y_net),
    .output_port(reinterpret6_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret7 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice7_y_net),
    .output_port(reinterpret7_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret8 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice8_y_net),
    .output_port(reinterpret8_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret9 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice9_y_net),
    .output_port(reinterpret9_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret10 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice10_y_net),
    .output_port(reinterpret10_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret11 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice11_y_net),
    .output_port(reinterpret11_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret12 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice12_y_net),
    .output_port(reinterpret12_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret13 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice13_y_net),
    .output_port(reinterpret13_output_port_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/AXI_clock_domain_wrapper/Vector Reinterpret4
module fpga_kf_3dof_plus_vector_reinterpret4 (
  input [25-1:0] in_1,
  input [25-1:0] in_2,
  input [25-1:0] in_3,
  input [25-1:0] in_4,
  input [25-1:0] in_5,
  input [25-1:0] in_6,
  input [25-1:0] in_7,
  input [25-1:0] in_8,
  input [25-1:0] in_9,
  input [25-1:0] in_10,
  input [25-1:0] in_11,
  input [25-1:0] in_12,
  input [25-1:0] in_13,
  input [25-1:0] in_14,
  output [25-1:0] out_1,
  output [25-1:0] out_2,
  output [25-1:0] out_3,
  output [25-1:0] out_4,
  output [25-1:0] out_5,
  output [25-1:0] out_6,
  output [25-1:0] out_7,
  output [25-1:0] out_8,
  output [25-1:0] out_9,
  output [25-1:0] out_10,
  output [25-1:0] out_11,
  output [25-1:0] out_12,
  output [25-1:0] out_13,
  output [25-1:0] out_14
);
  wire [25-1:0] reinterpret7_output_port_net;
  wire [25-1:0] reinterpret12_output_port_net;
  wire [25-1:0] reinterpret2_output_port_net;
  wire [25-1:0] reinterpret8_output_port_net;
  wire [25-1:0] reinterpret11_output_port_net;
  wire [25-1:0] reinterpret5_output_port_net;
  wire [25-1:0] slice1_y_net;
  wire [25-1:0] slice2_y_net;
  wire [25-1:0] slice3_y_net;
  wire [25-1:0] reinterpret6_output_port_net;
  wire [25-1:0] reinterpret13_output_port_net;
  wire [25-1:0] slice4_y_net;
  wire [25-1:0] slice0_y_net;
  wire [25-1:0] reinterpret0_output_port_net;
  wire [25-1:0] reinterpret4_output_port_net;
  wire [25-1:0] slice5_y_net;
  wire [25-1:0] slice6_y_net;
  wire [25-1:0] reinterpret3_output_port_net;
  wire [25-1:0] reinterpret9_output_port_net;
  wire [25-1:0] reinterpret1_output_port_net;
  wire [25-1:0] reinterpret10_output_port_net;
  wire [25-1:0] slice8_y_net;
  wire [25-1:0] slice12_y_net;
  wire [25-1:0] slice13_y_net;
  wire [25-1:0] slice11_y_net;
  wire [25-1:0] slice7_y_net;
  wire [25-1:0] slice9_y_net;
  wire [25-1:0] slice10_y_net;
  assign out_1 = reinterpret0_output_port_net;
  assign out_2 = reinterpret1_output_port_net;
  assign out_3 = reinterpret2_output_port_net;
  assign out_4 = reinterpret3_output_port_net;
  assign out_5 = reinterpret4_output_port_net;
  assign out_6 = reinterpret5_output_port_net;
  assign out_7 = reinterpret6_output_port_net;
  assign out_8 = reinterpret7_output_port_net;
  assign out_9 = reinterpret8_output_port_net;
  assign out_10 = reinterpret9_output_port_net;
  assign out_11 = reinterpret10_output_port_net;
  assign out_12 = reinterpret11_output_port_net;
  assign out_13 = reinterpret12_output_port_net;
  assign out_14 = reinterpret13_output_port_net;
  assign slice0_y_net = in_1;
  assign slice1_y_net = in_2;
  assign slice2_y_net = in_3;
  assign slice3_y_net = in_4;
  assign slice4_y_net = in_5;
  assign slice5_y_net = in_6;
  assign slice6_y_net = in_7;
  assign slice7_y_net = in_8;
  assign slice8_y_net = in_9;
  assign slice9_y_net = in_10;
  assign slice10_y_net = in_11;
  assign slice11_y_net = in_12;
  assign slice12_y_net = in_13;
  assign slice13_y_net = in_14;
  sysgen_reinterpret_2e6151ebdc reinterpret0 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice0_y_net),
    .output_port(reinterpret0_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice1_y_net),
    .output_port(reinterpret1_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice2_y_net),
    .output_port(reinterpret2_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice3_y_net),
    .output_port(reinterpret3_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice4_y_net),
    .output_port(reinterpret4_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret5 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice5_y_net),
    .output_port(reinterpret5_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret6 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice6_y_net),
    .output_port(reinterpret6_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret7 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice7_y_net),
    .output_port(reinterpret7_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret8 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice8_y_net),
    .output_port(reinterpret8_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret9 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice9_y_net),
    .output_port(reinterpret9_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret10 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice10_y_net),
    .output_port(reinterpret10_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret11 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice11_y_net),
    .output_port(reinterpret11_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret12 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice12_y_net),
    .output_port(reinterpret12_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret13 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice13_y_net),
    .output_port(reinterpret13_output_port_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/AXI_clock_domain_wrapper/Vector Reinterpret5
module fpga_kf_3dof_plus_vector_reinterpret5 (
  input [25-1:0] in_1,
  input [25-1:0] in_2,
  input [25-1:0] in_3,
  input [25-1:0] in_4,
  input [25-1:0] in_5,
  input [25-1:0] in_6,
  input [25-1:0] in_7,
  input [25-1:0] in_8,
  input [25-1:0] in_9,
  input [25-1:0] in_10,
  input [25-1:0] in_11,
  input [25-1:0] in_12,
  input [25-1:0] in_13,
  input [25-1:0] in_14,
  output [25-1:0] out_1,
  output [25-1:0] out_2,
  output [25-1:0] out_3,
  output [25-1:0] out_4,
  output [25-1:0] out_5,
  output [25-1:0] out_6,
  output [25-1:0] out_7,
  output [25-1:0] out_8,
  output [25-1:0] out_9,
  output [25-1:0] out_10,
  output [25-1:0] out_11,
  output [25-1:0] out_12,
  output [25-1:0] out_13,
  output [25-1:0] out_14
);
  wire [25-1:0] reinterpret13_output_port_net;
  wire [25-1:0] slice3_y_net;
  wire [25-1:0] reinterpret5_output_port_net;
  wire [25-1:0] reinterpret3_output_port_net;
  wire [25-1:0] reinterpret8_output_port_net;
  wire [25-1:0] reinterpret10_output_port_net;
  wire [25-1:0] reinterpret11_output_port_net;
  wire [25-1:0] slice2_y_net;
  wire [25-1:0] slice4_y_net;
  wire [25-1:0] reinterpret2_output_port_net;
  wire [25-1:0] reinterpret7_output_port_net;
  wire [25-1:0] reinterpret12_output_port_net;
  wire [25-1:0] slice0_y_net;
  wire [25-1:0] reinterpret6_output_port_net;
  wire [25-1:0] slice5_y_net;
  wire [25-1:0] slice6_y_net;
  wire [25-1:0] slice7_y_net;
  wire [25-1:0] slice1_y_net;
  wire [25-1:0] reinterpret0_output_port_net;
  wire [25-1:0] reinterpret4_output_port_net;
  wire [25-1:0] reinterpret9_output_port_net;
  wire [25-1:0] reinterpret1_output_port_net;
  wire [25-1:0] slice13_y_net;
  wire [25-1:0] slice10_y_net;
  wire [25-1:0] slice11_y_net;
  wire [25-1:0] slice9_y_net;
  wire [25-1:0] slice12_y_net;
  wire [25-1:0] slice8_y_net;
  assign out_1 = reinterpret0_output_port_net;
  assign out_2 = reinterpret1_output_port_net;
  assign out_3 = reinterpret2_output_port_net;
  assign out_4 = reinterpret3_output_port_net;
  assign out_5 = reinterpret4_output_port_net;
  assign out_6 = reinterpret5_output_port_net;
  assign out_7 = reinterpret6_output_port_net;
  assign out_8 = reinterpret7_output_port_net;
  assign out_9 = reinterpret8_output_port_net;
  assign out_10 = reinterpret9_output_port_net;
  assign out_11 = reinterpret10_output_port_net;
  assign out_12 = reinterpret11_output_port_net;
  assign out_13 = reinterpret12_output_port_net;
  assign out_14 = reinterpret13_output_port_net;
  assign slice0_y_net = in_1;
  assign slice1_y_net = in_2;
  assign slice2_y_net = in_3;
  assign slice3_y_net = in_4;
  assign slice4_y_net = in_5;
  assign slice5_y_net = in_6;
  assign slice6_y_net = in_7;
  assign slice7_y_net = in_8;
  assign slice8_y_net = in_9;
  assign slice9_y_net = in_10;
  assign slice10_y_net = in_11;
  assign slice11_y_net = in_12;
  assign slice12_y_net = in_13;
  assign slice13_y_net = in_14;
  sysgen_reinterpret_2e6151ebdc reinterpret0 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice0_y_net),
    .output_port(reinterpret0_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice1_y_net),
    .output_port(reinterpret1_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice2_y_net),
    .output_port(reinterpret2_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice3_y_net),
    .output_port(reinterpret3_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice4_y_net),
    .output_port(reinterpret4_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret5 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice5_y_net),
    .output_port(reinterpret5_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret6 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice6_y_net),
    .output_port(reinterpret6_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret7 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice7_y_net),
    .output_port(reinterpret7_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret8 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice8_y_net),
    .output_port(reinterpret8_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret9 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice9_y_net),
    .output_port(reinterpret9_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret10 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice10_y_net),
    .output_port(reinterpret10_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret11 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice11_y_net),
    .output_port(reinterpret11_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret12 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice12_y_net),
    .output_port(reinterpret12_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret13 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice13_y_net),
    .output_port(reinterpret13_output_port_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/AXI_clock_domain_wrapper/Vector Reinterpret6
module fpga_kf_3dof_plus_vector_reinterpret6 (
  input [25-1:0] in_1,
  input [25-1:0] in_2,
  input [25-1:0] in_3,
  input [25-1:0] in_4,
  input [25-1:0] in_5,
  input [25-1:0] in_6,
  input [25-1:0] in_7,
  input [25-1:0] in_8,
  input [25-1:0] in_9,
  input [25-1:0] in_10,
  input [25-1:0] in_11,
  input [25-1:0] in_12,
  input [25-1:0] in_13,
  input [25-1:0] in_14,
  output [25-1:0] out_1,
  output [25-1:0] out_2,
  output [25-1:0] out_3,
  output [25-1:0] out_4,
  output [25-1:0] out_5,
  output [25-1:0] out_6,
  output [25-1:0] out_7,
  output [25-1:0] out_8,
  output [25-1:0] out_9,
  output [25-1:0] out_10,
  output [25-1:0] out_11,
  output [25-1:0] out_12,
  output [25-1:0] out_13,
  output [25-1:0] out_14
);
  wire [25-1:0] reinterpret12_output_port_net;
  wire [25-1:0] slice4_y_net;
  wire [25-1:0] reinterpret8_output_port_net;
  wire [25-1:0] reinterpret5_output_port_net;
  wire [25-1:0] reinterpret4_output_port_net;
  wire [25-1:0] reinterpret7_output_port_net;
  wire [25-1:0] reinterpret11_output_port_net;
  wire [25-1:0] slice1_y_net;
  wire [25-1:0] reinterpret1_output_port_net;
  wire [25-1:0] reinterpret9_output_port_net;
  wire [25-1:0] slice2_y_net;
  wire [25-1:0] slice3_y_net;
  wire [25-1:0] slice5_y_net;
  wire [25-1:0] slice6_y_net;
  wire [25-1:0] reinterpret2_output_port_net;
  wire [25-1:0] reinterpret6_output_port_net;
  wire [25-1:0] slice7_y_net;
  wire [25-1:0] reinterpret10_output_port_net;
  wire [25-1:0] reinterpret0_output_port_net;
  wire [25-1:0] reinterpret3_output_port_net;
  wire [25-1:0] reinterpret13_output_port_net;
  wire [25-1:0] slice0_y_net;
  wire [25-1:0] slice12_y_net;
  wire [25-1:0] slice9_y_net;
  wire [25-1:0] slice8_y_net;
  wire [25-1:0] slice13_y_net;
  wire [25-1:0] slice11_y_net;
  wire [25-1:0] slice10_y_net;
  assign out_1 = reinterpret0_output_port_net;
  assign out_2 = reinterpret1_output_port_net;
  assign out_3 = reinterpret2_output_port_net;
  assign out_4 = reinterpret3_output_port_net;
  assign out_5 = reinterpret4_output_port_net;
  assign out_6 = reinterpret5_output_port_net;
  assign out_7 = reinterpret6_output_port_net;
  assign out_8 = reinterpret7_output_port_net;
  assign out_9 = reinterpret8_output_port_net;
  assign out_10 = reinterpret9_output_port_net;
  assign out_11 = reinterpret10_output_port_net;
  assign out_12 = reinterpret11_output_port_net;
  assign out_13 = reinterpret12_output_port_net;
  assign out_14 = reinterpret13_output_port_net;
  assign slice0_y_net = in_1;
  assign slice1_y_net = in_2;
  assign slice2_y_net = in_3;
  assign slice3_y_net = in_4;
  assign slice4_y_net = in_5;
  assign slice5_y_net = in_6;
  assign slice6_y_net = in_7;
  assign slice7_y_net = in_8;
  assign slice8_y_net = in_9;
  assign slice9_y_net = in_10;
  assign slice10_y_net = in_11;
  assign slice11_y_net = in_12;
  assign slice12_y_net = in_13;
  assign slice13_y_net = in_14;
  sysgen_reinterpret_2e6151ebdc reinterpret0 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice0_y_net),
    .output_port(reinterpret0_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice1_y_net),
    .output_port(reinterpret1_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice2_y_net),
    .output_port(reinterpret2_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice3_y_net),
    .output_port(reinterpret3_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice4_y_net),
    .output_port(reinterpret4_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret5 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice5_y_net),
    .output_port(reinterpret5_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret6 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice6_y_net),
    .output_port(reinterpret6_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret7 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice7_y_net),
    .output_port(reinterpret7_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret8 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice8_y_net),
    .output_port(reinterpret8_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret9 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice9_y_net),
    .output_port(reinterpret9_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret10 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice10_y_net),
    .output_port(reinterpret10_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret11 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice11_y_net),
    .output_port(reinterpret11_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret12 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice12_y_net),
    .output_port(reinterpret12_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret13 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice13_y_net),
    .output_port(reinterpret13_output_port_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/AXI_clock_domain_wrapper/Vector Reinterpret7
module fpga_kf_3dof_plus_vector_reinterpret7 (
  input [25-1:0] in_1,
  input [25-1:0] in_2,
  input [25-1:0] in_3,
  input [25-1:0] in_4,
  input [25-1:0] in_5,
  input [25-1:0] in_6,
  input [25-1:0] in_7,
  input [25-1:0] in_8,
  input [25-1:0] in_9,
  input [25-1:0] in_10,
  input [25-1:0] in_11,
  input [25-1:0] in_12,
  input [25-1:0] in_13,
  input [25-1:0] in_14,
  output [25-1:0] out_1,
  output [25-1:0] out_2,
  output [25-1:0] out_3,
  output [25-1:0] out_4,
  output [25-1:0] out_5,
  output [25-1:0] out_6,
  output [25-1:0] out_7,
  output [25-1:0] out_8,
  output [25-1:0] out_9,
  output [25-1:0] out_10,
  output [25-1:0] out_11,
  output [25-1:0] out_12,
  output [25-1:0] out_13,
  output [25-1:0] out_14
);
  wire [25-1:0] reinterpret1_output_port_net;
  wire [25-1:0] reinterpret0_output_port_net;
  wire [25-1:0] reinterpret3_output_port_net;
  wire [25-1:0] reinterpret12_output_port_net;
  wire [25-1:0] reinterpret8_output_port_net;
  wire [25-1:0] reinterpret7_output_port_net;
  wire [25-1:0] slice0_y_net;
  wire [25-1:0] reinterpret6_output_port_net;
  wire [25-1:0] reinterpret13_output_port_net;
  wire [25-1:0] slice2_y_net;
  wire [25-1:0] slice5_y_net;
  wire [25-1:0] slice6_y_net;
  wire [25-1:0] slice4_y_net;
  wire [25-1:0] reinterpret10_output_port_net;
  wire [25-1:0] slice1_y_net;
  wire [25-1:0] reinterpret2_output_port_net;
  wire [25-1:0] slice3_y_net;
  wire [25-1:0] slice7_y_net;
  wire [25-1:0] slice8_y_net;
  wire [25-1:0] reinterpret4_output_port_net;
  wire [25-1:0] reinterpret9_output_port_net;
  wire [25-1:0] reinterpret5_output_port_net;
  wire [25-1:0] reinterpret11_output_port_net;
  wire [25-1:0] slice11_y_net;
  wire [25-1:0] slice13_y_net;
  wire [25-1:0] slice9_y_net;
  wire [25-1:0] slice10_y_net;
  wire [25-1:0] slice12_y_net;
  assign out_1 = reinterpret0_output_port_net;
  assign out_2 = reinterpret1_output_port_net;
  assign out_3 = reinterpret2_output_port_net;
  assign out_4 = reinterpret3_output_port_net;
  assign out_5 = reinterpret4_output_port_net;
  assign out_6 = reinterpret5_output_port_net;
  assign out_7 = reinterpret6_output_port_net;
  assign out_8 = reinterpret7_output_port_net;
  assign out_9 = reinterpret8_output_port_net;
  assign out_10 = reinterpret9_output_port_net;
  assign out_11 = reinterpret10_output_port_net;
  assign out_12 = reinterpret11_output_port_net;
  assign out_13 = reinterpret12_output_port_net;
  assign out_14 = reinterpret13_output_port_net;
  assign slice0_y_net = in_1;
  assign slice1_y_net = in_2;
  assign slice2_y_net = in_3;
  assign slice3_y_net = in_4;
  assign slice4_y_net = in_5;
  assign slice5_y_net = in_6;
  assign slice6_y_net = in_7;
  assign slice7_y_net = in_8;
  assign slice8_y_net = in_9;
  assign slice9_y_net = in_10;
  assign slice10_y_net = in_11;
  assign slice11_y_net = in_12;
  assign slice12_y_net = in_13;
  assign slice13_y_net = in_14;
  sysgen_reinterpret_2e6151ebdc reinterpret0 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice0_y_net),
    .output_port(reinterpret0_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice1_y_net),
    .output_port(reinterpret1_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice2_y_net),
    .output_port(reinterpret2_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice3_y_net),
    .output_port(reinterpret3_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice4_y_net),
    .output_port(reinterpret4_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret5 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice5_y_net),
    .output_port(reinterpret5_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret6 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice6_y_net),
    .output_port(reinterpret6_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret7 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice7_y_net),
    .output_port(reinterpret7_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret8 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice8_y_net),
    .output_port(reinterpret8_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret9 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice9_y_net),
    .output_port(reinterpret9_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret10 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice10_y_net),
    .output_port(reinterpret10_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret11 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice11_y_net),
    .output_port(reinterpret11_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret12 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice12_y_net),
    .output_port(reinterpret12_output_port_net)
  );
  sysgen_reinterpret_2e6151ebdc reinterpret13 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice13_y_net),
    .output_port(reinterpret13_output_port_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/AXI_clock_domain_wrapper
module fpga_kf_3dof_plus_axi_clock_domain_wrapper (
  input [32-1:0] registers_addr_in,
  input [25-1:0] registers_data_in,
  input [32-1:0] registers_subaddr_in,
  input [1-1:0] registers_update_in,
  input [1-1:0] registers_wren_in,
  input [14-1:0] adc_ch1_offst,
  input [14-1:0] adc_ch2_offst,
  input [2-1:0] ap_ip_switch_in,
  input [25-1:0] c_iu,
  input [1-1:0] disco_mode_enable,
  input [16-1:0] fixed_led_pattern_in,
  input [25-1:0] k_iu,
  input [25-1:0] barrier_c0_data_in,
  input [25-1:0] barrier_c1_data_in,
  input [25-1:0] barrier_c_idx_in,
  input [10-1:0] barrier_c_ofst_idx_in,
  input [10-1:0] barrier_ram_addr_in,
  input [1-1:0] barrier_ram_we_in,
  input [30-1:0] barrier_lb_in,
  input [30-1:0] barrier_ub_in,
  input [32-1:0] dma_trigger_time,
  input [3-1:0] fb_src_switch_in,
  input [1-1:0] iu_enb,
  input [25-1:0] iu_lb,
  input [25-1:0] iu_ub,
  input [14-1:0] noise_gain_in,
  input [14-1:0] out_switch_off,
  input [14-1:0] out_switch_on,
  input [32-1:0] reg_out_switch_t0,
  input [32-1:0] reg_out_switch_tf,
  input [32-1:0] reg_rp_switch_t0,
  input [32-1:0] reg_rp_switch_tf,
  input [32-1:0] reg_timer_period,
  input [2-1:0] sw_override_in,
  input [1-1:0] x_ref_enb,
  input [18-1:0] x_ref_in,
  input [30-1:0] x_ref_lb,
  input [30-1:0] x_ref_ub,
  input [14-1:0] dac_2_bias,
  input [14-1:0] dac_1_bias,
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
  output [2-1:0] potential_switch_override_reg_out,
  output [14-1:0] adc_offset_1,
  output [14-1:0] adc_offset_2,
  output [14-1:0] hw_switch_output,
  output [1-1:0] hw_switch_flag,
  output [18-1:0] x_ref_out,
  output [3-1:0] fb_src_switch_out,
  output [30-1:0] barrier_ub_lb_out_1,
  output [25-1:0] barrier_c_idx_out,
  output [10-1:0] barrier_c_ofst_idx_out,
  output [10-1:0] barrier_ram_addr_out,
  output [25-1:0] barrier_ram_data_out_1,
  output [1-1:0] barrier_ram_we_out,
  output [14-1:0] noise_gain_out,
  output [30-1:0] x_ref_ub_out,
  output [30-1:0] x_ref_lb_out,
  output [1-1:0] x_ref_enb_out,
  output [25-1:0] c_iu_out,
  output [25-1:0] iu_ub_out,
  output [25-1:0] iu_lb_out,
  output [1-1:0] iu_enb_out,
  output [25-1:0] k_iu_out,
  output [14-1:0] dac_1_bias_out,
  output [14-1:0] dac_2_bias_out,
  output [25-1:0] f_reg_out_2,
  output [25-1:0] f_reg_out_3,
  output [25-1:0] f_reg_out_4,
  output [25-1:0] f_reg_out_5,
  output [25-1:0] f_reg_out_6,
  output [25-1:0] f_reg_out_7,
  output [25-1:0] f_reg_out_8,
  output [25-1:0] f_reg_out_9,
  output [25-1:0] f_reg_out_10,
  output [25-1:0] f_reg_out_11,
  output [25-1:0] f_reg_out_12,
  output [25-1:0] f_reg_out_13,
  output [25-1:0] f_reg_out_14,
  output [25-1:0] f_reg_out_15,
  output [25-1:0] f_reg_out_16,
  output [25-1:0] f_reg_out_17,
  output [25-1:0] f_reg_out_18,
  output [25-1:0] f_reg_out_19,
  output [25-1:0] f_reg_out_20,
  output [25-1:0] f_reg_out_21,
  output [25-1:0] f_reg_out_22,
  output [25-1:0] f_reg_out_23,
  output [25-1:0] f_reg_out_24,
  output [25-1:0] f_reg_out_25,
  output [25-1:0] f_reg_out_26,
  output [25-1:0] f_reg_out_27,
  output [25-1:0] f_reg_out_28,
  output [25-1:0] f_reg_out_29,
  output [25-1:0] f_reg_out_30,
  output [25-1:0] f_reg_out_31,
  output [25-1:0] f_reg_out_32,
  output [25-1:0] f_reg_out_33,
  output [25-1:0] f_reg_out_34,
  output [25-1:0] f_reg_out_35,
  output [25-1:0] f_reg_out_36,
  output [25-1:0] f_reg_out_37,
  output [25-1:0] f_reg_out_38,
  output [25-1:0] f_reg_out_39,
  output [25-1:0] f_reg_out_40,
  output [25-1:0] f_reg_out_41,
  output [25-1:0] f_reg_out_42,
  output [25-1:0] f_reg_out_43,
  output [25-1:0] f_reg_out_44,
  output [25-1:0] f_reg_out_45,
  output [25-1:0] f_reg_out_46,
  output [25-1:0] f_reg_out_47,
  output [25-1:0] f_reg_out_48,
  output [25-1:0] f_reg_out_49,
  output [25-1:0] l_reg_out_2,
  output [25-1:0] l_reg_out_3,
  output [25-1:0] l_reg_out_4,
  output [25-1:0] l_reg_out_5,
  output [25-1:0] l_reg_out_6,
  output [25-1:0] l_reg_out_7,
  output [25-1:0] l_reg_out_8,
  output [25-1:0] l_reg_out_9,
  output [25-1:0] l_reg_out_10,
  output [25-1:0] l_reg_out_11,
  output [25-1:0] l_reg_out_12,
  output [25-1:0] l_reg_out_13,
  output [25-1:0] l_reg_out_14,
  output [25-1:0] k_reg_out_2,
  output [25-1:0] k_reg_out_3,
  output [25-1:0] k_reg_out_4,
  output [25-1:0] k_reg_out_5,
  output [25-1:0] k_reg_out_6,
  output [25-1:0] k_reg_out_7,
  output [25-1:0] k_reg_out_8,
  output [25-1:0] k_reg_out_9,
  output [25-1:0] k_reg_out_10,
  output [25-1:0] k_reg_out_11,
  output [25-1:0] k_reg_out_12,
  output [25-1:0] k_reg_out_13,
  output [25-1:0] k_reg_out_14,
  output [25-1:0] b_reg_out_2,
  output [25-1:0] b_reg_out_3,
  output [25-1:0] b_reg_out_4,
  output [25-1:0] b_reg_out_5,
  output [25-1:0] b_reg_out_6,
  output [25-1:0] b_reg_out_7,
  output [25-1:0] b_reg_out_8,
  output [25-1:0] b_reg_out_9,
  output [25-1:0] b_reg_out_10,
  output [25-1:0] b_reg_out_11,
  output [25-1:0] b_reg_out_12,
  output [25-1:0] b_reg_out_13,
  output [25-1:0] b_reg_out_14,
  output [25-1:0] f_ip_reg_out_2,
  output [25-1:0] f_ip_reg_out_3,
  output [25-1:0] f_ip_reg_out_4,
  output [25-1:0] f_ip_reg_out_5,
  output [25-1:0] f_ip_reg_out_6,
  output [25-1:0] f_ip_reg_out_7,
  output [25-1:0] f_ip_reg_out_8,
  output [25-1:0] f_ip_reg_out_9,
  output [25-1:0] f_ip_reg_out_10,
  output [25-1:0] f_ip_reg_out_11,
  output [25-1:0] f_ip_reg_out_12,
  output [25-1:0] f_ip_reg_out_13,
  output [25-1:0] f_ip_reg_out_14,
  output [25-1:0] f_ip_reg_out_15,
  output [25-1:0] f_ip_reg_out_16,
  output [25-1:0] f_ip_reg_out_17,
  output [25-1:0] f_ip_reg_out_18,
  output [25-1:0] f_ip_reg_out_19,
  output [25-1:0] f_ip_reg_out_20,
  output [25-1:0] f_ip_reg_out_21,
  output [25-1:0] f_ip_reg_out_22,
  output [25-1:0] f_ip_reg_out_23,
  output [25-1:0] f_ip_reg_out_24,
  output [25-1:0] f_ip_reg_out_25,
  output [25-1:0] f_ip_reg_out_26,
  output [25-1:0] f_ip_reg_out_27,
  output [25-1:0] f_ip_reg_out_28,
  output [25-1:0] f_ip_reg_out_29,
  output [25-1:0] f_ip_reg_out_30,
  output [25-1:0] f_ip_reg_out_31,
  output [25-1:0] f_ip_reg_out_32,
  output [25-1:0] f_ip_reg_out_33,
  output [25-1:0] f_ip_reg_out_34,
  output [25-1:0] f_ip_reg_out_35,
  output [25-1:0] f_ip_reg_out_36,
  output [25-1:0] f_ip_reg_out_37,
  output [25-1:0] f_ip_reg_out_38,
  output [25-1:0] f_ip_reg_out_39,
  output [25-1:0] f_ip_reg_out_40,
  output [25-1:0] f_ip_reg_out_41,
  output [25-1:0] f_ip_reg_out_42,
  output [25-1:0] f_ip_reg_out_43,
  output [25-1:0] f_ip_reg_out_44,
  output [25-1:0] f_ip_reg_out_45,
  output [25-1:0] f_ip_reg_out_46,
  output [25-1:0] f_ip_reg_out_47,
  output [25-1:0] f_ip_reg_out_48,
  output [25-1:0] f_ip_reg_out_49,
  output [25-1:0] l_ip_reg_out_2,
  output [25-1:0] l_ip_reg_out_3,
  output [25-1:0] l_ip_reg_out_4,
  output [25-1:0] l_ip_reg_out_5,
  output [25-1:0] l_ip_reg_out_6,
  output [25-1:0] l_ip_reg_out_7,
  output [25-1:0] l_ip_reg_out_8,
  output [25-1:0] l_ip_reg_out_9,
  output [25-1:0] l_ip_reg_out_10,
  output [25-1:0] l_ip_reg_out_11,
  output [25-1:0] l_ip_reg_out_12,
  output [25-1:0] l_ip_reg_out_13,
  output [25-1:0] l_ip_reg_out_14,
  output [25-1:0] k_ip_reg_out_2,
  output [25-1:0] k_ip_reg_out_3,
  output [25-1:0] k_ip_reg_out_4,
  output [25-1:0] k_ip_reg_out_5,
  output [25-1:0] k_ip_reg_out_6,
  output [25-1:0] k_ip_reg_out_7,
  output [25-1:0] k_ip_reg_out_8,
  output [25-1:0] k_ip_reg_out_9,
  output [25-1:0] k_ip_reg_out_10,
  output [25-1:0] k_ip_reg_out_11,
  output [25-1:0] k_ip_reg_out_12,
  output [25-1:0] k_ip_reg_out_13,
  output [25-1:0] k_ip_reg_out_14,
  output [25-1:0] b_ip_reg_out_2,
  output [25-1:0] b_ip_reg_out_3,
  output [25-1:0] b_ip_reg_out_4,
  output [25-1:0] b_ip_reg_out_5,
  output [25-1:0] b_ip_reg_out_6,
  output [25-1:0] b_ip_reg_out_7,
  output [25-1:0] b_ip_reg_out_8,
  output [25-1:0] b_ip_reg_out_9,
  output [25-1:0] b_ip_reg_out_10,
  output [25-1:0] b_ip_reg_out_11,
  output [25-1:0] b_ip_reg_out_12,
  output [25-1:0] b_ip_reg_out_13,
  output [25-1:0] b_ip_reg_out_14,
  output [30-1:0] barrier_ub_lb_out_2,
  output [25-1:0] barrier_ram_data_out_2,
  output [1-1:0] tmr_dma_trigger_output
);
  wire [3-1:0] register17_q_net;
  wire [14-1:0] dac_enable_y_net;
  wire [25-1:0] reinterpret0_output_port_net_x4;
  wire [18-1:0] register16_q_net;
  wire [25-1:0] reinterpret0_output_port_net_x2;
  wire [25-1:0] reinterpret0_output_port_net_x5;
  wire [25-1:0] reinterpret0_output_port_net;
  wire [10-1:0] register19_q_net;
  wire [10-1:0] register20_q_net;
  wire [25-1:0] reinterpret0_output_port_net_x1;
  wire [14-1:0] register7_q_net;
  wire [14-1:0] register8_q_net;
  wire [6-1:0] mux_y_net;
  wire [25-1:0] register0_q_net;
  wire [1-1:0] sw_switch_mux_y_net;
  wire [25-1:0] reinterpret0_output_port_net_x6;
  wire [1-1:0] register21_q_net;
  wire [30-1:0] register0_q_net_x0;
  wire [25-1:0] reinterpret0_output_port_net_x3;
  wire [2-1:0] register6_q_net;
  wire [25-1:0] reinterpret0_output_port_net_x0;
  wire [1-1:0] hw_switch_flag_delay_match_q_net;
  wire [25-1:0] register18_q_net;
  wire [25-1:0] reinterpret9_output_port_net_x2;
  wire [30-1:0] register24_q_net;
  wire [25-1:0] reinterpret19_output_port_net_x0;
  wire [25-1:0] reinterpret10_output_port_net_x3;
  wire [25-1:0] reinterpret4_output_port_net_x3;
  wire [25-1:0] reinterpret15_output_port_net_x0;
  wire [25-1:0] reinterpret3_output_port_net_x3;
  wire [25-1:0] register29_q_net;
  wire [25-1:0] reinterpret2_output_port_net_x3;
  wire [25-1:0] reinterpret5_output_port_net_x3;
  wire [25-1:0] reinterpret17_output_port_net_x0;
  wire [25-1:0] register27_q_net;
  wire [25-1:0] reinterpret7_output_port_net_x2;
  wire [1-1:0] register26_q_net;
  wire [25-1:0] reinterpret12_output_port_net_x3;
  wire [25-1:0] reinterpret18_output_port_net_x0;
  wire [25-1:0] register31_q_net;
  wire [25-1:0] reinterpret20_output_port_net_x0;
  wire [25-1:0] reinterpret8_output_port_net_x2;
  wire [25-1:0] reinterpret11_output_port_net_x3;
  wire [25-1:0] reinterpret14_output_port_net_x0;
  wire [1-1:0] register30_q_net;
  wire [25-1:0] reinterpret21_output_port_net_x0;
  wire [25-1:0] reinterpret13_output_port_net_x3;
  wire [25-1:0] reinterpret16_output_port_net_x0;
  wire [25-1:0] register28_q_net;
  wire [14-1:0] register33_q_net;
  wire [14-1:0] register32_q_net;
  wire [30-1:0] register25_q_net;
  wire [25-1:0] reinterpret6_output_port_net_x3;
  wire [25-1:0] reinterpret1_output_port_net_x3;
  wire [14-1:0] register22_q_net;
  wire [25-1:0] reinterpret35_output_port_net_x0;
  wire [25-1:0] reinterpret26_output_port_net_x0;
  wire [25-1:0] reinterpret38_output_port_net_x0;
  wire [25-1:0] reinterpret27_output_port_net_x0;
  wire [25-1:0] reinterpret40_output_port_net_x0;
  wire [25-1:0] reinterpret42_output_port_net_x0;
  wire [25-1:0] reinterpret45_output_port_net_x0;
  wire [25-1:0] reinterpret47_output_port_net_x0;
  wire [25-1:0] reinterpret37_output_port_net_x0;
  wire [25-1:0] reinterpret48_output_port_net_x0;
  wire [25-1:0] reinterpret32_output_port_net_x0;
  wire [25-1:0] reinterpret23_output_port_net_x0;
  wire [25-1:0] reinterpret25_output_port_net_x0;
  wire [25-1:0] reinterpret33_output_port_net_x0;
  wire [25-1:0] reinterpret28_output_port_net_x0;
  wire [25-1:0] reinterpret31_output_port_net_x0;
  wire [25-1:0] reinterpret43_output_port_net_x0;
  wire [25-1:0] reinterpret22_output_port_net_x0;
  wire [25-1:0] reinterpret44_output_port_net_x0;
  wire [25-1:0] reinterpret39_output_port_net_x0;
  wire [25-1:0] reinterpret41_output_port_net_x0;
  wire [25-1:0] reinterpret46_output_port_net_x0;
  wire [25-1:0] reinterpret2_output_port_net_x1;
  wire [25-1:0] reinterpret4_output_port_net_x1;
  wire [25-1:0] reinterpret36_output_port_net_x0;
  wire [25-1:0] reinterpret5_output_port_net_x1;
  wire [25-1:0] reinterpret1_output_port_net_x1;
  wire [25-1:0] reinterpret3_output_port_net_x1;
  wire [25-1:0] reinterpret29_output_port_net_x0;
  wire [25-1:0] reinterpret30_output_port_net_x0;
  wire [25-1:0] reinterpret34_output_port_net_x0;
  wire [25-1:0] reinterpret24_output_port_net_x0;
  wire [25-1:0] reinterpret1_output_port_net;
  wire [25-1:0] reinterpret5_output_port_net;
  wire [25-1:0] reinterpret11_output_port_net;
  wire [25-1:0] reinterpret10_output_port_net_x1;
  wire [25-1:0] reinterpret11_output_port_net_x1;
  wire [25-1:0] reinterpret9_output_port_net;
  wire [25-1:0] reinterpret13_output_port_net_x1;
  wire [25-1:0] reinterpret12_output_port_net_x0;
  wire [25-1:0] reinterpret7_output_port_net_x6;
  wire [25-1:0] reinterpret6_output_port_net_x1;
  wire [25-1:0] reinterpret13_output_port_net_x0;
  wire [25-1:0] reinterpret11_output_port_net_x0;
  wire [25-1:0] reinterpret6_output_port_net_x0;
  wire [25-1:0] reinterpret3_output_port_net;
  wire [25-1:0] reinterpret8_output_port_net;
  wire [25-1:0] reinterpret4_output_port_net;
  wire [25-1:0] reinterpret12_output_port_net_x1;
  wire [25-1:0] reinterpret2_output_port_net_x0;
  wire [25-1:0] reinterpret6_output_port_net;
  wire [25-1:0] reinterpret4_output_port_net_x0;
  wire [25-1:0] reinterpret7_output_port_net;
  wire [25-1:0] reinterpret8_output_port_net_x6;
  wire [25-1:0] reinterpret9_output_port_net_x6;
  wire [25-1:0] reinterpret9_output_port_net_x0;
  wire [25-1:0] reinterpret8_output_port_net_x0;
  wire [25-1:0] reinterpret7_output_port_net_x0;
  wire [25-1:0] reinterpret2_output_port_net;
  wire [25-1:0] reinterpret10_output_port_net;
  wire [25-1:0] reinterpret5_output_port_net_x0;
  wire [25-1:0] reinterpret10_output_port_net_x0;
  wire [25-1:0] reinterpret3_output_port_net_x0;
  wire [25-1:0] reinterpret1_output_port_net_x0;
  wire [25-1:0] reinterpret1_output_port_net_x2;
  wire [25-1:0] reinterpret13_output_port_net;
  wire [25-1:0] reinterpret22_output_port_net;
  wire [25-1:0] reinterpret23_output_port_net;
  wire [25-1:0] reinterpret12_output_port_net;
  wire [25-1:0] reinterpret21_output_port_net;
  wire [25-1:0] reinterpret19_output_port_net;
  wire [25-1:0] reinterpret2_output_port_net_x2;
  wire [25-1:0] reinterpret20_output_port_net;
  wire [25-1:0] reinterpret3_output_port_net_x2;
  wire [25-1:0] reinterpret11_output_port_net_x2;
  wire [25-1:0] reinterpret14_output_port_net;
  wire [25-1:0] reinterpret4_output_port_net_x2;
  wire [25-1:0] reinterpret13_output_port_net_x2;
  wire [25-1:0] reinterpret15_output_port_net;
  wire [25-1:0] reinterpret18_output_port_net;
  wire [25-1:0] reinterpret24_output_port_net;
  wire [25-1:0] reinterpret25_output_port_net;
  wire [25-1:0] reinterpret26_output_port_net;
  wire [25-1:0] reinterpret27_output_port_net;
  wire [25-1:0] reinterpret28_output_port_net;
  wire [25-1:0] reinterpret29_output_port_net;
  wire [25-1:0] reinterpret8_output_port_net_x1;
  wire [25-1:0] reinterpret17_output_port_net;
  wire [25-1:0] reinterpret7_output_port_net_x1;
  wire [25-1:0] reinterpret5_output_port_net_x2;
  wire [25-1:0] reinterpret10_output_port_net_x2;
  wire [25-1:0] reinterpret30_output_port_net;
  wire [25-1:0] reinterpret6_output_port_net_x2;
  wire [25-1:0] reinterpret9_output_port_net_x1;
  wire [25-1:0] reinterpret12_output_port_net_x2;
  wire [25-1:0] reinterpret16_output_port_net;
  wire [25-1:0] reinterpret32_output_port_net;
  wire [25-1:0] reinterpret41_output_port_net;
  wire [25-1:0] reinterpret44_output_port_net;
  wire [25-1:0] reinterpret34_output_port_net;
  wire [25-1:0] reinterpret43_output_port_net;
  wire [25-1:0] reinterpret46_output_port_net;
  wire [25-1:0] reinterpret48_output_port_net;
  wire [25-1:0] reinterpret31_output_port_net;
  wire [25-1:0] reinterpret36_output_port_net;
  wire [25-1:0] reinterpret2_output_port_net_x6;
  wire [25-1:0] reinterpret37_output_port_net;
  wire [25-1:0] reinterpret1_output_port_net_x6;
  wire [25-1:0] reinterpret39_output_port_net;
  wire [25-1:0] reinterpret3_output_port_net_x6;
  wire [25-1:0] reinterpret6_output_port_net_x6;
  wire [25-1:0] reinterpret9_output_port_net_x5;
  wire [25-1:0] reinterpret40_output_port_net;
  wire [25-1:0] reinterpret38_output_port_net;
  wire [25-1:0] reinterpret42_output_port_net;
  wire [25-1:0] reinterpret45_output_port_net;
  wire [25-1:0] reinterpret8_output_port_net_x5;
  wire [25-1:0] reinterpret10_output_port_net_x6;
  wire [25-1:0] reinterpret11_output_port_net_x6;
  wire [25-1:0] reinterpret12_output_port_net_x6;
  wire [25-1:0] reinterpret13_output_port_net_x6;
  wire [25-1:0] reinterpret1_output_port_net_x5;
  wire [25-1:0] reinterpret5_output_port_net_x6;
  wire [25-1:0] reinterpret35_output_port_net;
  wire [25-1:0] reinterpret47_output_port_net;
  wire [25-1:0] reinterpret4_output_port_net_x6;
  wire [25-1:0] reinterpret33_output_port_net;
  wire [25-1:0] reinterpret7_output_port_net_x5;
  wire [25-1:0] reinterpret2_output_port_net_x5;
  wire [25-1:0] reinterpret7_output_port_net_x4;
  wire [25-1:0] reinterpret9_output_port_net_x4;
  wire [25-1:0] reinterpret12_output_port_net_x5;
  wire [25-1:0] reinterpret13_output_port_net_x5;
  wire [25-1:0] reinterpret3_output_port_net_x4;
  wire [25-1:0] reinterpret11_output_port_net_x4;
  wire [25-1:0] reinterpret12_output_port_net_x4;
  wire [25-1:0] reinterpret8_output_port_net_x4;
  wire [25-1:0] reinterpret10_output_port_net_x5;
  wire [25-1:0] reinterpret6_output_port_net_x4;
  wire [25-1:0] reinterpret5_output_port_net_x5;
  wire [25-1:0] reinterpret13_output_port_net_x4;
  wire [25-1:0] reinterpret7_output_port_net_x3;
  wire [25-1:0] reinterpret5_output_port_net_x4;
  wire [25-1:0] reinterpret11_output_port_net_x5;
  wire [25-1:0] reinterpret10_output_port_net_x4;
  wire [25-1:0] reinterpret4_output_port_net_x5;
  wire [25-1:0] reinterpret2_output_port_net_x4;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] reinterpret1_output_port_net_x4;
  wire [32-1:0] registers_addr_in_net;
  wire [25-1:0] registers_data_in_net;
  wire [1-1:0] registers_update_in_net;
  wire [25-1:0] reinterpret9_output_port_net_x3;
  wire [25-1:0] reinterpret3_output_port_net_x5;
  wire [32-1:0] registers_subaddr_in_net;
  wire [30-1:0] register1_q_net_x0;
  wire [1-1:0] registers_wren_in_net;
  wire [25-1:0] reinterpret6_output_port_net_x5;
  wire [25-1:0] reinterpret4_output_port_net_x4;
  wire [25-1:0] reinterpret8_output_port_net_x3;
  wire [25-1:0] k_iu_net;
  wire [32-1:0] reg_out_switch_t0_net;
  wire [32-1:0] reg_out_switch_tf_net;
  wire [1-1:0] x_ref_enb_net;
  wire [1-1:0] barrier_ram_we_in_net;
  wire [18-1:0] x_ref_in_net;
  wire [1-1:0] iu_enb_net;
  wire [1-1:0] disco_mode_enable_net;
  wire [25-1:0] iu_lb_net;
  wire [14-1:0] adc_ch2_offst_net;
  wire [1-1:0] dma_trigger_threshold_op_net;
  wire [25-1:0] barrier_c1_data_in_net;
  wire [10-1:0] barrier_c_ofst_idx_in_net;
  wire [30-1:0] barrier_ub_in_net;
  wire [32-1:0] dma_trigger_time_net;
  wire [14-1:0] out_switch_off_net;
  wire [32-1:0] reg_rp_switch_tf_net;
  wire [14-1:0] adc_ch1_offst_net;
  wire [16-1:0] fixed_led_pattern_in_net;
  wire [32-1:0] reg_timer_period_net;
  wire [30-1:0] barrier_lb_in_net;
  wire [14-1:0] noise_gain_in_net;
  wire [2-1:0] sw_override_in_net;
  wire [25-1:0] c_iu_net;
  wire [25-1:0] barrier_c0_data_in_net;
  wire [25-1:0] barrier_c_idx_in_net;
  wire [10-1:0] barrier_ram_addr_in_net;
  wire [2-1:0] ap_ip_switch_in_net;
  wire [3-1:0] fb_src_switch_in_net;
  wire [14-1:0] out_switch_on_net;
  wire [32-1:0] reg_rp_switch_t0_net;
  wire [25-1:0] iu_ub_net;
  wire [25-1:0] slice39_y_net_x0;
  wire [25-1:0] slice20_y_net_x0;
  wire [25-1:0] slice2_y_net_x6;
  wire [25-1:0] slice13_y_net_x6;
  wire [25-1:0] slice5_y_net_x6;
  wire [25-1:0] slice23_y_net_x0;
  wire [25-1:0] slice30_y_net_x0;
  wire [25-1:0] slice34_y_net_x0;
  wire [25-1:0] slice27_y_net_x0;
  wire [25-1:0] slice40_y_net_x0;
  wire [25-1:0] slice41_y_net_x0;
  wire [25-1:0] slice6_y_net_x6;
  wire [25-1:0] slice29_y_net_x0;
  wire [25-1:0] slice21_y_net_x0;
  wire [25-1:0] slice42_y_net_x0;
  wire [25-1:0] slice36_y_net_x0;
  wire [25-1:0] slice43_y_net_x0;
  wire [25-1:0] slice45_y_net_x0;
  wire [25-1:0] slice1_y_net_x7;
  wire [25-1:0] slice31_y_net_x0;
  wire [25-1:0] slice10_y_net_x6;
  wire [25-1:0] slice25_y_net_x0;
  wire [25-1:0] slice18_y_net_x0;
  wire [25-1:0] slice44_y_net_x0;
  wire [25-1:0] slice47_y_net_x0;
  wire [25-1:0] slice48_y_net_x0;
  wire [30-1:0] x_ref_ub_net;
  wire [25-1:0] slice0_y_net_x6;
  wire [25-1:0] slice24_y_net_x0;
  wire [25-1:0] slice26_y_net_x0;
  wire [25-1:0] slice8_y_net_x6;
  wire [25-1:0] slice35_y_net_x0;
  wire [25-1:0] slice33_y_net_x0;
  wire [14-1:0] dac_2_bias_net;
  wire [25-1:0] slice37_y_net_x0;
  wire [25-1:0] slice0_y_net_x5;
  wire [25-1:0] slice1_y_net_x6;
  wire [25-1:0] slice16_y_net_x0;
  wire [25-1:0] slice2_y_net_x5;
  wire [25-1:0] slice4_y_net_x6;
  wire [30-1:0] x_ref_lb_net;
  wire [25-1:0] slice17_y_net_x0;
  wire [25-1:0] slice22_y_net_x0;
  wire [25-1:0] slice38_y_net_x0;
  wire [25-1:0] slice9_y_net_x6;
  wire [1225-1:0] f_mat_store_mat_out_net;
  wire [25-1:0] slice7_y_net_x6;
  wire [25-1:0] slice46_y_net_x0;
  wire clk_net;
  wire [14-1:0] dac_1_bias_net;
  wire ce_net;
  wire [25-1:0] slice3_y_net_x6;
  wire [25-1:0] slice11_y_net_x5;
  wire [25-1:0] slice14_y_net_x0;
  wire [25-1:0] slice15_y_net_x0;
  wire [25-1:0] slice12_y_net_x6;
  wire [25-1:0] slice19_y_net_x0;
  wire [25-1:0] slice28_y_net_x0;
  wire [25-1:0] slice32_y_net_x0;
  wire [25-1:0] slice0_y_net_x4;
  wire [25-1:0] slice4_y_net_x5;
  wire [25-1:0] slice7_y_net_x5;
  wire [25-1:0] slice8_y_net_x5;
  wire [25-1:0] slice28_y_net;
  wire [25-1:0] slice10_y_net_x5;
  wire [25-1:0] slice30_y_net;
  wire [25-1:0] slice32_y_net;
  wire [25-1:0] slice23_y_net;
  wire [25-1:0] slice40_y_net;
  wire [25-1:0] slice33_y_net;
  wire [25-1:0] slice38_y_net;
  wire [25-1:0] slice44_y_net;
  wire [25-1:0] slice9_y_net_x5;
  wire [25-1:0] slice11_y_net_x6;
  wire [25-1:0] slice25_y_net;
  wire [25-1:0] slice45_y_net;
  wire [25-1:0] slice2_y_net_x4;
  wire [25-1:0] slice3_y_net_x4;
  wire [25-1:0] slice5_y_net_x4;
  wire [25-1:0] slice6_y_net_x4;
  wire [25-1:0] slice7_y_net_x4;
  wire [25-1:0] slice9_y_net_x4;
  wire [25-1:0] slice12_y_net_x5;
  wire [25-1:0] slice10_y_net_x4;
  wire [25-1:0] slice16_y_net;
  wire [25-1:0] slice21_y_net;
  wire [25-1:0] slice22_y_net;
  wire [25-1:0] slice39_y_net;
  wire [25-1:0] slice47_y_net;
  wire [25-1:0] slice13_y_net_x5;
  wire [1225-1:0] f_ip_mat_store_mat_out_net;
  wire [25-1:0] slice24_y_net;
  wire [25-1:0] slice26_y_net;
  wire [25-1:0] slice34_y_net;
  wire [25-1:0] slice37_y_net;
  wire [25-1:0] slice48_y_net;
  wire [25-1:0] slice4_y_net_x4;
  wire [25-1:0] slice11_y_net_x4;
  wire [25-1:0] slice12_y_net_x4;
  wire [25-1:0] slice8_y_net_x4;
  wire [25-1:0] slice27_y_net;
  wire [25-1:0] slice13_y_net_x4;
  wire [350-1:0] l_mat_store_mat_out_net;
  wire [25-1:0] slice1_y_net_x5;
  wire [25-1:0] slice42_y_net;
  wire [25-1:0] slice0_y_net_x3;
  wire [25-1:0] slice1_y_net_x4;
  wire [25-1:0] slice14_y_net;
  wire [25-1:0] slice5_y_net_x5;
  wire [25-1:0] slice35_y_net;
  wire [25-1:0] slice20_y_net;
  wire [25-1:0] slice17_y_net;
  wire [25-1:0] slice31_y_net;
  wire [25-1:0] slice15_y_net;
  wire [25-1:0] slice6_y_net_x5;
  wire [25-1:0] slice3_y_net_x5;
  wire [25-1:0] slice29_y_net;
  wire [25-1:0] slice19_y_net;
  wire [25-1:0] slice36_y_net;
  wire [25-1:0] slice18_y_net;
  wire [25-1:0] slice41_y_net;
  wire [25-1:0] slice43_y_net;
  wire [25-1:0] slice46_y_net;
  wire [25-1:0] slice5_y_net_x2;
  wire [25-1:0] slice3_y_net_x0;
  wire [25-1:0] slice7_y_net_x1;
  wire [25-1:0] slice4_y_net_x0;
  wire [25-1:0] slice9_y_net_x0;
  wire [25-1:0] slice11_y_net_x0;
  wire [25-1:0] slice0_y_net_x2;
  wire [25-1:0] slice13_y_net_x0;
  wire [25-1:0] slice12_y_net_x2;
  wire [25-1:0] slice6_y_net_x1;
  wire [25-1:0] slice2_y_net_x3;
  wire [25-1:0] slice2_y_net_x1;
  wire [25-1:0] slice6_y_net_x0;
  wire [25-1:0] slice11_y_net_x3;
  wire [25-1:0] slice8_y_net_x0;
  wire [350-1:0] k_ip_mat_store_mat_out_net;
  wire [25-1:0] slice1_y_net_x0;
  wire [25-1:0] slice5_y_net_x3;
  wire [25-1:0] slice8_y_net_x3;
  wire [25-1:0] slice3_y_net_x2;
  wire [25-1:0] slice8_y_net_x2;
  wire [25-1:0] slice13_y_net_x2;
  wire [25-1:0] slice5_y_net_x0;
  wire [25-1:0] slice2_y_net_x2;
  wire [25-1:0] slice10_y_net_x0;
  wire [25-1:0] slice11_y_net_x1;
  wire [25-1:0] slice0_y_net_x0;
  wire [25-1:0] slice11_y_net_x2;
  wire [25-1:0] slice12_y_net_x0;
  wire [25-1:0] slice7_y_net_x2;
  wire [25-1:0] slice2_y_net;
  wire [25-1:0] slice10_y_net_x3;
  wire [25-1:0] slice3_y_net_x3;
  wire [25-1:0] slice12_y_net_x3;
  wire [25-1:0] slice7_y_net_x0;
  wire [25-1:0] slice0_y_net;
  wire [350-1:0] k_mat_store_mat_out_net;
  wire [25-1:0] slice1_y_net_x3;
  wire [25-1:0] slice8_y_net_x1;
  wire [25-1:0] slice13_y_net_x3;
  wire [25-1:0] slice9_y_net_x1;
  wire [25-1:0] slice7_y_net_x3;
  wire [25-1:0] slice3_y_net;
  wire [25-1:0] slice5_y_net_x1;
  wire [25-1:0] slice10_y_net_x2;
  wire [25-1:0] slice3_y_net_x1;
  wire [25-1:0] slice6_y_net_x2;
  wire [25-1:0] slice4_y_net_x1;
  wire [25-1:0] slice9_y_net_x3;
  wire [25-1:0] slice4_y_net_x2;
  wire [25-1:0] slice4_y_net_x3;
  wire [25-1:0] slice6_y_net_x3;
  wire [25-1:0] slice9_y_net_x2;
  wire [350-1:0] b_mat_store_mat_out_net;
  wire [25-1:0] slice1_y_net_x2;
  wire [25-1:0] slice10_y_net_x1;
  wire [25-1:0] slice12_y_net_x1;
  wire [350-1:0] l_ip_mat_store_mat_out_net;
  wire [25-1:0] slice1_y_net_x1;
  wire [25-1:0] slice0_y_net_x1;
  wire [25-1:0] slice13_y_net_x1;
  wire [25-1:0] slice2_y_net_x0;
  wire [1-1:0] register3_q_net;
  wire [25-1:0] slice13_y_net;
  wire [25-1:0] slice5_y_net;
  wire [32-1:0] register23_q_net;
  wire [25-1:0] register15_q_net;
  wire [1-1:0] register5_q_net;
  wire [25-1:0] slice6_y_net;
  wire [25-1:0] slice4_y_net;
  wire [1-1:0] switching_logic_selector_y_net;
  wire [14-1:0] ip_ap_value_mux_y_net;
  wire [14-1:0] dac_value_mux_y_net;
  wire [25-1:0] slice10_y_net;
  wire [1-1:0] out_switch_enable_y_net;
  wire [25-1:0] slice8_y_net;
  wire [32-1:0] register4_q_net;
  wire [1-1:0] register2_q_net;
  wire [25-1:0] slice9_y_net;
  wire [25-1:0] slice7_y_net;
  wire [24-1:0] counter_op_net;
  wire [25-1:0] slice11_y_net;
  wire [350-1:0] b_ip_mat_store_mat_out_net;
  wire [25-1:0] slice12_y_net;
  wire [1-1:0] inverter_op_net;
  wire [1-1:0] sw_switch_y_net;
  wire [32-1:0] register10_q_net;
  wire [32-1:0] register12_q_net;
  wire [16-1:0] register_q_net;
  wire [32-1:0] register13_q_net;
  wire [32-1:0] register14_q_net;
  wire [6-1:0] reinterpret_output_port_net;
  wire [6-1:0] slice_y_net;
  wire [32-1:0] register11_q_net;
  wire [2-1:0] register1_q_net_x1;
  wire [1-1:0] rp_switch_delay_match_q_net;
  wire [1-1:0] out_switch_tf_op_net;
  wire [6-1:0] slice1_y_net;
  wire [32-1:0] register9_q_net;
  wire [1-1:0] out_switch_t0_op_net;
  wire [32-1:0] sec_counter_op_net;
  wire [1-1:0] rp_switch_tf_op_net;
  wire [1-1:0] period_reached_switch_op_net;
  wire [1-1:0] rp_switch_enable_y_net;
  wire [1-1:0] rp_switch_t0_op_net;
  assign ap_ip_switch_out = sw_switch_mux_y_net;
  assign f_reg_out_1 = reinterpret0_output_port_net_x3;
  assign l_reg_out_1 = reinterpret0_output_port_net_x1;
  assign k_reg_out_1 = reinterpret0_output_port_net_x0;
  assign b_reg_out_1 = reinterpret0_output_port_net;
  assign f_ip_reg_out_1 = reinterpret0_output_port_net_x2;
  assign l_ip_reg_out_1 = reinterpret0_output_port_net_x6;
  assign k_ip_reg_out_1 = reinterpret0_output_port_net_x5;
  assign b_ip_reg_out_1 = reinterpret0_output_port_net_x4;
  assign leds_cross_out = mux_y_net;
  assign potential_switch_override_reg_out = register6_q_net;
  assign adc_offset_1 = register7_q_net;
  assign adc_offset_2 = register8_q_net;
  assign hw_switch_output = dac_enable_y_net;
  assign hw_switch_flag = hw_switch_flag_delay_match_q_net;
  assign x_ref_out = register16_q_net;
  assign fb_src_switch_out = register17_q_net;
  assign barrier_ub_lb_out_1 = register0_q_net_x0;
  assign barrier_c_idx_out = register18_q_net;
  assign barrier_c_ofst_idx_out = register19_q_net;
  assign barrier_ram_addr_out = register20_q_net;
  assign barrier_ram_data_out_1 = register0_q_net;
  assign barrier_ram_we_out = register21_q_net;
  assign noise_gain_out = register22_q_net;
  assign x_ref_ub_out = register24_q_net;
  assign x_ref_lb_out = register25_q_net;
  assign x_ref_enb_out = register26_q_net;
  assign c_iu_out = register27_q_net;
  assign iu_ub_out = register28_q_net;
  assign iu_lb_out = register29_q_net;
  assign iu_enb_out = register30_q_net;
  assign k_iu_out = register31_q_net;
  assign dac_1_bias_out = register32_q_net;
  assign dac_2_bias_out = register33_q_net;
  assign f_reg_out_2 = reinterpret1_output_port_net_x3;
  assign f_reg_out_3 = reinterpret2_output_port_net_x3;
  assign f_reg_out_4 = reinterpret3_output_port_net_x3;
  assign f_reg_out_5 = reinterpret4_output_port_net_x3;
  assign f_reg_out_6 = reinterpret5_output_port_net_x3;
  assign f_reg_out_7 = reinterpret6_output_port_net_x3;
  assign f_reg_out_8 = reinterpret7_output_port_net_x2;
  assign f_reg_out_9 = reinterpret8_output_port_net_x2;
  assign f_reg_out_10 = reinterpret9_output_port_net_x2;
  assign f_reg_out_11 = reinterpret10_output_port_net_x3;
  assign f_reg_out_12 = reinterpret11_output_port_net_x3;
  assign f_reg_out_13 = reinterpret12_output_port_net_x3;
  assign f_reg_out_14 = reinterpret13_output_port_net_x3;
  assign f_reg_out_15 = reinterpret14_output_port_net_x0;
  assign f_reg_out_16 = reinterpret15_output_port_net_x0;
  assign f_reg_out_17 = reinterpret16_output_port_net_x0;
  assign f_reg_out_18 = reinterpret17_output_port_net_x0;
  assign f_reg_out_19 = reinterpret18_output_port_net_x0;
  assign f_reg_out_20 = reinterpret19_output_port_net_x0;
  assign f_reg_out_21 = reinterpret20_output_port_net_x0;
  assign f_reg_out_22 = reinterpret21_output_port_net_x0;
  assign f_reg_out_23 = reinterpret22_output_port_net_x0;
  assign f_reg_out_24 = reinterpret23_output_port_net_x0;
  assign f_reg_out_25 = reinterpret24_output_port_net_x0;
  assign f_reg_out_26 = reinterpret25_output_port_net_x0;
  assign f_reg_out_27 = reinterpret26_output_port_net_x0;
  assign f_reg_out_28 = reinterpret27_output_port_net_x0;
  assign f_reg_out_29 = reinterpret28_output_port_net_x0;
  assign f_reg_out_30 = reinterpret29_output_port_net_x0;
  assign f_reg_out_31 = reinterpret30_output_port_net_x0;
  assign f_reg_out_32 = reinterpret31_output_port_net_x0;
  assign f_reg_out_33 = reinterpret32_output_port_net_x0;
  assign f_reg_out_34 = reinterpret33_output_port_net_x0;
  assign f_reg_out_35 = reinterpret34_output_port_net_x0;
  assign f_reg_out_36 = reinterpret35_output_port_net_x0;
  assign f_reg_out_37 = reinterpret36_output_port_net_x0;
  assign f_reg_out_38 = reinterpret37_output_port_net_x0;
  assign f_reg_out_39 = reinterpret38_output_port_net_x0;
  assign f_reg_out_40 = reinterpret39_output_port_net_x0;
  assign f_reg_out_41 = reinterpret40_output_port_net_x0;
  assign f_reg_out_42 = reinterpret41_output_port_net_x0;
  assign f_reg_out_43 = reinterpret42_output_port_net_x0;
  assign f_reg_out_44 = reinterpret43_output_port_net_x0;
  assign f_reg_out_45 = reinterpret44_output_port_net_x0;
  assign f_reg_out_46 = reinterpret45_output_port_net_x0;
  assign f_reg_out_47 = reinterpret46_output_port_net_x0;
  assign f_reg_out_48 = reinterpret47_output_port_net_x0;
  assign f_reg_out_49 = reinterpret48_output_port_net_x0;
  assign l_reg_out_2 = reinterpret1_output_port_net_x1;
  assign l_reg_out_3 = reinterpret2_output_port_net_x1;
  assign l_reg_out_4 = reinterpret3_output_port_net_x1;
  assign l_reg_out_5 = reinterpret4_output_port_net_x1;
  assign l_reg_out_6 = reinterpret5_output_port_net_x1;
  assign l_reg_out_7 = reinterpret6_output_port_net_x1;
  assign l_reg_out_8 = reinterpret7_output_port_net_x0;
  assign l_reg_out_9 = reinterpret8_output_port_net_x0;
  assign l_reg_out_10 = reinterpret9_output_port_net_x0;
  assign l_reg_out_11 = reinterpret10_output_port_net_x1;
  assign l_reg_out_12 = reinterpret11_output_port_net_x1;
  assign l_reg_out_13 = reinterpret12_output_port_net_x1;
  assign l_reg_out_14 = reinterpret13_output_port_net_x1;
  assign k_reg_out_2 = reinterpret1_output_port_net_x0;
  assign k_reg_out_3 = reinterpret2_output_port_net_x0;
  assign k_reg_out_4 = reinterpret3_output_port_net_x0;
  assign k_reg_out_5 = reinterpret4_output_port_net_x0;
  assign k_reg_out_6 = reinterpret5_output_port_net_x0;
  assign k_reg_out_7 = reinterpret6_output_port_net_x0;
  assign k_reg_out_8 = reinterpret7_output_port_net;
  assign k_reg_out_9 = reinterpret8_output_port_net;
  assign k_reg_out_10 = reinterpret9_output_port_net;
  assign k_reg_out_11 = reinterpret10_output_port_net_x0;
  assign k_reg_out_12 = reinterpret11_output_port_net_x0;
  assign k_reg_out_13 = reinterpret12_output_port_net_x0;
  assign k_reg_out_14 = reinterpret13_output_port_net_x0;
  assign b_reg_out_2 = reinterpret1_output_port_net;
  assign b_reg_out_3 = reinterpret2_output_port_net;
  assign b_reg_out_4 = reinterpret3_output_port_net;
  assign b_reg_out_5 = reinterpret4_output_port_net;
  assign b_reg_out_6 = reinterpret5_output_port_net;
  assign b_reg_out_7 = reinterpret6_output_port_net;
  assign b_reg_out_8 = reinterpret7_output_port_net_x6;
  assign b_reg_out_9 = reinterpret8_output_port_net_x6;
  assign b_reg_out_10 = reinterpret9_output_port_net_x6;
  assign b_reg_out_11 = reinterpret10_output_port_net;
  assign b_reg_out_12 = reinterpret11_output_port_net;
  assign b_reg_out_13 = reinterpret12_output_port_net;
  assign b_reg_out_14 = reinterpret13_output_port_net;
  assign f_ip_reg_out_2 = reinterpret1_output_port_net_x2;
  assign f_ip_reg_out_3 = reinterpret2_output_port_net_x2;
  assign f_ip_reg_out_4 = reinterpret3_output_port_net_x2;
  assign f_ip_reg_out_5 = reinterpret4_output_port_net_x2;
  assign f_ip_reg_out_6 = reinterpret5_output_port_net_x2;
  assign f_ip_reg_out_7 = reinterpret6_output_port_net_x2;
  assign f_ip_reg_out_8 = reinterpret7_output_port_net_x1;
  assign f_ip_reg_out_9 = reinterpret8_output_port_net_x1;
  assign f_ip_reg_out_10 = reinterpret9_output_port_net_x1;
  assign f_ip_reg_out_11 = reinterpret10_output_port_net_x2;
  assign f_ip_reg_out_12 = reinterpret11_output_port_net_x2;
  assign f_ip_reg_out_13 = reinterpret12_output_port_net_x2;
  assign f_ip_reg_out_14 = reinterpret13_output_port_net_x2;
  assign f_ip_reg_out_15 = reinterpret14_output_port_net;
  assign f_ip_reg_out_16 = reinterpret15_output_port_net;
  assign f_ip_reg_out_17 = reinterpret16_output_port_net;
  assign f_ip_reg_out_18 = reinterpret17_output_port_net;
  assign f_ip_reg_out_19 = reinterpret18_output_port_net;
  assign f_ip_reg_out_20 = reinterpret19_output_port_net;
  assign f_ip_reg_out_21 = reinterpret20_output_port_net;
  assign f_ip_reg_out_22 = reinterpret21_output_port_net;
  assign f_ip_reg_out_23 = reinterpret22_output_port_net;
  assign f_ip_reg_out_24 = reinterpret23_output_port_net;
  assign f_ip_reg_out_25 = reinterpret24_output_port_net;
  assign f_ip_reg_out_26 = reinterpret25_output_port_net;
  assign f_ip_reg_out_27 = reinterpret26_output_port_net;
  assign f_ip_reg_out_28 = reinterpret27_output_port_net;
  assign f_ip_reg_out_29 = reinterpret28_output_port_net;
  assign f_ip_reg_out_30 = reinterpret29_output_port_net;
  assign f_ip_reg_out_31 = reinterpret30_output_port_net;
  assign f_ip_reg_out_32 = reinterpret31_output_port_net;
  assign f_ip_reg_out_33 = reinterpret32_output_port_net;
  assign f_ip_reg_out_34 = reinterpret33_output_port_net;
  assign f_ip_reg_out_35 = reinterpret34_output_port_net;
  assign f_ip_reg_out_36 = reinterpret35_output_port_net;
  assign f_ip_reg_out_37 = reinterpret36_output_port_net;
  assign f_ip_reg_out_38 = reinterpret37_output_port_net;
  assign f_ip_reg_out_39 = reinterpret38_output_port_net;
  assign f_ip_reg_out_40 = reinterpret39_output_port_net;
  assign f_ip_reg_out_41 = reinterpret40_output_port_net;
  assign f_ip_reg_out_42 = reinterpret41_output_port_net;
  assign f_ip_reg_out_43 = reinterpret42_output_port_net;
  assign f_ip_reg_out_44 = reinterpret43_output_port_net;
  assign f_ip_reg_out_45 = reinterpret44_output_port_net;
  assign f_ip_reg_out_46 = reinterpret45_output_port_net;
  assign f_ip_reg_out_47 = reinterpret46_output_port_net;
  assign f_ip_reg_out_48 = reinterpret47_output_port_net;
  assign f_ip_reg_out_49 = reinterpret48_output_port_net;
  assign l_ip_reg_out_2 = reinterpret1_output_port_net_x6;
  assign l_ip_reg_out_3 = reinterpret2_output_port_net_x6;
  assign l_ip_reg_out_4 = reinterpret3_output_port_net_x6;
  assign l_ip_reg_out_5 = reinterpret4_output_port_net_x6;
  assign l_ip_reg_out_6 = reinterpret5_output_port_net_x6;
  assign l_ip_reg_out_7 = reinterpret6_output_port_net_x6;
  assign l_ip_reg_out_8 = reinterpret7_output_port_net_x5;
  assign l_ip_reg_out_9 = reinterpret8_output_port_net_x5;
  assign l_ip_reg_out_10 = reinterpret9_output_port_net_x5;
  assign l_ip_reg_out_11 = reinterpret10_output_port_net_x6;
  assign l_ip_reg_out_12 = reinterpret11_output_port_net_x6;
  assign l_ip_reg_out_13 = reinterpret12_output_port_net_x6;
  assign l_ip_reg_out_14 = reinterpret13_output_port_net_x6;
  assign k_ip_reg_out_2 = reinterpret1_output_port_net_x5;
  assign k_ip_reg_out_3 = reinterpret2_output_port_net_x5;
  assign k_ip_reg_out_4 = reinterpret3_output_port_net_x5;
  assign k_ip_reg_out_5 = reinterpret4_output_port_net_x5;
  assign k_ip_reg_out_6 = reinterpret5_output_port_net_x5;
  assign k_ip_reg_out_7 = reinterpret6_output_port_net_x5;
  assign k_ip_reg_out_8 = reinterpret7_output_port_net_x4;
  assign k_ip_reg_out_9 = reinterpret8_output_port_net_x4;
  assign k_ip_reg_out_10 = reinterpret9_output_port_net_x4;
  assign k_ip_reg_out_11 = reinterpret10_output_port_net_x5;
  assign k_ip_reg_out_12 = reinterpret11_output_port_net_x5;
  assign k_ip_reg_out_13 = reinterpret12_output_port_net_x5;
  assign k_ip_reg_out_14 = reinterpret13_output_port_net_x5;
  assign b_ip_reg_out_2 = reinterpret1_output_port_net_x4;
  assign b_ip_reg_out_3 = reinterpret2_output_port_net_x4;
  assign b_ip_reg_out_4 = reinterpret3_output_port_net_x4;
  assign b_ip_reg_out_5 = reinterpret4_output_port_net_x4;
  assign b_ip_reg_out_6 = reinterpret5_output_port_net_x4;
  assign b_ip_reg_out_7 = reinterpret6_output_port_net_x4;
  assign b_ip_reg_out_8 = reinterpret7_output_port_net_x3;
  assign b_ip_reg_out_9 = reinterpret8_output_port_net_x3;
  assign b_ip_reg_out_10 = reinterpret9_output_port_net_x3;
  assign b_ip_reg_out_11 = reinterpret10_output_port_net_x4;
  assign b_ip_reg_out_12 = reinterpret11_output_port_net_x4;
  assign b_ip_reg_out_13 = reinterpret12_output_port_net_x4;
  assign b_ip_reg_out_14 = reinterpret13_output_port_net_x4;
  assign barrier_ub_lb_out_2 = register1_q_net_x0;
  assign barrier_ram_data_out_2 = register1_q_net;
  assign registers_addr_in_net = registers_addr_in;
  assign registers_data_in_net = registers_data_in;
  assign registers_subaddr_in_net = registers_subaddr_in;
  assign registers_update_in_net = registers_update_in;
  assign registers_wren_in_net = registers_wren_in;
  assign adc_ch1_offst_net = adc_ch1_offst;
  assign adc_ch2_offst_net = adc_ch2_offst;
  assign ap_ip_switch_in_net = ap_ip_switch_in;
  assign c_iu_net = c_iu;
  assign disco_mode_enable_net = disco_mode_enable;
  assign fixed_led_pattern_in_net = fixed_led_pattern_in;
  assign k_iu_net = k_iu;
  assign tmr_dma_trigger_output = dma_trigger_threshold_op_net;
  assign barrier_c0_data_in_net = barrier_c0_data_in;
  assign barrier_c1_data_in_net = barrier_c1_data_in;
  assign barrier_c_idx_in_net = barrier_c_idx_in;
  assign barrier_c_ofst_idx_in_net = barrier_c_ofst_idx_in;
  assign barrier_ram_addr_in_net = barrier_ram_addr_in;
  assign barrier_ram_we_in_net = barrier_ram_we_in;
  assign barrier_lb_in_net = barrier_lb_in;
  assign barrier_ub_in_net = barrier_ub_in;
  assign dma_trigger_time_net = dma_trigger_time;
  assign fb_src_switch_in_net = fb_src_switch_in;
  assign iu_enb_net = iu_enb;
  assign iu_lb_net = iu_lb;
  assign iu_ub_net = iu_ub;
  assign noise_gain_in_net = noise_gain_in;
  assign out_switch_off_net = out_switch_off;
  assign out_switch_on_net = out_switch_on;
  assign reg_out_switch_t0_net = reg_out_switch_t0;
  assign reg_out_switch_tf_net = reg_out_switch_tf;
  assign reg_rp_switch_t0_net = reg_rp_switch_t0;
  assign reg_rp_switch_tf_net = reg_rp_switch_tf;
  assign reg_timer_period_net = reg_timer_period;
  assign sw_override_in_net = sw_override_in;
  assign x_ref_enb_net = x_ref_enb;
  assign x_ref_in_net = x_ref_in;
  assign x_ref_lb_net = x_ref_lb;
  assign x_ref_ub_net = x_ref_ub;
  assign dac_2_bias_net = dac_2_bias;
  assign dac_1_bias_net = dac_1_bias;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf_3dof_plus_scalar_to_vector scalar_to_vector (
    .i(f_mat_store_mat_out_net),
    .o_1(slice0_y_net_x6),
    .o_2(slice1_y_net_x7),
    .o_3(slice2_y_net_x6),
    .o_4(slice3_y_net_x6),
    .o_5(slice4_y_net_x6),
    .o_6(slice5_y_net_x6),
    .o_7(slice6_y_net_x6),
    .o_8(slice7_y_net_x6),
    .o_9(slice8_y_net_x6),
    .o_10(slice9_y_net_x6),
    .o_11(slice10_y_net_x6),
    .o_12(slice11_y_net_x5),
    .o_13(slice12_y_net_x6),
    .o_14(slice13_y_net_x6),
    .o_15(slice14_y_net_x0),
    .o_16(slice15_y_net_x0),
    .o_17(slice16_y_net_x0),
    .o_18(slice17_y_net_x0),
    .o_19(slice18_y_net_x0),
    .o_20(slice19_y_net_x0),
    .o_21(slice20_y_net_x0),
    .o_22(slice21_y_net_x0),
    .o_23(slice22_y_net_x0),
    .o_24(slice23_y_net_x0),
    .o_25(slice24_y_net_x0),
    .o_26(slice25_y_net_x0),
    .o_27(slice26_y_net_x0),
    .o_28(slice27_y_net_x0),
    .o_29(slice28_y_net_x0),
    .o_30(slice29_y_net_x0),
    .o_31(slice30_y_net_x0),
    .o_32(slice31_y_net_x0),
    .o_33(slice32_y_net_x0),
    .o_34(slice33_y_net_x0),
    .o_35(slice34_y_net_x0),
    .o_36(slice35_y_net_x0),
    .o_37(slice36_y_net_x0),
    .o_38(slice37_y_net_x0),
    .o_39(slice38_y_net_x0),
    .o_40(slice39_y_net_x0),
    .o_41(slice40_y_net_x0),
    .o_42(slice41_y_net_x0),
    .o_43(slice42_y_net_x0),
    .o_44(slice43_y_net_x0),
    .o_45(slice44_y_net_x0),
    .o_46(slice45_y_net_x0),
    .o_47(slice46_y_net_x0),
    .o_48(slice47_y_net_x0),
    .o_49(slice48_y_net_x0)
  );
  fpga_kf_3dof_plus_scalar_to_vector1 scalar_to_vector1 (
    .i(f_ip_mat_store_mat_out_net),
    .o_1(slice0_y_net_x5),
    .o_2(slice1_y_net_x6),
    .o_3(slice2_y_net_x5),
    .o_4(slice3_y_net_x5),
    .o_5(slice4_y_net_x5),
    .o_6(slice5_y_net_x5),
    .o_7(slice6_y_net_x5),
    .o_8(slice7_y_net_x5),
    .o_9(slice8_y_net_x5),
    .o_10(slice9_y_net_x5),
    .o_11(slice10_y_net_x5),
    .o_12(slice11_y_net_x6),
    .o_13(slice12_y_net_x5),
    .o_14(slice13_y_net_x5),
    .o_15(slice14_y_net),
    .o_16(slice15_y_net),
    .o_17(slice16_y_net),
    .o_18(slice17_y_net),
    .o_19(slice18_y_net),
    .o_20(slice19_y_net),
    .o_21(slice20_y_net),
    .o_22(slice21_y_net),
    .o_23(slice22_y_net),
    .o_24(slice23_y_net),
    .o_25(slice24_y_net),
    .o_26(slice25_y_net),
    .o_27(slice26_y_net),
    .o_28(slice27_y_net),
    .o_29(slice28_y_net),
    .o_30(slice29_y_net),
    .o_31(slice30_y_net),
    .o_32(slice31_y_net),
    .o_33(slice32_y_net),
    .o_34(slice33_y_net),
    .o_35(slice34_y_net),
    .o_36(slice35_y_net),
    .o_37(slice36_y_net),
    .o_38(slice37_y_net),
    .o_39(slice38_y_net),
    .o_40(slice39_y_net),
    .o_41(slice40_y_net),
    .o_42(slice41_y_net),
    .o_43(slice42_y_net),
    .o_44(slice43_y_net),
    .o_45(slice44_y_net),
    .o_46(slice45_y_net),
    .o_47(slice46_y_net),
    .o_48(slice47_y_net),
    .o_49(slice48_y_net)
  );
  fpga_kf_3dof_plus_scalar_to_vector2 scalar_to_vector2 (
    .i(l_mat_store_mat_out_net),
    .o_1(slice0_y_net_x4),
    .o_2(slice1_y_net_x5),
    .o_3(slice2_y_net_x4),
    .o_4(slice3_y_net_x4),
    .o_5(slice4_y_net_x4),
    .o_6(slice5_y_net_x4),
    .o_7(slice6_y_net_x4),
    .o_8(slice7_y_net_x4),
    .o_9(slice8_y_net_x4),
    .o_10(slice9_y_net_x4),
    .o_11(slice10_y_net_x4),
    .o_12(slice11_y_net_x4),
    .o_13(slice12_y_net_x4),
    .o_14(slice13_y_net_x4)
  );
  fpga_kf_3dof_plus_scalar_to_vector3 scalar_to_vector3 (
    .i(k_mat_store_mat_out_net),
    .o_1(slice0_y_net_x3),
    .o_2(slice1_y_net_x4),
    .o_3(slice2_y_net_x3),
    .o_4(slice3_y_net_x3),
    .o_5(slice4_y_net_x3),
    .o_6(slice5_y_net_x3),
    .o_7(slice6_y_net_x3),
    .o_8(slice7_y_net_x3),
    .o_9(slice8_y_net_x3),
    .o_10(slice9_y_net_x3),
    .o_11(slice10_y_net_x3),
    .o_12(slice11_y_net_x3),
    .o_13(slice12_y_net_x3),
    .o_14(slice13_y_net_x3)
  );
  fpga_kf_3dof_plus_scalar_to_vector4 scalar_to_vector4 (
    .i(b_mat_store_mat_out_net),
    .o_1(slice0_y_net_x2),
    .o_2(slice1_y_net_x3),
    .o_3(slice2_y_net_x2),
    .o_4(slice3_y_net_x2),
    .o_5(slice4_y_net_x2),
    .o_6(slice5_y_net_x2),
    .o_7(slice6_y_net_x2),
    .o_8(slice7_y_net_x2),
    .o_9(slice8_y_net_x2),
    .o_10(slice9_y_net_x2),
    .o_11(slice10_y_net_x2),
    .o_12(slice11_y_net_x2),
    .o_13(slice12_y_net_x2),
    .o_14(slice13_y_net_x2)
  );
  fpga_kf_3dof_plus_scalar_to_vector5 scalar_to_vector5 (
    .i(l_ip_mat_store_mat_out_net),
    .o_1(slice0_y_net_x1),
    .o_2(slice1_y_net_x2),
    .o_3(slice2_y_net_x1),
    .o_4(slice3_y_net_x1),
    .o_5(slice4_y_net_x1),
    .o_6(slice5_y_net_x1),
    .o_7(slice6_y_net_x1),
    .o_8(slice7_y_net_x1),
    .o_9(slice8_y_net_x1),
    .o_10(slice9_y_net_x1),
    .o_11(slice10_y_net_x1),
    .o_12(slice11_y_net_x1),
    .o_13(slice12_y_net_x1),
    .o_14(slice13_y_net_x1)
  );
  fpga_kf_3dof_plus_scalar_to_vector6 scalar_to_vector6 (
    .i(k_ip_mat_store_mat_out_net),
    .o_1(slice0_y_net_x0),
    .o_2(slice1_y_net_x1),
    .o_3(slice2_y_net_x0),
    .o_4(slice3_y_net_x0),
    .o_5(slice4_y_net_x0),
    .o_6(slice5_y_net_x0),
    .o_7(slice6_y_net_x0),
    .o_8(slice7_y_net_x0),
    .o_9(slice8_y_net_x0),
    .o_10(slice9_y_net_x0),
    .o_11(slice10_y_net_x0),
    .o_12(slice11_y_net_x0),
    .o_13(slice12_y_net_x0),
    .o_14(slice13_y_net_x0)
  );
  fpga_kf_3dof_plus_scalar_to_vector7 scalar_to_vector7 (
    .i(b_ip_mat_store_mat_out_net),
    .o_1(slice0_y_net),
    .o_2(slice1_y_net_x0),
    .o_3(slice2_y_net),
    .o_4(slice3_y_net),
    .o_5(slice4_y_net),
    .o_6(slice5_y_net),
    .o_7(slice6_y_net),
    .o_8(slice7_y_net),
    .o_9(slice8_y_net),
    .o_10(slice9_y_net),
    .o_11(slice10_y_net),
    .o_12(slice11_y_net),
    .o_13(slice12_y_net),
    .o_14(slice13_y_net)
  );
  fpga_kf_3dof_plus_vector_register7 vector_register7 (
    .d_1(barrier_ub_in_net),
    .d_2(barrier_lb_in_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .q_1(register0_q_net_x0),
    .q_2(register1_q_net_x0)
  );
  fpga_kf_3dof_plus_vector_register8 vector_register8 (
    .d_1(barrier_c0_data_in_net),
    .d_2(barrier_c1_data_in_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .q_1(register0_q_net),
    .q_2(register1_q_net)
  );
  fpga_kf_3dof_plus_vector_reinterpret vector_reinterpret (
    .in_1(slice0_y_net_x6),
    .in_2(slice1_y_net_x7),
    .in_3(slice2_y_net_x6),
    .in_4(slice3_y_net_x6),
    .in_5(slice4_y_net_x6),
    .in_6(slice5_y_net_x6),
    .in_7(slice6_y_net_x6),
    .in_8(slice7_y_net_x6),
    .in_9(slice8_y_net_x6),
    .in_10(slice9_y_net_x6),
    .in_11(slice10_y_net_x6),
    .in_12(slice11_y_net_x5),
    .in_13(slice12_y_net_x6),
    .in_14(slice13_y_net_x6),
    .in_15(slice14_y_net_x0),
    .in_16(slice15_y_net_x0),
    .in_17(slice16_y_net_x0),
    .in_18(slice17_y_net_x0),
    .in_19(slice18_y_net_x0),
    .in_20(slice19_y_net_x0),
    .in_21(slice20_y_net_x0),
    .in_22(slice21_y_net_x0),
    .in_23(slice22_y_net_x0),
    .in_24(slice23_y_net_x0),
    .in_25(slice24_y_net_x0),
    .in_26(slice25_y_net_x0),
    .in_27(slice26_y_net_x0),
    .in_28(slice27_y_net_x0),
    .in_29(slice28_y_net_x0),
    .in_30(slice29_y_net_x0),
    .in_31(slice30_y_net_x0),
    .in_32(slice31_y_net_x0),
    .in_33(slice32_y_net_x0),
    .in_34(slice33_y_net_x0),
    .in_35(slice34_y_net_x0),
    .in_36(slice35_y_net_x0),
    .in_37(slice36_y_net_x0),
    .in_38(slice37_y_net_x0),
    .in_39(slice38_y_net_x0),
    .in_40(slice39_y_net_x0),
    .in_41(slice40_y_net_x0),
    .in_42(slice41_y_net_x0),
    .in_43(slice42_y_net_x0),
    .in_44(slice43_y_net_x0),
    .in_45(slice44_y_net_x0),
    .in_46(slice45_y_net_x0),
    .in_47(slice46_y_net_x0),
    .in_48(slice47_y_net_x0),
    .in_49(slice48_y_net_x0),
    .out_1(reinterpret0_output_port_net_x3),
    .out_2(reinterpret1_output_port_net_x3),
    .out_3(reinterpret2_output_port_net_x3),
    .out_4(reinterpret3_output_port_net_x3),
    .out_5(reinterpret4_output_port_net_x3),
    .out_6(reinterpret5_output_port_net_x3),
    .out_7(reinterpret6_output_port_net_x3),
    .out_8(reinterpret7_output_port_net_x2),
    .out_9(reinterpret8_output_port_net_x2),
    .out_10(reinterpret9_output_port_net_x2),
    .out_11(reinterpret10_output_port_net_x3),
    .out_12(reinterpret11_output_port_net_x3),
    .out_13(reinterpret12_output_port_net_x3),
    .out_14(reinterpret13_output_port_net_x3),
    .out_15(reinterpret14_output_port_net_x0),
    .out_16(reinterpret15_output_port_net_x0),
    .out_17(reinterpret16_output_port_net_x0),
    .out_18(reinterpret17_output_port_net_x0),
    .out_19(reinterpret18_output_port_net_x0),
    .out_20(reinterpret19_output_port_net_x0),
    .out_21(reinterpret20_output_port_net_x0),
    .out_22(reinterpret21_output_port_net_x0),
    .out_23(reinterpret22_output_port_net_x0),
    .out_24(reinterpret23_output_port_net_x0),
    .out_25(reinterpret24_output_port_net_x0),
    .out_26(reinterpret25_output_port_net_x0),
    .out_27(reinterpret26_output_port_net_x0),
    .out_28(reinterpret27_output_port_net_x0),
    .out_29(reinterpret28_output_port_net_x0),
    .out_30(reinterpret29_output_port_net_x0),
    .out_31(reinterpret30_output_port_net_x0),
    .out_32(reinterpret31_output_port_net_x0),
    .out_33(reinterpret32_output_port_net_x0),
    .out_34(reinterpret33_output_port_net_x0),
    .out_35(reinterpret34_output_port_net_x0),
    .out_36(reinterpret35_output_port_net_x0),
    .out_37(reinterpret36_output_port_net_x0),
    .out_38(reinterpret37_output_port_net_x0),
    .out_39(reinterpret38_output_port_net_x0),
    .out_40(reinterpret39_output_port_net_x0),
    .out_41(reinterpret40_output_port_net_x0),
    .out_42(reinterpret41_output_port_net_x0),
    .out_43(reinterpret42_output_port_net_x0),
    .out_44(reinterpret43_output_port_net_x0),
    .out_45(reinterpret44_output_port_net_x0),
    .out_46(reinterpret45_output_port_net_x0),
    .out_47(reinterpret46_output_port_net_x0),
    .out_48(reinterpret47_output_port_net_x0),
    .out_49(reinterpret48_output_port_net_x0)
  );
  fpga_kf_3dof_plus_vector_reinterpret1 vector_reinterpret1 (
    .in_1(slice0_y_net_x5),
    .in_2(slice1_y_net_x6),
    .in_3(slice2_y_net_x5),
    .in_4(slice3_y_net_x5),
    .in_5(slice4_y_net_x5),
    .in_6(slice5_y_net_x5),
    .in_7(slice6_y_net_x5),
    .in_8(slice7_y_net_x5),
    .in_9(slice8_y_net_x5),
    .in_10(slice9_y_net_x5),
    .in_11(slice10_y_net_x5),
    .in_12(slice11_y_net_x6),
    .in_13(slice12_y_net_x5),
    .in_14(slice13_y_net_x5),
    .in_15(slice14_y_net),
    .in_16(slice15_y_net),
    .in_17(slice16_y_net),
    .in_18(slice17_y_net),
    .in_19(slice18_y_net),
    .in_20(slice19_y_net),
    .in_21(slice20_y_net),
    .in_22(slice21_y_net),
    .in_23(slice22_y_net),
    .in_24(slice23_y_net),
    .in_25(slice24_y_net),
    .in_26(slice25_y_net),
    .in_27(slice26_y_net),
    .in_28(slice27_y_net),
    .in_29(slice28_y_net),
    .in_30(slice29_y_net),
    .in_31(slice30_y_net),
    .in_32(slice31_y_net),
    .in_33(slice32_y_net),
    .in_34(slice33_y_net),
    .in_35(slice34_y_net),
    .in_36(slice35_y_net),
    .in_37(slice36_y_net),
    .in_38(slice37_y_net),
    .in_39(slice38_y_net),
    .in_40(slice39_y_net),
    .in_41(slice40_y_net),
    .in_42(slice41_y_net),
    .in_43(slice42_y_net),
    .in_44(slice43_y_net),
    .in_45(slice44_y_net),
    .in_46(slice45_y_net),
    .in_47(slice46_y_net),
    .in_48(slice47_y_net),
    .in_49(slice48_y_net),
    .out_1(reinterpret0_output_port_net_x2),
    .out_2(reinterpret1_output_port_net_x2),
    .out_3(reinterpret2_output_port_net_x2),
    .out_4(reinterpret3_output_port_net_x2),
    .out_5(reinterpret4_output_port_net_x2),
    .out_6(reinterpret5_output_port_net_x2),
    .out_7(reinterpret6_output_port_net_x2),
    .out_8(reinterpret7_output_port_net_x1),
    .out_9(reinterpret8_output_port_net_x1),
    .out_10(reinterpret9_output_port_net_x1),
    .out_11(reinterpret10_output_port_net_x2),
    .out_12(reinterpret11_output_port_net_x2),
    .out_13(reinterpret12_output_port_net_x2),
    .out_14(reinterpret13_output_port_net_x2),
    .out_15(reinterpret14_output_port_net),
    .out_16(reinterpret15_output_port_net),
    .out_17(reinterpret16_output_port_net),
    .out_18(reinterpret17_output_port_net),
    .out_19(reinterpret18_output_port_net),
    .out_20(reinterpret19_output_port_net),
    .out_21(reinterpret20_output_port_net),
    .out_22(reinterpret21_output_port_net),
    .out_23(reinterpret22_output_port_net),
    .out_24(reinterpret23_output_port_net),
    .out_25(reinterpret24_output_port_net),
    .out_26(reinterpret25_output_port_net),
    .out_27(reinterpret26_output_port_net),
    .out_28(reinterpret27_output_port_net),
    .out_29(reinterpret28_output_port_net),
    .out_30(reinterpret29_output_port_net),
    .out_31(reinterpret30_output_port_net),
    .out_32(reinterpret31_output_port_net),
    .out_33(reinterpret32_output_port_net),
    .out_34(reinterpret33_output_port_net),
    .out_35(reinterpret34_output_port_net),
    .out_36(reinterpret35_output_port_net),
    .out_37(reinterpret36_output_port_net),
    .out_38(reinterpret37_output_port_net),
    .out_39(reinterpret38_output_port_net),
    .out_40(reinterpret39_output_port_net),
    .out_41(reinterpret40_output_port_net),
    .out_42(reinterpret41_output_port_net),
    .out_43(reinterpret42_output_port_net),
    .out_44(reinterpret43_output_port_net),
    .out_45(reinterpret44_output_port_net),
    .out_46(reinterpret45_output_port_net),
    .out_47(reinterpret46_output_port_net),
    .out_48(reinterpret47_output_port_net),
    .out_49(reinterpret48_output_port_net)
  );
  fpga_kf_3dof_plus_vector_reinterpret2 vector_reinterpret2 (
    .in_1(slice0_y_net_x4),
    .in_2(slice1_y_net_x5),
    .in_3(slice2_y_net_x4),
    .in_4(slice3_y_net_x4),
    .in_5(slice4_y_net_x4),
    .in_6(slice5_y_net_x4),
    .in_7(slice6_y_net_x4),
    .in_8(slice7_y_net_x4),
    .in_9(slice8_y_net_x4),
    .in_10(slice9_y_net_x4),
    .in_11(slice10_y_net_x4),
    .in_12(slice11_y_net_x4),
    .in_13(slice12_y_net_x4),
    .in_14(slice13_y_net_x4),
    .out_1(reinterpret0_output_port_net_x1),
    .out_2(reinterpret1_output_port_net_x1),
    .out_3(reinterpret2_output_port_net_x1),
    .out_4(reinterpret3_output_port_net_x1),
    .out_5(reinterpret4_output_port_net_x1),
    .out_6(reinterpret5_output_port_net_x1),
    .out_7(reinterpret6_output_port_net_x1),
    .out_8(reinterpret7_output_port_net_x0),
    .out_9(reinterpret8_output_port_net_x0),
    .out_10(reinterpret9_output_port_net_x0),
    .out_11(reinterpret10_output_port_net_x1),
    .out_12(reinterpret11_output_port_net_x1),
    .out_13(reinterpret12_output_port_net_x1),
    .out_14(reinterpret13_output_port_net_x1)
  );
  fpga_kf_3dof_plus_vector_reinterpret3 vector_reinterpret3 (
    .in_1(slice0_y_net_x3),
    .in_2(slice1_y_net_x4),
    .in_3(slice2_y_net_x3),
    .in_4(slice3_y_net_x3),
    .in_5(slice4_y_net_x3),
    .in_6(slice5_y_net_x3),
    .in_7(slice6_y_net_x3),
    .in_8(slice7_y_net_x3),
    .in_9(slice8_y_net_x3),
    .in_10(slice9_y_net_x3),
    .in_11(slice10_y_net_x3),
    .in_12(slice11_y_net_x3),
    .in_13(slice12_y_net_x3),
    .in_14(slice13_y_net_x3),
    .out_1(reinterpret0_output_port_net_x0),
    .out_2(reinterpret1_output_port_net_x0),
    .out_3(reinterpret2_output_port_net_x0),
    .out_4(reinterpret3_output_port_net_x0),
    .out_5(reinterpret4_output_port_net_x0),
    .out_6(reinterpret5_output_port_net_x0),
    .out_7(reinterpret6_output_port_net_x0),
    .out_8(reinterpret7_output_port_net),
    .out_9(reinterpret8_output_port_net),
    .out_10(reinterpret9_output_port_net),
    .out_11(reinterpret10_output_port_net_x0),
    .out_12(reinterpret11_output_port_net_x0),
    .out_13(reinterpret12_output_port_net_x0),
    .out_14(reinterpret13_output_port_net_x0)
  );
  fpga_kf_3dof_plus_vector_reinterpret4 vector_reinterpret4 (
    .in_1(slice0_y_net_x2),
    .in_2(slice1_y_net_x3),
    .in_3(slice2_y_net_x2),
    .in_4(slice3_y_net_x2),
    .in_5(slice4_y_net_x2),
    .in_6(slice5_y_net_x2),
    .in_7(slice6_y_net_x2),
    .in_8(slice7_y_net_x2),
    .in_9(slice8_y_net_x2),
    .in_10(slice9_y_net_x2),
    .in_11(slice10_y_net_x2),
    .in_12(slice11_y_net_x2),
    .in_13(slice12_y_net_x2),
    .in_14(slice13_y_net_x2),
    .out_1(reinterpret0_output_port_net),
    .out_2(reinterpret1_output_port_net),
    .out_3(reinterpret2_output_port_net),
    .out_4(reinterpret3_output_port_net),
    .out_5(reinterpret4_output_port_net),
    .out_6(reinterpret5_output_port_net),
    .out_7(reinterpret6_output_port_net),
    .out_8(reinterpret7_output_port_net_x6),
    .out_9(reinterpret8_output_port_net_x6),
    .out_10(reinterpret9_output_port_net_x6),
    .out_11(reinterpret10_output_port_net),
    .out_12(reinterpret11_output_port_net),
    .out_13(reinterpret12_output_port_net),
    .out_14(reinterpret13_output_port_net)
  );
  fpga_kf_3dof_plus_vector_reinterpret5 vector_reinterpret5 (
    .in_1(slice0_y_net_x1),
    .in_2(slice1_y_net_x2),
    .in_3(slice2_y_net_x1),
    .in_4(slice3_y_net_x1),
    .in_5(slice4_y_net_x1),
    .in_6(slice5_y_net_x1),
    .in_7(slice6_y_net_x1),
    .in_8(slice7_y_net_x1),
    .in_9(slice8_y_net_x1),
    .in_10(slice9_y_net_x1),
    .in_11(slice10_y_net_x1),
    .in_12(slice11_y_net_x1),
    .in_13(slice12_y_net_x1),
    .in_14(slice13_y_net_x1),
    .out_1(reinterpret0_output_port_net_x6),
    .out_2(reinterpret1_output_port_net_x6),
    .out_3(reinterpret2_output_port_net_x6),
    .out_4(reinterpret3_output_port_net_x6),
    .out_5(reinterpret4_output_port_net_x6),
    .out_6(reinterpret5_output_port_net_x6),
    .out_7(reinterpret6_output_port_net_x6),
    .out_8(reinterpret7_output_port_net_x5),
    .out_9(reinterpret8_output_port_net_x5),
    .out_10(reinterpret9_output_port_net_x5),
    .out_11(reinterpret10_output_port_net_x6),
    .out_12(reinterpret11_output_port_net_x6),
    .out_13(reinterpret12_output_port_net_x6),
    .out_14(reinterpret13_output_port_net_x6)
  );
  fpga_kf_3dof_plus_vector_reinterpret6 vector_reinterpret6 (
    .in_1(slice0_y_net_x0),
    .in_2(slice1_y_net_x1),
    .in_3(slice2_y_net_x0),
    .in_4(slice3_y_net_x0),
    .in_5(slice4_y_net_x0),
    .in_6(slice5_y_net_x0),
    .in_7(slice6_y_net_x0),
    .in_8(slice7_y_net_x0),
    .in_9(slice8_y_net_x0),
    .in_10(slice9_y_net_x0),
    .in_11(slice10_y_net_x0),
    .in_12(slice11_y_net_x0),
    .in_13(slice12_y_net_x0),
    .in_14(slice13_y_net_x0),
    .out_1(reinterpret0_output_port_net_x5),
    .out_2(reinterpret1_output_port_net_x5),
    .out_3(reinterpret2_output_port_net_x5),
    .out_4(reinterpret3_output_port_net_x5),
    .out_5(reinterpret4_output_port_net_x5),
    .out_6(reinterpret5_output_port_net_x5),
    .out_7(reinterpret6_output_port_net_x5),
    .out_8(reinterpret7_output_port_net_x4),
    .out_9(reinterpret8_output_port_net_x4),
    .out_10(reinterpret9_output_port_net_x4),
    .out_11(reinterpret10_output_port_net_x5),
    .out_12(reinterpret11_output_port_net_x5),
    .out_13(reinterpret12_output_port_net_x5),
    .out_14(reinterpret13_output_port_net_x5)
  );
  fpga_kf_3dof_plus_vector_reinterpret7 vector_reinterpret7 (
    .in_1(slice0_y_net),
    .in_2(slice1_y_net_x0),
    .in_3(slice2_y_net),
    .in_4(slice3_y_net),
    .in_5(slice4_y_net),
    .in_6(slice5_y_net),
    .in_7(slice6_y_net),
    .in_8(slice7_y_net),
    .in_9(slice8_y_net),
    .in_10(slice9_y_net),
    .in_11(slice10_y_net),
    .in_12(slice11_y_net),
    .in_13(slice12_y_net),
    .in_14(slice13_y_net),
    .out_1(reinterpret0_output_port_net_x4),
    .out_2(reinterpret1_output_port_net_x4),
    .out_3(reinterpret2_output_port_net_x4),
    .out_4(reinterpret3_output_port_net_x4),
    .out_5(reinterpret4_output_port_net_x4),
    .out_6(reinterpret5_output_port_net_x4),
    .out_7(reinterpret6_output_port_net_x4),
    .out_8(reinterpret7_output_port_net_x3),
    .out_9(reinterpret8_output_port_net_x3),
    .out_10(reinterpret9_output_port_net_x3),
    .out_11(reinterpret10_output_port_net_x4),
    .out_12(reinterpret11_output_port_net_x4),
    .out_13(reinterpret12_output_port_net_x4),
    .out_14(reinterpret13_output_port_net_x4)
  );
  sysgen_mcode_block_8349266790 b_ip_mat_store (
    .clr(1'b0),
    .data_in(register15_q_net),
    .addr_in(register4_q_net),
    .subaddr_in(register23_q_net),
    .wren(register2_q_net),
    .update_flag_in(register3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .mat_out(b_ip_mat_store_mat_out_net)
  );
  sysgen_mcode_block_896af11176 b_mat_store (
    .clr(1'b0),
    .data_in(register15_q_net),
    .addr_in(register4_q_net),
    .subaddr_in(register23_q_net),
    .wren(register2_q_net),
    .update_flag_in(register3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .mat_out(b_mat_store_mat_out_net)
  );
  fpga_kf_3dof_plus_xlcounter_free #(
    .core_name0("fpga_kf_3dof_plus_c_counter_binary_v12_0_i0"),
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
  sysgen_mux_0e06a09259 dac_enable (
    .clr(1'b0),
    .sel(switching_logic_selector_y_net),
    .d0(ip_ap_value_mux_y_net),
    .d1(dac_value_mux_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(dac_enable_y_net)
  );
  sysgen_mux_0e06a09259 dac_value_mux (
    .clr(1'b0),
    .sel(out_switch_enable_y_net),
    .d0(out_switch_off_net),
    .d1(out_switch_on_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(dac_value_mux_y_net)
  );
  sysgen_mcode_block_4ef184d48f f_ip_mat_store (
    .clr(1'b0),
    .data_in(register15_q_net),
    .addr_in(register4_q_net),
    .subaddr_in(register23_q_net),
    .wren(register2_q_net),
    .update_flag_in(register3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .mat_out(f_ip_mat_store_mat_out_net)
  );
  sysgen_mcode_block_268eb8f44d f_mat_store (
    .clr(1'b0),
    .data_in(register15_q_net),
    .addr_in(register4_q_net),
    .subaddr_in(register23_q_net),
    .wren(register2_q_net),
    .update_flag_in(register3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .mat_out(f_mat_store_mat_out_net)
  );
  sysgen_mux_7349deb34b ip_ap_value_mux (
    .clr(1'b0),
    .sel(sw_switch_y_net),
    .d0(out_switch_off_net),
    .d1(out_switch_on_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(ip_ap_value_mux_y_net)
  );
  sysgen_inverter_ae369781ac inverter (
    .clr(1'b0),
    .ip(register5_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(inverter_op_net)
  );
  sysgen_mcode_block_cc913ac4dd k_ip_mat_store (
    .clr(1'b0),
    .data_in(register15_q_net),
    .addr_in(register4_q_net),
    .subaddr_in(register23_q_net),
    .wren(register2_q_net),
    .update_flag_in(register3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .mat_out(k_ip_mat_store_mat_out_net)
  );
  sysgen_mcode_block_5e97b458b1 k_mat_store (
    .clr(1'b0),
    .data_in(register15_q_net),
    .addr_in(register4_q_net),
    .subaddr_in(register23_q_net),
    .wren(register2_q_net),
    .update_flag_in(register3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .mat_out(k_mat_store_mat_out_net)
  );
  sysgen_mcode_block_da7bba5d7c l_ip_mat_store (
    .clr(1'b0),
    .data_in(register15_q_net),
    .addr_in(register4_q_net),
    .subaddr_in(register23_q_net),
    .wren(register2_q_net),
    .update_flag_in(register3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .mat_out(l_ip_mat_store_mat_out_net)
  );
  sysgen_mcode_block_67f949181c l_mat_store (
    .clr(1'b0),
    .data_in(register15_q_net),
    .addr_in(register4_q_net),
    .subaddr_in(register23_q_net),
    .wren(register2_q_net),
    .update_flag_in(register3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .mat_out(l_mat_store_mat_out_net)
  );
  sysgen_mux_7146ae2442 mux (
    .clr(1'b0),
    .sel(inverter_op_net),
    .d0(slice_y_net),
    .d1(reinterpret_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux_y_net)
  );
  fpga_kf_3dof_plus_xlregister #(
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
  fpga_kf_3dof_plus_xlregister #(
    .d_width(2),
    .init_value(2'b00)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(ap_ip_switch_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register1_q_net_x1)
  );
  fpga_kf_3dof_plus_xlregister #(
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
  fpga_kf_3dof_plus_xlregister #(
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
  fpga_kf_3dof_plus_xlregister #(
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
  fpga_kf_3dof_plus_xlregister #(
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
  fpga_kf_3dof_plus_xlregister #(
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
  fpga_kf_3dof_plus_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register15 (
    .en(1'b1),
    .rst(1'b0),
    .d(registers_data_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register15_q_net)
  );
  fpga_kf_3dof_plus_xlregister #(
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
  fpga_kf_3dof_plus_xlregister #(
    .d_width(3),
    .init_value(3'b000)
  )
  register17 (
    .en(1'b1),
    .rst(1'b0),
    .d(fb_src_switch_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register17_q_net)
  );
  fpga_kf_3dof_plus_xlregister #(
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
  fpga_kf_3dof_plus_xlregister #(
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
  fpga_kf_3dof_plus_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register2 (
    .en(1'b1),
    .rst(1'b0),
    .d(registers_wren_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register2_q_net)
  );
  fpga_kf_3dof_plus_xlregister #(
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
  fpga_kf_3dof_plus_xlregister #(
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
  fpga_kf_3dof_plus_xlregister #(
    .d_width(14),
    .init_value(14'b00000000000000)
  )
  register22 (
    .en(1'b1),
    .rst(1'b0),
    .d(noise_gain_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register22_q_net)
  );
  fpga_kf_3dof_plus_xlregister #(
    .d_width(32),
    .init_value(32'b00000000000000000000000000000000)
  )
  register23 (
    .en(1'b1),
    .rst(1'b0),
    .d(registers_subaddr_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register23_q_net)
  );
  fpga_kf_3dof_plus_xlregister #(
    .d_width(30),
    .init_value(30'b000000000000000000000000000000)
  )
  register24 (
    .en(1'b1),
    .rst(1'b0),
    .d(x_ref_ub_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register24_q_net)
  );
  fpga_kf_3dof_plus_xlregister #(
    .d_width(30),
    .init_value(30'b000000000000000000000000000000)
  )
  register25 (
    .en(1'b1),
    .rst(1'b0),
    .d(x_ref_lb_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register25_q_net)
  );
  fpga_kf_3dof_plus_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register26 (
    .en(1'b1),
    .rst(1'b0),
    .d(x_ref_enb_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register26_q_net)
  );
  fpga_kf_3dof_plus_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register27 (
    .en(1'b1),
    .rst(1'b0),
    .d(c_iu_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register27_q_net)
  );
  fpga_kf_3dof_plus_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register28 (
    .en(1'b1),
    .rst(1'b0),
    .d(iu_ub_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register28_q_net)
  );
  fpga_kf_3dof_plus_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register29 (
    .en(1'b1),
    .rst(1'b0),
    .d(iu_lb_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register29_q_net)
  );
  fpga_kf_3dof_plus_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register3 (
    .en(1'b1),
    .rst(1'b0),
    .d(registers_update_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register3_q_net)
  );
  fpga_kf_3dof_plus_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register30 (
    .en(1'b1),
    .rst(1'b0),
    .d(iu_enb_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register30_q_net)
  );
  fpga_kf_3dof_plus_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register31 (
    .en(1'b1),
    .rst(1'b0),
    .d(k_iu_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register31_q_net)
  );
  fpga_kf_3dof_plus_xlregister #(
    .d_width(32),
    .init_value(32'b00000000000000000000000000000000)
  )
  register4 (
    .en(1'b1),
    .rst(1'b0),
    .d(registers_addr_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register4_q_net)
  );
  fpga_kf_3dof_plus_xlregister #(
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
  fpga_kf_3dof_plus_xlregister #(
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
  fpga_kf_3dof_plus_xlregister #(
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
  fpga_kf_3dof_plus_xlregister #(
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
  fpga_kf_3dof_plus_xlregister #(
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
  sysgen_reinterpret_c201140ddf reinterpret (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice1_y_net),
    .output_port(reinterpret_output_port_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(0),
    .new_msb(0),
    .x_width(2),
    .y_width(1)
  )
  sw_switch (
    .x(register1_q_net_x1),
    .y(sw_switch_y_net)
  );
  sysgen_mux_d509ee3618 sw_switch_mux (
    .clr(1'b0),
    .sel(switching_logic_selector_y_net),
    .d0(sw_switch_y_net),
    .d1(rp_switch_delay_match_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(sw_switch_mux_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(18),
    .new_msb(23),
    .x_width(24),
    .y_width(6)
  )
  slice (
    .x(counter_op_net),
    .y(slice_y_net)
  );
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(10),
    .new_msb(15),
    .x_width(16),
    .y_width(6)
  )
  slice1 (
    .x(register_q_net),
    .y(slice1_y_net)
  );
  sysgen_relational_4e0e9aa9a0 dma_trigger_threshold (
    .clr(1'b0),
    .a(sec_counter_op_net),
    .b(register14_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(dma_trigger_threshold_op_net)
  );
  fpga_kf_3dof_plus_xldelay #(
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
  sysgen_logical_0a4e2f7fe6 out_switch_enable (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(out_switch_t0_op_net),
    .d1(out_switch_tf_op_net),
    .y(out_switch_enable_y_net)
  );
  sysgen_relational_4e0e9aa9a0 out_switch_t0 (
    .clr(1'b0),
    .a(sec_counter_op_net),
    .b(register11_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(out_switch_t0_op_net)
  );
  sysgen_relational_d4a9476c61 out_switch_tf (
    .clr(1'b0),
    .a(sec_counter_op_net),
    .b(register12_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(out_switch_tf_op_net)
  );
  sysgen_relational_4c96cdadac period_reached_switch (
    .clr(1'b0),
    .a(sec_counter_op_net),
    .b(register13_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(period_reached_switch_op_net)
  );
  fpga_kf_3dof_plus_xldelay #(
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
  sysgen_logical_0a4e2f7fe6 rp_switch_enable (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(rp_switch_t0_op_net),
    .d1(rp_switch_tf_op_net),
    .y(rp_switch_enable_y_net)
  );
  sysgen_relational_4e0e9aa9a0 rp_switch_t0 (
    .clr(1'b0),
    .a(sec_counter_op_net),
    .b(register9_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(rp_switch_t0_op_net)
  );
  sysgen_relational_d4a9476c61 rp_switch_tf (
    .clr(1'b0),
    .a(sec_counter_op_net),
    .b(register10_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(rp_switch_tf_op_net)
  );
  fpga_kf_3dof_plus_xlcounter_limit #(
    .cnt_15_0(31872),
    .cnt_31_16(19073),
    .cnt_47_32(0),
    .cnt_63_48(0),
    .core_name0("fpga_kf_3dof_plus_c_counter_binary_v12_0_i1"),
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
  fpga_kf_3dof_plus_xlslice #(
    .new_lsb(1),
    .new_msb(1),
    .x_width(2),
    .y_width(1)
  )
  switching_logic_selector (
    .x(register1_q_net_x1),
    .y(switching_logic_selector_y_net)
  );
  fpga_kf_3dof_plus_xlregister #(
    .d_width(14),
    .init_value(14'b00000000000000)
  )
  register32 (
    .en(1'b1),
    .rst(1'b0),
    .d(dac_1_bias_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register32_q_net)
  );
  fpga_kf_3dof_plus_xlregister #(
    .d_width(14),
    .init_value(14'b00000000000000)
  )
  register33 (
    .en(1'b1),
    .rst(1'b0),
    .d(dac_2_bias_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register33_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/Vector Register
module fpga_kf_3dof_plus_vector_register_x0 (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  input [25-1:0] d_3,
  input [25-1:0] d_4,
  input [25-1:0] d_5,
  input [25-1:0] d_6,
  input [25-1:0] d_7,
  input [25-1:0] d_8,
  input [25-1:0] d_9,
  input [25-1:0] d_10,
  input [25-1:0] d_11,
  input [25-1:0] d_12,
  input [25-1:0] d_13,
  input [25-1:0] d_14,
  input [25-1:0] d_15,
  input [25-1:0] d_16,
  input [25-1:0] d_17,
  input [25-1:0] d_18,
  input [25-1:0] d_19,
  input [25-1:0] d_20,
  input [25-1:0] d_21,
  input [25-1:0] d_22,
  input [25-1:0] d_23,
  input [25-1:0] d_24,
  input [25-1:0] d_25,
  input [25-1:0] d_26,
  input [25-1:0] d_27,
  input [25-1:0] d_28,
  input [25-1:0] d_29,
  input [25-1:0] d_30,
  input [25-1:0] d_31,
  input [25-1:0] d_32,
  input [25-1:0] d_33,
  input [25-1:0] d_34,
  input [25-1:0] d_35,
  input [25-1:0] d_36,
  input [25-1:0] d_37,
  input [25-1:0] d_38,
  input [25-1:0] d_39,
  input [25-1:0] d_40,
  input [25-1:0] d_41,
  input [25-1:0] d_42,
  input [25-1:0] d_43,
  input [25-1:0] d_44,
  input [25-1:0] d_45,
  input [25-1:0] d_46,
  input [25-1:0] d_47,
  input [25-1:0] d_48,
  input [25-1:0] d_49,
  input clk_1_x0,
  input ce_1_x0,
  input clk_1,
  input ce_1,
  output [25-1:0] q_1,
  output [25-1:0] q_2,
  output [25-1:0] q_3,
  output [25-1:0] q_4,
  output [25-1:0] q_5,
  output [25-1:0] q_6,
  output [25-1:0] q_7,
  output [25-1:0] q_8,
  output [25-1:0] q_9,
  output [25-1:0] q_10,
  output [25-1:0] q_11,
  output [25-1:0] q_12,
  output [25-1:0] q_13,
  output [25-1:0] q_14,
  output [25-1:0] q_15,
  output [25-1:0] q_16,
  output [25-1:0] q_17,
  output [25-1:0] q_18,
  output [25-1:0] q_19,
  output [25-1:0] q_20,
  output [25-1:0] q_21,
  output [25-1:0] q_22,
  output [25-1:0] q_23,
  output [25-1:0] q_24,
  output [25-1:0] q_25,
  output [25-1:0] q_26,
  output [25-1:0] q_27,
  output [25-1:0] q_28,
  output [25-1:0] q_29,
  output [25-1:0] q_30,
  output [25-1:0] q_31,
  output [25-1:0] q_32,
  output [25-1:0] q_33,
  output [25-1:0] q_34,
  output [25-1:0] q_35,
  output [25-1:0] q_36,
  output [25-1:0] q_37,
  output [25-1:0] q_38,
  output [25-1:0] q_39,
  output [25-1:0] q_40,
  output [25-1:0] q_41,
  output [25-1:0] q_42,
  output [25-1:0] q_43,
  output [25-1:0] q_44,
  output [25-1:0] q_45,
  output [25-1:0] q_46,
  output [25-1:0] q_47,
  output [25-1:0] q_48,
  output [25-1:0] q_49
);
  wire [25-1:0] register0_q_net;
  wire [25-1:0] register30_q_net;
  wire [25-1:0] register22_q_net;
  wire [25-1:0] register31_q_net;
  wire [25-1:0] register13_q_net;
  wire [25-1:0] register14_q_net;
  wire [25-1:0] register9_q_net;
  wire [25-1:0] register19_q_net;
  wire [25-1:0] register17_q_net;
  wire [25-1:0] register6_q_net;
  wire [25-1:0] register18_q_net;
  wire [25-1:0] register21_q_net;
  wire [25-1:0] register10_q_net;
  wire [25-1:0] register4_q_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] register23_q_net;
  wire [25-1:0] register5_q_net;
  wire [25-1:0] register29_q_net;
  wire [25-1:0] register27_q_net;
  wire [25-1:0] register32_q_net;
  wire [25-1:0] register26_q_net;
  wire [25-1:0] register28_q_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] register7_q_net;
  wire [25-1:0] register15_q_net;
  wire [25-1:0] register11_q_net;
  wire [25-1:0] register16_q_net;
  wire [25-1:0] register8_q_net;
  wire [25-1:0] register20_q_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] register25_q_net;
  wire [25-1:0] register24_q_net;
  wire [25-1:0] register12_q_net;
  wire [25-1:0] register33_q_net;
  wire [25-1:0] register41_q_net;
  wire [25-1:0] register48_q_net;
  wire [25-1:0] reinterpret2_output_port_net;
  wire [25-1:0] reinterpret9_output_port_net;
  wire [25-1:0] register37_q_net;
  wire [25-1:0] reinterpret15_output_port_net;
  wire [25-1:0] register35_q_net;
  wire [25-1:0] register44_q_net;
  wire [25-1:0] register46_q_net;
  wire [25-1:0] register47_q_net;
  wire [25-1:0] register36_q_net;
  wire [25-1:0] register34_q_net;
  wire [25-1:0] register45_q_net;
  wire [25-1:0] reinterpret5_output_port_net;
  wire [25-1:0] register43_q_net;
  wire [25-1:0] reinterpret6_output_port_net;
  wire [25-1:0] reinterpret8_output_port_net;
  wire [25-1:0] reinterpret0_output_port_net;
  wire [25-1:0] reinterpret7_output_port_net;
  wire [25-1:0] reinterpret10_output_port_net;
  wire [25-1:0] register38_q_net;
  wire [25-1:0] reinterpret3_output_port_net;
  wire [25-1:0] reinterpret12_output_port_net;
  wire [25-1:0] register39_q_net;
  wire [25-1:0] reinterpret1_output_port_net;
  wire [25-1:0] register42_q_net;
  wire [25-1:0] reinterpret11_output_port_net;
  wire [25-1:0] register40_q_net;
  wire [25-1:0] reinterpret4_output_port_net;
  wire [25-1:0] reinterpret13_output_port_net;
  wire [25-1:0] reinterpret14_output_port_net;
  wire [25-1:0] reinterpret22_output_port_net;
  wire [25-1:0] reinterpret33_output_port_net;
  wire [25-1:0] reinterpret18_output_port_net;
  wire [25-1:0] reinterpret21_output_port_net;
  wire [25-1:0] reinterpret35_output_port_net;
  wire [25-1:0] reinterpret25_output_port_net;
  wire [25-1:0] reinterpret36_output_port_net;
  wire [25-1:0] reinterpret40_output_port_net;
  wire [25-1:0] reinterpret41_output_port_net;
  wire [25-1:0] reinterpret26_output_port_net;
  wire [25-1:0] reinterpret17_output_port_net;
  wire [25-1:0] reinterpret34_output_port_net;
  wire [25-1:0] reinterpret38_output_port_net;
  wire [25-1:0] reinterpret24_output_port_net;
  wire [25-1:0] reinterpret39_output_port_net;
  wire [25-1:0] reinterpret43_output_port_net;
  wire [25-1:0] reinterpret30_output_port_net;
  wire [25-1:0] reinterpret32_output_port_net;
  wire [25-1:0] reinterpret42_output_port_net;
  wire [25-1:0] reinterpret44_output_port_net;
  wire [25-1:0] reinterpret23_output_port_net;
  wire [25-1:0] reinterpret27_output_port_net;
  wire [25-1:0] reinterpret45_output_port_net;
  wire [25-1:0] reinterpret47_output_port_net;
  wire [25-1:0] reinterpret37_output_port_net;
  wire [25-1:0] reinterpret46_output_port_net;
  wire [25-1:0] reinterpret19_output_port_net;
  wire [25-1:0] reinterpret20_output_port_net;
  wire [25-1:0] reinterpret28_output_port_net;
  wire [25-1:0] reinterpret16_output_port_net;
  wire [25-1:0] reinterpret29_output_port_net;
  wire [25-1:0] reinterpret31_output_port_net;
  wire src_clk_net;
  wire src_ce_net;
  wire ce_net;
  wire [25-1:0] reinterpret48_output_port_net;
  wire clk_net;
  assign q_1 = register0_q_net;
  assign q_2 = register1_q_net;
  assign q_3 = register2_q_net;
  assign q_4 = register3_q_net;
  assign q_5 = register4_q_net;
  assign q_6 = register5_q_net;
  assign q_7 = register6_q_net;
  assign q_8 = register7_q_net;
  assign q_9 = register8_q_net;
  assign q_10 = register9_q_net;
  assign q_11 = register10_q_net;
  assign q_12 = register11_q_net;
  assign q_13 = register12_q_net;
  assign q_14 = register13_q_net;
  assign q_15 = register14_q_net;
  assign q_16 = register15_q_net;
  assign q_17 = register16_q_net;
  assign q_18 = register17_q_net;
  assign q_19 = register18_q_net;
  assign q_20 = register19_q_net;
  assign q_21 = register20_q_net;
  assign q_22 = register21_q_net;
  assign q_23 = register22_q_net;
  assign q_24 = register23_q_net;
  assign q_25 = register24_q_net;
  assign q_26 = register25_q_net;
  assign q_27 = register26_q_net;
  assign q_28 = register27_q_net;
  assign q_29 = register28_q_net;
  assign q_30 = register29_q_net;
  assign q_31 = register30_q_net;
  assign q_32 = register31_q_net;
  assign q_33 = register32_q_net;
  assign q_34 = register33_q_net;
  assign q_35 = register34_q_net;
  assign q_36 = register35_q_net;
  assign q_37 = register36_q_net;
  assign q_38 = register37_q_net;
  assign q_39 = register38_q_net;
  assign q_40 = register39_q_net;
  assign q_41 = register40_q_net;
  assign q_42 = register41_q_net;
  assign q_43 = register42_q_net;
  assign q_44 = register43_q_net;
  assign q_45 = register44_q_net;
  assign q_46 = register45_q_net;
  assign q_47 = register46_q_net;
  assign q_48 = register47_q_net;
  assign q_49 = register48_q_net;
  assign reinterpret0_output_port_net = d_1;
  assign reinterpret1_output_port_net = d_2;
  assign reinterpret2_output_port_net = d_3;
  assign reinterpret3_output_port_net = d_4;
  assign reinterpret4_output_port_net = d_5;
  assign reinterpret5_output_port_net = d_6;
  assign reinterpret6_output_port_net = d_7;
  assign reinterpret7_output_port_net = d_8;
  assign reinterpret8_output_port_net = d_9;
  assign reinterpret9_output_port_net = d_10;
  assign reinterpret10_output_port_net = d_11;
  assign reinterpret11_output_port_net = d_12;
  assign reinterpret12_output_port_net = d_13;
  assign reinterpret13_output_port_net = d_14;
  assign reinterpret14_output_port_net = d_15;
  assign reinterpret15_output_port_net = d_16;
  assign reinterpret16_output_port_net = d_17;
  assign reinterpret17_output_port_net = d_18;
  assign reinterpret18_output_port_net = d_19;
  assign reinterpret19_output_port_net = d_20;
  assign reinterpret20_output_port_net = d_21;
  assign reinterpret21_output_port_net = d_22;
  assign reinterpret22_output_port_net = d_23;
  assign reinterpret23_output_port_net = d_24;
  assign reinterpret24_output_port_net = d_25;
  assign reinterpret25_output_port_net = d_26;
  assign reinterpret26_output_port_net = d_27;
  assign reinterpret27_output_port_net = d_28;
  assign reinterpret28_output_port_net = d_29;
  assign reinterpret29_output_port_net = d_30;
  assign reinterpret30_output_port_net = d_31;
  assign reinterpret31_output_port_net = d_32;
  assign reinterpret32_output_port_net = d_33;
  assign reinterpret33_output_port_net = d_34;
  assign reinterpret34_output_port_net = d_35;
  assign reinterpret35_output_port_net = d_36;
  assign reinterpret36_output_port_net = d_37;
  assign reinterpret37_output_port_net = d_38;
  assign reinterpret38_output_port_net = d_39;
  assign reinterpret39_output_port_net = d_40;
  assign reinterpret40_output_port_net = d_41;
  assign reinterpret41_output_port_net = d_42;
  assign reinterpret42_output_port_net = d_43;
  assign reinterpret43_output_port_net = d_44;
  assign reinterpret44_output_port_net = d_45;
  assign reinterpret45_output_port_net = d_46;
  assign reinterpret46_output_port_net = d_47;
  assign reinterpret47_output_port_net = d_48;
  assign reinterpret48_output_port_net = d_49;
  assign src_clk_net = clk_1_x0;
  assign src_ce_net = ce_1_x0;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register0 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret0_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register0_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret1_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register1_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register2 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret2_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register2_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register3 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret3_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register3_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register4 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret4_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register4_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register5 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret5_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register5_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register6 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret6_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register6_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register7 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret7_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register7_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register8 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret8_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register8_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register9 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret9_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register9_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register10 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret10_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register10_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register11 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret11_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register11_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register12 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret12_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register12_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register13 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret13_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register13_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register14 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret14_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register14_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register15 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret15_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register15_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register16 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret16_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register16_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register17 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret17_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register17_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register18 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret18_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register18_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register19 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret19_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register19_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register20 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret20_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register20_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register21 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret21_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register21_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register22 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret22_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register22_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register23 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret23_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register23_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register24 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret24_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register24_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register25 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret25_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register25_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register26 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret26_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register26_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register27 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret27_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register27_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register28 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret28_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register28_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register29 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret29_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register29_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register30 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret30_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register30_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register31 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret31_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register31_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register32 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret32_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register32_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register33 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret33_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register33_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register34 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret34_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register34_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register35 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret35_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register35_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register36 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret36_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register36_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register37 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret37_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register37_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register38 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret38_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register38_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register39 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret39_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register39_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register40 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret40_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register40_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register41 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret41_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register41_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register42 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret42_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register42_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register43 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret43_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register43_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register44 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret44_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register44_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register45 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret45_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register45_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register46 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret46_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register46_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register47 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret47_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register47_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register48 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret48_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register48_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/Vector Register1
module fpga_kf_3dof_plus_vector_register1 (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  input [25-1:0] d_3,
  input [25-1:0] d_4,
  input [25-1:0] d_5,
  input [25-1:0] d_6,
  input [25-1:0] d_7,
  input [25-1:0] d_8,
  input [25-1:0] d_9,
  input [25-1:0] d_10,
  input [25-1:0] d_11,
  input [25-1:0] d_12,
  input [25-1:0] d_13,
  input [25-1:0] d_14,
  input [25-1:0] d_15,
  input [25-1:0] d_16,
  input [25-1:0] d_17,
  input [25-1:0] d_18,
  input [25-1:0] d_19,
  input [25-1:0] d_20,
  input [25-1:0] d_21,
  input [25-1:0] d_22,
  input [25-1:0] d_23,
  input [25-1:0] d_24,
  input [25-1:0] d_25,
  input [25-1:0] d_26,
  input [25-1:0] d_27,
  input [25-1:0] d_28,
  input [25-1:0] d_29,
  input [25-1:0] d_30,
  input [25-1:0] d_31,
  input [25-1:0] d_32,
  input [25-1:0] d_33,
  input [25-1:0] d_34,
  input [25-1:0] d_35,
  input [25-1:0] d_36,
  input [25-1:0] d_37,
  input [25-1:0] d_38,
  input [25-1:0] d_39,
  input [25-1:0] d_40,
  input [25-1:0] d_41,
  input [25-1:0] d_42,
  input [25-1:0] d_43,
  input [25-1:0] d_44,
  input [25-1:0] d_45,
  input [25-1:0] d_46,
  input [25-1:0] d_47,
  input [25-1:0] d_48,
  input [25-1:0] d_49,
  input clk_1_x0,
  input ce_1_x0,
  input clk_1,
  input ce_1,
  output [25-1:0] q_1,
  output [25-1:0] q_2,
  output [25-1:0] q_3,
  output [25-1:0] q_4,
  output [25-1:0] q_5,
  output [25-1:0] q_6,
  output [25-1:0] q_7,
  output [25-1:0] q_8,
  output [25-1:0] q_9,
  output [25-1:0] q_10,
  output [25-1:0] q_11,
  output [25-1:0] q_12,
  output [25-1:0] q_13,
  output [25-1:0] q_14,
  output [25-1:0] q_15,
  output [25-1:0] q_16,
  output [25-1:0] q_17,
  output [25-1:0] q_18,
  output [25-1:0] q_19,
  output [25-1:0] q_20,
  output [25-1:0] q_21,
  output [25-1:0] q_22,
  output [25-1:0] q_23,
  output [25-1:0] q_24,
  output [25-1:0] q_25,
  output [25-1:0] q_26,
  output [25-1:0] q_27,
  output [25-1:0] q_28,
  output [25-1:0] q_29,
  output [25-1:0] q_30,
  output [25-1:0] q_31,
  output [25-1:0] q_32,
  output [25-1:0] q_33,
  output [25-1:0] q_34,
  output [25-1:0] q_35,
  output [25-1:0] q_36,
  output [25-1:0] q_37,
  output [25-1:0] q_38,
  output [25-1:0] q_39,
  output [25-1:0] q_40,
  output [25-1:0] q_41,
  output [25-1:0] q_42,
  output [25-1:0] q_43,
  output [25-1:0] q_44,
  output [25-1:0] q_45,
  output [25-1:0] q_46,
  output [25-1:0] q_47,
  output [25-1:0] q_48,
  output [25-1:0] q_49
);
  wire [25-1:0] register12_q_net;
  wire [25-1:0] register10_q_net;
  wire [25-1:0] register4_q_net;
  wire [25-1:0] register14_q_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] register11_q_net;
  wire [25-1:0] register9_q_net;
  wire [25-1:0] register16_q_net;
  wire [25-1:0] register17_q_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] register18_q_net;
  wire [25-1:0] register19_q_net;
  wire [25-1:0] register7_q_net;
  wire [25-1:0] register20_q_net;
  wire [25-1:0] register13_q_net;
  wire [25-1:0] register21_q_net;
  wire [25-1:0] register5_q_net;
  wire [25-1:0] register15_q_net;
  wire [25-1:0] register6_q_net;
  wire [25-1:0] register22_q_net;
  wire [25-1:0] register8_q_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] reinterpret0_output_port_net;
  wire [25-1:0] register29_q_net;
  wire [25-1:0] register25_q_net;
  wire [25-1:0] register33_q_net;
  wire [25-1:0] register42_q_net;
  wire [25-1:0] register44_q_net;
  wire [25-1:0] register34_q_net;
  wire [25-1:0] register39_q_net;
  wire [25-1:0] register47_q_net;
  wire [25-1:0] register31_q_net;
  wire [25-1:0] register43_q_net;
  wire [25-1:0] register28_q_net;
  wire [25-1:0] register24_q_net;
  wire [25-1:0] register30_q_net;
  wire [25-1:0] register46_q_net;
  wire [25-1:0] register45_q_net;
  wire [25-1:0] reinterpret2_output_port_net;
  wire [25-1:0] register40_q_net;
  wire [25-1:0] reinterpret4_output_port_net;
  wire [25-1:0] register26_q_net;
  wire [25-1:0] register23_q_net;
  wire [25-1:0] register35_q_net;
  wire [25-1:0] reinterpret3_output_port_net;
  wire [25-1:0] register37_q_net;
  wire [25-1:0] reinterpret5_output_port_net;
  wire [25-1:0] reinterpret1_output_port_net;
  wire [25-1:0] register36_q_net;
  wire [25-1:0] register27_q_net;
  wire [25-1:0] register38_q_net;
  wire [25-1:0] register41_q_net;
  wire [25-1:0] register32_q_net;
  wire [25-1:0] register48_q_net;
  wire [25-1:0] reinterpret19_output_port_net;
  wire [25-1:0] reinterpret25_output_port_net;
  wire [25-1:0] reinterpret13_output_port_net;
  wire [25-1:0] reinterpret16_output_port_net;
  wire [25-1:0] reinterpret21_output_port_net;
  wire [25-1:0] reinterpret22_output_port_net;
  wire [25-1:0] reinterpret26_output_port_net;
  wire [25-1:0] reinterpret28_output_port_net;
  wire [25-1:0] reinterpret24_output_port_net;
  wire [25-1:0] reinterpret30_output_port_net;
  wire [25-1:0] reinterpret18_output_port_net;
  wire [25-1:0] reinterpret31_output_port_net;
  wire [25-1:0] reinterpret33_output_port_net;
  wire [25-1:0] reinterpret32_output_port_net;
  wire [25-1:0] reinterpret15_output_port_net;
  wire [25-1:0] reinterpret14_output_port_net;
  wire [25-1:0] reinterpret8_output_port_net;
  wire [25-1:0] reinterpret27_output_port_net;
  wire [25-1:0] reinterpret34_output_port_net;
  wire [25-1:0] reinterpret35_output_port_net;
  wire [25-1:0] reinterpret23_output_port_net;
  wire [25-1:0] reinterpret36_output_port_net;
  wire [25-1:0] reinterpret37_output_port_net;
  wire [25-1:0] reinterpret10_output_port_net;
  wire [25-1:0] reinterpret29_output_port_net;
  wire [25-1:0] reinterpret17_output_port_net;
  wire [25-1:0] reinterpret9_output_port_net;
  wire [25-1:0] reinterpret11_output_port_net;
  wire [25-1:0] reinterpret6_output_port_net;
  wire [25-1:0] reinterpret12_output_port_net;
  wire [25-1:0] reinterpret7_output_port_net;
  wire [25-1:0] reinterpret20_output_port_net;
  wire [25-1:0] reinterpret38_output_port_net;
  wire src_clk_net;
  wire [25-1:0] reinterpret47_output_port_net;
  wire src_ce_net;
  wire clk_net;
  wire [25-1:0] reinterpret39_output_port_net;
  wire [25-1:0] reinterpret46_output_port_net;
  wire [25-1:0] reinterpret45_output_port_net;
  wire ce_net;
  wire [25-1:0] reinterpret48_output_port_net;
  wire [25-1:0] reinterpret43_output_port_net;
  wire [25-1:0] reinterpret40_output_port_net;
  wire [25-1:0] reinterpret44_output_port_net;
  wire [25-1:0] reinterpret42_output_port_net;
  wire [25-1:0] reinterpret41_output_port_net;
  assign q_1 = register0_q_net;
  assign q_2 = register1_q_net;
  assign q_3 = register2_q_net;
  assign q_4 = register3_q_net;
  assign q_5 = register4_q_net;
  assign q_6 = register5_q_net;
  assign q_7 = register6_q_net;
  assign q_8 = register7_q_net;
  assign q_9 = register8_q_net;
  assign q_10 = register9_q_net;
  assign q_11 = register10_q_net;
  assign q_12 = register11_q_net;
  assign q_13 = register12_q_net;
  assign q_14 = register13_q_net;
  assign q_15 = register14_q_net;
  assign q_16 = register15_q_net;
  assign q_17 = register16_q_net;
  assign q_18 = register17_q_net;
  assign q_19 = register18_q_net;
  assign q_20 = register19_q_net;
  assign q_21 = register20_q_net;
  assign q_22 = register21_q_net;
  assign q_23 = register22_q_net;
  assign q_24 = register23_q_net;
  assign q_25 = register24_q_net;
  assign q_26 = register25_q_net;
  assign q_27 = register26_q_net;
  assign q_28 = register27_q_net;
  assign q_29 = register28_q_net;
  assign q_30 = register29_q_net;
  assign q_31 = register30_q_net;
  assign q_32 = register31_q_net;
  assign q_33 = register32_q_net;
  assign q_34 = register33_q_net;
  assign q_35 = register34_q_net;
  assign q_36 = register35_q_net;
  assign q_37 = register36_q_net;
  assign q_38 = register37_q_net;
  assign q_39 = register38_q_net;
  assign q_40 = register39_q_net;
  assign q_41 = register40_q_net;
  assign q_42 = register41_q_net;
  assign q_43 = register42_q_net;
  assign q_44 = register43_q_net;
  assign q_45 = register44_q_net;
  assign q_46 = register45_q_net;
  assign q_47 = register46_q_net;
  assign q_48 = register47_q_net;
  assign q_49 = register48_q_net;
  assign reinterpret0_output_port_net = d_1;
  assign reinterpret1_output_port_net = d_2;
  assign reinterpret2_output_port_net = d_3;
  assign reinterpret3_output_port_net = d_4;
  assign reinterpret4_output_port_net = d_5;
  assign reinterpret5_output_port_net = d_6;
  assign reinterpret6_output_port_net = d_7;
  assign reinterpret7_output_port_net = d_8;
  assign reinterpret8_output_port_net = d_9;
  assign reinterpret9_output_port_net = d_10;
  assign reinterpret10_output_port_net = d_11;
  assign reinterpret11_output_port_net = d_12;
  assign reinterpret12_output_port_net = d_13;
  assign reinterpret13_output_port_net = d_14;
  assign reinterpret14_output_port_net = d_15;
  assign reinterpret15_output_port_net = d_16;
  assign reinterpret16_output_port_net = d_17;
  assign reinterpret17_output_port_net = d_18;
  assign reinterpret18_output_port_net = d_19;
  assign reinterpret19_output_port_net = d_20;
  assign reinterpret20_output_port_net = d_21;
  assign reinterpret21_output_port_net = d_22;
  assign reinterpret22_output_port_net = d_23;
  assign reinterpret23_output_port_net = d_24;
  assign reinterpret24_output_port_net = d_25;
  assign reinterpret25_output_port_net = d_26;
  assign reinterpret26_output_port_net = d_27;
  assign reinterpret27_output_port_net = d_28;
  assign reinterpret28_output_port_net = d_29;
  assign reinterpret29_output_port_net = d_30;
  assign reinterpret30_output_port_net = d_31;
  assign reinterpret31_output_port_net = d_32;
  assign reinterpret32_output_port_net = d_33;
  assign reinterpret33_output_port_net = d_34;
  assign reinterpret34_output_port_net = d_35;
  assign reinterpret35_output_port_net = d_36;
  assign reinterpret36_output_port_net = d_37;
  assign reinterpret37_output_port_net = d_38;
  assign reinterpret38_output_port_net = d_39;
  assign reinterpret39_output_port_net = d_40;
  assign reinterpret40_output_port_net = d_41;
  assign reinterpret41_output_port_net = d_42;
  assign reinterpret42_output_port_net = d_43;
  assign reinterpret43_output_port_net = d_44;
  assign reinterpret44_output_port_net = d_45;
  assign reinterpret45_output_port_net = d_46;
  assign reinterpret46_output_port_net = d_47;
  assign reinterpret47_output_port_net = d_48;
  assign reinterpret48_output_port_net = d_49;
  assign src_clk_net = clk_1_x0;
  assign src_ce_net = ce_1_x0;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register0 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret0_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register0_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret1_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register1_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register2 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret2_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register2_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register3 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret3_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register3_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register4 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret4_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register4_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register5 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret5_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register5_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register6 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret6_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register6_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register7 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret7_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register7_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register8 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret8_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register8_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register9 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret9_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register9_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register10 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret10_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register10_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register11 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret11_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register11_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register12 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret12_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register12_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register13 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret13_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register13_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register14 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret14_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register14_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register15 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret15_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register15_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register16 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret16_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register16_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register17 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret17_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register17_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register18 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret18_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register18_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register19 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret19_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register19_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register20 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret20_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register20_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register21 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret21_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register21_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register22 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret22_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register22_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register23 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret23_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register23_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register24 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret24_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register24_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register25 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret25_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register25_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register26 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret26_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register26_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register27 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret27_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register27_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register28 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret28_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register28_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register29 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret29_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register29_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register30 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret30_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register30_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register31 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret31_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register31_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register32 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret32_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register32_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register33 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret33_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register33_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register34 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret34_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register34_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register35 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret35_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register35_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register36 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret36_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register36_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register37 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret37_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register37_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register38 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret38_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register38_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register39 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret39_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register39_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register40 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret40_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register40_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register41 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret41_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register41_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register42 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret42_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register42_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register43 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret43_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register43_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register44 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret44_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register44_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register45 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret45_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register45_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register46 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret46_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register46_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register47 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret47_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register47_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register48 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret48_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register48_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/Vector Register2
module fpga_kf_3dof_plus_vector_register2 (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  input [25-1:0] d_3,
  input [25-1:0] d_4,
  input [25-1:0] d_5,
  input [25-1:0] d_6,
  input [25-1:0] d_7,
  input [25-1:0] d_8,
  input [25-1:0] d_9,
  input [25-1:0] d_10,
  input [25-1:0] d_11,
  input [25-1:0] d_12,
  input [25-1:0] d_13,
  input [25-1:0] d_14,
  input clk_1_x0,
  input ce_1_x0,
  input clk_1,
  input ce_1,
  output [25-1:0] q_1,
  output [25-1:0] q_2,
  output [25-1:0] q_3,
  output [25-1:0] q_4,
  output [25-1:0] q_5,
  output [25-1:0] q_6,
  output [25-1:0] q_7,
  output [25-1:0] q_8,
  output [25-1:0] q_9,
  output [25-1:0] q_10,
  output [25-1:0] q_11,
  output [25-1:0] q_12,
  output [25-1:0] q_13,
  output [25-1:0] q_14
);
  wire [25-1:0] register1_q_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] register4_q_net;
  wire [25-1:0] register6_q_net;
  wire [25-1:0] register7_q_net;
  wire [25-1:0] register8_q_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] register9_q_net;
  wire [25-1:0] register5_q_net;
  wire [25-1:0] register10_q_net;
  wire src_ce_net;
  wire ce_net;
  wire [25-1:0] reinterpret12_output_port_net;
  wire [25-1:0] register12_q_net;
  wire [25-1:0] reinterpret11_output_port_net;
  wire clk_net;
  wire [25-1:0] reinterpret9_output_port_net;
  wire [25-1:0] reinterpret3_output_port_net;
  wire [25-1:0] reinterpret13_output_port_net;
  wire src_clk_net;
  wire [25-1:0] reinterpret5_output_port_net;
  wire [25-1:0] reinterpret6_output_port_net;
  wire [25-1:0] reinterpret8_output_port_net;
  wire [25-1:0] register13_q_net;
  wire [25-1:0] reinterpret4_output_port_net;
  wire [25-1:0] reinterpret0_output_port_net;
  wire [25-1:0] reinterpret2_output_port_net;
  wire [25-1:0] reinterpret10_output_port_net;
  wire [25-1:0] register11_q_net;
  wire [25-1:0] reinterpret1_output_port_net;
  wire [25-1:0] reinterpret7_output_port_net;
  assign q_1 = register0_q_net;
  assign q_2 = register1_q_net;
  assign q_3 = register2_q_net;
  assign q_4 = register3_q_net;
  assign q_5 = register4_q_net;
  assign q_6 = register5_q_net;
  assign q_7 = register6_q_net;
  assign q_8 = register7_q_net;
  assign q_9 = register8_q_net;
  assign q_10 = register9_q_net;
  assign q_11 = register10_q_net;
  assign q_12 = register11_q_net;
  assign q_13 = register12_q_net;
  assign q_14 = register13_q_net;
  assign reinterpret0_output_port_net = d_1;
  assign reinterpret1_output_port_net = d_2;
  assign reinterpret2_output_port_net = d_3;
  assign reinterpret3_output_port_net = d_4;
  assign reinterpret4_output_port_net = d_5;
  assign reinterpret5_output_port_net = d_6;
  assign reinterpret6_output_port_net = d_7;
  assign reinterpret7_output_port_net = d_8;
  assign reinterpret8_output_port_net = d_9;
  assign reinterpret9_output_port_net = d_10;
  assign reinterpret10_output_port_net = d_11;
  assign reinterpret11_output_port_net = d_12;
  assign reinterpret12_output_port_net = d_13;
  assign reinterpret13_output_port_net = d_14;
  assign src_clk_net = clk_1_x0;
  assign src_ce_net = ce_1_x0;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register0 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret0_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register0_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret1_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register1_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register2 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret2_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register2_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register3 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret3_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register3_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register4 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret4_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register4_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register5 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret5_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register5_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register6 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret6_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register6_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register7 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret7_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register7_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register8 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret8_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register8_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register9 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret9_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register9_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register10 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret10_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register10_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register11 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret11_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register11_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register12 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret12_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register12_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register13 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret13_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register13_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/Vector Register3
module fpga_kf_3dof_plus_vector_register3 (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  input [25-1:0] d_3,
  input [25-1:0] d_4,
  input [25-1:0] d_5,
  input [25-1:0] d_6,
  input [25-1:0] d_7,
  input [25-1:0] d_8,
  input [25-1:0] d_9,
  input [25-1:0] d_10,
  input [25-1:0] d_11,
  input [25-1:0] d_12,
  input [25-1:0] d_13,
  input [25-1:0] d_14,
  input clk_1_x0,
  input ce_1_x0,
  input clk_1,
  input ce_1,
  output [25-1:0] q_1,
  output [25-1:0] q_2,
  output [25-1:0] q_3,
  output [25-1:0] q_4,
  output [25-1:0] q_5,
  output [25-1:0] q_6,
  output [25-1:0] q_7,
  output [25-1:0] q_8,
  output [25-1:0] q_9,
  output [25-1:0] q_10,
  output [25-1:0] q_11,
  output [25-1:0] q_12,
  output [25-1:0] q_13,
  output [25-1:0] q_14
);
  wire [25-1:0] register6_q_net;
  wire [25-1:0] register8_q_net;
  wire [25-1:0] register10_q_net;
  wire [25-1:0] reinterpret0_output_port_net;
  wire [25-1:0] reinterpret1_output_port_net;
  wire [25-1:0] reinterpret2_output_port_net;
  wire [25-1:0] register5_q_net;
  wire [25-1:0] register13_q_net;
  wire [25-1:0] reinterpret3_output_port_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] register7_q_net;
  wire [25-1:0] register9_q_net;
  wire [25-1:0] register11_q_net;
  wire [25-1:0] register12_q_net;
  wire [25-1:0] reinterpret4_output_port_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] register4_q_net;
  wire [25-1:0] reinterpret9_output_port_net;
  wire [25-1:0] reinterpret7_output_port_net;
  wire [25-1:0] reinterpret12_output_port_net;
  wire [25-1:0] reinterpret10_output_port_net;
  wire [25-1:0] reinterpret13_output_port_net;
  wire [25-1:0] reinterpret6_output_port_net;
  wire [25-1:0] reinterpret8_output_port_net;
  wire [25-1:0] reinterpret5_output_port_net;
  wire [25-1:0] reinterpret11_output_port_net;
  wire ce_net;
  wire clk_net;
  wire src_clk_net;
  wire src_ce_net;
  assign q_1 = register0_q_net;
  assign q_2 = register1_q_net;
  assign q_3 = register2_q_net;
  assign q_4 = register3_q_net;
  assign q_5 = register4_q_net;
  assign q_6 = register5_q_net;
  assign q_7 = register6_q_net;
  assign q_8 = register7_q_net;
  assign q_9 = register8_q_net;
  assign q_10 = register9_q_net;
  assign q_11 = register10_q_net;
  assign q_12 = register11_q_net;
  assign q_13 = register12_q_net;
  assign q_14 = register13_q_net;
  assign reinterpret0_output_port_net = d_1;
  assign reinterpret1_output_port_net = d_2;
  assign reinterpret2_output_port_net = d_3;
  assign reinterpret3_output_port_net = d_4;
  assign reinterpret4_output_port_net = d_5;
  assign reinterpret5_output_port_net = d_6;
  assign reinterpret6_output_port_net = d_7;
  assign reinterpret7_output_port_net = d_8;
  assign reinterpret8_output_port_net = d_9;
  assign reinterpret9_output_port_net = d_10;
  assign reinterpret10_output_port_net = d_11;
  assign reinterpret11_output_port_net = d_12;
  assign reinterpret12_output_port_net = d_13;
  assign reinterpret13_output_port_net = d_14;
  assign src_clk_net = clk_1_x0;
  assign src_ce_net = ce_1_x0;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register0 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret0_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register0_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret1_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register1_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register2 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret2_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register2_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register3 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret3_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register3_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register4 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret4_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register4_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register5 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret5_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register5_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register6 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret6_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register6_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register7 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret7_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register7_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register8 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret8_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register8_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register9 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret9_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register9_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register10 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret10_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register10_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register11 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret11_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register11_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register12 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret12_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register12_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register13 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret13_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register13_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/Vector Register4
module fpga_kf_3dof_plus_vector_register4 (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  input [25-1:0] d_3,
  input [25-1:0] d_4,
  input [25-1:0] d_5,
  input [25-1:0] d_6,
  input [25-1:0] d_7,
  input [25-1:0] d_8,
  input [25-1:0] d_9,
  input [25-1:0] d_10,
  input [25-1:0] d_11,
  input [25-1:0] d_12,
  input [25-1:0] d_13,
  input [25-1:0] d_14,
  input clk_1_x0,
  input ce_1_x0,
  input clk_1,
  input ce_1,
  output [25-1:0] q_1,
  output [25-1:0] q_2,
  output [25-1:0] q_3,
  output [25-1:0] q_4,
  output [25-1:0] q_5,
  output [25-1:0] q_6,
  output [25-1:0] q_7,
  output [25-1:0] q_8,
  output [25-1:0] q_9,
  output [25-1:0] q_10,
  output [25-1:0] q_11,
  output [25-1:0] q_12,
  output [25-1:0] q_13,
  output [25-1:0] q_14
);
  wire [25-1:0] register11_q_net;
  wire [25-1:0] reinterpret1_output_port_net;
  wire [25-1:0] reinterpret2_output_port_net;
  wire [25-1:0] reinterpret0_output_port_net;
  wire [25-1:0] register7_q_net;
  wire [25-1:0] register4_q_net;
  wire [25-1:0] register6_q_net;
  wire [25-1:0] register10_q_net;
  wire [25-1:0] register12_q_net;
  wire [25-1:0] reinterpret4_output_port_net;
  wire [25-1:0] register5_q_net;
  wire [25-1:0] register13_q_net;
  wire [25-1:0] register8_q_net;
  wire [25-1:0] register9_q_net;
  wire [25-1:0] reinterpret3_output_port_net;
  wire [25-1:0] reinterpret5_output_port_net;
  wire [25-1:0] reinterpret7_output_port_net;
  wire [25-1:0] reinterpret6_output_port_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] reinterpret8_output_port_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] reinterpret9_output_port_net;
  wire [25-1:0] reinterpret10_output_port_net;
  wire [25-1:0] reinterpret11_output_port_net;
  wire [25-1:0] register0_q_net;
  wire ce_net;
  wire [25-1:0] reinterpret13_output_port_net;
  wire src_ce_net;
  wire src_clk_net;
  wire clk_net;
  wire [25-1:0] reinterpret12_output_port_net;
  assign q_1 = register0_q_net;
  assign q_2 = register1_q_net;
  assign q_3 = register2_q_net;
  assign q_4 = register3_q_net;
  assign q_5 = register4_q_net;
  assign q_6 = register5_q_net;
  assign q_7 = register6_q_net;
  assign q_8 = register7_q_net;
  assign q_9 = register8_q_net;
  assign q_10 = register9_q_net;
  assign q_11 = register10_q_net;
  assign q_12 = register11_q_net;
  assign q_13 = register12_q_net;
  assign q_14 = register13_q_net;
  assign reinterpret0_output_port_net = d_1;
  assign reinterpret1_output_port_net = d_2;
  assign reinterpret2_output_port_net = d_3;
  assign reinterpret3_output_port_net = d_4;
  assign reinterpret4_output_port_net = d_5;
  assign reinterpret5_output_port_net = d_6;
  assign reinterpret6_output_port_net = d_7;
  assign reinterpret7_output_port_net = d_8;
  assign reinterpret8_output_port_net = d_9;
  assign reinterpret9_output_port_net = d_10;
  assign reinterpret10_output_port_net = d_11;
  assign reinterpret11_output_port_net = d_12;
  assign reinterpret12_output_port_net = d_13;
  assign reinterpret13_output_port_net = d_14;
  assign src_clk_net = clk_1_x0;
  assign src_ce_net = ce_1_x0;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register0 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret0_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register0_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret1_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register1_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register2 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret2_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register2_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register3 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret3_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register3_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register4 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret4_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register4_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register5 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret5_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register5_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register6 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret6_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register6_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register7 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret7_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register7_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register8 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret8_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register8_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register9 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret9_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register9_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register10 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret10_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register10_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register11 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret11_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register11_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register12 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret12_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register12_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register13 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret13_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register13_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/Vector Register5
module fpga_kf_3dof_plus_vector_register5 (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  input [25-1:0] d_3,
  input [25-1:0] d_4,
  input [25-1:0] d_5,
  input [25-1:0] d_6,
  input [25-1:0] d_7,
  input [25-1:0] d_8,
  input [25-1:0] d_9,
  input [25-1:0] d_10,
  input [25-1:0] d_11,
  input [25-1:0] d_12,
  input [25-1:0] d_13,
  input [25-1:0] d_14,
  input clk_1_x0,
  input ce_1_x0,
  input clk_1,
  input ce_1,
  output [25-1:0] q_1,
  output [25-1:0] q_2,
  output [25-1:0] q_3,
  output [25-1:0] q_4,
  output [25-1:0] q_5,
  output [25-1:0] q_6,
  output [25-1:0] q_7,
  output [25-1:0] q_8,
  output [25-1:0] q_9,
  output [25-1:0] q_10,
  output [25-1:0] q_11,
  output [25-1:0] q_12,
  output [25-1:0] q_13,
  output [25-1:0] q_14
);
  wire [25-1:0] register0_q_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] reinterpret8_output_port_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] register10_q_net;
  wire [25-1:0] reinterpret9_output_port_net;
  wire [25-1:0] reinterpret11_output_port_net;
  wire [25-1:0] reinterpret0_output_port_net;
  wire [25-1:0] reinterpret12_output_port_net;
  wire src_ce_net;
  wire src_clk_net;
  wire [25-1:0] reinterpret4_output_port_net;
  wire [25-1:0] reinterpret1_output_port_net;
  wire [25-1:0] reinterpret6_output_port_net;
  wire [25-1:0] register7_q_net;
  wire clk_net;
  wire ce_net;
  wire [25-1:0] register5_q_net;
  wire [25-1:0] register9_q_net;
  wire [25-1:0] reinterpret5_output_port_net;
  wire [25-1:0] register8_q_net;
  wire [25-1:0] register12_q_net;
  wire [25-1:0] reinterpret10_output_port_net;
  wire [25-1:0] register4_q_net;
  wire [25-1:0] reinterpret2_output_port_net;
  wire [25-1:0] reinterpret13_output_port_net;
  wire [25-1:0] reinterpret7_output_port_net;
  wire [25-1:0] register11_q_net;
  wire [25-1:0] register6_q_net;
  wire [25-1:0] register13_q_net;
  wire [25-1:0] reinterpret3_output_port_net;
  wire [25-1:0] register2_q_net;
  assign q_1 = register0_q_net;
  assign q_2 = register1_q_net;
  assign q_3 = register2_q_net;
  assign q_4 = register3_q_net;
  assign q_5 = register4_q_net;
  assign q_6 = register5_q_net;
  assign q_7 = register6_q_net;
  assign q_8 = register7_q_net;
  assign q_9 = register8_q_net;
  assign q_10 = register9_q_net;
  assign q_11 = register10_q_net;
  assign q_12 = register11_q_net;
  assign q_13 = register12_q_net;
  assign q_14 = register13_q_net;
  assign reinterpret0_output_port_net = d_1;
  assign reinterpret1_output_port_net = d_2;
  assign reinterpret2_output_port_net = d_3;
  assign reinterpret3_output_port_net = d_4;
  assign reinterpret4_output_port_net = d_5;
  assign reinterpret5_output_port_net = d_6;
  assign reinterpret6_output_port_net = d_7;
  assign reinterpret7_output_port_net = d_8;
  assign reinterpret8_output_port_net = d_9;
  assign reinterpret9_output_port_net = d_10;
  assign reinterpret10_output_port_net = d_11;
  assign reinterpret11_output_port_net = d_12;
  assign reinterpret12_output_port_net = d_13;
  assign reinterpret13_output_port_net = d_14;
  assign src_clk_net = clk_1_x0;
  assign src_ce_net = ce_1_x0;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register0 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret0_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register0_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret1_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register1_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register2 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret2_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register2_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register3 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret3_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register3_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register4 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret4_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register4_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register5 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret5_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register5_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register6 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret6_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register6_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register7 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret7_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register7_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register8 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret8_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register8_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register9 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret9_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register9_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register10 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret10_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register10_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register11 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret11_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register11_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register12 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret12_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register12_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register13 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret13_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register13_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/Vector Register6
module fpga_kf_3dof_plus_vector_register6 (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  input [25-1:0] d_3,
  input [25-1:0] d_4,
  input [25-1:0] d_5,
  input [25-1:0] d_6,
  input [25-1:0] d_7,
  input [25-1:0] d_8,
  input [25-1:0] d_9,
  input [25-1:0] d_10,
  input [25-1:0] d_11,
  input [25-1:0] d_12,
  input [25-1:0] d_13,
  input [25-1:0] d_14,
  input clk_1_x0,
  input ce_1_x0,
  input clk_1,
  input ce_1,
  output [25-1:0] q_1,
  output [25-1:0] q_2,
  output [25-1:0] q_3,
  output [25-1:0] q_4,
  output [25-1:0] q_5,
  output [25-1:0] q_6,
  output [25-1:0] q_7,
  output [25-1:0] q_8,
  output [25-1:0] q_9,
  output [25-1:0] q_10,
  output [25-1:0] q_11,
  output [25-1:0] q_12,
  output [25-1:0] q_13,
  output [25-1:0] q_14
);
  wire [25-1:0] register3_q_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] register5_q_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] register6_q_net;
  wire [25-1:0] register7_q_net;
  wire [25-1:0] register8_q_net;
  wire [25-1:0] register4_q_net;
  wire [25-1:0] register11_q_net;
  wire [25-1:0] reinterpret7_output_port_net;
  wire [25-1:0] reinterpret13_output_port_net;
  wire clk_net;
  wire [25-1:0] reinterpret10_output_port_net;
  wire [25-1:0] reinterpret1_output_port_net;
  wire [25-1:0] reinterpret2_output_port_net;
  wire [25-1:0] reinterpret12_output_port_net;
  wire [25-1:0] reinterpret8_output_port_net;
  wire [25-1:0] reinterpret0_output_port_net;
  wire [25-1:0] reinterpret6_output_port_net;
  wire [25-1:0] register9_q_net;
  wire [25-1:0] reinterpret11_output_port_net;
  wire src_clk_net;
  wire [25-1:0] reinterpret4_output_port_net;
  wire [25-1:0] reinterpret5_output_port_net;
  wire [25-1:0] reinterpret3_output_port_net;
  wire ce_net;
  wire src_ce_net;
  wire [25-1:0] register13_q_net;
  wire [25-1:0] reinterpret9_output_port_net;
  wire [25-1:0] register12_q_net;
  wire [25-1:0] register10_q_net;
  assign q_1 = register0_q_net;
  assign q_2 = register1_q_net;
  assign q_3 = register2_q_net;
  assign q_4 = register3_q_net;
  assign q_5 = register4_q_net;
  assign q_6 = register5_q_net;
  assign q_7 = register6_q_net;
  assign q_8 = register7_q_net;
  assign q_9 = register8_q_net;
  assign q_10 = register9_q_net;
  assign q_11 = register10_q_net;
  assign q_12 = register11_q_net;
  assign q_13 = register12_q_net;
  assign q_14 = register13_q_net;
  assign reinterpret0_output_port_net = d_1;
  assign reinterpret1_output_port_net = d_2;
  assign reinterpret2_output_port_net = d_3;
  assign reinterpret3_output_port_net = d_4;
  assign reinterpret4_output_port_net = d_5;
  assign reinterpret5_output_port_net = d_6;
  assign reinterpret6_output_port_net = d_7;
  assign reinterpret7_output_port_net = d_8;
  assign reinterpret8_output_port_net = d_9;
  assign reinterpret9_output_port_net = d_10;
  assign reinterpret10_output_port_net = d_11;
  assign reinterpret11_output_port_net = d_12;
  assign reinterpret12_output_port_net = d_13;
  assign reinterpret13_output_port_net = d_14;
  assign src_clk_net = clk_1_x0;
  assign src_ce_net = ce_1_x0;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register0 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret0_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register0_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret1_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register1_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register2 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret2_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register2_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register3 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret3_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register3_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register4 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret4_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register4_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register5 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret5_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register5_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register6 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret6_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register6_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register7 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret7_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register7_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register8 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret8_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register8_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register9 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret9_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register9_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register10 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret10_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register10_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register11 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret11_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register11_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register12 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret12_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register12_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register13 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret13_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register13_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/Vector Register7
module fpga_kf_3dof_plus_vector_register7_x0 (
  input [30-1:0] d_1,
  input [30-1:0] d_2,
  input clk_1_x0,
  input ce_1_x0,
  input clk_1,
  input ce_1,
  output [30-1:0] q_1,
  output [30-1:0] q_2
);
  wire src_ce_net;
  wire [30-1:0] register1_q_net;
  wire [30-1:0] register0_q_net_x0;
  wire [30-1:0] register1_q_net_x0;
  wire src_clk_net;
  wire clk_net;
  wire ce_net;
  wire [30-1:0] register0_q_net;
  assign q_1 = register0_q_net;
  assign q_2 = register1_q_net;
  assign register0_q_net_x0 = d_1;
  assign register1_q_net_x0 = d_2;
  assign src_clk_net = clk_1_x0;
  assign src_ce_net = ce_1_x0;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(30),
    .init_value(30'b000000001001100110011001100110)
  )
  register0 (
    .en(1'b1),
    .rst(1'b0),
    .d(register0_q_net_x0),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register0_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(30),
    .init_value(30'b111111110110011001100110011010)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(register1_q_net_x0),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register1_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/Vector Register8
module fpga_kf_3dof_plus_vector_register8_x0 (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  input clk_1_x0,
  input ce_1_x0,
  input clk_1,
  input ce_1,
  output [25-1:0] q_1,
  output [25-1:0] q_2
);
  wire [25-1:0] register0_q_net_x0;
  wire ce_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] register1_q_net_x0;
  wire src_ce_net;
  wire [25-1:0] register1_q_net;
  wire clk_net;
  wire src_clk_net;
  assign q_1 = register0_q_net;
  assign q_2 = register1_q_net;
  assign register0_q_net_x0 = d_1;
  assign register1_q_net_x0 = d_2;
  assign src_clk_net = clk_1_x0;
  assign src_ce_net = ce_1_x0;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register0 (
    .en(1'b1),
    .rst(1'b0),
    .d(register0_q_net_x0),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register0_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(register1_q_net_x0),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register1_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS/Vector Register9
module fpga_kf_3dof_plus_vector_register9 (
  input [25-1:0] d_1,
  input [25-1:0] d_2,
  input [25-1:0] d_3,
  input [25-1:0] d_4,
  input [25-1:0] d_5,
  input [25-1:0] d_6,
  input [25-1:0] d_7,
  input [25-1:0] d_8,
  input [25-1:0] d_9,
  input [25-1:0] d_10,
  input [25-1:0] d_11,
  input [25-1:0] d_12,
  input [25-1:0] d_13,
  input [25-1:0] d_14,
  input clk_1_x0,
  input ce_1_x0,
  input clk_1,
  input ce_1,
  output [25-1:0] q_1,
  output [25-1:0] q_2,
  output [25-1:0] q_3,
  output [25-1:0] q_4,
  output [25-1:0] q_5,
  output [25-1:0] q_6,
  output [25-1:0] q_7,
  output [25-1:0] q_8,
  output [25-1:0] q_9,
  output [25-1:0] q_10,
  output [25-1:0] q_11,
  output [25-1:0] q_12,
  output [25-1:0] q_13,
  output [25-1:0] q_14
);
  wire [25-1:0] register4_q_net;
  wire [25-1:0] register5_q_net;
  wire [25-1:0] register6_q_net;
  wire [25-1:0] register7_q_net;
  wire [25-1:0] register9_q_net;
  wire [25-1:0] register10_q_net;
  wire [25-1:0] register0_q_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] register8_q_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] register12_q_net;
  wire [25-1:0] register13_q_net;
  wire [25-1:0] register11_q_net;
  wire [25-1:0] reinterpret0_output_port_net;
  wire [25-1:0] register1_q_net;
  wire src_ce_net;
  wire [25-1:0] reinterpret7_output_port_net;
  wire [25-1:0] reinterpret10_output_port_net;
  wire src_clk_net;
  wire clk_net;
  wire [25-1:0] reinterpret3_output_port_net;
  wire [25-1:0] reinterpret4_output_port_net;
  wire ce_net;
  wire [25-1:0] reinterpret5_output_port_net;
  wire [25-1:0] reinterpret13_output_port_net;
  wire [25-1:0] reinterpret2_output_port_net;
  wire [25-1:0] reinterpret1_output_port_net;
  wire [25-1:0] reinterpret8_output_port_net;
  wire [25-1:0] reinterpret9_output_port_net;
  wire [25-1:0] reinterpret6_output_port_net;
  wire [25-1:0] reinterpret11_output_port_net;
  wire [25-1:0] reinterpret12_output_port_net;
  assign q_1 = register0_q_net;
  assign q_2 = register1_q_net;
  assign q_3 = register2_q_net;
  assign q_4 = register3_q_net;
  assign q_5 = register4_q_net;
  assign q_6 = register5_q_net;
  assign q_7 = register6_q_net;
  assign q_8 = register7_q_net;
  assign q_9 = register8_q_net;
  assign q_10 = register9_q_net;
  assign q_11 = register10_q_net;
  assign q_12 = register11_q_net;
  assign q_13 = register12_q_net;
  assign q_14 = register13_q_net;
  assign reinterpret0_output_port_net = d_1;
  assign reinterpret1_output_port_net = d_2;
  assign reinterpret2_output_port_net = d_3;
  assign reinterpret3_output_port_net = d_4;
  assign reinterpret4_output_port_net = d_5;
  assign reinterpret5_output_port_net = d_6;
  assign reinterpret6_output_port_net = d_7;
  assign reinterpret7_output_port_net = d_8;
  assign reinterpret8_output_port_net = d_9;
  assign reinterpret9_output_port_net = d_10;
  assign reinterpret10_output_port_net = d_11;
  assign reinterpret11_output_port_net = d_12;
  assign reinterpret12_output_port_net = d_13;
  assign reinterpret13_output_port_net = d_14;
  assign src_clk_net = clk_1_x0;
  assign src_ce_net = ce_1_x0;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register0 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret0_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register0_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret1_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register1_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register2 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret2_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register2_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register3 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret3_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register3_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register4 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret4_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register4_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register5 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret5_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register5_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register6 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret6_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register6_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register7 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret7_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register7_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register8 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret8_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register8_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register9 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret9_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register9_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register10 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret10_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register10_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register11 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret11_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register11_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register12 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret12_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register12_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register13 (
    .en(1'b1),
    .rst(1'b0),
    .d(reinterpret13_output_port_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register13_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block three_axis_plus_plant_ver_barrier/FPGA_KF_3DOF_PLUS_struct
module fpga_kf_3dof_plus_struct (
  input [1-1:0] hw_pot_switch,
  input [14-1:0] x_in,
  input [14-1:0] z_in,
  input [32-1:0] registers_addr_in,
  input [25-1:0] registers_data_in,
  input [32-1:0] registers_subaddr_in,
  input [1-1:0] registers_update_in,
  input [1-1:0] registers_wren_in,
  input [14-1:0] adc_ch1_offst,
  input [14-1:0] adc_ch2_offst,
  input [2-1:0] ap_ip_switch_in,
  input [25-1:0] c_iu,
  input [1-1:0] disco_mode_enable,
  input [16-1:0] fixed_led_pattern_in,
  input [25-1:0] k_iu,
  input [25-1:0] barrier_c0_data_in,
  input [25-1:0] barrier_c1_data_in,
  input [25-1:0] barrier_c_idx_in,
  input [10-1:0] barrier_c_ofst_idx_in,
  input [10-1:0] barrier_ram_addr_in,
  input [1-1:0] barrier_ram_we_in,
  input [30-1:0] barrier_lb_in,
  input [30-1:0] barrier_ub_in,
  input [32-1:0] dma_trigger_time,
  input [3-1:0] fb_src_switch_in,
  input [1-1:0] iu_enb,
  input [25-1:0] iu_lb,
  input [25-1:0] iu_ub,
  input [14-1:0] noise_gain_in,
  input [14-1:0] out_switch_off,
  input [14-1:0] out_switch_on,
  input [32-1:0] reg_out_switch_t0,
  input [32-1:0] reg_out_switch_tf,
  input [32-1:0] reg_rp_switch_t0,
  input [32-1:0] reg_rp_switch_tf,
  input [32-1:0] reg_timer_period,
  input [2-1:0] sw_override_in,
  input [1-1:0] x_ref_enb,
  input [18-1:0] x_ref_in,
  input [30-1:0] x_ref_lb,
  input [30-1:0] x_ref_ub,
  input [14-1:0] dac_2_bias,
  input [14-1:0] dac_1_bias,
  input clk_1_x0,
  input ce_1_x0,
  input clk_4,
  input ce_4,
  input clk_64,
  input ce_64,
  input clk_1,
  input ce_1,
  output [14-1:0] dac_pulse_out,
  output [30-1:0] divisor_out,
  output [32-1:0] dma_out_1,
  output [32-1:0] dma_out_2,
  output [32-1:0] dma_out_3,
  output [32-1:0] dma_out_4,
  output [32-1:0] dma_out_5,
  output [32-1:0] dma_out_6,
  output [32-1:0] dma_out_7,
  output [14-1:0] gate_fb_x_out,
  output [14-1:0] gate_fb_z_out,
  output [8-1:0] gate_leds_out,
  output [14-1:0] gate_x1_out,
  output [14-1:0] gate_x2_out,
  output [14-1:0] gate_x3_out,
  output [14-1:0] gate_x4_out,
  output [14-1:0] gate_x5_out,
  output [14-1:0] gate_x6_out,
  output [14-1:0] gate_x7_out,
  output [16-1:0] gate_y_x_corrected_out,
  output [16-1:0] gate_y_z_corrected_out,
  output [1-1:0] tmr_dma_trigger_output
);
  wire [32-1:0] concat4_y_net;
  wire [32-1:0] concat6_y_net;
  wire [8-1:0] concat1_y_net;
  wire [32-1:0] concat5_y_net;
  wire [14-1:0] upsample0_q_net;
  wire [32-1:0] concat3_y_net;
  wire [14-1:0] upsample1_q_net;
  wire [14-1:0] upsample2_q_net;
  wire [30-1:0] add_offset_ch2_s_net;
  wire [32-1:0] concat7_y_net;
  wire [14-1:0] add_dac_2_bias_s_net;
  wire [32-1:0] concat_y_net;
  wire [14-1:0] upsample3_q_net;
  wire [14-1:0] upsample4_q_net;
  wire [14-1:0] upsample5_q_net;
  wire [14-1:0] upsample6_q_net;
  wire [16-1:0] sfix16_13_cast_dout_net;
  wire [16-1:0] sfix16_13_cast1_dout_net;
  wire [1-1:0] hw_pot_switch_net;
  wire [14-1:0] register8_q_net_x5;
  wire [14-1:0] add_dac_1_bias_s_net;
  wire [32-1:0] concat2_y_net;
  wire [1-1:0] disco_mode_enable_net;
  wire [14-1:0] adc_ch2_offst_net;
  wire [14-1:0] z_in_net;
  wire [10-1:0] barrier_c_ofst_idx_in_net;
  wire [1-1:0] barrier_ram_we_in_net;
  wire [30-1:0] barrier_lb_in_net;
  wire [25-1:0] k_iu_net;
  wire [14-1:0] adc_ch1_offst_net;
  wire [25-1:0] c_iu_net;
  wire [1-1:0] registers_update_in_net;
  wire [30-1:0] barrier_ub_in_net;
  wire [32-1:0] dma_trigger_time_net;
  wire [3-1:0] fb_src_switch_in_net;
  wire [32-1:0] registers_addr_in_net;
  wire [2-1:0] ap_ip_switch_in_net;
  wire [32-1:0] registers_subaddr_in_net;
  wire [16-1:0] fixed_led_pattern_in_net;
  wire [10-1:0] barrier_ram_addr_in_net;
  wire [25-1:0] iu_ub_net;
  wire [14-1:0] out_switch_off_net;
  wire [1-1:0] iu_enb_net;
  wire [14-1:0] out_switch_on_net;
  wire [1-1:0] registers_wren_in_net;
  wire [14-1:0] x_in_net;
  wire [25-1:0] iu_lb_net;
  wire [14-1:0] noise_gain_in_net;
  wire [32-1:0] reg_out_switch_t0_net;
  wire [25-1:0] registers_data_in_net;
  wire [25-1:0] barrier_c1_data_in_net;
  wire [25-1:0] barrier_c_idx_in_net;
  wire [25-1:0] barrier_c0_data_in_net;
  wire [1-1:0] dma_trigger_threshold_op_net;
  wire [6-1:0] register7_q_net_x5;
  wire [18-1:0] register11_q_net_x5;
  wire [10-1:0] register13_q_net_x5;
  wire [25-1:0] register0_q_net_x2;
  wire [14-1:0] dac_2_bias_net;
  wire [1-1:0] register9_q_net_x5;
  wire clk_net_x0;
  wire [1-1:0] register15_q_net_x1;
  wire [14-1:0] register1_q_net_x6;
  wire [2-1:0] sw_override_in_net;
  wire [30-1:0] register2_q_net_x5;
  wire [30-1:0] register4_q_net_x5;
  wire [2-1:0] register5_q_net_x5;
  wire ce_net_x1;
  wire [3-1:0] register16_q_net_x1;
  wire [32-1:0] reg_rp_switch_tf_net;
  wire [25-1:0] register0_q_net_x4;
  wire [10-1:0] register14_q_net_x1;
  wire src_clk_net;
  wire clk_net;
  wire [25-1:0] register0_q_net_x8;
  wire [25-1:0] register0_q_net_x1;
  wire clk_net_x1;
  wire src_ce_net;
  wire [32-1:0] reg_rp_switch_t0_net;
  wire [32-1:0] reg_timer_period_net;
  wire [25-1:0] register0_q_net_x3;
  wire [25-1:0] register0_q_net;
  wire [14-1:0] register6_q_net_x5;
  wire [1-1:0] x_ref_enb_net;
  wire [25-1:0] register0_q_net_x0;
  wire [25-1:0] register12_q_net_x5;
  wire [14-1:0] register3_q_net_x5;
  wire [25-1:0] register0_q_net_x9;
  wire [1-1:0] register10_q_net_x6;
  wire [25-1:0] register0_q_net_x5;
  wire [32-1:0] reg_out_switch_tf_net;
  wire [14-1:0] dac_1_bias_net;
  wire ce_net_x0;
  wire [1-1:0] register_q_net;
  wire [30-1:0] x_ref_ub_net;
  wire [30-1:0] register0_q_net_x10;
  wire [25-1:0] register17_q_net_x1;
  wire [30-1:0] x_ref_lb_net;
  wire [18-1:0] x_ref_in_net;
  wire ce_net;
  wire [25-1:0] register25_q_net_x0;
  wire [25-1:0] register31_q_net_x0;
  wire [25-1:0] register18_q_net_x0;
  wire [25-1:0] register34_q_net_x0;
  wire [25-1:0] register2_q_net_x4;
  wire [25-1:0] register15_q_net_x0;
  wire [25-1:0] register21_q_net_x0;
  wire [25-1:0] register30_q_net_x0;
  wire [25-1:0] register35_q_net_x0;
  wire [25-1:0] register18_q_net_x1;
  wire [25-1:0] register29_q_net_x0;
  wire [25-1:0] register23_q_net_x0;
  wire [25-1:0] register36_q_net_x0;
  wire [25-1:0] register13_q_net_x4;
  wire [25-1:0] register10_q_net_x5;
  wire [25-1:0] register16_q_net_x0;
  wire [25-1:0] register26_q_net_x0;
  wire [25-1:0] register38_q_net_x0;
  wire [25-1:0] register42_q_net_x0;
  wire [25-1:0] register45_q_net_x0;
  wire [25-1:0] register47_q_net_x0;
  wire [25-1:0] register48_q_net_x0;
  wire [25-1:0] register2_q_net_x1;
  wire [14-1:0] register22_q_net_x1;
  wire [25-1:0] register3_q_net_x4;
  wire [25-1:0] register9_q_net_x4;
  wire [25-1:0] register17_q_net_x0;
  wire [25-1:0] register27_q_net_x0;
  wire [25-1:0] register33_q_net_x0;
  wire [25-1:0] register37_q_net_x0;
  wire [25-1:0] register28_q_net_x0;
  wire [25-1:0] register43_q_net_x0;
  wire [25-1:0] register46_q_net_x0;
  wire [25-1:0] register44_q_net_x0;
  wire [25-1:0] register5_q_net_x1;
  wire [25-1:0] register5_q_net_x4;
  wire [25-1:0] register39_q_net_x0;
  wire [25-1:0] register6_q_net_x4;
  wire [25-1:0] register40_q_net_x0;
  wire [25-1:0] register6_q_net_x1;
  wire [25-1:0] register1_q_net_x2;
  wire [25-1:0] register7_q_net_x1;
  wire [25-1:0] register8_q_net_x1;
  wire [25-1:0] register9_q_net_x1;
  wire [25-1:0] register10_q_net_x2;
  wire [25-1:0] register3_q_net_x1;
  wire [25-1:0] register21_q_net_x1;
  wire [25-1:0] register11_q_net_x4;
  wire [25-1:0] register32_q_net_x0;
  wire [25-1:0] register4_q_net_x1;
  wire [25-1:0] register7_q_net_x4;
  wire [25-1:0] register41_q_net_x0;
  wire [25-1:0] register4_q_net_x4;
  wire [25-1:0] register1_q_net_x5;
  wire [25-1:0] register19_q_net_x1;
  wire [1-1:0] register20_q_net_x1;
  wire [14-1:0] register23_q_net_x1;
  wire [25-1:0] register8_q_net_x4;
  wire [25-1:0] register12_q_net_x4;
  wire [25-1:0] register14_q_net_x0;
  wire [25-1:0] register19_q_net_x0;
  wire [25-1:0] register20_q_net_x0;
  wire [25-1:0] register22_q_net_x0;
  wire [25-1:0] register24_q_net_x0;
  wire [25-1:0] register19_q_net;
  wire [25-1:0] register20_q_net;
  wire [25-1:0] register23_q_net;
  wire [25-1:0] register9_q_net_x6;
  wire [25-1:0] register3_q_net_x3;
  wire [25-1:0] register17_q_net;
  wire [25-1:0] register24_q_net;
  wire [25-1:0] register28_q_net;
  wire [25-1:0] register8_q_net_x7;
  wire [25-1:0] register29_q_net;
  wire [25-1:0] register2_q_net_x2;
  wire [25-1:0] register8_q_net_x2;
  wire [25-1:0] register4_q_net_x6;
  wire [25-1:0] register1_q_net_x4;
  wire [25-1:0] register12_q_net_x1;
  wire [25-1:0] register11_q_net_x6;
  wire [25-1:0] register4_q_net_x3;
  wire [25-1:0] register5_q_net_x6;
  wire [25-1:0] register8_q_net_x3;
  wire [25-1:0] register25_q_net;
  wire [25-1:0] register1_q_net_x9;
  wire [25-1:0] register9_q_net_x3;
  wire [25-1:0] register22_q_net;
  wire [25-1:0] register21_q_net;
  wire [25-1:0] register9_q_net_x2;
  wire [25-1:0] register5_q_net_x3;
  wire [25-1:0] register15_q_net;
  wire [25-1:0] register10_q_net_x4;
  wire [25-1:0] register4_q_net_x2;
  wire [25-1:0] register11_q_net_x3;
  wire [25-1:0] register12_q_net_x3;
  wire [25-1:0] register26_q_net;
  wire [25-1:0] register30_q_net;
  wire [25-1:0] register13_q_net_x2;
  wire [25-1:0] register16_q_net;
  wire [25-1:0] register31_q_net;
  wire [25-1:0] register32_q_net;
  wire [25-1:0] register33_q_net;
  wire [25-1:0] register12_q_net_x2;
  wire [25-1:0] register6_q_net_x7;
  wire [25-1:0] register27_q_net;
  wire [25-1:0] register3_q_net_x2;
  wire [25-1:0] register34_q_net;
  wire [25-1:0] register7_q_net_x2;
  wire [25-1:0] register35_q_net;
  wire [25-1:0] register10_q_net_x3;
  wire [25-1:0] register2_q_net_x6;
  wire [25-1:0] register13_q_net_x1;
  wire [25-1:0] register5_q_net_x2;
  wire [25-1:0] register3_q_net_x6;
  wire [25-1:0] register12_q_net_x6;
  wire [25-1:0] register1_q_net_x3;
  wire [25-1:0] register6_q_net_x3;
  wire [25-1:0] register6_q_net_x2;
  wire [25-1:0] register13_q_net_x6;
  wire [25-1:0] register11_q_net_x1;
  wire [25-1:0] register7_q_net_x7;
  wire [25-1:0] register10_q_net_x7;
  wire [25-1:0] register11_q_net_x2;
  wire [25-1:0] register2_q_net_x3;
  wire [25-1:0] register7_q_net_x3;
  wire [25-1:0] register13_q_net_x3;
  wire [25-1:0] register14_q_net;
  wire [25-1:0] register18_q_net;
  wire [25-1:0] register7_q_net_x0;
  wire [25-1:0] register8_q_net_x0;
  wire [25-1:0] register7_q_net;
  wire [25-1:0] register2_q_net_x7;
  wire [25-1:0] register37_q_net;
  wire [25-1:0] register3_q_net_x7;
  wire [25-1:0] register6_q_net_x8;
  wire [25-1:0] register40_q_net;
  wire [25-1:0] register11_q_net;
  wire [25-1:0] register5_q_net;
  wire [25-1:0] register7_q_net_x8;
  wire [25-1:0] register41_q_net;
  wire [25-1:0] register10_q_net;
  wire [25-1:0] register13_q_net_x7;
  wire [30-1:0] register1_q_net_x11;
  wire [25-1:0] register38_q_net;
  wire [25-1:0] register5_q_net_x7;
  wire [25-1:0] reinterpret0_output_port_net_x5;
  wire [25-1:0] register12_q_net_x7;
  wire [25-1:0] register4_q_net_x0;
  wire [25-1:0] register12_q_net_x0;
  wire [25-1:0] register10_q_net_x0;
  wire [25-1:0] register5_q_net_x0;
  wire [25-1:0] register4_q_net;
  wire [25-1:0] register39_q_net;
  wire [25-1:0] register42_q_net;
  wire [25-1:0] register11_q_net_x0;
  wire [25-1:0] register1_q_net_x0;
  wire [25-1:0] register4_q_net_x7;
  wire [25-1:0] register6_q_net_x0;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] register1_q_net_x10;
  wire [25-1:0] register9_q_net;
  wire [25-1:0] reinterpret0_output_port_net_x4;
  wire [25-1:0] reinterpret0_output_port_net_x3;
  wire [25-1:0] reinterpret0_output_port_net_x2;
  wire [25-1:0] reinterpret0_output_port_net_x6;
  wire [1-1:0] sw_switch_mux_y_net;
  wire [25-1:0] register10_q_net_x1;
  wire [25-1:0] register1_q_net_x1;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] register8_q_net_x8;
  wire [25-1:0] register48_q_net;
  wire [25-1:0] reinterpret0_output_port_net_x1;
  wire [25-1:0] reinterpret0_output_port_net_x0;
  wire [25-1:0] register43_q_net;
  wire [25-1:0] register9_q_net_x7;
  wire [25-1:0] register11_q_net_x7;
  wire [25-1:0] reinterpret0_output_port_net;
  wire [6-1:0] mux_y_net;
  wire [25-1:0] register13_q_net_x0;
  wire [25-1:0] register47_q_net;
  wire [25-1:0] register9_q_net_x0;
  wire [25-1:0] register44_q_net;
  wire [25-1:0] register45_q_net;
  wire [25-1:0] register3_q_net;
  wire [25-1:0] register2_q_net_x0;
  wire [25-1:0] register3_q_net_x0;
  wire [25-1:0] register36_q_net;
  wire [25-1:0] register46_q_net;
  wire [25-1:0] register6_q_net;
  wire [25-1:0] register8_q_net;
  wire [25-1:0] register13_q_net;
  wire [25-1:0] register12_q_net;
  wire [10-1:0] register19_q_net_x2;
  wire [25-1:0] register0_q_net_x6;
  wire [25-1:0] reinterpret34_output_port_net_x0;
  wire [10-1:0] register20_q_net_x2;
  wire [25-1:0] reinterpret36_output_port_net_x0;
  wire [25-1:0] reinterpret28_output_port_net_x0;
  wire [25-1:0] reinterpret10_output_port_net_x6;
  wire [1-1:0] register21_q_net_x2;
  wire [14-1:0] register8_q_net_x6;
  wire [25-1:0] reinterpret4_output_port_net_x6;
  wire [25-1:0] reinterpret11_output_port_net_x6;
  wire [2-1:0] register6_q_net_x6;
  wire [25-1:0] register18_q_net_x2;
  wire [1-1:0] register26_q_net_x1;
  wire [25-1:0] register31_q_net_x1;
  wire [25-1:0] reinterpret21_output_port_net_x0;
  wire [25-1:0] reinterpret22_output_port_net_x0;
  wire [25-1:0] reinterpret31_output_port_net_x0;
  wire [25-1:0] reinterpret1_output_port_net_x6;
  wire [25-1:0] reinterpret17_output_port_net_x0;
  wire [3-1:0] register17_q_net_x2;
  wire [25-1:0] reinterpret33_output_port_net_x0;
  wire [30-1:0] register24_q_net_x1;
  wire [14-1:0] register22_q_net_x2;
  wire [18-1:0] register16_q_net_x2;
  wire [14-1:0] register7_q_net_x6;
  wire [1-1:0] register30_q_net_x1;
  wire [25-1:0] reinterpret8_output_port_net_x6;
  wire [25-1:0] register28_q_net_x1;
  wire [25-1:0] reinterpret13_output_port_net_x6;
  wire [25-1:0] reinterpret14_output_port_net_x0;
  wire [25-1:0] reinterpret19_output_port_net_x0;
  wire [25-1:0] reinterpret25_output_port_net_x0;
  wire [25-1:0] reinterpret3_output_port_net_x6;
  wire [14-1:0] register32_q_net_x1;
  wire [25-1:0] reinterpret5_output_port_net_x6;
  wire [30-1:0] register25_q_net_x1;
  wire [25-1:0] reinterpret16_output_port_net_x0;
  wire [25-1:0] reinterpret26_output_port_net_x0;
  wire [25-1:0] reinterpret30_output_port_net_x0;
  wire [25-1:0] reinterpret32_output_port_net_x0;
  wire [25-1:0] reinterpret35_output_port_net_x0;
  wire [25-1:0] reinterpret37_output_port_net_x0;
  wire [25-1:0] reinterpret38_output_port_net_x0;
  wire [25-1:0] reinterpret15_output_port_net_x0;
  wire [14-1:0] register33_q_net_x1;
  wire [25-1:0] reinterpret39_output_port_net_x0;
  wire [25-1:0] reinterpret12_output_port_net_x6;
  wire [25-1:0] register29_q_net_x1;
  wire [25-1:0] reinterpret27_output_port_net_x0;
  wire [25-1:0] reinterpret2_output_port_net_x6;
  wire [25-1:0] reinterpret29_output_port_net_x0;
  wire [25-1:0] reinterpret20_output_port_net_x0;
  wire [25-1:0] reinterpret40_output_port_net_x0;
  wire [25-1:0] reinterpret6_output_port_net_x6;
  wire [25-1:0] register27_q_net_x1;
  wire [25-1:0] reinterpret18_output_port_net_x0;
  wire [25-1:0] reinterpret9_output_port_net_x6;
  wire [25-1:0] reinterpret23_output_port_net_x0;
  wire [25-1:0] reinterpret24_output_port_net_x0;
  wire [14-1:0] dac_enable_y_net;
  wire [1-1:0] hw_switch_flag_delay_match_q_net;
  wire [25-1:0] reinterpret7_output_port_net_x6;
  wire [30-1:0] register0_q_net_x7;
  wire [25-1:0] reinterpret4_output_port_net_x2;
  wire [25-1:0] reinterpret13_output_port_net_x4;
  wire [25-1:0] reinterpret7_output_port_net_x3;
  wire [25-1:0] reinterpret9_output_port_net_x3;
  wire [25-1:0] reinterpret12_output_port_net_x4;
  wire [25-1:0] reinterpret9_output_port_net_x2;
  wire [25-1:0] reinterpret42_output_port_net_x0;
  wire [25-1:0] reinterpret43_output_port_net_x0;
  wire [25-1:0] reinterpret10_output_port_net_x2;
  wire [25-1:0] reinterpret11_output_port_net_x2;
  wire [25-1:0] reinterpret44_output_port_net_x0;
  wire [25-1:0] reinterpret7_output_port_net_x4;
  wire [25-1:0] reinterpret10_output_port_net_x3;
  wire [25-1:0] reinterpret5_output_port_net_x2;
  wire [25-1:0] reinterpret6_output_port_net_x4;
  wire [25-1:0] reinterpret12_output_port_net_x2;
  wire [25-1:0] reinterpret2_output_port_net_x5;
  wire [25-1:0] reinterpret5_output_port_net_x5;
  wire [25-1:0] reinterpret9_output_port_net_x5;
  wire [25-1:0] reinterpret2_output_port_net_x4;
  wire [25-1:0] reinterpret4_output_port_net_x3;
  wire [25-1:0] reinterpret11_output_port_net_x5;
  wire [25-1:0] reinterpret1_output_port_net_x5;
  wire [25-1:0] reinterpret13_output_port_net_x2;
  wire [25-1:0] reinterpret46_output_port_net_x0;
  wire [25-1:0] reinterpret4_output_port_net_x4;
  wire [25-1:0] reinterpret3_output_port_net_x5;
  wire [25-1:0] reinterpret47_output_port_net_x0;
  wire [25-1:0] reinterpret7_output_port_net_x2;
  wire [25-1:0] reinterpret10_output_port_net_x5;
  wire [25-1:0] reinterpret12_output_port_net_x5;
  wire [25-1:0] reinterpret6_output_port_net_x5;
  wire [25-1:0] reinterpret8_output_port_net_x2;
  wire [25-1:0] reinterpret13_output_port_net_x5;
  wire [25-1:0] reinterpret1_output_port_net_x4;
  wire [25-1:0] reinterpret13_output_port_net_x3;
  wire [25-1:0] reinterpret4_output_port_net_x5;
  wire [25-1:0] reinterpret14_output_port_net;
  wire [25-1:0] reinterpret7_output_port_net_x5;
  wire [25-1:0] reinterpret15_output_port_net;
  wire [25-1:0] reinterpret16_output_port_net;
  wire [25-1:0] reinterpret17_output_port_net;
  wire [25-1:0] reinterpret1_output_port_net_x3;
  wire [25-1:0] reinterpret8_output_port_net_x5;
  wire [25-1:0] reinterpret48_output_port_net_x0;
  wire [25-1:0] reinterpret9_output_port_net_x4;
  wire [25-1:0] reinterpret5_output_port_net_x3;
  wire [25-1:0] reinterpret45_output_port_net_x0;
  wire [25-1:0] reinterpret6_output_port_net_x2;
  wire [25-1:0] reinterpret12_output_port_net_x3;
  wire [25-1:0] reinterpret3_output_port_net_x3;
  wire [25-1:0] reinterpret10_output_port_net_x4;
  wire [25-1:0] reinterpret5_output_port_net_x4;
  wire [25-1:0] reinterpret41_output_port_net_x0;
  wire [25-1:0] reinterpret8_output_port_net_x4;
  wire [25-1:0] reinterpret2_output_port_net_x3;
  wire [25-1:0] reinterpret3_output_port_net_x4;
  wire [25-1:0] reinterpret11_output_port_net_x4;
  wire [25-1:0] reinterpret6_output_port_net_x3;
  wire [25-1:0] reinterpret8_output_port_net_x3;
  wire [25-1:0] reinterpret11_output_port_net_x3;
  wire [25-1:0] reinterpret1_output_port_net_x2;
  wire [25-1:0] reinterpret2_output_port_net_x2;
  wire [25-1:0] reinterpret3_output_port_net_x2;
  wire [25-1:0] reinterpret7_output_port_net_x0;
  wire [25-1:0] reinterpret13_output_port_net_x1;
  wire [25-1:0] reinterpret8_output_port_net_x0;
  wire [25-1:0] reinterpret34_output_port_net;
  wire [25-1:0] reinterpret27_output_port_net;
  wire [25-1:0] reinterpret33_output_port_net;
  wire [25-1:0] reinterpret47_output_port_net;
  wire [25-1:0] reinterpret10_output_port_net_x0;
  wire [25-1:0] reinterpret37_output_port_net;
  wire [25-1:0] reinterpret46_output_port_net;
  wire [25-1:0] reinterpret48_output_port_net;
  wire [25-1:0] reinterpret11_output_port_net_x0;
  wire [25-1:0] reinterpret12_output_port_net_x0;
  wire [25-1:0] reinterpret1_output_port_net;
  wire [25-1:0] reinterpret2_output_port_net;
  wire [25-1:0] reinterpret43_output_port_net;
  wire [25-1:0] reinterpret7_output_port_net_x1;
  wire [25-1:0] reinterpret11_output_port_net_x1;
  wire [25-1:0] reinterpret4_output_port_net;
  wire [25-1:0] reinterpret5_output_port_net;
  wire [25-1:0] reinterpret9_output_port_net_x1;
  wire [25-1:0] reinterpret6_output_port_net;
  wire [25-1:0] reinterpret7_output_port_net;
  wire [25-1:0] reinterpret45_output_port_net;
  wire [25-1:0] reinterpret28_output_port_net;
  wire [25-1:0] reinterpret31_output_port_net;
  wire [25-1:0] reinterpret35_output_port_net;
  wire [25-1:0] reinterpret20_output_port_net;
  wire [25-1:0] reinterpret23_output_port_net;
  wire [25-1:0] reinterpret42_output_port_net;
  wire [25-1:0] reinterpret18_output_port_net;
  wire [25-1:0] reinterpret38_output_port_net;
  wire [25-1:0] reinterpret1_output_port_net_x1;
  wire [25-1:0] reinterpret2_output_port_net_x1;
  wire [25-1:0] reinterpret36_output_port_net;
  wire [25-1:0] reinterpret4_output_port_net_x1;
  wire [25-1:0] reinterpret6_output_port_net_x1;
  wire [25-1:0] reinterpret12_output_port_net_x1;
  wire [25-1:0] reinterpret19_output_port_net;
  wire [25-1:0] reinterpret21_output_port_net;
  wire [25-1:0] reinterpret39_output_port_net;
  wire [25-1:0] reinterpret3_output_port_net_x1;
  wire [25-1:0] reinterpret5_output_port_net_x1;
  wire [25-1:0] reinterpret40_output_port_net;
  wire [25-1:0] reinterpret2_output_port_net_x0;
  wire [25-1:0] reinterpret26_output_port_net;
  wire [25-1:0] reinterpret4_output_port_net_x0;
  wire [25-1:0] reinterpret5_output_port_net_x0;
  wire [25-1:0] reinterpret13_output_port_net_x0;
  wire [25-1:0] reinterpret44_output_port_net;
  wire [25-1:0] reinterpret9_output_port_net_x0;
  wire [25-1:0] reinterpret25_output_port_net;
  wire [25-1:0] reinterpret3_output_port_net;
  wire [25-1:0] reinterpret30_output_port_net;
  wire [25-1:0] reinterpret10_output_port_net_x1;
  wire [25-1:0] reinterpret41_output_port_net;
  wire [25-1:0] reinterpret1_output_port_net_x0;
  wire [25-1:0] reinterpret24_output_port_net;
  wire [25-1:0] reinterpret32_output_port_net;
  wire [25-1:0] reinterpret29_output_port_net;
  wire [25-1:0] reinterpret22_output_port_net;
  wire [25-1:0] reinterpret8_output_port_net_x1;
  wire [25-1:0] reinterpret3_output_port_net_x0;
  wire [25-1:0] reinterpret6_output_port_net_x0;
  wire [25-1:0] register1_q_net_x7;
  wire [25-1:0] reinterpret10_output_port_net;
  wire [25-1:0] reinterpret12_output_port_net;
  wire [30-1:0] register1_q_net_x8;
  wire [25-1:0] reinterpret11_output_port_net;
  wire [25-1:0] reinterpret8_output_port_net;
  wire [25-1:0] reinterpret9_output_port_net;
  wire [25-1:0] reinterpret13_output_port_net;
  assign dac_pulse_out = register8_q_net_x5;
  assign divisor_out = add_offset_ch2_s_net;
  assign dma_out_1 = concat_y_net;
  assign dma_out_2 = concat2_y_net;
  assign dma_out_3 = concat3_y_net;
  assign dma_out_4 = concat5_y_net;
  assign dma_out_5 = concat4_y_net;
  assign dma_out_6 = concat6_y_net;
  assign dma_out_7 = concat7_y_net;
  assign gate_fb_x_out = add_dac_1_bias_s_net;
  assign gate_fb_z_out = add_dac_2_bias_s_net;
  assign gate_leds_out = concat1_y_net;
  assign gate_x1_out = upsample0_q_net;
  assign gate_x2_out = upsample1_q_net;
  assign gate_x3_out = upsample2_q_net;
  assign gate_x4_out = upsample3_q_net;
  assign gate_x5_out = upsample4_q_net;
  assign gate_x6_out = upsample5_q_net;
  assign gate_x7_out = upsample6_q_net;
  assign gate_y_x_corrected_out = sfix16_13_cast_dout_net;
  assign gate_y_z_corrected_out = sfix16_13_cast1_dout_net;
  assign hw_pot_switch_net = hw_pot_switch;
  assign x_in_net = x_in;
  assign z_in_net = z_in;
  assign registers_addr_in_net = registers_addr_in;
  assign registers_data_in_net = registers_data_in;
  assign registers_subaddr_in_net = registers_subaddr_in;
  assign registers_update_in_net = registers_update_in;
  assign registers_wren_in_net = registers_wren_in;
  assign adc_ch1_offst_net = adc_ch1_offst;
  assign adc_ch2_offst_net = adc_ch2_offst;
  assign ap_ip_switch_in_net = ap_ip_switch_in;
  assign c_iu_net = c_iu;
  assign disco_mode_enable_net = disco_mode_enable;
  assign fixed_led_pattern_in_net = fixed_led_pattern_in;
  assign k_iu_net = k_iu;
  assign tmr_dma_trigger_output = dma_trigger_threshold_op_net;
  assign barrier_c0_data_in_net = barrier_c0_data_in;
  assign barrier_c1_data_in_net = barrier_c1_data_in;
  assign barrier_c_idx_in_net = barrier_c_idx_in;
  assign barrier_c_ofst_idx_in_net = barrier_c_ofst_idx_in;
  assign barrier_ram_addr_in_net = barrier_ram_addr_in;
  assign barrier_ram_we_in_net = barrier_ram_we_in;
  assign barrier_lb_in_net = barrier_lb_in;
  assign barrier_ub_in_net = barrier_ub_in;
  assign dma_trigger_time_net = dma_trigger_time;
  assign fb_src_switch_in_net = fb_src_switch_in;
  assign iu_enb_net = iu_enb;
  assign iu_lb_net = iu_lb;
  assign iu_ub_net = iu_ub;
  assign noise_gain_in_net = noise_gain_in;
  assign out_switch_off_net = out_switch_off;
  assign out_switch_on_net = out_switch_on;
  assign reg_out_switch_t0_net = reg_out_switch_t0;
  assign reg_out_switch_tf_net = reg_out_switch_tf;
  assign reg_rp_switch_t0_net = reg_rp_switch_t0;
  assign reg_rp_switch_tf_net = reg_rp_switch_tf;
  assign reg_timer_period_net = reg_timer_period;
  assign sw_override_in_net = sw_override_in;
  assign x_ref_enb_net = x_ref_enb;
  assign x_ref_in_net = x_ref_in;
  assign x_ref_lb_net = x_ref_lb;
  assign x_ref_ub_net = x_ref_ub;
  assign dac_2_bias_net = dac_2_bias;
  assign dac_1_bias_net = dac_1_bias;
  assign src_clk_net = clk_1_x0;
  assign src_ce_net = ce_1_x0;
  assign clk_net_x0 = clk_4;
  assign ce_net_x0 = ce_4;
  assign clk_net_x1 = clk_64;
  assign ce_net_x1 = ce_64;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fpga_kf_3dof_plus_adc_clock_domain_wrapper adc_clock_domain_wrapper (
    .sw_in(register_q_net),
    .fmat_in_1(register0_q_net_x5),
    .lmat_in_1(register0_q_net_x2),
    .kmat_in_1(register0_q_net_x3),
    .bmat_in_1(register0_q_net_x8),
    .fmat_ip_in_1(register0_q_net_x4),
    .lmat_ip_in_1(register0_q_net_x1),
    .kmat_ip_in_1(register0_q_net_x0),
    .bmat_ip_in_1(register0_q_net),
    .hw_switch_override(register5_q_net_x5),
    .adc_ch1_offst(register3_q_net_x5),
    .adc_ch2_offst(register6_q_net_x5),
    .pot_switch_hw(register8_q_net_x5),
    .pot_switch_hw_flag(register9_q_net_x5),
    .leds_in(register7_q_net_x5),
    .x_ref_in(register11_q_net_x5),
    .fb_src_switch(register16_q_net_x1),
    .barrier_ub_lb_in_1(register0_q_net_x10),
    .barrier_c_idx_in(register12_q_net_x5),
    .barrier_c_ofst_idx_in(register13_q_net_x5),
    .barrier_ram_addr_in(register14_q_net_x1),
    .barrier_ram_data_in_1(register0_q_net_x9),
    .barrier_ram_we_in(register15_q_net_x1),
    .noise_gain_in(register1_q_net_x6),
    .x_ref_ub_in(register2_q_net_x5),
    .x_ref_lb_in(register4_q_net_x5),
    .x_ref_enb_in(register10_q_net_x6),
    .c_iu_in(register17_q_net_x1),
    .iu_ub_in(register18_q_net_x1),
    .iu_lb_in(register19_q_net_x1),
    .iu_enb(register20_q_net_x1),
    .k_iu_in(register21_q_net_x1),
    .dac_1_bias_in(register22_q_net_x1),
    .dac_2_bias_in(register23_q_net_x1),
    .fmat_in_2(register1_q_net_x5),
    .fmat_in_3(register2_q_net_x4),
    .fmat_in_4(register3_q_net_x4),
    .fmat_in_5(register4_q_net_x4),
    .fmat_in_6(register5_q_net_x4),
    .fmat_in_7(register6_q_net_x4),
    .fmat_in_8(register7_q_net_x4),
    .fmat_in_9(register8_q_net_x4),
    .fmat_in_10(register9_q_net_x4),
    .fmat_in_11(register10_q_net_x5),
    .fmat_in_12(register11_q_net_x4),
    .fmat_in_13(register12_q_net_x4),
    .fmat_in_14(register13_q_net_x4),
    .fmat_in_15(register14_q_net_x0),
    .fmat_in_16(register15_q_net_x0),
    .fmat_in_17(register16_q_net_x0),
    .fmat_in_18(register17_q_net_x0),
    .fmat_in_19(register18_q_net_x0),
    .fmat_in_20(register19_q_net_x0),
    .fmat_in_21(register20_q_net_x0),
    .fmat_in_22(register21_q_net_x0),
    .fmat_in_23(register22_q_net_x0),
    .fmat_in_24(register23_q_net_x0),
    .fmat_in_25(register24_q_net_x0),
    .fmat_in_26(register25_q_net_x0),
    .fmat_in_27(register26_q_net_x0),
    .fmat_in_28(register27_q_net_x0),
    .fmat_in_29(register28_q_net_x0),
    .fmat_in_30(register29_q_net_x0),
    .fmat_in_31(register30_q_net_x0),
    .fmat_in_32(register31_q_net_x0),
    .fmat_in_33(register32_q_net_x0),
    .fmat_in_34(register33_q_net_x0),
    .fmat_in_35(register34_q_net_x0),
    .fmat_in_36(register35_q_net_x0),
    .fmat_in_37(register36_q_net_x0),
    .fmat_in_38(register37_q_net_x0),
    .fmat_in_39(register38_q_net_x0),
    .fmat_in_40(register39_q_net_x0),
    .fmat_in_41(register40_q_net_x0),
    .fmat_in_42(register41_q_net_x0),
    .fmat_in_43(register42_q_net_x0),
    .fmat_in_44(register43_q_net_x0),
    .fmat_in_45(register44_q_net_x0),
    .fmat_in_46(register45_q_net_x0),
    .fmat_in_47(register46_q_net_x0),
    .fmat_in_48(register47_q_net_x0),
    .fmat_in_49(register48_q_net_x0),
    .lmat_in_2(register1_q_net_x2),
    .lmat_in_3(register2_q_net_x1),
    .lmat_in_4(register3_q_net_x1),
    .lmat_in_5(register4_q_net_x1),
    .lmat_in_6(register5_q_net_x1),
    .lmat_in_7(register6_q_net_x1),
    .lmat_in_8(register7_q_net_x1),
    .lmat_in_9(register8_q_net_x1),
    .lmat_in_10(register9_q_net_x1),
    .lmat_in_11(register10_q_net_x2),
    .lmat_in_12(register11_q_net_x1),
    .lmat_in_13(register12_q_net_x1),
    .lmat_in_14(register13_q_net_x1),
    .kmat_in_2(register1_q_net_x3),
    .kmat_in_3(register2_q_net_x2),
    .kmat_in_4(register3_q_net_x2),
    .kmat_in_5(register4_q_net_x2),
    .kmat_in_6(register5_q_net_x2),
    .kmat_in_7(register6_q_net_x2),
    .kmat_in_8(register7_q_net_x2),
    .kmat_in_9(register8_q_net_x2),
    .kmat_in_10(register9_q_net_x2),
    .kmat_in_11(register10_q_net_x3),
    .kmat_in_12(register11_q_net_x2),
    .kmat_in_13(register12_q_net_x2),
    .kmat_in_14(register13_q_net_x2),
    .bmat_in_2(register1_q_net_x9),
    .bmat_in_3(register2_q_net_x6),
    .bmat_in_4(register3_q_net_x6),
    .bmat_in_5(register4_q_net_x6),
    .bmat_in_6(register5_q_net_x6),
    .bmat_in_7(register6_q_net_x7),
    .bmat_in_8(register7_q_net_x7),
    .bmat_in_9(register8_q_net_x7),
    .bmat_in_10(register9_q_net_x6),
    .bmat_in_11(register10_q_net_x7),
    .bmat_in_12(register11_q_net_x6),
    .bmat_in_13(register12_q_net_x6),
    .bmat_in_14(register13_q_net_x6),
    .fmat_ip_in_2(register1_q_net_x4),
    .fmat_ip_in_3(register2_q_net_x3),
    .fmat_ip_in_4(register3_q_net_x3),
    .fmat_ip_in_5(register4_q_net_x3),
    .fmat_ip_in_6(register5_q_net_x3),
    .fmat_ip_in_7(register6_q_net_x3),
    .fmat_ip_in_8(register7_q_net_x3),
    .fmat_ip_in_9(register8_q_net_x3),
    .fmat_ip_in_10(register9_q_net_x3),
    .fmat_ip_in_11(register10_q_net_x4),
    .fmat_ip_in_12(register11_q_net_x3),
    .fmat_ip_in_13(register12_q_net_x3),
    .fmat_ip_in_14(register13_q_net_x3),
    .fmat_ip_in_15(register14_q_net),
    .fmat_ip_in_16(register15_q_net),
    .fmat_ip_in_17(register16_q_net),
    .fmat_ip_in_18(register17_q_net),
    .fmat_ip_in_19(register18_q_net),
    .fmat_ip_in_20(register19_q_net),
    .fmat_ip_in_21(register20_q_net),
    .fmat_ip_in_22(register21_q_net),
    .fmat_ip_in_23(register22_q_net),
    .fmat_ip_in_24(register23_q_net),
    .fmat_ip_in_25(register24_q_net),
    .fmat_ip_in_26(register25_q_net),
    .fmat_ip_in_27(register26_q_net),
    .fmat_ip_in_28(register27_q_net),
    .fmat_ip_in_29(register28_q_net),
    .fmat_ip_in_30(register29_q_net),
    .fmat_ip_in_31(register30_q_net),
    .fmat_ip_in_32(register31_q_net),
    .fmat_ip_in_33(register32_q_net),
    .fmat_ip_in_34(register33_q_net),
    .fmat_ip_in_35(register34_q_net),
    .fmat_ip_in_36(register35_q_net),
    .fmat_ip_in_37(register36_q_net),
    .fmat_ip_in_38(register37_q_net),
    .fmat_ip_in_39(register38_q_net),
    .fmat_ip_in_40(register39_q_net),
    .fmat_ip_in_41(register40_q_net),
    .fmat_ip_in_42(register41_q_net),
    .fmat_ip_in_43(register42_q_net),
    .fmat_ip_in_44(register43_q_net),
    .fmat_ip_in_45(register44_q_net),
    .fmat_ip_in_46(register45_q_net),
    .fmat_ip_in_47(register46_q_net),
    .fmat_ip_in_48(register47_q_net),
    .fmat_ip_in_49(register48_q_net),
    .lmat_ip_in_2(register1_q_net_x1),
    .lmat_ip_in_3(register2_q_net_x0),
    .lmat_ip_in_4(register3_q_net_x0),
    .lmat_ip_in_5(register4_q_net_x0),
    .lmat_ip_in_6(register5_q_net_x0),
    .lmat_ip_in_7(register6_q_net_x0),
    .lmat_ip_in_8(register7_q_net_x0),
    .lmat_ip_in_9(register8_q_net_x0),
    .lmat_ip_in_10(register9_q_net_x0),
    .lmat_ip_in_11(register10_q_net_x1),
    .lmat_ip_in_12(register11_q_net_x0),
    .lmat_ip_in_13(register12_q_net_x0),
    .lmat_ip_in_14(register13_q_net_x0),
    .kmat_ip_in_2(register1_q_net_x0),
    .kmat_ip_in_3(register2_q_net),
    .kmat_ip_in_4(register3_q_net),
    .kmat_ip_in_5(register4_q_net),
    .kmat_ip_in_6(register5_q_net),
    .kmat_ip_in_7(register6_q_net),
    .kmat_ip_in_8(register7_q_net),
    .kmat_ip_in_9(register8_q_net),
    .kmat_ip_in_10(register9_q_net),
    .kmat_ip_in_11(register10_q_net_x0),
    .kmat_ip_in_12(register11_q_net),
    .kmat_ip_in_13(register12_q_net),
    .kmat_ip_in_14(register13_q_net),
    .bmat_ip_in_2(register1_q_net),
    .bmat_ip_in_3(register2_q_net_x7),
    .bmat_ip_in_4(register3_q_net_x7),
    .bmat_ip_in_5(register4_q_net_x7),
    .bmat_ip_in_6(register5_q_net_x7),
    .bmat_ip_in_7(register6_q_net_x8),
    .bmat_ip_in_8(register7_q_net_x8),
    .bmat_ip_in_9(register8_q_net_x8),
    .bmat_ip_in_10(register9_q_net_x7),
    .bmat_ip_in_11(register10_q_net),
    .bmat_ip_in_12(register11_q_net_x7),
    .bmat_ip_in_13(register12_q_net_x7),
    .bmat_ip_in_14(register13_q_net_x7),
    .barrier_ub_lb_in_2(register1_q_net_x11),
    .barrier_ram_data_in_2(register1_q_net_x10),
    .hw_pot_switch(hw_pot_switch_net),
    .x_in(x_in_net),
    .z_in(z_in_net),
    .clk_1(src_clk_net),
    .ce_1(src_ce_net),
    .clk_4(clk_net_x0),
    .ce_4(ce_net_x0),
    .clk_64(clk_net_x1),
    .ce_64(ce_net_x1),
    .divisor_out(add_offset_ch2_s_net),
    .dma_out_1(concat_y_net),
    .dma_out_2(concat2_y_net),
    .dma_out_3(concat3_y_net),
    .dma_out_4(concat5_y_net),
    .dma_out_5(concat4_y_net),
    .dma_out_6(concat6_y_net),
    .dma_out_7(concat7_y_net),
    .gate_fb_x_out(add_dac_1_bias_s_net),
    .gate_fb_z_out(add_dac_2_bias_s_net),
    .gate_leds_out(concat1_y_net),
    .gate_x1_out(upsample0_q_net),
    .gate_x2_out(upsample1_q_net),
    .gate_x3_out(upsample2_q_net),
    .gate_x4_out(upsample3_q_net),
    .gate_x5_out(upsample4_q_net),
    .gate_x6_out(upsample5_q_net),
    .gate_x7_out(upsample6_q_net),
    .gate_y_x_corrected_out(sfix16_13_cast_dout_net),
    .gate_y_z_corrected_out(sfix16_13_cast1_dout_net)
  );
  fpga_kf_3dof_plus_axi_clock_domain_wrapper axi_clock_domain_wrapper (
    .registers_addr_in(registers_addr_in_net),
    .registers_data_in(registers_data_in_net),
    .registers_subaddr_in(registers_subaddr_in_net),
    .registers_update_in(registers_update_in_net),
    .registers_wren_in(registers_wren_in_net),
    .adc_ch1_offst(adc_ch1_offst_net),
    .adc_ch2_offst(adc_ch2_offst_net),
    .ap_ip_switch_in(ap_ip_switch_in_net),
    .c_iu(c_iu_net),
    .disco_mode_enable(disco_mode_enable_net),
    .fixed_led_pattern_in(fixed_led_pattern_in_net),
    .k_iu(k_iu_net),
    .barrier_c0_data_in(barrier_c0_data_in_net),
    .barrier_c1_data_in(barrier_c1_data_in_net),
    .barrier_c_idx_in(barrier_c_idx_in_net),
    .barrier_c_ofst_idx_in(barrier_c_ofst_idx_in_net),
    .barrier_ram_addr_in(barrier_ram_addr_in_net),
    .barrier_ram_we_in(barrier_ram_we_in_net),
    .barrier_lb_in(barrier_lb_in_net),
    .barrier_ub_in(barrier_ub_in_net),
    .dma_trigger_time(dma_trigger_time_net),
    .fb_src_switch_in(fb_src_switch_in_net),
    .iu_enb(iu_enb_net),
    .iu_lb(iu_lb_net),
    .iu_ub(iu_ub_net),
    .noise_gain_in(noise_gain_in_net),
    .out_switch_off(out_switch_off_net),
    .out_switch_on(out_switch_on_net),
    .reg_out_switch_t0(reg_out_switch_t0_net),
    .reg_out_switch_tf(reg_out_switch_tf_net),
    .reg_rp_switch_t0(reg_rp_switch_t0_net),
    .reg_rp_switch_tf(reg_rp_switch_tf_net),
    .reg_timer_period(reg_timer_period_net),
    .sw_override_in(sw_override_in_net),
    .x_ref_enb(x_ref_enb_net),
    .x_ref_in(x_ref_in_net),
    .x_ref_lb(x_ref_lb_net),
    .x_ref_ub(x_ref_ub_net),
    .dac_2_bias(dac_2_bias_net),
    .dac_1_bias(dac_1_bias_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .ap_ip_switch_out(sw_switch_mux_y_net),
    .f_reg_out_1(reinterpret0_output_port_net_x5),
    .l_reg_out_1(reinterpret0_output_port_net_x4),
    .k_reg_out_1(reinterpret0_output_port_net_x3),
    .b_reg_out_1(reinterpret0_output_port_net_x2),
    .f_ip_reg_out_1(reinterpret0_output_port_net_x6),
    .l_ip_reg_out_1(reinterpret0_output_port_net_x1),
    .k_ip_reg_out_1(reinterpret0_output_port_net_x0),
    .b_ip_reg_out_1(reinterpret0_output_port_net),
    .leds_cross_out(mux_y_net),
    .potential_switch_override_reg_out(register6_q_net_x6),
    .adc_offset_1(register7_q_net_x6),
    .adc_offset_2(register8_q_net_x6),
    .hw_switch_output(dac_enable_y_net),
    .hw_switch_flag(hw_switch_flag_delay_match_q_net),
    .x_ref_out(register16_q_net_x2),
    .fb_src_switch_out(register17_q_net_x2),
    .barrier_ub_lb_out_1(register0_q_net_x7),
    .barrier_c_idx_out(register18_q_net_x2),
    .barrier_c_ofst_idx_out(register19_q_net_x2),
    .barrier_ram_addr_out(register20_q_net_x2),
    .barrier_ram_data_out_1(register0_q_net_x6),
    .barrier_ram_we_out(register21_q_net_x2),
    .noise_gain_out(register22_q_net_x2),
    .x_ref_ub_out(register24_q_net_x1),
    .x_ref_lb_out(register25_q_net_x1),
    .x_ref_enb_out(register26_q_net_x1),
    .c_iu_out(register27_q_net_x1),
    .iu_ub_out(register28_q_net_x1),
    .iu_lb_out(register29_q_net_x1),
    .iu_enb_out(register30_q_net_x1),
    .k_iu_out(register31_q_net_x1),
    .dac_1_bias_out(register32_q_net_x1),
    .dac_2_bias_out(register33_q_net_x1),
    .f_reg_out_2(reinterpret1_output_port_net_x6),
    .f_reg_out_3(reinterpret2_output_port_net_x6),
    .f_reg_out_4(reinterpret3_output_port_net_x6),
    .f_reg_out_5(reinterpret4_output_port_net_x6),
    .f_reg_out_6(reinterpret5_output_port_net_x6),
    .f_reg_out_7(reinterpret6_output_port_net_x6),
    .f_reg_out_8(reinterpret7_output_port_net_x6),
    .f_reg_out_9(reinterpret8_output_port_net_x6),
    .f_reg_out_10(reinterpret9_output_port_net_x6),
    .f_reg_out_11(reinterpret10_output_port_net_x6),
    .f_reg_out_12(reinterpret11_output_port_net_x6),
    .f_reg_out_13(reinterpret12_output_port_net_x6),
    .f_reg_out_14(reinterpret13_output_port_net_x6),
    .f_reg_out_15(reinterpret14_output_port_net_x0),
    .f_reg_out_16(reinterpret15_output_port_net_x0),
    .f_reg_out_17(reinterpret16_output_port_net_x0),
    .f_reg_out_18(reinterpret17_output_port_net_x0),
    .f_reg_out_19(reinterpret18_output_port_net_x0),
    .f_reg_out_20(reinterpret19_output_port_net_x0),
    .f_reg_out_21(reinterpret20_output_port_net_x0),
    .f_reg_out_22(reinterpret21_output_port_net_x0),
    .f_reg_out_23(reinterpret22_output_port_net_x0),
    .f_reg_out_24(reinterpret23_output_port_net_x0),
    .f_reg_out_25(reinterpret24_output_port_net_x0),
    .f_reg_out_26(reinterpret25_output_port_net_x0),
    .f_reg_out_27(reinterpret26_output_port_net_x0),
    .f_reg_out_28(reinterpret27_output_port_net_x0),
    .f_reg_out_29(reinterpret28_output_port_net_x0),
    .f_reg_out_30(reinterpret29_output_port_net_x0),
    .f_reg_out_31(reinterpret30_output_port_net_x0),
    .f_reg_out_32(reinterpret31_output_port_net_x0),
    .f_reg_out_33(reinterpret32_output_port_net_x0),
    .f_reg_out_34(reinterpret33_output_port_net_x0),
    .f_reg_out_35(reinterpret34_output_port_net_x0),
    .f_reg_out_36(reinterpret35_output_port_net_x0),
    .f_reg_out_37(reinterpret36_output_port_net_x0),
    .f_reg_out_38(reinterpret37_output_port_net_x0),
    .f_reg_out_39(reinterpret38_output_port_net_x0),
    .f_reg_out_40(reinterpret39_output_port_net_x0),
    .f_reg_out_41(reinterpret40_output_port_net_x0),
    .f_reg_out_42(reinterpret41_output_port_net_x0),
    .f_reg_out_43(reinterpret42_output_port_net_x0),
    .f_reg_out_44(reinterpret43_output_port_net_x0),
    .f_reg_out_45(reinterpret44_output_port_net_x0),
    .f_reg_out_46(reinterpret45_output_port_net_x0),
    .f_reg_out_47(reinterpret46_output_port_net_x0),
    .f_reg_out_48(reinterpret47_output_port_net_x0),
    .f_reg_out_49(reinterpret48_output_port_net_x0),
    .l_reg_out_2(reinterpret1_output_port_net_x4),
    .l_reg_out_3(reinterpret2_output_port_net_x4),
    .l_reg_out_4(reinterpret3_output_port_net_x4),
    .l_reg_out_5(reinterpret4_output_port_net_x4),
    .l_reg_out_6(reinterpret5_output_port_net_x4),
    .l_reg_out_7(reinterpret6_output_port_net_x4),
    .l_reg_out_8(reinterpret7_output_port_net_x4),
    .l_reg_out_9(reinterpret8_output_port_net_x4),
    .l_reg_out_10(reinterpret9_output_port_net_x4),
    .l_reg_out_11(reinterpret10_output_port_net_x4),
    .l_reg_out_12(reinterpret11_output_port_net_x4),
    .l_reg_out_13(reinterpret12_output_port_net_x4),
    .l_reg_out_14(reinterpret13_output_port_net_x4),
    .k_reg_out_2(reinterpret1_output_port_net_x3),
    .k_reg_out_3(reinterpret2_output_port_net_x3),
    .k_reg_out_4(reinterpret3_output_port_net_x3),
    .k_reg_out_5(reinterpret4_output_port_net_x3),
    .k_reg_out_6(reinterpret5_output_port_net_x3),
    .k_reg_out_7(reinterpret6_output_port_net_x3),
    .k_reg_out_8(reinterpret7_output_port_net_x3),
    .k_reg_out_9(reinterpret8_output_port_net_x3),
    .k_reg_out_10(reinterpret9_output_port_net_x3),
    .k_reg_out_11(reinterpret10_output_port_net_x3),
    .k_reg_out_12(reinterpret11_output_port_net_x3),
    .k_reg_out_13(reinterpret12_output_port_net_x3),
    .k_reg_out_14(reinterpret13_output_port_net_x3),
    .b_reg_out_2(reinterpret1_output_port_net_x2),
    .b_reg_out_3(reinterpret2_output_port_net_x2),
    .b_reg_out_4(reinterpret3_output_port_net_x2),
    .b_reg_out_5(reinterpret4_output_port_net_x2),
    .b_reg_out_6(reinterpret5_output_port_net_x2),
    .b_reg_out_7(reinterpret6_output_port_net_x2),
    .b_reg_out_8(reinterpret7_output_port_net_x2),
    .b_reg_out_9(reinterpret8_output_port_net_x2),
    .b_reg_out_10(reinterpret9_output_port_net_x2),
    .b_reg_out_11(reinterpret10_output_port_net_x2),
    .b_reg_out_12(reinterpret11_output_port_net_x2),
    .b_reg_out_13(reinterpret12_output_port_net_x2),
    .b_reg_out_14(reinterpret13_output_port_net_x2),
    .f_ip_reg_out_2(reinterpret1_output_port_net_x5),
    .f_ip_reg_out_3(reinterpret2_output_port_net_x5),
    .f_ip_reg_out_4(reinterpret3_output_port_net_x5),
    .f_ip_reg_out_5(reinterpret4_output_port_net_x5),
    .f_ip_reg_out_6(reinterpret5_output_port_net_x5),
    .f_ip_reg_out_7(reinterpret6_output_port_net_x5),
    .f_ip_reg_out_8(reinterpret7_output_port_net_x5),
    .f_ip_reg_out_9(reinterpret8_output_port_net_x5),
    .f_ip_reg_out_10(reinterpret9_output_port_net_x5),
    .f_ip_reg_out_11(reinterpret10_output_port_net_x5),
    .f_ip_reg_out_12(reinterpret11_output_port_net_x5),
    .f_ip_reg_out_13(reinterpret12_output_port_net_x5),
    .f_ip_reg_out_14(reinterpret13_output_port_net_x5),
    .f_ip_reg_out_15(reinterpret14_output_port_net),
    .f_ip_reg_out_16(reinterpret15_output_port_net),
    .f_ip_reg_out_17(reinterpret16_output_port_net),
    .f_ip_reg_out_18(reinterpret17_output_port_net),
    .f_ip_reg_out_19(reinterpret18_output_port_net),
    .f_ip_reg_out_20(reinterpret19_output_port_net),
    .f_ip_reg_out_21(reinterpret20_output_port_net),
    .f_ip_reg_out_22(reinterpret21_output_port_net),
    .f_ip_reg_out_23(reinterpret22_output_port_net),
    .f_ip_reg_out_24(reinterpret23_output_port_net),
    .f_ip_reg_out_25(reinterpret24_output_port_net),
    .f_ip_reg_out_26(reinterpret25_output_port_net),
    .f_ip_reg_out_27(reinterpret26_output_port_net),
    .f_ip_reg_out_28(reinterpret27_output_port_net),
    .f_ip_reg_out_29(reinterpret28_output_port_net),
    .f_ip_reg_out_30(reinterpret29_output_port_net),
    .f_ip_reg_out_31(reinterpret30_output_port_net),
    .f_ip_reg_out_32(reinterpret31_output_port_net),
    .f_ip_reg_out_33(reinterpret32_output_port_net),
    .f_ip_reg_out_34(reinterpret33_output_port_net),
    .f_ip_reg_out_35(reinterpret34_output_port_net),
    .f_ip_reg_out_36(reinterpret35_output_port_net),
    .f_ip_reg_out_37(reinterpret36_output_port_net),
    .f_ip_reg_out_38(reinterpret37_output_port_net),
    .f_ip_reg_out_39(reinterpret38_output_port_net),
    .f_ip_reg_out_40(reinterpret39_output_port_net),
    .f_ip_reg_out_41(reinterpret40_output_port_net),
    .f_ip_reg_out_42(reinterpret41_output_port_net),
    .f_ip_reg_out_43(reinterpret42_output_port_net),
    .f_ip_reg_out_44(reinterpret43_output_port_net),
    .f_ip_reg_out_45(reinterpret44_output_port_net),
    .f_ip_reg_out_46(reinterpret45_output_port_net),
    .f_ip_reg_out_47(reinterpret46_output_port_net),
    .f_ip_reg_out_48(reinterpret47_output_port_net),
    .f_ip_reg_out_49(reinterpret48_output_port_net),
    .l_ip_reg_out_2(reinterpret1_output_port_net_x1),
    .l_ip_reg_out_3(reinterpret2_output_port_net_x1),
    .l_ip_reg_out_4(reinterpret3_output_port_net_x1),
    .l_ip_reg_out_5(reinterpret4_output_port_net_x1),
    .l_ip_reg_out_6(reinterpret5_output_port_net_x1),
    .l_ip_reg_out_7(reinterpret6_output_port_net_x1),
    .l_ip_reg_out_8(reinterpret7_output_port_net_x1),
    .l_ip_reg_out_9(reinterpret8_output_port_net_x1),
    .l_ip_reg_out_10(reinterpret9_output_port_net_x1),
    .l_ip_reg_out_11(reinterpret10_output_port_net_x1),
    .l_ip_reg_out_12(reinterpret11_output_port_net_x1),
    .l_ip_reg_out_13(reinterpret12_output_port_net_x1),
    .l_ip_reg_out_14(reinterpret13_output_port_net_x1),
    .k_ip_reg_out_2(reinterpret1_output_port_net_x0),
    .k_ip_reg_out_3(reinterpret2_output_port_net_x0),
    .k_ip_reg_out_4(reinterpret3_output_port_net_x0),
    .k_ip_reg_out_5(reinterpret4_output_port_net_x0),
    .k_ip_reg_out_6(reinterpret5_output_port_net_x0),
    .k_ip_reg_out_7(reinterpret6_output_port_net_x0),
    .k_ip_reg_out_8(reinterpret7_output_port_net_x0),
    .k_ip_reg_out_9(reinterpret8_output_port_net_x0),
    .k_ip_reg_out_10(reinterpret9_output_port_net_x0),
    .k_ip_reg_out_11(reinterpret10_output_port_net_x0),
    .k_ip_reg_out_12(reinterpret11_output_port_net_x0),
    .k_ip_reg_out_13(reinterpret12_output_port_net_x0),
    .k_ip_reg_out_14(reinterpret13_output_port_net_x0),
    .b_ip_reg_out_2(reinterpret1_output_port_net),
    .b_ip_reg_out_3(reinterpret2_output_port_net),
    .b_ip_reg_out_4(reinterpret3_output_port_net),
    .b_ip_reg_out_5(reinterpret4_output_port_net),
    .b_ip_reg_out_6(reinterpret5_output_port_net),
    .b_ip_reg_out_7(reinterpret6_output_port_net),
    .b_ip_reg_out_8(reinterpret7_output_port_net),
    .b_ip_reg_out_9(reinterpret8_output_port_net),
    .b_ip_reg_out_10(reinterpret9_output_port_net),
    .b_ip_reg_out_11(reinterpret10_output_port_net),
    .b_ip_reg_out_12(reinterpret11_output_port_net),
    .b_ip_reg_out_13(reinterpret12_output_port_net),
    .b_ip_reg_out_14(reinterpret13_output_port_net),
    .barrier_ub_lb_out_2(register1_q_net_x8),
    .barrier_ram_data_out_2(register1_q_net_x7),
    .tmr_dma_trigger_output(dma_trigger_threshold_op_net)
  );
  fpga_kf_3dof_plus_vector_register_x0 vector_register (
    .d_1(reinterpret0_output_port_net_x5),
    .d_2(reinterpret1_output_port_net_x6),
    .d_3(reinterpret2_output_port_net_x6),
    .d_4(reinterpret3_output_port_net_x6),
    .d_5(reinterpret4_output_port_net_x6),
    .d_6(reinterpret5_output_port_net_x6),
    .d_7(reinterpret6_output_port_net_x6),
    .d_8(reinterpret7_output_port_net_x6),
    .d_9(reinterpret8_output_port_net_x6),
    .d_10(reinterpret9_output_port_net_x6),
    .d_11(reinterpret10_output_port_net_x6),
    .d_12(reinterpret11_output_port_net_x6),
    .d_13(reinterpret12_output_port_net_x6),
    .d_14(reinterpret13_output_port_net_x6),
    .d_15(reinterpret14_output_port_net_x0),
    .d_16(reinterpret15_output_port_net_x0),
    .d_17(reinterpret16_output_port_net_x0),
    .d_18(reinterpret17_output_port_net_x0),
    .d_19(reinterpret18_output_port_net_x0),
    .d_20(reinterpret19_output_port_net_x0),
    .d_21(reinterpret20_output_port_net_x0),
    .d_22(reinterpret21_output_port_net_x0),
    .d_23(reinterpret22_output_port_net_x0),
    .d_24(reinterpret23_output_port_net_x0),
    .d_25(reinterpret24_output_port_net_x0),
    .d_26(reinterpret25_output_port_net_x0),
    .d_27(reinterpret26_output_port_net_x0),
    .d_28(reinterpret27_output_port_net_x0),
    .d_29(reinterpret28_output_port_net_x0),
    .d_30(reinterpret29_output_port_net_x0),
    .d_31(reinterpret30_output_port_net_x0),
    .d_32(reinterpret31_output_port_net_x0),
    .d_33(reinterpret32_output_port_net_x0),
    .d_34(reinterpret33_output_port_net_x0),
    .d_35(reinterpret34_output_port_net_x0),
    .d_36(reinterpret35_output_port_net_x0),
    .d_37(reinterpret36_output_port_net_x0),
    .d_38(reinterpret37_output_port_net_x0),
    .d_39(reinterpret38_output_port_net_x0),
    .d_40(reinterpret39_output_port_net_x0),
    .d_41(reinterpret40_output_port_net_x0),
    .d_42(reinterpret41_output_port_net_x0),
    .d_43(reinterpret42_output_port_net_x0),
    .d_44(reinterpret43_output_port_net_x0),
    .d_45(reinterpret44_output_port_net_x0),
    .d_46(reinterpret45_output_port_net_x0),
    .d_47(reinterpret46_output_port_net_x0),
    .d_48(reinterpret47_output_port_net_x0),
    .d_49(reinterpret48_output_port_net_x0),
    .clk_1_x0(src_clk_net),
    .ce_1_x0(src_ce_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .q_1(register0_q_net_x5),
    .q_2(register1_q_net_x5),
    .q_3(register2_q_net_x4),
    .q_4(register3_q_net_x4),
    .q_5(register4_q_net_x4),
    .q_6(register5_q_net_x4),
    .q_7(register6_q_net_x4),
    .q_8(register7_q_net_x4),
    .q_9(register8_q_net_x4),
    .q_10(register9_q_net_x4),
    .q_11(register10_q_net_x5),
    .q_12(register11_q_net_x4),
    .q_13(register12_q_net_x4),
    .q_14(register13_q_net_x4),
    .q_15(register14_q_net_x0),
    .q_16(register15_q_net_x0),
    .q_17(register16_q_net_x0),
    .q_18(register17_q_net_x0),
    .q_19(register18_q_net_x0),
    .q_20(register19_q_net_x0),
    .q_21(register20_q_net_x0),
    .q_22(register21_q_net_x0),
    .q_23(register22_q_net_x0),
    .q_24(register23_q_net_x0),
    .q_25(register24_q_net_x0),
    .q_26(register25_q_net_x0),
    .q_27(register26_q_net_x0),
    .q_28(register27_q_net_x0),
    .q_29(register28_q_net_x0),
    .q_30(register29_q_net_x0),
    .q_31(register30_q_net_x0),
    .q_32(register31_q_net_x0),
    .q_33(register32_q_net_x0),
    .q_34(register33_q_net_x0),
    .q_35(register34_q_net_x0),
    .q_36(register35_q_net_x0),
    .q_37(register36_q_net_x0),
    .q_38(register37_q_net_x0),
    .q_39(register38_q_net_x0),
    .q_40(register39_q_net_x0),
    .q_41(register40_q_net_x0),
    .q_42(register41_q_net_x0),
    .q_43(register42_q_net_x0),
    .q_44(register43_q_net_x0),
    .q_45(register44_q_net_x0),
    .q_46(register45_q_net_x0),
    .q_47(register46_q_net_x0),
    .q_48(register47_q_net_x0),
    .q_49(register48_q_net_x0)
  );
  fpga_kf_3dof_plus_vector_register1 vector_register1 (
    .d_1(reinterpret0_output_port_net_x6),
    .d_2(reinterpret1_output_port_net_x5),
    .d_3(reinterpret2_output_port_net_x5),
    .d_4(reinterpret3_output_port_net_x5),
    .d_5(reinterpret4_output_port_net_x5),
    .d_6(reinterpret5_output_port_net_x5),
    .d_7(reinterpret6_output_port_net_x5),
    .d_8(reinterpret7_output_port_net_x5),
    .d_9(reinterpret8_output_port_net_x5),
    .d_10(reinterpret9_output_port_net_x5),
    .d_11(reinterpret10_output_port_net_x5),
    .d_12(reinterpret11_output_port_net_x5),
    .d_13(reinterpret12_output_port_net_x5),
    .d_14(reinterpret13_output_port_net_x5),
    .d_15(reinterpret14_output_port_net),
    .d_16(reinterpret15_output_port_net),
    .d_17(reinterpret16_output_port_net),
    .d_18(reinterpret17_output_port_net),
    .d_19(reinterpret18_output_port_net),
    .d_20(reinterpret19_output_port_net),
    .d_21(reinterpret20_output_port_net),
    .d_22(reinterpret21_output_port_net),
    .d_23(reinterpret22_output_port_net),
    .d_24(reinterpret23_output_port_net),
    .d_25(reinterpret24_output_port_net),
    .d_26(reinterpret25_output_port_net),
    .d_27(reinterpret26_output_port_net),
    .d_28(reinterpret27_output_port_net),
    .d_29(reinterpret28_output_port_net),
    .d_30(reinterpret29_output_port_net),
    .d_31(reinterpret30_output_port_net),
    .d_32(reinterpret31_output_port_net),
    .d_33(reinterpret32_output_port_net),
    .d_34(reinterpret33_output_port_net),
    .d_35(reinterpret34_output_port_net),
    .d_36(reinterpret35_output_port_net),
    .d_37(reinterpret36_output_port_net),
    .d_38(reinterpret37_output_port_net),
    .d_39(reinterpret38_output_port_net),
    .d_40(reinterpret39_output_port_net),
    .d_41(reinterpret40_output_port_net),
    .d_42(reinterpret41_output_port_net),
    .d_43(reinterpret42_output_port_net),
    .d_44(reinterpret43_output_port_net),
    .d_45(reinterpret44_output_port_net),
    .d_46(reinterpret45_output_port_net),
    .d_47(reinterpret46_output_port_net),
    .d_48(reinterpret47_output_port_net),
    .d_49(reinterpret48_output_port_net),
    .clk_1_x0(src_clk_net),
    .ce_1_x0(src_ce_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .q_1(register0_q_net_x4),
    .q_2(register1_q_net_x4),
    .q_3(register2_q_net_x3),
    .q_4(register3_q_net_x3),
    .q_5(register4_q_net_x3),
    .q_6(register5_q_net_x3),
    .q_7(register6_q_net_x3),
    .q_8(register7_q_net_x3),
    .q_9(register8_q_net_x3),
    .q_10(register9_q_net_x3),
    .q_11(register10_q_net_x4),
    .q_12(register11_q_net_x3),
    .q_13(register12_q_net_x3),
    .q_14(register13_q_net_x3),
    .q_15(register14_q_net),
    .q_16(register15_q_net),
    .q_17(register16_q_net),
    .q_18(register17_q_net),
    .q_19(register18_q_net),
    .q_20(register19_q_net),
    .q_21(register20_q_net),
    .q_22(register21_q_net),
    .q_23(register22_q_net),
    .q_24(register23_q_net),
    .q_25(register24_q_net),
    .q_26(register25_q_net),
    .q_27(register26_q_net),
    .q_28(register27_q_net),
    .q_29(register28_q_net),
    .q_30(register29_q_net),
    .q_31(register30_q_net),
    .q_32(register31_q_net),
    .q_33(register32_q_net),
    .q_34(register33_q_net),
    .q_35(register34_q_net),
    .q_36(register35_q_net),
    .q_37(register36_q_net),
    .q_38(register37_q_net),
    .q_39(register38_q_net),
    .q_40(register39_q_net),
    .q_41(register40_q_net),
    .q_42(register41_q_net),
    .q_43(register42_q_net),
    .q_44(register43_q_net),
    .q_45(register44_q_net),
    .q_46(register45_q_net),
    .q_47(register46_q_net),
    .q_48(register47_q_net),
    .q_49(register48_q_net)
  );
  fpga_kf_3dof_plus_vector_register2 vector_register2 (
    .d_1(reinterpret0_output_port_net_x3),
    .d_2(reinterpret1_output_port_net_x3),
    .d_3(reinterpret2_output_port_net_x3),
    .d_4(reinterpret3_output_port_net_x3),
    .d_5(reinterpret4_output_port_net_x3),
    .d_6(reinterpret5_output_port_net_x3),
    .d_7(reinterpret6_output_port_net_x3),
    .d_8(reinterpret7_output_port_net_x3),
    .d_9(reinterpret8_output_port_net_x3),
    .d_10(reinterpret9_output_port_net_x3),
    .d_11(reinterpret10_output_port_net_x3),
    .d_12(reinterpret11_output_port_net_x3),
    .d_13(reinterpret12_output_port_net_x3),
    .d_14(reinterpret13_output_port_net_x3),
    .clk_1_x0(src_clk_net),
    .ce_1_x0(src_ce_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .q_1(register0_q_net_x3),
    .q_2(register1_q_net_x3),
    .q_3(register2_q_net_x2),
    .q_4(register3_q_net_x2),
    .q_5(register4_q_net_x2),
    .q_6(register5_q_net_x2),
    .q_7(register6_q_net_x2),
    .q_8(register7_q_net_x2),
    .q_9(register8_q_net_x2),
    .q_10(register9_q_net_x2),
    .q_11(register10_q_net_x3),
    .q_12(register11_q_net_x2),
    .q_13(register12_q_net_x2),
    .q_14(register13_q_net_x2)
  );
  fpga_kf_3dof_plus_vector_register3 vector_register3 (
    .d_1(reinterpret0_output_port_net_x4),
    .d_2(reinterpret1_output_port_net_x4),
    .d_3(reinterpret2_output_port_net_x4),
    .d_4(reinterpret3_output_port_net_x4),
    .d_5(reinterpret4_output_port_net_x4),
    .d_6(reinterpret5_output_port_net_x4),
    .d_7(reinterpret6_output_port_net_x4),
    .d_8(reinterpret7_output_port_net_x4),
    .d_9(reinterpret8_output_port_net_x4),
    .d_10(reinterpret9_output_port_net_x4),
    .d_11(reinterpret10_output_port_net_x4),
    .d_12(reinterpret11_output_port_net_x4),
    .d_13(reinterpret12_output_port_net_x4),
    .d_14(reinterpret13_output_port_net_x4),
    .clk_1_x0(src_clk_net),
    .ce_1_x0(src_ce_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .q_1(register0_q_net_x2),
    .q_2(register1_q_net_x2),
    .q_3(register2_q_net_x1),
    .q_4(register3_q_net_x1),
    .q_5(register4_q_net_x1),
    .q_6(register5_q_net_x1),
    .q_7(register6_q_net_x1),
    .q_8(register7_q_net_x1),
    .q_9(register8_q_net_x1),
    .q_10(register9_q_net_x1),
    .q_11(register10_q_net_x2),
    .q_12(register11_q_net_x1),
    .q_13(register12_q_net_x1),
    .q_14(register13_q_net_x1)
  );
  fpga_kf_3dof_plus_vector_register4 vector_register4 (
    .d_1(reinterpret0_output_port_net_x1),
    .d_2(reinterpret1_output_port_net_x1),
    .d_3(reinterpret2_output_port_net_x1),
    .d_4(reinterpret3_output_port_net_x1),
    .d_5(reinterpret4_output_port_net_x1),
    .d_6(reinterpret5_output_port_net_x1),
    .d_7(reinterpret6_output_port_net_x1),
    .d_8(reinterpret7_output_port_net_x1),
    .d_9(reinterpret8_output_port_net_x1),
    .d_10(reinterpret9_output_port_net_x1),
    .d_11(reinterpret10_output_port_net_x1),
    .d_12(reinterpret11_output_port_net_x1),
    .d_13(reinterpret12_output_port_net_x1),
    .d_14(reinterpret13_output_port_net_x1),
    .clk_1_x0(src_clk_net),
    .ce_1_x0(src_ce_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .q_1(register0_q_net_x1),
    .q_2(register1_q_net_x1),
    .q_3(register2_q_net_x0),
    .q_4(register3_q_net_x0),
    .q_5(register4_q_net_x0),
    .q_6(register5_q_net_x0),
    .q_7(register6_q_net_x0),
    .q_8(register7_q_net_x0),
    .q_9(register8_q_net_x0),
    .q_10(register9_q_net_x0),
    .q_11(register10_q_net_x1),
    .q_12(register11_q_net_x0),
    .q_13(register12_q_net_x0),
    .q_14(register13_q_net_x0)
  );
  fpga_kf_3dof_plus_vector_register5 vector_register5 (
    .d_1(reinterpret0_output_port_net_x0),
    .d_2(reinterpret1_output_port_net_x0),
    .d_3(reinterpret2_output_port_net_x0),
    .d_4(reinterpret3_output_port_net_x0),
    .d_5(reinterpret4_output_port_net_x0),
    .d_6(reinterpret5_output_port_net_x0),
    .d_7(reinterpret6_output_port_net_x0),
    .d_8(reinterpret7_output_port_net_x0),
    .d_9(reinterpret8_output_port_net_x0),
    .d_10(reinterpret9_output_port_net_x0),
    .d_11(reinterpret10_output_port_net_x0),
    .d_12(reinterpret11_output_port_net_x0),
    .d_13(reinterpret12_output_port_net_x0),
    .d_14(reinterpret13_output_port_net_x0),
    .clk_1_x0(src_clk_net),
    .ce_1_x0(src_ce_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .q_1(register0_q_net_x0),
    .q_2(register1_q_net_x0),
    .q_3(register2_q_net),
    .q_4(register3_q_net),
    .q_5(register4_q_net),
    .q_6(register5_q_net),
    .q_7(register6_q_net),
    .q_8(register7_q_net),
    .q_9(register8_q_net),
    .q_10(register9_q_net),
    .q_11(register10_q_net_x0),
    .q_12(register11_q_net),
    .q_13(register12_q_net),
    .q_14(register13_q_net)
  );
  fpga_kf_3dof_plus_vector_register6 vector_register6 (
    .d_1(reinterpret0_output_port_net),
    .d_2(reinterpret1_output_port_net),
    .d_3(reinterpret2_output_port_net),
    .d_4(reinterpret3_output_port_net),
    .d_5(reinterpret4_output_port_net),
    .d_6(reinterpret5_output_port_net),
    .d_7(reinterpret6_output_port_net),
    .d_8(reinterpret7_output_port_net),
    .d_9(reinterpret8_output_port_net),
    .d_10(reinterpret9_output_port_net),
    .d_11(reinterpret10_output_port_net),
    .d_12(reinterpret11_output_port_net),
    .d_13(reinterpret12_output_port_net),
    .d_14(reinterpret13_output_port_net),
    .clk_1_x0(src_clk_net),
    .ce_1_x0(src_ce_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .q_1(register0_q_net),
    .q_2(register1_q_net),
    .q_3(register2_q_net_x7),
    .q_4(register3_q_net_x7),
    .q_5(register4_q_net_x7),
    .q_6(register5_q_net_x7),
    .q_7(register6_q_net_x8),
    .q_8(register7_q_net_x8),
    .q_9(register8_q_net_x8),
    .q_10(register9_q_net_x7),
    .q_11(register10_q_net),
    .q_12(register11_q_net_x7),
    .q_13(register12_q_net_x7),
    .q_14(register13_q_net_x7)
  );
  fpga_kf_3dof_plus_vector_register7_x0 vector_register7 (
    .d_1(register0_q_net_x7),
    .d_2(register1_q_net_x8),
    .clk_1_x0(src_clk_net),
    .ce_1_x0(src_ce_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .q_1(register0_q_net_x10),
    .q_2(register1_q_net_x11)
  );
  fpga_kf_3dof_plus_vector_register8_x0 vector_register8 (
    .d_1(register0_q_net_x6),
    .d_2(register1_q_net_x7),
    .clk_1_x0(src_clk_net),
    .ce_1_x0(src_ce_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .q_1(register0_q_net_x9),
    .q_2(register1_q_net_x10)
  );
  fpga_kf_3dof_plus_vector_register9 vector_register9 (
    .d_1(reinterpret0_output_port_net_x2),
    .d_2(reinterpret1_output_port_net_x2),
    .d_3(reinterpret2_output_port_net_x2),
    .d_4(reinterpret3_output_port_net_x2),
    .d_5(reinterpret4_output_port_net_x2),
    .d_6(reinterpret5_output_port_net_x2),
    .d_7(reinterpret6_output_port_net_x2),
    .d_8(reinterpret7_output_port_net_x2),
    .d_9(reinterpret8_output_port_net_x2),
    .d_10(reinterpret9_output_port_net_x2),
    .d_11(reinterpret10_output_port_net_x2),
    .d_12(reinterpret11_output_port_net_x2),
    .d_13(reinterpret12_output_port_net_x2),
    .d_14(reinterpret13_output_port_net_x2),
    .clk_1_x0(src_clk_net),
    .ce_1_x0(src_ce_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .q_1(register0_q_net_x8),
    .q_2(register1_q_net_x9),
    .q_3(register2_q_net_x6),
    .q_4(register3_q_net_x6),
    .q_5(register4_q_net_x6),
    .q_6(register5_q_net_x6),
    .q_7(register6_q_net_x7),
    .q_8(register7_q_net_x7),
    .q_9(register8_q_net_x7),
    .q_10(register9_q_net_x6),
    .q_11(register10_q_net_x7),
    .q_12(register11_q_net_x6),
    .q_13(register12_q_net_x6),
    .q_14(register13_q_net_x6)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register (
    .en(1'b1),
    .rst(1'b0),
    .d(sw_switch_mux_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register_q_net)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(14),
    .init_value(14'b00000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(register22_q_net_x2),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register1_q_net_x6)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register10 (
    .en(1'b1),
    .rst(1'b0),
    .d(register26_q_net_x1),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register10_q_net_x6)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register11 (
    .en(1'b1),
    .rst(1'b0),
    .d(register16_q_net_x2),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register11_q_net_x5)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register12 (
    .en(1'b1),
    .rst(1'b0),
    .d(register18_q_net_x2),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register12_q_net_x5)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(10),
    .init_value(10'b0000000000)
  )
  register13 (
    .en(1'b1),
    .rst(1'b0),
    .d(register19_q_net_x2),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register13_q_net_x5)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(10),
    .init_value(10'b0000000000)
  )
  register14 (
    .en(1'b1),
    .rst(1'b0),
    .d(register20_q_net_x2),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register14_q_net_x1)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register15 (
    .en(1'b1),
    .rst(1'b0),
    .d(register21_q_net_x2),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register15_q_net_x1)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(3),
    .init_value(3'b000)
  )
  register16 (
    .en(1'b1),
    .rst(1'b0),
    .d(register17_q_net_x2),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register16_q_net_x1)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register17 (
    .en(1'b1),
    .rst(1'b0),
    .d(register27_q_net_x1),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register17_q_net_x1)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register18 (
    .en(1'b1),
    .rst(1'b0),
    .d(register28_q_net_x1),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register18_q_net_x1)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register19 (
    .en(1'b1),
    .rst(1'b0),
    .d(register29_q_net_x1),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register19_q_net_x1)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(30),
    .init_value(30'b000000000000000000000000000000)
  )
  register2 (
    .en(1'b1),
    .rst(1'b0),
    .d(register24_q_net_x1),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register2_q_net_x5)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register20 (
    .en(1'b1),
    .rst(1'b0),
    .d(register30_q_net_x1),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register20_q_net_x1)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register21 (
    .en(1'b1),
    .rst(1'b0),
    .d(register31_q_net_x1),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register21_q_net_x1)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(14),
    .init_value(14'b00000000000000)
  )
  register3 (
    .en(1'b1),
    .rst(1'b0),
    .d(register7_q_net_x6),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register3_q_net_x5)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(30),
    .init_value(30'b000000000000000000000000000000)
  )
  register4 (
    .en(1'b1),
    .rst(1'b0),
    .d(register25_q_net_x1),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register4_q_net_x5)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(2),
    .init_value(2'b00)
  )
  register5 (
    .en(1'b1),
    .rst(1'b0),
    .d(register6_q_net_x6),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register5_q_net_x5)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(14),
    .init_value(14'b00000000000000)
  )
  register6 (
    .en(1'b1),
    .rst(1'b0),
    .d(register8_q_net_x6),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register6_q_net_x5)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(6),
    .init_value(6'b000000)
  )
  register7 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register7_q_net_x5)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(14),
    .init_value(14'b00000000000000)
  )
  register8 (
    .en(1'b1),
    .rst(1'b0),
    .d(dac_enable_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register8_q_net_x5)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register9 (
    .en(1'b1),
    .rst(1'b0),
    .d(hw_switch_flag_delay_match_q_net),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register9_q_net_x5)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(14),
    .init_value(14'b00000000000000)
  )
  register22 (
    .en(1'b1),
    .rst(1'b0),
    .d(register32_q_net_x1),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register22_q_net_x1)
  );
  fpga_kf_3dof_plus_xlAsynRegister #(
    .d_width(14),
    .init_value(14'b00000000000000)
  )
  register23 (
    .en(1'b1),
    .rst(1'b0),
    .d(register33_q_net_x1),
    .d_clk(clk_net),
    .q_ce(ce_net),
    .q_clk(src_clk_net),
    .d_ce(src_ce_net),
    .q(register23_q_net_x1)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block 
module fpga_kf_3dof_plus_default_clock_driver (
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
  output adc_clock_domain_wrapper_clk64,
  output adc_clock_domain_wrapper_ce64,
  output axi_clock_domain_wrapper_clk1,
  output axi_clock_domain_wrapper_ce1
);
  xlclockdriver #(
    .period(1),
    .log_2_period(1)
  )
  clockdriver_x2 (
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
  clockdriver_x1 (
    .sysclk(adc_clock_domain_wrapper_sysclk),
    .sysce(adc_clock_domain_wrapper_sysce),
    .sysclr(adc_clock_domain_wrapper_sysclr),
    .clk(adc_clock_domain_wrapper_clk4),
    .ce(adc_clock_domain_wrapper_ce4)
  );
  xlclockdriver #(
    .period(64),
    .log_2_period(7)
  )
  clockdriver_x0 (
    .sysclk(adc_clock_domain_wrapper_sysclk),
    .sysce(adc_clock_domain_wrapper_sysce),
    .sysclr(adc_clock_domain_wrapper_sysclr),
    .clk(adc_clock_domain_wrapper_clk64),
    .ce(adc_clock_domain_wrapper_ce64)
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
(* core_generation_info = "fpga_kf_3dof_plus,sysgen_core_2020_2,{,compilation=IP Catalog,block_icon_display=Default,family=zynq,part=xc7z020,speed=-1,package=clg400,synthesis_language=verilog,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=-10,system_simulink_period=-1,waveform_viewer=0,axilite_interface=1,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=0.020051,addsub=102,concat=8,constant=7,convert=33,counter=2,delay=4,dpram=2,dsamp=203,expr=1,inv=2,lfsr=8,logical=2,mcode=10,mult=96,mux=100,register=262,reinterpret=197,relational=8,shift=1,slice=186,usamp=17,}" *)
module fpga_kf_3dof_plus (
  input [1-1:0] hw_pot_switch,
  input [14-1:0] x_in,
  input [14-1:0] z_in,
  input adc_clock_domain_wrapper_clk,
  input axi_clock_domain_wrapper_clk,
  input axi_clock_domain_wrapper_aresetn,
  input [11-1:0] axi_clock_domain_wrapper_cfg_in_s_axi_awaddr,
  input axi_clock_domain_wrapper_cfg_in_s_axi_awvalid,
  input [32-1:0] axi_clock_domain_wrapper_cfg_in_s_axi_wdata,
  input [4-1:0] axi_clock_domain_wrapper_cfg_in_s_axi_wstrb,
  input axi_clock_domain_wrapper_cfg_in_s_axi_wvalid,
  input axi_clock_domain_wrapper_cfg_in_s_axi_bready,
  input [11-1:0] axi_clock_domain_wrapper_cfg_in_s_axi_araddr,
  input axi_clock_domain_wrapper_cfg_in_s_axi_arvalid,
  input axi_clock_domain_wrapper_cfg_in_s_axi_rready,
  output [14-1:0] dac_pulse_out,
  output [30-1:0] divisor_out,
  output [32-1:0] dma_out_1,
  output [32-1:0] dma_out_2,
  output [32-1:0] dma_out_3,
  output [32-1:0] dma_out_4,
  output [32-1:0] dma_out_5,
  output [32-1:0] dma_out_6,
  output [32-1:0] dma_out_7,
  output [14-1:0] gate_fb_x_out,
  output [14-1:0] gate_fb_z_out,
  output [8-1:0] gate_leds_out,
  output [14-1:0] gate_x1_out,
  output [14-1:0] gate_x2_out,
  output [14-1:0] gate_x3_out,
  output [14-1:0] gate_x4_out,
  output [14-1:0] gate_x5_out,
  output [14-1:0] gate_x6_out,
  output [14-1:0] gate_x7_out,
  output [16-1:0] gate_y_x_corrected_out,
  output [16-1:0] gate_y_z_corrected_out,
  output [1-1:0] tmr_dma_trigger_output,
  output axi_clock_domain_wrapper_cfg_in_s_axi_awready,
  output axi_clock_domain_wrapper_cfg_in_s_axi_wready,
  output [2-1:0] axi_clock_domain_wrapper_cfg_in_s_axi_bresp,
  output axi_clock_domain_wrapper_cfg_in_s_axi_bvalid,
  output axi_clock_domain_wrapper_cfg_in_s_axi_arready,
  output [32-1:0] axi_clock_domain_wrapper_cfg_in_s_axi_rdata,
  output [2-1:0] axi_clock_domain_wrapper_cfg_in_s_axi_rresp,
  output axi_clock_domain_wrapper_cfg_in_s_axi_rvalid
);
  wire [1-1:0] registers_update_in;
  wire [1-1:0] registers_wren_in;
  wire [1-1:0] disco_mode_enable;
  wire [25-1:0] k_iu;
  wire [25-1:0] barrier_c1_data_in;
  wire [25-1:0] barrier_c_idx_in;
  wire [1-1:0] barrier_ram_we_in;
  wire [30-1:0] barrier_lb_in;
  wire [32-1:0] dma_trigger_time;
  wire [3-1:0] fb_src_switch_in;
  wire [25-1:0] iu_ub;
  wire [10-1:0] barrier_ram_addr_in;
  wire [16-1:0] fixed_led_pattern_in;
  wire [25-1:0] registers_data_in;
  wire [10-1:0] barrier_c_ofst_idx_in;
  wire [30-1:0] barrier_ub_in;
  wire [32-1:0] registers_addr_in;
  wire [25-1:0] iu_lb;
  wire [14-1:0] noise_gain_in;
  wire [14-1:0] out_switch_off;
  wire [14-1:0] adc_ch2_offst;
  wire [14-1:0] adc_ch1_offst;
  wire [14-1:0] out_switch_on;
  wire [32-1:0] reg_out_switch_t0;
  wire [32-1:0] reg_out_switch_tf;
  wire [1-1:0] iu_enb;
  wire [32-1:0] registers_subaddr_in;
  wire [2-1:0] ap_ip_switch_in;
  wire [25-1:0] c_iu;
  wire [25-1:0] barrier_c0_data_in;
  wire [2-1:0] sw_override_in;
  wire [18-1:0] x_ref_in;
  wire [32-1:0] reg_rp_switch_t0;
  wire [14-1:0] dac_1_bias;
  wire clk_1_net_x0;
  wire ce_1_net;
  wire [14-1:0] dac_2_bias;
  wire [1-1:0] x_ref_enb;
  wire ce_1_net_x0;
  wire clk_4_net;
  wire [30-1:0] x_ref_ub;
  wire [30-1:0] x_ref_lb;
  wire clk_64_net;
  wire ce_64_net;
  wire clk_1_net;
  wire [32-1:0] reg_rp_switch_tf;
  wire [32-1:0] reg_timer_period;
  wire ce_4_net;
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
    .dac_1_bias(dac_1_bias),
    .dac_2_bias(dac_2_bias),
    .x_ref_ub(x_ref_ub),
    .x_ref_lb(x_ref_lb),
    .x_ref_in(x_ref_in),
    .x_ref_enb(x_ref_enb),
    .sw_override_in(sw_override_in),
    .reg_timer_period(reg_timer_period),
    .reg_rp_switch_tf(reg_rp_switch_tf),
    .reg_rp_switch_t0(reg_rp_switch_t0),
    .reg_out_switch_tf(reg_out_switch_tf),
    .reg_out_switch_t0(reg_out_switch_t0),
    .out_switch_on(out_switch_on),
    .out_switch_off(out_switch_off),
    .noise_gain_in(noise_gain_in),
    .iu_ub(iu_ub),
    .iu_lb(iu_lb),
    .iu_enb(iu_enb),
    .fb_src_switch_in(fb_src_switch_in),
    .dma_trigger_time(dma_trigger_time),
    .barrier_ub_in(barrier_ub_in),
    .barrier_lb_in(barrier_lb_in),
    .barrier_ram_we_in(barrier_ram_we_in),
    .barrier_ram_addr_in(barrier_ram_addr_in),
    .barrier_c_ofst_idx_in(barrier_c_ofst_idx_in),
    .barrier_c_idx_in(barrier_c_idx_in),
    .barrier_c1_data_in(barrier_c1_data_in),
    .barrier_c0_data_in(barrier_c0_data_in),
    .k_iu(k_iu),
    .fixed_led_pattern_in(fixed_led_pattern_in),
    .disco_mode_enable(disco_mode_enable),
    .c_iu(c_iu),
    .ap_ip_switch_in(ap_ip_switch_in),
    .adc_ch2_offst(adc_ch2_offst),
    .adc_ch1_offst(adc_ch1_offst),
    .registers_wren_in(registers_wren_in),
    .registers_update_in(registers_update_in),
    .registers_subaddr_in(registers_subaddr_in),
    .registers_data_in(registers_data_in),
    .registers_addr_in(registers_addr_in),
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
  fpga_kf_3dof_plus_default_clock_driver fpga_kf_3dof_plus_default_clock_driver (
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
    .adc_clock_domain_wrapper_clk64(clk_64_net),
    .adc_clock_domain_wrapper_ce64(ce_64_net),
    .axi_clock_domain_wrapper_clk1(clk_1_net),
    .axi_clock_domain_wrapper_ce1(ce_1_net)
  );
  fpga_kf_3dof_plus_struct fpga_kf_3dof_plus_struct (
    .hw_pot_switch(hw_pot_switch),
    .x_in(x_in),
    .z_in(z_in),
    .registers_addr_in(registers_addr_in),
    .registers_data_in(registers_data_in),
    .registers_subaddr_in(registers_subaddr_in),
    .registers_update_in(registers_update_in),
    .registers_wren_in(registers_wren_in),
    .adc_ch1_offst(adc_ch1_offst),
    .adc_ch2_offst(adc_ch2_offst),
    .ap_ip_switch_in(ap_ip_switch_in),
    .c_iu(c_iu),
    .disco_mode_enable(disco_mode_enable),
    .fixed_led_pattern_in(fixed_led_pattern_in),
    .k_iu(k_iu),
    .barrier_c0_data_in(barrier_c0_data_in),
    .barrier_c1_data_in(barrier_c1_data_in),
    .barrier_c_idx_in(barrier_c_idx_in),
    .barrier_c_ofst_idx_in(barrier_c_ofst_idx_in),
    .barrier_ram_addr_in(barrier_ram_addr_in),
    .barrier_ram_we_in(barrier_ram_we_in),
    .barrier_lb_in(barrier_lb_in),
    .barrier_ub_in(barrier_ub_in),
    .dma_trigger_time(dma_trigger_time),
    .fb_src_switch_in(fb_src_switch_in),
    .iu_enb(iu_enb),
    .iu_lb(iu_lb),
    .iu_ub(iu_ub),
    .noise_gain_in(noise_gain_in),
    .out_switch_off(out_switch_off),
    .out_switch_on(out_switch_on),
    .reg_out_switch_t0(reg_out_switch_t0),
    .reg_out_switch_tf(reg_out_switch_tf),
    .reg_rp_switch_t0(reg_rp_switch_t0),
    .reg_rp_switch_tf(reg_rp_switch_tf),
    .reg_timer_period(reg_timer_period),
    .sw_override_in(sw_override_in),
    .x_ref_enb(x_ref_enb),
    .x_ref_in(x_ref_in),
    .x_ref_lb(x_ref_lb),
    .x_ref_ub(x_ref_ub),
    .dac_2_bias(dac_2_bias),
    .dac_1_bias(dac_1_bias),
    .clk_1_x0(clk_1_net_x0),
    .ce_1_x0(ce_1_net_x0),
    .clk_4(clk_4_net),
    .ce_4(ce_4_net),
    .clk_64(clk_64_net),
    .ce_64(ce_64_net),
    .clk_1(clk_1_net),
    .ce_1(ce_1_net),
    .dac_pulse_out(dac_pulse_out),
    .divisor_out(divisor_out),
    .dma_out_1(dma_out_1),
    .dma_out_2(dma_out_2),
    .dma_out_3(dma_out_3),
    .dma_out_4(dma_out_4),
    .dma_out_5(dma_out_5),
    .dma_out_6(dma_out_6),
    .dma_out_7(dma_out_7),
    .gate_fb_x_out(gate_fb_x_out),
    .gate_fb_z_out(gate_fb_z_out),
    .gate_leds_out(gate_leds_out),
    .gate_x1_out(gate_x1_out),
    .gate_x2_out(gate_x2_out),
    .gate_x3_out(gate_x3_out),
    .gate_x4_out(gate_x4_out),
    .gate_x5_out(gate_x5_out),
    .gate_x6_out(gate_x6_out),
    .gate_x7_out(gate_x7_out),
    .gate_y_x_corrected_out(gate_y_x_corrected_out),
    .gate_y_z_corrected_out(gate_y_z_corrected_out),
    .tmr_dma_trigger_output(tmr_dma_trigger_output)
  );
endmodule
