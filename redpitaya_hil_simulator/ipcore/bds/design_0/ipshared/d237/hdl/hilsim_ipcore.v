`ifndef xlConvPkgIncluded
`include "conv_pkg.v"
`endif

`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/adc_dac_domain
module hilsim_ipcore_adc_dac_domain (
  input [25-1:0] adcclk_dac1_in,
  input [25-1:0] adcclk_dac0_in,
  input [25-1:0] adcclk_dac0_dma,
  input [25-1:0] adcclk_dac1_dma,
  input [25-1:0] adcclk_adc0_dma,
  input [25-1:0] adcclk_adc1_dma,
  input [14-1:0] adc_ch0_in,
  input [14-1:0] adc_ch1_in,
  input clk_1,
  input ce_1,
  output [25-1:0] adcclk_adc1_out,
  output [25-1:0] adcclk_adc0_out,
  output [14-1:0] dac_ch0_out,
  output [14-1:0] dac_ch1_out,
  output [32-1:0] dma_ch1_out,
  output [16-1:0] dma_ch2h_out,
  output [16-1:0] dma_ch2l_out,
  output [1-1:0] dma_trigger_out
);
  wire [25-1:0] clkxreg_slice1_cfg140_q_net;
  wire [14-1:0] adc_ch1_in_net;
  wire [14-1:0] cast_dac0_dout_net;
  wire [14-1:0] cast_dac1_dout_net;
  wire [32-1:0] concat_y_net;
  wire [16-1:0] reint_u2_output_port_net;
  wire [16-1:0] reint_u3_output_port_net;
  wire [1-1:0] constant7_op_net;
  wire clk_net;
  wire ce_net;
  wire [16-1:0] reint_u16_output_port_net;
  wire [16-1:0] reint_u1_output_port_net;
  wire [16-1:0] cast_dma_dout_net;
  wire [16-1:0] cast_dma1_dout_net;
  wire [16-1:0] cast_dma2_dout_net;
  wire [16-1:0] cast_dma3_dout_net;
  wire [25-1:0] clkxreg_slice1_cfg143_q_net;
  wire [14-1:0] adc_ch0_in_net;
  wire [25-1:0] cast_adc1_to_slice_dout_net;
  wire [25-1:0] clkxreg_slice1_cfg87_q_net;
  wire [25-1:0] cast_adc0_to_slice_dout_net;
  wire [25-1:0] clkxreg_slice1_cfg141_q_net;
  wire [25-1:0] clkxreg_slice1_cfg142_q_net;
  wire [25-1:0] clkxreg_slice1_cfg88_q_net;
  assign adcclk_adc1_out = cast_adc1_to_slice_dout_net;
  assign adcclk_adc0_out = cast_adc0_to_slice_dout_net;
  assign clkxreg_slice1_cfg87_q_net = adcclk_dac1_in;
  assign clkxreg_slice1_cfg88_q_net = adcclk_dac0_in;
  assign clkxreg_slice1_cfg140_q_net = adcclk_dac0_dma;
  assign clkxreg_slice1_cfg141_q_net = adcclk_dac1_dma;
  assign clkxreg_slice1_cfg142_q_net = adcclk_adc0_dma;
  assign clkxreg_slice1_cfg143_q_net = adcclk_adc1_dma;
  assign adc_ch0_in_net = adc_ch0_in;
  assign adc_ch1_in_net = adc_ch1_in;
  assign dac_ch0_out = cast_dac0_dout_net;
  assign dac_ch1_out = cast_dac1_dout_net;
  assign dma_ch1_out = concat_y_net;
  assign dma_ch2h_out = reint_u2_output_port_net;
  assign dma_ch2l_out = reint_u3_output_port_net;
  assign dma_trigger_out = constant7_op_net;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_concat_a04a2e2217 concat (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .in0(reint_u16_output_port_net),
    .in1(reint_u1_output_port_net),
    .y(concat_y_net)
  );
  sysgen_constant_caba551e44 constant7 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant7_op_net)
  );
  hilsim_ipcore_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(12),
    .din_width(14),
    .dout_arith(2),
    .dout_bin_pt(17),
    .dout_width(25),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  cast_adc0_to_slice (
    .clr(1'b0),
    .en(1'b1),
    .din(adc_ch0_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(cast_adc0_to_slice_dout_net)
  );
  hilsim_ipcore_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(12),
    .din_width(14),
    .dout_arith(2),
    .dout_bin_pt(17),
    .dout_width(25),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  cast_adc1_to_slice (
    .clr(1'b0),
    .en(1'b1),
    .din(adc_ch1_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(cast_adc1_to_slice_dout_net)
  );
  hilsim_ipcore_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(17),
    .din_width(25),
    .dout_arith(2),
    .dout_bin_pt(12),
    .dout_width(14),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  cast_dac0 (
    .clr(1'b0),
    .en(1'b1),
    .din(clkxreg_slice1_cfg88_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(cast_dac0_dout_net)
  );
  hilsim_ipcore_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(17),
    .din_width(25),
    .dout_arith(2),
    .dout_bin_pt(12),
    .dout_width(14),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  cast_dac1 (
    .clr(1'b0),
    .en(1'b1),
    .din(clkxreg_slice1_cfg87_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(cast_dac1_dout_net)
  );
  hilsim_ipcore_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(17),
    .din_width(25),
    .dout_arith(2),
    .dout_bin_pt(10),
    .dout_width(16),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  cast_dma (
    .clr(1'b0),
    .en(1'b1),
    .din(clkxreg_slice1_cfg141_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(cast_dma_dout_net)
  );
  hilsim_ipcore_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(17),
    .din_width(25),
    .dout_arith(2),
    .dout_bin_pt(10),
    .dout_width(16),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  cast_dma1 (
    .clr(1'b0),
    .en(1'b1),
    .din(clkxreg_slice1_cfg140_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(cast_dma1_dout_net)
  );
  hilsim_ipcore_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(17),
    .din_width(25),
    .dout_arith(2),
    .dout_bin_pt(10),
    .dout_width(16),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  cast_dma2 (
    .clr(1'b0),
    .en(1'b1),
    .din(clkxreg_slice1_cfg142_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(cast_dma2_dout_net)
  );
  hilsim_ipcore_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(17),
    .din_width(25),
    .dout_arith(2),
    .dout_bin_pt(10),
    .dout_width(16),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  cast_dma3 (
    .clr(1'b0),
    .en(1'b1),
    .din(clkxreg_slice1_cfg143_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(cast_dma3_dout_net)
  );
  sysgen_reinterpret_dd2718332c reint_u1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(cast_dma1_dout_net),
    .output_port(reint_u1_output_port_net)
  );
  sysgen_reinterpret_dd2718332c reint_u16 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(cast_dma_dout_net),
    .output_port(reint_u16_output_port_net)
  );
  sysgen_reinterpret_dd2718332c reint_u2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(cast_dma3_dout_net),
    .output_port(reint_u2_output_port_net)
  );
  sysgen_reinterpret_dd2718332c reint_u3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(cast_dma2_dout_net),
    .output_port(reint_u3_output_port_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/axi_domain
module hilsim_ipcore_axi_domain (
  input [1-1:0] axiclk_cfg_nlf_done,
  input [25-1:0] axiclk_adc_calib_out_1,
  input [9-1:0] axiclk_nlf_switch,
  input [25-1:0] axiclk_adc_calib_out_2,
  input [18-1:0] adc0_calib_factor,
  input [25-1:0] adc0_calib_offset,
  input [1-1:0] adc0_nlf_enable,
  input [18-1:0] adc0_nlf_gain,
  input [18-1:0] adc0_nlf_presc,
  input [18-1:0] adc1_calib_factor,
  input [25-1:0] adc1_calib_offset,
  input [1-1:0] adc1_nlf_enable,
  input [18-1:0] adc1_nlf_gain,
  input [18-1:0] adc1_nlf_presc,
  input [10-1:0] cfg_nlf_addr,
  input [16-1:0] cfg_nlf_data,
  input [32-1:0] cfg_nlf_select,
  input [1-1:0] cfg_nlf_start,
  input [1-1:0] cfg_nlf_we,
  input [18-1:0] cfg_noise_presc0,
  input [18-1:0] cfg_noise_presc1,
  input [18-1:0] cfg_noise_presc2,
  input [1-1:0] cfg_system_reset,
  input [18-1:0] dac0_calib_factor,
  input [25-1:0] dac0_calib_offset,
  input [18-1:0] dac1_calib_factor,
  input [25-1:0] dac1_calib_offset,
  input [18-1:0] inp_mat_fac_u0_adc0,
  input [18-1:0] inp_mat_fac_u0_adc1,
  input [18-1:0] inp_mat_fac_u0_noise,
  input [18-1:0] inp_mat_fac_u1_adc0,
  input [18-1:0] inp_mat_fac_u1_adc1,
  input [18-1:0] inp_mat_fac_u1_noise,
  input [18-1:0] inp_mat_fac_u2_adc0,
  input [18-1:0] inp_mat_fac_u2_adc1,
  input [18-1:0] inp_mat_fac_u2_noise,
  input [8-1:0] led_value,
  input [9-1:0] nlf_switch_io_mask,
  input [9-1:0] nlf_switch_sw_switch,
  input [2-1:0] out_mat_dac0_selx0,
  input [2-1:0] out_mat_dac0_selx1,
  input [2-1:0] out_mat_dac0_selx2,
  input [2-1:0] out_mat_dac1_selx0,
  input [2-1:0] out_mat_dac1_selx1,
  input [2-1:0] out_mat_dac1_selx2,
  input [18-1:0] out_mat_fac_dac0_xx0,
  input [18-1:0] out_mat_fac_dac0_xx1,
  input [18-1:0] out_mat_fac_dac0_xx2,
  input [18-1:0] out_mat_fac_dac1_xx0,
  input [18-1:0] out_mat_fac_dac1_xx1,
  input [18-1:0] out_mat_fac_dac1_xx2,
  input [1-1:0] out_mat_nlf_dac0_xx0_en,
  input [18-1:0] out_mat_nlf_dac0_xx0_gain,
  input [18-1:0] out_mat_nlf_dac0_xx0_presc,
  input [1-1:0] out_mat_nlf_dac0_xx1_en,
  input [18-1:0] out_mat_nlf_dac0_xx1_gain,
  input [18-1:0] out_mat_nlf_dac0_xx1_presc,
  input [1-1:0] out_mat_nlf_dac0_xx2_en,
  input [18-1:0] out_mat_nlf_dac0_xx2_gain,
  input [18-1:0] out_mat_nlf_dac0_xx2_presc,
  input [1-1:0] out_mat_nlf_dac1_xx0_en,
  input [18-1:0] out_mat_nlf_dac1_xx0_gain,
  input [18-1:0] out_mat_nlf_dac1_xx0_presc,
  input [1-1:0] out_mat_nlf_dac1_xx1_en,
  input [18-1:0] out_mat_nlf_dac1_xx1_gain,
  input [18-1:0] out_mat_nlf_dac1_xx1_presc,
  input [1-1:0] out_mat_nlf_dac1_xx2_en,
  input [18-1:0] out_mat_nlf_dac1_xx2_gain,
  input [18-1:0] out_mat_nlf_dac1_xx2_presc,
  input [18-1:0] slice0_u_gain,
  input [1-1:0] slice0_u_mux,
  input [18-1:0] slice0_u_nlf_gain,
  input [18-1:0] slice0_u_nlf_presc,
  input [18-1:0] slice0_x_gain,
  input [1-1:0] slice0_x_mux,
  input [18-1:0] slice0_x_nlf_gain,
  input [18-1:0] slice0_x_nlf_presc,
  input [18-1:0] slice0_x_presc_mul,
  input [5-1:0] slice0_x_presc_shift,
  input [18-1:0] slice0_xd_gain,
  input [1-1:0] slice0_xd_mux,
  input [18-1:0] slice0_xd_nlf_gain,
  input [18-1:0] slice0_xd_nlf_presc,
  input [18-1:0] slice0_xd_presc_mul,
  input [5-1:0] slice0_xd_presc_shift,
  input [18-1:0] slice1_u_gain,
  input [1-1:0] slice1_u_mux,
  input [18-1:0] slice1_u_nlf_gain,
  input [18-1:0] slice1_u_nlf_presc,
  input [18-1:0] slice1_x_gain,
  input [1-1:0] slice1_x_mux,
  input [18-1:0] slice1_x_nlf_gain,
  input [18-1:0] slice1_x_nlf_presc,
  input [18-1:0] slice1_x_presc_mul,
  input [5-1:0] slice1_x_presc_shift,
  input [18-1:0] slice1_xd_gain,
  input [1-1:0] slice1_xd_mux,
  input [18-1:0] slice1_xd_nlf_gain,
  input [18-1:0] slice1_xd_nlf_presc,
  input [18-1:0] slice1_xd_presc_mul,
  input [5-1:0] slice1_xd_presc_shift,
  input [18-1:0] slice2_u_gain,
  input [1-1:0] slice2_u_mux,
  input [18-1:0] slice2_u_nlf_gain,
  input [18-1:0] slice2_u_nlf_presc,
  input [18-1:0] slice2_x_gain,
  input [1-1:0] slice2_x_mux,
  input [18-1:0] slice2_x_nlf_gain,
  input [18-1:0] slice2_x_nlf_presc,
  input [18-1:0] slice2_x_presc_mul,
  input [5-1:0] slice2_x_presc_shift,
  input [18-1:0] slice2_xd_gain,
  input [1-1:0] slice2_xd_mux,
  input [18-1:0] slice2_xd_nlf_gain,
  input [18-1:0] slice2_xd_nlf_presc,
  input [18-1:0] slice2_xd_presc_mul,
  input [5-1:0] slice2_xd_presc_shift,
  input [1-1:0] system_run,
  output [8-1:0] axiclk_nlf_cfg_select
);
  wire [18-1:0] slice0_xd_gain_net;
  wire [1-1:0] slice0_xd_mux_net;
  wire [18-1:0] slice0_xd_nlf_gain_net;
  wire [18-1:0] slice0_xd_nlf_presc_net;
  wire [18-1:0] slice0_xd_presc_mul_net;
  wire [5-1:0] slice0_xd_presc_shift_net;
  wire [18-1:0] slice1_u_gain_net;
  wire [1-1:0] slice1_u_mux_net;
  wire [18-1:0] slice1_u_nlf_gain_net;
  wire [18-1:0] slice1_u_nlf_presc_net;
  wire [8-1:0] cfg_nlf_select_7_0_y_net;
  wire [1-1:0] clkxreg_slice1_cfg93_q_net;
  wire [25-1:0] clkxreg_slice1_cfg115_q_net;
  wire [9-1:0] clkxreg_slice1_cfg137_q_net;
  wire [25-1:0] clkxreg_slice1_cfg116_q_net;
  wire [18-1:0] adc0_calib_factor_net;
  wire [25-1:0] adc0_calib_offset_net;
  wire [1-1:0] adc0_nlf_enable_net;
  wire [18-1:0] adc0_nlf_gain_net;
  wire [18-1:0] adc0_nlf_presc_net;
  wire [18-1:0] adc1_calib_factor_net;
  wire [25-1:0] adc1_calib_offset_net;
  wire [1-1:0] adc1_nlf_enable_net;
  wire [18-1:0] adc1_nlf_gain_net;
  wire [18-1:0] adc1_nlf_presc_net;
  wire [10-1:0] cfg_nlf_addr_net;
  wire [16-1:0] cfg_nlf_data_net;
  wire [32-1:0] cfg_nlf_select_net;
  wire [1-1:0] cfg_nlf_start_net;
  wire [1-1:0] cfg_nlf_we_net;
  wire [18-1:0] cfg_noise_presc0_net;
  wire [18-1:0] cfg_noise_presc1_net;
  wire [18-1:0] cfg_noise_presc2_net;
  wire [1-1:0] cfg_system_reset_net;
  wire [18-1:0] dac0_calib_factor_net;
  wire [25-1:0] dac0_calib_offset_net;
  wire [18-1:0] dac1_calib_factor_net;
  wire [25-1:0] dac1_calib_offset_net;
  wire [18-1:0] inp_mat_fac_u0_adc0_net;
  wire [18-1:0] inp_mat_fac_u0_adc1_net;
  wire [18-1:0] inp_mat_fac_u0_noise_net;
  wire [18-1:0] inp_mat_fac_u1_adc0_net;
  wire [18-1:0] inp_mat_fac_u1_adc1_net;
  wire [18-1:0] inp_mat_fac_u1_noise_net;
  wire [18-1:0] inp_mat_fac_u2_adc0_net;
  wire [18-1:0] inp_mat_fac_u2_adc1_net;
  wire [18-1:0] inp_mat_fac_u2_noise_net;
  wire [8-1:0] led_value_net;
  wire [9-1:0] nlf_switch_io_mask_net;
  wire [9-1:0] nlf_switch_sw_switch_net;
  wire [2-1:0] out_mat_dac0_selx0_net;
  wire [2-1:0] out_mat_dac0_selx1_net;
  wire [2-1:0] out_mat_dac0_selx2_net;
  wire [2-1:0] out_mat_dac1_selx0_net;
  wire [2-1:0] out_mat_dac1_selx1_net;
  wire [2-1:0] out_mat_dac1_selx2_net;
  wire [18-1:0] out_mat_fac_dac0_xx0_net;
  wire [18-1:0] out_mat_fac_dac0_xx1_net;
  wire [18-1:0] out_mat_fac_dac0_xx2_net;
  wire [18-1:0] out_mat_fac_dac1_xx0_net;
  wire [18-1:0] out_mat_fac_dac1_xx1_net;
  wire [18-1:0] out_mat_fac_dac1_xx2_net;
  wire [1-1:0] out_mat_nlf_dac0_xx0_en_net;
  wire [18-1:0] out_mat_nlf_dac0_xx0_gain_net;
  wire [18-1:0] out_mat_nlf_dac0_xx0_presc_net;
  wire [1-1:0] out_mat_nlf_dac0_xx1_en_net;
  wire [18-1:0] out_mat_nlf_dac0_xx1_gain_net;
  wire [18-1:0] out_mat_nlf_dac0_xx1_presc_net;
  wire [1-1:0] out_mat_nlf_dac0_xx2_en_net;
  wire [18-1:0] out_mat_nlf_dac0_xx2_gain_net;
  wire [18-1:0] out_mat_nlf_dac0_xx2_presc_net;
  wire [1-1:0] out_mat_nlf_dac1_xx0_en_net;
  wire [18-1:0] out_mat_nlf_dac1_xx0_gain_net;
  wire [18-1:0] out_mat_nlf_dac1_xx0_presc_net;
  wire [1-1:0] out_mat_nlf_dac1_xx1_en_net;
  wire [18-1:0] out_mat_nlf_dac1_xx1_gain_net;
  wire [18-1:0] out_mat_nlf_dac1_xx1_presc_net;
  wire [1-1:0] out_mat_nlf_dac1_xx2_en_net;
  wire [18-1:0] out_mat_nlf_dac1_xx2_gain_net;
  wire [18-1:0] out_mat_nlf_dac1_xx2_presc_net;
  wire [18-1:0] slice0_u_gain_net;
  wire [1-1:0] slice0_u_mux_net;
  wire [18-1:0] slice0_u_nlf_gain_net;
  wire [18-1:0] slice0_u_nlf_presc_net;
  wire [18-1:0] slice0_x_gain_net;
  wire [1-1:0] slice0_x_mux_net;
  wire [18-1:0] slice0_x_nlf_gain_net;
  wire [18-1:0] slice0_x_nlf_presc_net;
  wire [18-1:0] slice0_x_presc_mul_net;
  wire [5-1:0] slice0_x_presc_shift_net;
  wire [18-1:0] slice1_x_gain_net;
  wire [1-1:0] slice1_x_mux_net;
  wire [18-1:0] slice1_x_nlf_gain_net;
  wire [18-1:0] slice1_x_nlf_presc_net;
  wire [18-1:0] slice1_x_presc_mul_net;
  wire [5-1:0] slice1_x_presc_shift_net;
  wire [18-1:0] slice1_xd_gain_net;
  wire [1-1:0] slice1_xd_mux_net;
  wire [18-1:0] slice1_xd_nlf_gain_net;
  wire [18-1:0] slice1_xd_nlf_presc_net;
  wire [18-1:0] slice1_xd_presc_mul_net;
  wire [5-1:0] slice1_xd_presc_shift_net;
  wire [18-1:0] slice2_u_gain_net;
  wire [1-1:0] slice2_u_mux_net;
  wire [18-1:0] slice2_u_nlf_gain_net;
  wire [18-1:0] slice2_u_nlf_presc_net;
  wire [18-1:0] slice2_x_gain_net;
  wire [1-1:0] slice2_x_mux_net;
  wire [18-1:0] slice2_x_nlf_gain_net;
  wire [18-1:0] slice2_x_nlf_presc_net;
  wire [18-1:0] slice2_x_presc_mul_net;
  wire [5-1:0] slice2_x_presc_shift_net;
  wire [18-1:0] slice2_xd_gain_net;
  wire [1-1:0] slice2_xd_mux_net;
  wire [18-1:0] slice2_xd_nlf_gain_net;
  wire [18-1:0] slice2_xd_nlf_presc_net;
  wire [18-1:0] slice2_xd_presc_mul_net;
  wire [5-1:0] slice2_xd_presc_shift_net;
  wire [1-1:0] system_run_net;
  assign axiclk_nlf_cfg_select = cfg_nlf_select_7_0_y_net;
  assign clkxreg_slice1_cfg93_q_net = axiclk_cfg_nlf_done;
  assign clkxreg_slice1_cfg115_q_net = axiclk_adc_calib_out_1;
  assign clkxreg_slice1_cfg137_q_net = axiclk_nlf_switch;
  assign clkxreg_slice1_cfg116_q_net = axiclk_adc_calib_out_2;
  assign adc0_calib_factor_net = adc0_calib_factor;
  assign adc0_calib_offset_net = adc0_calib_offset;
  assign adc0_nlf_enable_net = adc0_nlf_enable;
  assign adc0_nlf_gain_net = adc0_nlf_gain;
  assign adc0_nlf_presc_net = adc0_nlf_presc;
  assign adc1_calib_factor_net = adc1_calib_factor;
  assign adc1_calib_offset_net = adc1_calib_offset;
  assign adc1_nlf_enable_net = adc1_nlf_enable;
  assign adc1_nlf_gain_net = adc1_nlf_gain;
  assign adc1_nlf_presc_net = adc1_nlf_presc;
  assign cfg_nlf_addr_net = cfg_nlf_addr;
  assign cfg_nlf_data_net = cfg_nlf_data;
  assign cfg_nlf_select_net = cfg_nlf_select;
  assign cfg_nlf_start_net = cfg_nlf_start;
  assign cfg_nlf_we_net = cfg_nlf_we;
  assign cfg_noise_presc0_net = cfg_noise_presc0;
  assign cfg_noise_presc1_net = cfg_noise_presc1;
  assign cfg_noise_presc2_net = cfg_noise_presc2;
  assign cfg_system_reset_net = cfg_system_reset;
  assign dac0_calib_factor_net = dac0_calib_factor;
  assign dac0_calib_offset_net = dac0_calib_offset;
  assign dac1_calib_factor_net = dac1_calib_factor;
  assign dac1_calib_offset_net = dac1_calib_offset;
  assign inp_mat_fac_u0_adc0_net = inp_mat_fac_u0_adc0;
  assign inp_mat_fac_u0_adc1_net = inp_mat_fac_u0_adc1;
  assign inp_mat_fac_u0_noise_net = inp_mat_fac_u0_noise;
  assign inp_mat_fac_u1_adc0_net = inp_mat_fac_u1_adc0;
  assign inp_mat_fac_u1_adc1_net = inp_mat_fac_u1_adc1;
  assign inp_mat_fac_u1_noise_net = inp_mat_fac_u1_noise;
  assign inp_mat_fac_u2_adc0_net = inp_mat_fac_u2_adc0;
  assign inp_mat_fac_u2_adc1_net = inp_mat_fac_u2_adc1;
  assign inp_mat_fac_u2_noise_net = inp_mat_fac_u2_noise;
  assign led_value_net = led_value;
  assign nlf_switch_io_mask_net = nlf_switch_io_mask;
  assign nlf_switch_sw_switch_net = nlf_switch_sw_switch;
  assign out_mat_dac0_selx0_net = out_mat_dac0_selx0;
  assign out_mat_dac0_selx1_net = out_mat_dac0_selx1;
  assign out_mat_dac0_selx2_net = out_mat_dac0_selx2;
  assign out_mat_dac1_selx0_net = out_mat_dac1_selx0;
  assign out_mat_dac1_selx1_net = out_mat_dac1_selx1;
  assign out_mat_dac1_selx2_net = out_mat_dac1_selx2;
  assign out_mat_fac_dac0_xx0_net = out_mat_fac_dac0_xx0;
  assign out_mat_fac_dac0_xx1_net = out_mat_fac_dac0_xx1;
  assign out_mat_fac_dac0_xx2_net = out_mat_fac_dac0_xx2;
  assign out_mat_fac_dac1_xx0_net = out_mat_fac_dac1_xx0;
  assign out_mat_fac_dac1_xx1_net = out_mat_fac_dac1_xx1;
  assign out_mat_fac_dac1_xx2_net = out_mat_fac_dac1_xx2;
  assign out_mat_nlf_dac0_xx0_en_net = out_mat_nlf_dac0_xx0_en;
  assign out_mat_nlf_dac0_xx0_gain_net = out_mat_nlf_dac0_xx0_gain;
  assign out_mat_nlf_dac0_xx0_presc_net = out_mat_nlf_dac0_xx0_presc;
  assign out_mat_nlf_dac0_xx1_en_net = out_mat_nlf_dac0_xx1_en;
  assign out_mat_nlf_dac0_xx1_gain_net = out_mat_nlf_dac0_xx1_gain;
  assign out_mat_nlf_dac0_xx1_presc_net = out_mat_nlf_dac0_xx1_presc;
  assign out_mat_nlf_dac0_xx2_en_net = out_mat_nlf_dac0_xx2_en;
  assign out_mat_nlf_dac0_xx2_gain_net = out_mat_nlf_dac0_xx2_gain;
  assign out_mat_nlf_dac0_xx2_presc_net = out_mat_nlf_dac0_xx2_presc;
  assign out_mat_nlf_dac1_xx0_en_net = out_mat_nlf_dac1_xx0_en;
  assign out_mat_nlf_dac1_xx0_gain_net = out_mat_nlf_dac1_xx0_gain;
  assign out_mat_nlf_dac1_xx0_presc_net = out_mat_nlf_dac1_xx0_presc;
  assign out_mat_nlf_dac1_xx1_en_net = out_mat_nlf_dac1_xx1_en;
  assign out_mat_nlf_dac1_xx1_gain_net = out_mat_nlf_dac1_xx1_gain;
  assign out_mat_nlf_dac1_xx1_presc_net = out_mat_nlf_dac1_xx1_presc;
  assign out_mat_nlf_dac1_xx2_en_net = out_mat_nlf_dac1_xx2_en;
  assign out_mat_nlf_dac1_xx2_gain_net = out_mat_nlf_dac1_xx2_gain;
  assign out_mat_nlf_dac1_xx2_presc_net = out_mat_nlf_dac1_xx2_presc;
  assign slice0_u_gain_net = slice0_u_gain;
  assign slice0_u_mux_net = slice0_u_mux;
  assign slice0_u_nlf_gain_net = slice0_u_nlf_gain;
  assign slice0_u_nlf_presc_net = slice0_u_nlf_presc;
  assign slice0_x_gain_net = slice0_x_gain;
  assign slice0_x_mux_net = slice0_x_mux;
  assign slice0_x_nlf_gain_net = slice0_x_nlf_gain;
  assign slice0_x_nlf_presc_net = slice0_x_nlf_presc;
  assign slice0_x_presc_mul_net = slice0_x_presc_mul;
  assign slice0_x_presc_shift_net = slice0_x_presc_shift;
  assign slice0_xd_gain_net = slice0_xd_gain;
  assign slice0_xd_mux_net = slice0_xd_mux;
  assign slice0_xd_nlf_gain_net = slice0_xd_nlf_gain;
  assign slice0_xd_nlf_presc_net = slice0_xd_nlf_presc;
  assign slice0_xd_presc_mul_net = slice0_xd_presc_mul;
  assign slice0_xd_presc_shift_net = slice0_xd_presc_shift;
  assign slice1_u_gain_net = slice1_u_gain;
  assign slice1_u_mux_net = slice1_u_mux;
  assign slice1_u_nlf_gain_net = slice1_u_nlf_gain;
  assign slice1_u_nlf_presc_net = slice1_u_nlf_presc;
  assign slice1_x_gain_net = slice1_x_gain;
  assign slice1_x_mux_net = slice1_x_mux;
  assign slice1_x_nlf_gain_net = slice1_x_nlf_gain;
  assign slice1_x_nlf_presc_net = slice1_x_nlf_presc;
  assign slice1_x_presc_mul_net = slice1_x_presc_mul;
  assign slice1_x_presc_shift_net = slice1_x_presc_shift;
  assign slice1_xd_gain_net = slice1_xd_gain;
  assign slice1_xd_mux_net = slice1_xd_mux;
  assign slice1_xd_nlf_gain_net = slice1_xd_nlf_gain;
  assign slice1_xd_nlf_presc_net = slice1_xd_nlf_presc;
  assign slice1_xd_presc_mul_net = slice1_xd_presc_mul;
  assign slice1_xd_presc_shift_net = slice1_xd_presc_shift;
  assign slice2_u_gain_net = slice2_u_gain;
  assign slice2_u_mux_net = slice2_u_mux;
  assign slice2_u_nlf_gain_net = slice2_u_nlf_gain;
  assign slice2_u_nlf_presc_net = slice2_u_nlf_presc;
  assign slice2_x_gain_net = slice2_x_gain;
  assign slice2_x_mux_net = slice2_x_mux;
  assign slice2_x_nlf_gain_net = slice2_x_nlf_gain;
  assign slice2_x_nlf_presc_net = slice2_x_nlf_presc;
  assign slice2_x_presc_mul_net = slice2_x_presc_mul;
  assign slice2_x_presc_shift_net = slice2_x_presc_shift;
  assign slice2_xd_gain_net = slice2_xd_gain;
  assign slice2_xd_mux_net = slice2_xd_mux;
  assign slice2_xd_nlf_gain_net = slice2_xd_nlf_gain;
  assign slice2_xd_nlf_presc_net = slice2_xd_nlf_presc;
  assign slice2_xd_presc_mul_net = slice2_xd_presc_mul;
  assign slice2_xd_presc_shift_net = slice2_xd_presc_shift;
  assign system_run_net = system_run;
  hilsim_ipcore_xlslice #(
    .new_lsb(0),
    .new_msb(7),
    .x_width(32),
    .y_width(8)
  )
  cfg_nlf_select_7_0 (
    .x(cfg_nlf_select_net),
    .y(cfg_nlf_select_7_0_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/adc_calib
module hilsim_ipcore_adc_calib (
  input [25-1:0] adc_calib_in_1,
  input [25-1:0] adc0_in,
  input [25-1:0] adc1_in,
  input [25-1:0] adc_calib_in_2,
  input [18-1:0] adc_calib_in_3,
  input [18-1:0] adc_calib_in_4,
  input clk_1,
  input ce_1,
  output [25-1:0] adc_calib_out_1,
  output [25-1:0] adc0_out,
  output [25-1:0] adc1_out,
  output [25-1:0] adc_calib_out_2
);
  wire [25-1:0] adc0_calib_mul_p_net;
  wire [25-1:0] adc1_calib_mul_p_net;
  wire [25-1:0] clkxreg_slice1_cfg114_q_net;
  wire [25-1:0] clkxreg_slice1_cfg85_q_net;
  wire [25-1:0] clkxreg_slice1_cfg86_q_net;
  wire [25-1:0] clkxreg_slice1_cfg113_q_net;
  wire [18-1:0] clkxreg_slice1_cfg118_q_net;
  wire [18-1:0] clkxreg_slice1_cfg117_q_net;
  wire clk_net;
  wire ce_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] register17_q_net;
  wire [18-1:0] register2_q_net;
  wire [18-1:0] register3_q_net;
  wire [25-1:0] adc0_calib_add_s_net;
  wire [25-1:0] adc1_calib_add_s_net;
  assign adc_calib_out_1 = adc0_calib_mul_p_net;
  assign adc0_out = adc0_calib_mul_p_net;
  assign adc1_out = adc1_calib_mul_p_net;
  assign adc_calib_out_2 = adc1_calib_mul_p_net;
  assign clkxreg_slice1_cfg114_q_net = adc_calib_in_1;
  assign clkxreg_slice1_cfg85_q_net = adc0_in;
  assign clkxreg_slice1_cfg86_q_net = adc1_in;
  assign clkxreg_slice1_cfg113_q_net = adc_calib_in_2;
  assign clkxreg_slice1_cfg118_q_net = adc_calib_in_3;
  assign clkxreg_slice1_cfg117_q_net = adc_calib_in_4;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  hilsim_ipcore_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg113_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register1_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register17 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg114_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register17_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register2 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg118_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register2_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register3 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg117_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register3_q_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(26),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i0"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  adc0_calib_add (
    .clr(1'b0),
    .en(1'b1),
    .a(clkxreg_slice1_cfg85_q_net),
    .b(register17_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(adc0_calib_add_s_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i0"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  adc0_calib_mul (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(adc0_calib_add_s_net),
    .b(register2_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(adc0_calib_mul_p_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(26),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i0"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  adc1_calib_add (
    .clr(1'b0),
    .en(1'b1),
    .a(clkxreg_slice1_cfg86_q_net),
    .b(register1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(adc1_calib_add_s_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i0"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  adc1_calib_mul (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(adc1_calib_add_s_net),
    .b(register3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(adc1_calib_mul_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/adc_nlf/nlf_adc0
module hilsim_ipcore_nlf_adc0 (
  input [25-1:0] x,
  input [18-1:0] presc,
  input [18-1:0] gain,
  input [1-1:0] cfg_select,
  input [10-1:0] cfg_addr,
  input [16-1:0] cfg_data,
  input [1-1:0] cfg_we,
  input clk_1,
  input ce_1,
  output [25-1:0] f_x
);
  wire [25-1:0] addsub1_s_net;
  wire [25-1:0] const_1_interp_op_net;
  wire [25-1:0] slice_dout_net;
  wire [25-1:0] add_interpolate_s_net;
  wire [25-1:0] mult_a_p_net;
  wire [25-1:0] mult_b_p_net;
  wire [1-1:0] bool_zero_wea_op_net;
  wire [25-1:0] mult_out_scale_p_net;
  wire [25-1:0] adc0_calib_mul_p_net;
  wire [18-1:0] register6_q_net;
  wire [18-1:0] register7_q_net;
  wire [1-1:0] register8_q_net;
  wire [10-1:0] register_q_net;
  wire [16-1:0] register1_q_net;
  wire [1-1:0] register2_q_net;
  wire clk_net;
  wire ce_net;
  wire [10-1:0] addsub_s_net;
  wire [10-1:0] reinterpret_output_port_net;
  wire [10-1:0] const_1_op_net;
  wire [16-1:0] lut_douta_net;
  wire [16-1:0] lut_doutb_net;
  wire [10-1:0] addra_mux_y_net;
  wire [16-1:0] dina_mux_y_net;
  wire [1-1:0] wea_mux_y_net;
  wire [16-1:0] zero_nlf_datatype_op_net;
  wire [1-1:0] bool_zero_we_op_net;
  wire [10-1:0] cast_cutoff_lsbits_dout_net;
  wire [25-1:0] mult_inp_scale_p_net;
  wire [14-1:0] reint_sliced_output_port_net;
  wire [14-1:0] cutoff_msbits_y_net;
  wire [25-1:0] delay_sync_interpolate_q_net;
  wire [16-1:0] zero_nlf_dina_op_net;
  assign f_x = mult_out_scale_p_net;
  assign adc0_calib_mul_p_net = x;
  assign register6_q_net = presc;
  assign register7_q_net = gain;
  assign register8_q_net = cfg_select;
  assign register_q_net = cfg_addr;
  assign register1_q_net = cfg_data;
  assign register2_q_net = cfg_we;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlUnsigned),
    .a_bin_pt(0),
    .a_width(10),
    .b_arith(`xlUnsigned),
    .b_bin_pt(0),
    .b_width(10),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(11),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i1"),
    .extra_registers(0),
    .full_s_arith(1),
    .full_s_width(11),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlUnsigned),
    .s_bin_pt(0),
    .s_width(10)
  )
  addsub (
    .clr(1'b0),
    .en(1'b1),
    .a(reinterpret_output_port_net),
    .b(const_1_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub_s_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(26),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i2"),
    .extra_registers(1),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(2),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  addsub1 (
    .clr(1'b0),
    .en(1'b1),
    .a(const_1_interp_op_net),
    .b(slice_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub1_s_net)
  );
  hilsim_ipcore_xltdpram #(
    .addr_width_a(10),
    .addr_width_b(10),
    .clocking_mode("common_clock"),
    .data_width_a(16),
    .data_width_b(16),
    .latency(1),
    .mem_init_file("xpm_f5fed5_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_a("0"),
    .read_reset_b("0"),
    .write_mode_a("write_first"),
    .write_mode_b("write_first")
  )
  lut (
    .ena(1'b1),
    .enb(1'b1),
    .rsta(1'b0),
    .rstb(1'b0),
    .addra(addra_mux_y_net),
    .dina(dina_mux_y_net),
    .wea(wea_mux_y_net),
    .addrb(addsub_s_net),
    .dinb(zero_nlf_datatype_op_net),
    .web(bool_zero_we_op_net),
    .a_clk(clk_net),
    .a_ce(ce_net),
    .b_clk(clk_net),
    .b_ce(ce_net),
    .douta(lut_douta_net),
    .doutb(lut_doutb_net)
  );
  sysgen_reinterpret_f4605e0022 reinterpret (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(cast_cutoff_lsbits_dout_net),
    .output_port(reinterpret_output_port_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(26),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i0"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  add_interpolate (
    .clr(1'b0),
    .en(1'b1),
    .a(mult_a_p_net),
    .b(mult_b_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(add_interpolate_s_net)
  );
  sysgen_mux_c832ae0d6a addra_mux (
    .clr(1'b0),
    .sel(register8_q_net),
    .d0(reinterpret_output_port_net),
    .d1(register_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(addra_mux_y_net)
  );
  sysgen_constant_caba551e44 bool_zero_we (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(bool_zero_we_op_net)
  );
  sysgen_constant_caba551e44 bool_zero_wea (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(bool_zero_wea_op_net)
  );
  hilsim_ipcore_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(23),
    .din_width(25),
    .dout_arith(2),
    .dout_bin_pt(9),
    .dout_width(10),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  cast_cutoff_lsbits (
    .clr(1'b0),
    .en(1'b1),
    .din(mult_inp_scale_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(cast_cutoff_lsbits_dout_net)
  );
  hilsim_ipcore_xlconvert #(
    .bool_conversion(0),
    .din_arith(1),
    .din_bin_pt(14),
    .din_width(14),
    .dout_arith(2),
    .dout_bin_pt(17),
    .dout_width(25),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  slice (
    .clr(1'b0),
    .en(1'b1),
    .din(reint_sliced_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(slice_dout_net)
  );
  sysgen_constant_7b59d789af const_1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(const_1_op_net)
  );
  sysgen_constant_ab97251e3b const_1_interp (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(const_1_interp_op_net)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(0),
    .new_msb(13),
    .x_width(25),
    .y_width(14)
  )
  cutoff_msbits (
    .x(mult_inp_scale_p_net),
    .y(cutoff_msbits_y_net)
  );
  hilsim_ipcore_xldelay #(
    .latency(2),
    .reg_retiming(0),
    .reset(0),
    .width(25)
  )
  delay_sync_interpolate (
    .en(1'b1),
    .rst(1'b0),
    .d(slice_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_sync_interpolate_q_net)
  );
  sysgen_mux_ba276f04f0 dina_mux (
    .clr(1'b0),
    .sel(register8_q_net),
    .d0(zero_nlf_dina_op_net),
    .d1(register1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(dina_mux_y_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(14),
    .a_width(16),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_a_type(0),
    .c_a_width(16),
    .c_b_type(0),
    .c_b_width(25),
    .c_baat(16),
    .c_output_width(41),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i1"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_a (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(lut_douta_net),
    .b(addsub1_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_a_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(14),
    .a_width(16),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_a_type(0),
    .c_a_width(16),
    .c_b_type(0),
    .c_b_width(25),
    .c_baat(16),
    .c_output_width(41),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i1"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_b (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(lut_doutb_net),
    .b(delay_sync_interpolate_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_b_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i0"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(23),
    .p_width(25),
    .quantization(1)
  )
  mult_inp_scale (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(adc0_calib_mul_p_net),
    .b(register6_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_inp_scale_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i0"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_out_scale (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(add_interpolate_s_net),
    .b(register7_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_out_scale_p_net)
  );
  sysgen_reinterpret_67d055efc4 reint_sliced (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(cutoff_msbits_y_net),
    .output_port(reint_sliced_output_port_net)
  );
  sysgen_mux_18d2538cb2 wea_mux (
    .clr(1'b0),
    .sel(register8_q_net),
    .d0(bool_zero_wea_op_net),
    .d1(register2_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(wea_mux_y_net)
  );
  sysgen_constant_f3b3f76499 zero_nlf_datatype (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(zero_nlf_datatype_op_net)
  );
  sysgen_constant_f3b3f76499 zero_nlf_dina (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(zero_nlf_dina_op_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/adc_nlf/nlf_adc1
module hilsim_ipcore_nlf_adc1 (
  input [25-1:0] x,
  input [18-1:0] presc,
  input [18-1:0] gain,
  input [1-1:0] cfg_select,
  input [10-1:0] cfg_addr,
  input [16-1:0] cfg_data,
  input [1-1:0] cfg_we,
  input clk_1,
  input ce_1,
  output [25-1:0] f_x
);
  wire [25-1:0] mult_out_scale_p_net;
  wire [25-1:0] adc1_calib_mul_p_net;
  wire [18-1:0] register9_q_net;
  wire [18-1:0] register10_q_net;
  wire [1-1:0] register11_q_net;
  wire [10-1:0] register3_q_net;
  wire [16-1:0] register4_q_net;
  wire [1-1:0] register5_q_net;
  wire clk_net;
  wire ce_net;
  wire [10-1:0] addsub_s_net;
  wire [10-1:0] reinterpret_output_port_net;
  wire [10-1:0] const_1_op_net;
  wire [25-1:0] addsub1_s_net;
  wire [25-1:0] const_1_interp_op_net;
  wire [25-1:0] slice_dout_net;
  wire [16-1:0] lut_douta_net;
  wire [16-1:0] lut_doutb_net;
  wire [10-1:0] addra_mux_y_net;
  wire [16-1:0] dina_mux_y_net;
  wire [1-1:0] wea_mux_y_net;
  wire [16-1:0] zero_nlf_datatype_op_net;
  wire [1-1:0] bool_zero_we_op_net;
  wire [10-1:0] cast_cutoff_lsbits_dout_net;
  wire [25-1:0] add_interpolate_s_net;
  wire [25-1:0] mult_a_p_net;
  wire [25-1:0] mult_b_p_net;
  wire [1-1:0] bool_zero_wea_op_net;
  wire [25-1:0] mult_inp_scale_p_net;
  wire [14-1:0] reint_sliced_output_port_net;
  wire [14-1:0] cutoff_msbits_y_net;
  wire [25-1:0] delay_sync_interpolate_q_net;
  wire [16-1:0] zero_nlf_dina_op_net;
  assign f_x = mult_out_scale_p_net;
  assign adc1_calib_mul_p_net = x;
  assign register9_q_net = presc;
  assign register10_q_net = gain;
  assign register11_q_net = cfg_select;
  assign register3_q_net = cfg_addr;
  assign register4_q_net = cfg_data;
  assign register5_q_net = cfg_we;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlUnsigned),
    .a_bin_pt(0),
    .a_width(10),
    .b_arith(`xlUnsigned),
    .b_bin_pt(0),
    .b_width(10),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(11),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i1"),
    .extra_registers(0),
    .full_s_arith(1),
    .full_s_width(11),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlUnsigned),
    .s_bin_pt(0),
    .s_width(10)
  )
  addsub (
    .clr(1'b0),
    .en(1'b1),
    .a(reinterpret_output_port_net),
    .b(const_1_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub_s_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(26),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i2"),
    .extra_registers(1),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(2),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  addsub1 (
    .clr(1'b0),
    .en(1'b1),
    .a(const_1_interp_op_net),
    .b(slice_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub1_s_net)
  );
  hilsim_ipcore_xltdpram #(
    .addr_width_a(10),
    .addr_width_b(10),
    .clocking_mode("common_clock"),
    .data_width_a(16),
    .data_width_b(16),
    .latency(1),
    .mem_init_file("xpm_f5fed5_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_a("0"),
    .read_reset_b("0"),
    .write_mode_a("write_first"),
    .write_mode_b("write_first")
  )
  lut (
    .ena(1'b1),
    .enb(1'b1),
    .rsta(1'b0),
    .rstb(1'b0),
    .addra(addra_mux_y_net),
    .dina(dina_mux_y_net),
    .wea(wea_mux_y_net),
    .addrb(addsub_s_net),
    .dinb(zero_nlf_datatype_op_net),
    .web(bool_zero_we_op_net),
    .a_clk(clk_net),
    .a_ce(ce_net),
    .b_clk(clk_net),
    .b_ce(ce_net),
    .douta(lut_douta_net),
    .doutb(lut_doutb_net)
  );
  sysgen_reinterpret_f4605e0022 reinterpret (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(cast_cutoff_lsbits_dout_net),
    .output_port(reinterpret_output_port_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(26),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i0"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  add_interpolate (
    .clr(1'b0),
    .en(1'b1),
    .a(mult_a_p_net),
    .b(mult_b_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(add_interpolate_s_net)
  );
  sysgen_mux_c832ae0d6a addra_mux (
    .clr(1'b0),
    .sel(register11_q_net),
    .d0(reinterpret_output_port_net),
    .d1(register3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(addra_mux_y_net)
  );
  sysgen_constant_caba551e44 bool_zero_we (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(bool_zero_we_op_net)
  );
  sysgen_constant_caba551e44 bool_zero_wea (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(bool_zero_wea_op_net)
  );
  hilsim_ipcore_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(23),
    .din_width(25),
    .dout_arith(2),
    .dout_bin_pt(9),
    .dout_width(10),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  cast_cutoff_lsbits (
    .clr(1'b0),
    .en(1'b1),
    .din(mult_inp_scale_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(cast_cutoff_lsbits_dout_net)
  );
  hilsim_ipcore_xlconvert #(
    .bool_conversion(0),
    .din_arith(1),
    .din_bin_pt(14),
    .din_width(14),
    .dout_arith(2),
    .dout_bin_pt(17),
    .dout_width(25),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  slice (
    .clr(1'b0),
    .en(1'b1),
    .din(reint_sliced_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(slice_dout_net)
  );
  sysgen_constant_7b59d789af const_1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(const_1_op_net)
  );
  sysgen_constant_ab97251e3b const_1_interp (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(const_1_interp_op_net)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(0),
    .new_msb(13),
    .x_width(25),
    .y_width(14)
  )
  cutoff_msbits (
    .x(mult_inp_scale_p_net),
    .y(cutoff_msbits_y_net)
  );
  hilsim_ipcore_xldelay #(
    .latency(2),
    .reg_retiming(0),
    .reset(0),
    .width(25)
  )
  delay_sync_interpolate (
    .en(1'b1),
    .rst(1'b0),
    .d(slice_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_sync_interpolate_q_net)
  );
  sysgen_mux_ba276f04f0 dina_mux (
    .clr(1'b0),
    .sel(register11_q_net),
    .d0(zero_nlf_dina_op_net),
    .d1(register4_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(dina_mux_y_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(14),
    .a_width(16),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_a_type(0),
    .c_a_width(16),
    .c_b_type(0),
    .c_b_width(25),
    .c_baat(16),
    .c_output_width(41),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i1"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_a (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(lut_douta_net),
    .b(addsub1_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_a_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(14),
    .a_width(16),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_a_type(0),
    .c_a_width(16),
    .c_b_type(0),
    .c_b_width(25),
    .c_baat(16),
    .c_output_width(41),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i1"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_b (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(lut_doutb_net),
    .b(delay_sync_interpolate_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_b_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i0"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(23),
    .p_width(25),
    .quantization(1)
  )
  mult_inp_scale (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(adc1_calib_mul_p_net),
    .b(register9_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_inp_scale_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i0"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_out_scale (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(add_interpolate_s_net),
    .b(register10_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_out_scale_p_net)
  );
  sysgen_reinterpret_67d055efc4 reint_sliced (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(cutoff_msbits_y_net),
    .output_port(reint_sliced_output_port_net)
  );
  sysgen_mux_18d2538cb2 wea_mux (
    .clr(1'b0),
    .sel(register11_q_net),
    .d0(bool_zero_wea_op_net),
    .d1(register5_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(wea_mux_y_net)
  );
  sysgen_constant_f3b3f76499 zero_nlf_datatype (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(zero_nlf_datatype_op_net)
  );
  sysgen_constant_f3b3f76499 zero_nlf_dina (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(zero_nlf_dina_op_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/adc_nlf
module hilsim_ipcore_adc_nlf (
  input [25-1:0] adc0_nlf_in,
  input [25-1:0] adc1_nlf_in,
  input [18-1:0] adc_nlf_cfg_1,
  input [8-1:0] nlf_cfg_bus_1,
  input [8-1:0] nlf_sel_addrs_1,
  input [18-1:0] adc_nlf_cfg_2,
  input [1-1:0] adc_nlf_cfg_3,
  input [18-1:0] adc_nlf_cfg_4,
  input [18-1:0] adc_nlf_cfg_5,
  input [1-1:0] adc_nlf_cfg_6,
  input [10-1:0] nlf_cfg_bus_2,
  input [16-1:0] nlf_cfg_bus_3,
  input [1-1:0] nlf_cfg_bus_4,
  input [8-1:0] nlf_sel_addrs_2,
  input clk_1,
  input ce_1,
  output [25-1:0] adc0_nlf_out,
  output [25-1:0] adc1_nlf_out
);
  wire [1-1:0] nlfsel_adc0_op_net;
  wire [25-1:0] adc0_delay_mux_y_net;
  wire [25-1:0] adc1_delay_mux_y_net;
  wire [25-1:0] adc0_nlf_bypass_mux_y_net;
  wire [25-1:0] adc1_nlf_bypass_mux_y_net;
  wire [25-1:0] adc0_calib_mul_p_net;
  wire [25-1:0] adc1_calib_mul_p_net;
  wire [18-1:0] clkxreg_slice1_cfg101_q_net;
  wire [8-1:0] seladdr;
  wire [8-1:0] sel_adc0;
  wire [18-1:0] clkxreg_slice1_cfg100_q_net;
  wire [1-1:0] clkxreg_slice1_cfg102_q_net;
  wire [18-1:0] clkxreg_slice1_cfg105_q_net;
  wire [18-1:0] clkxreg_slice1_cfg104_q_net;
  wire [1-1:0] clkxreg_slice1_cfg103_q_net;
  wire [10-1:0] delay_q_net;
  wire [16-1:0] tmp_lut_doutb_net;
  wire [1-1:0] delay1_q_net;
  wire [8-1:0] sel_adc1;
  wire clk_net;
  wire ce_net;
  wire [25-1:0] mult_out_scale_p_net_x0;
  wire [18-1:0] register6_q_net;
  wire [18-1:0] register7_q_net;
  wire [1-1:0] register8_q_net;
  wire [10-1:0] register_q_net;
  wire [16-1:0] register1_q_net;
  wire [1-1:0] register2_q_net;
  wire [25-1:0] mult_out_scale_p_net;
  wire [18-1:0] register9_q_net;
  wire [18-1:0] register10_q_net;
  wire [1-1:0] register11_q_net;
  wire [10-1:0] register3_q_net;
  wire [16-1:0] register4_q_net;
  wire [1-1:0] register5_q_net;
  wire [25-1:0] delay_q_net_x0;
  wire [25-1:0] delay1_q_net_x0;
  wire [1-1:0] logical_y_net;
  wire [1-1:0] register12_q_net;
  wire [1-1:0] register13_q_net;
  wire [1-1:0] nlfsel_adc1_op_net;
  assign adc0_nlf_out = adc0_nlf_bypass_mux_y_net;
  assign adc1_nlf_out = adc1_nlf_bypass_mux_y_net;
  assign adc0_calib_mul_p_net = adc0_nlf_in;
  assign adc1_calib_mul_p_net = adc1_nlf_in;
  assign clkxreg_slice1_cfg101_q_net = adc_nlf_cfg_1;
  assign seladdr = nlf_cfg_bus_1;
  assign sel_adc0 = nlf_sel_addrs_1;
  assign clkxreg_slice1_cfg100_q_net = adc_nlf_cfg_2;
  assign clkxreg_slice1_cfg102_q_net = adc_nlf_cfg_3;
  assign clkxreg_slice1_cfg105_q_net = adc_nlf_cfg_4;
  assign clkxreg_slice1_cfg104_q_net = adc_nlf_cfg_5;
  assign clkxreg_slice1_cfg103_q_net = adc_nlf_cfg_6;
  assign delay_q_net = nlf_cfg_bus_2;
  assign tmp_lut_doutb_net = nlf_cfg_bus_3;
  assign delay1_q_net = nlf_cfg_bus_4;
  assign sel_adc1 = nlf_sel_addrs_2;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  hilsim_ipcore_nlf_adc0 nlf_adc0 (
    .x(adc0_calib_mul_p_net),
    .presc(register6_q_net),
    .gain(register7_q_net),
    .cfg_select(register8_q_net),
    .cfg_addr(register_q_net),
    .cfg_data(register1_q_net),
    .cfg_we(register2_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .f_x(mult_out_scale_p_net_x0)
  );
  hilsim_ipcore_nlf_adc1 nlf_adc1 (
    .x(adc1_calib_mul_p_net),
    .presc(register9_q_net),
    .gain(register10_q_net),
    .cfg_select(register11_q_net),
    .cfg_addr(register3_q_net),
    .cfg_data(register4_q_net),
    .cfg_we(register5_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .f_x(mult_out_scale_p_net)
  );
  hilsim_ipcore_xldelay #(
    .latency(12),
    .reg_retiming(0),
    .reset(0),
    .width(25)
  )
  delay (
    .en(1'b1),
    .rst(1'b0),
    .d(adc0_calib_mul_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_q_net_x0)
  );
  hilsim_ipcore_xldelay #(
    .latency(12),
    .reg_retiming(0),
    .reset(0),
    .width(25)
  )
  delay1 (
    .en(1'b1),
    .rst(1'b0),
    .d(adc1_calib_mul_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay1_q_net_x0)
  );
  sysgen_logical_3ae5b19b5e logical (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(register12_q_net),
    .d1(register13_q_net),
    .y(logical_y_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(10),
    .init_value(10'b0000000000)
  )
  register (
    .en(1'b1),
    .rst(1'b0),
    .d(delay_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(16),
    .init_value(16'b0000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(tmp_lut_doutb_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register1_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register10 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg104_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register10_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register11 (
    .en(1'b1),
    .rst(1'b0),
    .d(nlfsel_adc1_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register11_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register12 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg102_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register12_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register13 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg103_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register13_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register2 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register2_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(10),
    .init_value(10'b0000000000)
  )
  register3 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register3_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(16),
    .init_value(16'b0000000000000000)
  )
  register4 (
    .en(1'b1),
    .rst(1'b0),
    .d(tmp_lut_doutb_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register4_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register5 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register5_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register6 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg101_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register6_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register7 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg100_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register7_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register8 (
    .en(1'b1),
    .rst(1'b0),
    .d(nlfsel_adc0_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register8_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register9 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg105_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register9_q_net)
  );
  sysgen_mux_1b926b88d6 adc0_delay_mux (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .sel(logical_y_net),
    .d0(adc0_calib_mul_p_net),
    .d1(delay_q_net_x0),
    .y(adc0_delay_mux_y_net)
  );
  sysgen_mux_d68a8b9ad8 adc0_nlf_bypass_mux (
    .clr(1'b0),
    .sel(register12_q_net),
    .d0(adc0_delay_mux_y_net),
    .d1(mult_out_scale_p_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .y(adc0_nlf_bypass_mux_y_net)
  );
  sysgen_mux_1b926b88d6 adc1_delay_mux (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .sel(logical_y_net),
    .d0(adc1_calib_mul_p_net),
    .d1(delay1_q_net_x0),
    .y(adc1_delay_mux_y_net)
  );
  sysgen_mux_d68a8b9ad8 adc1_nlf_bypass_mux (
    .clr(1'b0),
    .sel(register13_q_net),
    .d0(adc1_delay_mux_y_net),
    .d1(mult_out_scale_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(adc1_nlf_bypass_mux_y_net)
  );
  sysgen_relational_a2a0814d7a nlfsel_adc0 (
    .clr(1'b0),
    .a(seladdr),
    .b(sel_adc0),
    .clk(clk_net),
    .ce(ce_net),
    .op(nlfsel_adc0_op_net)
  );
  sysgen_relational_a2a0814d7a nlfsel_adc1 (
    .clr(1'b0),
    .a(seladdr),
    .b(sel_adc1),
    .clk(clk_net),
    .ce(ce_net),
    .op(nlfsel_adc1_op_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/dac_calib
module hilsim_ipcore_dac_calib (
  input [25-1:0] dac_calib_cfg_1,
  input [25-1:0] dac0_in,
  input [25-1:0] dac1_in,
  input [25-1:0] dac_calib_cfg_2,
  input [18-1:0] dac_calib_cfg_3,
  input [18-1:0] dac_calib_cfg_4,
  input clk_1,
  input ce_1,
  output [25-1:0] dac0_out,
  output [25-1:0] dac1_out
);
  wire [25-1:0] dac0_calib_add_s_net;
  wire [25-1:0] dac1_calib_add_s_net;
  wire [25-1:0] clkxreg_slice1_cfg133_q_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] mux2_y_net;
  wire [25-1:0] clkxreg_slice1_cfg132_q_net;
  wire [18-1:0] clkxreg_slice1_cfg135_q_net;
  wire [18-1:0] clkxreg_slice1_cfg134_q_net;
  wire clk_net;
  wire ce_net;
  wire [18-1:0] register1_q_net;
  wire [25-1:0] register2_q_net;
  wire [25-1:0] register3_q_net;
  wire [18-1:0] register4_q_net;
  wire [25-1:0] dac0_calib_mul_p_net;
  wire [25-1:0] dac1_calib_mul_p_net;
  assign dac0_out = dac0_calib_add_s_net;
  assign dac1_out = dac1_calib_add_s_net;
  assign clkxreg_slice1_cfg133_q_net = dac_calib_cfg_1;
  assign mux1_y_net = dac0_in;
  assign mux2_y_net = dac1_in;
  assign clkxreg_slice1_cfg132_q_net = dac_calib_cfg_2;
  assign clkxreg_slice1_cfg135_q_net = dac_calib_cfg_3;
  assign clkxreg_slice1_cfg134_q_net = dac_calib_cfg_4;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg135_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register1_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register2 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg132_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register2_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register3 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg133_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register3_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register4 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg134_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register4_q_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(26),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i0"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  dac0_calib_add (
    .clr(1'b0),
    .en(1'b1),
    .a(dac0_calib_mul_p_net),
    .b(register3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(dac0_calib_add_s_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i0"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  dac0_calib_mul (
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
    .p(dac0_calib_mul_p_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(26),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i0"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  dac1_calib_add (
    .clr(1'b0),
    .en(1'b1),
    .a(dac1_calib_mul_p_net),
    .b(register2_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(dac1_calib_add_s_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i0"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  dac1_calib_mul (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux2_y_net),
    .b(register4_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(dac1_calib_mul_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/gaussian_noise_gen_0
module hilsim_ipcore_gaussian_noise_gen_0 (
  input [18-1:0] scaling_factor,
  input clk_1,
  input ce_1,
  input clk_2,
  input ce_2,
  input clk_36,
  input ce_36,
  output [25-1:0] rng_out
);
  wire [25-1:0] mult_p_net;
  wire [18-1:0] clkxreg_slice1_cfg83_q_net;
  wire clk_net;
  wire ce_net;
  wire src_clk_net;
  wire src_ce_net;
  wire dest_clk_net;
  wire dest_ce_net;
  wire [1-1:0] constant_op_net;
  wire [12-1:0] down_sample_q_net;
  wire [12-1:0] slice_1_y_net;
  wire [12-1:0] down_sample1_q_net;
  wire [12-1:0] slice_2_y_net;
  wire [13-1:0] up_sample_q_net;
  wire [13-1:0] add_1_2_s_net;
  wire [12-1:0] rom_box_muller_cos_1_data_net;
  wire [12-1:0] rom_box_muller_sin_1_data_net;
  wire [24-1:0] lfsr_1_dout_net;
  wire [24-1:0] lfsr_2_dout_net;
  assign rng_out = mult_p_net;
  assign clkxreg_slice1_cfg83_q_net = scaling_factor;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  assign src_clk_net = clk_2;
  assign src_ce_net = ce_2;
  assign dest_clk_net = clk_36;
  assign dest_ce_net = ce_36;
  sysgen_constant_8a21de7c7f constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  hilsim_ipcore_xldsamp #(
    .d_arith(`xlUnsigned),
    .d_bin_pt(0),
    .d_width(12),
    .ds_ratio(18),
    .latency(1),
    .phase(17),
    .q_arith(`xlUnsigned),
    .q_bin_pt(0),
    .q_width(12)
  )
  down_sample (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(slice_1_y_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(dest_clk_net),
    .dest_ce(dest_ce_net),
    .q(down_sample_q_net)
  );
  hilsim_ipcore_xldsamp #(
    .d_arith(`xlUnsigned),
    .d_bin_pt(0),
    .d_width(12),
    .ds_ratio(18),
    .latency(1),
    .phase(17),
    .q_arith(`xlUnsigned),
    .q_bin_pt(0),
    .q_width(12)
  )
  down_sample1 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(slice_2_y_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(dest_clk_net),
    .dest_ce(dest_ce_net),
    .q(down_sample1_q_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(7),
    .a_width(13),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(13),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(13),
    .c_output_width(31),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i2"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(up_sample_q_net),
    .b(clkxreg_slice1_cfg83_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_p_net)
  );
  hilsim_ipcore_xlusamp #(
    .copy_samples(1),
    .d_arith(`xlSigned),
    .d_bin_pt(7),
    .d_width(13),
    .latency(1),
    .q_arith(`xlSigned),
    .q_bin_pt(7),
    .q_width(13)
  )
  up_sample (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .d(add_1_2_s_net),
    .src_clk(dest_clk_net),
    .src_ce(dest_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(up_sample_q_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(7),
    .a_width(12),
    .b_arith(`xlSigned),
    .b_bin_pt(7),
    .b_width(12),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(13),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i3"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(13),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(7),
    .s_width(13)
  )
  add_1_2 (
    .clr(1'b0),
    .en(1'b1),
    .a(rom_box_muller_cos_1_data_net),
    .b(rom_box_muller_sin_1_data_net),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .s(add_1_2_s_net)
  );
  sysgen_lfsr_54b8862899 lfsr_1 (
    .clr(1'b0),
    .en(constant_op_net),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .dout(lfsr_1_dout_net)
  );
  sysgen_lfsr_f01f13da39 lfsr_2 (
    .clr(1'b0),
    .en(constant_op_net),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .dout(lfsr_2_dout_net)
  );
  hilsim_ipcore_xlsprom #(
    .c_address_width(12),
    .c_width(12),
    .latency(1),
    .mem_init_file("xpm_87b3ad_vivado.mem"),
    .mem_size(49152),
    .mem_type("block"),
    .read_reset_val("0")
  )
  rom_box_muller_cos_1 (
    .en(1'b1),
    .rst(1'b0),
    .addr(down_sample_q_net),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .data(rom_box_muller_cos_1_data_net)
  );
  hilsim_ipcore_xlsprom #(
    .c_address_width(12),
    .c_width(12),
    .latency(1),
    .mem_init_file("xpm_82a82c_vivado.mem"),
    .mem_size(49152),
    .mem_type("block"),
    .read_reset_val("0")
  )
  rom_box_muller_sin_1 (
    .en(1'b1),
    .rst(1'b0),
    .addr(down_sample1_q_net),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .data(rom_box_muller_sin_1_data_net)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(0),
    .new_msb(11),
    .x_width(24),
    .y_width(12)
  )
  slice_1 (
    .x(lfsr_1_dout_net),
    .y(slice_1_y_net)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(0),
    .new_msb(11),
    .x_width(24),
    .y_width(12)
  )
  slice_2 (
    .x(lfsr_2_dout_net),
    .y(slice_2_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/gaussian_noise_gen_1
module hilsim_ipcore_gaussian_noise_gen_1 (
  input [18-1:0] scaling_factor,
  input clk_1,
  input ce_1,
  input clk_2,
  input ce_2,
  input clk_36,
  input ce_36,
  output [25-1:0] rng_out
);
  wire [25-1:0] mult_p_net;
  wire [18-1:0] clkxreg_slice1_cfg82_q_net;
  wire clk_net;
  wire ce_net;
  wire src_clk_net;
  wire src_ce_net;
  wire dest_clk_net;
  wire dest_ce_net;
  wire [1-1:0] constant_op_net;
  wire [12-1:0] down_sample_q_net;
  wire [12-1:0] slice_1_y_net;
  wire [12-1:0] down_sample1_q_net;
  wire [12-1:0] slice_2_y_net;
  wire [13-1:0] up_sample_q_net;
  wire [13-1:0] add_1_2_s_net;
  wire [12-1:0] rom_box_muller_cos_1_data_net;
  wire [12-1:0] rom_box_muller_sin_1_data_net;
  wire [24-1:0] lfsr_1_dout_net;
  wire [24-1:0] lfsr_2_dout_net;
  assign rng_out = mult_p_net;
  assign clkxreg_slice1_cfg82_q_net = scaling_factor;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  assign src_clk_net = clk_2;
  assign src_ce_net = ce_2;
  assign dest_clk_net = clk_36;
  assign dest_ce_net = ce_36;
  sysgen_constant_8a21de7c7f constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  hilsim_ipcore_xldsamp #(
    .d_arith(`xlUnsigned),
    .d_bin_pt(0),
    .d_width(12),
    .ds_ratio(18),
    .latency(1),
    .phase(17),
    .q_arith(`xlUnsigned),
    .q_bin_pt(0),
    .q_width(12)
  )
  down_sample (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(slice_1_y_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(dest_clk_net),
    .dest_ce(dest_ce_net),
    .q(down_sample_q_net)
  );
  hilsim_ipcore_xldsamp #(
    .d_arith(`xlUnsigned),
    .d_bin_pt(0),
    .d_width(12),
    .ds_ratio(18),
    .latency(1),
    .phase(17),
    .q_arith(`xlUnsigned),
    .q_bin_pt(0),
    .q_width(12)
  )
  down_sample1 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(slice_2_y_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(dest_clk_net),
    .dest_ce(dest_ce_net),
    .q(down_sample1_q_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(7),
    .a_width(13),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(13),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(13),
    .c_output_width(31),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i2"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(up_sample_q_net),
    .b(clkxreg_slice1_cfg82_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_p_net)
  );
  hilsim_ipcore_xlusamp #(
    .copy_samples(1),
    .d_arith(`xlSigned),
    .d_bin_pt(7),
    .d_width(13),
    .latency(1),
    .q_arith(`xlSigned),
    .q_bin_pt(7),
    .q_width(13)
  )
  up_sample (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .d(add_1_2_s_net),
    .src_clk(dest_clk_net),
    .src_ce(dest_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(up_sample_q_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(7),
    .a_width(12),
    .b_arith(`xlSigned),
    .b_bin_pt(7),
    .b_width(12),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(13),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i3"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(13),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(7),
    .s_width(13)
  )
  add_1_2 (
    .clr(1'b0),
    .en(1'b1),
    .a(rom_box_muller_cos_1_data_net),
    .b(rom_box_muller_sin_1_data_net),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .s(add_1_2_s_net)
  );
  sysgen_lfsr_5ceab45f7f lfsr_1 (
    .clr(1'b0),
    .en(constant_op_net),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .dout(lfsr_1_dout_net)
  );
  sysgen_lfsr_8df956ab1b lfsr_2 (
    .clr(1'b0),
    .en(constant_op_net),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .dout(lfsr_2_dout_net)
  );
  hilsim_ipcore_xlsprom #(
    .c_address_width(12),
    .c_width(12),
    .latency(1),
    .mem_init_file("xpm_87b3ad_vivado.mem"),
    .mem_size(49152),
    .mem_type("block"),
    .read_reset_val("0")
  )
  rom_box_muller_cos_1 (
    .en(1'b1),
    .rst(1'b0),
    .addr(down_sample_q_net),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .data(rom_box_muller_cos_1_data_net)
  );
  hilsim_ipcore_xlsprom #(
    .c_address_width(12),
    .c_width(12),
    .latency(1),
    .mem_init_file("xpm_82a82c_vivado.mem"),
    .mem_size(49152),
    .mem_type("block"),
    .read_reset_val("0")
  )
  rom_box_muller_sin_1 (
    .en(1'b1),
    .rst(1'b0),
    .addr(down_sample1_q_net),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .data(rom_box_muller_sin_1_data_net)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(0),
    .new_msb(11),
    .x_width(24),
    .y_width(12)
  )
  slice_1 (
    .x(lfsr_1_dout_net),
    .y(slice_1_y_net)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(0),
    .new_msb(11),
    .x_width(24),
    .y_width(12)
  )
  slice_2 (
    .x(lfsr_2_dout_net),
    .y(slice_2_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/gaussian_noise_gen_2
module hilsim_ipcore_gaussian_noise_gen_2 (
  input [18-1:0] scaling_factor,
  input clk_1,
  input ce_1,
  input clk_2,
  input ce_2,
  input clk_36,
  input ce_36,
  output [25-1:0] rng_out
);
  wire [25-1:0] mult_p_net;
  wire [18-1:0] clkxreg_slice1_cfg84_q_net;
  wire clk_net;
  wire ce_net;
  wire src_clk_net;
  wire src_ce_net;
  wire dest_clk_net;
  wire dest_ce_net;
  wire [1-1:0] constant_op_net;
  wire [12-1:0] down_sample_q_net;
  wire [12-1:0] slice_1_y_net;
  wire [12-1:0] down_sample1_q_net;
  wire [12-1:0] slice_2_y_net;
  wire [13-1:0] up_sample_q_net;
  wire [13-1:0] add_1_2_s_net;
  wire [12-1:0] rom_box_muller_cos_1_data_net;
  wire [12-1:0] rom_box_muller_sin_1_data_net;
  wire [24-1:0] lfsr_1_dout_net;
  wire [24-1:0] lfsr_2_dout_net;
  assign rng_out = mult_p_net;
  assign clkxreg_slice1_cfg84_q_net = scaling_factor;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  assign src_clk_net = clk_2;
  assign src_ce_net = ce_2;
  assign dest_clk_net = clk_36;
  assign dest_ce_net = ce_36;
  sysgen_constant_8a21de7c7f constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  hilsim_ipcore_xldsamp #(
    .d_arith(`xlUnsigned),
    .d_bin_pt(0),
    .d_width(12),
    .ds_ratio(18),
    .latency(1),
    .phase(17),
    .q_arith(`xlUnsigned),
    .q_bin_pt(0),
    .q_width(12)
  )
  down_sample (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(slice_1_y_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(dest_clk_net),
    .dest_ce(dest_ce_net),
    .q(down_sample_q_net)
  );
  hilsim_ipcore_xldsamp #(
    .d_arith(`xlUnsigned),
    .d_bin_pt(0),
    .d_width(12),
    .ds_ratio(18),
    .latency(1),
    .phase(17),
    .q_arith(`xlUnsigned),
    .q_bin_pt(0),
    .q_width(12)
  )
  down_sample1 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(slice_2_y_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(dest_clk_net),
    .dest_ce(dest_ce_net),
    .q(down_sample1_q_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(7),
    .a_width(13),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(13),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(13),
    .c_output_width(31),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i2"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(up_sample_q_net),
    .b(clkxreg_slice1_cfg84_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_p_net)
  );
  hilsim_ipcore_xlusamp #(
    .copy_samples(1),
    .d_arith(`xlSigned),
    .d_bin_pt(7),
    .d_width(13),
    .latency(1),
    .q_arith(`xlSigned),
    .q_bin_pt(7),
    .q_width(13)
  )
  up_sample (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .d(add_1_2_s_net),
    .src_clk(dest_clk_net),
    .src_ce(dest_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(up_sample_q_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(7),
    .a_width(12),
    .b_arith(`xlSigned),
    .b_bin_pt(7),
    .b_width(12),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(13),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i3"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(13),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(7),
    .s_width(13)
  )
  add_1_2 (
    .clr(1'b0),
    .en(1'b1),
    .a(rom_box_muller_cos_1_data_net),
    .b(rom_box_muller_sin_1_data_net),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .s(add_1_2_s_net)
  );
  sysgen_lfsr_e4521b68d3 lfsr_1 (
    .clr(1'b0),
    .en(constant_op_net),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .dout(lfsr_1_dout_net)
  );
  sysgen_lfsr_42def34a67 lfsr_2 (
    .clr(1'b0),
    .en(constant_op_net),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .dout(lfsr_2_dout_net)
  );
  hilsim_ipcore_xlsprom #(
    .c_address_width(12),
    .c_width(12),
    .latency(1),
    .mem_init_file("xpm_87b3ad_vivado.mem"),
    .mem_size(49152),
    .mem_type("block"),
    .read_reset_val("0")
  )
  rom_box_muller_cos_1 (
    .en(1'b1),
    .rst(1'b0),
    .addr(down_sample_q_net),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .data(rom_box_muller_cos_1_data_net)
  );
  hilsim_ipcore_xlsprom #(
    .c_address_width(12),
    .c_width(12),
    .latency(1),
    .mem_init_file("xpm_82a82c_vivado.mem"),
    .mem_size(49152),
    .mem_type("block"),
    .read_reset_val("0")
  )
  rom_box_muller_sin_1 (
    .en(1'b1),
    .rst(1'b0),
    .addr(down_sample1_q_net),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .data(rom_box_muller_sin_1_data_net)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(0),
    .new_msb(11),
    .x_width(24),
    .y_width(12)
  )
  slice_1 (
    .x(lfsr_1_dout_net),
    .y(slice_1_y_net)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(0),
    .new_msb(11),
    .x_width(24),
    .y_width(12)
  )
  slice_2 (
    .x(lfsr_2_dout_net),
    .y(slice_2_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/input_matrix
module hilsim_ipcore_input_matrix (
  input [25-1:0] adc0,
  input [25-1:0] adc1,
  input [25-1:0] noise0,
  input [25-1:0] noise1,
  input [25-1:0] noise2,
  input [18-1:0] input_matrix_cfg_1,
  input [18-1:0] input_matrix_cfg_2,
  input [18-1:0] input_matrix_cfg_3,
  input [18-1:0] input_matrix_cfg_4,
  input [18-1:0] input_matrix_cfg_5,
  input [18-1:0] input_matrix_cfg_6,
  input [18-1:0] input_matrix_cfg_7,
  input [18-1:0] input_matrix_cfg_8,
  input [18-1:0] input_matrix_cfg_9,
  input clk_1,
  input ce_1,
  input clk_36,
  input ce_36,
  output [25-1:0] u0,
  output [25-1:0] u1,
  output [25-1:0] u2
);
  wire ce_net;
  wire dest_clk_net;
  wire dest_ce_net;
  wire [18-1:0] down_sample10_q_net;
  wire [18-1:0] down_sample11_q_net;
  wire [25-1:0] u0_add2_s_net;
  wire [25-1:0] u1_add2_s_net;
  wire [25-1:0] u2_add2_s_net;
  wire [25-1:0] adc0_nlf_bypass_mux_y_net;
  wire [25-1:0] adc1_nlf_bypass_mux_y_net;
  wire [25-1:0] mult_p_net_x1;
  wire [25-1:0] mult_p_net_x0;
  wire [25-1:0] mult_p_net;
  wire [18-1:0] clkxreg_slice1_cfg30_q_net;
  wire [18-1:0] clkxreg_slice1_cfg26_q_net;
  wire [18-1:0] clkxreg_slice1_cfg32_q_net;
  wire [18-1:0] clkxreg_slice1_cfg31_q_net;
  wire [18-1:0] clkxreg_slice1_cfg34_q_net;
  wire [18-1:0] clkxreg_slice1_cfg33_q_net;
  wire [18-1:0] clkxreg_slice1_cfg36_q_net;
  wire [18-1:0] clkxreg_slice1_cfg35_q_net;
  wire [18-1:0] clkxreg_slice1_cfg27_q_net;
  wire clk_net;
  wire [18-1:0] down_sample3_q_net;
  wire [18-1:0] down_sample4_q_net;
  wire [18-1:0] down_sample5_q_net;
  wire [18-1:0] down_sample6_q_net;
  wire [18-1:0] down_sample7_q_net;
  wire [18-1:0] down_sample8_q_net;
  wire [18-1:0] down_sample9_q_net;
  wire [25-1:0] u0_adc0_mul_p_net;
  wire [25-1:0] u0_adc1_mul_p_net;
  wire [25-1:0] u0_add1_s_net;
  wire [25-1:0] u0_delay_q_net;
  wire [25-1:0] u0_noise_mul_p_net;
  wire [25-1:0] u1_adc0_mul_p_net;
  wire [25-1:0] u1_adc1_mul_p_net;
  wire [25-1:0] u1_add1_s_net;
  wire [25-1:0] u1_delay_q_net;
  wire [25-1:0] u1_noise_mul_p_net;
  wire [25-1:0] u2_adc0_mul_p_net;
  wire [25-1:0] u2_adc1_mul_p_net;
  wire [25-1:0] u2_add1_s_net;
  wire [25-1:0] u2_delay_q_net;
  wire [25-1:0] u2_noise_mul_p_net;
  assign u0 = u0_add2_s_net;
  assign u1 = u1_add2_s_net;
  assign u2 = u2_add2_s_net;
  assign adc0_nlf_bypass_mux_y_net = adc0;
  assign adc1_nlf_bypass_mux_y_net = adc1;
  assign mult_p_net_x1 = noise0;
  assign mult_p_net_x0 = noise1;
  assign mult_p_net = noise2;
  assign clkxreg_slice1_cfg30_q_net = input_matrix_cfg_1;
  assign clkxreg_slice1_cfg26_q_net = input_matrix_cfg_2;
  assign clkxreg_slice1_cfg32_q_net = input_matrix_cfg_3;
  assign clkxreg_slice1_cfg31_q_net = input_matrix_cfg_4;
  assign clkxreg_slice1_cfg34_q_net = input_matrix_cfg_5;
  assign clkxreg_slice1_cfg33_q_net = input_matrix_cfg_6;
  assign clkxreg_slice1_cfg36_q_net = input_matrix_cfg_7;
  assign clkxreg_slice1_cfg35_q_net = input_matrix_cfg_8;
  assign clkxreg_slice1_cfg27_q_net = input_matrix_cfg_9;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  assign dest_clk_net = clk_36;
  assign dest_ce_net = ce_36;
  hilsim_ipcore_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(10),
    .d_width(18),
    .ds_ratio(36),
    .latency(1),
    .phase(35),
    .q_arith(`xlSigned),
    .q_bin_pt(10),
    .q_width(18)
  )
  down_sample10 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg26_q_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(dest_clk_net),
    .dest_ce(dest_ce_net),
    .q(down_sample10_q_net)
  );
  hilsim_ipcore_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(10),
    .d_width(18),
    .ds_ratio(36),
    .latency(1),
    .phase(35),
    .q_arith(`xlSigned),
    .q_bin_pt(10),
    .q_width(18)
  )
  down_sample11 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg30_q_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(dest_clk_net),
    .dest_ce(dest_ce_net),
    .q(down_sample11_q_net)
  );
  hilsim_ipcore_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(10),
    .d_width(18),
    .ds_ratio(36),
    .latency(1),
    .phase(35),
    .q_arith(`xlSigned),
    .q_bin_pt(10),
    .q_width(18)
  )
  down_sample3 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg27_q_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(dest_clk_net),
    .dest_ce(dest_ce_net),
    .q(down_sample3_q_net)
  );
  hilsim_ipcore_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(10),
    .d_width(18),
    .ds_ratio(36),
    .latency(1),
    .phase(35),
    .q_arith(`xlSigned),
    .q_bin_pt(10),
    .q_width(18)
  )
  down_sample4 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg35_q_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(dest_clk_net),
    .dest_ce(dest_ce_net),
    .q(down_sample4_q_net)
  );
  hilsim_ipcore_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(10),
    .d_width(18),
    .ds_ratio(36),
    .latency(1),
    .phase(35),
    .q_arith(`xlSigned),
    .q_bin_pt(10),
    .q_width(18)
  )
  down_sample5 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg36_q_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(dest_clk_net),
    .dest_ce(dest_ce_net),
    .q(down_sample5_q_net)
  );
  hilsim_ipcore_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(10),
    .d_width(18),
    .ds_ratio(36),
    .latency(1),
    .phase(35),
    .q_arith(`xlSigned),
    .q_bin_pt(10),
    .q_width(18)
  )
  down_sample6 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg33_q_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(dest_clk_net),
    .dest_ce(dest_ce_net),
    .q(down_sample6_q_net)
  );
  hilsim_ipcore_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(10),
    .d_width(18),
    .ds_ratio(36),
    .latency(1),
    .phase(35),
    .q_arith(`xlSigned),
    .q_bin_pt(10),
    .q_width(18)
  )
  down_sample7 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg34_q_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(dest_clk_net),
    .dest_ce(dest_ce_net),
    .q(down_sample7_q_net)
  );
  hilsim_ipcore_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(10),
    .d_width(18),
    .ds_ratio(36),
    .latency(1),
    .phase(35),
    .q_arith(`xlSigned),
    .q_bin_pt(10),
    .q_width(18)
  )
  down_sample8 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg31_q_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(dest_clk_net),
    .dest_ce(dest_ce_net),
    .q(down_sample8_q_net)
  );
  hilsim_ipcore_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(10),
    .d_width(18),
    .ds_ratio(36),
    .latency(1),
    .phase(35),
    .q_arith(`xlSigned),
    .q_bin_pt(10),
    .q_width(18)
  )
  down_sample9 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg32_q_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(dest_clk_net),
    .dest_ce(dest_ce_net),
    .q(down_sample9_q_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i0"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  u0_adc0_mul (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(adc0_nlf_bypass_mux_y_net),
    .b(down_sample11_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(u0_adc0_mul_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i0"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  u0_adc1_mul (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(adc1_nlf_bypass_mux_y_net),
    .b(down_sample10_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(u0_adc1_mul_p_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(26),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i0"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  u0_add1 (
    .clr(1'b0),
    .en(1'b1),
    .a(u0_adc0_mul_p_net),
    .b(u0_adc1_mul_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(u0_add1_s_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(26),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i0"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  u0_add2 (
    .clr(1'b0),
    .en(1'b1),
    .a(u0_add1_s_net),
    .b(u0_delay_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(u0_add2_s_net)
  );
  hilsim_ipcore_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(25)
  )
  u0_delay (
    .en(1'b1),
    .rst(1'b0),
    .d(u0_noise_mul_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(u0_delay_q_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i0"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  u0_noise_mul (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mult_p_net_x1),
    .b(down_sample9_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(u0_noise_mul_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i0"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  u1_adc0_mul (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(adc0_nlf_bypass_mux_y_net),
    .b(down_sample8_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(u1_adc0_mul_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i0"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  u1_adc1_mul (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(adc1_nlf_bypass_mux_y_net),
    .b(down_sample7_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(u1_adc1_mul_p_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(26),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i0"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  u1_add1 (
    .clr(1'b0),
    .en(1'b1),
    .a(u1_adc0_mul_p_net),
    .b(u1_adc1_mul_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(u1_add1_s_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(26),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i0"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  u1_add2 (
    .clr(1'b0),
    .en(1'b1),
    .a(u1_add1_s_net),
    .b(u1_delay_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(u1_add2_s_net)
  );
  hilsim_ipcore_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(25)
  )
  u1_delay (
    .en(1'b1),
    .rst(1'b0),
    .d(u1_noise_mul_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(u1_delay_q_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i0"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  u1_noise_mul (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mult_p_net_x0),
    .b(down_sample6_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(u1_noise_mul_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i0"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  u2_adc0_mul (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(adc0_nlf_bypass_mux_y_net),
    .b(down_sample5_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(u2_adc0_mul_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i0"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  u2_adc1_mul (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(adc1_nlf_bypass_mux_y_net),
    .b(down_sample4_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(u2_adc1_mul_p_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(26),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i0"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  u2_add1 (
    .clr(1'b0),
    .en(1'b1),
    .a(u2_adc0_mul_p_net),
    .b(u2_adc1_mul_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(u2_add1_s_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(26),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i0"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  u2_add2 (
    .clr(1'b0),
    .en(1'b1),
    .a(u2_add1_s_net),
    .b(u2_delay_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(u2_add2_s_net)
  );
  hilsim_ipcore_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(25)
  )
  u2_delay (
    .en(1'b1),
    .rst(1'b0),
    .d(u2_noise_mul_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(u2_delay_q_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i0"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  u2_noise_mul (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mult_p_net),
    .b(down_sample3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(u2_noise_mul_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/input_shutoff
module hilsim_ipcore_input_shutoff (
  input [1-1:0] enable,
  input [25-1:0] u0_in,
  input [25-1:0] u1_in,
  input [25-1:0] u2_in,
  output [25-1:0] u0_out,
  output [25-1:0] u1_out,
  output [25-1:0] u2_out
);
  wire [25-1:0] mux_u0_y_net;
  wire [25-1:0] mux_u1_y_net;
  wire [25-1:0] mux_u2_y_net;
  wire [1-1:0] clkxreg_slice1_cfg99_q_net;
  wire [25-1:0] u0_add2_s_net;
  wire [25-1:0] u1_add2_s_net;
  wire [25-1:0] u2_add2_s_net;
  wire [25-1:0] constant1_op_net;
  wire [25-1:0] constant2_op_net;
  wire [25-1:0] constant3_op_net;
  assign u0_out = mux_u0_y_net;
  assign u1_out = mux_u1_y_net;
  assign u2_out = mux_u2_y_net;
  assign clkxreg_slice1_cfg99_q_net = enable;
  assign u0_add2_s_net = u0_in;
  assign u1_add2_s_net = u1_in;
  assign u2_add2_s_net = u2_in;
  sysgen_constant_146c4fe602 constant1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant1_op_net)
  );
  sysgen_constant_146c4fe602 constant2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant2_op_net)
  );
  sysgen_constant_146c4fe602 constant3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant3_op_net)
  );
  sysgen_mux_1b926b88d6 mux_u0 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .sel(clkxreg_slice1_cfg99_q_net),
    .d0(constant1_op_net),
    .d1(u0_add2_s_net),
    .y(mux_u0_y_net)
  );
  sysgen_mux_1b926b88d6 mux_u1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .sel(clkxreg_slice1_cfg99_q_net),
    .d0(constant2_op_net),
    .d1(u1_add2_s_net),
    .y(mux_u1_y_net)
  );
  sysgen_mux_1b926b88d6 mux_u2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .sel(clkxreg_slice1_cfg99_q_net),
    .d0(constant3_op_net),
    .d1(u2_add2_s_net),
    .y(mux_u2_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/nlf_lut_configurator
module hilsim_ipcore_nlf_lut_configurator (
  input [10-1:0] procclk_lutcfg_addr,
  input [16-1:0] procclk_lutcfg_data_in,
  input [1-1:0] procclk_lutcfg_we,
  input [1-1:0] cfg_nlf_start,
  input clk_1,
  input ce_1,
  output [10-1:0] procclk_cfgbus_addr,
  output [16-1:0] procclk_cfgbus_data,
  output [1-1:0] procclk_cfgbus_we,
  output [1-1:0] cfg_nlf_done
);
  wire [1-1:0] mux1_y_net;
  wire [1-1:0] cfg_nlf_last_addr;
  wire [1-1:0] bool_zero_op_net;
  wire [1-1:0] cfg_we_and_y_net;
  wire [1-1:0] cfg_we_inv_op_net;
  wire [16-1:0] tmp_lut_douta_net;
  wire [16-1:0] zero_nlf_din_op_net;
  wire [10-1:0] delay_q_net;
  wire [16-1:0] tmp_lut_doutb_net;
  wire [1-1:0] delay1_q_net;
  wire [1-1:0] register1_q_net;
  wire [10-1:0] clkxreg_slice1_cfg97_q_net;
  wire [16-1:0] clkxreg_slice1_cfg96_q_net;
  wire [1-1:0] clkxreg_slice1_cfg95_q_net;
  wire [1-1:0] clkxreg_slice1_cfg94_q_net;
  wire clk_net;
  wire ce_net;
  wire [1-1:0] constant_op_net;
  wire [10-1:0] constant1_op_net;
  wire [10-1:0] constant2_op_net;
  wire [1-1:0] constant3_op_net;
  wire [10-1:0] addr_counter_q_net;
  wire [1-1:0] register_q_net;
  wire [1-1:0] mux_y_net;
  assign procclk_cfgbus_addr = delay_q_net;
  assign procclk_cfgbus_data = tmp_lut_doutb_net;
  assign procclk_cfgbus_we = delay1_q_net;
  assign cfg_nlf_done = register1_q_net;
  assign clkxreg_slice1_cfg97_q_net = procclk_lutcfg_addr;
  assign clkxreg_slice1_cfg96_q_net = procclk_lutcfg_data_in;
  assign clkxreg_slice1_cfg95_q_net = procclk_lutcfg_we;
  assign clkxreg_slice1_cfg94_q_net = cfg_nlf_start;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_constant_8a21de7c7f constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  sysgen_constant_7b59d789af constant1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant1_op_net)
  );
  sysgen_constant_98f5342beb constant2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant2_op_net)
  );
  sysgen_constant_8a21de7c7f constant3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant3_op_net)
  );
  hilsim_ipcore_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(10)
  )
  delay (
    .en(1'b1),
    .rst(1'b0),
    .d(addr_counter_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_q_net)
  );
  hilsim_ipcore_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay1 (
    .en(1'b1),
    .rst(1'b0),
    .d(register_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay1_q_net)
  );
  sysgen_mux_02aa8d7fdf mux (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .sel(clkxreg_slice1_cfg94_q_net),
    .d0(register_q_net),
    .d1(constant_op_net),
    .y(mux_y_net)
  );
  sysgen_mux_02aa8d7fdf mux1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .sel(cfg_nlf_last_addr),
    .d0(register1_q_net),
    .d1(constant3_op_net),
    .y(mux1_y_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register (
    .en(1'b1),
    .d(mux_y_net),
    .rst(cfg_nlf_last_addr),
    .clk(clk_net),
    .ce(ce_net),
    .q(register_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register1 (
    .en(1'b1),
    .d(mux1_y_net),
    .rst(clkxreg_slice1_cfg94_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register1_q_net)
  );
  sysgen_relational_100432aa45 relational (
    .clr(1'b0),
    .a(addr_counter_q_net),
    .b(constant2_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(cfg_nlf_last_addr)
  );
  sysgen_accum_93d003b415 addr_counter (
    .clr(1'b0),
    .b(constant1_op_net),
    .rst(cfg_nlf_last_addr),
    .en(register_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(addr_counter_q_net)
  );
  sysgen_constant_caba551e44 bool_zero (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(bool_zero_op_net)
  );
  sysgen_logical_8c5407099f cfg_we_and (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(cfg_we_inv_op_net),
    .d1(clkxreg_slice1_cfg95_q_net),
    .y(cfg_we_and_y_net)
  );
  sysgen_inverter_113e94e780 cfg_we_inv (
    .clr(1'b0),
    .ip(clkxreg_slice1_cfg95_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(cfg_we_inv_op_net)
  );
  hilsim_ipcore_xltdpram #(
    .addr_width_a(10),
    .addr_width_b(10),
    .clocking_mode("common_clock"),
    .data_width_a(16),
    .data_width_b(16),
    .latency(1),
    .mem_init_file("xpm_2a499f_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_a("0"),
    .read_reset_b("0"),
    .write_mode_a("write_first"),
    .write_mode_b("write_first")
  )
  tmp_lut (
    .ena(1'b1),
    .enb(1'b1),
    .rsta(1'b0),
    .rstb(1'b0),
    .addra(clkxreg_slice1_cfg97_q_net),
    .dina(clkxreg_slice1_cfg96_q_net),
    .wea(cfg_we_and_y_net),
    .addrb(addr_counter_q_net),
    .dinb(zero_nlf_din_op_net),
    .web(bool_zero_op_net),
    .a_clk(clk_net),
    .a_ce(ce_net),
    .b_clk(clk_net),
    .b_ce(ce_net),
    .douta(tmp_lut_douta_net),
    .doutb(tmp_lut_doutb_net)
  );
  sysgen_constant_f3b3f76499 zero_nlf_din (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(zero_nlf_din_op_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/output_matrix/nlf_dac0_xx0
module hilsim_ipcore_nlf_dac0_xx0 (
  input [25-1:0] x,
  input [18-1:0] presc,
  input [18-1:0] gain,
  input [1-1:0] cfg_select,
  input [10-1:0] cfg_addr,
  input [16-1:0] cfg_data,
  input [1-1:0] cfg_we,
  input clk_1,
  input ce_1,
  output [25-1:0] f_x
);
  wire [25-1:0] mult_out_scale_p_net;
  wire [25-1:0] dac0_xx0_sel_mux_y_net;
  wire [18-1:0] register16_q_net;
  wire [18-1:0] register15_q_net;
  wire [1-1:0] register17_q_net;
  wire [10-1:0] register_q_net;
  wire [16-1:0] register13_q_net;
  wire [1-1:0] register14_q_net;
  wire clk_net;
  wire ce_net;
  wire [10-1:0] addsub_s_net;
  wire [10-1:0] reinterpret_output_port_net;
  wire [10-1:0] const_1_op_net;
  wire [25-1:0] addsub1_s_net;
  wire [25-1:0] const_1_interp_op_net;
  wire [25-1:0] slice_dout_net;
  wire [16-1:0] lut_douta_net;
  wire [16-1:0] lut_doutb_net;
  wire [10-1:0] addra_mux_y_net;
  wire [16-1:0] dina_mux_y_net;
  wire [1-1:0] wea_mux_y_net;
  wire [16-1:0] zero_nlf_datatype_op_net;
  wire [1-1:0] bool_zero_we_op_net;
  wire [10-1:0] cast_cutoff_lsbits_dout_net;
  wire [25-1:0] add_interpolate_s_net;
  wire [25-1:0] mult_a_p_net;
  wire [25-1:0] mult_b_p_net;
  wire [1-1:0] bool_zero_wea_op_net;
  wire [25-1:0] mult_inp_scale_p_net;
  wire [14-1:0] reint_sliced_output_port_net;
  wire [14-1:0] cutoff_msbits_y_net;
  wire [25-1:0] delay_sync_interpolate_q_net;
  wire [16-1:0] zero_nlf_dina_op_net;
  assign f_x = mult_out_scale_p_net;
  assign dac0_xx0_sel_mux_y_net = x;
  assign register16_q_net = presc;
  assign register15_q_net = gain;
  assign register17_q_net = cfg_select;
  assign register_q_net = cfg_addr;
  assign register13_q_net = cfg_data;
  assign register14_q_net = cfg_we;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlUnsigned),
    .a_bin_pt(0),
    .a_width(10),
    .b_arith(`xlUnsigned),
    .b_bin_pt(0),
    .b_width(10),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(11),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i1"),
    .extra_registers(0),
    .full_s_arith(1),
    .full_s_width(11),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlUnsigned),
    .s_bin_pt(0),
    .s_width(10)
  )
  addsub (
    .clr(1'b0),
    .en(1'b1),
    .a(reinterpret_output_port_net),
    .b(const_1_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub_s_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(26),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i2"),
    .extra_registers(1),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(2),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  addsub1 (
    .clr(1'b0),
    .en(1'b1),
    .a(const_1_interp_op_net),
    .b(slice_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub1_s_net)
  );
  hilsim_ipcore_xltdpram #(
    .addr_width_a(10),
    .addr_width_b(10),
    .clocking_mode("common_clock"),
    .data_width_a(16),
    .data_width_b(16),
    .latency(1),
    .mem_init_file("xpm_f5fed5_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_a("0"),
    .read_reset_b("0"),
    .write_mode_a("write_first"),
    .write_mode_b("write_first")
  )
  lut (
    .ena(1'b1),
    .enb(1'b1),
    .rsta(1'b0),
    .rstb(1'b0),
    .addra(addra_mux_y_net),
    .dina(dina_mux_y_net),
    .wea(wea_mux_y_net),
    .addrb(addsub_s_net),
    .dinb(zero_nlf_datatype_op_net),
    .web(bool_zero_we_op_net),
    .a_clk(clk_net),
    .a_ce(ce_net),
    .b_clk(clk_net),
    .b_ce(ce_net),
    .douta(lut_douta_net),
    .doutb(lut_doutb_net)
  );
  sysgen_reinterpret_f4605e0022 reinterpret (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(cast_cutoff_lsbits_dout_net),
    .output_port(reinterpret_output_port_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(26),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i0"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  add_interpolate (
    .clr(1'b0),
    .en(1'b1),
    .a(mult_a_p_net),
    .b(mult_b_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(add_interpolate_s_net)
  );
  sysgen_mux_c832ae0d6a addra_mux (
    .clr(1'b0),
    .sel(register17_q_net),
    .d0(reinterpret_output_port_net),
    .d1(register_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(addra_mux_y_net)
  );
  sysgen_constant_caba551e44 bool_zero_we (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(bool_zero_we_op_net)
  );
  sysgen_constant_caba551e44 bool_zero_wea (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(bool_zero_wea_op_net)
  );
  hilsim_ipcore_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(23),
    .din_width(25),
    .dout_arith(2),
    .dout_bin_pt(9),
    .dout_width(10),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  cast_cutoff_lsbits (
    .clr(1'b0),
    .en(1'b1),
    .din(mult_inp_scale_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(cast_cutoff_lsbits_dout_net)
  );
  hilsim_ipcore_xlconvert #(
    .bool_conversion(0),
    .din_arith(1),
    .din_bin_pt(14),
    .din_width(14),
    .dout_arith(2),
    .dout_bin_pt(17),
    .dout_width(25),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  slice (
    .clr(1'b0),
    .en(1'b1),
    .din(reint_sliced_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(slice_dout_net)
  );
  sysgen_constant_7b59d789af const_1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(const_1_op_net)
  );
  sysgen_constant_ab97251e3b const_1_interp (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(const_1_interp_op_net)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(0),
    .new_msb(13),
    .x_width(25),
    .y_width(14)
  )
  cutoff_msbits (
    .x(mult_inp_scale_p_net),
    .y(cutoff_msbits_y_net)
  );
  hilsim_ipcore_xldelay #(
    .latency(2),
    .reg_retiming(0),
    .reset(0),
    .width(25)
  )
  delay_sync_interpolate (
    .en(1'b1),
    .rst(1'b0),
    .d(slice_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_sync_interpolate_q_net)
  );
  sysgen_mux_ba276f04f0 dina_mux (
    .clr(1'b0),
    .sel(register17_q_net),
    .d0(zero_nlf_dina_op_net),
    .d1(register13_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(dina_mux_y_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(14),
    .a_width(16),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_a_type(0),
    .c_a_width(16),
    .c_b_type(0),
    .c_b_width(25),
    .c_baat(16),
    .c_output_width(41),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i1"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_a (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(lut_douta_net),
    .b(addsub1_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_a_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(14),
    .a_width(16),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_a_type(0),
    .c_a_width(16),
    .c_b_type(0),
    .c_b_width(25),
    .c_baat(16),
    .c_output_width(41),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i1"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_b (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(lut_doutb_net),
    .b(delay_sync_interpolate_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_b_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i0"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(23),
    .p_width(25),
    .quantization(1)
  )
  mult_inp_scale (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(dac0_xx0_sel_mux_y_net),
    .b(register16_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_inp_scale_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i0"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_out_scale (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(add_interpolate_s_net),
    .b(register15_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_out_scale_p_net)
  );
  sysgen_reinterpret_67d055efc4 reint_sliced (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(cutoff_msbits_y_net),
    .output_port(reint_sliced_output_port_net)
  );
  sysgen_mux_18d2538cb2 wea_mux (
    .clr(1'b0),
    .sel(register17_q_net),
    .d0(bool_zero_wea_op_net),
    .d1(register14_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(wea_mux_y_net)
  );
  sysgen_constant_f3b3f76499 zero_nlf_datatype (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(zero_nlf_datatype_op_net)
  );
  sysgen_constant_f3b3f76499 zero_nlf_dina (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(zero_nlf_dina_op_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/output_matrix/nlf_dac0_xx1
module hilsim_ipcore_nlf_dac0_xx1 (
  input [25-1:0] x,
  input [18-1:0] presc,
  input [18-1:0] gain,
  input [1-1:0] cfg_select,
  input [10-1:0] cfg_addr,
  input [16-1:0] cfg_data,
  input [1-1:0] cfg_we,
  input clk_1,
  input ce_1,
  output [25-1:0] f_x
);
  wire [25-1:0] mult_out_scale_p_net;
  wire [25-1:0] dac0_xx1_sel_mux_y_net;
  wire [18-1:0] register27_q_net;
  wire [18-1:0] register22_q_net;
  wire [1-1:0] register23_q_net;
  wire [10-1:0] register18_q_net;
  wire [16-1:0] register19_q_net;
  wire [1-1:0] register20_q_net;
  wire clk_net;
  wire ce_net;
  wire [10-1:0] addsub_s_net;
  wire [10-1:0] reinterpret_output_port_net;
  wire [10-1:0] const_1_op_net;
  wire [25-1:0] addsub1_s_net;
  wire [25-1:0] const_1_interp_op_net;
  wire [25-1:0] slice_dout_net;
  wire [16-1:0] lut_douta_net;
  wire [16-1:0] lut_doutb_net;
  wire [10-1:0] addra_mux_y_net;
  wire [16-1:0] dina_mux_y_net;
  wire [1-1:0] wea_mux_y_net;
  wire [16-1:0] zero_nlf_datatype_op_net;
  wire [1-1:0] bool_zero_we_op_net;
  wire [10-1:0] cast_cutoff_lsbits_dout_net;
  wire [25-1:0] add_interpolate_s_net;
  wire [25-1:0] mult_a_p_net;
  wire [25-1:0] mult_b_p_net;
  wire [1-1:0] bool_zero_wea_op_net;
  wire [25-1:0] mult_inp_scale_p_net;
  wire [14-1:0] reint_sliced_output_port_net;
  wire [14-1:0] cutoff_msbits_y_net;
  wire [25-1:0] delay_sync_interpolate_q_net;
  wire [16-1:0] zero_nlf_dina_op_net;
  assign f_x = mult_out_scale_p_net;
  assign dac0_xx1_sel_mux_y_net = x;
  assign register27_q_net = presc;
  assign register22_q_net = gain;
  assign register23_q_net = cfg_select;
  assign register18_q_net = cfg_addr;
  assign register19_q_net = cfg_data;
  assign register20_q_net = cfg_we;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlUnsigned),
    .a_bin_pt(0),
    .a_width(10),
    .b_arith(`xlUnsigned),
    .b_bin_pt(0),
    .b_width(10),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(11),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i1"),
    .extra_registers(0),
    .full_s_arith(1),
    .full_s_width(11),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlUnsigned),
    .s_bin_pt(0),
    .s_width(10)
  )
  addsub (
    .clr(1'b0),
    .en(1'b1),
    .a(reinterpret_output_port_net),
    .b(const_1_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub_s_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(26),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i2"),
    .extra_registers(1),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(2),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  addsub1 (
    .clr(1'b0),
    .en(1'b1),
    .a(const_1_interp_op_net),
    .b(slice_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub1_s_net)
  );
  hilsim_ipcore_xltdpram #(
    .addr_width_a(10),
    .addr_width_b(10),
    .clocking_mode("common_clock"),
    .data_width_a(16),
    .data_width_b(16),
    .latency(1),
    .mem_init_file("xpm_f5fed5_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_a("0"),
    .read_reset_b("0"),
    .write_mode_a("write_first"),
    .write_mode_b("write_first")
  )
  lut (
    .ena(1'b1),
    .enb(1'b1),
    .rsta(1'b0),
    .rstb(1'b0),
    .addra(addra_mux_y_net),
    .dina(dina_mux_y_net),
    .wea(wea_mux_y_net),
    .addrb(addsub_s_net),
    .dinb(zero_nlf_datatype_op_net),
    .web(bool_zero_we_op_net),
    .a_clk(clk_net),
    .a_ce(ce_net),
    .b_clk(clk_net),
    .b_ce(ce_net),
    .douta(lut_douta_net),
    .doutb(lut_doutb_net)
  );
  sysgen_reinterpret_f4605e0022 reinterpret (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(cast_cutoff_lsbits_dout_net),
    .output_port(reinterpret_output_port_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(26),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i0"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  add_interpolate (
    .clr(1'b0),
    .en(1'b1),
    .a(mult_a_p_net),
    .b(mult_b_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(add_interpolate_s_net)
  );
  sysgen_mux_c832ae0d6a addra_mux (
    .clr(1'b0),
    .sel(register23_q_net),
    .d0(reinterpret_output_port_net),
    .d1(register18_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(addra_mux_y_net)
  );
  sysgen_constant_caba551e44 bool_zero_we (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(bool_zero_we_op_net)
  );
  sysgen_constant_caba551e44 bool_zero_wea (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(bool_zero_wea_op_net)
  );
  hilsim_ipcore_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(23),
    .din_width(25),
    .dout_arith(2),
    .dout_bin_pt(9),
    .dout_width(10),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  cast_cutoff_lsbits (
    .clr(1'b0),
    .en(1'b1),
    .din(mult_inp_scale_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(cast_cutoff_lsbits_dout_net)
  );
  hilsim_ipcore_xlconvert #(
    .bool_conversion(0),
    .din_arith(1),
    .din_bin_pt(14),
    .din_width(14),
    .dout_arith(2),
    .dout_bin_pt(17),
    .dout_width(25),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  slice (
    .clr(1'b0),
    .en(1'b1),
    .din(reint_sliced_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(slice_dout_net)
  );
  sysgen_constant_7b59d789af const_1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(const_1_op_net)
  );
  sysgen_constant_ab97251e3b const_1_interp (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(const_1_interp_op_net)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(0),
    .new_msb(13),
    .x_width(25),
    .y_width(14)
  )
  cutoff_msbits (
    .x(mult_inp_scale_p_net),
    .y(cutoff_msbits_y_net)
  );
  hilsim_ipcore_xldelay #(
    .latency(2),
    .reg_retiming(0),
    .reset(0),
    .width(25)
  )
  delay_sync_interpolate (
    .en(1'b1),
    .rst(1'b0),
    .d(slice_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_sync_interpolate_q_net)
  );
  sysgen_mux_ba276f04f0 dina_mux (
    .clr(1'b0),
    .sel(register23_q_net),
    .d0(zero_nlf_dina_op_net),
    .d1(register19_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(dina_mux_y_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(14),
    .a_width(16),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_a_type(0),
    .c_a_width(16),
    .c_b_type(0),
    .c_b_width(25),
    .c_baat(16),
    .c_output_width(41),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i1"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_a (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(lut_douta_net),
    .b(addsub1_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_a_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(14),
    .a_width(16),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_a_type(0),
    .c_a_width(16),
    .c_b_type(0),
    .c_b_width(25),
    .c_baat(16),
    .c_output_width(41),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i1"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_b (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(lut_doutb_net),
    .b(delay_sync_interpolate_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_b_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i0"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(23),
    .p_width(25),
    .quantization(1)
  )
  mult_inp_scale (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(dac0_xx1_sel_mux_y_net),
    .b(register27_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_inp_scale_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i0"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_out_scale (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(add_interpolate_s_net),
    .b(register22_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_out_scale_p_net)
  );
  sysgen_reinterpret_67d055efc4 reint_sliced (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(cutoff_msbits_y_net),
    .output_port(reint_sliced_output_port_net)
  );
  sysgen_mux_18d2538cb2 wea_mux (
    .clr(1'b0),
    .sel(register23_q_net),
    .d0(bool_zero_wea_op_net),
    .d1(register20_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(wea_mux_y_net)
  );
  sysgen_constant_f3b3f76499 zero_nlf_datatype (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(zero_nlf_datatype_op_net)
  );
  sysgen_constant_f3b3f76499 zero_nlf_dina (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(zero_nlf_dina_op_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/output_matrix/nlf_dac0_xx2
module hilsim_ipcore_nlf_dac0_xx2 (
  input [25-1:0] x,
  input [18-1:0] presc,
  input [18-1:0] gain,
  input [1-1:0] cfg_select,
  input [10-1:0] cfg_addr,
  input [16-1:0] cfg_data,
  input [1-1:0] cfg_we,
  input clk_1,
  input ce_1,
  output [25-1:0] f_x
);
  wire [25-1:0] mult_out_scale_p_net;
  wire [25-1:0] dac0_xx2_sel_mux_y_net;
  wire [18-1:0] register34_q_net;
  wire [18-1:0] register33_q_net;
  wire [1-1:0] register29_q_net;
  wire [10-1:0] register24_q_net;
  wire [16-1:0] register25_q_net;
  wire [1-1:0] register26_q_net;
  wire clk_net;
  wire ce_net;
  wire [10-1:0] addsub_s_net;
  wire [10-1:0] reinterpret_output_port_net;
  wire [10-1:0] const_1_op_net;
  wire [25-1:0] addsub1_s_net;
  wire [25-1:0] const_1_interp_op_net;
  wire [25-1:0] slice_dout_net;
  wire [16-1:0] lut_douta_net;
  wire [16-1:0] lut_doutb_net;
  wire [10-1:0] addra_mux_y_net;
  wire [16-1:0] dina_mux_y_net;
  wire [1-1:0] wea_mux_y_net;
  wire [16-1:0] zero_nlf_datatype_op_net;
  wire [1-1:0] bool_zero_we_op_net;
  wire [10-1:0] cast_cutoff_lsbits_dout_net;
  wire [25-1:0] add_interpolate_s_net;
  wire [25-1:0] mult_a_p_net;
  wire [25-1:0] mult_b_p_net;
  wire [1-1:0] bool_zero_wea_op_net;
  wire [25-1:0] mult_inp_scale_p_net;
  wire [14-1:0] reint_sliced_output_port_net;
  wire [14-1:0] cutoff_msbits_y_net;
  wire [25-1:0] delay_sync_interpolate_q_net;
  wire [16-1:0] zero_nlf_dina_op_net;
  assign f_x = mult_out_scale_p_net;
  assign dac0_xx2_sel_mux_y_net = x;
  assign register34_q_net = presc;
  assign register33_q_net = gain;
  assign register29_q_net = cfg_select;
  assign register24_q_net = cfg_addr;
  assign register25_q_net = cfg_data;
  assign register26_q_net = cfg_we;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlUnsigned),
    .a_bin_pt(0),
    .a_width(10),
    .b_arith(`xlUnsigned),
    .b_bin_pt(0),
    .b_width(10),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(11),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i1"),
    .extra_registers(0),
    .full_s_arith(1),
    .full_s_width(11),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlUnsigned),
    .s_bin_pt(0),
    .s_width(10)
  )
  addsub (
    .clr(1'b0),
    .en(1'b1),
    .a(reinterpret_output_port_net),
    .b(const_1_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub_s_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(26),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i2"),
    .extra_registers(1),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(2),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  addsub1 (
    .clr(1'b0),
    .en(1'b1),
    .a(const_1_interp_op_net),
    .b(slice_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub1_s_net)
  );
  hilsim_ipcore_xltdpram #(
    .addr_width_a(10),
    .addr_width_b(10),
    .clocking_mode("common_clock"),
    .data_width_a(16),
    .data_width_b(16),
    .latency(1),
    .mem_init_file("xpm_f5fed5_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_a("0"),
    .read_reset_b("0"),
    .write_mode_a("write_first"),
    .write_mode_b("write_first")
  )
  lut (
    .ena(1'b1),
    .enb(1'b1),
    .rsta(1'b0),
    .rstb(1'b0),
    .addra(addra_mux_y_net),
    .dina(dina_mux_y_net),
    .wea(wea_mux_y_net),
    .addrb(addsub_s_net),
    .dinb(zero_nlf_datatype_op_net),
    .web(bool_zero_we_op_net),
    .a_clk(clk_net),
    .a_ce(ce_net),
    .b_clk(clk_net),
    .b_ce(ce_net),
    .douta(lut_douta_net),
    .doutb(lut_doutb_net)
  );
  sysgen_reinterpret_f4605e0022 reinterpret (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(cast_cutoff_lsbits_dout_net),
    .output_port(reinterpret_output_port_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(26),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i0"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  add_interpolate (
    .clr(1'b0),
    .en(1'b1),
    .a(mult_a_p_net),
    .b(mult_b_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(add_interpolate_s_net)
  );
  sysgen_mux_c832ae0d6a addra_mux (
    .clr(1'b0),
    .sel(register29_q_net),
    .d0(reinterpret_output_port_net),
    .d1(register24_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(addra_mux_y_net)
  );
  sysgen_constant_caba551e44 bool_zero_we (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(bool_zero_we_op_net)
  );
  sysgen_constant_caba551e44 bool_zero_wea (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(bool_zero_wea_op_net)
  );
  hilsim_ipcore_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(23),
    .din_width(25),
    .dout_arith(2),
    .dout_bin_pt(9),
    .dout_width(10),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  cast_cutoff_lsbits (
    .clr(1'b0),
    .en(1'b1),
    .din(mult_inp_scale_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(cast_cutoff_lsbits_dout_net)
  );
  hilsim_ipcore_xlconvert #(
    .bool_conversion(0),
    .din_arith(1),
    .din_bin_pt(14),
    .din_width(14),
    .dout_arith(2),
    .dout_bin_pt(17),
    .dout_width(25),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  slice (
    .clr(1'b0),
    .en(1'b1),
    .din(reint_sliced_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(slice_dout_net)
  );
  sysgen_constant_7b59d789af const_1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(const_1_op_net)
  );
  sysgen_constant_ab97251e3b const_1_interp (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(const_1_interp_op_net)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(0),
    .new_msb(13),
    .x_width(25),
    .y_width(14)
  )
  cutoff_msbits (
    .x(mult_inp_scale_p_net),
    .y(cutoff_msbits_y_net)
  );
  hilsim_ipcore_xldelay #(
    .latency(2),
    .reg_retiming(0),
    .reset(0),
    .width(25)
  )
  delay_sync_interpolate (
    .en(1'b1),
    .rst(1'b0),
    .d(slice_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_sync_interpolate_q_net)
  );
  sysgen_mux_ba276f04f0 dina_mux (
    .clr(1'b0),
    .sel(register29_q_net),
    .d0(zero_nlf_dina_op_net),
    .d1(register25_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(dina_mux_y_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(14),
    .a_width(16),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_a_type(0),
    .c_a_width(16),
    .c_b_type(0),
    .c_b_width(25),
    .c_baat(16),
    .c_output_width(41),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i1"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_a (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(lut_douta_net),
    .b(addsub1_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_a_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(14),
    .a_width(16),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_a_type(0),
    .c_a_width(16),
    .c_b_type(0),
    .c_b_width(25),
    .c_baat(16),
    .c_output_width(41),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i1"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_b (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(lut_doutb_net),
    .b(delay_sync_interpolate_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_b_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i0"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(23),
    .p_width(25),
    .quantization(1)
  )
  mult_inp_scale (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(dac0_xx2_sel_mux_y_net),
    .b(register34_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_inp_scale_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i0"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_out_scale (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(add_interpolate_s_net),
    .b(register33_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_out_scale_p_net)
  );
  sysgen_reinterpret_67d055efc4 reint_sliced (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(cutoff_msbits_y_net),
    .output_port(reint_sliced_output_port_net)
  );
  sysgen_mux_18d2538cb2 wea_mux (
    .clr(1'b0),
    .sel(register29_q_net),
    .d0(bool_zero_wea_op_net),
    .d1(register26_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(wea_mux_y_net)
  );
  sysgen_constant_f3b3f76499 zero_nlf_datatype (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(zero_nlf_datatype_op_net)
  );
  sysgen_constant_f3b3f76499 zero_nlf_dina (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(zero_nlf_dina_op_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/output_matrix/nlf_dac1_xx0
module hilsim_ipcore_nlf_dac1_xx0 (
  input [25-1:0] x,
  input [18-1:0] presc,
  input [18-1:0] gain,
  input [1-1:0] cfg_select,
  input [10-1:0] cfg_addr,
  input [16-1:0] cfg_data,
  input [1-1:0] cfg_we,
  input clk_1,
  input ce_1,
  output [25-1:0] f_x
);
  wire [14-1:0] cutoff_msbits_y_net;
  wire [25-1:0] delay_sync_interpolate_q_net;
  wire [16-1:0] zero_nlf_dina_op_net;
  wire [25-1:0] mult_out_scale_p_net;
  wire [25-1:0] dac1_xx0_sel_mux_y_net;
  wire [18-1:0] register45_q_net;
  wire [18-1:0] register40_q_net;
  wire [1-1:0] register35_q_net;
  wire [10-1:0] register30_q_net;
  wire [16-1:0] register31_q_net;
  wire [1-1:0] register32_q_net;
  wire clk_net;
  wire ce_net;
  wire [10-1:0] addsub_s_net;
  wire [10-1:0] reinterpret_output_port_net;
  wire [10-1:0] const_1_op_net;
  wire [25-1:0] addsub1_s_net;
  wire [25-1:0] const_1_interp_op_net;
  wire [25-1:0] slice_dout_net;
  wire [16-1:0] lut_douta_net;
  wire [16-1:0] lut_doutb_net;
  wire [10-1:0] addra_mux_y_net;
  wire [16-1:0] dina_mux_y_net;
  wire [1-1:0] wea_mux_y_net;
  wire [16-1:0] zero_nlf_datatype_op_net;
  wire [1-1:0] bool_zero_we_op_net;
  wire [10-1:0] cast_cutoff_lsbits_dout_net;
  wire [25-1:0] add_interpolate_s_net;
  wire [25-1:0] mult_a_p_net;
  wire [25-1:0] mult_b_p_net;
  wire [1-1:0] bool_zero_wea_op_net;
  wire [25-1:0] mult_inp_scale_p_net;
  wire [14-1:0] reint_sliced_output_port_net;
  assign f_x = mult_out_scale_p_net;
  assign dac1_xx0_sel_mux_y_net = x;
  assign register45_q_net = presc;
  assign register40_q_net = gain;
  assign register35_q_net = cfg_select;
  assign register30_q_net = cfg_addr;
  assign register31_q_net = cfg_data;
  assign register32_q_net = cfg_we;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlUnsigned),
    .a_bin_pt(0),
    .a_width(10),
    .b_arith(`xlUnsigned),
    .b_bin_pt(0),
    .b_width(10),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(11),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i1"),
    .extra_registers(0),
    .full_s_arith(1),
    .full_s_width(11),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlUnsigned),
    .s_bin_pt(0),
    .s_width(10)
  )
  addsub (
    .clr(1'b0),
    .en(1'b1),
    .a(reinterpret_output_port_net),
    .b(const_1_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub_s_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(26),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i2"),
    .extra_registers(1),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(2),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  addsub1 (
    .clr(1'b0),
    .en(1'b1),
    .a(const_1_interp_op_net),
    .b(slice_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub1_s_net)
  );
  hilsim_ipcore_xltdpram #(
    .addr_width_a(10),
    .addr_width_b(10),
    .clocking_mode("common_clock"),
    .data_width_a(16),
    .data_width_b(16),
    .latency(1),
    .mem_init_file("xpm_f5fed5_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_a("0"),
    .read_reset_b("0"),
    .write_mode_a("write_first"),
    .write_mode_b("write_first")
  )
  lut (
    .ena(1'b1),
    .enb(1'b1),
    .rsta(1'b0),
    .rstb(1'b0),
    .addra(addra_mux_y_net),
    .dina(dina_mux_y_net),
    .wea(wea_mux_y_net),
    .addrb(addsub_s_net),
    .dinb(zero_nlf_datatype_op_net),
    .web(bool_zero_we_op_net),
    .a_clk(clk_net),
    .a_ce(ce_net),
    .b_clk(clk_net),
    .b_ce(ce_net),
    .douta(lut_douta_net),
    .doutb(lut_doutb_net)
  );
  sysgen_reinterpret_f4605e0022 reinterpret (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(cast_cutoff_lsbits_dout_net),
    .output_port(reinterpret_output_port_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(26),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i0"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  add_interpolate (
    .clr(1'b0),
    .en(1'b1),
    .a(mult_a_p_net),
    .b(mult_b_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(add_interpolate_s_net)
  );
  sysgen_mux_c832ae0d6a addra_mux (
    .clr(1'b0),
    .sel(register35_q_net),
    .d0(reinterpret_output_port_net),
    .d1(register30_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(addra_mux_y_net)
  );
  sysgen_constant_caba551e44 bool_zero_we (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(bool_zero_we_op_net)
  );
  sysgen_constant_caba551e44 bool_zero_wea (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(bool_zero_wea_op_net)
  );
  hilsim_ipcore_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(23),
    .din_width(25),
    .dout_arith(2),
    .dout_bin_pt(9),
    .dout_width(10),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  cast_cutoff_lsbits (
    .clr(1'b0),
    .en(1'b1),
    .din(mult_inp_scale_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(cast_cutoff_lsbits_dout_net)
  );
  hilsim_ipcore_xlconvert #(
    .bool_conversion(0),
    .din_arith(1),
    .din_bin_pt(14),
    .din_width(14),
    .dout_arith(2),
    .dout_bin_pt(17),
    .dout_width(25),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  slice (
    .clr(1'b0),
    .en(1'b1),
    .din(reint_sliced_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(slice_dout_net)
  );
  sysgen_constant_7b59d789af const_1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(const_1_op_net)
  );
  sysgen_constant_ab97251e3b const_1_interp (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(const_1_interp_op_net)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(0),
    .new_msb(13),
    .x_width(25),
    .y_width(14)
  )
  cutoff_msbits (
    .x(mult_inp_scale_p_net),
    .y(cutoff_msbits_y_net)
  );
  hilsim_ipcore_xldelay #(
    .latency(2),
    .reg_retiming(0),
    .reset(0),
    .width(25)
  )
  delay_sync_interpolate (
    .en(1'b1),
    .rst(1'b0),
    .d(slice_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_sync_interpolate_q_net)
  );
  sysgen_mux_ba276f04f0 dina_mux (
    .clr(1'b0),
    .sel(register35_q_net),
    .d0(zero_nlf_dina_op_net),
    .d1(register31_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(dina_mux_y_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(14),
    .a_width(16),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_a_type(0),
    .c_a_width(16),
    .c_b_type(0),
    .c_b_width(25),
    .c_baat(16),
    .c_output_width(41),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i1"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_a (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(lut_douta_net),
    .b(addsub1_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_a_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(14),
    .a_width(16),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_a_type(0),
    .c_a_width(16),
    .c_b_type(0),
    .c_b_width(25),
    .c_baat(16),
    .c_output_width(41),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i1"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_b (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(lut_doutb_net),
    .b(delay_sync_interpolate_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_b_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i0"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(23),
    .p_width(25),
    .quantization(1)
  )
  mult_inp_scale (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(dac1_xx0_sel_mux_y_net),
    .b(register45_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_inp_scale_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i0"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_out_scale (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(add_interpolate_s_net),
    .b(register40_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_out_scale_p_net)
  );
  sysgen_reinterpret_67d055efc4 reint_sliced (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(cutoff_msbits_y_net),
    .output_port(reint_sliced_output_port_net)
  );
  sysgen_mux_18d2538cb2 wea_mux (
    .clr(1'b0),
    .sel(register35_q_net),
    .d0(bool_zero_wea_op_net),
    .d1(register32_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(wea_mux_y_net)
  );
  sysgen_constant_f3b3f76499 zero_nlf_datatype (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(zero_nlf_datatype_op_net)
  );
  sysgen_constant_f3b3f76499 zero_nlf_dina (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(zero_nlf_dina_op_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/output_matrix/nlf_dac1_xx1
module hilsim_ipcore_nlf_dac1_xx1 (
  input [25-1:0] x,
  input [18-1:0] presc,
  input [18-1:0] gain,
  input [1-1:0] cfg_select,
  input [10-1:0] cfg_addr,
  input [16-1:0] cfg_data,
  input [1-1:0] cfg_we,
  input clk_1,
  input ce_1,
  output [25-1:0] f_x
);
  wire [25-1:0] mult_out_scale_p_net;
  wire [25-1:0] dac1_xx1_sel_mux_y_net;
  wire [18-1:0] register49_q_net;
  wire [18-1:0] register48_q_net;
  wire [1-1:0] register41_q_net;
  wire [10-1:0] register36_q_net;
  wire [16-1:0] register37_q_net;
  wire [1-1:0] register38_q_net;
  wire clk_net;
  wire ce_net;
  wire [10-1:0] addsub_s_net;
  wire [10-1:0] reinterpret_output_port_net;
  wire [10-1:0] const_1_op_net;
  wire [25-1:0] addsub1_s_net;
  wire [25-1:0] const_1_interp_op_net;
  wire [25-1:0] slice_dout_net;
  wire [16-1:0] lut_douta_net;
  wire [16-1:0] lut_doutb_net;
  wire [10-1:0] addra_mux_y_net;
  wire [16-1:0] dina_mux_y_net;
  wire [1-1:0] wea_mux_y_net;
  wire [16-1:0] zero_nlf_datatype_op_net;
  wire [1-1:0] bool_zero_we_op_net;
  wire [10-1:0] cast_cutoff_lsbits_dout_net;
  wire [25-1:0] add_interpolate_s_net;
  wire [25-1:0] mult_a_p_net;
  wire [25-1:0] mult_b_p_net;
  wire [1-1:0] bool_zero_wea_op_net;
  wire [25-1:0] mult_inp_scale_p_net;
  wire [14-1:0] reint_sliced_output_port_net;
  wire [14-1:0] cutoff_msbits_y_net;
  wire [25-1:0] delay_sync_interpolate_q_net;
  wire [16-1:0] zero_nlf_dina_op_net;
  assign f_x = mult_out_scale_p_net;
  assign dac1_xx1_sel_mux_y_net = x;
  assign register49_q_net = presc;
  assign register48_q_net = gain;
  assign register41_q_net = cfg_select;
  assign register36_q_net = cfg_addr;
  assign register37_q_net = cfg_data;
  assign register38_q_net = cfg_we;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlUnsigned),
    .a_bin_pt(0),
    .a_width(10),
    .b_arith(`xlUnsigned),
    .b_bin_pt(0),
    .b_width(10),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(11),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i1"),
    .extra_registers(0),
    .full_s_arith(1),
    .full_s_width(11),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlUnsigned),
    .s_bin_pt(0),
    .s_width(10)
  )
  addsub (
    .clr(1'b0),
    .en(1'b1),
    .a(reinterpret_output_port_net),
    .b(const_1_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub_s_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(26),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i2"),
    .extra_registers(1),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(2),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  addsub1 (
    .clr(1'b0),
    .en(1'b1),
    .a(const_1_interp_op_net),
    .b(slice_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub1_s_net)
  );
  hilsim_ipcore_xltdpram #(
    .addr_width_a(10),
    .addr_width_b(10),
    .clocking_mode("common_clock"),
    .data_width_a(16),
    .data_width_b(16),
    .latency(1),
    .mem_init_file("xpm_f5fed5_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_a("0"),
    .read_reset_b("0"),
    .write_mode_a("write_first"),
    .write_mode_b("write_first")
  )
  lut (
    .ena(1'b1),
    .enb(1'b1),
    .rsta(1'b0),
    .rstb(1'b0),
    .addra(addra_mux_y_net),
    .dina(dina_mux_y_net),
    .wea(wea_mux_y_net),
    .addrb(addsub_s_net),
    .dinb(zero_nlf_datatype_op_net),
    .web(bool_zero_we_op_net),
    .a_clk(clk_net),
    .a_ce(ce_net),
    .b_clk(clk_net),
    .b_ce(ce_net),
    .douta(lut_douta_net),
    .doutb(lut_doutb_net)
  );
  sysgen_reinterpret_f4605e0022 reinterpret (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(cast_cutoff_lsbits_dout_net),
    .output_port(reinterpret_output_port_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(26),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i0"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  add_interpolate (
    .clr(1'b0),
    .en(1'b1),
    .a(mult_a_p_net),
    .b(mult_b_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(add_interpolate_s_net)
  );
  sysgen_mux_c832ae0d6a addra_mux (
    .clr(1'b0),
    .sel(register41_q_net),
    .d0(reinterpret_output_port_net),
    .d1(register36_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(addra_mux_y_net)
  );
  sysgen_constant_caba551e44 bool_zero_we (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(bool_zero_we_op_net)
  );
  sysgen_constant_caba551e44 bool_zero_wea (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(bool_zero_wea_op_net)
  );
  hilsim_ipcore_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(23),
    .din_width(25),
    .dout_arith(2),
    .dout_bin_pt(9),
    .dout_width(10),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  cast_cutoff_lsbits (
    .clr(1'b0),
    .en(1'b1),
    .din(mult_inp_scale_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(cast_cutoff_lsbits_dout_net)
  );
  hilsim_ipcore_xlconvert #(
    .bool_conversion(0),
    .din_arith(1),
    .din_bin_pt(14),
    .din_width(14),
    .dout_arith(2),
    .dout_bin_pt(17),
    .dout_width(25),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  slice (
    .clr(1'b0),
    .en(1'b1),
    .din(reint_sliced_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(slice_dout_net)
  );
  sysgen_constant_7b59d789af const_1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(const_1_op_net)
  );
  sysgen_constant_ab97251e3b const_1_interp (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(const_1_interp_op_net)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(0),
    .new_msb(13),
    .x_width(25),
    .y_width(14)
  )
  cutoff_msbits (
    .x(mult_inp_scale_p_net),
    .y(cutoff_msbits_y_net)
  );
  hilsim_ipcore_xldelay #(
    .latency(2),
    .reg_retiming(0),
    .reset(0),
    .width(25)
  )
  delay_sync_interpolate (
    .en(1'b1),
    .rst(1'b0),
    .d(slice_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_sync_interpolate_q_net)
  );
  sysgen_mux_ba276f04f0 dina_mux (
    .clr(1'b0),
    .sel(register41_q_net),
    .d0(zero_nlf_dina_op_net),
    .d1(register37_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(dina_mux_y_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(14),
    .a_width(16),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_a_type(0),
    .c_a_width(16),
    .c_b_type(0),
    .c_b_width(25),
    .c_baat(16),
    .c_output_width(41),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i1"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_a (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(lut_douta_net),
    .b(addsub1_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_a_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(14),
    .a_width(16),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_a_type(0),
    .c_a_width(16),
    .c_b_type(0),
    .c_b_width(25),
    .c_baat(16),
    .c_output_width(41),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i1"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_b (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(lut_doutb_net),
    .b(delay_sync_interpolate_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_b_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i0"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(23),
    .p_width(25),
    .quantization(1)
  )
  mult_inp_scale (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(dac1_xx1_sel_mux_y_net),
    .b(register49_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_inp_scale_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i0"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_out_scale (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(add_interpolate_s_net),
    .b(register48_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_out_scale_p_net)
  );
  sysgen_reinterpret_67d055efc4 reint_sliced (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(cutoff_msbits_y_net),
    .output_port(reint_sliced_output_port_net)
  );
  sysgen_mux_18d2538cb2 wea_mux (
    .clr(1'b0),
    .sel(register41_q_net),
    .d0(bool_zero_wea_op_net),
    .d1(register38_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(wea_mux_y_net)
  );
  sysgen_constant_f3b3f76499 zero_nlf_datatype (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(zero_nlf_datatype_op_net)
  );
  sysgen_constant_f3b3f76499 zero_nlf_dina (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(zero_nlf_dina_op_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/output_matrix/nlf_dac1_xx2
module hilsim_ipcore_nlf_dac1_xx2 (
  input [25-1:0] x,
  input [18-1:0] presc,
  input [18-1:0] gain,
  input [1-1:0] cfg_select,
  input [10-1:0] cfg_addr,
  input [16-1:0] cfg_data,
  input [1-1:0] cfg_we,
  input clk_1,
  input ce_1,
  output [25-1:0] f_x
);
  wire [25-1:0] mult_out_scale_p_net;
  wire [25-1:0] dac1_xx2_sel_mux_y_net;
  wire [18-1:0] register52_q_net;
  wire [18-1:0] register51_q_net;
  wire [1-1:0] register47_q_net;
  wire [10-1:0] register42_q_net;
  wire [16-1:0] register43_q_net;
  wire [1-1:0] register44_q_net;
  wire clk_net;
  wire ce_net;
  wire [10-1:0] addsub_s_net;
  wire [10-1:0] reinterpret_output_port_net;
  wire [10-1:0] const_1_op_net;
  wire [25-1:0] addsub1_s_net;
  wire [25-1:0] const_1_interp_op_net;
  wire [25-1:0] slice_dout_net;
  wire [16-1:0] lut_douta_net;
  wire [16-1:0] lut_doutb_net;
  wire [10-1:0] addra_mux_y_net;
  wire [16-1:0] dina_mux_y_net;
  wire [1-1:0] wea_mux_y_net;
  wire [16-1:0] zero_nlf_datatype_op_net;
  wire [1-1:0] bool_zero_we_op_net;
  wire [10-1:0] cast_cutoff_lsbits_dout_net;
  wire [25-1:0] add_interpolate_s_net;
  wire [25-1:0] mult_a_p_net;
  wire [25-1:0] mult_b_p_net;
  wire [1-1:0] bool_zero_wea_op_net;
  wire [25-1:0] mult_inp_scale_p_net;
  wire [14-1:0] reint_sliced_output_port_net;
  wire [14-1:0] cutoff_msbits_y_net;
  wire [25-1:0] delay_sync_interpolate_q_net;
  wire [16-1:0] zero_nlf_dina_op_net;
  assign f_x = mult_out_scale_p_net;
  assign dac1_xx2_sel_mux_y_net = x;
  assign register52_q_net = presc;
  assign register51_q_net = gain;
  assign register47_q_net = cfg_select;
  assign register42_q_net = cfg_addr;
  assign register43_q_net = cfg_data;
  assign register44_q_net = cfg_we;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlUnsigned),
    .a_bin_pt(0),
    .a_width(10),
    .b_arith(`xlUnsigned),
    .b_bin_pt(0),
    .b_width(10),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(11),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i1"),
    .extra_registers(0),
    .full_s_arith(1),
    .full_s_width(11),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlUnsigned),
    .s_bin_pt(0),
    .s_width(10)
  )
  addsub (
    .clr(1'b0),
    .en(1'b1),
    .a(reinterpret_output_port_net),
    .b(const_1_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub_s_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(26),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i2"),
    .extra_registers(1),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(2),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  addsub1 (
    .clr(1'b0),
    .en(1'b1),
    .a(const_1_interp_op_net),
    .b(slice_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub1_s_net)
  );
  hilsim_ipcore_xltdpram #(
    .addr_width_a(10),
    .addr_width_b(10),
    .clocking_mode("common_clock"),
    .data_width_a(16),
    .data_width_b(16),
    .latency(1),
    .mem_init_file("xpm_f5fed5_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_a("0"),
    .read_reset_b("0"),
    .write_mode_a("write_first"),
    .write_mode_b("write_first")
  )
  lut (
    .ena(1'b1),
    .enb(1'b1),
    .rsta(1'b0),
    .rstb(1'b0),
    .addra(addra_mux_y_net),
    .dina(dina_mux_y_net),
    .wea(wea_mux_y_net),
    .addrb(addsub_s_net),
    .dinb(zero_nlf_datatype_op_net),
    .web(bool_zero_we_op_net),
    .a_clk(clk_net),
    .a_ce(ce_net),
    .b_clk(clk_net),
    .b_ce(ce_net),
    .douta(lut_douta_net),
    .doutb(lut_doutb_net)
  );
  sysgen_reinterpret_f4605e0022 reinterpret (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(cast_cutoff_lsbits_dout_net),
    .output_port(reinterpret_output_port_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(26),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i0"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  add_interpolate (
    .clr(1'b0),
    .en(1'b1),
    .a(mult_a_p_net),
    .b(mult_b_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(add_interpolate_s_net)
  );
  sysgen_mux_c832ae0d6a addra_mux (
    .clr(1'b0),
    .sel(register47_q_net),
    .d0(reinterpret_output_port_net),
    .d1(register42_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(addra_mux_y_net)
  );
  sysgen_constant_caba551e44 bool_zero_we (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(bool_zero_we_op_net)
  );
  sysgen_constant_caba551e44 bool_zero_wea (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(bool_zero_wea_op_net)
  );
  hilsim_ipcore_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(23),
    .din_width(25),
    .dout_arith(2),
    .dout_bin_pt(9),
    .dout_width(10),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  cast_cutoff_lsbits (
    .clr(1'b0),
    .en(1'b1),
    .din(mult_inp_scale_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(cast_cutoff_lsbits_dout_net)
  );
  hilsim_ipcore_xlconvert #(
    .bool_conversion(0),
    .din_arith(1),
    .din_bin_pt(14),
    .din_width(14),
    .dout_arith(2),
    .dout_bin_pt(17),
    .dout_width(25),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  slice (
    .clr(1'b0),
    .en(1'b1),
    .din(reint_sliced_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(slice_dout_net)
  );
  sysgen_constant_7b59d789af const_1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(const_1_op_net)
  );
  sysgen_constant_ab97251e3b const_1_interp (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(const_1_interp_op_net)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(0),
    .new_msb(13),
    .x_width(25),
    .y_width(14)
  )
  cutoff_msbits (
    .x(mult_inp_scale_p_net),
    .y(cutoff_msbits_y_net)
  );
  hilsim_ipcore_xldelay #(
    .latency(2),
    .reg_retiming(0),
    .reset(0),
    .width(25)
  )
  delay_sync_interpolate (
    .en(1'b1),
    .rst(1'b0),
    .d(slice_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_sync_interpolate_q_net)
  );
  sysgen_mux_ba276f04f0 dina_mux (
    .clr(1'b0),
    .sel(register47_q_net),
    .d0(zero_nlf_dina_op_net),
    .d1(register43_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(dina_mux_y_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(14),
    .a_width(16),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_a_type(0),
    .c_a_width(16),
    .c_b_type(0),
    .c_b_width(25),
    .c_baat(16),
    .c_output_width(41),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i1"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_a (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(lut_douta_net),
    .b(addsub1_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_a_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(14),
    .a_width(16),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_a_type(0),
    .c_a_width(16),
    .c_b_type(0),
    .c_b_width(25),
    .c_baat(16),
    .c_output_width(41),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i1"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_b (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(lut_doutb_net),
    .b(delay_sync_interpolate_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_b_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i0"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(23),
    .p_width(25),
    .quantization(1)
  )
  mult_inp_scale (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(dac1_xx2_sel_mux_y_net),
    .b(register52_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_inp_scale_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i0"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_out_scale (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(add_interpolate_s_net),
    .b(register51_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_out_scale_p_net)
  );
  sysgen_reinterpret_67d055efc4 reint_sliced (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(cutoff_msbits_y_net),
    .output_port(reint_sliced_output_port_net)
  );
  sysgen_mux_18d2538cb2 wea_mux (
    .clr(1'b0),
    .sel(register47_q_net),
    .d0(bool_zero_wea_op_net),
    .d1(register44_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(wea_mux_y_net)
  );
  sysgen_constant_f3b3f76499 zero_nlf_datatype (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(zero_nlf_datatype_op_net)
  );
  sysgen_constant_f3b3f76499 zero_nlf_dina (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(zero_nlf_dina_op_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/output_matrix
module hilsim_ipcore_output_matrix (
  input [25-1:0] x0,
  input [25-1:0] xd0,
  input [25-1:0] xdd0,
  input [25-1:0] x1,
  input [25-1:0] xd1,
  input [25-1:0] xdd1,
  input [25-1:0] x2,
  input [25-1:0] xd2,
  input [25-1:0] xdd2,
  input [2-1:0] output_matrix_cfg_1,
  input [8-1:0] nlf_cfg_bus_1,
  input [8-1:0] nlf_sel_addrs_1,
  input [2-1:0] output_matrix_cfg_2,
  input [2-1:0] output_matrix_cfg_3,
  input [18-1:0] output_matrix_cfg_4,
  input [18-1:0] output_matrix_cfg_5,
  input [18-1:0] output_matrix_cfg_6,
  input [2-1:0] output_matrix_cfg_7,
  input [2-1:0] output_matrix_cfg_8,
  input [2-1:0] output_matrix_cfg_9,
  input [18-1:0] output_matrix_cfg_10,
  input [18-1:0] output_matrix_cfg_11,
  input [18-1:0] output_matrix_cfg_12,
  input [1-1:0] output_matrix_cfg_13,
  input [18-1:0] output_matrix_cfg_14,
  input [18-1:0] output_matrix_cfg_15,
  input [1-1:0] output_matrix_cfg_16,
  input [18-1:0] output_matrix_cfg_17,
  input [18-1:0] output_matrix_cfg_18,
  input [1-1:0] output_matrix_cfg_19,
  input [18-1:0] output_matrix_cfg_20,
  input [18-1:0] output_matrix_cfg_21,
  input [1-1:0] output_matrix_cfg_22,
  input [18-1:0] output_matrix_cfg_23,
  input [18-1:0] output_matrix_cfg_24,
  input [1-1:0] output_matrix_cfg_25,
  input [18-1:0] output_matrix_cfg_26,
  input [18-1:0] output_matrix_cfg_27,
  input [1-1:0] output_matrix_cfg_28,
  input [18-1:0] output_matrix_cfg_29,
  input [18-1:0] output_matrix_cfg_30,
  input [10-1:0] nlf_cfg_bus_2,
  input [16-1:0] nlf_cfg_bus_3,
  input [1-1:0] nlf_cfg_bus_4,
  input [8-1:0] nlf_sel_addrs_2,
  input [8-1:0] nlf_sel_addrs_3,
  input [8-1:0] nlf_sel_addrs_4,
  input [8-1:0] nlf_sel_addrs_5,
  input [8-1:0] nlf_sel_addrs_6,
  input clk_1,
  input ce_1,
  output [25-1:0] dac0,
  output [25-1:0] dac1
);
  wire [25-1:0] dac0_xx1_nlf_en_mux_y_net;
  wire [25-1:0] dac0_xx2_delay_mux_y_net;
  wire [25-1:0] dac0_xx2_nlf_en_mux_y_net;
  wire [25-1:0] dac1_add_1_s_net;
  wire [25-1:0] dac1_xx0_fac_mul_p_net;
  wire [25-1:0] dac1_xx1_fac_mul_p_net;
  wire [25-1:0] dac1_add_delay_q_net;
  wire [25-1:0] dac1_xx2_fac_mul_p_net;
  wire [25-1:0] dac1_xx0_delay_mux_y_net;
  wire [25-1:0] dac1_xx0_nlf_en_mux_y_net;
  wire [25-1:0] dac1_xx1_delay_mux_y_net;
  wire [25-1:0] dac1_xx1_nlf_en_mux_y_net;
  wire [25-1:0] dac0_add_2_s_net;
  wire [25-1:0] dac1_add_2_s_net;
  wire [25-1:0] sync_x_q_net_x1;
  wire [25-1:0] sync_xdot_q_net_x1;
  wire [25-1:0] sync_xdotdot_q_net_x1;
  wire [25-1:0] sync_x_q_net_x0;
  wire [25-1:0] sync_xdot_q_net_x0;
  wire [25-1:0] sync_xdotdot_q_net_x0;
  wire [25-1:0] sync_x_q_net;
  wire [25-1:0] sync_xdot_q_net;
  wire [25-1:0] sync_xdotdot_q_net;
  wire [2-1:0] clkxreg_slice1_cfg42_q_net;
  wire [8-1:0] seladdr;
  wire [8-1:0] sel_dac0_xx0;
  wire [2-1:0] clkxreg_slice1_cfg38_q_net;
  wire [2-1:0] clkxreg_slice1_cfg44_q_net;
  wire [18-1:0] clkxreg_slice1_cfg43_q_net;
  wire [18-1:0] clkxreg_slice1_cfg46_q_net;
  wire [18-1:0] clkxreg_slice1_cfg45_q_net;
  wire [2-1:0] clkxreg_slice1_cfg48_q_net;
  wire [2-1:0] clkxreg_slice1_cfg47_q_net;
  wire [2-1:0] clkxreg_slice1_cfg39_q_net;
  wire [18-1:0] clkxreg_slice1_cfg49_q_net;
  wire [18-1:0] clkxreg_slice1_cfg41_q_net;
  wire [18-1:0] clkxreg_slice1_cfg40_q_net;
  wire [1-1:0] clkxreg_slice1_cfg111_q_net;
  wire [18-1:0] clkxreg_slice1_cfg107_q_net;
  wire [18-1:0] clkxreg_slice1_cfg120_q_net;
  wire [1-1:0] clkxreg_slice1_cfg119_q_net;
  wire [18-1:0] clkxreg_slice1_cfg122_q_net;
  wire [18-1:0] clkxreg_slice1_cfg121_q_net;
  wire [1-1:0] clkxreg_slice1_cfg124_q_net;
  wire [18-1:0] clkxreg_slice1_cfg123_q_net;
  wire [18-1:0] clkxreg_slice1_cfg108_q_net;
  wire [1-1:0] clkxreg_slice1_cfg125_q_net;
  wire [18-1:0] clkxreg_slice1_cfg110_q_net;
  wire [18-1:0] clkxreg_slice1_cfg109_q_net;
  wire [1-1:0] clkxreg_slice1_cfg126_q_net;
  wire [18-1:0] clkxreg_slice1_cfg129_q_net;
  wire [18-1:0] clkxreg_slice1_cfg128_q_net;
  wire [1-1:0] clkxreg_slice1_cfg127_q_net;
  wire [18-1:0] clkxreg_slice1_cfg131_q_net;
  wire [18-1:0] clkxreg_slice1_cfg130_q_net;
  wire [10-1:0] delay_q_net;
  wire [16-1:0] tmp_lut_doutb_net;
  wire [1-1:0] delay1_q_net;
  wire [8-1:0] sel_dac0_xx1;
  wire [8-1:0] sel_dac0_xx2;
  wire [8-1:0] sel_dac1_xx0;
  wire [8-1:0] sel_dac1_xx1;
  wire [8-1:0] sel_dac1_xx2;
  wire clk_net;
  wire ce_net;
  wire [25-1:0] mult_out_scale_p_net_x0;
  wire [25-1:0] dac0_xx0_sel_mux_y_net;
  wire [18-1:0] register16_q_net;
  wire [18-1:0] register15_q_net;
  wire [1-1:0] register17_q_net;
  wire [10-1:0] register_q_net;
  wire [16-1:0] register13_q_net;
  wire [1-1:0] register14_q_net;
  wire [25-1:0] mult_out_scale_p_net_x1;
  wire [25-1:0] dac0_xx1_sel_mux_y_net;
  wire [18-1:0] register27_q_net;
  wire [18-1:0] register22_q_net;
  wire [1-1:0] register23_q_net;
  wire [10-1:0] register18_q_net;
  wire [16-1:0] register19_q_net;
  wire [1-1:0] register20_q_net;
  wire [25-1:0] mult_out_scale_p_net_x2;
  wire [25-1:0] dac0_xx2_sel_mux_y_net;
  wire [18-1:0] register34_q_net;
  wire [18-1:0] register33_q_net;
  wire [1-1:0] register29_q_net;
  wire [10-1:0] register24_q_net;
  wire [16-1:0] register25_q_net;
  wire [1-1:0] register26_q_net;
  wire [25-1:0] mult_out_scale_p_net_x3;
  wire [25-1:0] dac1_xx0_sel_mux_y_net;
  wire [18-1:0] register45_q_net;
  wire [18-1:0] register40_q_net;
  wire [1-1:0] register35_q_net;
  wire [10-1:0] register30_q_net;
  wire [16-1:0] register31_q_net;
  wire [1-1:0] register32_q_net;
  wire [25-1:0] mult_out_scale_p_net;
  wire [25-1:0] dac1_xx1_sel_mux_y_net;
  wire [18-1:0] register49_q_net;
  wire [18-1:0] register48_q_net;
  wire [1-1:0] register41_q_net;
  wire [10-1:0] register36_q_net;
  wire [16-1:0] register37_q_net;
  wire [1-1:0] register38_q_net;
  wire [25-1:0] mult_out_scale_p_net_x4;
  wire [25-1:0] dac1_xx2_sel_mux_y_net;
  wire [18-1:0] register52_q_net;
  wire [18-1:0] register51_q_net;
  wire [1-1:0] register47_q_net;
  wire [10-1:0] register42_q_net;
  wire [16-1:0] register43_q_net;
  wire [1-1:0] register44_q_net;
  wire [25-1:0] delay2_q_net;
  wire [25-1:0] delay3_q_net;
  wire [25-1:0] delay4_q_net;
  wire [25-1:0] delay5_q_net;
  wire [25-1:0] delay6_q_net;
  wire [25-1:0] delay7_q_net;
  wire [1-1:0] logical_y_net;
  wire [1-1:0] register21_q_net;
  wire [1-1:0] register28_q_net;
  wire [1-1:0] register39_q_net;
  wire [1-1:0] register46_q_net;
  wire [1-1:0] register50_q_net;
  wire [1-1:0] register53_q_net;
  wire [2-1:0] register1_q_net;
  wire [2-1:0] register10_q_net;
  wire [2-1:0] register11_q_net;
  wire [2-1:0] register12_q_net;
  wire [1-1:0] nlfsel_dac0_xx0_op_net;
  wire [2-1:0] register2_q_net;
  wire [1-1:0] nlfsel_dac0_xx1_op_net;
  wire [1-1:0] nlfsel_dac0_xx2_op_net;
  wire [18-1:0] register3_q_net;
  wire [1-1:0] nlfsel_dac1_xx0_op_net;
  wire [18-1:0] register4_q_net;
  wire [1-1:0] nlfsel_dac1_xx1_op_net;
  wire [1-1:0] nlfsel_dac1_xx2_op_net;
  wire [18-1:0] register5_q_net;
  wire [8-1:0] register54_q_net;
  wire [18-1:0] register6_q_net;
  wire [2-1:0] register7_q_net;
  wire [18-1:0] register8_q_net;
  wire [18-1:0] register9_q_net;
  wire [25-1:0] dac0_add_1_s_net;
  wire [25-1:0] dac0_xx0_fac_mul_p_net;
  wire [25-1:0] dac0_xx1_fac_mul_p_net;
  wire [25-1:0] dac0_add_delay_q_net;
  wire [25-1:0] dac0_xx2_fac_mul_p_net;
  wire [25-1:0] dac0_xx0_delay_mux_y_net;
  wire [25-1:0] dac0_xx0_nlf_en_mux_y_net;
  wire [25-1:0] dac0_xx1_delay_mux_y_net;
  wire [25-1:0] dac1_xx2_delay_mux_y_net;
  wire [25-1:0] dac1_xx2_nlf_en_mux_y_net;
  assign dac0 = dac0_add_2_s_net;
  assign dac1 = dac1_add_2_s_net;
  assign sync_x_q_net_x1 = x0;
  assign sync_xdot_q_net_x1 = xd0;
  assign sync_xdotdot_q_net_x1 = xdd0;
  assign sync_x_q_net_x0 = x1;
  assign sync_xdot_q_net_x0 = xd1;
  assign sync_xdotdot_q_net_x0 = xdd1;
  assign sync_x_q_net = x2;
  assign sync_xdot_q_net = xd2;
  assign sync_xdotdot_q_net = xdd2;
  assign clkxreg_slice1_cfg42_q_net = output_matrix_cfg_1;
  assign seladdr = nlf_cfg_bus_1;
  assign sel_dac0_xx0 = nlf_sel_addrs_1;
  assign clkxreg_slice1_cfg38_q_net = output_matrix_cfg_2;
  assign clkxreg_slice1_cfg44_q_net = output_matrix_cfg_3;
  assign clkxreg_slice1_cfg43_q_net = output_matrix_cfg_4;
  assign clkxreg_slice1_cfg46_q_net = output_matrix_cfg_5;
  assign clkxreg_slice1_cfg45_q_net = output_matrix_cfg_6;
  assign clkxreg_slice1_cfg48_q_net = output_matrix_cfg_7;
  assign clkxreg_slice1_cfg47_q_net = output_matrix_cfg_8;
  assign clkxreg_slice1_cfg39_q_net = output_matrix_cfg_9;
  assign clkxreg_slice1_cfg49_q_net = output_matrix_cfg_10;
  assign clkxreg_slice1_cfg41_q_net = output_matrix_cfg_11;
  assign clkxreg_slice1_cfg40_q_net = output_matrix_cfg_12;
  assign clkxreg_slice1_cfg111_q_net = output_matrix_cfg_13;
  assign clkxreg_slice1_cfg107_q_net = output_matrix_cfg_14;
  assign clkxreg_slice1_cfg120_q_net = output_matrix_cfg_15;
  assign clkxreg_slice1_cfg119_q_net = output_matrix_cfg_16;
  assign clkxreg_slice1_cfg122_q_net = output_matrix_cfg_17;
  assign clkxreg_slice1_cfg121_q_net = output_matrix_cfg_18;
  assign clkxreg_slice1_cfg124_q_net = output_matrix_cfg_19;
  assign clkxreg_slice1_cfg123_q_net = output_matrix_cfg_20;
  assign clkxreg_slice1_cfg108_q_net = output_matrix_cfg_21;
  assign clkxreg_slice1_cfg125_q_net = output_matrix_cfg_22;
  assign clkxreg_slice1_cfg110_q_net = output_matrix_cfg_23;
  assign clkxreg_slice1_cfg109_q_net = output_matrix_cfg_24;
  assign clkxreg_slice1_cfg126_q_net = output_matrix_cfg_25;
  assign clkxreg_slice1_cfg129_q_net = output_matrix_cfg_26;
  assign clkxreg_slice1_cfg128_q_net = output_matrix_cfg_27;
  assign clkxreg_slice1_cfg127_q_net = output_matrix_cfg_28;
  assign clkxreg_slice1_cfg131_q_net = output_matrix_cfg_29;
  assign clkxreg_slice1_cfg130_q_net = output_matrix_cfg_30;
  assign delay_q_net = nlf_cfg_bus_2;
  assign tmp_lut_doutb_net = nlf_cfg_bus_3;
  assign delay1_q_net = nlf_cfg_bus_4;
  assign sel_dac0_xx1 = nlf_sel_addrs_2;
  assign sel_dac0_xx2 = nlf_sel_addrs_3;
  assign sel_dac1_xx0 = nlf_sel_addrs_4;
  assign sel_dac1_xx1 = nlf_sel_addrs_5;
  assign sel_dac1_xx2 = nlf_sel_addrs_6;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  hilsim_ipcore_nlf_dac0_xx0 nlf_dac0_xx0 (
    .x(dac0_xx0_sel_mux_y_net),
    .presc(register16_q_net),
    .gain(register15_q_net),
    .cfg_select(register17_q_net),
    .cfg_addr(register_q_net),
    .cfg_data(register13_q_net),
    .cfg_we(register14_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .f_x(mult_out_scale_p_net_x0)
  );
  hilsim_ipcore_nlf_dac0_xx1 nlf_dac0_xx1 (
    .x(dac0_xx1_sel_mux_y_net),
    .presc(register27_q_net),
    .gain(register22_q_net),
    .cfg_select(register23_q_net),
    .cfg_addr(register18_q_net),
    .cfg_data(register19_q_net),
    .cfg_we(register20_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .f_x(mult_out_scale_p_net_x1)
  );
  hilsim_ipcore_nlf_dac0_xx2 nlf_dac0_xx2 (
    .x(dac0_xx2_sel_mux_y_net),
    .presc(register34_q_net),
    .gain(register33_q_net),
    .cfg_select(register29_q_net),
    .cfg_addr(register24_q_net),
    .cfg_data(register25_q_net),
    .cfg_we(register26_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .f_x(mult_out_scale_p_net_x2)
  );
  hilsim_ipcore_nlf_dac1_xx0 nlf_dac1_xx0 (
    .x(dac1_xx0_sel_mux_y_net),
    .presc(register45_q_net),
    .gain(register40_q_net),
    .cfg_select(register35_q_net),
    .cfg_addr(register30_q_net),
    .cfg_data(register31_q_net),
    .cfg_we(register32_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .f_x(mult_out_scale_p_net_x3)
  );
  hilsim_ipcore_nlf_dac1_xx1 nlf_dac1_xx1 (
    .x(dac1_xx1_sel_mux_y_net),
    .presc(register49_q_net),
    .gain(register48_q_net),
    .cfg_select(register41_q_net),
    .cfg_addr(register36_q_net),
    .cfg_data(register37_q_net),
    .cfg_we(register38_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .f_x(mult_out_scale_p_net)
  );
  hilsim_ipcore_nlf_dac1_xx2 nlf_dac1_xx2 (
    .x(dac1_xx2_sel_mux_y_net),
    .presc(register52_q_net),
    .gain(register51_q_net),
    .cfg_select(register47_q_net),
    .cfg_addr(register42_q_net),
    .cfg_data(register43_q_net),
    .cfg_we(register44_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .f_x(mult_out_scale_p_net_x4)
  );
  hilsim_ipcore_xldelay #(
    .latency(12),
    .reg_retiming(0),
    .reset(0),
    .width(25)
  )
  delay2 (
    .en(1'b1),
    .rst(1'b0),
    .d(dac0_xx0_sel_mux_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay2_q_net)
  );
  hilsim_ipcore_xldelay #(
    .latency(12),
    .reg_retiming(0),
    .reset(0),
    .width(25)
  )
  delay3 (
    .en(1'b1),
    .rst(1'b0),
    .d(dac0_xx1_sel_mux_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay3_q_net)
  );
  hilsim_ipcore_xldelay #(
    .latency(12),
    .reg_retiming(0),
    .reset(0),
    .width(25)
  )
  delay4 (
    .en(1'b1),
    .rst(1'b0),
    .d(dac0_xx2_sel_mux_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay4_q_net)
  );
  hilsim_ipcore_xldelay #(
    .latency(12),
    .reg_retiming(0),
    .reset(0),
    .width(25)
  )
  delay5 (
    .en(1'b1),
    .rst(1'b0),
    .d(dac1_xx0_sel_mux_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay5_q_net)
  );
  hilsim_ipcore_xldelay #(
    .latency(12),
    .reg_retiming(0),
    .reset(0),
    .width(25)
  )
  delay6 (
    .en(1'b1),
    .rst(1'b0),
    .d(dac1_xx1_sel_mux_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay6_q_net)
  );
  hilsim_ipcore_xldelay #(
    .latency(12),
    .reg_retiming(0),
    .reset(0),
    .width(25)
  )
  delay7 (
    .en(1'b1),
    .rst(1'b0),
    .d(dac1_xx2_sel_mux_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay7_q_net)
  );
  sysgen_logical_6fc76ee77c logical (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(register21_q_net),
    .d1(register28_q_net),
    .d2(register39_q_net),
    .d3(register46_q_net),
    .d4(register50_q_net),
    .d5(register53_q_net),
    .y(logical_y_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(10),
    .init_value(10'b0000000000)
  )
  register (
    .en(1'b1),
    .rst(1'b0),
    .d(delay_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(2),
    .init_value(2'b00)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg38_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register1_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(2),
    .init_value(2'b00)
  )
  register10 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg39_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register10_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(2),
    .init_value(2'b00)
  )
  register11 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg47_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register11_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(2),
    .init_value(2'b00)
  )
  register12 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg48_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register12_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(16),
    .init_value(16'b0000000000000000)
  )
  register13 (
    .en(1'b1),
    .rst(1'b0),
    .d(tmp_lut_doutb_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register13_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register14 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register14_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register15 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg120_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register15_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register16 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg107_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register16_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register17 (
    .en(1'b1),
    .rst(1'b0),
    .d(nlfsel_dac0_xx0_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register17_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(10),
    .init_value(10'b0000000000)
  )
  register18 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register18_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(16),
    .init_value(16'b0000000000000000)
  )
  register19 (
    .en(1'b1),
    .rst(1'b0),
    .d(tmp_lut_doutb_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register19_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(2),
    .init_value(2'b00)
  )
  register2 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg44_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register2_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register20 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register20_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register21 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg111_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register21_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register22 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg121_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register22_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register23 (
    .en(1'b1),
    .rst(1'b0),
    .d(nlfsel_dac0_xx1_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register23_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(10),
    .init_value(10'b0000000000)
  )
  register24 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register24_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(16),
    .init_value(16'b0000000000000000)
  )
  register25 (
    .en(1'b1),
    .rst(1'b0),
    .d(tmp_lut_doutb_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register25_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register26 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register26_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register27 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg122_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register27_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register28 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg119_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register28_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register29 (
    .en(1'b1),
    .rst(1'b0),
    .d(nlfsel_dac0_xx2_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register29_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register3 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg43_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register3_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(10),
    .init_value(10'b0000000000)
  )
  register30 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register30_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(16),
    .init_value(16'b0000000000000000)
  )
  register31 (
    .en(1'b1),
    .rst(1'b0),
    .d(tmp_lut_doutb_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register31_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register32 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register32_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register33 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg108_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register33_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register34 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg123_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register34_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register35 (
    .en(1'b1),
    .rst(1'b0),
    .d(nlfsel_dac1_xx0_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register35_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(10),
    .init_value(10'b0000000000)
  )
  register36 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register36_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(16),
    .init_value(16'b0000000000000000)
  )
  register37 (
    .en(1'b1),
    .rst(1'b0),
    .d(tmp_lut_doutb_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register37_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register38 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register38_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register39 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg124_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register39_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register4 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg46_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register4_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register40 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg109_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register40_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register41 (
    .en(1'b1),
    .rst(1'b0),
    .d(nlfsel_dac1_xx1_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register41_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(10),
    .init_value(10'b0000000000)
  )
  register42 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register42_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(16),
    .init_value(16'b0000000000000000)
  )
  register43 (
    .en(1'b1),
    .rst(1'b0),
    .d(tmp_lut_doutb_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register43_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register44 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register44_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register45 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg110_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register45_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register46 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg125_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register46_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register47 (
    .en(1'b1),
    .rst(1'b0),
    .d(nlfsel_dac1_xx2_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register47_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register48 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg128_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register48_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register49 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg129_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register49_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register5 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg45_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register5_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register50 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg126_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register50_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register51 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg130_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register51_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register52 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg131_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register52_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register53 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg127_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register53_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(8),
    .init_value(8'b00000000)
  )
  register54 (
    .en(1'b1),
    .rst(1'b0),
    .d(seladdr),
    .clk(clk_net),
    .ce(ce_net),
    .q(register54_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register6 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg40_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register6_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(2),
    .init_value(2'b00)
  )
  register7 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg42_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register7_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register8 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg41_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register8_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register9 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg49_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register9_q_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(26),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i0"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  dac0_add_1 (
    .clr(1'b0),
    .en(1'b1),
    .a(dac0_xx0_fac_mul_p_net),
    .b(dac0_xx1_fac_mul_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(dac0_add_1_s_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(26),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i0"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  dac0_add_2 (
    .clr(1'b0),
    .en(1'b1),
    .a(dac0_add_1_s_net),
    .b(dac0_add_delay_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(dac0_add_2_s_net)
  );
  hilsim_ipcore_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(25)
  )
  dac0_add_delay (
    .en(1'b1),
    .rst(1'b0),
    .d(dac0_xx2_fac_mul_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(dac0_add_delay_q_net)
  );
  sysgen_mux_1b926b88d6 dac0_xx0_delay_mux (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .sel(logical_y_net),
    .d0(dac0_xx0_sel_mux_y_net),
    .d1(delay2_q_net),
    .y(dac0_xx0_delay_mux_y_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i0"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  dac0_xx0_fac_mul (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(dac0_xx0_nlf_en_mux_y_net),
    .b(register3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(dac0_xx0_fac_mul_p_net)
  );
  sysgen_mux_d68a8b9ad8 dac0_xx0_nlf_en_mux (
    .clr(1'b0),
    .sel(register21_q_net),
    .d0(dac0_xx0_delay_mux_y_net),
    .d1(mult_out_scale_p_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .y(dac0_xx0_nlf_en_mux_y_net)
  );
  sysgen_mux_bb0938a2a1 dac0_xx0_sel_mux (
    .clr(1'b0),
    .sel(register7_q_net),
    .d0(sync_x_q_net_x1),
    .d1(sync_xdot_q_net_x1),
    .d2(sync_xdotdot_q_net_x1),
    .clk(clk_net),
    .ce(ce_net),
    .y(dac0_xx0_sel_mux_y_net)
  );
  sysgen_mux_1b926b88d6 dac0_xx1_delay_mux (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .sel(logical_y_net),
    .d0(dac0_xx1_sel_mux_y_net),
    .d1(delay3_q_net),
    .y(dac0_xx1_delay_mux_y_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i0"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  dac0_xx1_fac_mul (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(dac0_xx1_nlf_en_mux_y_net),
    .b(register4_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(dac0_xx1_fac_mul_p_net)
  );
  sysgen_mux_d68a8b9ad8 dac0_xx1_nlf_en_mux (
    .clr(1'b0),
    .sel(register28_q_net),
    .d0(dac0_xx1_delay_mux_y_net),
    .d1(mult_out_scale_p_net_x1),
    .clk(clk_net),
    .ce(ce_net),
    .y(dac0_xx1_nlf_en_mux_y_net)
  );
  sysgen_mux_bb0938a2a1 dac0_xx1_sel_mux (
    .clr(1'b0),
    .sel(register1_q_net),
    .d0(sync_x_q_net_x0),
    .d1(sync_xdot_q_net_x0),
    .d2(sync_xdotdot_q_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .y(dac0_xx1_sel_mux_y_net)
  );
  sysgen_mux_1b926b88d6 dac0_xx2_delay_mux (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .sel(logical_y_net),
    .d0(dac0_xx2_sel_mux_y_net),
    .d1(delay4_q_net),
    .y(dac0_xx2_delay_mux_y_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i0"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  dac0_xx2_fac_mul (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(dac0_xx2_nlf_en_mux_y_net),
    .b(register5_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(dac0_xx2_fac_mul_p_net)
  );
  sysgen_mux_d68a8b9ad8 dac0_xx2_nlf_en_mux (
    .clr(1'b0),
    .sel(register39_q_net),
    .d0(dac0_xx2_delay_mux_y_net),
    .d1(mult_out_scale_p_net_x2),
    .clk(clk_net),
    .ce(ce_net),
    .y(dac0_xx2_nlf_en_mux_y_net)
  );
  sysgen_mux_bb0938a2a1 dac0_xx2_sel_mux (
    .clr(1'b0),
    .sel(register2_q_net),
    .d0(sync_x_q_net),
    .d1(sync_xdot_q_net),
    .d2(sync_xdotdot_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(dac0_xx2_sel_mux_y_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(26),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i0"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  dac1_add_1 (
    .clr(1'b0),
    .en(1'b1),
    .a(dac1_xx0_fac_mul_p_net),
    .b(dac1_xx1_fac_mul_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(dac1_add_1_s_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(26),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i0"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  dac1_add_2 (
    .clr(1'b0),
    .en(1'b1),
    .a(dac1_add_1_s_net),
    .b(dac1_add_delay_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(dac1_add_2_s_net)
  );
  hilsim_ipcore_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(25)
  )
  dac1_add_delay (
    .en(1'b1),
    .rst(1'b0),
    .d(dac1_xx2_fac_mul_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(dac1_add_delay_q_net)
  );
  sysgen_mux_1b926b88d6 dac1_xx0_delay_mux (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .sel(logical_y_net),
    .d0(dac1_xx0_sel_mux_y_net),
    .d1(delay5_q_net),
    .y(dac1_xx0_delay_mux_y_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i0"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  dac1_xx0_fac_mul (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(dac1_xx0_nlf_en_mux_y_net),
    .b(register9_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(dac1_xx0_fac_mul_p_net)
  );
  sysgen_mux_d68a8b9ad8 dac1_xx0_nlf_en_mux (
    .clr(1'b0),
    .sel(register46_q_net),
    .d0(dac1_xx0_delay_mux_y_net),
    .d1(mult_out_scale_p_net_x3),
    .clk(clk_net),
    .ce(ce_net),
    .y(dac1_xx0_nlf_en_mux_y_net)
  );
  sysgen_mux_bb0938a2a1 dac1_xx0_sel_mux (
    .clr(1'b0),
    .sel(register12_q_net),
    .d0(sync_x_q_net_x1),
    .d1(sync_xdot_q_net_x1),
    .d2(sync_xdotdot_q_net_x1),
    .clk(clk_net),
    .ce(ce_net),
    .y(dac1_xx0_sel_mux_y_net)
  );
  sysgen_mux_1b926b88d6 dac1_xx1_delay_mux (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .sel(logical_y_net),
    .d0(dac1_xx1_sel_mux_y_net),
    .d1(delay6_q_net),
    .y(dac1_xx1_delay_mux_y_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i0"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  dac1_xx1_fac_mul (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(dac1_xx1_nlf_en_mux_y_net),
    .b(register8_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(dac1_xx1_fac_mul_p_net)
  );
  sysgen_mux_d68a8b9ad8 dac1_xx1_nlf_en_mux (
    .clr(1'b0),
    .sel(register50_q_net),
    .d0(dac1_xx1_delay_mux_y_net),
    .d1(mult_out_scale_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(dac1_xx1_nlf_en_mux_y_net)
  );
  sysgen_mux_bb0938a2a1 dac1_xx1_sel_mux (
    .clr(1'b0),
    .sel(register11_q_net),
    .d0(sync_x_q_net_x0),
    .d1(sync_xdot_q_net_x0),
    .d2(sync_xdotdot_q_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .y(dac1_xx1_sel_mux_y_net)
  );
  sysgen_mux_1b926b88d6 dac1_xx2_delay_mux (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .sel(logical_y_net),
    .d0(dac1_xx2_sel_mux_y_net),
    .d1(delay7_q_net),
    .y(dac1_xx2_delay_mux_y_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i0"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  dac1_xx2_fac_mul (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(dac1_xx2_nlf_en_mux_y_net),
    .b(register6_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(dac1_xx2_fac_mul_p_net)
  );
  sysgen_mux_d68a8b9ad8 dac1_xx2_nlf_en_mux (
    .clr(1'b0),
    .sel(register53_q_net),
    .d0(dac1_xx2_delay_mux_y_net),
    .d1(mult_out_scale_p_net_x4),
    .clk(clk_net),
    .ce(ce_net),
    .y(dac1_xx2_nlf_en_mux_y_net)
  );
  sysgen_mux_bb0938a2a1 dac1_xx2_sel_mux (
    .clr(1'b0),
    .sel(register10_q_net),
    .d0(sync_x_q_net),
    .d1(sync_xdot_q_net),
    .d2(sync_xdotdot_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(dac1_xx2_sel_mux_y_net)
  );
  sysgen_relational_a2a0814d7a nlfsel_dac0_xx0 (
    .clr(1'b0),
    .a(register54_q_net),
    .b(sel_dac0_xx0),
    .clk(clk_net),
    .ce(ce_net),
    .op(nlfsel_dac0_xx0_op_net)
  );
  sysgen_relational_a2a0814d7a nlfsel_dac0_xx1 (
    .clr(1'b0),
    .a(register54_q_net),
    .b(sel_dac0_xx1),
    .clk(clk_net),
    .ce(ce_net),
    .op(nlfsel_dac0_xx1_op_net)
  );
  sysgen_relational_a2a0814d7a nlfsel_dac0_xx2 (
    .clr(1'b0),
    .a(register54_q_net),
    .b(sel_dac0_xx2),
    .clk(clk_net),
    .ce(ce_net),
    .op(nlfsel_dac0_xx2_op_net)
  );
  sysgen_relational_a2a0814d7a nlfsel_dac1_xx0 (
    .clr(1'b0),
    .a(register54_q_net),
    .b(sel_dac1_xx0),
    .clk(clk_net),
    .ce(ce_net),
    .op(nlfsel_dac1_xx0_op_net)
  );
  sysgen_relational_a2a0814d7a nlfsel_dac1_xx1 (
    .clr(1'b0),
    .a(register54_q_net),
    .b(sel_dac1_xx1),
    .clk(clk_net),
    .ce(ce_net),
    .op(nlfsel_dac1_xx1_op_net)
  );
  sysgen_relational_a2a0814d7a nlfsel_dac1_xx2 (
    .clr(1'b0),
    .a(register54_q_net),
    .b(sel_dac1_xx2),
    .clk(clk_net),
    .ce(ce_net),
    .op(nlfsel_dac1_xx2_op_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/output_switch
module hilsim_ipcore_output_switch (
  input [1-1:0] enable,
  input [25-1:0] dac0_in,
  input [25-1:0] dac1_in,
  output [25-1:0] dac0_out,
  output [25-1:0] dac1_out
);
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] mux2_y_net;
  wire [1-1:0] clkxreg_slice1_cfg99_q_net;
  wire [25-1:0] dac0_add_2_s_net;
  wire [25-1:0] dac1_add_2_s_net;
  wire [25-1:0] constant1_op_net;
  wire [25-1:0] constant3_op_net;
  assign dac0_out = mux1_y_net;
  assign dac1_out = mux2_y_net;
  assign clkxreg_slice1_cfg99_q_net = enable;
  assign dac0_add_2_s_net = dac0_in;
  assign dac1_add_2_s_net = dac1_in;
  sysgen_constant_146c4fe602 constant1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant1_op_net)
  );
  sysgen_constant_146c4fe602 constant3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant3_op_net)
  );
  sysgen_mux_1b926b88d6 mux1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .sel(clkxreg_slice1_cfg99_q_net),
    .d0(constant3_op_net),
    .d1(dac0_add_2_s_net),
    .y(mux1_y_net)
  );
  sysgen_mux_1b926b88d6 mux2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .sel(clkxreg_slice1_cfg99_q_net),
    .d0(constant1_op_net),
    .d1(dac1_add_2_s_net),
    .y(mux2_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/sel_addrs_adc
module hilsim_ipcore_sel_addrs_adc (
  output [8-1:0] nlf_sel_addrs_1,
  output [8-1:0] nlf_sel_addrs_2
);
  wire [8-1:0] sel_adc0;
  wire [8-1:0] sel_adc1;
  assign nlf_sel_addrs_1 = sel_adc0;
  assign nlf_sel_addrs_2 = sel_adc1;
  sysgen_constant_c70b4dd152 constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(sel_adc0)
  );
  sysgen_constant_7deb02a988 constant1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(sel_adc1)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/sel_addrs_output_matrix
module hilsim_ipcore_sel_addrs_output_matrix (
  output [8-1:0] nlf_sel_addrs_1,
  output [8-1:0] nlf_sel_addrs_2,
  output [8-1:0] nlf_sel_addrs_3,
  output [8-1:0] nlf_sel_addrs_4,
  output [8-1:0] nlf_sel_addrs_5,
  output [8-1:0] nlf_sel_addrs_6
);
  wire [8-1:0] sel_dac0_xx0;
  wire [8-1:0] sel_dac0_xx1;
  wire [8-1:0] sel_dac0_xx2;
  wire [8-1:0] sel_dac1_xx0;
  wire [8-1:0] sel_dac1_xx1;
  wire [8-1:0] sel_dac1_xx2;
  assign nlf_sel_addrs_1 = sel_dac0_xx0;
  assign nlf_sel_addrs_2 = sel_dac0_xx1;
  assign nlf_sel_addrs_3 = sel_dac0_xx2;
  assign nlf_sel_addrs_4 = sel_dac1_xx0;
  assign nlf_sel_addrs_5 = sel_dac1_xx1;
  assign nlf_sel_addrs_6 = sel_dac1_xx2;
  sysgen_constant_b80eb373b3 constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(sel_dac0_xx0)
  );
  sysgen_constant_ed548e4fed constant1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(sel_dac0_xx1)
  );
  sysgen_constant_74b9160668 constant2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(sel_dac0_xx2)
  );
  sysgen_constant_172e5e0981 constant3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(sel_dac1_xx0)
  );
  sysgen_constant_78ab1f71f8 constant4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(sel_dac1_xx1)
  );
  sysgen_constant_e77dc0edb3 constant5 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(sel_dac1_xx2)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/sel_addrs_slice_0
module hilsim_ipcore_sel_addrs_slice_0 (
  output [8-1:0] nlf_sel_addrs_1,
  output [8-1:0] nlf_sel_addrs_2,
  output [8-1:0] nlf_sel_addrs_3,
  output [8-1:0] nlf_sel_addrs_4,
  output [8-1:0] nlf_sel_addrs_5,
  output [8-1:0] nlf_sel_addrs_6
);
  wire [8-1:0] sel_u0;
  wire [8-1:0] sel_u1;
  wire [8-1:0] sel_x0;
  wire [8-1:0] sel_x1;
  wire [8-1:0] sel_xd0;
  wire [8-1:0] sel_xd1;
  assign nlf_sel_addrs_1 = sel_u0;
  assign nlf_sel_addrs_2 = sel_u1;
  assign nlf_sel_addrs_3 = sel_x0;
  assign nlf_sel_addrs_4 = sel_x1;
  assign nlf_sel_addrs_5 = sel_xd0;
  assign nlf_sel_addrs_6 = sel_xd1;
  sysgen_constant_3966862ad9 constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(sel_u0)
  );
  sysgen_constant_54cfb48bba constant1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(sel_u1)
  );
  sysgen_constant_9b6705cd41 constant2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(sel_x0)
  );
  sysgen_constant_32c9fb554d constant3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(sel_x1)
  );
  sysgen_constant_f62133f3dc constant4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(sel_xd0)
  );
  sysgen_constant_3a45e624e5 constant5 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(sel_xd1)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/sel_addrs_slice_1
module hilsim_ipcore_sel_addrs_slice_1 (
  output [8-1:0] nlf_sel_addrs_1,
  output [8-1:0] nlf_sel_addrs_2,
  output [8-1:0] nlf_sel_addrs_3,
  output [8-1:0] nlf_sel_addrs_4,
  output [8-1:0] nlf_sel_addrs_5,
  output [8-1:0] nlf_sel_addrs_6
);
  wire [8-1:0] sel_u0;
  wire [8-1:0] sel_u1;
  wire [8-1:0] sel_x0;
  wire [8-1:0] sel_x1;
  wire [8-1:0] sel_xd0;
  wire [8-1:0] sel_xd1;
  assign nlf_sel_addrs_1 = sel_u0;
  assign nlf_sel_addrs_2 = sel_u1;
  assign nlf_sel_addrs_3 = sel_x0;
  assign nlf_sel_addrs_4 = sel_x1;
  assign nlf_sel_addrs_5 = sel_xd0;
  assign nlf_sel_addrs_6 = sel_xd1;
  sysgen_constant_19673b4b79 constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(sel_u0)
  );
  sysgen_constant_e79806f299 constant1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(sel_u1)
  );
  sysgen_constant_5e2e5b8061 constant2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(sel_x0)
  );
  sysgen_constant_fa425f1953 constant3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(sel_x1)
  );
  sysgen_constant_d00dca1e83 constant4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(sel_xd0)
  );
  sysgen_constant_f42f2ed83d constant5 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(sel_xd1)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/sel_addrs_slice_2
module hilsim_ipcore_sel_addrs_slice_2 (
  output [8-1:0] nlf_sel_addrs_1,
  output [8-1:0] nlf_sel_addrs_2,
  output [8-1:0] nlf_sel_addrs_3,
  output [8-1:0] nlf_sel_addrs_4,
  output [8-1:0] nlf_sel_addrs_5,
  output [8-1:0] nlf_sel_addrs_6
);
  wire [8-1:0] sel_u0;
  wire [8-1:0] sel_u1;
  wire [8-1:0] sel_x0;
  wire [8-1:0] sel_x1;
  wire [8-1:0] sel_xd0;
  wire [8-1:0] sel_xd1;
  assign nlf_sel_addrs_1 = sel_u0;
  assign nlf_sel_addrs_2 = sel_u1;
  assign nlf_sel_addrs_3 = sel_x0;
  assign nlf_sel_addrs_4 = sel_x1;
  assign nlf_sel_addrs_5 = sel_xd0;
  assign nlf_sel_addrs_6 = sel_xd1;
  sysgen_constant_2dde8007a9 constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(sel_u0)
  );
  sysgen_constant_c89d7a39f2 constant1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(sel_u1)
  );
  sysgen_constant_52f2ed9467 constant2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(sel_x0)
  );
  sysgen_constant_a16b067cb6 constant3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(sel_x1)
  );
  sysgen_constant_187e86716b constant4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(sel_xd0)
  );
  sysgen_constant_442e49a520 constant5 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(sel_xd1)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/slice_0/fb_func/nlf_u
module hilsim_ipcore_nlf_u_x1 (
  input [25-1:0] x,
  input [18-1:0] presc,
  input [18-1:0] gain,
  input [1-1:0] cfg_select_1,
  input [1-1:0] cfg_select_2,
  input [10-1:0] cfg_addr,
  input [16-1:0] cfg_data,
  input [1-1:0] cfg_we,
  input [1-1:0] nlf_switch,
  input clk_1,
  input ce_1,
  output [25-1:0] f_x
);
  wire [25-1:0] mult_out_scale_p_net;
  wire [25-1:0] sync_u_q_net;
  wire [18-1:0] register9_q_net;
  wire [18-1:0] register10_q_net;
  wire [1-1:0] register2_q_net_x0;
  wire [1-1:0] register1_q_net_x0;
  wire [10-1:0] register21_q_net;
  wire [16-1:0] register22_q_net;
  wire [1-1:0] register11_q_net;
  wire [1-1:0] register23_q_net;
  wire clk_net;
  wire ce_net;
  wire [10-1:0] addsub_s_net;
  wire [10-1:0] reinterpret_output_port_net;
  wire [10-1:0] const_1_op_net;
  wire [25-1:0] addsub1_s_net;
  wire [25-1:0] const_1_interp_op_net;
  wire [25-1:0] slice_dout_net;
  wire [16-1:0] lut_1_douta_net;
  wire [16-1:0] lut_1_doutb_net;
  wire [10-1:0] addra_mux_y_net;
  wire [16-1:0] dina_mux_y_net;
  wire [1-1:0] wea_mux_y_net;
  wire [16-1:0] zero_nlf_datatype_op_net;
  wire [1-1:0] bool_zero_we_op_net;
  wire [16-1:0] lut_2_douta_net;
  wire [16-1:0] lut_2_doutb_net;
  wire [10-1:0] addra_mux_2_y_net;
  wire [16-1:0] dina_mux_2_y_net;
  wire [1-1:0] wea_mux_2_y_net;
  wire [16-1:0] zero_nlf_datatype1_op_net;
  wire [1-1:0] bool_zero_we1_op_net;
  wire [16-1:0] register1_q_net;
  wire [16-1:0] register19_q_net;
  wire [16-1:0] register2_q_net;
  wire [16-1:0] register3_q_net;
  wire [10-1:0] cast_cutoff_lsbits_dout_net;
  wire [25-1:0] add_interpolate_s_net;
  wire [25-1:0] mult_a_p_net;
  wire [25-1:0] mult_b_p_net;
  wire [1-1:0] bool_zero_wea_op_net;
  wire [1-1:0] bool_zero_wea_2_op_net;
  wire [25-1:0] mult_inp_scale_p_net;
  wire [14-1:0] reint_sliced_output_port_net;
  wire [14-1:0] cutoff_msbits_y_net;
  wire [16-1:0] data_a_mux_y_net;
  wire [16-1:0] data_b_mux_y_net;
  wire [25-1:0] delay_sync_interpolate_q_net;
  wire [16-1:0] zero_nlf_dina_op_net;
  wire [16-1:0] zero_nlf_dina_2_op_net;
  assign f_x = mult_out_scale_p_net;
  assign sync_u_q_net = x;
  assign register9_q_net = presc;
  assign register10_q_net = gain;
  assign register2_q_net_x0 = cfg_select_1;
  assign register1_q_net_x0 = cfg_select_2;
  assign register21_q_net = cfg_addr;
  assign register22_q_net = cfg_data;
  assign register11_q_net = cfg_we;
  assign register23_q_net = nlf_switch;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlUnsigned),
    .a_bin_pt(0),
    .a_width(10),
    .b_arith(`xlUnsigned),
    .b_bin_pt(0),
    .b_width(10),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(11),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i1"),
    .extra_registers(0),
    .full_s_arith(1),
    .full_s_width(11),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlUnsigned),
    .s_bin_pt(0),
    .s_width(10)
  )
  addsub (
    .clr(1'b0),
    .en(1'b1),
    .a(reinterpret_output_port_net),
    .b(const_1_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub_s_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(26),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i2"),
    .extra_registers(3),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(4),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  addsub1 (
    .clr(1'b0),
    .en(1'b1),
    .a(const_1_interp_op_net),
    .b(slice_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub1_s_net)
  );
  hilsim_ipcore_xltdpram #(
    .addr_width_a(10),
    .addr_width_b(10),
    .clocking_mode("common_clock"),
    .data_width_a(16),
    .data_width_b(16),
    .latency(1),
    .mem_init_file("xpm_f5fed5_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_a("0"),
    .read_reset_b("0"),
    .write_mode_a("write_first"),
    .write_mode_b("write_first")
  )
  lut_1 (
    .ena(1'b1),
    .enb(1'b1),
    .rsta(1'b0),
    .rstb(1'b0),
    .addra(addra_mux_y_net),
    .dina(dina_mux_y_net),
    .wea(wea_mux_y_net),
    .addrb(addsub_s_net),
    .dinb(zero_nlf_datatype_op_net),
    .web(bool_zero_we_op_net),
    .a_clk(clk_net),
    .a_ce(ce_net),
    .b_clk(clk_net),
    .b_ce(ce_net),
    .douta(lut_1_douta_net),
    .doutb(lut_1_doutb_net)
  );
  hilsim_ipcore_xltdpram #(
    .addr_width_a(10),
    .addr_width_b(10),
    .clocking_mode("common_clock"),
    .data_width_a(16),
    .data_width_b(16),
    .latency(1),
    .mem_init_file("xpm_f5fed5_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_a("0"),
    .read_reset_b("0"),
    .write_mode_a("write_first"),
    .write_mode_b("write_first")
  )
  lut_2 (
    .ena(1'b1),
    .enb(1'b1),
    .rsta(1'b0),
    .rstb(1'b0),
    .addra(addra_mux_2_y_net),
    .dina(dina_mux_2_y_net),
    .wea(wea_mux_2_y_net),
    .addrb(addsub_s_net),
    .dinb(zero_nlf_datatype1_op_net),
    .web(bool_zero_we1_op_net),
    .a_clk(clk_net),
    .a_ce(ce_net),
    .b_clk(clk_net),
    .b_ce(ce_net),
    .douta(lut_2_douta_net),
    .doutb(lut_2_doutb_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(16),
    .init_value(16'b0000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(lut_2_douta_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register1_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(16),
    .init_value(16'b0000000000000000)
  )
  register19 (
    .en(1'b1),
    .rst(1'b0),
    .d(lut_1_douta_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register19_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(16),
    .init_value(16'b0000000000000000)
  )
  register2 (
    .en(1'b1),
    .rst(1'b0),
    .d(lut_1_doutb_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register2_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(16),
    .init_value(16'b0000000000000000)
  )
  register3 (
    .en(1'b1),
    .rst(1'b0),
    .d(lut_2_doutb_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register3_q_net)
  );
  sysgen_reinterpret_f4605e0022 reinterpret (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(cast_cutoff_lsbits_dout_net),
    .output_port(reinterpret_output_port_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(26),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i0"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  add_interpolate (
    .clr(1'b0),
    .en(1'b1),
    .a(mult_a_p_net),
    .b(mult_b_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(add_interpolate_s_net)
  );
  sysgen_mux_c832ae0d6a addra_mux (
    .clr(1'b0),
    .sel(register2_q_net_x0),
    .d0(reinterpret_output_port_net),
    .d1(register21_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(addra_mux_y_net)
  );
  sysgen_mux_c832ae0d6a addra_mux_2 (
    .clr(1'b0),
    .sel(register1_q_net_x0),
    .d0(reinterpret_output_port_net),
    .d1(register21_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(addra_mux_2_y_net)
  );
  sysgen_constant_caba551e44 bool_zero_we (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(bool_zero_we_op_net)
  );
  sysgen_constant_caba551e44 bool_zero_we1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(bool_zero_we1_op_net)
  );
  sysgen_constant_caba551e44 bool_zero_wea (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(bool_zero_wea_op_net)
  );
  sysgen_constant_caba551e44 bool_zero_wea_2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(bool_zero_wea_2_op_net)
  );
  hilsim_ipcore_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(23),
    .din_width(25),
    .dout_arith(2),
    .dout_bin_pt(9),
    .dout_width(10),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  cast_cutoff_lsbits (
    .clr(1'b0),
    .en(1'b1),
    .din(mult_inp_scale_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(cast_cutoff_lsbits_dout_net)
  );
  hilsim_ipcore_xlconvert #(
    .bool_conversion(0),
    .din_arith(1),
    .din_bin_pt(14),
    .din_width(14),
    .dout_arith(2),
    .dout_bin_pt(17),
    .dout_width(25),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  slice (
    .clr(1'b0),
    .en(1'b1),
    .din(reint_sliced_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(slice_dout_net)
  );
  sysgen_constant_7b59d789af const_1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(const_1_op_net)
  );
  sysgen_constant_ab97251e3b const_1_interp (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(const_1_interp_op_net)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(0),
    .new_msb(13),
    .x_width(25),
    .y_width(14)
  )
  cutoff_msbits (
    .x(mult_inp_scale_p_net),
    .y(cutoff_msbits_y_net)
  );
  sysgen_mux_ba276f04f0 data_a_mux (
    .clr(1'b0),
    .sel(register23_q_net),
    .d0(register19_q_net),
    .d1(register1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(data_a_mux_y_net)
  );
  sysgen_mux_ba276f04f0 data_b_mux (
    .clr(1'b0),
    .sel(register23_q_net),
    .d0(register2_q_net),
    .d1(register3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(data_b_mux_y_net)
  );
  hilsim_ipcore_xldelay #(
    .latency(4),
    .reg_retiming(0),
    .reset(0),
    .width(25)
  )
  delay_sync_interpolate (
    .en(1'b1),
    .rst(1'b0),
    .d(slice_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_sync_interpolate_q_net)
  );
  sysgen_mux_ba276f04f0 dina_mux (
    .clr(1'b0),
    .sel(register2_q_net_x0),
    .d0(zero_nlf_dina_op_net),
    .d1(register22_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(dina_mux_y_net)
  );
  sysgen_mux_ba276f04f0 dina_mux_2 (
    .clr(1'b0),
    .sel(register1_q_net_x0),
    .d0(zero_nlf_dina_2_op_net),
    .d1(register22_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(dina_mux_2_y_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(14),
    .a_width(16),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_a_type(0),
    .c_a_width(16),
    .c_b_type(0),
    .c_b_width(25),
    .c_baat(16),
    .c_output_width(41),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i4"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_a (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(data_a_mux_y_net),
    .b(addsub1_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_a_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(14),
    .a_width(16),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_a_type(0),
    .c_a_width(16),
    .c_b_type(0),
    .c_b_width(25),
    .c_baat(16),
    .c_output_width(41),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i4"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_b (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(data_b_mux_y_net),
    .b(delay_sync_interpolate_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_b_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(23),
    .p_width(25),
    .quantization(1)
  )
  mult_inp_scale (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(sync_u_q_net),
    .b(register9_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_inp_scale_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_out_scale (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(add_interpolate_s_net),
    .b(register10_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_out_scale_p_net)
  );
  sysgen_reinterpret_67d055efc4 reint_sliced (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(cutoff_msbits_y_net),
    .output_port(reint_sliced_output_port_net)
  );
  sysgen_mux_18d2538cb2 wea_mux (
    .clr(1'b0),
    .sel(register2_q_net_x0),
    .d0(bool_zero_wea_op_net),
    .d1(register11_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(wea_mux_y_net)
  );
  sysgen_mux_18d2538cb2 wea_mux_2 (
    .clr(1'b0),
    .sel(register1_q_net_x0),
    .d0(bool_zero_wea_2_op_net),
    .d1(register11_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(wea_mux_2_y_net)
  );
  sysgen_constant_f3b3f76499 zero_nlf_datatype (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(zero_nlf_datatype_op_net)
  );
  sysgen_constant_f3b3f76499 zero_nlf_datatype1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(zero_nlf_datatype1_op_net)
  );
  sysgen_constant_f3b3f76499 zero_nlf_dina (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(zero_nlf_dina_op_net)
  );
  sysgen_constant_f3b3f76499 zero_nlf_dina_2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(zero_nlf_dina_2_op_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/slice_0/fb_func/nlf_x
module hilsim_ipcore_nlf_x_x1 (
  input [25-1:0] x,
  input [18-1:0] presc,
  input [18-1:0] gain,
  input [1-1:0] cfg_select_1,
  input [1-1:0] cfg_select_2,
  input [10-1:0] cfg_addr,
  input [16-1:0] cfg_data,
  input [1-1:0] cfg_we,
  input [1-1:0] nlf_switch,
  input clk_1,
  input ce_1,
  output [25-1:0] f_x
);
  wire [25-1:0] mult_out_scale_p_net;
  wire [25-1:0] sync_x_q_net;
  wire [18-1:0] register25_q_net;
  wire [18-1:0] register4_q_net;
  wire [1-1:0] register13_q_net;
  wire [1-1:0] register3_q_net_x0;
  wire [10-1:0] register14_q_net;
  wire [16-1:0] register16_q_net;
  wire [1-1:0] register5_q_net;
  wire [1-1:0] register24_q_net;
  wire clk_net;
  wire ce_net;
  wire [10-1:0] addsub_s_net;
  wire [10-1:0] reinterpret_output_port_net;
  wire [10-1:0] const_1_op_net;
  wire [25-1:0] addsub1_s_net;
  wire [25-1:0] const_1_interp_op_net;
  wire [25-1:0] slice_dout_net;
  wire [16-1:0] lut_1_douta_net;
  wire [16-1:0] lut_1_doutb_net;
  wire [10-1:0] addra_mux_y_net;
  wire [16-1:0] dina_mux_y_net;
  wire [1-1:0] wea_mux_y_net;
  wire [16-1:0] zero_nlf_datatype_op_net;
  wire [1-1:0] bool_zero_we_op_net;
  wire [16-1:0] lut_2_douta_net;
  wire [16-1:0] lut_2_doutb_net;
  wire [10-1:0] addra_mux_2_y_net;
  wire [16-1:0] dina_mux_2_y_net;
  wire [1-1:0] wea_mux_2_y_net;
  wire [16-1:0] zero_nlf_datatype1_op_net;
  wire [1-1:0] bool_zero_we1_op_net;
  wire [16-1:0] register1_q_net;
  wire [16-1:0] register19_q_net;
  wire [16-1:0] register2_q_net;
  wire [16-1:0] register3_q_net;
  wire [10-1:0] cast_cutoff_lsbits_dout_net;
  wire [25-1:0] add_interpolate_s_net;
  wire [25-1:0] mult_a_p_net;
  wire [25-1:0] mult_b_p_net;
  wire [1-1:0] bool_zero_wea_op_net;
  wire [1-1:0] bool_zero_wea_2_op_net;
  wire [25-1:0] mult_inp_scale_p_net;
  wire [14-1:0] reint_sliced_output_port_net;
  wire [14-1:0] cutoff_msbits_y_net;
  wire [16-1:0] data_a_mux_y_net;
  wire [16-1:0] data_b_mux_y_net;
  wire [25-1:0] delay_sync_interpolate_q_net;
  wire [16-1:0] zero_nlf_dina_op_net;
  wire [16-1:0] zero_nlf_dina_2_op_net;
  assign f_x = mult_out_scale_p_net;
  assign sync_x_q_net = x;
  assign register25_q_net = presc;
  assign register4_q_net = gain;
  assign register13_q_net = cfg_select_1;
  assign register3_q_net_x0 = cfg_select_2;
  assign register14_q_net = cfg_addr;
  assign register16_q_net = cfg_data;
  assign register5_q_net = cfg_we;
  assign register24_q_net = nlf_switch;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlUnsigned),
    .a_bin_pt(0),
    .a_width(10),
    .b_arith(`xlUnsigned),
    .b_bin_pt(0),
    .b_width(10),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(11),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i1"),
    .extra_registers(0),
    .full_s_arith(1),
    .full_s_width(11),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlUnsigned),
    .s_bin_pt(0),
    .s_width(10)
  )
  addsub (
    .clr(1'b0),
    .en(1'b1),
    .a(reinterpret_output_port_net),
    .b(const_1_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub_s_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(26),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i2"),
    .extra_registers(3),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(4),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  addsub1 (
    .clr(1'b0),
    .en(1'b1),
    .a(const_1_interp_op_net),
    .b(slice_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub1_s_net)
  );
  hilsim_ipcore_xltdpram #(
    .addr_width_a(10),
    .addr_width_b(10),
    .clocking_mode("common_clock"),
    .data_width_a(16),
    .data_width_b(16),
    .latency(1),
    .mem_init_file("xpm_f5fed5_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_a("0"),
    .read_reset_b("0"),
    .write_mode_a("write_first"),
    .write_mode_b("write_first")
  )
  lut_1 (
    .ena(1'b1),
    .enb(1'b1),
    .rsta(1'b0),
    .rstb(1'b0),
    .addra(addra_mux_y_net),
    .dina(dina_mux_y_net),
    .wea(wea_mux_y_net),
    .addrb(addsub_s_net),
    .dinb(zero_nlf_datatype_op_net),
    .web(bool_zero_we_op_net),
    .a_clk(clk_net),
    .a_ce(ce_net),
    .b_clk(clk_net),
    .b_ce(ce_net),
    .douta(lut_1_douta_net),
    .doutb(lut_1_doutb_net)
  );
  hilsim_ipcore_xltdpram #(
    .addr_width_a(10),
    .addr_width_b(10),
    .clocking_mode("common_clock"),
    .data_width_a(16),
    .data_width_b(16),
    .latency(1),
    .mem_init_file("xpm_f5fed5_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_a("0"),
    .read_reset_b("0"),
    .write_mode_a("write_first"),
    .write_mode_b("write_first")
  )
  lut_2 (
    .ena(1'b1),
    .enb(1'b1),
    .rsta(1'b0),
    .rstb(1'b0),
    .addra(addra_mux_2_y_net),
    .dina(dina_mux_2_y_net),
    .wea(wea_mux_2_y_net),
    .addrb(addsub_s_net),
    .dinb(zero_nlf_datatype1_op_net),
    .web(bool_zero_we1_op_net),
    .a_clk(clk_net),
    .a_ce(ce_net),
    .b_clk(clk_net),
    .b_ce(ce_net),
    .douta(lut_2_douta_net),
    .doutb(lut_2_doutb_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(16),
    .init_value(16'b0000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(lut_2_douta_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register1_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(16),
    .init_value(16'b0000000000000000)
  )
  register19 (
    .en(1'b1),
    .rst(1'b0),
    .d(lut_1_douta_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register19_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(16),
    .init_value(16'b0000000000000000)
  )
  register2 (
    .en(1'b1),
    .rst(1'b0),
    .d(lut_1_doutb_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register2_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(16),
    .init_value(16'b0000000000000000)
  )
  register3 (
    .en(1'b1),
    .rst(1'b0),
    .d(lut_2_doutb_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register3_q_net)
  );
  sysgen_reinterpret_f4605e0022 reinterpret (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(cast_cutoff_lsbits_dout_net),
    .output_port(reinterpret_output_port_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(26),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i0"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  add_interpolate (
    .clr(1'b0),
    .en(1'b1),
    .a(mult_a_p_net),
    .b(mult_b_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(add_interpolate_s_net)
  );
  sysgen_mux_c832ae0d6a addra_mux (
    .clr(1'b0),
    .sel(register13_q_net),
    .d0(reinterpret_output_port_net),
    .d1(register14_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(addra_mux_y_net)
  );
  sysgen_mux_c832ae0d6a addra_mux_2 (
    .clr(1'b0),
    .sel(register3_q_net_x0),
    .d0(reinterpret_output_port_net),
    .d1(register14_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(addra_mux_2_y_net)
  );
  sysgen_constant_caba551e44 bool_zero_we (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(bool_zero_we_op_net)
  );
  sysgen_constant_caba551e44 bool_zero_we1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(bool_zero_we1_op_net)
  );
  sysgen_constant_caba551e44 bool_zero_wea (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(bool_zero_wea_op_net)
  );
  sysgen_constant_caba551e44 bool_zero_wea_2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(bool_zero_wea_2_op_net)
  );
  hilsim_ipcore_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(23),
    .din_width(25),
    .dout_arith(2),
    .dout_bin_pt(9),
    .dout_width(10),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  cast_cutoff_lsbits (
    .clr(1'b0),
    .en(1'b1),
    .din(mult_inp_scale_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(cast_cutoff_lsbits_dout_net)
  );
  hilsim_ipcore_xlconvert #(
    .bool_conversion(0),
    .din_arith(1),
    .din_bin_pt(14),
    .din_width(14),
    .dout_arith(2),
    .dout_bin_pt(17),
    .dout_width(25),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  slice (
    .clr(1'b0),
    .en(1'b1),
    .din(reint_sliced_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(slice_dout_net)
  );
  sysgen_constant_7b59d789af const_1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(const_1_op_net)
  );
  sysgen_constant_ab97251e3b const_1_interp (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(const_1_interp_op_net)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(0),
    .new_msb(13),
    .x_width(25),
    .y_width(14)
  )
  cutoff_msbits (
    .x(mult_inp_scale_p_net),
    .y(cutoff_msbits_y_net)
  );
  sysgen_mux_ba276f04f0 data_a_mux (
    .clr(1'b0),
    .sel(register24_q_net),
    .d0(register19_q_net),
    .d1(register1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(data_a_mux_y_net)
  );
  sysgen_mux_ba276f04f0 data_b_mux (
    .clr(1'b0),
    .sel(register24_q_net),
    .d0(register2_q_net),
    .d1(register3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(data_b_mux_y_net)
  );
  hilsim_ipcore_xldelay #(
    .latency(4),
    .reg_retiming(0),
    .reset(0),
    .width(25)
  )
  delay_sync_interpolate (
    .en(1'b1),
    .rst(1'b0),
    .d(slice_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_sync_interpolate_q_net)
  );
  sysgen_mux_ba276f04f0 dina_mux (
    .clr(1'b0),
    .sel(register13_q_net),
    .d0(zero_nlf_dina_op_net),
    .d1(register16_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(dina_mux_y_net)
  );
  sysgen_mux_ba276f04f0 dina_mux_2 (
    .clr(1'b0),
    .sel(register3_q_net_x0),
    .d0(zero_nlf_dina_2_op_net),
    .d1(register16_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(dina_mux_2_y_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(14),
    .a_width(16),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_a_type(0),
    .c_a_width(16),
    .c_b_type(0),
    .c_b_width(25),
    .c_baat(16),
    .c_output_width(41),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i4"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_a (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(data_a_mux_y_net),
    .b(addsub1_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_a_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(14),
    .a_width(16),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_a_type(0),
    .c_a_width(16),
    .c_b_type(0),
    .c_b_width(25),
    .c_baat(16),
    .c_output_width(41),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i4"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_b (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(data_b_mux_y_net),
    .b(delay_sync_interpolate_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_b_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(23),
    .p_width(25),
    .quantization(1)
  )
  mult_inp_scale (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(sync_x_q_net),
    .b(register25_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_inp_scale_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_out_scale (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(add_interpolate_s_net),
    .b(register4_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_out_scale_p_net)
  );
  sysgen_reinterpret_67d055efc4 reint_sliced (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(cutoff_msbits_y_net),
    .output_port(reint_sliced_output_port_net)
  );
  sysgen_mux_18d2538cb2 wea_mux (
    .clr(1'b0),
    .sel(register13_q_net),
    .d0(bool_zero_wea_op_net),
    .d1(register5_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(wea_mux_y_net)
  );
  sysgen_mux_18d2538cb2 wea_mux_2 (
    .clr(1'b0),
    .sel(register3_q_net_x0),
    .d0(bool_zero_wea_2_op_net),
    .d1(register5_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(wea_mux_2_y_net)
  );
  sysgen_constant_f3b3f76499 zero_nlf_datatype (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(zero_nlf_datatype_op_net)
  );
  sysgen_constant_f3b3f76499 zero_nlf_datatype1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(zero_nlf_datatype1_op_net)
  );
  sysgen_constant_f3b3f76499 zero_nlf_dina (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(zero_nlf_dina_op_net)
  );
  sysgen_constant_f3b3f76499 zero_nlf_dina_2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(zero_nlf_dina_2_op_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/slice_0/fb_func/nlf_xd
module hilsim_ipcore_nlf_xd (
  input [25-1:0] x,
  input [18-1:0] presc,
  input [18-1:0] gain,
  input [1-1:0] cfg_select_1,
  input [1-1:0] cfg_select_2,
  input [10-1:0] cfg_addr,
  input [16-1:0] cfg_data,
  input [1-1:0] cfg_we,
  input [1-1:0] nlf_switch,
  input clk_1,
  input ce_1,
  output [25-1:0] f_x
);
  wire [25-1:0] mult_out_scale_p_net;
  wire [25-1:0] sync_xdot_q_net;
  wire [18-1:0] register18_q_net;
  wire [18-1:0] register26_q_net;
  wire [1-1:0] register6_q_net;
  wire [1-1:0] register20_q_net;
  wire [10-1:0] register7_q_net;
  wire [16-1:0] register8_q_net;
  wire [1-1:0] register27_q_net;
  wire [1-1:0] register17_q_net;
  wire clk_net;
  wire ce_net;
  wire [10-1:0] addsub_s_net;
  wire [10-1:0] reinterpret_output_port_net;
  wire [10-1:0] const_1_op_net;
  wire [25-1:0] addsub1_s_net;
  wire [25-1:0] const_1_interp_op_net;
  wire [25-1:0] slice_dout_net;
  wire [16-1:0] lut_1_douta_net;
  wire [16-1:0] lut_1_doutb_net;
  wire [10-1:0] addra_mux_y_net;
  wire [16-1:0] dina_mux_y_net;
  wire [1-1:0] wea_mux_y_net;
  wire [16-1:0] zero_nlf_datatype_op_net;
  wire [1-1:0] bool_zero_we_op_net;
  wire [16-1:0] lut_2_douta_net;
  wire [16-1:0] lut_2_doutb_net;
  wire [10-1:0] addra_mux_2_y_net;
  wire [16-1:0] dina_mux_2_y_net;
  wire [1-1:0] wea_mux_2_y_net;
  wire [16-1:0] zero_nlf_datatype1_op_net;
  wire [1-1:0] bool_zero_we1_op_net;
  wire [16-1:0] register1_q_net;
  wire [16-1:0] register2_q_net;
  wire [16-1:0] register3_q_net;
  wire [16-1:0] register4_q_net;
  wire [10-1:0] cast_cutoff_lsbits_dout_net;
  wire [25-1:0] add_interpolate_s_net;
  wire [25-1:0] mult_a_p_net;
  wire [25-1:0] mult_b_p_net;
  wire [1-1:0] bool_zero_wea_op_net;
  wire [1-1:0] bool_zero_wea_2_op_net;
  wire [25-1:0] mult_inp_scale_p_net;
  wire [14-1:0] reint_sliced_output_port_net;
  wire [14-1:0] cutoff_msbits_y_net;
  wire [16-1:0] data_a_mux_y_net;
  wire [16-1:0] data_b_mux_y_net;
  wire [25-1:0] delay_sync_interpolate_q_net;
  wire [16-1:0] zero_nlf_dina_op_net;
  wire [16-1:0] zero_nlf_dina_2_op_net;
  assign f_x = mult_out_scale_p_net;
  assign sync_xdot_q_net = x;
  assign register18_q_net = presc;
  assign register26_q_net = gain;
  assign register6_q_net = cfg_select_1;
  assign register20_q_net = cfg_select_2;
  assign register7_q_net = cfg_addr;
  assign register8_q_net = cfg_data;
  assign register27_q_net = cfg_we;
  assign register17_q_net = nlf_switch;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlUnsigned),
    .a_bin_pt(0),
    .a_width(10),
    .b_arith(`xlUnsigned),
    .b_bin_pt(0),
    .b_width(10),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(11),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i1"),
    .extra_registers(0),
    .full_s_arith(1),
    .full_s_width(11),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlUnsigned),
    .s_bin_pt(0),
    .s_width(10)
  )
  addsub (
    .clr(1'b0),
    .en(1'b1),
    .a(reinterpret_output_port_net),
    .b(const_1_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub_s_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(26),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i2"),
    .extra_registers(3),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(4),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  addsub1 (
    .clr(1'b0),
    .en(1'b1),
    .a(const_1_interp_op_net),
    .b(slice_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub1_s_net)
  );
  hilsim_ipcore_xltdpram #(
    .addr_width_a(10),
    .addr_width_b(10),
    .clocking_mode("common_clock"),
    .data_width_a(16),
    .data_width_b(16),
    .latency(1),
    .mem_init_file("xpm_f5fed5_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_a("0"),
    .read_reset_b("0"),
    .write_mode_a("write_first"),
    .write_mode_b("write_first")
  )
  lut_1 (
    .ena(1'b1),
    .enb(1'b1),
    .rsta(1'b0),
    .rstb(1'b0),
    .addra(addra_mux_y_net),
    .dina(dina_mux_y_net),
    .wea(wea_mux_y_net),
    .addrb(addsub_s_net),
    .dinb(zero_nlf_datatype_op_net),
    .web(bool_zero_we_op_net),
    .a_clk(clk_net),
    .a_ce(ce_net),
    .b_clk(clk_net),
    .b_ce(ce_net),
    .douta(lut_1_douta_net),
    .doutb(lut_1_doutb_net)
  );
  hilsim_ipcore_xltdpram #(
    .addr_width_a(10),
    .addr_width_b(10),
    .clocking_mode("common_clock"),
    .data_width_a(16),
    .data_width_b(16),
    .latency(1),
    .mem_init_file("xpm_f5fed5_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_a("0"),
    .read_reset_b("0"),
    .write_mode_a("write_first"),
    .write_mode_b("write_first")
  )
  lut_2 (
    .ena(1'b1),
    .enb(1'b1),
    .rsta(1'b0),
    .rstb(1'b0),
    .addra(addra_mux_2_y_net),
    .dina(dina_mux_2_y_net),
    .wea(wea_mux_2_y_net),
    .addrb(addsub_s_net),
    .dinb(zero_nlf_datatype1_op_net),
    .web(bool_zero_we1_op_net),
    .a_clk(clk_net),
    .a_ce(ce_net),
    .b_clk(clk_net),
    .b_ce(ce_net),
    .douta(lut_2_douta_net),
    .doutb(lut_2_doutb_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(16),
    .init_value(16'b0000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(lut_2_douta_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register1_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(16),
    .init_value(16'b0000000000000000)
  )
  register2 (
    .en(1'b1),
    .rst(1'b0),
    .d(lut_1_douta_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register2_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(16),
    .init_value(16'b0000000000000000)
  )
  register3 (
    .en(1'b1),
    .rst(1'b0),
    .d(lut_1_doutb_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register3_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(16),
    .init_value(16'b0000000000000000)
  )
  register4 (
    .en(1'b1),
    .rst(1'b0),
    .d(lut_2_doutb_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register4_q_net)
  );
  sysgen_reinterpret_f4605e0022 reinterpret (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(cast_cutoff_lsbits_dout_net),
    .output_port(reinterpret_output_port_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(26),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i0"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  add_interpolate (
    .clr(1'b0),
    .en(1'b1),
    .a(mult_a_p_net),
    .b(mult_b_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(add_interpolate_s_net)
  );
  sysgen_mux_c832ae0d6a addra_mux (
    .clr(1'b0),
    .sel(register6_q_net),
    .d0(reinterpret_output_port_net),
    .d1(register7_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(addra_mux_y_net)
  );
  sysgen_mux_c832ae0d6a addra_mux_2 (
    .clr(1'b0),
    .sel(register20_q_net),
    .d0(reinterpret_output_port_net),
    .d1(register7_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(addra_mux_2_y_net)
  );
  sysgen_constant_caba551e44 bool_zero_we (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(bool_zero_we_op_net)
  );
  sysgen_constant_caba551e44 bool_zero_we1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(bool_zero_we1_op_net)
  );
  sysgen_constant_caba551e44 bool_zero_wea (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(bool_zero_wea_op_net)
  );
  sysgen_constant_caba551e44 bool_zero_wea_2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(bool_zero_wea_2_op_net)
  );
  hilsim_ipcore_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(23),
    .din_width(25),
    .dout_arith(2),
    .dout_bin_pt(9),
    .dout_width(10),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  cast_cutoff_lsbits (
    .clr(1'b0),
    .en(1'b1),
    .din(mult_inp_scale_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(cast_cutoff_lsbits_dout_net)
  );
  hilsim_ipcore_xlconvert #(
    .bool_conversion(0),
    .din_arith(1),
    .din_bin_pt(14),
    .din_width(14),
    .dout_arith(2),
    .dout_bin_pt(17),
    .dout_width(25),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  slice (
    .clr(1'b0),
    .en(1'b1),
    .din(reint_sliced_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(slice_dout_net)
  );
  sysgen_constant_7b59d789af const_1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(const_1_op_net)
  );
  sysgen_constant_ab97251e3b const_1_interp (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(const_1_interp_op_net)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(0),
    .new_msb(13),
    .x_width(25),
    .y_width(14)
  )
  cutoff_msbits (
    .x(mult_inp_scale_p_net),
    .y(cutoff_msbits_y_net)
  );
  sysgen_mux_ba276f04f0 data_a_mux (
    .clr(1'b0),
    .sel(register17_q_net),
    .d0(register2_q_net),
    .d1(register1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(data_a_mux_y_net)
  );
  sysgen_mux_ba276f04f0 data_b_mux (
    .clr(1'b0),
    .sel(register17_q_net),
    .d0(register3_q_net),
    .d1(register4_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(data_b_mux_y_net)
  );
  hilsim_ipcore_xldelay #(
    .latency(4),
    .reg_retiming(0),
    .reset(0),
    .width(25)
  )
  delay_sync_interpolate (
    .en(1'b1),
    .rst(1'b0),
    .d(slice_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_sync_interpolate_q_net)
  );
  sysgen_mux_ba276f04f0 dina_mux (
    .clr(1'b0),
    .sel(register6_q_net),
    .d0(zero_nlf_dina_op_net),
    .d1(register8_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(dina_mux_y_net)
  );
  sysgen_mux_ba276f04f0 dina_mux_2 (
    .clr(1'b0),
    .sel(register20_q_net),
    .d0(zero_nlf_dina_2_op_net),
    .d1(register8_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(dina_mux_2_y_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(14),
    .a_width(16),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_a_type(0),
    .c_a_width(16),
    .c_b_type(0),
    .c_b_width(25),
    .c_baat(16),
    .c_output_width(41),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i4"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_a (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(data_a_mux_y_net),
    .b(addsub1_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_a_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(14),
    .a_width(16),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_a_type(0),
    .c_a_width(16),
    .c_b_type(0),
    .c_b_width(25),
    .c_baat(16),
    .c_output_width(41),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i4"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_b (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(data_b_mux_y_net),
    .b(delay_sync_interpolate_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_b_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(23),
    .p_width(25),
    .quantization(1)
  )
  mult_inp_scale (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(sync_xdot_q_net),
    .b(register18_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_inp_scale_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_out_scale (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(add_interpolate_s_net),
    .b(register26_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_out_scale_p_net)
  );
  sysgen_reinterpret_67d055efc4 reint_sliced (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(cutoff_msbits_y_net),
    .output_port(reint_sliced_output_port_net)
  );
  sysgen_mux_18d2538cb2 wea_mux (
    .clr(1'b0),
    .sel(register6_q_net),
    .d0(bool_zero_wea_op_net),
    .d1(register27_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(wea_mux_y_net)
  );
  sysgen_mux_18d2538cb2 wea_mux_2 (
    .clr(1'b0),
    .sel(register20_q_net),
    .d0(bool_zero_wea_2_op_net),
    .d1(register27_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(wea_mux_2_y_net)
  );
  sysgen_constant_f3b3f76499 zero_nlf_datatype (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(zero_nlf_datatype_op_net)
  );
  sysgen_constant_f3b3f76499 zero_nlf_datatype1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(zero_nlf_datatype1_op_net)
  );
  sysgen_constant_f3b3f76499 zero_nlf_dina (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(zero_nlf_dina_op_net)
  );
  sysgen_constant_f3b3f76499 zero_nlf_dina_2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(zero_nlf_dina_2_op_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/slice_0/fb_func
module hilsim_ipcore_fb_func_x1 (
  input [25-1:0] u,
  input [25-1:0] x,
  input [25-1:0] xd,
  input [8-1:0] nlf_cfg_bus_1,
  input [1-1:0] nlf_switch_bus_1,
  input [8-1:0] nlf_sel_addrs_1,
  input [1-1:0] x_mux,
  input [18-1:0] x_gain,
  input [18-1:0] x_nlf_presc,
  input [18-1:0] x_nlf_gain,
  input [1-1:0] xd_mux,
  input [18-1:0] xd_gain,
  input [18-1:0] xd_nlf_presc,
  input [18-1:0] xd_nlf_gain,
  input [1-1:0] u_mux,
  input [18-1:0] u_gain,
  input [18-1:0] u_nlf_presc,
  input [18-1:0] u_nlf_gain,
  input [10-1:0] nlf_cfg_bus_2,
  input [16-1:0] nlf_cfg_bus_3,
  input [1-1:0] nlf_cfg_bus_4,
  input [1-1:0] nlf_switch_bus_2,
  input [1-1:0] nlf_switch_bus_3,
  input [8-1:0] nlf_sel_addrs_2,
  input [8-1:0] nlf_sel_addrs_3,
  input [8-1:0] nlf_sel_addrs_4,
  input [8-1:0] nlf_sel_addrs_5,
  input [8-1:0] nlf_sel_addrs_6,
  input clk_1,
  input ce_1,
  output [25-1:0] xdd
);
  wire [25-1:0] add_stage_2_s_net;
  wire [25-1:0] sync_u_q_net;
  wire [25-1:0] sync_x_q_net;
  wire [25-1:0] sync_xdot_q_net;
  wire [8-1:0] seladdr;
  wire [1-1:0] switch_u;
  wire [8-1:0] sel_u0;
  wire [1-1:0] clkxreg_slice1_cfg2_q_net;
  wire [18-1:0] register4_q_net_x0;
  wire [18-1:0] clkxreg_slice1_cfg4_q_net;
  wire [18-1:0] clkxreg_slice1_cfg3_q_net;
  wire [1-1:0] clkxreg_slice1_cfg6_q_net;
  wire [18-1:0] register5_q_net_x0;
  wire [18-1:0] clkxreg_slice1_cfg8_q_net;
  wire [18-1:0] clkxreg_slice1_cfg7_q_net;
  wire [1-1:0] clkxreg_slice1_cfg10_q_net;
  wire [18-1:0] register6_q_net_x0;
  wire [18-1:0] clkxreg_slice1_cfg12_q_net;
  wire [18-1:0] clkxreg_slice1_cfg11_q_net;
  wire [10-1:0] delay_q_net;
  wire [16-1:0] tmp_lut_doutb_net;
  wire [1-1:0] delay1_q_net;
  wire [1-1:0] switch_x;
  wire [1-1:0] switch_xd;
  wire [8-1:0] sel_u1;
  wire [8-1:0] sel_x0;
  wire [8-1:0] sel_x1;
  wire [8-1:0] sel_xd0;
  wire [8-1:0] sel_xd1;
  wire clk_net;
  wire ce_net;
  wire [25-1:0] mult_out_scale_p_net;
  wire [18-1:0] register9_q_net;
  wire [18-1:0] register10_q_net;
  wire [1-1:0] register2_q_net;
  wire [1-1:0] register1_q_net;
  wire [10-1:0] register21_q_net;
  wire [16-1:0] register22_q_net;
  wire [1-1:0] register11_q_net;
  wire [1-1:0] register23_q_net;
  wire [25-1:0] mult_out_scale_p_net_x0;
  wire [18-1:0] register25_q_net;
  wire [18-1:0] register4_q_net;
  wire [1-1:0] register13_q_net;
  wire [1-1:0] register3_q_net;
  wire [10-1:0] register14_q_net;
  wire [16-1:0] register16_q_net;
  wire [1-1:0] register5_q_net;
  wire [1-1:0] register24_q_net;
  wire [25-1:0] mult_out_scale_p_net_x1;
  wire [18-1:0] register18_q_net;
  wire [18-1:0] register26_q_net;
  wire [1-1:0] register6_q_net;
  wire [1-1:0] register20_q_net;
  wire [10-1:0] register7_q_net;
  wire [16-1:0] register8_q_net;
  wire [1-1:0] register27_q_net;
  wire [1-1:0] register17_q_net;
  wire [1-1:0] relational1_op_net;
  wire [1-1:0] register12_q_net;
  wire [1-1:0] relational2_op_net;
  wire [1-1:0] register15_q_net;
  wire [1-1:0] register19_q_net;
  wire [1-1:0] relational_op_net;
  wire [1-1:0] relational5_op_net;
  wire [8-1:0] register28_q_net;
  wire [1-1:0] relational3_op_net;
  wire [1-1:0] relational4_op_net;
  wire [25-1:0] add_stage_1_s_net;
  wire [25-1:0] mult_u_gain_p_net;
  wire [25-1:0] mult_x_gain_p_net;
  wire [25-1:0] mult_xd_gain_p_net;
  wire [25-1:0] mux_u_nlf_bypass_y_net;
  wire [25-1:0] mux_x_nlf_bypass_y_net;
  wire [25-1:0] mux_xd_nlf_bypass_y_net;
  assign xdd = add_stage_2_s_net;
  assign sync_u_q_net = u;
  assign sync_x_q_net = x;
  assign sync_xdot_q_net = xd;
  assign seladdr = nlf_cfg_bus_1;
  assign switch_u = nlf_switch_bus_1;
  assign sel_u0 = nlf_sel_addrs_1;
  assign clkxreg_slice1_cfg2_q_net = x_mux;
  assign register4_q_net_x0 = x_gain;
  assign clkxreg_slice1_cfg4_q_net = x_nlf_presc;
  assign clkxreg_slice1_cfg3_q_net = x_nlf_gain;
  assign clkxreg_slice1_cfg6_q_net = xd_mux;
  assign register5_q_net_x0 = xd_gain;
  assign clkxreg_slice1_cfg8_q_net = xd_nlf_presc;
  assign clkxreg_slice1_cfg7_q_net = xd_nlf_gain;
  assign clkxreg_slice1_cfg10_q_net = u_mux;
  assign register6_q_net_x0 = u_gain;
  assign clkxreg_slice1_cfg12_q_net = u_nlf_presc;
  assign clkxreg_slice1_cfg11_q_net = u_nlf_gain;
  assign delay_q_net = nlf_cfg_bus_2;
  assign tmp_lut_doutb_net = nlf_cfg_bus_3;
  assign delay1_q_net = nlf_cfg_bus_4;
  assign switch_x = nlf_switch_bus_2;
  assign switch_xd = nlf_switch_bus_3;
  assign sel_u1 = nlf_sel_addrs_2;
  assign sel_x0 = nlf_sel_addrs_3;
  assign sel_x1 = nlf_sel_addrs_4;
  assign sel_xd0 = nlf_sel_addrs_5;
  assign sel_xd1 = nlf_sel_addrs_6;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  hilsim_ipcore_nlf_u_x1 nlf_u (
    .x(sync_u_q_net),
    .presc(register9_q_net),
    .gain(register10_q_net),
    .cfg_select_1(register2_q_net),
    .cfg_select_2(register1_q_net),
    .cfg_addr(register21_q_net),
    .cfg_data(register22_q_net),
    .cfg_we(register11_q_net),
    .nlf_switch(register23_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .f_x(mult_out_scale_p_net)
  );
  hilsim_ipcore_nlf_x_x1 nlf_x (
    .x(sync_x_q_net),
    .presc(register25_q_net),
    .gain(register4_q_net),
    .cfg_select_1(register13_q_net),
    .cfg_select_2(register3_q_net),
    .cfg_addr(register14_q_net),
    .cfg_data(register16_q_net),
    .cfg_we(register5_q_net),
    .nlf_switch(register24_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .f_x(mult_out_scale_p_net_x0)
  );
  hilsim_ipcore_nlf_xd nlf_xd (
    .x(sync_xdot_q_net),
    .presc(register18_q_net),
    .gain(register26_q_net),
    .cfg_select_1(register6_q_net),
    .cfg_select_2(register20_q_net),
    .cfg_addr(register7_q_net),
    .cfg_data(register8_q_net),
    .cfg_we(register27_q_net),
    .nlf_switch(register17_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .f_x(mult_out_scale_p_net_x1)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(relational1_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register1_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register10 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg11_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register10_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register11 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register11_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register12 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg10_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register12_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register13 (
    .en(1'b1),
    .rst(1'b0),
    .d(relational2_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register13_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(10),
    .init_value(10'b0000000000)
  )
  register14 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register14_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register15 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg2_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register15_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(16),
    .init_value(16'b0000000000000000)
  )
  register16 (
    .en(1'b1),
    .rst(1'b0),
    .d(tmp_lut_doutb_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register16_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register17 (
    .en(1'b1),
    .rst(1'b0),
    .d(switch_xd),
    .clk(clk_net),
    .ce(ce_net),
    .q(register17_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register18 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg8_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register18_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register19 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg6_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register19_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register2 (
    .en(1'b1),
    .rst(1'b0),
    .d(relational_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register2_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register20 (
    .en(1'b1),
    .rst(1'b0),
    .d(relational5_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register20_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(10),
    .init_value(10'b0000000000)
  )
  register21 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register21_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(16),
    .init_value(16'b0000000000000000)
  )
  register22 (
    .en(1'b1),
    .rst(1'b0),
    .d(tmp_lut_doutb_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register22_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register23 (
    .en(1'b1),
    .rst(1'b0),
    .d(switch_u),
    .clk(clk_net),
    .ce(ce_net),
    .q(register23_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register24 (
    .en(1'b1),
    .rst(1'b0),
    .d(switch_x),
    .clk(clk_net),
    .ce(ce_net),
    .q(register24_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register25 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg4_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register25_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register26 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg7_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register26_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register27 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register27_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(8),
    .init_value(8'b00000000)
  )
  register28 (
    .en(1'b1),
    .rst(1'b0),
    .d(seladdr),
    .clk(clk_net),
    .ce(ce_net),
    .q(register28_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register3 (
    .en(1'b1),
    .rst(1'b0),
    .d(relational3_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register3_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register4 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register4_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register5 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register5_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register6 (
    .en(1'b1),
    .rst(1'b0),
    .d(relational4_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register6_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(10),
    .init_value(10'b0000000000)
  )
  register7 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register7_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(16),
    .init_value(16'b0000000000000000)
  )
  register8 (
    .en(1'b1),
    .rst(1'b0),
    .d(tmp_lut_doutb_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register8_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register9 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg12_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register9_q_net)
  );
  sysgen_relational_a2a0814d7a relational (
    .clr(1'b0),
    .a(register28_q_net),
    .b(sel_u0),
    .clk(clk_net),
    .ce(ce_net),
    .op(relational_op_net)
  );
  sysgen_relational_a2a0814d7a relational1 (
    .clr(1'b0),
    .a(register28_q_net),
    .b(sel_u1),
    .clk(clk_net),
    .ce(ce_net),
    .op(relational1_op_net)
  );
  sysgen_relational_a2a0814d7a relational2 (
    .clr(1'b0),
    .a(register28_q_net),
    .b(sel_x0),
    .clk(clk_net),
    .ce(ce_net),
    .op(relational2_op_net)
  );
  sysgen_relational_a2a0814d7a relational3 (
    .clr(1'b0),
    .a(register28_q_net),
    .b(sel_x1),
    .clk(clk_net),
    .ce(ce_net),
    .op(relational3_op_net)
  );
  sysgen_relational_a2a0814d7a relational4 (
    .clr(1'b0),
    .a(register28_q_net),
    .b(sel_xd0),
    .clk(clk_net),
    .ce(ce_net),
    .op(relational4_op_net)
  );
  sysgen_relational_a2a0814d7a relational5 (
    .clr(1'b0),
    .a(register28_q_net),
    .b(sel_xd1),
    .clk(clk_net),
    .ce(ce_net),
    .op(relational5_op_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(26),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i0"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  add_stage_1 (
    .clr(1'b0),
    .en(1'b1),
    .a(mult_u_gain_p_net),
    .b(mult_x_gain_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(add_stage_1_s_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(26),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i0"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  add_stage_2 (
    .clr(1'b0),
    .en(1'b1),
    .a(add_stage_1_s_net),
    .b(mult_xd_gain_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(add_stage_2_s_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_u_gain (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux_u_nlf_bypass_y_net),
    .b(register6_q_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_u_gain_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_x_gain (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux_x_nlf_bypass_y_net),
    .b(register4_q_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_x_gain_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_xd_gain (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux_xd_nlf_bypass_y_net),
    .b(register5_q_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_xd_gain_p_net)
  );
  sysgen_mux_d68a8b9ad8 mux_u_nlf_bypass (
    .clr(1'b0),
    .sel(register12_q_net),
    .d0(mult_out_scale_p_net),
    .d1(sync_u_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux_u_nlf_bypass_y_net)
  );
  sysgen_mux_d68a8b9ad8 mux_x_nlf_bypass (
    .clr(1'b0),
    .sel(register15_q_net),
    .d0(mult_out_scale_p_net_x0),
    .d1(sync_x_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux_x_nlf_bypass_y_net)
  );
  sysgen_mux_d68a8b9ad8 mux_xd_nlf_bypass (
    .clr(1'b0),
    .sel(register19_q_net),
    .d0(mult_out_scale_p_net_x1),
    .d1(sync_xdot_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux_xd_nlf_bypass_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/slice_0/fb_resync
module hilsim_ipcore_fb_resync_x0 (
  input [1-1:0] ts_sync_in,
  input [1-1:0] reset_in,
  input [25-1:0] u,
  input [25-1:0] x,
  input [25-1:0] xd,
  input [25-1:0] xdd,
  input clk_1,
  input ce_1,
  output [25-1:0] u_sync,
  output [25-1:0] x_sync,
  output [25-1:0] xd_sync,
  output [25-1:0] xdd_sync
);
  wire [25-1:0] sync_u_q_net;
  wire [25-1:0] sync_x_q_net;
  wire [25-1:0] sync_xdot_q_net;
  wire [25-1:0] sync_xdotdot_q_net;
  wire [1-1:0] sample_sync_q_net;
  wire [1-1:0] register1_q_net;
  wire [25-1:0] u_upsample_q_net;
  wire [25-1:0] mult_presc_p_net;
  wire [25-1:0] mult_presc_p_net_x0;
  wire [25-1:0] add_stage_2_s_net;
  wire clk_net;
  wire ce_net;
  assign u_sync = sync_u_q_net;
  assign x_sync = sync_x_q_net;
  assign xd_sync = sync_xdot_q_net;
  assign xdd_sync = sync_xdotdot_q_net;
  assign sample_sync_q_net = ts_sync_in;
  assign register1_q_net = reset_in;
  assign u_upsample_q_net = u;
  assign mult_presc_p_net = x;
  assign mult_presc_p_net_x0 = xd;
  assign add_stage_2_s_net = xdd;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  hilsim_ipcore_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  sync_u (
    .d(u_upsample_q_net),
    .rst(register1_q_net),
    .en(sample_sync_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(sync_u_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  sync_x (
    .d(mult_presc_p_net),
    .rst(register1_q_net),
    .en(sample_sync_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(sync_x_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  sync_xdot (
    .d(mult_presc_p_net_x0),
    .rst(register1_q_net),
    .en(sample_sync_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(sync_xdot_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  sync_xdotdot (
    .d(add_stage_2_s_net),
    .rst(register1_q_net),
    .en(sample_sync_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(sync_xdotdot_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/slice_0/int_xddot_xdot
module hilsim_ipcore_int_xddot_xdot_x0 (
  input [1-1:0] ts_sync_in,
  input [1-1:0] reset_in,
  input [25-1:0] xdot,
  input clk_1,
  input ce_1,
  output [47-1:0] x
);
  wire [47-1:0] shift_prescale_op_net;
  wire [47-1:0] prepend_zeros_dout_net;
  wire [47-1:0] int_accum_s_net;
  wire [1-1:0] sample_sync_q_net;
  wire [1-1:0] register1_q_net;
  wire [25-1:0] add_stage_2_s_net;
  wire clk_net;
  wire ce_net;
  wire [18-1:0] constant_op_net;
  wire [47-1:0] register_q_net;
  wire [25-1:0] register1_q_net_x0;
  wire [25-1:0] half_op_net;
  wire [25-1:0] add_stage_1_s_net;
  wire [25-1:0] add_stage_2_s_net_x0;
  wire [25-1:0] deltat_residual_mult_p_net;
  assign x = int_accum_s_net;
  assign sample_sync_q_net = ts_sync_in;
  assign register1_q_net = reset_in;
  assign add_stage_2_s_net = xdot;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_constant_df08e87bb9 constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(47),
    .init_value(47'b00000000000000000000000000000000000000000000000)
  )
  register (
    .d(int_accum_s_net),
    .rst(register1_q_net),
    .en(sample_sync_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register1 (
    .d(half_op_net),
    .rst(register1_q_net),
    .en(sample_sync_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register1_q_net_x0)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(18),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(27),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i4"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(27),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  add_stage_1 (
    .clr(1'b0),
    .en(1'b1),
    .a(add_stage_2_s_net),
    .b(half_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(add_stage_1_s_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(18),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(27),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i5"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(27),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  add_stage_2 (
    .clr(1'b0),
    .en(1'b1),
    .a(add_stage_1_s_net),
    .b(register1_q_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .s(add_stage_2_s_net_x0)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  deltat_residual_mult (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(add_stage_2_s_net_x0),
    .b(constant_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(deltat_residual_mult_p_net)
  );
  sysgen_scale_56fa4fa0f6 half (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .ip(add_stage_2_s_net),
    .op(half_op_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(39),
    .a_width(47),
    .b_arith(`xlSigned),
    .b_bin_pt(39),
    .b_width(47),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(48),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i6"),
    .extra_registers(1),
    .full_s_arith(2),
    .full_s_width(48),
    .latency(2),
    .overflow(2),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(39),
    .s_width(47)
  )
  int_accum (
    .clr(1'b0),
    .en(1'b1),
    .a(shift_prescale_op_net),
    .b(register_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(int_accum_s_net)
  );
  hilsim_ipcore_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(17),
    .din_width(25),
    .dout_arith(2),
    .dout_bin_pt(17),
    .dout_width(47),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  prepend_zeros (
    .clr(1'b0),
    .en(1'b1),
    .din(deltat_residual_mult_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(prepend_zeros_dout_net)
  );
  sysgen_scale_1b4332142c shift_prescale (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .ip(prepend_zeros_dout_net),
    .op(shift_prescale_op_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/slice_0/int_xdot_x
module hilsim_ipcore_int_xdot_x (
  input [1-1:0] ts_sync_in,
  input [1-1:0] reset_in,
  input [25-1:0] xdot,
  input clk_1,
  input ce_1,
  output [47-1:0] x
);
  wire [47-1:0] int_accum_s_net;
  wire [1-1:0] sample_sync_q_net;
  wire [1-1:0] register1_q_net;
  wire [25-1:0] mult_presc_p_net;
  wire clk_net;
  wire ce_net;
  wire [18-1:0] constant_op_net;
  wire [47-1:0] register_q_net;
  wire [25-1:0] register1_q_net_x0;
  wire [25-1:0] add_stage_3_s_net;
  wire [25-1:0] deltat_residual_mult_p_net;
  wire [25-1:0] half1_op_net;
  wire [47-1:0] shift_prescale_op_net;
  wire [47-1:0] prepend_zeros_dout_net;
  assign x = int_accum_s_net;
  assign sample_sync_q_net = ts_sync_in;
  assign register1_q_net = reset_in;
  assign mult_presc_p_net = xdot;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_constant_df08e87bb9 constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(47),
    .init_value(47'b00000000000000000000000000000000000000000000000)
  )
  register (
    .d(int_accum_s_net),
    .rst(register1_q_net),
    .en(sample_sync_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register1 (
    .d(mult_presc_p_net),
    .rst(register1_q_net),
    .en(sample_sync_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register1_q_net_x0)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(26),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i0"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  add_stage_3 (
    .clr(1'b0),
    .en(1'b1),
    .a(mult_presc_p_net),
    .b(register1_q_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .s(add_stage_3_s_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(18),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  deltat_residual_mult (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(half1_op_net),
    .b(constant_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(deltat_residual_mult_p_net)
  );
  sysgen_scale_56fa4fa0f6 half1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .ip(add_stage_3_s_net),
    .op(half1_op_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(39),
    .a_width(47),
    .b_arith(`xlSigned),
    .b_bin_pt(39),
    .b_width(47),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(48),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i6"),
    .extra_registers(1),
    .full_s_arith(2),
    .full_s_width(48),
    .latency(2),
    .overflow(2),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(39),
    .s_width(47)
  )
  int_accum (
    .clr(1'b0),
    .en(1'b1),
    .a(shift_prescale_op_net),
    .b(register_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(int_accum_s_net)
  );
  hilsim_ipcore_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(17),
    .din_width(25),
    .dout_arith(2),
    .dout_bin_pt(17),
    .dout_width(47),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  prepend_zeros (
    .clr(1'b0),
    .en(1'b1),
    .din(deltat_residual_mult_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(prepend_zeros_dout_net)
  );
  sysgen_scale_1b4332142c shift_prescale (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .ip(prepend_zeros_dout_net),
    .op(shift_prescale_op_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/slice_0/x_psc/barrel_left_shifter
module hilsim_ipcore_barrel_left_shifter_x0 (
  input [47-1:0] in,
  input [5-1:0] shift_by,
  input clk_1,
  input ce_1,
  output [78-1:0] out
);
  wire [78-1:0] mux4_y_net;
  wire [47-1:0] int_accum_s_net;
  wire [5-1:0] register9_q_net;
  wire clk_net;
  wire ce_net;
  wire [48-1:0] mux_y_net;
  wire [1-1:0] bit0_y_net;
  wire [47-1:0] shift1_op_net;
  wire [50-1:0] mux1_y_net;
  wire [1-1:0] bit1_y_net;
  wire [48-1:0] shift2_op_net;
  wire [54-1:0] mux2_y_net;
  wire [1-1:0] bit2_y_net;
  wire [50-1:0] shift4_op_net;
  wire [62-1:0] mux3_y_net;
  wire [1-1:0] bit3_y_net;
  wire [54-1:0] shift8_op_net;
  wire [1-1:0] bit4_y_net;
  wire [62-1:0] shift16_op_net;
  assign out = mux4_y_net;
  assign int_accum_s_net = in;
  assign register9_q_net = shift_by;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_mux_407dfceb37 mux (
    .clr(1'b0),
    .sel(bit0_y_net),
    .d0(int_accum_s_net),
    .d1(shift1_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux_y_net)
  );
  sysgen_mux_ee069077e1 mux1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .sel(bit1_y_net),
    .d0(mux_y_net),
    .d1(shift2_op_net),
    .y(mux1_y_net)
  );
  sysgen_mux_d116e6c30a mux2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .sel(bit2_y_net),
    .d0(mux1_y_net),
    .d1(shift4_op_net),
    .y(mux2_y_net)
  );
  sysgen_mux_081a968bff mux3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .sel(bit3_y_net),
    .d0(mux2_y_net),
    .d1(shift8_op_net),
    .y(mux3_y_net)
  );
  sysgen_mux_45a6dbe084 mux4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .sel(bit4_y_net),
    .d0(mux3_y_net),
    .d1(shift16_op_net),
    .y(mux4_y_net)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(0),
    .new_msb(0),
    .x_width(5),
    .y_width(1)
  )
  bit0 (
    .x(register9_q_net),
    .y(bit0_y_net)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(1),
    .new_msb(1),
    .x_width(5),
    .y_width(1)
  )
  bit1 (
    .x(register9_q_net),
    .y(bit1_y_net)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(2),
    .new_msb(2),
    .x_width(5),
    .y_width(1)
  )
  bit2 (
    .x(register9_q_net),
    .y(bit2_y_net)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(3),
    .new_msb(3),
    .x_width(5),
    .y_width(1)
  )
  bit3 (
    .x(register9_q_net),
    .y(bit3_y_net)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(4),
    .new_msb(4),
    .x_width(5),
    .y_width(1)
  )
  bit4 (
    .x(register9_q_net),
    .y(bit4_y_net)
  );
  sysgen_scale_b398db21c6 shift1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .ip(int_accum_s_net),
    .op(shift1_op_net)
  );
  sysgen_scale_937ac48980 shift16 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .ip(mux3_y_net),
    .op(shift16_op_net)
  );
  sysgen_scale_e9aedd542a shift2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .ip(mux_y_net),
    .op(shift2_op_net)
  );
  sysgen_scale_139e98d539 shift4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .ip(mux1_y_net),
    .op(shift4_op_net)
  );
  sysgen_scale_94c5be3c5e shift8 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .ip(mux2_y_net),
    .op(shift8_op_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/slice_0/x_psc
module hilsim_ipcore_x_psc (
  input [47-1:0] in,
  input [5-1:0] presc_shift,
  input [18-1:0] presc_mul,
  input clk_1,
  input ce_1,
  output [25-1:0] out
);
  wire [25-1:0] mult_presc_p_net;
  wire [47-1:0] int_accum_s_net;
  wire [5-1:0] register9_q_net;
  wire [18-1:0] register10_q_net;
  wire clk_net;
  wire ce_net;
  wire [78-1:0] mux4_y_net;
  wire [25-1:0] slice_dout_net;
  assign out = mult_presc_p_net;
  assign int_accum_s_net = in;
  assign register9_q_net = presc_shift;
  assign register10_q_net = presc_mul;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  hilsim_ipcore_barrel_left_shifter_x0 barrel_left_shifter (
    .in(int_accum_s_net),
    .shift_by(register9_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .out(mux4_y_net)
  );
  hilsim_ipcore_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(39),
    .din_width(78),
    .dout_arith(2),
    .dout_bin_pt(17),
    .dout_width(25),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  slice (
    .clr(1'b0),
    .en(1'b1),
    .din(mux4_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(slice_dout_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_presc (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(slice_dout_net),
    .b(register10_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_presc_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/slice_0/xdot_psc/barrel_left_shifter
module hilsim_ipcore_barrel_left_shifter (
  input [47-1:0] in,
  input [5-1:0] shift_by,
  input clk_1,
  input ce_1,
  output [78-1:0] out
);
  wire [78-1:0] mux4_y_net;
  wire [47-1:0] int_accum_s_net;
  wire [5-1:0] register8_q_net;
  wire clk_net;
  wire ce_net;
  wire [48-1:0] mux_y_net;
  wire [1-1:0] bit0_y_net;
  wire [47-1:0] shift1_op_net;
  wire [50-1:0] mux1_y_net;
  wire [1-1:0] bit1_y_net;
  wire [48-1:0] shift2_op_net;
  wire [54-1:0] mux2_y_net;
  wire [1-1:0] bit2_y_net;
  wire [50-1:0] shift4_op_net;
  wire [62-1:0] mux3_y_net;
  wire [1-1:0] bit3_y_net;
  wire [54-1:0] shift8_op_net;
  wire [1-1:0] bit4_y_net;
  wire [62-1:0] shift16_op_net;
  assign out = mux4_y_net;
  assign int_accum_s_net = in;
  assign register8_q_net = shift_by;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_mux_407dfceb37 mux (
    .clr(1'b0),
    .sel(bit0_y_net),
    .d0(int_accum_s_net),
    .d1(shift1_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux_y_net)
  );
  sysgen_mux_ee069077e1 mux1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .sel(bit1_y_net),
    .d0(mux_y_net),
    .d1(shift2_op_net),
    .y(mux1_y_net)
  );
  sysgen_mux_d116e6c30a mux2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .sel(bit2_y_net),
    .d0(mux1_y_net),
    .d1(shift4_op_net),
    .y(mux2_y_net)
  );
  sysgen_mux_081a968bff mux3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .sel(bit3_y_net),
    .d0(mux2_y_net),
    .d1(shift8_op_net),
    .y(mux3_y_net)
  );
  sysgen_mux_45a6dbe084 mux4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .sel(bit4_y_net),
    .d0(mux3_y_net),
    .d1(shift16_op_net),
    .y(mux4_y_net)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(0),
    .new_msb(0),
    .x_width(5),
    .y_width(1)
  )
  bit0 (
    .x(register8_q_net),
    .y(bit0_y_net)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(1),
    .new_msb(1),
    .x_width(5),
    .y_width(1)
  )
  bit1 (
    .x(register8_q_net),
    .y(bit1_y_net)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(2),
    .new_msb(2),
    .x_width(5),
    .y_width(1)
  )
  bit2 (
    .x(register8_q_net),
    .y(bit2_y_net)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(3),
    .new_msb(3),
    .x_width(5),
    .y_width(1)
  )
  bit3 (
    .x(register8_q_net),
    .y(bit3_y_net)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(4),
    .new_msb(4),
    .x_width(5),
    .y_width(1)
  )
  bit4 (
    .x(register8_q_net),
    .y(bit4_y_net)
  );
  sysgen_scale_b398db21c6 shift1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .ip(int_accum_s_net),
    .op(shift1_op_net)
  );
  sysgen_scale_937ac48980 shift16 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .ip(mux3_y_net),
    .op(shift16_op_net)
  );
  sysgen_scale_e9aedd542a shift2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .ip(mux_y_net),
    .op(shift2_op_net)
  );
  sysgen_scale_139e98d539 shift4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .ip(mux1_y_net),
    .op(shift4_op_net)
  );
  sysgen_scale_94c5be3c5e shift8 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .ip(mux2_y_net),
    .op(shift8_op_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/slice_0/xdot_psc
module hilsim_ipcore_xdot_psc (
  input [47-1:0] in,
  input [5-1:0] presc_shift,
  input [18-1:0] presc_mul,
  input clk_1,
  input ce_1,
  output [25-1:0] out
);
  wire [25-1:0] mult_presc_p_net;
  wire [47-1:0] int_accum_s_net;
  wire [5-1:0] register8_q_net;
  wire [18-1:0] register7_q_net;
  wire clk_net;
  wire ce_net;
  wire [78-1:0] mux4_y_net;
  wire [25-1:0] slice_dout_net;
  assign out = mult_presc_p_net;
  assign int_accum_s_net = in;
  assign register8_q_net = presc_shift;
  assign register7_q_net = presc_mul;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  hilsim_ipcore_barrel_left_shifter barrel_left_shifter (
    .in(int_accum_s_net),
    .shift_by(register8_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .out(mux4_y_net)
  );
  hilsim_ipcore_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(39),
    .din_width(78),
    .dout_arith(2),
    .dout_bin_pt(17),
    .dout_width(25),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  slice (
    .clr(1'b0),
    .en(1'b1),
    .din(mux4_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(slice_dout_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_presc (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(slice_dout_net),
    .b(register7_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_presc_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/slice_0
module hilsim_ipcore_slice_0 (
  input [25-1:0] u,
  input [8-1:0] nlf_cfg_bus_1,
  input [1-1:0] slice_cfg_1,
  input [1-1:0] nlf_switch_bus_1,
  input [8-1:0] nlf_sel_addrs_1,
  input [1-1:0] reset_in,
  input [10-1:0] nlf_cfg_bus_2,
  input [16-1:0] nlf_cfg_bus_3,
  input [1-1:0] nlf_cfg_bus_4,
  input [18-1:0] slice_cfg_2,
  input [18-1:0] slice_cfg_3,
  input [18-1:0] slice_cfg_4,
  input [1-1:0] slice_cfg_5,
  input [18-1:0] slice_cfg_6,
  input [18-1:0] slice_cfg_7,
  input [18-1:0] slice_cfg_8,
  input [1-1:0] slice_cfg_9,
  input [18-1:0] slice_cfg_10,
  input [18-1:0] slice_cfg_11,
  input [18-1:0] slice_cfg_12,
  input [5-1:0] slice_cfg_13,
  input [18-1:0] slice_cfg_14,
  input [5-1:0] slice_cfg_15,
  input [18-1:0] slice_cfg_16,
  input [1-1:0] nlf_switch_bus_2,
  input [1-1:0] nlf_switch_bus_3,
  input [8-1:0] nlf_sel_addrs_2,
  input [8-1:0] nlf_sel_addrs_3,
  input [8-1:0] nlf_sel_addrs_4,
  input [8-1:0] nlf_sel_addrs_5,
  input [8-1:0] nlf_sel_addrs_6,
  input clk_1,
  input ce_1,
  input clk_36,
  input ce_36,
  output [25-1:0] x_sync,
  output [25-1:0] xd_sync,
  output [25-1:0] xdd_sync
);
  wire [25-1:0] sync_x_q_net;
  wire [25-1:0] sync_xdot_q_net;
  wire [25-1:0] sync_xdotdot_q_net;
  wire [25-1:0] mux_u0_y_net;
  wire [8-1:0] seladdr;
  wire [1-1:0] clkxreg_slice1_cfg2_q_net;
  wire [1-1:0] switch_u;
  wire [8-1:0] sel_u0;
  wire [1-1:0] register1_q_net;
  wire [10-1:0] delay_q_net;
  wire [16-1:0] tmp_lut_doutb_net;
  wire [1-1:0] delay1_q_net;
  wire [18-1:0] clkxreg_slice1_cfg1_q_net;
  wire [18-1:0] clkxreg_slice1_cfg4_q_net;
  wire [18-1:0] clkxreg_slice1_cfg3_q_net;
  wire [1-1:0] clkxreg_slice1_cfg6_q_net;
  wire [18-1:0] clkxreg_slice1_cfg5_q_net;
  wire [18-1:0] clkxreg_slice1_cfg8_q_net;
  wire [18-1:0] clkxreg_slice1_cfg7_q_net;
  wire [1-1:0] clkxreg_slice1_cfg10_q_net;
  wire [18-1:0] clkxreg_slice1_cfg9_q_net;
  wire [18-1:0] clkxreg_slice1_cfg12_q_net;
  wire [18-1:0] clkxreg_slice1_cfg11_q_net;
  wire [5-1:0] clkxreg_slice1_cfg13_q_net;
  wire [18-1:0] clkxreg_slice1_cfg16_q_net;
  wire [5-1:0] clkxreg_slice1_cfg15_q_net;
  wire [18-1:0] clkxreg_slice1_cfg14_q_net;
  wire [1-1:0] switch_x;
  wire [1-1:0] switch_xd;
  wire [8-1:0] sel_u1;
  wire [8-1:0] sel_x0;
  wire [8-1:0] sel_x1;
  wire [8-1:0] sel_xd0;
  wire [8-1:0] sel_xd1;
  wire clk_net;
  wire ce_net;
  wire dest_clk_net;
  wire dest_ce_net;
  wire [25-1:0] add_stage_2_s_net;
  wire [25-1:0] sync_u_q_net;
  wire [18-1:0] register4_q_net;
  wire [18-1:0] register5_q_net;
  wire [18-1:0] register6_q_net;
  wire [1-1:0] sample_sync_q_net;
  wire [25-1:0] u_upsample_q_net;
  wire [25-1:0] mult_presc_p_net;
  wire [25-1:0] mult_presc_p_net_x0;
  wire [47-1:0] int_accum_s_net;
  wire [47-1:0] int_accum_s_net_x0;
  wire [5-1:0] register9_q_net;
  wire [18-1:0] register10_q_net;
  wire [5-1:0] register8_q_net;
  wire [18-1:0] register7_q_net;
  wire [18-1:0] register1_q_net_x0;
  wire [18-1:0] register3_q_net;
  wire [5-1:0] register12_q_net;
  wire [5-1:0] register2_q_net;
  wire [25-1:0] u_downsample_q_net;
  assign x_sync = sync_x_q_net;
  assign xd_sync = sync_xdot_q_net;
  assign xdd_sync = sync_xdotdot_q_net;
  assign mux_u0_y_net = u;
  assign seladdr = nlf_cfg_bus_1;
  assign clkxreg_slice1_cfg2_q_net = slice_cfg_1;
  assign switch_u = nlf_switch_bus_1;
  assign sel_u0 = nlf_sel_addrs_1;
  assign register1_q_net = reset_in;
  assign delay_q_net = nlf_cfg_bus_2;
  assign tmp_lut_doutb_net = nlf_cfg_bus_3;
  assign delay1_q_net = nlf_cfg_bus_4;
  assign clkxreg_slice1_cfg1_q_net = slice_cfg_2;
  assign clkxreg_slice1_cfg4_q_net = slice_cfg_3;
  assign clkxreg_slice1_cfg3_q_net = slice_cfg_4;
  assign clkxreg_slice1_cfg6_q_net = slice_cfg_5;
  assign clkxreg_slice1_cfg5_q_net = slice_cfg_6;
  assign clkxreg_slice1_cfg8_q_net = slice_cfg_7;
  assign clkxreg_slice1_cfg7_q_net = slice_cfg_8;
  assign clkxreg_slice1_cfg10_q_net = slice_cfg_9;
  assign clkxreg_slice1_cfg9_q_net = slice_cfg_10;
  assign clkxreg_slice1_cfg12_q_net = slice_cfg_11;
  assign clkxreg_slice1_cfg11_q_net = slice_cfg_12;
  assign clkxreg_slice1_cfg13_q_net = slice_cfg_13;
  assign clkxreg_slice1_cfg16_q_net = slice_cfg_14;
  assign clkxreg_slice1_cfg15_q_net = slice_cfg_15;
  assign clkxreg_slice1_cfg14_q_net = slice_cfg_16;
  assign switch_x = nlf_switch_bus_2;
  assign switch_xd = nlf_switch_bus_3;
  assign sel_u1 = nlf_sel_addrs_2;
  assign sel_x0 = nlf_sel_addrs_3;
  assign sel_x1 = nlf_sel_addrs_4;
  assign sel_xd0 = nlf_sel_addrs_5;
  assign sel_xd1 = nlf_sel_addrs_6;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  assign dest_clk_net = clk_36;
  assign dest_ce_net = ce_36;
  hilsim_ipcore_fb_func_x1 fb_func (
    .u(sync_u_q_net),
    .x(sync_x_q_net),
    .xd(sync_xdot_q_net),
    .nlf_cfg_bus_1(seladdr),
    .nlf_switch_bus_1(switch_u),
    .nlf_sel_addrs_1(sel_u0),
    .x_mux(clkxreg_slice1_cfg2_q_net),
    .x_gain(register4_q_net),
    .x_nlf_presc(clkxreg_slice1_cfg4_q_net),
    .x_nlf_gain(clkxreg_slice1_cfg3_q_net),
    .xd_mux(clkxreg_slice1_cfg6_q_net),
    .xd_gain(register5_q_net),
    .xd_nlf_presc(clkxreg_slice1_cfg8_q_net),
    .xd_nlf_gain(clkxreg_slice1_cfg7_q_net),
    .u_mux(clkxreg_slice1_cfg10_q_net),
    .u_gain(register6_q_net),
    .u_nlf_presc(clkxreg_slice1_cfg12_q_net),
    .u_nlf_gain(clkxreg_slice1_cfg11_q_net),
    .nlf_cfg_bus_2(delay_q_net),
    .nlf_cfg_bus_3(tmp_lut_doutb_net),
    .nlf_cfg_bus_4(delay1_q_net),
    .nlf_switch_bus_2(switch_x),
    .nlf_switch_bus_3(switch_xd),
    .nlf_sel_addrs_2(sel_u1),
    .nlf_sel_addrs_3(sel_x0),
    .nlf_sel_addrs_4(sel_x1),
    .nlf_sel_addrs_5(sel_xd0),
    .nlf_sel_addrs_6(sel_xd1),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .xdd(add_stage_2_s_net)
  );
  hilsim_ipcore_fb_resync_x0 fb_resync (
    .ts_sync_in(sample_sync_q_net),
    .reset_in(register1_q_net),
    .u(u_upsample_q_net),
    .x(mult_presc_p_net),
    .xd(mult_presc_p_net_x0),
    .xdd(add_stage_2_s_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .u_sync(sync_u_q_net),
    .x_sync(sync_x_q_net),
    .xd_sync(sync_xdot_q_net),
    .xdd_sync(sync_xdotdot_q_net)
  );
  hilsim_ipcore_int_xddot_xdot_x0 int_xddot_xdot (
    .ts_sync_in(sample_sync_q_net),
    .reset_in(register1_q_net),
    .xdot(add_stage_2_s_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .x(int_accum_s_net)
  );
  hilsim_ipcore_int_xdot_x int_xdot_x (
    .ts_sync_in(sample_sync_q_net),
    .reset_in(register1_q_net),
    .xdot(mult_presc_p_net_x0),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .x(int_accum_s_net_x0)
  );
  hilsim_ipcore_x_psc x_psc (
    .in(int_accum_s_net_x0),
    .presc_shift(register9_q_net),
    .presc_mul(register10_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .out(mult_presc_p_net)
  );
  hilsim_ipcore_xdot_psc xdot_psc (
    .in(int_accum_s_net),
    .presc_shift(register8_q_net),
    .presc_mul(register7_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .out(mult_presc_p_net_x0)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg16_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register1_q_net_x0)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register10 (
    .en(1'b1),
    .rst(1'b0),
    .d(register3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register10_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(5),
    .init_value(5'b00000)
  )
  register12 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg13_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register12_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(5),
    .init_value(5'b00000)
  )
  register2 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg15_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register2_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register3 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg14_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register3_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register4 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register4_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register5 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg5_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register5_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register6 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg9_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register6_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register7 (
    .en(1'b1),
    .rst(1'b0),
    .d(register1_q_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(register7_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(5),
    .init_value(5'b00000)
  )
  register8 (
    .en(1'b1),
    .rst(1'b0),
    .d(register12_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register8_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(5),
    .init_value(5'b00000)
  )
  register9 (
    .en(1'b1),
    .rst(1'b0),
    .d(register2_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register9_q_net)
  );
  hilsim_ipcore_xlceprobe #(
    .d_width(25),
    .q_width(1)
  )
  sample_sync (
    .d(u_downsample_q_net),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .q(sample_sync_q_net)
  );
  hilsim_ipcore_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(17),
    .d_width(25),
    .ds_ratio(36),
    .latency(0),
    .phase(0),
    .q_arith(`xlSigned),
    .q_bin_pt(17),
    .q_width(25)
  )
  u_downsample (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(mux_u0_y_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(dest_clk_net),
    .dest_ce(dest_ce_net),
    .q(u_downsample_q_net)
  );
  hilsim_ipcore_xlusamp #(
    .copy_samples(1),
    .d_arith(`xlSigned),
    .d_bin_pt(17),
    .d_width(25),
    .latency(1),
    .q_arith(`xlSigned),
    .q_bin_pt(17),
    .q_width(25)
  )
  u_upsample (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .d(u_downsample_q_net),
    .src_clk(dest_clk_net),
    .src_ce(dest_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(u_upsample_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/slice_1/fb_func/nlf_u
module hilsim_ipcore_nlf_u (
  input [25-1:0] x,
  input [18-1:0] presc,
  input [18-1:0] gain,
  input [1-1:0] cfg_select_1,
  input [1-1:0] cfg_select_2,
  input [10-1:0] cfg_addr,
  input [16-1:0] cfg_data,
  input [1-1:0] cfg_we,
  input [1-1:0] nlf_switch,
  input clk_1,
  input ce_1,
  output [25-1:0] f_x
);
  wire [25-1:0] mult_out_scale_p_net;
  wire [25-1:0] sync_u_q_net;
  wire [18-1:0] register9_q_net;
  wire [18-1:0] register10_q_net;
  wire [1-1:0] register2_q_net_x0;
  wire [1-1:0] register1_q_net_x0;
  wire [10-1:0] register21_q_net;
  wire [16-1:0] register22_q_net;
  wire [1-1:0] register11_q_net;
  wire [1-1:0] register23_q_net;
  wire clk_net;
  wire ce_net;
  wire [10-1:0] addsub_s_net;
  wire [10-1:0] reinterpret_output_port_net;
  wire [10-1:0] const_1_op_net;
  wire [25-1:0] addsub1_s_net;
  wire [25-1:0] const_1_interp_op_net;
  wire [25-1:0] slice_dout_net;
  wire [16-1:0] lut_1_douta_net;
  wire [16-1:0] lut_1_doutb_net;
  wire [10-1:0] addra_mux_y_net;
  wire [16-1:0] dina_mux_y_net;
  wire [1-1:0] wea_mux_y_net;
  wire [16-1:0] zero_nlf_datatype_op_net;
  wire [1-1:0] bool_zero_we_op_net;
  wire [16-1:0] lut_2_douta_net;
  wire [16-1:0] lut_2_doutb_net;
  wire [10-1:0] addra_mux_2_y_net;
  wire [16-1:0] dina_mux_2_y_net;
  wire [1-1:0] wea_mux_2_y_net;
  wire [16-1:0] zero_nlf_datatype1_op_net;
  wire [1-1:0] bool_zero_we1_op_net;
  wire [16-1:0] register1_q_net;
  wire [16-1:0] register2_q_net;
  wire [16-1:0] register3_q_net;
  wire [16-1:0] register4_q_net;
  wire [10-1:0] cast_cutoff_lsbits_dout_net;
  wire [25-1:0] add_interpolate_s_net;
  wire [25-1:0] mult_a_p_net;
  wire [25-1:0] mult_b_p_net;
  wire [1-1:0] bool_zero_wea_op_net;
  wire [1-1:0] bool_zero_wea_2_op_net;
  wire [25-1:0] mult_inp_scale_p_net;
  wire [14-1:0] reint_sliced_output_port_net;
  wire [14-1:0] cutoff_msbits_y_net;
  wire [16-1:0] data_a_mux_y_net;
  wire [16-1:0] data_b_mux_y_net;
  wire [25-1:0] delay_sync_interpolate_q_net;
  wire [16-1:0] zero_nlf_dina_op_net;
  wire [16-1:0] zero_nlf_dina_2_op_net;
  assign f_x = mult_out_scale_p_net;
  assign sync_u_q_net = x;
  assign register9_q_net = presc;
  assign register10_q_net = gain;
  assign register2_q_net_x0 = cfg_select_1;
  assign register1_q_net_x0 = cfg_select_2;
  assign register21_q_net = cfg_addr;
  assign register22_q_net = cfg_data;
  assign register11_q_net = cfg_we;
  assign register23_q_net = nlf_switch;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlUnsigned),
    .a_bin_pt(0),
    .a_width(10),
    .b_arith(`xlUnsigned),
    .b_bin_pt(0),
    .b_width(10),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(11),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i1"),
    .extra_registers(0),
    .full_s_arith(1),
    .full_s_width(11),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlUnsigned),
    .s_bin_pt(0),
    .s_width(10)
  )
  addsub (
    .clr(1'b0),
    .en(1'b1),
    .a(reinterpret_output_port_net),
    .b(const_1_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub_s_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(26),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i2"),
    .extra_registers(3),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(4),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  addsub1 (
    .clr(1'b0),
    .en(1'b1),
    .a(const_1_interp_op_net),
    .b(slice_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub1_s_net)
  );
  hilsim_ipcore_xltdpram #(
    .addr_width_a(10),
    .addr_width_b(10),
    .clocking_mode("common_clock"),
    .data_width_a(16),
    .data_width_b(16),
    .latency(1),
    .mem_init_file("xpm_f5fed5_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_a("0"),
    .read_reset_b("0"),
    .write_mode_a("write_first"),
    .write_mode_b("write_first")
  )
  lut_1 (
    .ena(1'b1),
    .enb(1'b1),
    .rsta(1'b0),
    .rstb(1'b0),
    .addra(addra_mux_y_net),
    .dina(dina_mux_y_net),
    .wea(wea_mux_y_net),
    .addrb(addsub_s_net),
    .dinb(zero_nlf_datatype_op_net),
    .web(bool_zero_we_op_net),
    .a_clk(clk_net),
    .a_ce(ce_net),
    .b_clk(clk_net),
    .b_ce(ce_net),
    .douta(lut_1_douta_net),
    .doutb(lut_1_doutb_net)
  );
  hilsim_ipcore_xltdpram #(
    .addr_width_a(10),
    .addr_width_b(10),
    .clocking_mode("common_clock"),
    .data_width_a(16),
    .data_width_b(16),
    .latency(1),
    .mem_init_file("xpm_f5fed5_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_a("0"),
    .read_reset_b("0"),
    .write_mode_a("write_first"),
    .write_mode_b("write_first")
  )
  lut_2 (
    .ena(1'b1),
    .enb(1'b1),
    .rsta(1'b0),
    .rstb(1'b0),
    .addra(addra_mux_2_y_net),
    .dina(dina_mux_2_y_net),
    .wea(wea_mux_2_y_net),
    .addrb(addsub_s_net),
    .dinb(zero_nlf_datatype1_op_net),
    .web(bool_zero_we1_op_net),
    .a_clk(clk_net),
    .a_ce(ce_net),
    .b_clk(clk_net),
    .b_ce(ce_net),
    .douta(lut_2_douta_net),
    .doutb(lut_2_doutb_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(16),
    .init_value(16'b0000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(lut_2_douta_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register1_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(16),
    .init_value(16'b0000000000000000)
  )
  register2 (
    .en(1'b1),
    .rst(1'b0),
    .d(lut_1_doutb_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register2_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(16),
    .init_value(16'b0000000000000000)
  )
  register3 (
    .en(1'b1),
    .rst(1'b0),
    .d(lut_1_douta_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register3_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(16),
    .init_value(16'b0000000000000000)
  )
  register4 (
    .en(1'b1),
    .rst(1'b0),
    .d(lut_2_doutb_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register4_q_net)
  );
  sysgen_reinterpret_f4605e0022 reinterpret (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(cast_cutoff_lsbits_dout_net),
    .output_port(reinterpret_output_port_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(26),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i0"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  add_interpolate (
    .clr(1'b0),
    .en(1'b1),
    .a(mult_a_p_net),
    .b(mult_b_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(add_interpolate_s_net)
  );
  sysgen_mux_c832ae0d6a addra_mux (
    .clr(1'b0),
    .sel(register2_q_net_x0),
    .d0(reinterpret_output_port_net),
    .d1(register21_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(addra_mux_y_net)
  );
  sysgen_mux_c832ae0d6a addra_mux_2 (
    .clr(1'b0),
    .sel(register1_q_net_x0),
    .d0(reinterpret_output_port_net),
    .d1(register21_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(addra_mux_2_y_net)
  );
  sysgen_constant_caba551e44 bool_zero_we (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(bool_zero_we_op_net)
  );
  sysgen_constant_caba551e44 bool_zero_we1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(bool_zero_we1_op_net)
  );
  sysgen_constant_caba551e44 bool_zero_wea (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(bool_zero_wea_op_net)
  );
  sysgen_constant_caba551e44 bool_zero_wea_2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(bool_zero_wea_2_op_net)
  );
  hilsim_ipcore_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(23),
    .din_width(25),
    .dout_arith(2),
    .dout_bin_pt(9),
    .dout_width(10),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  cast_cutoff_lsbits (
    .clr(1'b0),
    .en(1'b1),
    .din(mult_inp_scale_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(cast_cutoff_lsbits_dout_net)
  );
  hilsim_ipcore_xlconvert #(
    .bool_conversion(0),
    .din_arith(1),
    .din_bin_pt(14),
    .din_width(14),
    .dout_arith(2),
    .dout_bin_pt(17),
    .dout_width(25),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  slice (
    .clr(1'b0),
    .en(1'b1),
    .din(reint_sliced_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(slice_dout_net)
  );
  sysgen_constant_7b59d789af const_1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(const_1_op_net)
  );
  sysgen_constant_ab97251e3b const_1_interp (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(const_1_interp_op_net)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(0),
    .new_msb(13),
    .x_width(25),
    .y_width(14)
  )
  cutoff_msbits (
    .x(mult_inp_scale_p_net),
    .y(cutoff_msbits_y_net)
  );
  sysgen_mux_ba276f04f0 data_a_mux (
    .clr(1'b0),
    .sel(register23_q_net),
    .d0(register3_q_net),
    .d1(register1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(data_a_mux_y_net)
  );
  sysgen_mux_ba276f04f0 data_b_mux (
    .clr(1'b0),
    .sel(register23_q_net),
    .d0(register2_q_net),
    .d1(register4_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(data_b_mux_y_net)
  );
  hilsim_ipcore_xldelay #(
    .latency(4),
    .reg_retiming(0),
    .reset(0),
    .width(25)
  )
  delay_sync_interpolate (
    .en(1'b1),
    .rst(1'b0),
    .d(slice_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_sync_interpolate_q_net)
  );
  sysgen_mux_ba276f04f0 dina_mux (
    .clr(1'b0),
    .sel(register2_q_net_x0),
    .d0(zero_nlf_dina_op_net),
    .d1(register22_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(dina_mux_y_net)
  );
  sysgen_mux_ba276f04f0 dina_mux_2 (
    .clr(1'b0),
    .sel(register1_q_net_x0),
    .d0(zero_nlf_dina_2_op_net),
    .d1(register22_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(dina_mux_2_y_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(14),
    .a_width(16),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_a_type(0),
    .c_a_width(16),
    .c_b_type(0),
    .c_b_width(25),
    .c_baat(16),
    .c_output_width(41),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i4"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_a (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(data_a_mux_y_net),
    .b(addsub1_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_a_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(14),
    .a_width(16),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_a_type(0),
    .c_a_width(16),
    .c_b_type(0),
    .c_b_width(25),
    .c_baat(16),
    .c_output_width(41),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i4"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_b (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(data_b_mux_y_net),
    .b(delay_sync_interpolate_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_b_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(23),
    .p_width(25),
    .quantization(1)
  )
  mult_inp_scale (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(sync_u_q_net),
    .b(register9_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_inp_scale_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_out_scale (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(add_interpolate_s_net),
    .b(register10_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_out_scale_p_net)
  );
  sysgen_reinterpret_67d055efc4 reint_sliced (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(cutoff_msbits_y_net),
    .output_port(reint_sliced_output_port_net)
  );
  sysgen_mux_18d2538cb2 wea_mux (
    .clr(1'b0),
    .sel(register2_q_net_x0),
    .d0(bool_zero_wea_op_net),
    .d1(register11_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(wea_mux_y_net)
  );
  sysgen_mux_18d2538cb2 wea_mux_2 (
    .clr(1'b0),
    .sel(register1_q_net_x0),
    .d0(bool_zero_wea_2_op_net),
    .d1(register11_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(wea_mux_2_y_net)
  );
  sysgen_constant_f3b3f76499 zero_nlf_datatype (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(zero_nlf_datatype_op_net)
  );
  sysgen_constant_f3b3f76499 zero_nlf_datatype1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(zero_nlf_datatype1_op_net)
  );
  sysgen_constant_f3b3f76499 zero_nlf_dina (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(zero_nlf_dina_op_net)
  );
  sysgen_constant_f3b3f76499 zero_nlf_dina_2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(zero_nlf_dina_2_op_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/slice_1/fb_func/nlf_x
module hilsim_ipcore_nlf_x (
  input [25-1:0] x,
  input [18-1:0] presc,
  input [18-1:0] gain,
  input [1-1:0] cfg_select_1,
  input [1-1:0] cfg_select_2,
  input [10-1:0] cfg_addr,
  input [16-1:0] cfg_data,
  input [1-1:0] cfg_we,
  input [1-1:0] nlf_switch,
  input clk_1,
  input ce_1,
  output [25-1:0] f_x
);
  wire [25-1:0] mult_out_scale_p_net;
  wire [25-1:0] sync_x_q_net;
  wire [18-1:0] register25_q_net;
  wire [18-1:0] register4_q_net_x0;
  wire [1-1:0] register13_q_net;
  wire [1-1:0] register3_q_net_x0;
  wire [10-1:0] register14_q_net;
  wire [16-1:0] register16_q_net;
  wire [1-1:0] register5_q_net;
  wire [1-1:0] register24_q_net;
  wire clk_net;
  wire ce_net;
  wire [10-1:0] addsub_s_net;
  wire [10-1:0] reinterpret_output_port_net;
  wire [10-1:0] const_1_op_net;
  wire [25-1:0] addsub1_s_net;
  wire [25-1:0] const_1_interp_op_net;
  wire [25-1:0] slice_dout_net;
  wire [16-1:0] lut_1_douta_net;
  wire [16-1:0] lut_1_doutb_net;
  wire [10-1:0] addra_mux_y_net;
  wire [16-1:0] dina_mux_y_net;
  wire [1-1:0] wea_mux_y_net;
  wire [16-1:0] zero_nlf_datatype_op_net;
  wire [1-1:0] bool_zero_we_op_net;
  wire [16-1:0] lut_2_douta_net;
  wire [16-1:0] lut_2_doutb_net;
  wire [10-1:0] addra_mux_2_y_net;
  wire [16-1:0] dina_mux_2_y_net;
  wire [1-1:0] wea_mux_2_y_net;
  wire [16-1:0] zero_nlf_datatype1_op_net;
  wire [1-1:0] bool_zero_we1_op_net;
  wire [16-1:0] register1_q_net;
  wire [16-1:0] register2_q_net;
  wire [16-1:0] register3_q_net;
  wire [16-1:0] register4_q_net;
  wire [10-1:0] cast_cutoff_lsbits_dout_net;
  wire [25-1:0] add_interpolate_s_net;
  wire [25-1:0] mult_a_p_net;
  wire [25-1:0] mult_b_p_net;
  wire [1-1:0] bool_zero_wea_op_net;
  wire [1-1:0] bool_zero_wea_2_op_net;
  wire [25-1:0] mult_inp_scale_p_net;
  wire [14-1:0] reint_sliced_output_port_net;
  wire [14-1:0] cutoff_msbits_y_net;
  wire [16-1:0] data_a_mux_y_net;
  wire [16-1:0] data_b_mux_y_net;
  wire [25-1:0] delay_sync_interpolate_q_net;
  wire [16-1:0] zero_nlf_dina_op_net;
  wire [16-1:0] zero_nlf_dina_2_op_net;
  assign f_x = mult_out_scale_p_net;
  assign sync_x_q_net = x;
  assign register25_q_net = presc;
  assign register4_q_net_x0 = gain;
  assign register13_q_net = cfg_select_1;
  assign register3_q_net_x0 = cfg_select_2;
  assign register14_q_net = cfg_addr;
  assign register16_q_net = cfg_data;
  assign register5_q_net = cfg_we;
  assign register24_q_net = nlf_switch;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlUnsigned),
    .a_bin_pt(0),
    .a_width(10),
    .b_arith(`xlUnsigned),
    .b_bin_pt(0),
    .b_width(10),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(11),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i1"),
    .extra_registers(0),
    .full_s_arith(1),
    .full_s_width(11),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlUnsigned),
    .s_bin_pt(0),
    .s_width(10)
  )
  addsub (
    .clr(1'b0),
    .en(1'b1),
    .a(reinterpret_output_port_net),
    .b(const_1_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub_s_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(26),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i2"),
    .extra_registers(3),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(4),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  addsub1 (
    .clr(1'b0),
    .en(1'b1),
    .a(const_1_interp_op_net),
    .b(slice_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub1_s_net)
  );
  hilsim_ipcore_xltdpram #(
    .addr_width_a(10),
    .addr_width_b(10),
    .clocking_mode("common_clock"),
    .data_width_a(16),
    .data_width_b(16),
    .latency(1),
    .mem_init_file("xpm_2a499f_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_a("0"),
    .read_reset_b("0"),
    .write_mode_a("write_first"),
    .write_mode_b("write_first")
  )
  lut_1 (
    .ena(1'b1),
    .enb(1'b1),
    .rsta(1'b0),
    .rstb(1'b0),
    .addra(addra_mux_y_net),
    .dina(dina_mux_y_net),
    .wea(wea_mux_y_net),
    .addrb(addsub_s_net),
    .dinb(zero_nlf_datatype_op_net),
    .web(bool_zero_we_op_net),
    .a_clk(clk_net),
    .a_ce(ce_net),
    .b_clk(clk_net),
    .b_ce(ce_net),
    .douta(lut_1_douta_net),
    .doutb(lut_1_doutb_net)
  );
  hilsim_ipcore_xltdpram #(
    .addr_width_a(10),
    .addr_width_b(10),
    .clocking_mode("common_clock"),
    .data_width_a(16),
    .data_width_b(16),
    .latency(1),
    .mem_init_file("xpm_2a499f_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_a("0"),
    .read_reset_b("0"),
    .write_mode_a("write_first"),
    .write_mode_b("write_first")
  )
  lut_2 (
    .ena(1'b1),
    .enb(1'b1),
    .rsta(1'b0),
    .rstb(1'b0),
    .addra(addra_mux_2_y_net),
    .dina(dina_mux_2_y_net),
    .wea(wea_mux_2_y_net),
    .addrb(addsub_s_net),
    .dinb(zero_nlf_datatype1_op_net),
    .web(bool_zero_we1_op_net),
    .a_clk(clk_net),
    .a_ce(ce_net),
    .b_clk(clk_net),
    .b_ce(ce_net),
    .douta(lut_2_douta_net),
    .doutb(lut_2_doutb_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(16),
    .init_value(16'b0000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(lut_2_douta_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register1_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(16),
    .init_value(16'b0000000000000000)
  )
  register2 (
    .en(1'b1),
    .rst(1'b0),
    .d(lut_1_douta_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register2_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(16),
    .init_value(16'b0000000000000000)
  )
  register3 (
    .en(1'b1),
    .rst(1'b0),
    .d(lut_1_doutb_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register3_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(16),
    .init_value(16'b0000000000000000)
  )
  register4 (
    .en(1'b1),
    .rst(1'b0),
    .d(lut_2_doutb_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register4_q_net)
  );
  sysgen_reinterpret_f4605e0022 reinterpret (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(cast_cutoff_lsbits_dout_net),
    .output_port(reinterpret_output_port_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(26),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i0"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  add_interpolate (
    .clr(1'b0),
    .en(1'b1),
    .a(mult_a_p_net),
    .b(mult_b_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(add_interpolate_s_net)
  );
  sysgen_mux_c832ae0d6a addra_mux (
    .clr(1'b0),
    .sel(register13_q_net),
    .d0(reinterpret_output_port_net),
    .d1(register14_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(addra_mux_y_net)
  );
  sysgen_mux_c832ae0d6a addra_mux_2 (
    .clr(1'b0),
    .sel(register3_q_net_x0),
    .d0(reinterpret_output_port_net),
    .d1(register14_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(addra_mux_2_y_net)
  );
  sysgen_constant_caba551e44 bool_zero_we (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(bool_zero_we_op_net)
  );
  sysgen_constant_caba551e44 bool_zero_we1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(bool_zero_we1_op_net)
  );
  sysgen_constant_caba551e44 bool_zero_wea (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(bool_zero_wea_op_net)
  );
  sysgen_constant_caba551e44 bool_zero_wea_2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(bool_zero_wea_2_op_net)
  );
  hilsim_ipcore_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(23),
    .din_width(25),
    .dout_arith(2),
    .dout_bin_pt(9),
    .dout_width(10),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  cast_cutoff_lsbits (
    .clr(1'b0),
    .en(1'b1),
    .din(mult_inp_scale_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(cast_cutoff_lsbits_dout_net)
  );
  hilsim_ipcore_xlconvert #(
    .bool_conversion(0),
    .din_arith(1),
    .din_bin_pt(14),
    .din_width(14),
    .dout_arith(2),
    .dout_bin_pt(17),
    .dout_width(25),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  slice (
    .clr(1'b0),
    .en(1'b1),
    .din(reint_sliced_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(slice_dout_net)
  );
  sysgen_constant_7b59d789af const_1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(const_1_op_net)
  );
  sysgen_constant_ab97251e3b const_1_interp (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(const_1_interp_op_net)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(0),
    .new_msb(13),
    .x_width(25),
    .y_width(14)
  )
  cutoff_msbits (
    .x(mult_inp_scale_p_net),
    .y(cutoff_msbits_y_net)
  );
  sysgen_mux_ba276f04f0 data_a_mux (
    .clr(1'b0),
    .sel(register24_q_net),
    .d0(register2_q_net),
    .d1(register1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(data_a_mux_y_net)
  );
  sysgen_mux_ba276f04f0 data_b_mux (
    .clr(1'b0),
    .sel(register24_q_net),
    .d0(register3_q_net),
    .d1(register4_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(data_b_mux_y_net)
  );
  hilsim_ipcore_xldelay #(
    .latency(4),
    .reg_retiming(0),
    .reset(0),
    .width(25)
  )
  delay_sync_interpolate (
    .en(1'b1),
    .rst(1'b0),
    .d(slice_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_sync_interpolate_q_net)
  );
  sysgen_mux_ba276f04f0 dina_mux (
    .clr(1'b0),
    .sel(register13_q_net),
    .d0(zero_nlf_dina_op_net),
    .d1(register16_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(dina_mux_y_net)
  );
  sysgen_mux_ba276f04f0 dina_mux_2 (
    .clr(1'b0),
    .sel(register3_q_net_x0),
    .d0(zero_nlf_dina_2_op_net),
    .d1(register16_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(dina_mux_2_y_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(14),
    .a_width(16),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_a_type(0),
    .c_a_width(16),
    .c_b_type(0),
    .c_b_width(25),
    .c_baat(16),
    .c_output_width(41),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i4"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_a (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(data_a_mux_y_net),
    .b(addsub1_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_a_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(14),
    .a_width(16),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_a_type(0),
    .c_a_width(16),
    .c_b_type(0),
    .c_b_width(25),
    .c_baat(16),
    .c_output_width(41),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i4"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_b (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(data_b_mux_y_net),
    .b(delay_sync_interpolate_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_b_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(23),
    .p_width(25),
    .quantization(1)
  )
  mult_inp_scale (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(sync_x_q_net),
    .b(register25_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_inp_scale_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_out_scale (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(add_interpolate_s_net),
    .b(register4_q_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_out_scale_p_net)
  );
  sysgen_reinterpret_67d055efc4 reint_sliced (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(cutoff_msbits_y_net),
    .output_port(reint_sliced_output_port_net)
  );
  sysgen_mux_18d2538cb2 wea_mux (
    .clr(1'b0),
    .sel(register13_q_net),
    .d0(bool_zero_wea_op_net),
    .d1(register5_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(wea_mux_y_net)
  );
  sysgen_mux_18d2538cb2 wea_mux_2 (
    .clr(1'b0),
    .sel(register3_q_net_x0),
    .d0(bool_zero_wea_2_op_net),
    .d1(register5_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(wea_mux_2_y_net)
  );
  sysgen_constant_f3b3f76499 zero_nlf_datatype (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(zero_nlf_datatype_op_net)
  );
  sysgen_constant_f3b3f76499 zero_nlf_datatype1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(zero_nlf_datatype1_op_net)
  );
  sysgen_constant_f3b3f76499 zero_nlf_dina (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(zero_nlf_dina_op_net)
  );
  sysgen_constant_f3b3f76499 zero_nlf_dina_2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(zero_nlf_dina_2_op_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/slice_1/fb_func/nlf_xd
module hilsim_ipcore_nlf_xd_x0 (
  input [25-1:0] x,
  input [18-1:0] presc,
  input [18-1:0] gain,
  input [1-1:0] cfg_select_1,
  input [1-1:0] cfg_select_2,
  input [10-1:0] cfg_addr,
  input [16-1:0] cfg_data,
  input [1-1:0] cfg_we,
  input [1-1:0] nlf_switch,
  input clk_1,
  input ce_1,
  output [25-1:0] f_x
);
  wire [25-1:0] mult_out_scale_p_net;
  wire [25-1:0] sync_xdot_q_net;
  wire [18-1:0] register18_q_net;
  wire [18-1:0] register26_q_net;
  wire [1-1:0] register6_q_net;
  wire [1-1:0] register20_q_net;
  wire [10-1:0] register7_q_net;
  wire [16-1:0] register8_q_net;
  wire [1-1:0] register27_q_net;
  wire [1-1:0] register17_q_net;
  wire clk_net;
  wire ce_net;
  wire [10-1:0] addsub_s_net;
  wire [10-1:0] reinterpret_output_port_net;
  wire [10-1:0] const_1_op_net;
  wire [25-1:0] addsub1_s_net;
  wire [25-1:0] const_1_interp_op_net;
  wire [25-1:0] slice_dout_net;
  wire [16-1:0] lut_1_douta_net;
  wire [16-1:0] lut_1_doutb_net;
  wire [10-1:0] addra_mux_y_net;
  wire [16-1:0] dina_mux_y_net;
  wire [1-1:0] wea_mux_y_net;
  wire [16-1:0] zero_nlf_datatype_op_net;
  wire [1-1:0] bool_zero_we_op_net;
  wire [16-1:0] lut_2_douta_net;
  wire [16-1:0] lut_2_doutb_net;
  wire [10-1:0] addra_mux_2_y_net;
  wire [16-1:0] dina_mux_2_y_net;
  wire [1-1:0] wea_mux_2_y_net;
  wire [16-1:0] zero_nlf_datatype1_op_net;
  wire [1-1:0] bool_zero_we1_op_net;
  wire [16-1:0] register1_q_net;
  wire [16-1:0] register2_q_net;
  wire [16-1:0] register3_q_net;
  wire [16-1:0] register4_q_net;
  wire [10-1:0] cast_cutoff_lsbits_dout_net;
  wire [25-1:0] add_interpolate_s_net;
  wire [25-1:0] mult_a_p_net;
  wire [25-1:0] mult_b_p_net;
  wire [1-1:0] bool_zero_wea_op_net;
  wire [1-1:0] bool_zero_wea_2_op_net;
  wire [25-1:0] mult_inp_scale_p_net;
  wire [14-1:0] reint_sliced_output_port_net;
  wire [14-1:0] cutoff_msbits_y_net;
  wire [16-1:0] data_a_mux_y_net;
  wire [16-1:0] data_b_mux_y_net;
  wire [25-1:0] delay_sync_interpolate_q_net;
  wire [16-1:0] zero_nlf_dina_op_net;
  wire [16-1:0] zero_nlf_dina_2_op_net;
  assign f_x = mult_out_scale_p_net;
  assign sync_xdot_q_net = x;
  assign register18_q_net = presc;
  assign register26_q_net = gain;
  assign register6_q_net = cfg_select_1;
  assign register20_q_net = cfg_select_2;
  assign register7_q_net = cfg_addr;
  assign register8_q_net = cfg_data;
  assign register27_q_net = cfg_we;
  assign register17_q_net = nlf_switch;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlUnsigned),
    .a_bin_pt(0),
    .a_width(10),
    .b_arith(`xlUnsigned),
    .b_bin_pt(0),
    .b_width(10),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(11),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i1"),
    .extra_registers(0),
    .full_s_arith(1),
    .full_s_width(11),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlUnsigned),
    .s_bin_pt(0),
    .s_width(10)
  )
  addsub (
    .clr(1'b0),
    .en(1'b1),
    .a(reinterpret_output_port_net),
    .b(const_1_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub_s_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(26),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i2"),
    .extra_registers(3),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(4),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  addsub1 (
    .clr(1'b0),
    .en(1'b1),
    .a(const_1_interp_op_net),
    .b(slice_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub1_s_net)
  );
  hilsim_ipcore_xltdpram #(
    .addr_width_a(10),
    .addr_width_b(10),
    .clocking_mode("common_clock"),
    .data_width_a(16),
    .data_width_b(16),
    .latency(1),
    .mem_init_file("xpm_f5fed5_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_a("0"),
    .read_reset_b("0"),
    .write_mode_a("write_first"),
    .write_mode_b("write_first")
  )
  lut_1 (
    .ena(1'b1),
    .enb(1'b1),
    .rsta(1'b0),
    .rstb(1'b0),
    .addra(addra_mux_y_net),
    .dina(dina_mux_y_net),
    .wea(wea_mux_y_net),
    .addrb(addsub_s_net),
    .dinb(zero_nlf_datatype_op_net),
    .web(bool_zero_we_op_net),
    .a_clk(clk_net),
    .a_ce(ce_net),
    .b_clk(clk_net),
    .b_ce(ce_net),
    .douta(lut_1_douta_net),
    .doutb(lut_1_doutb_net)
  );
  hilsim_ipcore_xltdpram #(
    .addr_width_a(10),
    .addr_width_b(10),
    .clocking_mode("common_clock"),
    .data_width_a(16),
    .data_width_b(16),
    .latency(1),
    .mem_init_file("xpm_f5fed5_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_a("0"),
    .read_reset_b("0"),
    .write_mode_a("write_first"),
    .write_mode_b("write_first")
  )
  lut_2 (
    .ena(1'b1),
    .enb(1'b1),
    .rsta(1'b0),
    .rstb(1'b0),
    .addra(addra_mux_2_y_net),
    .dina(dina_mux_2_y_net),
    .wea(wea_mux_2_y_net),
    .addrb(addsub_s_net),
    .dinb(zero_nlf_datatype1_op_net),
    .web(bool_zero_we1_op_net),
    .a_clk(clk_net),
    .a_ce(ce_net),
    .b_clk(clk_net),
    .b_ce(ce_net),
    .douta(lut_2_douta_net),
    .doutb(lut_2_doutb_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(16),
    .init_value(16'b0000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(lut_2_douta_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register1_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(16),
    .init_value(16'b0000000000000000)
  )
  register2 (
    .en(1'b1),
    .rst(1'b0),
    .d(lut_1_doutb_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register2_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(16),
    .init_value(16'b0000000000000000)
  )
  register3 (
    .en(1'b1),
    .rst(1'b0),
    .d(lut_1_douta_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register3_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(16),
    .init_value(16'b0000000000000000)
  )
  register4 (
    .en(1'b1),
    .rst(1'b0),
    .d(lut_2_doutb_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register4_q_net)
  );
  sysgen_reinterpret_f4605e0022 reinterpret (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(cast_cutoff_lsbits_dout_net),
    .output_port(reinterpret_output_port_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(26),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i0"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  add_interpolate (
    .clr(1'b0),
    .en(1'b1),
    .a(mult_a_p_net),
    .b(mult_b_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(add_interpolate_s_net)
  );
  sysgen_mux_c832ae0d6a addra_mux (
    .clr(1'b0),
    .sel(register6_q_net),
    .d0(reinterpret_output_port_net),
    .d1(register7_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(addra_mux_y_net)
  );
  sysgen_mux_c832ae0d6a addra_mux_2 (
    .clr(1'b0),
    .sel(register20_q_net),
    .d0(reinterpret_output_port_net),
    .d1(register7_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(addra_mux_2_y_net)
  );
  sysgen_constant_caba551e44 bool_zero_we (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(bool_zero_we_op_net)
  );
  sysgen_constant_caba551e44 bool_zero_we1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(bool_zero_we1_op_net)
  );
  sysgen_constant_caba551e44 bool_zero_wea (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(bool_zero_wea_op_net)
  );
  sysgen_constant_caba551e44 bool_zero_wea_2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(bool_zero_wea_2_op_net)
  );
  hilsim_ipcore_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(23),
    .din_width(25),
    .dout_arith(2),
    .dout_bin_pt(9),
    .dout_width(10),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  cast_cutoff_lsbits (
    .clr(1'b0),
    .en(1'b1),
    .din(mult_inp_scale_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(cast_cutoff_lsbits_dout_net)
  );
  hilsim_ipcore_xlconvert #(
    .bool_conversion(0),
    .din_arith(1),
    .din_bin_pt(14),
    .din_width(14),
    .dout_arith(2),
    .dout_bin_pt(17),
    .dout_width(25),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  slice (
    .clr(1'b0),
    .en(1'b1),
    .din(reint_sliced_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(slice_dout_net)
  );
  sysgen_constant_7b59d789af const_1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(const_1_op_net)
  );
  sysgen_constant_ab97251e3b const_1_interp (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(const_1_interp_op_net)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(0),
    .new_msb(13),
    .x_width(25),
    .y_width(14)
  )
  cutoff_msbits (
    .x(mult_inp_scale_p_net),
    .y(cutoff_msbits_y_net)
  );
  sysgen_mux_ba276f04f0 data_a_mux (
    .clr(1'b0),
    .sel(register17_q_net),
    .d0(register3_q_net),
    .d1(register1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(data_a_mux_y_net)
  );
  sysgen_mux_ba276f04f0 data_b_mux (
    .clr(1'b0),
    .sel(register17_q_net),
    .d0(register2_q_net),
    .d1(register4_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(data_b_mux_y_net)
  );
  hilsim_ipcore_xldelay #(
    .latency(4),
    .reg_retiming(0),
    .reset(0),
    .width(25)
  )
  delay_sync_interpolate (
    .en(1'b1),
    .rst(1'b0),
    .d(slice_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_sync_interpolate_q_net)
  );
  sysgen_mux_ba276f04f0 dina_mux (
    .clr(1'b0),
    .sel(register6_q_net),
    .d0(zero_nlf_dina_op_net),
    .d1(register8_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(dina_mux_y_net)
  );
  sysgen_mux_ba276f04f0 dina_mux_2 (
    .clr(1'b0),
    .sel(register20_q_net),
    .d0(zero_nlf_dina_2_op_net),
    .d1(register8_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(dina_mux_2_y_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(14),
    .a_width(16),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_a_type(0),
    .c_a_width(16),
    .c_b_type(0),
    .c_b_width(25),
    .c_baat(16),
    .c_output_width(41),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i4"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_a (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(data_a_mux_y_net),
    .b(addsub1_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_a_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(14),
    .a_width(16),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_a_type(0),
    .c_a_width(16),
    .c_b_type(0),
    .c_b_width(25),
    .c_baat(16),
    .c_output_width(41),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i4"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_b (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(data_b_mux_y_net),
    .b(delay_sync_interpolate_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_b_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(23),
    .p_width(25),
    .quantization(1)
  )
  mult_inp_scale (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(sync_xdot_q_net),
    .b(register18_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_inp_scale_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_out_scale (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(add_interpolate_s_net),
    .b(register26_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_out_scale_p_net)
  );
  sysgen_reinterpret_67d055efc4 reint_sliced (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(cutoff_msbits_y_net),
    .output_port(reint_sliced_output_port_net)
  );
  sysgen_mux_18d2538cb2 wea_mux (
    .clr(1'b0),
    .sel(register6_q_net),
    .d0(bool_zero_wea_op_net),
    .d1(register27_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(wea_mux_y_net)
  );
  sysgen_mux_18d2538cb2 wea_mux_2 (
    .clr(1'b0),
    .sel(register20_q_net),
    .d0(bool_zero_wea_2_op_net),
    .d1(register27_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(wea_mux_2_y_net)
  );
  sysgen_constant_f3b3f76499 zero_nlf_datatype (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(zero_nlf_datatype_op_net)
  );
  sysgen_constant_f3b3f76499 zero_nlf_datatype1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(zero_nlf_datatype1_op_net)
  );
  sysgen_constant_f3b3f76499 zero_nlf_dina (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(zero_nlf_dina_op_net)
  );
  sysgen_constant_f3b3f76499 zero_nlf_dina_2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(zero_nlf_dina_2_op_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/slice_1/fb_func
module hilsim_ipcore_fb_func (
  input [25-1:0] u,
  input [25-1:0] x,
  input [25-1:0] xd,
  input [8-1:0] nlf_cfg_bus_1,
  input [1-1:0] nlf_switch_bus_1,
  input [8-1:0] nlf_sel_addrs_1,
  input [1-1:0] x_mux,
  input [18-1:0] x_gain,
  input [18-1:0] x_nlf_presc,
  input [18-1:0] x_nlf_gain,
  input [1-1:0] xd_mux,
  input [18-1:0] xd_gain,
  input [18-1:0] xd_nlf_presc,
  input [18-1:0] xd_nlf_gain,
  input [1-1:0] u_mux,
  input [18-1:0] u_gain,
  input [18-1:0] u_nlf_presc,
  input [18-1:0] u_nlf_gain,
  input [10-1:0] nlf_cfg_bus_2,
  input [16-1:0] nlf_cfg_bus_3,
  input [1-1:0] nlf_cfg_bus_4,
  input [1-1:0] nlf_switch_bus_2,
  input [1-1:0] nlf_switch_bus_3,
  input [8-1:0] nlf_sel_addrs_2,
  input [8-1:0] nlf_sel_addrs_3,
  input [8-1:0] nlf_sel_addrs_4,
  input [8-1:0] nlf_sel_addrs_5,
  input [8-1:0] nlf_sel_addrs_6,
  input clk_1,
  input ce_1,
  output [25-1:0] xdd
);
  wire [25-1:0] add_stage_2_s_net;
  wire [25-1:0] sync_u_q_net;
  wire [25-1:0] sync_x_q_net;
  wire [25-1:0] sync_xdot_q_net;
  wire [8-1:0] seladdr;
  wire [1-1:0] switch_u;
  wire [8-1:0] sel_u0;
  wire [1-1:0] clkxreg_slice1_cfg58_q_net;
  wire [18-1:0] register4_q_net_x0;
  wire [18-1:0] clkxreg_slice1_cfg60_q_net;
  wire [18-1:0] clkxreg_slice1_cfg59_q_net;
  wire [1-1:0] clkxreg_slice1_cfg62_q_net;
  wire [18-1:0] register5_q_net_x0;
  wire [18-1:0] clkxreg_slice1_cfg64_q_net;
  wire [18-1:0] clkxreg_slice1_cfg63_q_net;
  wire [1-1:0] clkxreg_slice1_cfg51_q_net;
  wire [18-1:0] register6_q_net_x0;
  wire [18-1:0] clkxreg_slice1_cfg53_q_net;
  wire [18-1:0] clkxreg_slice1_cfg52_q_net;
  wire [10-1:0] delay_q_net;
  wire [16-1:0] tmp_lut_doutb_net;
  wire [1-1:0] delay1_q_net;
  wire [1-1:0] switch_x;
  wire [1-1:0] switch_xd;
  wire [8-1:0] sel_u1;
  wire [8-1:0] sel_x0;
  wire [8-1:0] sel_x1;
  wire [8-1:0] sel_xd0;
  wire [8-1:0] sel_xd1;
  wire clk_net;
  wire ce_net;
  wire [25-1:0] mult_out_scale_p_net;
  wire [18-1:0] register9_q_net;
  wire [18-1:0] register10_q_net;
  wire [1-1:0] register2_q_net;
  wire [1-1:0] register1_q_net;
  wire [10-1:0] register21_q_net;
  wire [16-1:0] register22_q_net;
  wire [1-1:0] register11_q_net;
  wire [1-1:0] register23_q_net;
  wire [25-1:0] mult_out_scale_p_net_x0;
  wire [18-1:0] register25_q_net;
  wire [18-1:0] register4_q_net;
  wire [1-1:0] register13_q_net;
  wire [1-1:0] register3_q_net;
  wire [10-1:0] register14_q_net;
  wire [16-1:0] register16_q_net;
  wire [1-1:0] register5_q_net;
  wire [1-1:0] register24_q_net;
  wire [25-1:0] mult_out_scale_p_net_x1;
  wire [18-1:0] register18_q_net;
  wire [18-1:0] register26_q_net;
  wire [1-1:0] register6_q_net;
  wire [1-1:0] register20_q_net;
  wire [10-1:0] register7_q_net;
  wire [16-1:0] register8_q_net;
  wire [1-1:0] register27_q_net;
  wire [1-1:0] register17_q_net;
  wire [1-1:0] relational1_op_net;
  wire [1-1:0] register12_q_net;
  wire [1-1:0] relational2_op_net;
  wire [1-1:0] register15_q_net;
  wire [1-1:0] register19_q_net;
  wire [1-1:0] relational_op_net;
  wire [1-1:0] relational5_op_net;
  wire [8-1:0] register28_q_net;
  wire [1-1:0] relational3_op_net;
  wire [1-1:0] relational4_op_net;
  wire [25-1:0] add_stage_1_s_net;
  wire [25-1:0] mult_u_gain_p_net;
  wire [25-1:0] mult_x_gain_p_net;
  wire [25-1:0] mult_xd_gain_p_net;
  wire [25-1:0] mux_u_nlf_bypass_y_net;
  wire [25-1:0] mux_x_nlf_bypass_y_net;
  wire [25-1:0] mux_xd_nlf_bypass_y_net;
  assign xdd = add_stage_2_s_net;
  assign sync_u_q_net = u;
  assign sync_x_q_net = x;
  assign sync_xdot_q_net = xd;
  assign seladdr = nlf_cfg_bus_1;
  assign switch_u = nlf_switch_bus_1;
  assign sel_u0 = nlf_sel_addrs_1;
  assign clkxreg_slice1_cfg58_q_net = x_mux;
  assign register4_q_net_x0 = x_gain;
  assign clkxreg_slice1_cfg60_q_net = x_nlf_presc;
  assign clkxreg_slice1_cfg59_q_net = x_nlf_gain;
  assign clkxreg_slice1_cfg62_q_net = xd_mux;
  assign register5_q_net_x0 = xd_gain;
  assign clkxreg_slice1_cfg64_q_net = xd_nlf_presc;
  assign clkxreg_slice1_cfg63_q_net = xd_nlf_gain;
  assign clkxreg_slice1_cfg51_q_net = u_mux;
  assign register6_q_net_x0 = u_gain;
  assign clkxreg_slice1_cfg53_q_net = u_nlf_presc;
  assign clkxreg_slice1_cfg52_q_net = u_nlf_gain;
  assign delay_q_net = nlf_cfg_bus_2;
  assign tmp_lut_doutb_net = nlf_cfg_bus_3;
  assign delay1_q_net = nlf_cfg_bus_4;
  assign switch_x = nlf_switch_bus_2;
  assign switch_xd = nlf_switch_bus_3;
  assign sel_u1 = nlf_sel_addrs_2;
  assign sel_x0 = nlf_sel_addrs_3;
  assign sel_x1 = nlf_sel_addrs_4;
  assign sel_xd0 = nlf_sel_addrs_5;
  assign sel_xd1 = nlf_sel_addrs_6;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  hilsim_ipcore_nlf_u nlf_u (
    .x(sync_u_q_net),
    .presc(register9_q_net),
    .gain(register10_q_net),
    .cfg_select_1(register2_q_net),
    .cfg_select_2(register1_q_net),
    .cfg_addr(register21_q_net),
    .cfg_data(register22_q_net),
    .cfg_we(register11_q_net),
    .nlf_switch(register23_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .f_x(mult_out_scale_p_net)
  );
  hilsim_ipcore_nlf_x nlf_x (
    .x(sync_x_q_net),
    .presc(register25_q_net),
    .gain(register4_q_net),
    .cfg_select_1(register13_q_net),
    .cfg_select_2(register3_q_net),
    .cfg_addr(register14_q_net),
    .cfg_data(register16_q_net),
    .cfg_we(register5_q_net),
    .nlf_switch(register24_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .f_x(mult_out_scale_p_net_x0)
  );
  hilsim_ipcore_nlf_xd_x0 nlf_xd (
    .x(sync_xdot_q_net),
    .presc(register18_q_net),
    .gain(register26_q_net),
    .cfg_select_1(register6_q_net),
    .cfg_select_2(register20_q_net),
    .cfg_addr(register7_q_net),
    .cfg_data(register8_q_net),
    .cfg_we(register27_q_net),
    .nlf_switch(register17_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .f_x(mult_out_scale_p_net_x1)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(relational1_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register1_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register10 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg52_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register10_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register11 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register11_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register12 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg51_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register12_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register13 (
    .en(1'b1),
    .rst(1'b0),
    .d(relational2_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register13_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(10),
    .init_value(10'b0000000000)
  )
  register14 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register14_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register15 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg58_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register15_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(16),
    .init_value(16'b0000000000000000)
  )
  register16 (
    .en(1'b1),
    .rst(1'b0),
    .d(tmp_lut_doutb_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register16_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register17 (
    .en(1'b1),
    .rst(1'b0),
    .d(switch_xd),
    .clk(clk_net),
    .ce(ce_net),
    .q(register17_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register18 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg64_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register18_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register19 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg62_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register19_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register2 (
    .en(1'b1),
    .rst(1'b0),
    .d(relational_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register2_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register20 (
    .en(1'b1),
    .rst(1'b0),
    .d(relational5_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register20_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(10),
    .init_value(10'b0000000000)
  )
  register21 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register21_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(16),
    .init_value(16'b0000000000000000)
  )
  register22 (
    .en(1'b1),
    .rst(1'b0),
    .d(tmp_lut_doutb_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register22_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register23 (
    .en(1'b1),
    .rst(1'b0),
    .d(switch_u),
    .clk(clk_net),
    .ce(ce_net),
    .q(register23_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register24 (
    .en(1'b1),
    .rst(1'b0),
    .d(switch_x),
    .clk(clk_net),
    .ce(ce_net),
    .q(register24_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register25 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg60_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register25_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register26 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg63_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register26_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register27 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register27_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(8),
    .init_value(8'b00000000)
  )
  register28 (
    .en(1'b1),
    .rst(1'b0),
    .d(seladdr),
    .clk(clk_net),
    .ce(ce_net),
    .q(register28_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register3 (
    .en(1'b1),
    .rst(1'b0),
    .d(relational3_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register3_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register4 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg59_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register4_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register5 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register5_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register6 (
    .en(1'b1),
    .rst(1'b0),
    .d(relational4_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register6_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(10),
    .init_value(10'b0000000000)
  )
  register7 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register7_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(16),
    .init_value(16'b0000000000000000)
  )
  register8 (
    .en(1'b1),
    .rst(1'b0),
    .d(tmp_lut_doutb_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register8_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register9 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg53_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register9_q_net)
  );
  sysgen_relational_a2a0814d7a relational (
    .clr(1'b0),
    .a(register28_q_net),
    .b(sel_u0),
    .clk(clk_net),
    .ce(ce_net),
    .op(relational_op_net)
  );
  sysgen_relational_a2a0814d7a relational1 (
    .clr(1'b0),
    .a(register28_q_net),
    .b(sel_u1),
    .clk(clk_net),
    .ce(ce_net),
    .op(relational1_op_net)
  );
  sysgen_relational_a2a0814d7a relational2 (
    .clr(1'b0),
    .a(register28_q_net),
    .b(sel_x0),
    .clk(clk_net),
    .ce(ce_net),
    .op(relational2_op_net)
  );
  sysgen_relational_a2a0814d7a relational3 (
    .clr(1'b0),
    .a(register28_q_net),
    .b(sel_x1),
    .clk(clk_net),
    .ce(ce_net),
    .op(relational3_op_net)
  );
  sysgen_relational_a2a0814d7a relational4 (
    .clr(1'b0),
    .a(register28_q_net),
    .b(sel_xd0),
    .clk(clk_net),
    .ce(ce_net),
    .op(relational4_op_net)
  );
  sysgen_relational_a2a0814d7a relational5 (
    .clr(1'b0),
    .a(register28_q_net),
    .b(sel_xd1),
    .clk(clk_net),
    .ce(ce_net),
    .op(relational5_op_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(26),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i0"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  add_stage_1 (
    .clr(1'b0),
    .en(1'b1),
    .a(mult_u_gain_p_net),
    .b(mult_x_gain_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(add_stage_1_s_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(26),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i0"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  add_stage_2 (
    .clr(1'b0),
    .en(1'b1),
    .a(add_stage_1_s_net),
    .b(mult_xd_gain_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(add_stage_2_s_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_u_gain (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux_u_nlf_bypass_y_net),
    .b(register6_q_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_u_gain_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_x_gain (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux_x_nlf_bypass_y_net),
    .b(register4_q_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_x_gain_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_xd_gain (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux_xd_nlf_bypass_y_net),
    .b(register5_q_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_xd_gain_p_net)
  );
  sysgen_mux_d68a8b9ad8 mux_u_nlf_bypass (
    .clr(1'b0),
    .sel(register12_q_net),
    .d0(mult_out_scale_p_net),
    .d1(sync_u_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux_u_nlf_bypass_y_net)
  );
  sysgen_mux_d68a8b9ad8 mux_x_nlf_bypass (
    .clr(1'b0),
    .sel(register15_q_net),
    .d0(mult_out_scale_p_net_x0),
    .d1(sync_x_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux_x_nlf_bypass_y_net)
  );
  sysgen_mux_d68a8b9ad8 mux_xd_nlf_bypass (
    .clr(1'b0),
    .sel(register19_q_net),
    .d0(mult_out_scale_p_net_x1),
    .d1(sync_xdot_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux_xd_nlf_bypass_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/slice_1/fb_resync
module hilsim_ipcore_fb_resync (
  input [1-1:0] ts_sync_in,
  input [1-1:0] reset_in,
  input [25-1:0] u,
  input [25-1:0] x,
  input [25-1:0] xd,
  input [25-1:0] xdd,
  input clk_1,
  input ce_1,
  output [25-1:0] u_sync,
  output [25-1:0] x_sync,
  output [25-1:0] xd_sync,
  output [25-1:0] xdd_sync
);
  wire [25-1:0] sync_u_q_net;
  wire [25-1:0] sync_x_q_net;
  wire [25-1:0] sync_xdot_q_net;
  wire [25-1:0] sync_xdotdot_q_net;
  wire [1-1:0] sample_sync_q_net;
  wire [1-1:0] register2_q_net;
  wire [25-1:0] u_upsample_q_net;
  wire [25-1:0] mult_presc_p_net;
  wire [25-1:0] mult_presc_p_net_x0;
  wire [25-1:0] add_stage_2_s_net;
  wire clk_net;
  wire ce_net;
  assign u_sync = sync_u_q_net;
  assign x_sync = sync_x_q_net;
  assign xd_sync = sync_xdot_q_net;
  assign xdd_sync = sync_xdotdot_q_net;
  assign sample_sync_q_net = ts_sync_in;
  assign register2_q_net = reset_in;
  assign u_upsample_q_net = u;
  assign mult_presc_p_net = x;
  assign mult_presc_p_net_x0 = xd;
  assign add_stage_2_s_net = xdd;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  hilsim_ipcore_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  sync_u (
    .d(u_upsample_q_net),
    .rst(register2_q_net),
    .en(sample_sync_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(sync_u_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  sync_x (
    .d(mult_presc_p_net),
    .rst(register2_q_net),
    .en(sample_sync_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(sync_x_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  sync_xdot (
    .d(mult_presc_p_net_x0),
    .rst(register2_q_net),
    .en(sample_sync_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(sync_xdot_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  sync_xdotdot (
    .d(add_stage_2_s_net),
    .rst(register2_q_net),
    .en(sample_sync_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(sync_xdotdot_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/slice_1/int_xddot_xdot
module hilsim_ipcore_int_xddot_xdot (
  input [1-1:0] ts_sync_in,
  input [1-1:0] reset_in,
  input [25-1:0] xdot,
  input clk_1,
  input ce_1,
  output [47-1:0] x
);
  wire [47-1:0] int_accum_s_net;
  wire [1-1:0] sample_sync_q_net;
  wire [1-1:0] register2_q_net;
  wire [25-1:0] add_stage_2_s_net;
  wire clk_net;
  wire ce_net;
  wire [18-1:0] constant_op_net;
  wire [47-1:0] register_q_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] half_op_net;
  wire [25-1:0] add_stage_1_s_net;
  wire [25-1:0] add_stage_2_s_net_x0;
  wire [25-1:0] deltat_residual_mult_p_net;
  wire [47-1:0] shift_prescale_op_net;
  wire [47-1:0] prepend_zeros_dout_net;
  assign x = int_accum_s_net;
  assign sample_sync_q_net = ts_sync_in;
  assign register2_q_net = reset_in;
  assign add_stage_2_s_net = xdot;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_constant_df08e87bb9 constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(47),
    .init_value(47'b00000000000000000000000000000000000000000000000)
  )
  register (
    .d(int_accum_s_net),
    .rst(register2_q_net),
    .en(sample_sync_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register1 (
    .d(half_op_net),
    .rst(register2_q_net),
    .en(sample_sync_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register1_q_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(18),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(27),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i4"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(27),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  add_stage_1 (
    .clr(1'b0),
    .en(1'b1),
    .a(add_stage_2_s_net),
    .b(half_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(add_stage_1_s_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(18),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(27),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i5"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(27),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  add_stage_2 (
    .clr(1'b0),
    .en(1'b1),
    .a(add_stage_1_s_net),
    .b(register1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(add_stage_2_s_net_x0)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  deltat_residual_mult (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(add_stage_2_s_net_x0),
    .b(constant_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(deltat_residual_mult_p_net)
  );
  sysgen_scale_56fa4fa0f6 half (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .ip(add_stage_2_s_net),
    .op(half_op_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(39),
    .a_width(47),
    .b_arith(`xlSigned),
    .b_bin_pt(39),
    .b_width(47),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(48),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i6"),
    .extra_registers(1),
    .full_s_arith(2),
    .full_s_width(48),
    .latency(2),
    .overflow(2),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(39),
    .s_width(47)
  )
  int_accum (
    .clr(1'b0),
    .en(1'b1),
    .a(shift_prescale_op_net),
    .b(register_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(int_accum_s_net)
  );
  hilsim_ipcore_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(17),
    .din_width(25),
    .dout_arith(2),
    .dout_bin_pt(17),
    .dout_width(47),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  prepend_zeros (
    .clr(1'b0),
    .en(1'b1),
    .din(deltat_residual_mult_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(prepend_zeros_dout_net)
  );
  sysgen_scale_1b4332142c shift_prescale (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .ip(prepend_zeros_dout_net),
    .op(shift_prescale_op_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/slice_1/int_xdot_x
module hilsim_ipcore_int_xdot_x_x0 (
  input [1-1:0] ts_sync_in,
  input [1-1:0] reset_in,
  input [25-1:0] xdot,
  input clk_1,
  input ce_1,
  output [47-1:0] x
);
  wire [47-1:0] int_accum_s_net;
  wire [1-1:0] sample_sync_q_net;
  wire [1-1:0] register2_q_net;
  wire [25-1:0] mult_presc_p_net;
  wire clk_net;
  wire ce_net;
  wire [18-1:0] constant_op_net;
  wire [47-1:0] register_q_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] add_stage_3_s_net;
  wire [25-1:0] deltat_residual_mult_p_net;
  wire [25-1:0] half1_op_net;
  wire [47-1:0] shift_prescale_op_net;
  wire [47-1:0] prepend_zeros_dout_net;
  assign x = int_accum_s_net;
  assign sample_sync_q_net = ts_sync_in;
  assign register2_q_net = reset_in;
  assign mult_presc_p_net = xdot;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_constant_df08e87bb9 constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(47),
    .init_value(47'b00000000000000000000000000000000000000000000000)
  )
  register (
    .d(int_accum_s_net),
    .rst(register2_q_net),
    .en(sample_sync_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register1 (
    .d(mult_presc_p_net),
    .rst(register2_q_net),
    .en(sample_sync_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register1_q_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(26),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i0"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  add_stage_3 (
    .clr(1'b0),
    .en(1'b1),
    .a(mult_presc_p_net),
    .b(register1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(add_stage_3_s_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(18),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  deltat_residual_mult (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(half1_op_net),
    .b(constant_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(deltat_residual_mult_p_net)
  );
  sysgen_scale_56fa4fa0f6 half1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .ip(add_stage_3_s_net),
    .op(half1_op_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(39),
    .a_width(47),
    .b_arith(`xlSigned),
    .b_bin_pt(39),
    .b_width(47),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(48),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i6"),
    .extra_registers(1),
    .full_s_arith(2),
    .full_s_width(48),
    .latency(2),
    .overflow(2),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(39),
    .s_width(47)
  )
  int_accum (
    .clr(1'b0),
    .en(1'b1),
    .a(shift_prescale_op_net),
    .b(register_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(int_accum_s_net)
  );
  hilsim_ipcore_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(17),
    .din_width(25),
    .dout_arith(2),
    .dout_bin_pt(17),
    .dout_width(47),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  prepend_zeros (
    .clr(1'b0),
    .en(1'b1),
    .din(deltat_residual_mult_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(prepend_zeros_dout_net)
  );
  sysgen_scale_1b4332142c shift_prescale (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .ip(prepend_zeros_dout_net),
    .op(shift_prescale_op_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/slice_1/x_psc/barrel_left_shifter
module hilsim_ipcore_barrel_left_shifter_x2 (
  input [47-1:0] in,
  input [5-1:0] shift_by,
  input clk_1,
  input ce_1,
  output [78-1:0] out
);
  wire [78-1:0] mux4_y_net;
  wire [47-1:0] int_accum_s_net;
  wire [5-1:0] register9_q_net;
  wire clk_net;
  wire ce_net;
  wire [48-1:0] mux_y_net;
  wire [1-1:0] bit0_y_net;
  wire [47-1:0] shift1_op_net;
  wire [50-1:0] mux1_y_net;
  wire [1-1:0] bit1_y_net;
  wire [48-1:0] shift2_op_net;
  wire [54-1:0] mux2_y_net;
  wire [1-1:0] bit2_y_net;
  wire [50-1:0] shift4_op_net;
  wire [62-1:0] mux3_y_net;
  wire [1-1:0] bit3_y_net;
  wire [54-1:0] shift8_op_net;
  wire [1-1:0] bit4_y_net;
  wire [62-1:0] shift16_op_net;
  assign out = mux4_y_net;
  assign int_accum_s_net = in;
  assign register9_q_net = shift_by;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_mux_407dfceb37 mux (
    .clr(1'b0),
    .sel(bit0_y_net),
    .d0(int_accum_s_net),
    .d1(shift1_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux_y_net)
  );
  sysgen_mux_ee069077e1 mux1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .sel(bit1_y_net),
    .d0(mux_y_net),
    .d1(shift2_op_net),
    .y(mux1_y_net)
  );
  sysgen_mux_d116e6c30a mux2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .sel(bit2_y_net),
    .d0(mux1_y_net),
    .d1(shift4_op_net),
    .y(mux2_y_net)
  );
  sysgen_mux_081a968bff mux3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .sel(bit3_y_net),
    .d0(mux2_y_net),
    .d1(shift8_op_net),
    .y(mux3_y_net)
  );
  sysgen_mux_45a6dbe084 mux4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .sel(bit4_y_net),
    .d0(mux3_y_net),
    .d1(shift16_op_net),
    .y(mux4_y_net)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(0),
    .new_msb(0),
    .x_width(5),
    .y_width(1)
  )
  bit0 (
    .x(register9_q_net),
    .y(bit0_y_net)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(1),
    .new_msb(1),
    .x_width(5),
    .y_width(1)
  )
  bit1 (
    .x(register9_q_net),
    .y(bit1_y_net)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(2),
    .new_msb(2),
    .x_width(5),
    .y_width(1)
  )
  bit2 (
    .x(register9_q_net),
    .y(bit2_y_net)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(3),
    .new_msb(3),
    .x_width(5),
    .y_width(1)
  )
  bit3 (
    .x(register9_q_net),
    .y(bit3_y_net)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(4),
    .new_msb(4),
    .x_width(5),
    .y_width(1)
  )
  bit4 (
    .x(register9_q_net),
    .y(bit4_y_net)
  );
  sysgen_scale_b398db21c6 shift1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .ip(int_accum_s_net),
    .op(shift1_op_net)
  );
  sysgen_scale_937ac48980 shift16 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .ip(mux3_y_net),
    .op(shift16_op_net)
  );
  sysgen_scale_e9aedd542a shift2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .ip(mux_y_net),
    .op(shift2_op_net)
  );
  sysgen_scale_139e98d539 shift4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .ip(mux1_y_net),
    .op(shift4_op_net)
  );
  sysgen_scale_94c5be3c5e shift8 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .ip(mux2_y_net),
    .op(shift8_op_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/slice_1/x_psc
module hilsim_ipcore_x_psc_x0 (
  input [47-1:0] in,
  input [5-1:0] presc_shift,
  input [18-1:0] presc_mul,
  input clk_1,
  input ce_1,
  output [25-1:0] out
);
  wire [25-1:0] mult_presc_p_net;
  wire [47-1:0] int_accum_s_net;
  wire [5-1:0] register9_q_net;
  wire [18-1:0] register10_q_net;
  wire clk_net;
  wire ce_net;
  wire [78-1:0] mux4_y_net;
  wire [25-1:0] slice_dout_net;
  assign out = mult_presc_p_net;
  assign int_accum_s_net = in;
  assign register9_q_net = presc_shift;
  assign register10_q_net = presc_mul;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  hilsim_ipcore_barrel_left_shifter_x2 barrel_left_shifter (
    .in(int_accum_s_net),
    .shift_by(register9_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .out(mux4_y_net)
  );
  hilsim_ipcore_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(39),
    .din_width(78),
    .dout_arith(2),
    .dout_bin_pt(17),
    .dout_width(25),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  slice (
    .clr(1'b0),
    .en(1'b1),
    .din(mux4_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(slice_dout_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_presc (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(slice_dout_net),
    .b(register10_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_presc_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/slice_1/xdot_psc/barrel_left_shifter
module hilsim_ipcore_barrel_left_shifter_x3 (
  input [47-1:0] in,
  input [5-1:0] shift_by,
  input clk_1,
  input ce_1,
  output [78-1:0] out
);
  wire [78-1:0] mux4_y_net;
  wire [47-1:0] int_accum_s_net;
  wire [5-1:0] register8_q_net;
  wire clk_net;
  wire ce_net;
  wire [48-1:0] mux_y_net;
  wire [1-1:0] bit0_y_net;
  wire [47-1:0] shift1_op_net;
  wire [50-1:0] mux1_y_net;
  wire [1-1:0] bit1_y_net;
  wire [48-1:0] shift2_op_net;
  wire [54-1:0] mux2_y_net;
  wire [1-1:0] bit2_y_net;
  wire [50-1:0] shift4_op_net;
  wire [62-1:0] mux3_y_net;
  wire [1-1:0] bit3_y_net;
  wire [54-1:0] shift8_op_net;
  wire [1-1:0] bit4_y_net;
  wire [62-1:0] shift16_op_net;
  assign out = mux4_y_net;
  assign int_accum_s_net = in;
  assign register8_q_net = shift_by;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_mux_407dfceb37 mux (
    .clr(1'b0),
    .sel(bit0_y_net),
    .d0(int_accum_s_net),
    .d1(shift1_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux_y_net)
  );
  sysgen_mux_ee069077e1 mux1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .sel(bit1_y_net),
    .d0(mux_y_net),
    .d1(shift2_op_net),
    .y(mux1_y_net)
  );
  sysgen_mux_d116e6c30a mux2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .sel(bit2_y_net),
    .d0(mux1_y_net),
    .d1(shift4_op_net),
    .y(mux2_y_net)
  );
  sysgen_mux_081a968bff mux3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .sel(bit3_y_net),
    .d0(mux2_y_net),
    .d1(shift8_op_net),
    .y(mux3_y_net)
  );
  sysgen_mux_45a6dbe084 mux4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .sel(bit4_y_net),
    .d0(mux3_y_net),
    .d1(shift16_op_net),
    .y(mux4_y_net)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(0),
    .new_msb(0),
    .x_width(5),
    .y_width(1)
  )
  bit0 (
    .x(register8_q_net),
    .y(bit0_y_net)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(1),
    .new_msb(1),
    .x_width(5),
    .y_width(1)
  )
  bit1 (
    .x(register8_q_net),
    .y(bit1_y_net)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(2),
    .new_msb(2),
    .x_width(5),
    .y_width(1)
  )
  bit2 (
    .x(register8_q_net),
    .y(bit2_y_net)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(3),
    .new_msb(3),
    .x_width(5),
    .y_width(1)
  )
  bit3 (
    .x(register8_q_net),
    .y(bit3_y_net)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(4),
    .new_msb(4),
    .x_width(5),
    .y_width(1)
  )
  bit4 (
    .x(register8_q_net),
    .y(bit4_y_net)
  );
  sysgen_scale_b398db21c6 shift1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .ip(int_accum_s_net),
    .op(shift1_op_net)
  );
  sysgen_scale_937ac48980 shift16 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .ip(mux3_y_net),
    .op(shift16_op_net)
  );
  sysgen_scale_e9aedd542a shift2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .ip(mux_y_net),
    .op(shift2_op_net)
  );
  sysgen_scale_139e98d539 shift4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .ip(mux1_y_net),
    .op(shift4_op_net)
  );
  sysgen_scale_94c5be3c5e shift8 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .ip(mux2_y_net),
    .op(shift8_op_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/slice_1/xdot_psc
module hilsim_ipcore_xdot_psc_x0 (
  input [47-1:0] in,
  input [5-1:0] presc_shift,
  input [18-1:0] presc_mul,
  input clk_1,
  input ce_1,
  output [25-1:0] out
);
  wire [25-1:0] mult_presc_p_net;
  wire [47-1:0] int_accum_s_net;
  wire [5-1:0] register8_q_net;
  wire [18-1:0] register7_q_net;
  wire clk_net;
  wire ce_net;
  wire [78-1:0] mux4_y_net;
  wire [25-1:0] slice_dout_net;
  assign out = mult_presc_p_net;
  assign int_accum_s_net = in;
  assign register8_q_net = presc_shift;
  assign register7_q_net = presc_mul;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  hilsim_ipcore_barrel_left_shifter_x3 barrel_left_shifter (
    .in(int_accum_s_net),
    .shift_by(register8_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .out(mux4_y_net)
  );
  hilsim_ipcore_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(39),
    .din_width(78),
    .dout_arith(2),
    .dout_bin_pt(17),
    .dout_width(25),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  slice (
    .clr(1'b0),
    .en(1'b1),
    .din(mux4_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(slice_dout_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_presc (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(slice_dout_net),
    .b(register7_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_presc_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/slice_1
module hilsim_ipcore_slice_1 (
  input [25-1:0] u,
  input [8-1:0] nlf_cfg_bus_1,
  input [1-1:0] slice_cfg_1,
  input [1-1:0] nlf_switch_bus_1,
  input [8-1:0] nlf_sel_addrs_1,
  input [1-1:0] reset_in,
  input [10-1:0] nlf_cfg_bus_2,
  input [16-1:0] nlf_cfg_bus_3,
  input [1-1:0] nlf_cfg_bus_4,
  input [18-1:0] slice_cfg_2,
  input [18-1:0] slice_cfg_3,
  input [18-1:0] slice_cfg_4,
  input [1-1:0] slice_cfg_5,
  input [18-1:0] slice_cfg_6,
  input [18-1:0] slice_cfg_7,
  input [18-1:0] slice_cfg_8,
  input [1-1:0] slice_cfg_9,
  input [18-1:0] slice_cfg_10,
  input [18-1:0] slice_cfg_11,
  input [18-1:0] slice_cfg_12,
  input [5-1:0] slice_cfg_13,
  input [18-1:0] slice_cfg_14,
  input [5-1:0] slice_cfg_15,
  input [18-1:0] slice_cfg_16,
  input [1-1:0] nlf_switch_bus_2,
  input [1-1:0] nlf_switch_bus_3,
  input [8-1:0] nlf_sel_addrs_2,
  input [8-1:0] nlf_sel_addrs_3,
  input [8-1:0] nlf_sel_addrs_4,
  input [8-1:0] nlf_sel_addrs_5,
  input [8-1:0] nlf_sel_addrs_6,
  input clk_1,
  input ce_1,
  input clk_36,
  input ce_36,
  output [25-1:0] x_sync,
  output [25-1:0] xd_sync,
  output [25-1:0] xdd_sync
);
  wire [25-1:0] sync_x_q_net;
  wire [25-1:0] sync_xdot_q_net;
  wire [25-1:0] sync_xdotdot_q_net;
  wire [25-1:0] mux_u1_y_net;
  wire [8-1:0] seladdr;
  wire [1-1:0] clkxreg_slice1_cfg58_q_net;
  wire [1-1:0] switch_u;
  wire [8-1:0] sel_u0;
  wire [1-1:0] register2_q_net;
  wire [10-1:0] delay_q_net;
  wire [16-1:0] tmp_lut_doutb_net;
  wire [1-1:0] delay1_q_net;
  wire [18-1:0] clkxreg_slice1_cfg50_q_net;
  wire [18-1:0] clkxreg_slice1_cfg60_q_net;
  wire [18-1:0] clkxreg_slice1_cfg59_q_net;
  wire [1-1:0] clkxreg_slice1_cfg62_q_net;
  wire [18-1:0] clkxreg_slice1_cfg61_q_net;
  wire [18-1:0] clkxreg_slice1_cfg64_q_net;
  wire [18-1:0] clkxreg_slice1_cfg63_q_net;
  wire [1-1:0] clkxreg_slice1_cfg51_q_net;
  wire [18-1:0] clkxreg_slice1_cfg65_q_net;
  wire [18-1:0] clkxreg_slice1_cfg53_q_net;
  wire [18-1:0] clkxreg_slice1_cfg52_q_net;
  wire [5-1:0] clkxreg_slice1_cfg54_q_net;
  wire [18-1:0] clkxreg_slice1_cfg57_q_net;
  wire [5-1:0] clkxreg_slice1_cfg56_q_net;
  wire [18-1:0] clkxreg_slice1_cfg55_q_net;
  wire [1-1:0] switch_x;
  wire [1-1:0] switch_xd;
  wire [8-1:0] sel_u1;
  wire [8-1:0] sel_x0;
  wire [8-1:0] sel_x1;
  wire [8-1:0] sel_xd0;
  wire [8-1:0] sel_xd1;
  wire clk_net;
  wire ce_net;
  wire dest_clk_net;
  wire dest_ce_net;
  wire [25-1:0] add_stage_2_s_net;
  wire [25-1:0] sync_u_q_net;
  wire [18-1:0] register4_q_net;
  wire [18-1:0] register5_q_net;
  wire [18-1:0] register6_q_net;
  wire [1-1:0] sample_sync_q_net;
  wire [25-1:0] u_upsample_q_net;
  wire [25-1:0] mult_presc_p_net;
  wire [25-1:0] mult_presc_p_net_x0;
  wire [47-1:0] int_accum_s_net;
  wire [47-1:0] int_accum_s_net_x0;
  wire [5-1:0] register9_q_net;
  wire [18-1:0] register10_q_net;
  wire [5-1:0] register8_q_net;
  wire [18-1:0] register7_q_net;
  wire [18-1:0] register1_q_net;
  wire [18-1:0] register3_q_net;
  wire [5-1:0] register12_q_net;
  wire [5-1:0] register2_q_net_x0;
  wire [25-1:0] u_downsample_q_net;
  assign x_sync = sync_x_q_net;
  assign xd_sync = sync_xdot_q_net;
  assign xdd_sync = sync_xdotdot_q_net;
  assign mux_u1_y_net = u;
  assign seladdr = nlf_cfg_bus_1;
  assign clkxreg_slice1_cfg58_q_net = slice_cfg_1;
  assign switch_u = nlf_switch_bus_1;
  assign sel_u0 = nlf_sel_addrs_1;
  assign register2_q_net = reset_in;
  assign delay_q_net = nlf_cfg_bus_2;
  assign tmp_lut_doutb_net = nlf_cfg_bus_3;
  assign delay1_q_net = nlf_cfg_bus_4;
  assign clkxreg_slice1_cfg50_q_net = slice_cfg_2;
  assign clkxreg_slice1_cfg60_q_net = slice_cfg_3;
  assign clkxreg_slice1_cfg59_q_net = slice_cfg_4;
  assign clkxreg_slice1_cfg62_q_net = slice_cfg_5;
  assign clkxreg_slice1_cfg61_q_net = slice_cfg_6;
  assign clkxreg_slice1_cfg64_q_net = slice_cfg_7;
  assign clkxreg_slice1_cfg63_q_net = slice_cfg_8;
  assign clkxreg_slice1_cfg51_q_net = slice_cfg_9;
  assign clkxreg_slice1_cfg65_q_net = slice_cfg_10;
  assign clkxreg_slice1_cfg53_q_net = slice_cfg_11;
  assign clkxreg_slice1_cfg52_q_net = slice_cfg_12;
  assign clkxreg_slice1_cfg54_q_net = slice_cfg_13;
  assign clkxreg_slice1_cfg57_q_net = slice_cfg_14;
  assign clkxreg_slice1_cfg56_q_net = slice_cfg_15;
  assign clkxreg_slice1_cfg55_q_net = slice_cfg_16;
  assign switch_x = nlf_switch_bus_2;
  assign switch_xd = nlf_switch_bus_3;
  assign sel_u1 = nlf_sel_addrs_2;
  assign sel_x0 = nlf_sel_addrs_3;
  assign sel_x1 = nlf_sel_addrs_4;
  assign sel_xd0 = nlf_sel_addrs_5;
  assign sel_xd1 = nlf_sel_addrs_6;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  assign dest_clk_net = clk_36;
  assign dest_ce_net = ce_36;
  hilsim_ipcore_fb_func fb_func (
    .u(sync_u_q_net),
    .x(sync_x_q_net),
    .xd(sync_xdot_q_net),
    .nlf_cfg_bus_1(seladdr),
    .nlf_switch_bus_1(switch_u),
    .nlf_sel_addrs_1(sel_u0),
    .x_mux(clkxreg_slice1_cfg58_q_net),
    .x_gain(register4_q_net),
    .x_nlf_presc(clkxreg_slice1_cfg60_q_net),
    .x_nlf_gain(clkxreg_slice1_cfg59_q_net),
    .xd_mux(clkxreg_slice1_cfg62_q_net),
    .xd_gain(register5_q_net),
    .xd_nlf_presc(clkxreg_slice1_cfg64_q_net),
    .xd_nlf_gain(clkxreg_slice1_cfg63_q_net),
    .u_mux(clkxreg_slice1_cfg51_q_net),
    .u_gain(register6_q_net),
    .u_nlf_presc(clkxreg_slice1_cfg53_q_net),
    .u_nlf_gain(clkxreg_slice1_cfg52_q_net),
    .nlf_cfg_bus_2(delay_q_net),
    .nlf_cfg_bus_3(tmp_lut_doutb_net),
    .nlf_cfg_bus_4(delay1_q_net),
    .nlf_switch_bus_2(switch_x),
    .nlf_switch_bus_3(switch_xd),
    .nlf_sel_addrs_2(sel_u1),
    .nlf_sel_addrs_3(sel_x0),
    .nlf_sel_addrs_4(sel_x1),
    .nlf_sel_addrs_5(sel_xd0),
    .nlf_sel_addrs_6(sel_xd1),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .xdd(add_stage_2_s_net)
  );
  hilsim_ipcore_fb_resync fb_resync (
    .ts_sync_in(sample_sync_q_net),
    .reset_in(register2_q_net),
    .u(u_upsample_q_net),
    .x(mult_presc_p_net),
    .xd(mult_presc_p_net_x0),
    .xdd(add_stage_2_s_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .u_sync(sync_u_q_net),
    .x_sync(sync_x_q_net),
    .xd_sync(sync_xdot_q_net),
    .xdd_sync(sync_xdotdot_q_net)
  );
  hilsim_ipcore_int_xddot_xdot int_xddot_xdot (
    .ts_sync_in(sample_sync_q_net),
    .reset_in(register2_q_net),
    .xdot(add_stage_2_s_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .x(int_accum_s_net)
  );
  hilsim_ipcore_int_xdot_x_x0 int_xdot_x (
    .ts_sync_in(sample_sync_q_net),
    .reset_in(register2_q_net),
    .xdot(mult_presc_p_net_x0),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .x(int_accum_s_net_x0)
  );
  hilsim_ipcore_x_psc_x0 x_psc (
    .in(int_accum_s_net_x0),
    .presc_shift(register9_q_net),
    .presc_mul(register10_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .out(mult_presc_p_net)
  );
  hilsim_ipcore_xdot_psc_x0 xdot_psc (
    .in(int_accum_s_net),
    .presc_shift(register8_q_net),
    .presc_mul(register7_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .out(mult_presc_p_net_x0)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg57_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register1_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register10 (
    .en(1'b1),
    .rst(1'b0),
    .d(register3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register10_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(5),
    .init_value(5'b00000)
  )
  register12 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg54_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register12_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(5),
    .init_value(5'b00000)
  )
  register2 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg56_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register2_q_net_x0)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register3 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg55_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register3_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register4 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg50_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register4_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register5 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg61_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register5_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register6 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg65_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register6_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register7 (
    .en(1'b1),
    .rst(1'b0),
    .d(register1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register7_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(5),
    .init_value(5'b00000)
  )
  register8 (
    .en(1'b1),
    .rst(1'b0),
    .d(register12_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register8_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(5),
    .init_value(5'b00000)
  )
  register9 (
    .en(1'b1),
    .rst(1'b0),
    .d(register2_q_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(register9_q_net)
  );
  hilsim_ipcore_xlceprobe #(
    .d_width(25),
    .q_width(1)
  )
  sample_sync (
    .d(u_downsample_q_net),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .q(sample_sync_q_net)
  );
  hilsim_ipcore_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(17),
    .d_width(25),
    .ds_ratio(36),
    .latency(0),
    .phase(0),
    .q_arith(`xlSigned),
    .q_bin_pt(17),
    .q_width(25)
  )
  u_downsample (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(mux_u1_y_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(dest_clk_net),
    .dest_ce(dest_ce_net),
    .q(u_downsample_q_net)
  );
  hilsim_ipcore_xlusamp #(
    .copy_samples(1),
    .d_arith(`xlSigned),
    .d_bin_pt(17),
    .d_width(25),
    .latency(1),
    .q_arith(`xlSigned),
    .q_bin_pt(17),
    .q_width(25)
  )
  u_upsample (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .d(u_downsample_q_net),
    .src_clk(dest_clk_net),
    .src_ce(dest_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(u_upsample_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/slice_2/fb_func/nlf_u
module hilsim_ipcore_nlf_u_x0 (
  input [25-1:0] x,
  input [18-1:0] presc,
  input [18-1:0] gain,
  input [1-1:0] cfg_select_1,
  input [1-1:0] cfg_select_2,
  input [10-1:0] cfg_addr,
  input [16-1:0] cfg_data,
  input [1-1:0] cfg_we,
  input [1-1:0] nlf_switch,
  input clk_1,
  input ce_1,
  output [25-1:0] f_x
);
  wire [25-1:0] mult_out_scale_p_net;
  wire [25-1:0] sync_u_q_net;
  wire [18-1:0] register9_q_net;
  wire [18-1:0] register10_q_net;
  wire [1-1:0] register2_q_net_x0;
  wire [1-1:0] register1_q_net_x0;
  wire [10-1:0] register21_q_net;
  wire [16-1:0] register22_q_net;
  wire [1-1:0] register11_q_net;
  wire [1-1:0] register23_q_net;
  wire clk_net;
  wire ce_net;
  wire [10-1:0] addsub_s_net;
  wire [10-1:0] reinterpret_output_port_net;
  wire [10-1:0] const_1_op_net;
  wire [25-1:0] addsub1_s_net;
  wire [25-1:0] const_1_interp_op_net;
  wire [25-1:0] slice_dout_net;
  wire [16-1:0] lut_1_douta_net;
  wire [16-1:0] lut_1_doutb_net;
  wire [10-1:0] addra_mux_y_net;
  wire [16-1:0] dina_mux_y_net;
  wire [1-1:0] wea_mux_y_net;
  wire [16-1:0] zero_nlf_datatype_op_net;
  wire [1-1:0] bool_zero_we_op_net;
  wire [16-1:0] lut_2_douta_net;
  wire [16-1:0] lut_2_doutb_net;
  wire [10-1:0] addra_mux_2_y_net;
  wire [16-1:0] dina_mux_2_y_net;
  wire [1-1:0] wea_mux_2_y_net;
  wire [16-1:0] zero_nlf_datatype1_op_net;
  wire [1-1:0] bool_zero_we1_op_net;
  wire [16-1:0] register1_q_net;
  wire [16-1:0] register2_q_net;
  wire [16-1:0] register3_q_net;
  wire [16-1:0] register4_q_net;
  wire [10-1:0] cast_cutoff_lsbits_dout_net;
  wire [25-1:0] add_interpolate_s_net;
  wire [25-1:0] mult_a_p_net;
  wire [25-1:0] mult_b_p_net;
  wire [1-1:0] bool_zero_wea_op_net;
  wire [1-1:0] bool_zero_wea_2_op_net;
  wire [25-1:0] mult_inp_scale_p_net;
  wire [14-1:0] reint_sliced_output_port_net;
  wire [14-1:0] cutoff_msbits_y_net;
  wire [16-1:0] data_a_mux_y_net;
  wire [16-1:0] data_b_mux_y_net;
  wire [25-1:0] delay_sync_interpolate_q_net;
  wire [16-1:0] zero_nlf_dina_op_net;
  wire [16-1:0] zero_nlf_dina_2_op_net;
  assign f_x = mult_out_scale_p_net;
  assign sync_u_q_net = x;
  assign register9_q_net = presc;
  assign register10_q_net = gain;
  assign register2_q_net_x0 = cfg_select_1;
  assign register1_q_net_x0 = cfg_select_2;
  assign register21_q_net = cfg_addr;
  assign register22_q_net = cfg_data;
  assign register11_q_net = cfg_we;
  assign register23_q_net = nlf_switch;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlUnsigned),
    .a_bin_pt(0),
    .a_width(10),
    .b_arith(`xlUnsigned),
    .b_bin_pt(0),
    .b_width(10),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(11),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i1"),
    .extra_registers(0),
    .full_s_arith(1),
    .full_s_width(11),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlUnsigned),
    .s_bin_pt(0),
    .s_width(10)
  )
  addsub (
    .clr(1'b0),
    .en(1'b1),
    .a(reinterpret_output_port_net),
    .b(const_1_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub_s_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(26),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i2"),
    .extra_registers(3),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(4),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  addsub1 (
    .clr(1'b0),
    .en(1'b1),
    .a(const_1_interp_op_net),
    .b(slice_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub1_s_net)
  );
  hilsim_ipcore_xltdpram #(
    .addr_width_a(10),
    .addr_width_b(10),
    .clocking_mode("common_clock"),
    .data_width_a(16),
    .data_width_b(16),
    .latency(1),
    .mem_init_file("xpm_f5fed5_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_a("0"),
    .read_reset_b("0"),
    .write_mode_a("write_first"),
    .write_mode_b("write_first")
  )
  lut_1 (
    .ena(1'b1),
    .enb(1'b1),
    .rsta(1'b0),
    .rstb(1'b0),
    .addra(addra_mux_y_net),
    .dina(dina_mux_y_net),
    .wea(wea_mux_y_net),
    .addrb(addsub_s_net),
    .dinb(zero_nlf_datatype_op_net),
    .web(bool_zero_we_op_net),
    .a_clk(clk_net),
    .a_ce(ce_net),
    .b_clk(clk_net),
    .b_ce(ce_net),
    .douta(lut_1_douta_net),
    .doutb(lut_1_doutb_net)
  );
  hilsim_ipcore_xltdpram #(
    .addr_width_a(10),
    .addr_width_b(10),
    .clocking_mode("common_clock"),
    .data_width_a(16),
    .data_width_b(16),
    .latency(1),
    .mem_init_file("xpm_f5fed5_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_a("0"),
    .read_reset_b("0"),
    .write_mode_a("write_first"),
    .write_mode_b("write_first")
  )
  lut_2 (
    .ena(1'b1),
    .enb(1'b1),
    .rsta(1'b0),
    .rstb(1'b0),
    .addra(addra_mux_2_y_net),
    .dina(dina_mux_2_y_net),
    .wea(wea_mux_2_y_net),
    .addrb(addsub_s_net),
    .dinb(zero_nlf_datatype1_op_net),
    .web(bool_zero_we1_op_net),
    .a_clk(clk_net),
    .a_ce(ce_net),
    .b_clk(clk_net),
    .b_ce(ce_net),
    .douta(lut_2_douta_net),
    .doutb(lut_2_doutb_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(16),
    .init_value(16'b0000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(lut_2_douta_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register1_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(16),
    .init_value(16'b0000000000000000)
  )
  register2 (
    .en(1'b1),
    .rst(1'b0),
    .d(lut_1_douta_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register2_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(16),
    .init_value(16'b0000000000000000)
  )
  register3 (
    .en(1'b1),
    .rst(1'b0),
    .d(lut_1_doutb_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register3_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(16),
    .init_value(16'b0000000000000000)
  )
  register4 (
    .en(1'b1),
    .rst(1'b0),
    .d(lut_2_doutb_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register4_q_net)
  );
  sysgen_reinterpret_f4605e0022 reinterpret (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(cast_cutoff_lsbits_dout_net),
    .output_port(reinterpret_output_port_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(26),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i0"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  add_interpolate (
    .clr(1'b0),
    .en(1'b1),
    .a(mult_a_p_net),
    .b(mult_b_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(add_interpolate_s_net)
  );
  sysgen_mux_c832ae0d6a addra_mux (
    .clr(1'b0),
    .sel(register2_q_net_x0),
    .d0(reinterpret_output_port_net),
    .d1(register21_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(addra_mux_y_net)
  );
  sysgen_mux_c832ae0d6a addra_mux_2 (
    .clr(1'b0),
    .sel(register1_q_net_x0),
    .d0(reinterpret_output_port_net),
    .d1(register21_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(addra_mux_2_y_net)
  );
  sysgen_constant_caba551e44 bool_zero_we (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(bool_zero_we_op_net)
  );
  sysgen_constant_caba551e44 bool_zero_we1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(bool_zero_we1_op_net)
  );
  sysgen_constant_caba551e44 bool_zero_wea (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(bool_zero_wea_op_net)
  );
  sysgen_constant_caba551e44 bool_zero_wea_2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(bool_zero_wea_2_op_net)
  );
  hilsim_ipcore_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(23),
    .din_width(25),
    .dout_arith(2),
    .dout_bin_pt(9),
    .dout_width(10),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  cast_cutoff_lsbits (
    .clr(1'b0),
    .en(1'b1),
    .din(mult_inp_scale_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(cast_cutoff_lsbits_dout_net)
  );
  hilsim_ipcore_xlconvert #(
    .bool_conversion(0),
    .din_arith(1),
    .din_bin_pt(14),
    .din_width(14),
    .dout_arith(2),
    .dout_bin_pt(17),
    .dout_width(25),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  slice (
    .clr(1'b0),
    .en(1'b1),
    .din(reint_sliced_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(slice_dout_net)
  );
  sysgen_constant_7b59d789af const_1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(const_1_op_net)
  );
  sysgen_constant_ab97251e3b const_1_interp (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(const_1_interp_op_net)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(0),
    .new_msb(13),
    .x_width(25),
    .y_width(14)
  )
  cutoff_msbits (
    .x(mult_inp_scale_p_net),
    .y(cutoff_msbits_y_net)
  );
  sysgen_mux_ba276f04f0 data_a_mux (
    .clr(1'b0),
    .sel(register23_q_net),
    .d0(register2_q_net),
    .d1(register1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(data_a_mux_y_net)
  );
  sysgen_mux_ba276f04f0 data_b_mux (
    .clr(1'b0),
    .sel(register23_q_net),
    .d0(register3_q_net),
    .d1(register4_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(data_b_mux_y_net)
  );
  hilsim_ipcore_xldelay #(
    .latency(4),
    .reg_retiming(0),
    .reset(0),
    .width(25)
  )
  delay_sync_interpolate (
    .en(1'b1),
    .rst(1'b0),
    .d(slice_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_sync_interpolate_q_net)
  );
  sysgen_mux_ba276f04f0 dina_mux (
    .clr(1'b0),
    .sel(register2_q_net_x0),
    .d0(zero_nlf_dina_op_net),
    .d1(register22_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(dina_mux_y_net)
  );
  sysgen_mux_ba276f04f0 dina_mux_2 (
    .clr(1'b0),
    .sel(register1_q_net_x0),
    .d0(zero_nlf_dina_2_op_net),
    .d1(register22_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(dina_mux_2_y_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(14),
    .a_width(16),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_a_type(0),
    .c_a_width(16),
    .c_b_type(0),
    .c_b_width(25),
    .c_baat(16),
    .c_output_width(41),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i4"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_a (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(data_a_mux_y_net),
    .b(addsub1_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_a_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(14),
    .a_width(16),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_a_type(0),
    .c_a_width(16),
    .c_b_type(0),
    .c_b_width(25),
    .c_baat(16),
    .c_output_width(41),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i4"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_b (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(data_b_mux_y_net),
    .b(delay_sync_interpolate_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_b_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(23),
    .p_width(25),
    .quantization(1)
  )
  mult_inp_scale (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(sync_u_q_net),
    .b(register9_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_inp_scale_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_out_scale (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(add_interpolate_s_net),
    .b(register10_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_out_scale_p_net)
  );
  sysgen_reinterpret_67d055efc4 reint_sliced (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(cutoff_msbits_y_net),
    .output_port(reint_sliced_output_port_net)
  );
  sysgen_mux_18d2538cb2 wea_mux (
    .clr(1'b0),
    .sel(register2_q_net_x0),
    .d0(bool_zero_wea_op_net),
    .d1(register11_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(wea_mux_y_net)
  );
  sysgen_mux_18d2538cb2 wea_mux_2 (
    .clr(1'b0),
    .sel(register1_q_net_x0),
    .d0(bool_zero_wea_2_op_net),
    .d1(register11_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(wea_mux_2_y_net)
  );
  sysgen_constant_f3b3f76499 zero_nlf_datatype (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(zero_nlf_datatype_op_net)
  );
  sysgen_constant_f3b3f76499 zero_nlf_datatype1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(zero_nlf_datatype1_op_net)
  );
  sysgen_constant_f3b3f76499 zero_nlf_dina (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(zero_nlf_dina_op_net)
  );
  sysgen_constant_f3b3f76499 zero_nlf_dina_2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(zero_nlf_dina_2_op_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/slice_2/fb_func/nlf_x
module hilsim_ipcore_nlf_x_x0 (
  input [25-1:0] x,
  input [18-1:0] presc,
  input [18-1:0] gain,
  input [1-1:0] cfg_select_1,
  input [1-1:0] cfg_select_2,
  input [10-1:0] cfg_addr,
  input [16-1:0] cfg_data,
  input [1-1:0] cfg_we,
  input [1-1:0] nlf_switch,
  input clk_1,
  input ce_1,
  output [25-1:0] f_x
);
  wire [25-1:0] mult_out_scale_p_net;
  wire [25-1:0] sync_x_q_net;
  wire [18-1:0] register25_q_net;
  wire [18-1:0] register4_q_net_x0;
  wire [1-1:0] register13_q_net;
  wire [1-1:0] register3_q_net_x0;
  wire [10-1:0] register14_q_net;
  wire [16-1:0] register16_q_net;
  wire [1-1:0] register5_q_net;
  wire [1-1:0] register24_q_net;
  wire clk_net;
  wire ce_net;
  wire [10-1:0] addsub_s_net;
  wire [10-1:0] reinterpret_output_port_net;
  wire [10-1:0] const_1_op_net;
  wire [25-1:0] addsub1_s_net;
  wire [25-1:0] const_1_interp_op_net;
  wire [25-1:0] slice_dout_net;
  wire [16-1:0] lut_1_douta_net;
  wire [16-1:0] lut_1_doutb_net;
  wire [10-1:0] addra_mux_y_net;
  wire [16-1:0] dina_mux_y_net;
  wire [1-1:0] wea_mux_y_net;
  wire [16-1:0] zero_nlf_datatype_op_net;
  wire [1-1:0] bool_zero_we_op_net;
  wire [16-1:0] lut_2_douta_net;
  wire [16-1:0] lut_2_doutb_net;
  wire [10-1:0] addra_mux_2_y_net;
  wire [16-1:0] dina_mux_2_y_net;
  wire [1-1:0] wea_mux_2_y_net;
  wire [16-1:0] zero_nlf_datatype1_op_net;
  wire [1-1:0] bool_zero_we1_op_net;
  wire [16-1:0] register1_q_net;
  wire [16-1:0] register2_q_net;
  wire [16-1:0] register3_q_net;
  wire [16-1:0] register4_q_net;
  wire [10-1:0] cast_cutoff_lsbits_dout_net;
  wire [25-1:0] add_interpolate_s_net;
  wire [25-1:0] mult_a_p_net;
  wire [25-1:0] mult_b_p_net;
  wire [1-1:0] bool_zero_wea_op_net;
  wire [1-1:0] bool_zero_wea_2_op_net;
  wire [25-1:0] mult_inp_scale_p_net;
  wire [14-1:0] reint_sliced_output_port_net;
  wire [14-1:0] cutoff_msbits_y_net;
  wire [16-1:0] data_a_mux_y_net;
  wire [16-1:0] data_b_mux_y_net;
  wire [25-1:0] delay_sync_interpolate_q_net;
  wire [16-1:0] zero_nlf_dina_op_net;
  wire [16-1:0] zero_nlf_dina_2_op_net;
  assign f_x = mult_out_scale_p_net;
  assign sync_x_q_net = x;
  assign register25_q_net = presc;
  assign register4_q_net_x0 = gain;
  assign register13_q_net = cfg_select_1;
  assign register3_q_net_x0 = cfg_select_2;
  assign register14_q_net = cfg_addr;
  assign register16_q_net = cfg_data;
  assign register5_q_net = cfg_we;
  assign register24_q_net = nlf_switch;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlUnsigned),
    .a_bin_pt(0),
    .a_width(10),
    .b_arith(`xlUnsigned),
    .b_bin_pt(0),
    .b_width(10),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(11),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i1"),
    .extra_registers(0),
    .full_s_arith(1),
    .full_s_width(11),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlUnsigned),
    .s_bin_pt(0),
    .s_width(10)
  )
  addsub (
    .clr(1'b0),
    .en(1'b1),
    .a(reinterpret_output_port_net),
    .b(const_1_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub_s_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(26),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i2"),
    .extra_registers(3),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(4),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  addsub1 (
    .clr(1'b0),
    .en(1'b1),
    .a(const_1_interp_op_net),
    .b(slice_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub1_s_net)
  );
  hilsim_ipcore_xltdpram #(
    .addr_width_a(10),
    .addr_width_b(10),
    .clocking_mode("common_clock"),
    .data_width_a(16),
    .data_width_b(16),
    .latency(1),
    .mem_init_file("xpm_2a499f_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_a("0"),
    .read_reset_b("0"),
    .write_mode_a("write_first"),
    .write_mode_b("write_first")
  )
  lut_1 (
    .ena(1'b1),
    .enb(1'b1),
    .rsta(1'b0),
    .rstb(1'b0),
    .addra(addra_mux_y_net),
    .dina(dina_mux_y_net),
    .wea(wea_mux_y_net),
    .addrb(addsub_s_net),
    .dinb(zero_nlf_datatype_op_net),
    .web(bool_zero_we_op_net),
    .a_clk(clk_net),
    .a_ce(ce_net),
    .b_clk(clk_net),
    .b_ce(ce_net),
    .douta(lut_1_douta_net),
    .doutb(lut_1_doutb_net)
  );
  hilsim_ipcore_xltdpram #(
    .addr_width_a(10),
    .addr_width_b(10),
    .clocking_mode("common_clock"),
    .data_width_a(16),
    .data_width_b(16),
    .latency(1),
    .mem_init_file("xpm_2a499f_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_a("0"),
    .read_reset_b("0"),
    .write_mode_a("write_first"),
    .write_mode_b("write_first")
  )
  lut_2 (
    .ena(1'b1),
    .enb(1'b1),
    .rsta(1'b0),
    .rstb(1'b0),
    .addra(addra_mux_2_y_net),
    .dina(dina_mux_2_y_net),
    .wea(wea_mux_2_y_net),
    .addrb(addsub_s_net),
    .dinb(zero_nlf_datatype1_op_net),
    .web(bool_zero_we1_op_net),
    .a_clk(clk_net),
    .a_ce(ce_net),
    .b_clk(clk_net),
    .b_ce(ce_net),
    .douta(lut_2_douta_net),
    .doutb(lut_2_doutb_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(16),
    .init_value(16'b0000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(lut_2_douta_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register1_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(16),
    .init_value(16'b0000000000000000)
  )
  register2 (
    .en(1'b1),
    .rst(1'b0),
    .d(lut_1_doutb_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register2_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(16),
    .init_value(16'b0000000000000000)
  )
  register3 (
    .en(1'b1),
    .rst(1'b0),
    .d(lut_1_douta_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register3_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(16),
    .init_value(16'b0000000000000000)
  )
  register4 (
    .en(1'b1),
    .rst(1'b0),
    .d(lut_2_doutb_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register4_q_net)
  );
  sysgen_reinterpret_f4605e0022 reinterpret (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(cast_cutoff_lsbits_dout_net),
    .output_port(reinterpret_output_port_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(26),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i0"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  add_interpolate (
    .clr(1'b0),
    .en(1'b1),
    .a(mult_a_p_net),
    .b(mult_b_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(add_interpolate_s_net)
  );
  sysgen_mux_c832ae0d6a addra_mux (
    .clr(1'b0),
    .sel(register13_q_net),
    .d0(reinterpret_output_port_net),
    .d1(register14_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(addra_mux_y_net)
  );
  sysgen_mux_c832ae0d6a addra_mux_2 (
    .clr(1'b0),
    .sel(register3_q_net_x0),
    .d0(reinterpret_output_port_net),
    .d1(register14_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(addra_mux_2_y_net)
  );
  sysgen_constant_caba551e44 bool_zero_we (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(bool_zero_we_op_net)
  );
  sysgen_constant_caba551e44 bool_zero_we1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(bool_zero_we1_op_net)
  );
  sysgen_constant_caba551e44 bool_zero_wea (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(bool_zero_wea_op_net)
  );
  sysgen_constant_caba551e44 bool_zero_wea_2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(bool_zero_wea_2_op_net)
  );
  hilsim_ipcore_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(23),
    .din_width(25),
    .dout_arith(2),
    .dout_bin_pt(9),
    .dout_width(10),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  cast_cutoff_lsbits (
    .clr(1'b0),
    .en(1'b1),
    .din(mult_inp_scale_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(cast_cutoff_lsbits_dout_net)
  );
  hilsim_ipcore_xlconvert #(
    .bool_conversion(0),
    .din_arith(1),
    .din_bin_pt(14),
    .din_width(14),
    .dout_arith(2),
    .dout_bin_pt(17),
    .dout_width(25),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  slice (
    .clr(1'b0),
    .en(1'b1),
    .din(reint_sliced_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(slice_dout_net)
  );
  sysgen_constant_7b59d789af const_1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(const_1_op_net)
  );
  sysgen_constant_ab97251e3b const_1_interp (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(const_1_interp_op_net)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(0),
    .new_msb(13),
    .x_width(25),
    .y_width(14)
  )
  cutoff_msbits (
    .x(mult_inp_scale_p_net),
    .y(cutoff_msbits_y_net)
  );
  sysgen_mux_ba276f04f0 data_a_mux (
    .clr(1'b0),
    .sel(register24_q_net),
    .d0(register3_q_net),
    .d1(register1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(data_a_mux_y_net)
  );
  sysgen_mux_ba276f04f0 data_b_mux (
    .clr(1'b0),
    .sel(register24_q_net),
    .d0(register2_q_net),
    .d1(register4_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(data_b_mux_y_net)
  );
  hilsim_ipcore_xldelay #(
    .latency(4),
    .reg_retiming(0),
    .reset(0),
    .width(25)
  )
  delay_sync_interpolate (
    .en(1'b1),
    .rst(1'b0),
    .d(slice_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_sync_interpolate_q_net)
  );
  sysgen_mux_ba276f04f0 dina_mux (
    .clr(1'b0),
    .sel(register13_q_net),
    .d0(zero_nlf_dina_op_net),
    .d1(register16_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(dina_mux_y_net)
  );
  sysgen_mux_ba276f04f0 dina_mux_2 (
    .clr(1'b0),
    .sel(register3_q_net_x0),
    .d0(zero_nlf_dina_2_op_net),
    .d1(register16_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(dina_mux_2_y_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(14),
    .a_width(16),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_a_type(0),
    .c_a_width(16),
    .c_b_type(0),
    .c_b_width(25),
    .c_baat(16),
    .c_output_width(41),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i4"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_a (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(data_a_mux_y_net),
    .b(addsub1_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_a_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(14),
    .a_width(16),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_a_type(0),
    .c_a_width(16),
    .c_b_type(0),
    .c_b_width(25),
    .c_baat(16),
    .c_output_width(41),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i4"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_b (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(data_b_mux_y_net),
    .b(delay_sync_interpolate_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_b_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(23),
    .p_width(25),
    .quantization(1)
  )
  mult_inp_scale (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(sync_x_q_net),
    .b(register25_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_inp_scale_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_out_scale (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(add_interpolate_s_net),
    .b(register4_q_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_out_scale_p_net)
  );
  sysgen_reinterpret_67d055efc4 reint_sliced (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(cutoff_msbits_y_net),
    .output_port(reint_sliced_output_port_net)
  );
  sysgen_mux_18d2538cb2 wea_mux (
    .clr(1'b0),
    .sel(register13_q_net),
    .d0(bool_zero_wea_op_net),
    .d1(register5_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(wea_mux_y_net)
  );
  sysgen_mux_18d2538cb2 wea_mux_2 (
    .clr(1'b0),
    .sel(register3_q_net_x0),
    .d0(bool_zero_wea_2_op_net),
    .d1(register5_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(wea_mux_2_y_net)
  );
  sysgen_constant_f3b3f76499 zero_nlf_datatype (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(zero_nlf_datatype_op_net)
  );
  sysgen_constant_f3b3f76499 zero_nlf_datatype1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(zero_nlf_datatype1_op_net)
  );
  sysgen_constant_f3b3f76499 zero_nlf_dina (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(zero_nlf_dina_op_net)
  );
  sysgen_constant_f3b3f76499 zero_nlf_dina_2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(zero_nlf_dina_2_op_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/slice_2/fb_func/nlf_xd
module hilsim_ipcore_nlf_xd_x1 (
  input [25-1:0] x,
  input [18-1:0] presc,
  input [18-1:0] gain,
  input [1-1:0] cfg_select_1,
  input [1-1:0] cfg_select_2,
  input [10-1:0] cfg_addr,
  input [16-1:0] cfg_data,
  input [1-1:0] cfg_we,
  input [1-1:0] nlf_switch,
  input clk_1,
  input ce_1,
  output [25-1:0] f_x
);
  wire [25-1:0] mult_out_scale_p_net;
  wire [25-1:0] sync_xdot_q_net;
  wire [18-1:0] register18_q_net;
  wire [18-1:0] register26_q_net;
  wire [1-1:0] register6_q_net;
  wire [1-1:0] register20_q_net;
  wire [10-1:0] register7_q_net;
  wire [16-1:0] register8_q_net;
  wire [1-1:0] register27_q_net;
  wire [1-1:0] register17_q_net;
  wire clk_net;
  wire ce_net;
  wire [10-1:0] addsub_s_net;
  wire [10-1:0] reinterpret_output_port_net;
  wire [10-1:0] const_1_op_net;
  wire [25-1:0] addsub1_s_net;
  wire [25-1:0] const_1_interp_op_net;
  wire [25-1:0] slice_dout_net;
  wire [16-1:0] lut_1_douta_net;
  wire [16-1:0] lut_1_doutb_net;
  wire [10-1:0] addra_mux_y_net;
  wire [16-1:0] dina_mux_y_net;
  wire [1-1:0] wea_mux_y_net;
  wire [16-1:0] zero_nlf_datatype_op_net;
  wire [1-1:0] bool_zero_we_op_net;
  wire [16-1:0] lut_2_douta_net;
  wire [16-1:0] lut_2_doutb_net;
  wire [10-1:0] addra_mux_2_y_net;
  wire [16-1:0] dina_mux_2_y_net;
  wire [1-1:0] wea_mux_2_y_net;
  wire [16-1:0] zero_nlf_datatype1_op_net;
  wire [1-1:0] bool_zero_we1_op_net;
  wire [16-1:0] register1_q_net;
  wire [16-1:0] register2_q_net;
  wire [16-1:0] register3_q_net;
  wire [16-1:0] register4_q_net;
  wire [10-1:0] cast_cutoff_lsbits_dout_net;
  wire [25-1:0] add_interpolate_s_net;
  wire [25-1:0] mult_a_p_net;
  wire [25-1:0] mult_b_p_net;
  wire [1-1:0] bool_zero_wea_op_net;
  wire [1-1:0] bool_zero_wea_2_op_net;
  wire [25-1:0] mult_inp_scale_p_net;
  wire [14-1:0] reint_sliced_output_port_net;
  wire [14-1:0] cutoff_msbits_y_net;
  wire [16-1:0] data_a_mux_y_net;
  wire [16-1:0] data_b_mux_y_net;
  wire [25-1:0] delay_sync_interpolate_q_net;
  wire [16-1:0] zero_nlf_dina_op_net;
  wire [16-1:0] zero_nlf_dina_2_op_net;
  assign f_x = mult_out_scale_p_net;
  assign sync_xdot_q_net = x;
  assign register18_q_net = presc;
  assign register26_q_net = gain;
  assign register6_q_net = cfg_select_1;
  assign register20_q_net = cfg_select_2;
  assign register7_q_net = cfg_addr;
  assign register8_q_net = cfg_data;
  assign register27_q_net = cfg_we;
  assign register17_q_net = nlf_switch;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlUnsigned),
    .a_bin_pt(0),
    .a_width(10),
    .b_arith(`xlUnsigned),
    .b_bin_pt(0),
    .b_width(10),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(11),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i1"),
    .extra_registers(0),
    .full_s_arith(1),
    .full_s_width(11),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlUnsigned),
    .s_bin_pt(0),
    .s_width(10)
  )
  addsub (
    .clr(1'b0),
    .en(1'b1),
    .a(reinterpret_output_port_net),
    .b(const_1_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub_s_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(26),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i2"),
    .extra_registers(3),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(4),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  addsub1 (
    .clr(1'b0),
    .en(1'b1),
    .a(const_1_interp_op_net),
    .b(slice_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub1_s_net)
  );
  hilsim_ipcore_xltdpram #(
    .addr_width_a(10),
    .addr_width_b(10),
    .clocking_mode("common_clock"),
    .data_width_a(16),
    .data_width_b(16),
    .latency(1),
    .mem_init_file("xpm_f5fed5_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_a("0"),
    .read_reset_b("0"),
    .write_mode_a("write_first"),
    .write_mode_b("write_first")
  )
  lut_1 (
    .ena(1'b1),
    .enb(1'b1),
    .rsta(1'b0),
    .rstb(1'b0),
    .addra(addra_mux_y_net),
    .dina(dina_mux_y_net),
    .wea(wea_mux_y_net),
    .addrb(addsub_s_net),
    .dinb(zero_nlf_datatype_op_net),
    .web(bool_zero_we_op_net),
    .a_clk(clk_net),
    .a_ce(ce_net),
    .b_clk(clk_net),
    .b_ce(ce_net),
    .douta(lut_1_douta_net),
    .doutb(lut_1_doutb_net)
  );
  hilsim_ipcore_xltdpram #(
    .addr_width_a(10),
    .addr_width_b(10),
    .clocking_mode("common_clock"),
    .data_width_a(16),
    .data_width_b(16),
    .latency(1),
    .mem_init_file("xpm_f5fed5_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_a("0"),
    .read_reset_b("0"),
    .write_mode_a("write_first"),
    .write_mode_b("write_first")
  )
  lut_2 (
    .ena(1'b1),
    .enb(1'b1),
    .rsta(1'b0),
    .rstb(1'b0),
    .addra(addra_mux_2_y_net),
    .dina(dina_mux_2_y_net),
    .wea(wea_mux_2_y_net),
    .addrb(addsub_s_net),
    .dinb(zero_nlf_datatype1_op_net),
    .web(bool_zero_we1_op_net),
    .a_clk(clk_net),
    .a_ce(ce_net),
    .b_clk(clk_net),
    .b_ce(ce_net),
    .douta(lut_2_douta_net),
    .doutb(lut_2_doutb_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(16),
    .init_value(16'b0000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(lut_2_douta_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register1_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(16),
    .init_value(16'b0000000000000000)
  )
  register2 (
    .en(1'b1),
    .rst(1'b0),
    .d(lut_1_douta_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register2_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(16),
    .init_value(16'b0000000000000000)
  )
  register3 (
    .en(1'b1),
    .rst(1'b0),
    .d(lut_1_doutb_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register3_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(16),
    .init_value(16'b0000000000000000)
  )
  register4 (
    .en(1'b1),
    .rst(1'b0),
    .d(lut_2_doutb_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register4_q_net)
  );
  sysgen_reinterpret_f4605e0022 reinterpret (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(cast_cutoff_lsbits_dout_net),
    .output_port(reinterpret_output_port_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(26),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i0"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  add_interpolate (
    .clr(1'b0),
    .en(1'b1),
    .a(mult_a_p_net),
    .b(mult_b_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(add_interpolate_s_net)
  );
  sysgen_mux_c832ae0d6a addra_mux (
    .clr(1'b0),
    .sel(register6_q_net),
    .d0(reinterpret_output_port_net),
    .d1(register7_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(addra_mux_y_net)
  );
  sysgen_mux_c832ae0d6a addra_mux_2 (
    .clr(1'b0),
    .sel(register20_q_net),
    .d0(reinterpret_output_port_net),
    .d1(register7_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(addra_mux_2_y_net)
  );
  sysgen_constant_caba551e44 bool_zero_we (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(bool_zero_we_op_net)
  );
  sysgen_constant_caba551e44 bool_zero_we1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(bool_zero_we1_op_net)
  );
  sysgen_constant_caba551e44 bool_zero_wea (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(bool_zero_wea_op_net)
  );
  sysgen_constant_caba551e44 bool_zero_wea_2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(bool_zero_wea_2_op_net)
  );
  hilsim_ipcore_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(23),
    .din_width(25),
    .dout_arith(2),
    .dout_bin_pt(9),
    .dout_width(10),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  cast_cutoff_lsbits (
    .clr(1'b0),
    .en(1'b1),
    .din(mult_inp_scale_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(cast_cutoff_lsbits_dout_net)
  );
  hilsim_ipcore_xlconvert #(
    .bool_conversion(0),
    .din_arith(1),
    .din_bin_pt(14),
    .din_width(14),
    .dout_arith(2),
    .dout_bin_pt(17),
    .dout_width(25),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  slice (
    .clr(1'b0),
    .en(1'b1),
    .din(reint_sliced_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(slice_dout_net)
  );
  sysgen_constant_7b59d789af const_1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(const_1_op_net)
  );
  sysgen_constant_ab97251e3b const_1_interp (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(const_1_interp_op_net)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(0),
    .new_msb(13),
    .x_width(25),
    .y_width(14)
  )
  cutoff_msbits (
    .x(mult_inp_scale_p_net),
    .y(cutoff_msbits_y_net)
  );
  sysgen_mux_ba276f04f0 data_a_mux (
    .clr(1'b0),
    .sel(register17_q_net),
    .d0(register2_q_net),
    .d1(register1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(data_a_mux_y_net)
  );
  sysgen_mux_ba276f04f0 data_b_mux (
    .clr(1'b0),
    .sel(register17_q_net),
    .d0(register3_q_net),
    .d1(register4_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(data_b_mux_y_net)
  );
  hilsim_ipcore_xldelay #(
    .latency(4),
    .reg_retiming(0),
    .reset(0),
    .width(25)
  )
  delay_sync_interpolate (
    .en(1'b1),
    .rst(1'b0),
    .d(slice_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_sync_interpolate_q_net)
  );
  sysgen_mux_ba276f04f0 dina_mux (
    .clr(1'b0),
    .sel(register6_q_net),
    .d0(zero_nlf_dina_op_net),
    .d1(register8_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(dina_mux_y_net)
  );
  sysgen_mux_ba276f04f0 dina_mux_2 (
    .clr(1'b0),
    .sel(register20_q_net),
    .d0(zero_nlf_dina_2_op_net),
    .d1(register8_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(dina_mux_2_y_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(14),
    .a_width(16),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_a_type(0),
    .c_a_width(16),
    .c_b_type(0),
    .c_b_width(25),
    .c_baat(16),
    .c_output_width(41),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i4"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_a (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(data_a_mux_y_net),
    .b(addsub1_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_a_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(14),
    .a_width(16),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_a_type(0),
    .c_a_width(16),
    .c_b_type(0),
    .c_b_width(25),
    .c_baat(16),
    .c_output_width(41),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i4"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_b (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(data_b_mux_y_net),
    .b(delay_sync_interpolate_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_b_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(23),
    .p_width(25),
    .quantization(1)
  )
  mult_inp_scale (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(sync_xdot_q_net),
    .b(register18_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_inp_scale_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_out_scale (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(add_interpolate_s_net),
    .b(register26_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_out_scale_p_net)
  );
  sysgen_reinterpret_67d055efc4 reint_sliced (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(cutoff_msbits_y_net),
    .output_port(reint_sliced_output_port_net)
  );
  sysgen_mux_18d2538cb2 wea_mux (
    .clr(1'b0),
    .sel(register6_q_net),
    .d0(bool_zero_wea_op_net),
    .d1(register27_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(wea_mux_y_net)
  );
  sysgen_mux_18d2538cb2 wea_mux_2 (
    .clr(1'b0),
    .sel(register20_q_net),
    .d0(bool_zero_wea_2_op_net),
    .d1(register27_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(wea_mux_2_y_net)
  );
  sysgen_constant_f3b3f76499 zero_nlf_datatype (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(zero_nlf_datatype_op_net)
  );
  sysgen_constant_f3b3f76499 zero_nlf_datatype1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(zero_nlf_datatype1_op_net)
  );
  sysgen_constant_f3b3f76499 zero_nlf_dina (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(zero_nlf_dina_op_net)
  );
  sysgen_constant_f3b3f76499 zero_nlf_dina_2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(zero_nlf_dina_2_op_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/slice_2/fb_func
module hilsim_ipcore_fb_func_x0 (
  input [25-1:0] u,
  input [25-1:0] x,
  input [25-1:0] xd,
  input [8-1:0] nlf_cfg_bus_1,
  input [1-1:0] nlf_switch_bus_1,
  input [8-1:0] nlf_sel_addrs_1,
  input [1-1:0] x_mux,
  input [18-1:0] x_gain,
  input [18-1:0] x_nlf_presc,
  input [18-1:0] x_nlf_gain,
  input [1-1:0] xd_mux,
  input [18-1:0] xd_gain,
  input [18-1:0] xd_nlf_presc,
  input [18-1:0] xd_nlf_gain,
  input [1-1:0] u_mux,
  input [18-1:0] u_gain,
  input [18-1:0] u_nlf_presc,
  input [18-1:0] u_nlf_gain,
  input [10-1:0] nlf_cfg_bus_2,
  input [16-1:0] nlf_cfg_bus_3,
  input [1-1:0] nlf_cfg_bus_4,
  input [1-1:0] nlf_switch_bus_2,
  input [1-1:0] nlf_switch_bus_3,
  input [8-1:0] nlf_sel_addrs_2,
  input [8-1:0] nlf_sel_addrs_3,
  input [8-1:0] nlf_sel_addrs_4,
  input [8-1:0] nlf_sel_addrs_5,
  input [8-1:0] nlf_sel_addrs_6,
  input clk_1,
  input ce_1,
  output [25-1:0] xdd
);
  wire [25-1:0] add_stage_2_s_net;
  wire [25-1:0] sync_u_q_net;
  wire [25-1:0] sync_x_q_net;
  wire [25-1:0] sync_xdot_q_net;
  wire [8-1:0] seladdr;
  wire [1-1:0] switch_u;
  wire [8-1:0] sel_u0;
  wire [1-1:0] clkxreg_slice1_cfg74_q_net;
  wire [18-1:0] register4_q_net_x0;
  wire [18-1:0] clkxreg_slice1_cfg76_q_net;
  wire [18-1:0] clkxreg_slice1_cfg75_q_net;
  wire [1-1:0] clkxreg_slice1_cfg78_q_net;
  wire [18-1:0] register5_q_net_x0;
  wire [18-1:0] clkxreg_slice1_cfg80_q_net;
  wire [18-1:0] clkxreg_slice1_cfg79_q_net;
  wire [1-1:0] clkxreg_slice1_cfg67_q_net;
  wire [18-1:0] register6_q_net_x0;
  wire [18-1:0] clkxreg_slice1_cfg69_q_net;
  wire [18-1:0] clkxreg_slice1_cfg68_q_net;
  wire [10-1:0] delay_q_net;
  wire [16-1:0] tmp_lut_doutb_net;
  wire [1-1:0] delay1_q_net;
  wire [1-1:0] switch_x;
  wire [1-1:0] switch_xd;
  wire [8-1:0] sel_u1;
  wire [8-1:0] sel_x0;
  wire [8-1:0] sel_x1;
  wire [8-1:0] sel_xd0;
  wire [8-1:0] sel_xd1;
  wire clk_net;
  wire ce_net;
  wire [25-1:0] mult_out_scale_p_net;
  wire [18-1:0] register9_q_net;
  wire [18-1:0] register10_q_net;
  wire [1-1:0] register2_q_net;
  wire [1-1:0] register1_q_net;
  wire [10-1:0] register21_q_net;
  wire [16-1:0] register22_q_net;
  wire [1-1:0] register11_q_net;
  wire [1-1:0] register23_q_net;
  wire [25-1:0] mult_out_scale_p_net_x0;
  wire [18-1:0] register25_q_net;
  wire [18-1:0] register4_q_net;
  wire [1-1:0] register13_q_net;
  wire [1-1:0] register3_q_net;
  wire [10-1:0] register14_q_net;
  wire [16-1:0] register16_q_net;
  wire [1-1:0] register5_q_net;
  wire [1-1:0] register24_q_net;
  wire [25-1:0] mult_out_scale_p_net_x1;
  wire [18-1:0] register18_q_net;
  wire [18-1:0] register26_q_net;
  wire [1-1:0] register6_q_net;
  wire [1-1:0] register20_q_net;
  wire [10-1:0] register7_q_net;
  wire [16-1:0] register8_q_net;
  wire [1-1:0] register27_q_net;
  wire [1-1:0] register17_q_net;
  wire [1-1:0] relational1_op_net;
  wire [1-1:0] register12_q_net;
  wire [1-1:0] relational2_op_net;
  wire [1-1:0] register15_q_net;
  wire [1-1:0] register19_q_net;
  wire [1-1:0] relational_op_net;
  wire [1-1:0] relational5_op_net;
  wire [8-1:0] register28_q_net;
  wire [1-1:0] relational3_op_net;
  wire [1-1:0] relational4_op_net;
  wire [25-1:0] add_stage_1_s_net;
  wire [25-1:0] mult_u_gain_p_net;
  wire [25-1:0] mult_x_gain_p_net;
  wire [25-1:0] mult_xd_gain_p_net;
  wire [25-1:0] mux_u_nlf_bypass_y_net;
  wire [25-1:0] mux_x_nlf_bypass_y_net;
  wire [25-1:0] mux_xd_nlf_bypass_y_net;
  assign xdd = add_stage_2_s_net;
  assign sync_u_q_net = u;
  assign sync_x_q_net = x;
  assign sync_xdot_q_net = xd;
  assign seladdr = nlf_cfg_bus_1;
  assign switch_u = nlf_switch_bus_1;
  assign sel_u0 = nlf_sel_addrs_1;
  assign clkxreg_slice1_cfg74_q_net = x_mux;
  assign register4_q_net_x0 = x_gain;
  assign clkxreg_slice1_cfg76_q_net = x_nlf_presc;
  assign clkxreg_slice1_cfg75_q_net = x_nlf_gain;
  assign clkxreg_slice1_cfg78_q_net = xd_mux;
  assign register5_q_net_x0 = xd_gain;
  assign clkxreg_slice1_cfg80_q_net = xd_nlf_presc;
  assign clkxreg_slice1_cfg79_q_net = xd_nlf_gain;
  assign clkxreg_slice1_cfg67_q_net = u_mux;
  assign register6_q_net_x0 = u_gain;
  assign clkxreg_slice1_cfg69_q_net = u_nlf_presc;
  assign clkxreg_slice1_cfg68_q_net = u_nlf_gain;
  assign delay_q_net = nlf_cfg_bus_2;
  assign tmp_lut_doutb_net = nlf_cfg_bus_3;
  assign delay1_q_net = nlf_cfg_bus_4;
  assign switch_x = nlf_switch_bus_2;
  assign switch_xd = nlf_switch_bus_3;
  assign sel_u1 = nlf_sel_addrs_2;
  assign sel_x0 = nlf_sel_addrs_3;
  assign sel_x1 = nlf_sel_addrs_4;
  assign sel_xd0 = nlf_sel_addrs_5;
  assign sel_xd1 = nlf_sel_addrs_6;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  hilsim_ipcore_nlf_u_x0 nlf_u (
    .x(sync_u_q_net),
    .presc(register9_q_net),
    .gain(register10_q_net),
    .cfg_select_1(register2_q_net),
    .cfg_select_2(register1_q_net),
    .cfg_addr(register21_q_net),
    .cfg_data(register22_q_net),
    .cfg_we(register11_q_net),
    .nlf_switch(register23_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .f_x(mult_out_scale_p_net)
  );
  hilsim_ipcore_nlf_x_x0 nlf_x (
    .x(sync_x_q_net),
    .presc(register25_q_net),
    .gain(register4_q_net),
    .cfg_select_1(register13_q_net),
    .cfg_select_2(register3_q_net),
    .cfg_addr(register14_q_net),
    .cfg_data(register16_q_net),
    .cfg_we(register5_q_net),
    .nlf_switch(register24_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .f_x(mult_out_scale_p_net_x0)
  );
  hilsim_ipcore_nlf_xd_x1 nlf_xd (
    .x(sync_xdot_q_net),
    .presc(register18_q_net),
    .gain(register26_q_net),
    .cfg_select_1(register6_q_net),
    .cfg_select_2(register20_q_net),
    .cfg_addr(register7_q_net),
    .cfg_data(register8_q_net),
    .cfg_we(register27_q_net),
    .nlf_switch(register17_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .f_x(mult_out_scale_p_net_x1)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(relational1_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register1_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register10 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg68_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register10_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register11 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register11_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register12 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg67_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register12_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register13 (
    .en(1'b1),
    .rst(1'b0),
    .d(relational2_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register13_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(10),
    .init_value(10'b0000000000)
  )
  register14 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register14_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register15 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg74_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register15_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(16),
    .init_value(16'b0000000000000000)
  )
  register16 (
    .en(1'b1),
    .rst(1'b0),
    .d(tmp_lut_doutb_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register16_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register17 (
    .en(1'b1),
    .rst(1'b0),
    .d(switch_xd),
    .clk(clk_net),
    .ce(ce_net),
    .q(register17_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register18 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg80_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register18_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register19 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg78_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register19_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register2 (
    .en(1'b1),
    .rst(1'b0),
    .d(relational_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register2_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register20 (
    .en(1'b1),
    .rst(1'b0),
    .d(relational5_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register20_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(10),
    .init_value(10'b0000000000)
  )
  register21 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register21_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(16),
    .init_value(16'b0000000000000000)
  )
  register22 (
    .en(1'b1),
    .rst(1'b0),
    .d(tmp_lut_doutb_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register22_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register23 (
    .en(1'b1),
    .rst(1'b0),
    .d(switch_u),
    .clk(clk_net),
    .ce(ce_net),
    .q(register23_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register24 (
    .en(1'b1),
    .rst(1'b0),
    .d(switch_x),
    .clk(clk_net),
    .ce(ce_net),
    .q(register24_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register25 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg76_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register25_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register26 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg79_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register26_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register27 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register27_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(8),
    .init_value(8'b00000000)
  )
  register28 (
    .en(1'b1),
    .rst(1'b0),
    .d(seladdr),
    .clk(clk_net),
    .ce(ce_net),
    .q(register28_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register3 (
    .en(1'b1),
    .rst(1'b0),
    .d(relational3_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register3_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register4 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg75_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register4_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register5 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register5_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register6 (
    .en(1'b1),
    .rst(1'b0),
    .d(relational4_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register6_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(10),
    .init_value(10'b0000000000)
  )
  register7 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register7_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(16),
    .init_value(16'b0000000000000000)
  )
  register8 (
    .en(1'b1),
    .rst(1'b0),
    .d(tmp_lut_doutb_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register8_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register9 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg69_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register9_q_net)
  );
  sysgen_relational_a2a0814d7a relational (
    .clr(1'b0),
    .a(register28_q_net),
    .b(sel_u0),
    .clk(clk_net),
    .ce(ce_net),
    .op(relational_op_net)
  );
  sysgen_relational_a2a0814d7a relational1 (
    .clr(1'b0),
    .a(register28_q_net),
    .b(sel_u1),
    .clk(clk_net),
    .ce(ce_net),
    .op(relational1_op_net)
  );
  sysgen_relational_a2a0814d7a relational2 (
    .clr(1'b0),
    .a(register28_q_net),
    .b(sel_x0),
    .clk(clk_net),
    .ce(ce_net),
    .op(relational2_op_net)
  );
  sysgen_relational_a2a0814d7a relational3 (
    .clr(1'b0),
    .a(register28_q_net),
    .b(sel_x1),
    .clk(clk_net),
    .ce(ce_net),
    .op(relational3_op_net)
  );
  sysgen_relational_a2a0814d7a relational4 (
    .clr(1'b0),
    .a(register28_q_net),
    .b(sel_xd0),
    .clk(clk_net),
    .ce(ce_net),
    .op(relational4_op_net)
  );
  sysgen_relational_a2a0814d7a relational5 (
    .clr(1'b0),
    .a(register28_q_net),
    .b(sel_xd1),
    .clk(clk_net),
    .ce(ce_net),
    .op(relational5_op_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(26),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i0"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  add_stage_1 (
    .clr(1'b0),
    .en(1'b1),
    .a(mult_u_gain_p_net),
    .b(mult_x_gain_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(add_stage_1_s_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(26),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i0"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  add_stage_2 (
    .clr(1'b0),
    .en(1'b1),
    .a(add_stage_1_s_net),
    .b(mult_xd_gain_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(add_stage_2_s_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_u_gain (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux_u_nlf_bypass_y_net),
    .b(register6_q_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_u_gain_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_x_gain (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux_x_nlf_bypass_y_net),
    .b(register4_q_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_x_gain_p_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_xd_gain (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(mux_xd_nlf_bypass_y_net),
    .b(register5_q_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_xd_gain_p_net)
  );
  sysgen_mux_d68a8b9ad8 mux_u_nlf_bypass (
    .clr(1'b0),
    .sel(register12_q_net),
    .d0(mult_out_scale_p_net),
    .d1(sync_u_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux_u_nlf_bypass_y_net)
  );
  sysgen_mux_d68a8b9ad8 mux_x_nlf_bypass (
    .clr(1'b0),
    .sel(register15_q_net),
    .d0(mult_out_scale_p_net_x0),
    .d1(sync_x_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux_x_nlf_bypass_y_net)
  );
  sysgen_mux_d68a8b9ad8 mux_xd_nlf_bypass (
    .clr(1'b0),
    .sel(register19_q_net),
    .d0(mult_out_scale_p_net_x1),
    .d1(sync_xdot_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux_xd_nlf_bypass_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/slice_2/fb_resync
module hilsim_ipcore_fb_resync_x1 (
  input [1-1:0] ts_sync_in,
  input [1-1:0] reset_in,
  input [25-1:0] u,
  input [25-1:0] x,
  input [25-1:0] xd,
  input [25-1:0] xdd,
  input clk_1,
  input ce_1,
  output [25-1:0] u_sync,
  output [25-1:0] x_sync,
  output [25-1:0] xd_sync,
  output [25-1:0] xdd_sync
);
  wire [25-1:0] sync_u_q_net;
  wire [25-1:0] sync_x_q_net;
  wire [25-1:0] sync_xdot_q_net;
  wire [25-1:0] sync_xdotdot_q_net;
  wire [1-1:0] sample_sync_q_net;
  wire [1-1:0] register3_q_net;
  wire [25-1:0] u_upsample_q_net;
  wire [25-1:0] mult_presc_p_net;
  wire [25-1:0] mult_presc_p_net_x0;
  wire [25-1:0] add_stage_2_s_net;
  wire clk_net;
  wire ce_net;
  assign u_sync = sync_u_q_net;
  assign x_sync = sync_x_q_net;
  assign xd_sync = sync_xdot_q_net;
  assign xdd_sync = sync_xdotdot_q_net;
  assign sample_sync_q_net = ts_sync_in;
  assign register3_q_net = reset_in;
  assign u_upsample_q_net = u;
  assign mult_presc_p_net = x;
  assign mult_presc_p_net_x0 = xd;
  assign add_stage_2_s_net = xdd;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  hilsim_ipcore_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  sync_u (
    .d(u_upsample_q_net),
    .rst(register3_q_net),
    .en(sample_sync_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(sync_u_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  sync_x (
    .d(mult_presc_p_net),
    .rst(register3_q_net),
    .en(sample_sync_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(sync_x_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  sync_xdot (
    .d(mult_presc_p_net_x0),
    .rst(register3_q_net),
    .en(sample_sync_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(sync_xdot_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  sync_xdotdot (
    .d(add_stage_2_s_net),
    .rst(register3_q_net),
    .en(sample_sync_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(sync_xdotdot_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/slice_2/int_xddot_xdot
module hilsim_ipcore_int_xddot_xdot_x1 (
  input [1-1:0] ts_sync_in,
  input [1-1:0] reset_in,
  input [25-1:0] xdot,
  input clk_1,
  input ce_1,
  output [47-1:0] x
);
  wire [47-1:0] int_accum_s_net;
  wire [1-1:0] sample_sync_q_net;
  wire [1-1:0] register3_q_net;
  wire [25-1:0] add_stage_2_s_net;
  wire clk_net;
  wire ce_net;
  wire [18-1:0] constant_op_net;
  wire [47-1:0] register_q_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] half_op_net;
  wire [25-1:0] add_stage_1_s_net;
  wire [25-1:0] add_stage_2_s_net_x0;
  wire [25-1:0] deltat_residual_mult_p_net;
  wire [47-1:0] shift_prescale_op_net;
  wire [47-1:0] prepend_zeros_dout_net;
  assign x = int_accum_s_net;
  assign sample_sync_q_net = ts_sync_in;
  assign register3_q_net = reset_in;
  assign add_stage_2_s_net = xdot;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_constant_df08e87bb9 constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(47),
    .init_value(47'b00000000000000000000000000000000000000000000000)
  )
  register (
    .d(int_accum_s_net),
    .rst(register3_q_net),
    .en(sample_sync_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register1 (
    .d(half_op_net),
    .rst(register3_q_net),
    .en(sample_sync_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register1_q_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(18),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(27),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i4"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(27),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  add_stage_1 (
    .clr(1'b0),
    .en(1'b1),
    .a(add_stage_2_s_net),
    .b(half_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(add_stage_1_s_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(18),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(27),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i5"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(27),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  add_stage_2 (
    .clr(1'b0),
    .en(1'b1),
    .a(add_stage_1_s_net),
    .b(register1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(add_stage_2_s_net_x0)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  deltat_residual_mult (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(add_stage_2_s_net_x0),
    .b(constant_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(deltat_residual_mult_p_net)
  );
  sysgen_scale_56fa4fa0f6 half (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .ip(add_stage_2_s_net),
    .op(half_op_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(39),
    .a_width(47),
    .b_arith(`xlSigned),
    .b_bin_pt(39),
    .b_width(47),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(48),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i6"),
    .extra_registers(1),
    .full_s_arith(2),
    .full_s_width(48),
    .latency(2),
    .overflow(2),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(39),
    .s_width(47)
  )
  int_accum (
    .clr(1'b0),
    .en(1'b1),
    .a(shift_prescale_op_net),
    .b(register_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(int_accum_s_net)
  );
  hilsim_ipcore_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(17),
    .din_width(25),
    .dout_arith(2),
    .dout_bin_pt(17),
    .dout_width(47),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  prepend_zeros (
    .clr(1'b0),
    .en(1'b1),
    .din(deltat_residual_mult_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(prepend_zeros_dout_net)
  );
  sysgen_scale_1b4332142c shift_prescale (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .ip(prepend_zeros_dout_net),
    .op(shift_prescale_op_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/slice_2/int_xdot_x
module hilsim_ipcore_int_xdot_x_x1 (
  input [1-1:0] ts_sync_in,
  input [1-1:0] reset_in,
  input [25-1:0] xdot,
  input clk_1,
  input ce_1,
  output [47-1:0] x
);
  wire [47-1:0] int_accum_s_net;
  wire [1-1:0] sample_sync_q_net;
  wire [1-1:0] register3_q_net;
  wire [25-1:0] mult_presc_p_net;
  wire clk_net;
  wire ce_net;
  wire [18-1:0] constant_op_net;
  wire [47-1:0] register_q_net;
  wire [25-1:0] register1_q_net;
  wire [25-1:0] add_stage_3_s_net;
  wire [25-1:0] deltat_residual_mult_p_net;
  wire [25-1:0] half1_op_net;
  wire [47-1:0] shift_prescale_op_net;
  wire [47-1:0] prepend_zeros_dout_net;
  assign x = int_accum_s_net;
  assign sample_sync_q_net = ts_sync_in;
  assign register3_q_net = reset_in;
  assign mult_presc_p_net = xdot;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_constant_df08e87bb9 constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(47),
    .init_value(47'b00000000000000000000000000000000000000000000000)
  )
  register (
    .d(int_accum_s_net),
    .rst(register3_q_net),
    .en(sample_sync_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  register1 (
    .d(mult_presc_p_net),
    .rst(register3_q_net),
    .en(sample_sync_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register1_q_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(17),
    .b_width(25),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(26),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i0"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(26),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(17),
    .s_width(25)
  )
  add_stage_3 (
    .clr(1'b0),
    .en(1'b1),
    .a(mult_presc_p_net),
    .b(register1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(add_stage_3_s_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(18),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  deltat_residual_mult (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(half1_op_net),
    .b(constant_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(deltat_residual_mult_p_net)
  );
  sysgen_scale_56fa4fa0f6 half1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .ip(add_stage_3_s_net),
    .op(half1_op_net)
  );
  hilsim_ipcore_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(39),
    .a_width(47),
    .b_arith(`xlSigned),
    .b_bin_pt(39),
    .b_width(47),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(48),
    .core_name0("hilsim_ipcore_c_addsub_v12_0_i6"),
    .extra_registers(1),
    .full_s_arith(2),
    .full_s_width(48),
    .latency(2),
    .overflow(2),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(39),
    .s_width(47)
  )
  int_accum (
    .clr(1'b0),
    .en(1'b1),
    .a(shift_prescale_op_net),
    .b(register_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(int_accum_s_net)
  );
  hilsim_ipcore_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(17),
    .din_width(25),
    .dout_arith(2),
    .dout_bin_pt(17),
    .dout_width(47),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  prepend_zeros (
    .clr(1'b0),
    .en(1'b1),
    .din(deltat_residual_mult_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(prepend_zeros_dout_net)
  );
  sysgen_scale_1b4332142c shift_prescale (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .ip(prepend_zeros_dout_net),
    .op(shift_prescale_op_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/slice_2/x_psc/barrel_left_shifter
module hilsim_ipcore_barrel_left_shifter_x4 (
  input [47-1:0] in,
  input [5-1:0] shift_by,
  input clk_1,
  input ce_1,
  output [78-1:0] out
);
  wire [78-1:0] mux4_y_net;
  wire [47-1:0] int_accum_s_net;
  wire [5-1:0] register9_q_net;
  wire clk_net;
  wire ce_net;
  wire [48-1:0] mux_y_net;
  wire [1-1:0] bit0_y_net;
  wire [47-1:0] shift1_op_net;
  wire [50-1:0] mux1_y_net;
  wire [1-1:0] bit1_y_net;
  wire [48-1:0] shift2_op_net;
  wire [54-1:0] mux2_y_net;
  wire [1-1:0] bit2_y_net;
  wire [50-1:0] shift4_op_net;
  wire [62-1:0] mux3_y_net;
  wire [1-1:0] bit3_y_net;
  wire [54-1:0] shift8_op_net;
  wire [1-1:0] bit4_y_net;
  wire [62-1:0] shift16_op_net;
  assign out = mux4_y_net;
  assign int_accum_s_net = in;
  assign register9_q_net = shift_by;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_mux_407dfceb37 mux (
    .clr(1'b0),
    .sel(bit0_y_net),
    .d0(int_accum_s_net),
    .d1(shift1_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux_y_net)
  );
  sysgen_mux_ee069077e1 mux1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .sel(bit1_y_net),
    .d0(mux_y_net),
    .d1(shift2_op_net),
    .y(mux1_y_net)
  );
  sysgen_mux_d116e6c30a mux2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .sel(bit2_y_net),
    .d0(mux1_y_net),
    .d1(shift4_op_net),
    .y(mux2_y_net)
  );
  sysgen_mux_081a968bff mux3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .sel(bit3_y_net),
    .d0(mux2_y_net),
    .d1(shift8_op_net),
    .y(mux3_y_net)
  );
  sysgen_mux_45a6dbe084 mux4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .sel(bit4_y_net),
    .d0(mux3_y_net),
    .d1(shift16_op_net),
    .y(mux4_y_net)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(0),
    .new_msb(0),
    .x_width(5),
    .y_width(1)
  )
  bit0 (
    .x(register9_q_net),
    .y(bit0_y_net)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(1),
    .new_msb(1),
    .x_width(5),
    .y_width(1)
  )
  bit1 (
    .x(register9_q_net),
    .y(bit1_y_net)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(2),
    .new_msb(2),
    .x_width(5),
    .y_width(1)
  )
  bit2 (
    .x(register9_q_net),
    .y(bit2_y_net)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(3),
    .new_msb(3),
    .x_width(5),
    .y_width(1)
  )
  bit3 (
    .x(register9_q_net),
    .y(bit3_y_net)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(4),
    .new_msb(4),
    .x_width(5),
    .y_width(1)
  )
  bit4 (
    .x(register9_q_net),
    .y(bit4_y_net)
  );
  sysgen_scale_b398db21c6 shift1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .ip(int_accum_s_net),
    .op(shift1_op_net)
  );
  sysgen_scale_937ac48980 shift16 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .ip(mux3_y_net),
    .op(shift16_op_net)
  );
  sysgen_scale_e9aedd542a shift2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .ip(mux_y_net),
    .op(shift2_op_net)
  );
  sysgen_scale_139e98d539 shift4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .ip(mux1_y_net),
    .op(shift4_op_net)
  );
  sysgen_scale_94c5be3c5e shift8 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .ip(mux2_y_net),
    .op(shift8_op_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/slice_2/x_psc
module hilsim_ipcore_x_psc_x1 (
  input [47-1:0] in,
  input [5-1:0] presc_shift,
  input [18-1:0] presc_mul,
  input clk_1,
  input ce_1,
  output [25-1:0] out
);
  wire [25-1:0] mult_presc_p_net;
  wire [47-1:0] int_accum_s_net;
  wire [5-1:0] register9_q_net;
  wire [18-1:0] register10_q_net;
  wire clk_net;
  wire ce_net;
  wire [78-1:0] mux4_y_net;
  wire [25-1:0] slice_dout_net;
  assign out = mult_presc_p_net;
  assign int_accum_s_net = in;
  assign register9_q_net = presc_shift;
  assign register10_q_net = presc_mul;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  hilsim_ipcore_barrel_left_shifter_x4 barrel_left_shifter (
    .in(int_accum_s_net),
    .shift_by(register9_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .out(mux4_y_net)
  );
  hilsim_ipcore_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(39),
    .din_width(78),
    .dout_arith(2),
    .dout_bin_pt(17),
    .dout_width(25),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  slice (
    .clr(1'b0),
    .en(1'b1),
    .din(mux4_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(slice_dout_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_presc (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(slice_dout_net),
    .b(register10_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_presc_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/slice_2/xdot_psc/barrel_left_shifter
module hilsim_ipcore_barrel_left_shifter_x1 (
  input [47-1:0] in,
  input [5-1:0] shift_by,
  input clk_1,
  input ce_1,
  output [78-1:0] out
);
  wire [78-1:0] mux4_y_net;
  wire [47-1:0] int_accum_s_net;
  wire [5-1:0] register8_q_net;
  wire clk_net;
  wire ce_net;
  wire [48-1:0] mux_y_net;
  wire [1-1:0] bit0_y_net;
  wire [47-1:0] shift1_op_net;
  wire [50-1:0] mux1_y_net;
  wire [1-1:0] bit1_y_net;
  wire [48-1:0] shift2_op_net;
  wire [54-1:0] mux2_y_net;
  wire [1-1:0] bit2_y_net;
  wire [50-1:0] shift4_op_net;
  wire [62-1:0] mux3_y_net;
  wire [1-1:0] bit3_y_net;
  wire [54-1:0] shift8_op_net;
  wire [1-1:0] bit4_y_net;
  wire [62-1:0] shift16_op_net;
  assign out = mux4_y_net;
  assign int_accum_s_net = in;
  assign register8_q_net = shift_by;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_mux_407dfceb37 mux (
    .clr(1'b0),
    .sel(bit0_y_net),
    .d0(int_accum_s_net),
    .d1(shift1_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux_y_net)
  );
  sysgen_mux_ee069077e1 mux1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .sel(bit1_y_net),
    .d0(mux_y_net),
    .d1(shift2_op_net),
    .y(mux1_y_net)
  );
  sysgen_mux_d116e6c30a mux2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .sel(bit2_y_net),
    .d0(mux1_y_net),
    .d1(shift4_op_net),
    .y(mux2_y_net)
  );
  sysgen_mux_081a968bff mux3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .sel(bit3_y_net),
    .d0(mux2_y_net),
    .d1(shift8_op_net),
    .y(mux3_y_net)
  );
  sysgen_mux_45a6dbe084 mux4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .sel(bit4_y_net),
    .d0(mux3_y_net),
    .d1(shift16_op_net),
    .y(mux4_y_net)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(0),
    .new_msb(0),
    .x_width(5),
    .y_width(1)
  )
  bit0 (
    .x(register8_q_net),
    .y(bit0_y_net)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(1),
    .new_msb(1),
    .x_width(5),
    .y_width(1)
  )
  bit1 (
    .x(register8_q_net),
    .y(bit1_y_net)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(2),
    .new_msb(2),
    .x_width(5),
    .y_width(1)
  )
  bit2 (
    .x(register8_q_net),
    .y(bit2_y_net)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(3),
    .new_msb(3),
    .x_width(5),
    .y_width(1)
  )
  bit3 (
    .x(register8_q_net),
    .y(bit3_y_net)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(4),
    .new_msb(4),
    .x_width(5),
    .y_width(1)
  )
  bit4 (
    .x(register8_q_net),
    .y(bit4_y_net)
  );
  sysgen_scale_b398db21c6 shift1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .ip(int_accum_s_net),
    .op(shift1_op_net)
  );
  sysgen_scale_937ac48980 shift16 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .ip(mux3_y_net),
    .op(shift16_op_net)
  );
  sysgen_scale_e9aedd542a shift2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .ip(mux_y_net),
    .op(shift2_op_net)
  );
  sysgen_scale_139e98d539 shift4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .ip(mux1_y_net),
    .op(shift4_op_net)
  );
  sysgen_scale_94c5be3c5e shift8 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .ip(mux2_y_net),
    .op(shift8_op_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/slice_2/xdot_psc
module hilsim_ipcore_xdot_psc_x1 (
  input [47-1:0] in,
  input [5-1:0] presc_shift,
  input [18-1:0] presc_mul,
  input clk_1,
  input ce_1,
  output [25-1:0] out
);
  wire [25-1:0] mult_presc_p_net;
  wire [47-1:0] int_accum_s_net;
  wire [5-1:0] register8_q_net;
  wire [18-1:0] register7_q_net;
  wire clk_net;
  wire ce_net;
  wire [78-1:0] mux4_y_net;
  wire [25-1:0] slice_dout_net;
  assign out = mult_presc_p_net;
  assign int_accum_s_net = in;
  assign register8_q_net = presc_shift;
  assign register7_q_net = presc_mul;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  hilsim_ipcore_barrel_left_shifter_x1 barrel_left_shifter (
    .in(int_accum_s_net),
    .shift_by(register8_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .out(mux4_y_net)
  );
  hilsim_ipcore_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(39),
    .din_width(78),
    .dout_arith(2),
    .dout_bin_pt(17),
    .dout_width(25),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  slice (
    .clr(1'b0),
    .en(1'b1),
    .din(mux4_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(slice_dout_net)
  );
  hilsim_ipcore_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(17),
    .a_width(25),
    .b_arith(`xlSigned),
    .b_bin_pt(10),
    .b_width(18),
    .c_a_type(0),
    .c_a_width(25),
    .c_b_type(0),
    .c_b_width(18),
    .c_baat(25),
    .c_output_width(43),
    .c_type(0),
    .core_name0("hilsim_ipcore_mult_gen_v12_0_i3"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(17),
    .p_width(25),
    .quantization(1)
  )
  mult_presc (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(slice_dout_net),
    .b(register7_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_presc_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain/slice_2
module hilsim_ipcore_slice_2 (
  input [25-1:0] u,
  input [8-1:0] nlf_cfg_bus_1,
  input [1-1:0] slice_cfg_1,
  input [1-1:0] nlf_switch_bus_1,
  input [8-1:0] nlf_sel_addrs_1,
  input [1-1:0] reset_in,
  input [10-1:0] nlf_cfg_bus_2,
  input [16-1:0] nlf_cfg_bus_3,
  input [1-1:0] nlf_cfg_bus_4,
  input [18-1:0] slice_cfg_2,
  input [18-1:0] slice_cfg_3,
  input [18-1:0] slice_cfg_4,
  input [1-1:0] slice_cfg_5,
  input [18-1:0] slice_cfg_6,
  input [18-1:0] slice_cfg_7,
  input [18-1:0] slice_cfg_8,
  input [1-1:0] slice_cfg_9,
  input [18-1:0] slice_cfg_10,
  input [18-1:0] slice_cfg_11,
  input [18-1:0] slice_cfg_12,
  input [5-1:0] slice_cfg_13,
  input [18-1:0] slice_cfg_14,
  input [5-1:0] slice_cfg_15,
  input [18-1:0] slice_cfg_16,
  input [1-1:0] nlf_switch_bus_2,
  input [1-1:0] nlf_switch_bus_3,
  input [8-1:0] nlf_sel_addrs_2,
  input [8-1:0] nlf_sel_addrs_3,
  input [8-1:0] nlf_sel_addrs_4,
  input [8-1:0] nlf_sel_addrs_5,
  input [8-1:0] nlf_sel_addrs_6,
  input clk_1,
  input ce_1,
  input clk_36,
  input ce_36,
  output [25-1:0] x_sync,
  output [25-1:0] xd_sync,
  output [25-1:0] xdd_sync
);
  wire [25-1:0] sync_x_q_net;
  wire [25-1:0] sync_xdot_q_net;
  wire [25-1:0] sync_xdotdot_q_net;
  wire [25-1:0] mux_u2_y_net;
  wire [8-1:0] seladdr;
  wire [1-1:0] clkxreg_slice1_cfg74_q_net;
  wire [1-1:0] switch_u;
  wire [8-1:0] sel_u0;
  wire [1-1:0] register3_q_net;
  wire [10-1:0] delay_q_net;
  wire [16-1:0] tmp_lut_doutb_net;
  wire [1-1:0] delay1_q_net;
  wire [18-1:0] clkxreg_slice1_cfg66_q_net;
  wire [18-1:0] clkxreg_slice1_cfg76_q_net;
  wire [18-1:0] clkxreg_slice1_cfg75_q_net;
  wire [1-1:0] clkxreg_slice1_cfg78_q_net;
  wire [18-1:0] clkxreg_slice1_cfg77_q_net;
  wire [18-1:0] clkxreg_slice1_cfg80_q_net;
  wire [18-1:0] clkxreg_slice1_cfg79_q_net;
  wire [1-1:0] clkxreg_slice1_cfg67_q_net;
  wire [18-1:0] clkxreg_slice1_cfg81_q_net;
  wire [18-1:0] clkxreg_slice1_cfg69_q_net;
  wire [18-1:0] clkxreg_slice1_cfg68_q_net;
  wire [5-1:0] clkxreg_slice1_cfg70_q_net;
  wire [18-1:0] clkxreg_slice1_cfg73_q_net;
  wire [5-1:0] clkxreg_slice1_cfg72_q_net;
  wire [18-1:0] clkxreg_slice1_cfg71_q_net;
  wire [1-1:0] switch_x;
  wire [1-1:0] switch_xd;
  wire [8-1:0] sel_u1;
  wire [8-1:0] sel_x0;
  wire [8-1:0] sel_x1;
  wire [8-1:0] sel_xd0;
  wire [8-1:0] sel_xd1;
  wire clk_net;
  wire ce_net;
  wire dest_clk_net;
  wire dest_ce_net;
  wire [25-1:0] add_stage_2_s_net;
  wire [25-1:0] sync_u_q_net;
  wire [18-1:0] register4_q_net;
  wire [18-1:0] register5_q_net;
  wire [18-1:0] register6_q_net;
  wire [1-1:0] sample_sync_q_net;
  wire [25-1:0] u_upsample_q_net;
  wire [25-1:0] mult_presc_p_net;
  wire [25-1:0] mult_presc_p_net_x0;
  wire [47-1:0] int_accum_s_net;
  wire [47-1:0] int_accum_s_net_x0;
  wire [5-1:0] register9_q_net;
  wire [18-1:0] register10_q_net;
  wire [5-1:0] register8_q_net;
  wire [18-1:0] register7_q_net;
  wire [18-1:0] register1_q_net;
  wire [18-1:0] register3_q_net_x0;
  wire [5-1:0] register12_q_net;
  wire [5-1:0] register2_q_net;
  wire [25-1:0] u_downsample_q_net;
  assign x_sync = sync_x_q_net;
  assign xd_sync = sync_xdot_q_net;
  assign xdd_sync = sync_xdotdot_q_net;
  assign mux_u2_y_net = u;
  assign seladdr = nlf_cfg_bus_1;
  assign clkxreg_slice1_cfg74_q_net = slice_cfg_1;
  assign switch_u = nlf_switch_bus_1;
  assign sel_u0 = nlf_sel_addrs_1;
  assign register3_q_net = reset_in;
  assign delay_q_net = nlf_cfg_bus_2;
  assign tmp_lut_doutb_net = nlf_cfg_bus_3;
  assign delay1_q_net = nlf_cfg_bus_4;
  assign clkxreg_slice1_cfg66_q_net = slice_cfg_2;
  assign clkxreg_slice1_cfg76_q_net = slice_cfg_3;
  assign clkxreg_slice1_cfg75_q_net = slice_cfg_4;
  assign clkxreg_slice1_cfg78_q_net = slice_cfg_5;
  assign clkxreg_slice1_cfg77_q_net = slice_cfg_6;
  assign clkxreg_slice1_cfg80_q_net = slice_cfg_7;
  assign clkxreg_slice1_cfg79_q_net = slice_cfg_8;
  assign clkxreg_slice1_cfg67_q_net = slice_cfg_9;
  assign clkxreg_slice1_cfg81_q_net = slice_cfg_10;
  assign clkxreg_slice1_cfg69_q_net = slice_cfg_11;
  assign clkxreg_slice1_cfg68_q_net = slice_cfg_12;
  assign clkxreg_slice1_cfg70_q_net = slice_cfg_13;
  assign clkxreg_slice1_cfg73_q_net = slice_cfg_14;
  assign clkxreg_slice1_cfg72_q_net = slice_cfg_15;
  assign clkxreg_slice1_cfg71_q_net = slice_cfg_16;
  assign switch_x = nlf_switch_bus_2;
  assign switch_xd = nlf_switch_bus_3;
  assign sel_u1 = nlf_sel_addrs_2;
  assign sel_x0 = nlf_sel_addrs_3;
  assign sel_x1 = nlf_sel_addrs_4;
  assign sel_xd0 = nlf_sel_addrs_5;
  assign sel_xd1 = nlf_sel_addrs_6;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  assign dest_clk_net = clk_36;
  assign dest_ce_net = ce_36;
  hilsim_ipcore_fb_func_x0 fb_func (
    .u(sync_u_q_net),
    .x(sync_x_q_net),
    .xd(sync_xdot_q_net),
    .nlf_cfg_bus_1(seladdr),
    .nlf_switch_bus_1(switch_u),
    .nlf_sel_addrs_1(sel_u0),
    .x_mux(clkxreg_slice1_cfg74_q_net),
    .x_gain(register4_q_net),
    .x_nlf_presc(clkxreg_slice1_cfg76_q_net),
    .x_nlf_gain(clkxreg_slice1_cfg75_q_net),
    .xd_mux(clkxreg_slice1_cfg78_q_net),
    .xd_gain(register5_q_net),
    .xd_nlf_presc(clkxreg_slice1_cfg80_q_net),
    .xd_nlf_gain(clkxreg_slice1_cfg79_q_net),
    .u_mux(clkxreg_slice1_cfg67_q_net),
    .u_gain(register6_q_net),
    .u_nlf_presc(clkxreg_slice1_cfg69_q_net),
    .u_nlf_gain(clkxreg_slice1_cfg68_q_net),
    .nlf_cfg_bus_2(delay_q_net),
    .nlf_cfg_bus_3(tmp_lut_doutb_net),
    .nlf_cfg_bus_4(delay1_q_net),
    .nlf_switch_bus_2(switch_x),
    .nlf_switch_bus_3(switch_xd),
    .nlf_sel_addrs_2(sel_u1),
    .nlf_sel_addrs_3(sel_x0),
    .nlf_sel_addrs_4(sel_x1),
    .nlf_sel_addrs_5(sel_xd0),
    .nlf_sel_addrs_6(sel_xd1),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .xdd(add_stage_2_s_net)
  );
  hilsim_ipcore_fb_resync_x1 fb_resync (
    .ts_sync_in(sample_sync_q_net),
    .reset_in(register3_q_net),
    .u(u_upsample_q_net),
    .x(mult_presc_p_net),
    .xd(mult_presc_p_net_x0),
    .xdd(add_stage_2_s_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .u_sync(sync_u_q_net),
    .x_sync(sync_x_q_net),
    .xd_sync(sync_xdot_q_net),
    .xdd_sync(sync_xdotdot_q_net)
  );
  hilsim_ipcore_int_xddot_xdot_x1 int_xddot_xdot (
    .ts_sync_in(sample_sync_q_net),
    .reset_in(register3_q_net),
    .xdot(add_stage_2_s_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .x(int_accum_s_net)
  );
  hilsim_ipcore_int_xdot_x_x1 int_xdot_x (
    .ts_sync_in(sample_sync_q_net),
    .reset_in(register3_q_net),
    .xdot(mult_presc_p_net_x0),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .x(int_accum_s_net_x0)
  );
  hilsim_ipcore_x_psc_x1 x_psc (
    .in(int_accum_s_net_x0),
    .presc_shift(register9_q_net),
    .presc_mul(register10_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .out(mult_presc_p_net)
  );
  hilsim_ipcore_xdot_psc_x1 xdot_psc (
    .in(int_accum_s_net),
    .presc_shift(register8_q_net),
    .presc_mul(register7_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .out(mult_presc_p_net_x0)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg73_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register1_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register10 (
    .en(1'b1),
    .rst(1'b0),
    .d(register3_q_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(register10_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(5),
    .init_value(5'b00000)
  )
  register12 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg70_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register12_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(5),
    .init_value(5'b00000)
  )
  register2 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg72_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register2_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register3 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg71_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register3_q_net_x0)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register4 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg66_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register4_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register5 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg77_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register5_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register6 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg81_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register6_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  register7 (
    .en(1'b1),
    .rst(1'b0),
    .d(register1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register7_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(5),
    .init_value(5'b00000)
  )
  register8 (
    .en(1'b1),
    .rst(1'b0),
    .d(register12_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register8_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(5),
    .init_value(5'b00000)
  )
  register9 (
    .en(1'b1),
    .rst(1'b0),
    .d(register2_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register9_q_net)
  );
  hilsim_ipcore_xlceprobe #(
    .d_width(25),
    .q_width(1)
  )
  sample_sync (
    .d(u_downsample_q_net),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .q(sample_sync_q_net)
  );
  hilsim_ipcore_xldsamp #(
    .d_arith(`xlSigned),
    .d_bin_pt(17),
    .d_width(25),
    .ds_ratio(36),
    .latency(0),
    .phase(0),
    .q_arith(`xlSigned),
    .q_bin_pt(17),
    .q_width(25)
  )
  u_downsample (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .d(mux_u2_y_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(dest_clk_net),
    .dest_ce(dest_ce_net),
    .q(u_downsample_q_net)
  );
  hilsim_ipcore_xlusamp #(
    .copy_samples(1),
    .d_arith(`xlSigned),
    .d_bin_pt(17),
    .d_width(25),
    .latency(1),
    .q_arith(`xlSigned),
    .q_bin_pt(17),
    .q_width(25)
  )
  u_upsample (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .d(u_downsample_q_net),
    .src_clk(dest_clk_net),
    .src_ce(dest_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(u_upsample_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore/proc_domain
module hilsim_ipcore_proc_domain (
  input [25-1:0] procclk_adc0_in,
  input [25-1:0] procclk_adc1_in,
  input [1-1:0] procclk_system_reset,
  input [1-1:0] procclk_system_run,
  input [8-1:0] procclk_led,
  input [10-1:0] procclk_lutcfg_addr,
  input [16-1:0] procclk_lutcfg_data,
  input [1-1:0] procclk_lutcfg_we,
  input [1-1:0] procclk_cfg_nlf_start,
  input [18-1:0] procclk_noise0_presc,
  input [18-1:0] procclk_noise1_presc,
  input [18-1:0] procclk_noise2_presc,
  input [8-1:0] procclk_nlf_cfg_select,
  input [18-1:0] procclk_input_matrix_cfg_1,
  input [2-1:0] adcclk_output_matrix_cfg_1,
  input [1-1:0] procclk_slice0_cfg_1,
  input [1-1:0] procclk_slice1_cfg_1,
  input [1-1:0] procclk_slice2_cfg_1,
  input [18-1:0] procclk_adc_nlf_cfg_1,
  input [25-1:0] procclk_adc_calib_in_1,
  input [25-1:0] procclk_dac_calib_1,
  input [9-1:0] procclk_nlf_sw_io_mask,
  input [9-1:0] procclk_nlf_sw_software_sel,
  input [18-1:0] procclk_input_matrix_cfg_2,
  input [18-1:0] procclk_input_matrix_cfg_3,
  input [18-1:0] procclk_input_matrix_cfg_4,
  input [18-1:0] procclk_input_matrix_cfg_5,
  input [18-1:0] procclk_input_matrix_cfg_6,
  input [18-1:0] procclk_input_matrix_cfg_7,
  input [18-1:0] procclk_input_matrix_cfg_8,
  input [18-1:0] procclk_input_matrix_cfg_9,
  input [2-1:0] adcclk_output_matrix_cfg_2,
  input [2-1:0] adcclk_output_matrix_cfg_3,
  input [18-1:0] adcclk_output_matrix_cfg_4,
  input [18-1:0] adcclk_output_matrix_cfg_5,
  input [18-1:0] adcclk_output_matrix_cfg_6,
  input [2-1:0] adcclk_output_matrix_cfg_7,
  input [2-1:0] adcclk_output_matrix_cfg_8,
  input [2-1:0] adcclk_output_matrix_cfg_9,
  input [18-1:0] adcclk_output_matrix_cfg_10,
  input [18-1:0] adcclk_output_matrix_cfg_11,
  input [18-1:0] adcclk_output_matrix_cfg_12,
  input [1-1:0] adcclk_output_matrix_cfg_13,
  input [18-1:0] adcclk_output_matrix_cfg_14,
  input [18-1:0] adcclk_output_matrix_cfg_15,
  input [1-1:0] adcclk_output_matrix_cfg_16,
  input [18-1:0] adcclk_output_matrix_cfg_17,
  input [18-1:0] adcclk_output_matrix_cfg_18,
  input [1-1:0] adcclk_output_matrix_cfg_19,
  input [18-1:0] adcclk_output_matrix_cfg_20,
  input [18-1:0] adcclk_output_matrix_cfg_21,
  input [1-1:0] adcclk_output_matrix_cfg_22,
  input [18-1:0] adcclk_output_matrix_cfg_23,
  input [18-1:0] adcclk_output_matrix_cfg_24,
  input [1-1:0] adcclk_output_matrix_cfg_25,
  input [18-1:0] adcclk_output_matrix_cfg_26,
  input [18-1:0] adcclk_output_matrix_cfg_27,
  input [1-1:0] adcclk_output_matrix_cfg_28,
  input [18-1:0] adcclk_output_matrix_cfg_29,
  input [18-1:0] adcclk_output_matrix_cfg_30,
  input [18-1:0] procclk_slice0_cfg_2,
  input [18-1:0] procclk_slice0_cfg_3,
  input [18-1:0] procclk_slice0_cfg_4,
  input [1-1:0] procclk_slice0_cfg_5,
  input [18-1:0] procclk_slice0_cfg_6,
  input [18-1:0] procclk_slice0_cfg_7,
  input [18-1:0] procclk_slice0_cfg_8,
  input [1-1:0] procclk_slice0_cfg_9,
  input [18-1:0] procclk_slice0_cfg_10,
  input [18-1:0] procclk_slice0_cfg_11,
  input [18-1:0] procclk_slice0_cfg_12,
  input [5-1:0] procclk_slice0_cfg_13,
  input [18-1:0] procclk_slice0_cfg_14,
  input [5-1:0] procclk_slice0_cfg_15,
  input [18-1:0] procclk_slice0_cfg_16,
  input [18-1:0] procclk_slice1_cfg_2,
  input [18-1:0] procclk_slice1_cfg_3,
  input [18-1:0] procclk_slice1_cfg_4,
  input [1-1:0] procclk_slice1_cfg_5,
  input [18-1:0] procclk_slice1_cfg_6,
  input [18-1:0] procclk_slice1_cfg_7,
  input [18-1:0] procclk_slice1_cfg_8,
  input [1-1:0] procclk_slice1_cfg_9,
  input [18-1:0] procclk_slice1_cfg_10,
  input [18-1:0] procclk_slice1_cfg_11,
  input [18-1:0] procclk_slice1_cfg_12,
  input [5-1:0] procclk_slice1_cfg_13,
  input [18-1:0] procclk_slice1_cfg_14,
  input [5-1:0] procclk_slice1_cfg_15,
  input [18-1:0] procclk_slice1_cfg_16,
  input [18-1:0] procclk_slice2_cfg_2,
  input [18-1:0] procclk_slice2_cfg_3,
  input [18-1:0] procclk_slice2_cfg_4,
  input [1-1:0] procclk_slice2_cfg_5,
  input [18-1:0] procclk_slice2_cfg_6,
  input [18-1:0] procclk_slice2_cfg_7,
  input [18-1:0] procclk_slice2_cfg_8,
  input [1-1:0] procclk_slice2_cfg_9,
  input [18-1:0] procclk_slice2_cfg_10,
  input [18-1:0] procclk_slice2_cfg_11,
  input [18-1:0] procclk_slice2_cfg_12,
  input [5-1:0] procclk_slice2_cfg_13,
  input [18-1:0] procclk_slice2_cfg_14,
  input [5-1:0] procclk_slice2_cfg_15,
  input [18-1:0] procclk_slice2_cfg_16,
  input [18-1:0] procclk_adc_nlf_cfg_2,
  input [1-1:0] procclk_adc_nlf_cfg_3,
  input [18-1:0] procclk_adc_nlf_cfg_4,
  input [18-1:0] procclk_adc_nlf_cfg_5,
  input [1-1:0] procclk_adc_nlf_cfg_6,
  input [25-1:0] procclk_adc_calib_in_2,
  input [18-1:0] procclk_adc_calib_in_3,
  input [18-1:0] procclk_adc_calib_in_4,
  input [25-1:0] procclk_dac_calib_2,
  input [18-1:0] procclk_dac_calib_3,
  input [18-1:0] procclk_dac_calib_4,
  input [9-1:0] procclk_nlf_sw_ext_in,
  input clk_1,
  input ce_1,
  input clk_2,
  input ce_2,
  input clk_36,
  input ce_36,
  output [25-1:0] procclk_adc0_dma_out,
  output [25-1:0] procclk_adc1_dma_out,
  output [25-1:0] procclk_dac0_dma_out,
  output [25-1:0] procclk_dac1_dma_out,
  output [25-1:0] procclk_dac0_out,
  output [25-1:0] procclk_dac1_out,
  output [1-1:0] procclk_cfg_nlf_done,
  output [9-1:0] procclk_nlf_switch,
  output [25-1:0] procclk_adc_calib_out_1,
  output [25-1:0] procclk_adc_calib_out_2
);
  wire [25-1:0] adc0_calib_mul_p_net;
  wire [25-1:0] adc1_calib_mul_p_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] mux2_y_net;
  wire [25-1:0] dac0_calib_add_s_net;
  wire [25-1:0] dac1_calib_add_s_net;
  wire [1-1:0] register1_q_net;
  wire [9-1:0] logical2_y_net;
  wire [25-1:0] clkxreg_slice1_cfg85_q_net;
  wire [25-1:0] clkxreg_slice1_cfg86_q_net;
  wire [1-1:0] clkxreg_slice1_cfg112_q_net;
  wire [1-1:0] clkxreg_slice1_cfg99_q_net;
  wire [8-1:0] clkxreg_slice1_cfg98_q_net;
  wire [10-1:0] clkxreg_slice1_cfg97_q_net;
  wire [16-1:0] clkxreg_slice1_cfg96_q_net;
  wire [1-1:0] clkxreg_slice1_cfg95_q_net;
  wire [1-1:0] clkxreg_slice1_cfg94_q_net;
  wire [18-1:0] clkxreg_slice1_cfg83_q_net;
  wire [18-1:0] clkxreg_slice1_cfg82_q_net;
  wire [18-1:0] clkxreg_slice1_cfg84_q_net;
  wire [8-1:0] clkxreg_slice1_cfg136_q_net;
  wire [18-1:0] clkxreg_slice1_cfg30_q_net;
  wire [2-1:0] clkxreg_slice1_cfg42_q_net;
  wire [1-1:0] clkxreg_slice1_cfg2_q_net;
  wire [1-1:0] clkxreg_slice1_cfg58_q_net;
  wire [1-1:0] clkxreg_slice1_cfg74_q_net;
  wire [18-1:0] clkxreg_slice1_cfg101_q_net;
  wire [25-1:0] clkxreg_slice1_cfg114_q_net;
  wire [25-1:0] clkxreg_slice1_cfg133_q_net;
  wire [9-1:0] clkxreg_slice1_cfg139_q_net;
  wire [9-1:0] clkxreg_slice1_cfg138_q_net;
  wire [18-1:0] clkxreg_slice1_cfg26_q_net;
  wire [18-1:0] clkxreg_slice1_cfg32_q_net;
  wire [18-1:0] clkxreg_slice1_cfg31_q_net;
  wire [18-1:0] clkxreg_slice1_cfg34_q_net;
  wire [18-1:0] clkxreg_slice1_cfg33_q_net;
  wire [18-1:0] clkxreg_slice1_cfg36_q_net;
  wire [18-1:0] clkxreg_slice1_cfg35_q_net;
  wire [18-1:0] clkxreg_slice1_cfg27_q_net;
  wire [2-1:0] clkxreg_slice1_cfg38_q_net;
  wire [2-1:0] clkxreg_slice1_cfg44_q_net;
  wire [18-1:0] clkxreg_slice1_cfg43_q_net;
  wire [18-1:0] clkxreg_slice1_cfg46_q_net;
  wire [18-1:0] clkxreg_slice1_cfg45_q_net;
  wire [2-1:0] clkxreg_slice1_cfg48_q_net;
  wire [2-1:0] clkxreg_slice1_cfg47_q_net;
  wire [2-1:0] clkxreg_slice1_cfg39_q_net;
  wire [18-1:0] clkxreg_slice1_cfg49_q_net;
  wire [18-1:0] clkxreg_slice1_cfg41_q_net;
  wire [18-1:0] clkxreg_slice1_cfg40_q_net;
  wire [1-1:0] clkxreg_slice1_cfg111_q_net;
  wire [18-1:0] clkxreg_slice1_cfg107_q_net;
  wire [18-1:0] clkxreg_slice1_cfg120_q_net;
  wire [1-1:0] clkxreg_slice1_cfg119_q_net;
  wire [18-1:0] clkxreg_slice1_cfg122_q_net;
  wire [18-1:0] clkxreg_slice1_cfg121_q_net;
  wire [1-1:0] clkxreg_slice1_cfg124_q_net;
  wire [18-1:0] clkxreg_slice1_cfg123_q_net;
  wire [18-1:0] clkxreg_slice1_cfg108_q_net;
  wire [1-1:0] clkxreg_slice1_cfg125_q_net;
  wire [18-1:0] clkxreg_slice1_cfg110_q_net;
  wire [18-1:0] clkxreg_slice1_cfg109_q_net;
  wire [1-1:0] clkxreg_slice1_cfg126_q_net;
  wire [18-1:0] clkxreg_slice1_cfg129_q_net;
  wire [18-1:0] clkxreg_slice1_cfg128_q_net;
  wire [1-1:0] clkxreg_slice1_cfg127_q_net;
  wire [18-1:0] clkxreg_slice1_cfg131_q_net;
  wire [18-1:0] clkxreg_slice1_cfg130_q_net;
  wire [18-1:0] clkxreg_slice1_cfg1_q_net;
  wire [18-1:0] clkxreg_slice1_cfg4_q_net;
  wire [18-1:0] clkxreg_slice1_cfg3_q_net;
  wire [1-1:0] clkxreg_slice1_cfg6_q_net;
  wire [18-1:0] clkxreg_slice1_cfg5_q_net;
  wire [18-1:0] clkxreg_slice1_cfg8_q_net;
  wire [18-1:0] clkxreg_slice1_cfg7_q_net;
  wire [1-1:0] clkxreg_slice1_cfg10_q_net;
  wire [18-1:0] clkxreg_slice1_cfg9_q_net;
  wire [18-1:0] clkxreg_slice1_cfg12_q_net;
  wire [18-1:0] clkxreg_slice1_cfg11_q_net;
  wire [5-1:0] clkxreg_slice1_cfg13_q_net;
  wire [18-1:0] clkxreg_slice1_cfg16_q_net;
  wire [5-1:0] clkxreg_slice1_cfg15_q_net;
  wire [18-1:0] clkxreg_slice1_cfg14_q_net;
  wire [18-1:0] clkxreg_slice1_cfg50_q_net;
  wire [18-1:0] clkxreg_slice1_cfg60_q_net;
  wire [18-1:0] clkxreg_slice1_cfg59_q_net;
  wire [1-1:0] clkxreg_slice1_cfg62_q_net;
  wire [18-1:0] clkxreg_slice1_cfg61_q_net;
  wire [18-1:0] clkxreg_slice1_cfg64_q_net;
  wire [18-1:0] clkxreg_slice1_cfg63_q_net;
  wire [1-1:0] clkxreg_slice1_cfg51_q_net;
  wire [18-1:0] clkxreg_slice1_cfg65_q_net;
  wire [18-1:0] clkxreg_slice1_cfg53_q_net;
  wire [18-1:0] clkxreg_slice1_cfg52_q_net;
  wire [5-1:0] clkxreg_slice1_cfg54_q_net;
  wire [18-1:0] clkxreg_slice1_cfg57_q_net;
  wire [5-1:0] clkxreg_slice1_cfg56_q_net;
  wire [18-1:0] clkxreg_slice1_cfg55_q_net;
  wire [18-1:0] clkxreg_slice1_cfg66_q_net;
  wire [18-1:0] clkxreg_slice1_cfg76_q_net;
  wire [18-1:0] clkxreg_slice1_cfg75_q_net;
  wire [1-1:0] clkxreg_slice1_cfg78_q_net;
  wire [18-1:0] clkxreg_slice1_cfg77_q_net;
  wire [18-1:0] clkxreg_slice1_cfg80_q_net;
  wire [18-1:0] clkxreg_slice1_cfg79_q_net;
  wire [1-1:0] clkxreg_slice1_cfg67_q_net;
  wire [18-1:0] clkxreg_slice1_cfg81_q_net;
  wire [18-1:0] clkxreg_slice1_cfg69_q_net;
  wire [18-1:0] clkxreg_slice1_cfg68_q_net;
  wire [5-1:0] clkxreg_slice1_cfg70_q_net;
  wire [18-1:0] clkxreg_slice1_cfg73_q_net;
  wire [5-1:0] clkxreg_slice1_cfg72_q_net;
  wire [18-1:0] clkxreg_slice1_cfg71_q_net;
  wire [18-1:0] clkxreg_slice1_cfg100_q_net;
  wire [1-1:0] clkxreg_slice1_cfg102_q_net;
  wire [18-1:0] clkxreg_slice1_cfg105_q_net;
  wire [18-1:0] clkxreg_slice1_cfg104_q_net;
  wire [1-1:0] clkxreg_slice1_cfg103_q_net;
  wire [25-1:0] clkxreg_slice1_cfg113_q_net;
  wire [18-1:0] clkxreg_slice1_cfg118_q_net;
  wire [18-1:0] clkxreg_slice1_cfg117_q_net;
  wire [25-1:0] clkxreg_slice1_cfg132_q_net;
  wire [18-1:0] clkxreg_slice1_cfg135_q_net;
  wire [18-1:0] clkxreg_slice1_cfg134_q_net;
  wire [9-1:0] procclk_nlf_sw_ext_in_net;
  wire clk_net;
  wire ce_net;
  wire src_clk_net;
  wire src_ce_net;
  wire dest_clk_net;
  wire dest_ce_net;
  wire [25-1:0] adc0_nlf_bypass_mux_y_net;
  wire [25-1:0] adc1_nlf_bypass_mux_y_net;
  wire [8-1:0] seladdr;
  wire [8-1:0] sel_adc0;
  wire [10-1:0] delay_q_net;
  wire [16-1:0] tmp_lut_doutb_net;
  wire [1-1:0] delay1_q_net;
  wire [8-1:0] sel_adc1;
  wire [25-1:0] mult_p_net_x1;
  wire [25-1:0] mult_p_net_x0;
  wire [25-1:0] mult_p_net;
  wire [25-1:0] u0_add2_s_net;
  wire [25-1:0] u1_add2_s_net;
  wire [25-1:0] u2_add2_s_net;
  wire [25-1:0] mux_u0_y_net;
  wire [25-1:0] mux_u1_y_net;
  wire [25-1:0] mux_u2_y_net;
  wire [25-1:0] dac0_add_2_s_net;
  wire [25-1:0] dac1_add_2_s_net;
  wire [25-1:0] sync_x_q_net_x1;
  wire [25-1:0] sync_xdot_q_net_x1;
  wire [25-1:0] sync_xdotdot_q_net_x1;
  wire [25-1:0] sync_x_q_net_x0;
  wire [25-1:0] sync_xdot_q_net_x0;
  wire [25-1:0] sync_xdotdot_q_net_x0;
  wire [25-1:0] sync_x_q_net;
  wire [25-1:0] sync_xdot_q_net;
  wire [25-1:0] sync_xdotdot_q_net;
  wire [8-1:0] sel_dac0_xx0;
  wire [8-1:0] sel_dac0_xx1;
  wire [8-1:0] sel_dac0_xx2;
  wire [8-1:0] sel_dac1_xx0;
  wire [8-1:0] sel_dac1_xx1;
  wire [8-1:0] sel_dac1_xx2;
  wire [8-1:0] sel_u0_x1;
  wire [8-1:0] sel_u1_x1;
  wire [8-1:0] sel_x5;
  wire [8-1:0] sel_x4;
  wire [8-1:0] sel_xd0_x1;
  wire [8-1:0] sel_xd1_x1;
  wire [8-1:0] sel_u0_x0;
  wire [8-1:0] sel_u1_x0;
  wire [8-1:0] sel_x3;
  wire [8-1:0] sel_x2;
  wire [8-1:0] sel_xd0_x0;
  wire [8-1:0] sel_xd1_x0;
  wire [8-1:0] sel_u0;
  wire [8-1:0] sel_u1;
  wire [8-1:0] sel_x0;
  wire [8-1:0] sel_x1;
  wire [8-1:0] sel_xd0;
  wire [8-1:0] sel_xd1;
  wire [1-1:0] switch_u_x1;
  wire [1-1:0] register1_q_net_x0;
  wire [1-1:0] switch_x_x1;
  wire [1-1:0] switch_xd_x1;
  wire [1-1:0] switch_u_x0;
  wire [1-1:0] register2_q_net;
  wire [1-1:0] switch_x_x0;
  wire [1-1:0] switch_xd_x0;
  wire [1-1:0] switch_u;
  wire [1-1:0] register3_q_net;
  wire [1-1:0] switch_x;
  wire [1-1:0] switch_xd;
  wire [8-1:0] constant_op_net;
  wire [1-1:0] inverter_op_net;
  wire [9-1:0] inverter1_op_net;
  wire [9-1:0] logical_y_net;
  wire [9-1:0] logical1_y_net;
  wire [1-1:0] register7_q_net;
  assign procclk_adc0_dma_out = adc0_calib_mul_p_net;
  assign procclk_adc1_dma_out = adc1_calib_mul_p_net;
  assign procclk_dac0_dma_out = mux1_y_net;
  assign procclk_dac1_dma_out = mux2_y_net;
  assign procclk_dac0_out = dac0_calib_add_s_net;
  assign procclk_dac1_out = dac1_calib_add_s_net;
  assign procclk_cfg_nlf_done = register1_q_net;
  assign procclk_nlf_switch = logical2_y_net;
  assign procclk_adc_calib_out_1 = adc0_calib_mul_p_net;
  assign procclk_adc_calib_out_2 = adc1_calib_mul_p_net;
  assign clkxreg_slice1_cfg85_q_net = procclk_adc0_in;
  assign clkxreg_slice1_cfg86_q_net = procclk_adc1_in;
  assign clkxreg_slice1_cfg112_q_net = procclk_system_reset;
  assign clkxreg_slice1_cfg99_q_net = procclk_system_run;
  assign clkxreg_slice1_cfg98_q_net = procclk_led;
  assign clkxreg_slice1_cfg97_q_net = procclk_lutcfg_addr;
  assign clkxreg_slice1_cfg96_q_net = procclk_lutcfg_data;
  assign clkxreg_slice1_cfg95_q_net = procclk_lutcfg_we;
  assign clkxreg_slice1_cfg94_q_net = procclk_cfg_nlf_start;
  assign clkxreg_slice1_cfg83_q_net = procclk_noise0_presc;
  assign clkxreg_slice1_cfg82_q_net = procclk_noise1_presc;
  assign clkxreg_slice1_cfg84_q_net = procclk_noise2_presc;
  assign clkxreg_slice1_cfg136_q_net = procclk_nlf_cfg_select;
  assign clkxreg_slice1_cfg30_q_net = procclk_input_matrix_cfg_1;
  assign clkxreg_slice1_cfg42_q_net = adcclk_output_matrix_cfg_1;
  assign clkxreg_slice1_cfg2_q_net = procclk_slice0_cfg_1;
  assign clkxreg_slice1_cfg58_q_net = procclk_slice1_cfg_1;
  assign clkxreg_slice1_cfg74_q_net = procclk_slice2_cfg_1;
  assign clkxreg_slice1_cfg101_q_net = procclk_adc_nlf_cfg_1;
  assign clkxreg_slice1_cfg114_q_net = procclk_adc_calib_in_1;
  assign clkxreg_slice1_cfg133_q_net = procclk_dac_calib_1;
  assign clkxreg_slice1_cfg139_q_net = procclk_nlf_sw_io_mask;
  assign clkxreg_slice1_cfg138_q_net = procclk_nlf_sw_software_sel;
  assign clkxreg_slice1_cfg26_q_net = procclk_input_matrix_cfg_2;
  assign clkxreg_slice1_cfg32_q_net = procclk_input_matrix_cfg_3;
  assign clkxreg_slice1_cfg31_q_net = procclk_input_matrix_cfg_4;
  assign clkxreg_slice1_cfg34_q_net = procclk_input_matrix_cfg_5;
  assign clkxreg_slice1_cfg33_q_net = procclk_input_matrix_cfg_6;
  assign clkxreg_slice1_cfg36_q_net = procclk_input_matrix_cfg_7;
  assign clkxreg_slice1_cfg35_q_net = procclk_input_matrix_cfg_8;
  assign clkxreg_slice1_cfg27_q_net = procclk_input_matrix_cfg_9;
  assign clkxreg_slice1_cfg38_q_net = adcclk_output_matrix_cfg_2;
  assign clkxreg_slice1_cfg44_q_net = adcclk_output_matrix_cfg_3;
  assign clkxreg_slice1_cfg43_q_net = adcclk_output_matrix_cfg_4;
  assign clkxreg_slice1_cfg46_q_net = adcclk_output_matrix_cfg_5;
  assign clkxreg_slice1_cfg45_q_net = adcclk_output_matrix_cfg_6;
  assign clkxreg_slice1_cfg48_q_net = adcclk_output_matrix_cfg_7;
  assign clkxreg_slice1_cfg47_q_net = adcclk_output_matrix_cfg_8;
  assign clkxreg_slice1_cfg39_q_net = adcclk_output_matrix_cfg_9;
  assign clkxreg_slice1_cfg49_q_net = adcclk_output_matrix_cfg_10;
  assign clkxreg_slice1_cfg41_q_net = adcclk_output_matrix_cfg_11;
  assign clkxreg_slice1_cfg40_q_net = adcclk_output_matrix_cfg_12;
  assign clkxreg_slice1_cfg111_q_net = adcclk_output_matrix_cfg_13;
  assign clkxreg_slice1_cfg107_q_net = adcclk_output_matrix_cfg_14;
  assign clkxreg_slice1_cfg120_q_net = adcclk_output_matrix_cfg_15;
  assign clkxreg_slice1_cfg119_q_net = adcclk_output_matrix_cfg_16;
  assign clkxreg_slice1_cfg122_q_net = adcclk_output_matrix_cfg_17;
  assign clkxreg_slice1_cfg121_q_net = adcclk_output_matrix_cfg_18;
  assign clkxreg_slice1_cfg124_q_net = adcclk_output_matrix_cfg_19;
  assign clkxreg_slice1_cfg123_q_net = adcclk_output_matrix_cfg_20;
  assign clkxreg_slice1_cfg108_q_net = adcclk_output_matrix_cfg_21;
  assign clkxreg_slice1_cfg125_q_net = adcclk_output_matrix_cfg_22;
  assign clkxreg_slice1_cfg110_q_net = adcclk_output_matrix_cfg_23;
  assign clkxreg_slice1_cfg109_q_net = adcclk_output_matrix_cfg_24;
  assign clkxreg_slice1_cfg126_q_net = adcclk_output_matrix_cfg_25;
  assign clkxreg_slice1_cfg129_q_net = adcclk_output_matrix_cfg_26;
  assign clkxreg_slice1_cfg128_q_net = adcclk_output_matrix_cfg_27;
  assign clkxreg_slice1_cfg127_q_net = adcclk_output_matrix_cfg_28;
  assign clkxreg_slice1_cfg131_q_net = adcclk_output_matrix_cfg_29;
  assign clkxreg_slice1_cfg130_q_net = adcclk_output_matrix_cfg_30;
  assign clkxreg_slice1_cfg1_q_net = procclk_slice0_cfg_2;
  assign clkxreg_slice1_cfg4_q_net = procclk_slice0_cfg_3;
  assign clkxreg_slice1_cfg3_q_net = procclk_slice0_cfg_4;
  assign clkxreg_slice1_cfg6_q_net = procclk_slice0_cfg_5;
  assign clkxreg_slice1_cfg5_q_net = procclk_slice0_cfg_6;
  assign clkxreg_slice1_cfg8_q_net = procclk_slice0_cfg_7;
  assign clkxreg_slice1_cfg7_q_net = procclk_slice0_cfg_8;
  assign clkxreg_slice1_cfg10_q_net = procclk_slice0_cfg_9;
  assign clkxreg_slice1_cfg9_q_net = procclk_slice0_cfg_10;
  assign clkxreg_slice1_cfg12_q_net = procclk_slice0_cfg_11;
  assign clkxreg_slice1_cfg11_q_net = procclk_slice0_cfg_12;
  assign clkxreg_slice1_cfg13_q_net = procclk_slice0_cfg_13;
  assign clkxreg_slice1_cfg16_q_net = procclk_slice0_cfg_14;
  assign clkxreg_slice1_cfg15_q_net = procclk_slice0_cfg_15;
  assign clkxreg_slice1_cfg14_q_net = procclk_slice0_cfg_16;
  assign clkxreg_slice1_cfg50_q_net = procclk_slice1_cfg_2;
  assign clkxreg_slice1_cfg60_q_net = procclk_slice1_cfg_3;
  assign clkxreg_slice1_cfg59_q_net = procclk_slice1_cfg_4;
  assign clkxreg_slice1_cfg62_q_net = procclk_slice1_cfg_5;
  assign clkxreg_slice1_cfg61_q_net = procclk_slice1_cfg_6;
  assign clkxreg_slice1_cfg64_q_net = procclk_slice1_cfg_7;
  assign clkxreg_slice1_cfg63_q_net = procclk_slice1_cfg_8;
  assign clkxreg_slice1_cfg51_q_net = procclk_slice1_cfg_9;
  assign clkxreg_slice1_cfg65_q_net = procclk_slice1_cfg_10;
  assign clkxreg_slice1_cfg53_q_net = procclk_slice1_cfg_11;
  assign clkxreg_slice1_cfg52_q_net = procclk_slice1_cfg_12;
  assign clkxreg_slice1_cfg54_q_net = procclk_slice1_cfg_13;
  assign clkxreg_slice1_cfg57_q_net = procclk_slice1_cfg_14;
  assign clkxreg_slice1_cfg56_q_net = procclk_slice1_cfg_15;
  assign clkxreg_slice1_cfg55_q_net = procclk_slice1_cfg_16;
  assign clkxreg_slice1_cfg66_q_net = procclk_slice2_cfg_2;
  assign clkxreg_slice1_cfg76_q_net = procclk_slice2_cfg_3;
  assign clkxreg_slice1_cfg75_q_net = procclk_slice2_cfg_4;
  assign clkxreg_slice1_cfg78_q_net = procclk_slice2_cfg_5;
  assign clkxreg_slice1_cfg77_q_net = procclk_slice2_cfg_6;
  assign clkxreg_slice1_cfg80_q_net = procclk_slice2_cfg_7;
  assign clkxreg_slice1_cfg79_q_net = procclk_slice2_cfg_8;
  assign clkxreg_slice1_cfg67_q_net = procclk_slice2_cfg_9;
  assign clkxreg_slice1_cfg81_q_net = procclk_slice2_cfg_10;
  assign clkxreg_slice1_cfg69_q_net = procclk_slice2_cfg_11;
  assign clkxreg_slice1_cfg68_q_net = procclk_slice2_cfg_12;
  assign clkxreg_slice1_cfg70_q_net = procclk_slice2_cfg_13;
  assign clkxreg_slice1_cfg73_q_net = procclk_slice2_cfg_14;
  assign clkxreg_slice1_cfg72_q_net = procclk_slice2_cfg_15;
  assign clkxreg_slice1_cfg71_q_net = procclk_slice2_cfg_16;
  assign clkxreg_slice1_cfg100_q_net = procclk_adc_nlf_cfg_2;
  assign clkxreg_slice1_cfg102_q_net = procclk_adc_nlf_cfg_3;
  assign clkxreg_slice1_cfg105_q_net = procclk_adc_nlf_cfg_4;
  assign clkxreg_slice1_cfg104_q_net = procclk_adc_nlf_cfg_5;
  assign clkxreg_slice1_cfg103_q_net = procclk_adc_nlf_cfg_6;
  assign clkxreg_slice1_cfg113_q_net = procclk_adc_calib_in_2;
  assign clkxreg_slice1_cfg118_q_net = procclk_adc_calib_in_3;
  assign clkxreg_slice1_cfg117_q_net = procclk_adc_calib_in_4;
  assign clkxreg_slice1_cfg132_q_net = procclk_dac_calib_2;
  assign clkxreg_slice1_cfg135_q_net = procclk_dac_calib_3;
  assign clkxreg_slice1_cfg134_q_net = procclk_dac_calib_4;
  assign procclk_nlf_sw_ext_in_net = procclk_nlf_sw_ext_in;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  assign src_clk_net = clk_2;
  assign src_ce_net = ce_2;
  assign dest_clk_net = clk_36;
  assign dest_ce_net = ce_36;
  hilsim_ipcore_adc_calib adc_calib (
    .adc_calib_in_1(clkxreg_slice1_cfg114_q_net),
    .adc0_in(clkxreg_slice1_cfg85_q_net),
    .adc1_in(clkxreg_slice1_cfg86_q_net),
    .adc_calib_in_2(clkxreg_slice1_cfg113_q_net),
    .adc_calib_in_3(clkxreg_slice1_cfg118_q_net),
    .adc_calib_in_4(clkxreg_slice1_cfg117_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .adc_calib_out_1(adc0_calib_mul_p_net),
    .adc0_out(adc0_calib_mul_p_net),
    .adc1_out(adc1_calib_mul_p_net),
    .adc_calib_out_2(adc1_calib_mul_p_net)
  );
  hilsim_ipcore_adc_nlf adc_nlf (
    .adc0_nlf_in(adc0_calib_mul_p_net),
    .adc1_nlf_in(adc1_calib_mul_p_net),
    .adc_nlf_cfg_1(clkxreg_slice1_cfg101_q_net),
    .nlf_cfg_bus_1(seladdr),
    .nlf_sel_addrs_1(sel_adc0),
    .adc_nlf_cfg_2(clkxreg_slice1_cfg100_q_net),
    .adc_nlf_cfg_3(clkxreg_slice1_cfg102_q_net),
    .adc_nlf_cfg_4(clkxreg_slice1_cfg105_q_net),
    .adc_nlf_cfg_5(clkxreg_slice1_cfg104_q_net),
    .adc_nlf_cfg_6(clkxreg_slice1_cfg103_q_net),
    .nlf_cfg_bus_2(delay_q_net),
    .nlf_cfg_bus_3(tmp_lut_doutb_net),
    .nlf_cfg_bus_4(delay1_q_net),
    .nlf_sel_addrs_2(sel_adc1),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .adc0_nlf_out(adc0_nlf_bypass_mux_y_net),
    .adc1_nlf_out(adc1_nlf_bypass_mux_y_net)
  );
  hilsim_ipcore_dac_calib dac_calib (
    .dac_calib_cfg_1(clkxreg_slice1_cfg133_q_net),
    .dac0_in(mux1_y_net),
    .dac1_in(mux2_y_net),
    .dac_calib_cfg_2(clkxreg_slice1_cfg132_q_net),
    .dac_calib_cfg_3(clkxreg_slice1_cfg135_q_net),
    .dac_calib_cfg_4(clkxreg_slice1_cfg134_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .dac0_out(dac0_calib_add_s_net),
    .dac1_out(dac1_calib_add_s_net)
  );
  hilsim_ipcore_gaussian_noise_gen_0 gaussian_noise_gen_0 (
    .scaling_factor(clkxreg_slice1_cfg83_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .clk_2(src_clk_net),
    .ce_2(src_ce_net),
    .clk_36(dest_clk_net),
    .ce_36(dest_ce_net),
    .rng_out(mult_p_net_x1)
  );
  hilsim_ipcore_gaussian_noise_gen_1 gaussian_noise_gen_1 (
    .scaling_factor(clkxreg_slice1_cfg82_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .clk_2(src_clk_net),
    .ce_2(src_ce_net),
    .clk_36(dest_clk_net),
    .ce_36(dest_ce_net),
    .rng_out(mult_p_net_x0)
  );
  hilsim_ipcore_gaussian_noise_gen_2 gaussian_noise_gen_2 (
    .scaling_factor(clkxreg_slice1_cfg84_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .clk_2(src_clk_net),
    .ce_2(src_ce_net),
    .clk_36(dest_clk_net),
    .ce_36(dest_ce_net),
    .rng_out(mult_p_net)
  );
  hilsim_ipcore_input_matrix input_matrix (
    .adc0(adc0_nlf_bypass_mux_y_net),
    .adc1(adc1_nlf_bypass_mux_y_net),
    .noise0(mult_p_net_x1),
    .noise1(mult_p_net_x0),
    .noise2(mult_p_net),
    .input_matrix_cfg_1(clkxreg_slice1_cfg30_q_net),
    .input_matrix_cfg_2(clkxreg_slice1_cfg26_q_net),
    .input_matrix_cfg_3(clkxreg_slice1_cfg32_q_net),
    .input_matrix_cfg_4(clkxreg_slice1_cfg31_q_net),
    .input_matrix_cfg_5(clkxreg_slice1_cfg34_q_net),
    .input_matrix_cfg_6(clkxreg_slice1_cfg33_q_net),
    .input_matrix_cfg_7(clkxreg_slice1_cfg36_q_net),
    .input_matrix_cfg_8(clkxreg_slice1_cfg35_q_net),
    .input_matrix_cfg_9(clkxreg_slice1_cfg27_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .clk_36(dest_clk_net),
    .ce_36(dest_ce_net),
    .u0(u0_add2_s_net),
    .u1(u1_add2_s_net),
    .u2(u2_add2_s_net)
  );
  hilsim_ipcore_input_shutoff input_shutoff (
    .enable(clkxreg_slice1_cfg99_q_net),
    .u0_in(u0_add2_s_net),
    .u1_in(u1_add2_s_net),
    .u2_in(u2_add2_s_net),
    .u0_out(mux_u0_y_net),
    .u1_out(mux_u1_y_net),
    .u2_out(mux_u2_y_net)
  );
  hilsim_ipcore_nlf_lut_configurator nlf_lut_configurator (
    .procclk_lutcfg_addr(clkxreg_slice1_cfg97_q_net),
    .procclk_lutcfg_data_in(clkxreg_slice1_cfg96_q_net),
    .procclk_lutcfg_we(clkxreg_slice1_cfg95_q_net),
    .cfg_nlf_start(clkxreg_slice1_cfg94_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .procclk_cfgbus_addr(delay_q_net),
    .procclk_cfgbus_data(tmp_lut_doutb_net),
    .procclk_cfgbus_we(delay1_q_net),
    .cfg_nlf_done(register1_q_net)
  );
  hilsim_ipcore_output_matrix output_matrix (
    .x0(sync_x_q_net_x1),
    .xd0(sync_xdot_q_net_x1),
    .xdd0(sync_xdotdot_q_net_x1),
    .x1(sync_x_q_net_x0),
    .xd1(sync_xdot_q_net_x0),
    .xdd1(sync_xdotdot_q_net_x0),
    .x2(sync_x_q_net),
    .xd2(sync_xdot_q_net),
    .xdd2(sync_xdotdot_q_net),
    .output_matrix_cfg_1(clkxreg_slice1_cfg42_q_net),
    .nlf_cfg_bus_1(seladdr),
    .nlf_sel_addrs_1(sel_dac0_xx0),
    .output_matrix_cfg_2(clkxreg_slice1_cfg38_q_net),
    .output_matrix_cfg_3(clkxreg_slice1_cfg44_q_net),
    .output_matrix_cfg_4(clkxreg_slice1_cfg43_q_net),
    .output_matrix_cfg_5(clkxreg_slice1_cfg46_q_net),
    .output_matrix_cfg_6(clkxreg_slice1_cfg45_q_net),
    .output_matrix_cfg_7(clkxreg_slice1_cfg48_q_net),
    .output_matrix_cfg_8(clkxreg_slice1_cfg47_q_net),
    .output_matrix_cfg_9(clkxreg_slice1_cfg39_q_net),
    .output_matrix_cfg_10(clkxreg_slice1_cfg49_q_net),
    .output_matrix_cfg_11(clkxreg_slice1_cfg41_q_net),
    .output_matrix_cfg_12(clkxreg_slice1_cfg40_q_net),
    .output_matrix_cfg_13(clkxreg_slice1_cfg111_q_net),
    .output_matrix_cfg_14(clkxreg_slice1_cfg107_q_net),
    .output_matrix_cfg_15(clkxreg_slice1_cfg120_q_net),
    .output_matrix_cfg_16(clkxreg_slice1_cfg119_q_net),
    .output_matrix_cfg_17(clkxreg_slice1_cfg122_q_net),
    .output_matrix_cfg_18(clkxreg_slice1_cfg121_q_net),
    .output_matrix_cfg_19(clkxreg_slice1_cfg124_q_net),
    .output_matrix_cfg_20(clkxreg_slice1_cfg123_q_net),
    .output_matrix_cfg_21(clkxreg_slice1_cfg108_q_net),
    .output_matrix_cfg_22(clkxreg_slice1_cfg125_q_net),
    .output_matrix_cfg_23(clkxreg_slice1_cfg110_q_net),
    .output_matrix_cfg_24(clkxreg_slice1_cfg109_q_net),
    .output_matrix_cfg_25(clkxreg_slice1_cfg126_q_net),
    .output_matrix_cfg_26(clkxreg_slice1_cfg129_q_net),
    .output_matrix_cfg_27(clkxreg_slice1_cfg128_q_net),
    .output_matrix_cfg_28(clkxreg_slice1_cfg127_q_net),
    .output_matrix_cfg_29(clkxreg_slice1_cfg131_q_net),
    .output_matrix_cfg_30(clkxreg_slice1_cfg130_q_net),
    .nlf_cfg_bus_2(delay_q_net),
    .nlf_cfg_bus_3(tmp_lut_doutb_net),
    .nlf_cfg_bus_4(delay1_q_net),
    .nlf_sel_addrs_2(sel_dac0_xx1),
    .nlf_sel_addrs_3(sel_dac0_xx2),
    .nlf_sel_addrs_4(sel_dac1_xx0),
    .nlf_sel_addrs_5(sel_dac1_xx1),
    .nlf_sel_addrs_6(sel_dac1_xx2),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .dac0(dac0_add_2_s_net),
    .dac1(dac1_add_2_s_net)
  );
  hilsim_ipcore_output_switch output_switch (
    .enable(clkxreg_slice1_cfg99_q_net),
    .dac0_in(dac0_add_2_s_net),
    .dac1_in(dac1_add_2_s_net),
    .dac0_out(mux1_y_net),
    .dac1_out(mux2_y_net)
  );
  hilsim_ipcore_sel_addrs_adc sel_addrs_adc (
    .nlf_sel_addrs_1(sel_adc0),
    .nlf_sel_addrs_2(sel_adc1)
  );
  hilsim_ipcore_sel_addrs_output_matrix sel_addrs_output_matrix (
    .nlf_sel_addrs_1(sel_dac0_xx0),
    .nlf_sel_addrs_2(sel_dac0_xx1),
    .nlf_sel_addrs_3(sel_dac0_xx2),
    .nlf_sel_addrs_4(sel_dac1_xx0),
    .nlf_sel_addrs_5(sel_dac1_xx1),
    .nlf_sel_addrs_6(sel_dac1_xx2)
  );
  hilsim_ipcore_sel_addrs_slice_0 sel_addrs_slice_0 (
    .nlf_sel_addrs_1(sel_u0_x1),
    .nlf_sel_addrs_2(sel_u1_x1),
    .nlf_sel_addrs_3(sel_x5),
    .nlf_sel_addrs_4(sel_x4),
    .nlf_sel_addrs_5(sel_xd0_x1),
    .nlf_sel_addrs_6(sel_xd1_x1)
  );
  hilsim_ipcore_sel_addrs_slice_1 sel_addrs_slice_1 (
    .nlf_sel_addrs_1(sel_u0_x0),
    .nlf_sel_addrs_2(sel_u1_x0),
    .nlf_sel_addrs_3(sel_x3),
    .nlf_sel_addrs_4(sel_x2),
    .nlf_sel_addrs_5(sel_xd0_x0),
    .nlf_sel_addrs_6(sel_xd1_x0)
  );
  hilsim_ipcore_sel_addrs_slice_2 sel_addrs_slice_2 (
    .nlf_sel_addrs_1(sel_u0),
    .nlf_sel_addrs_2(sel_u1),
    .nlf_sel_addrs_3(sel_x0),
    .nlf_sel_addrs_4(sel_x1),
    .nlf_sel_addrs_5(sel_xd0),
    .nlf_sel_addrs_6(sel_xd1)
  );
  hilsim_ipcore_slice_0 slice_0 (
    .u(mux_u0_y_net),
    .nlf_cfg_bus_1(seladdr),
    .slice_cfg_1(clkxreg_slice1_cfg2_q_net),
    .nlf_switch_bus_1(switch_u_x1),
    .nlf_sel_addrs_1(sel_u0_x1),
    .reset_in(register1_q_net_x0),
    .nlf_cfg_bus_2(delay_q_net),
    .nlf_cfg_bus_3(tmp_lut_doutb_net),
    .nlf_cfg_bus_4(delay1_q_net),
    .slice_cfg_2(clkxreg_slice1_cfg1_q_net),
    .slice_cfg_3(clkxreg_slice1_cfg4_q_net),
    .slice_cfg_4(clkxreg_slice1_cfg3_q_net),
    .slice_cfg_5(clkxreg_slice1_cfg6_q_net),
    .slice_cfg_6(clkxreg_slice1_cfg5_q_net),
    .slice_cfg_7(clkxreg_slice1_cfg8_q_net),
    .slice_cfg_8(clkxreg_slice1_cfg7_q_net),
    .slice_cfg_9(clkxreg_slice1_cfg10_q_net),
    .slice_cfg_10(clkxreg_slice1_cfg9_q_net),
    .slice_cfg_11(clkxreg_slice1_cfg12_q_net),
    .slice_cfg_12(clkxreg_slice1_cfg11_q_net),
    .slice_cfg_13(clkxreg_slice1_cfg13_q_net),
    .slice_cfg_14(clkxreg_slice1_cfg16_q_net),
    .slice_cfg_15(clkxreg_slice1_cfg15_q_net),
    .slice_cfg_16(clkxreg_slice1_cfg14_q_net),
    .nlf_switch_bus_2(switch_x_x1),
    .nlf_switch_bus_3(switch_xd_x1),
    .nlf_sel_addrs_2(sel_u1_x1),
    .nlf_sel_addrs_3(sel_x5),
    .nlf_sel_addrs_4(sel_x4),
    .nlf_sel_addrs_5(sel_xd0_x1),
    .nlf_sel_addrs_6(sel_xd1_x1),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .clk_36(dest_clk_net),
    .ce_36(dest_ce_net),
    .x_sync(sync_x_q_net_x1),
    .xd_sync(sync_xdot_q_net_x1),
    .xdd_sync(sync_xdotdot_q_net_x1)
  );
  hilsim_ipcore_slice_1 slice_1 (
    .u(mux_u1_y_net),
    .nlf_cfg_bus_1(seladdr),
    .slice_cfg_1(clkxreg_slice1_cfg58_q_net),
    .nlf_switch_bus_1(switch_u_x0),
    .nlf_sel_addrs_1(sel_u0_x0),
    .reset_in(register2_q_net),
    .nlf_cfg_bus_2(delay_q_net),
    .nlf_cfg_bus_3(tmp_lut_doutb_net),
    .nlf_cfg_bus_4(delay1_q_net),
    .slice_cfg_2(clkxreg_slice1_cfg50_q_net),
    .slice_cfg_3(clkxreg_slice1_cfg60_q_net),
    .slice_cfg_4(clkxreg_slice1_cfg59_q_net),
    .slice_cfg_5(clkxreg_slice1_cfg62_q_net),
    .slice_cfg_6(clkxreg_slice1_cfg61_q_net),
    .slice_cfg_7(clkxreg_slice1_cfg64_q_net),
    .slice_cfg_8(clkxreg_slice1_cfg63_q_net),
    .slice_cfg_9(clkxreg_slice1_cfg51_q_net),
    .slice_cfg_10(clkxreg_slice1_cfg65_q_net),
    .slice_cfg_11(clkxreg_slice1_cfg53_q_net),
    .slice_cfg_12(clkxreg_slice1_cfg52_q_net),
    .slice_cfg_13(clkxreg_slice1_cfg54_q_net),
    .slice_cfg_14(clkxreg_slice1_cfg57_q_net),
    .slice_cfg_15(clkxreg_slice1_cfg56_q_net),
    .slice_cfg_16(clkxreg_slice1_cfg55_q_net),
    .nlf_switch_bus_2(switch_x_x0),
    .nlf_switch_bus_3(switch_xd_x0),
    .nlf_sel_addrs_2(sel_u1_x0),
    .nlf_sel_addrs_3(sel_x3),
    .nlf_sel_addrs_4(sel_x2),
    .nlf_sel_addrs_5(sel_xd0_x0),
    .nlf_sel_addrs_6(sel_xd1_x0),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .clk_36(dest_clk_net),
    .ce_36(dest_ce_net),
    .x_sync(sync_x_q_net_x0),
    .xd_sync(sync_xdot_q_net_x0),
    .xdd_sync(sync_xdotdot_q_net_x0)
  );
  hilsim_ipcore_slice_2 slice_2 (
    .u(mux_u2_y_net),
    .nlf_cfg_bus_1(seladdr),
    .slice_cfg_1(clkxreg_slice1_cfg74_q_net),
    .nlf_switch_bus_1(switch_u),
    .nlf_sel_addrs_1(sel_u0),
    .reset_in(register3_q_net),
    .nlf_cfg_bus_2(delay_q_net),
    .nlf_cfg_bus_3(tmp_lut_doutb_net),
    .nlf_cfg_bus_4(delay1_q_net),
    .slice_cfg_2(clkxreg_slice1_cfg66_q_net),
    .slice_cfg_3(clkxreg_slice1_cfg76_q_net),
    .slice_cfg_4(clkxreg_slice1_cfg75_q_net),
    .slice_cfg_5(clkxreg_slice1_cfg78_q_net),
    .slice_cfg_6(clkxreg_slice1_cfg77_q_net),
    .slice_cfg_7(clkxreg_slice1_cfg80_q_net),
    .slice_cfg_8(clkxreg_slice1_cfg79_q_net),
    .slice_cfg_9(clkxreg_slice1_cfg67_q_net),
    .slice_cfg_10(clkxreg_slice1_cfg81_q_net),
    .slice_cfg_11(clkxreg_slice1_cfg69_q_net),
    .slice_cfg_12(clkxreg_slice1_cfg68_q_net),
    .slice_cfg_13(clkxreg_slice1_cfg70_q_net),
    .slice_cfg_14(clkxreg_slice1_cfg73_q_net),
    .slice_cfg_15(clkxreg_slice1_cfg72_q_net),
    .slice_cfg_16(clkxreg_slice1_cfg71_q_net),
    .nlf_switch_bus_2(switch_x),
    .nlf_switch_bus_3(switch_xd),
    .nlf_sel_addrs_2(sel_u1),
    .nlf_sel_addrs_3(sel_x0),
    .nlf_sel_addrs_4(sel_x1),
    .nlf_sel_addrs_5(sel_xd0),
    .nlf_sel_addrs_6(sel_xd1),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .clk_36(dest_clk_net),
    .ce_36(dest_ce_net),
    .x_sync(sync_x_q_net),
    .xd_sync(sync_xdot_q_net),
    .xdd_sync(sync_xdotdot_q_net)
  );
  sysgen_constant_b417a58cc8 constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  sysgen_inverter_6602bd5df5 inverter (
    .clr(1'b0),
    .ip(clkxreg_slice1_cfg99_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(inverter_op_net)
  );
  sysgen_inverter_6dfb34c18b inverter1 (
    .clr(1'b0),
    .ip(clkxreg_slice1_cfg139_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(inverter1_op_net)
  );
  sysgen_logical_d229f7c510 logical (
    .clr(1'b0),
    .d0(clkxreg_slice1_cfg139_q_net),
    .d1(procclk_nlf_sw_ext_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(logical_y_net)
  );
  sysgen_logical_d229f7c510 logical1 (
    .clr(1'b0),
    .d0(clkxreg_slice1_cfg138_q_net),
    .d1(inverter1_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(logical1_y_net)
  );
  sysgen_logical_3056f08ae7 logical2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(logical1_y_net),
    .d1(logical_y_net),
    .y(logical2_y_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(register7_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register1_q_net_x0)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register2 (
    .en(1'b1),
    .rst(1'b0),
    .d(register7_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register2_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register3 (
    .en(1'b1),
    .rst(1'b0),
    .d(register7_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register3_q_net)
  );
  hilsim_ipcore_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register7 (
    .en(1'b1),
    .rst(1'b0),
    .d(clkxreg_slice1_cfg112_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register7_q_net)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(0),
    .new_msb(0),
    .x_width(9),
    .y_width(1)
  )
  nlf_switch_select_0 (
    .x(logical2_y_net),
    .y(switch_u_x1)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(1),
    .new_msb(1),
    .x_width(9),
    .y_width(1)
  )
  nlf_switch_select_1 (
    .x(logical2_y_net),
    .y(switch_x_x1)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(2),
    .new_msb(2),
    .x_width(9),
    .y_width(1)
  )
  nlf_switch_select_2 (
    .x(logical2_y_net),
    .y(switch_xd_x1)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(3),
    .new_msb(3),
    .x_width(9),
    .y_width(1)
  )
  nlf_switch_select_3 (
    .x(logical2_y_net),
    .y(switch_u_x0)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(4),
    .new_msb(4),
    .x_width(9),
    .y_width(1)
  )
  nlf_switch_select_4 (
    .x(logical2_y_net),
    .y(switch_x_x0)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(5),
    .new_msb(5),
    .x_width(9),
    .y_width(1)
  )
  nlf_switch_select_5 (
    .x(logical2_y_net),
    .y(switch_xd_x0)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(6),
    .new_msb(6),
    .x_width(9),
    .y_width(1)
  )
  nlf_switch_select_6 (
    .x(logical2_y_net),
    .y(switch_u)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(7),
    .new_msb(7),
    .x_width(9),
    .y_width(1)
  )
  nlf_switch_select_7 (
    .x(logical2_y_net),
    .y(switch_x)
  );
  hilsim_ipcore_xlslice #(
    .new_lsb(8),
    .new_msb(8),
    .x_width(9),
    .y_width(1)
  )
  nlf_switch_select_8 (
    .x(logical2_y_net),
    .y(switch_xd)
  );
  sysgen_mux_d1c7417722 nlfsel_system_hlt_mux (
    .clr(1'b0),
    .sel(inverter_op_net),
    .d0(constant_op_net),
    .d1(clkxreg_slice1_cfg136_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(seladdr)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block MHILSimHWImpl/hilsim_ipcore_struct
module hilsim_ipcore_struct (
  input [14-1:0] adc_ch0_in,
  input [14-1:0] adc_ch1_in,
  input [18-1:0] adc0_calib_factor,
  input [25-1:0] adc0_calib_offset,
  input [1-1:0] adc0_nlf_enable,
  input [18-1:0] adc0_nlf_gain,
  input [18-1:0] adc0_nlf_presc,
  input [18-1:0] adc1_calib_factor,
  input [25-1:0] adc1_calib_offset,
  input [1-1:0] adc1_nlf_enable,
  input [18-1:0] adc1_nlf_gain,
  input [18-1:0] adc1_nlf_presc,
  input [10-1:0] cfg_nlf_addr,
  input [16-1:0] cfg_nlf_data,
  input [32-1:0] cfg_nlf_select,
  input [1-1:0] cfg_nlf_start,
  input [1-1:0] cfg_nlf_we,
  input [18-1:0] cfg_noise_presc0,
  input [18-1:0] cfg_noise_presc1,
  input [18-1:0] cfg_noise_presc2,
  input [1-1:0] cfg_system_reset,
  input [18-1:0] dac0_calib_factor,
  input [25-1:0] dac0_calib_offset,
  input [18-1:0] dac1_calib_factor,
  input [25-1:0] dac1_calib_offset,
  input [18-1:0] inp_mat_fac_u0_adc0,
  input [18-1:0] inp_mat_fac_u0_adc1,
  input [18-1:0] inp_mat_fac_u0_noise,
  input [18-1:0] inp_mat_fac_u1_adc0,
  input [18-1:0] inp_mat_fac_u1_adc1,
  input [18-1:0] inp_mat_fac_u1_noise,
  input [18-1:0] inp_mat_fac_u2_adc0,
  input [18-1:0] inp_mat_fac_u2_adc1,
  input [18-1:0] inp_mat_fac_u2_noise,
  input [8-1:0] led_value,
  input [9-1:0] nlf_switch_io_mask,
  input [9-1:0] nlf_switch_sw_switch,
  input [2-1:0] out_mat_dac0_selx0,
  input [2-1:0] out_mat_dac0_selx1,
  input [2-1:0] out_mat_dac0_selx2,
  input [2-1:0] out_mat_dac1_selx0,
  input [2-1:0] out_mat_dac1_selx1,
  input [2-1:0] out_mat_dac1_selx2,
  input [18-1:0] out_mat_fac_dac0_xx0,
  input [18-1:0] out_mat_fac_dac0_xx1,
  input [18-1:0] out_mat_fac_dac0_xx2,
  input [18-1:0] out_mat_fac_dac1_xx0,
  input [18-1:0] out_mat_fac_dac1_xx1,
  input [18-1:0] out_mat_fac_dac1_xx2,
  input [1-1:0] out_mat_nlf_dac0_xx0_en,
  input [18-1:0] out_mat_nlf_dac0_xx0_gain,
  input [18-1:0] out_mat_nlf_dac0_xx0_presc,
  input [1-1:0] out_mat_nlf_dac0_xx1_en,
  input [18-1:0] out_mat_nlf_dac0_xx1_gain,
  input [18-1:0] out_mat_nlf_dac0_xx1_presc,
  input [1-1:0] out_mat_nlf_dac0_xx2_en,
  input [18-1:0] out_mat_nlf_dac0_xx2_gain,
  input [18-1:0] out_mat_nlf_dac0_xx2_presc,
  input [1-1:0] out_mat_nlf_dac1_xx0_en,
  input [18-1:0] out_mat_nlf_dac1_xx0_gain,
  input [18-1:0] out_mat_nlf_dac1_xx0_presc,
  input [1-1:0] out_mat_nlf_dac1_xx1_en,
  input [18-1:0] out_mat_nlf_dac1_xx1_gain,
  input [18-1:0] out_mat_nlf_dac1_xx1_presc,
  input [1-1:0] out_mat_nlf_dac1_xx2_en,
  input [18-1:0] out_mat_nlf_dac1_xx2_gain,
  input [18-1:0] out_mat_nlf_dac1_xx2_presc,
  input [18-1:0] slice0_u_gain,
  input [1-1:0] slice0_u_mux,
  input [18-1:0] slice0_u_nlf_gain,
  input [18-1:0] slice0_u_nlf_presc,
  input [18-1:0] slice0_x_gain,
  input [1-1:0] slice0_x_mux,
  input [18-1:0] slice0_x_nlf_gain,
  input [18-1:0] slice0_x_nlf_presc,
  input [18-1:0] slice0_x_presc_mul,
  input [5-1:0] slice0_x_presc_shift,
  input [18-1:0] slice0_xd_gain,
  input [1-1:0] slice0_xd_mux,
  input [18-1:0] slice0_xd_nlf_gain,
  input [18-1:0] slice0_xd_nlf_presc,
  input [18-1:0] slice0_xd_presc_mul,
  input [5-1:0] slice0_xd_presc_shift,
  input [18-1:0] slice1_u_gain,
  input [1-1:0] slice1_u_mux,
  input [18-1:0] slice1_u_nlf_gain,
  input [18-1:0] slice1_u_nlf_presc,
  input [18-1:0] slice1_x_gain,
  input [1-1:0] slice1_x_mux,
  input [18-1:0] slice1_x_nlf_gain,
  input [18-1:0] slice1_x_nlf_presc,
  input [18-1:0] slice1_x_presc_mul,
  input [5-1:0] slice1_x_presc_shift,
  input [18-1:0] slice1_xd_gain,
  input [1-1:0] slice1_xd_mux,
  input [18-1:0] slice1_xd_nlf_gain,
  input [18-1:0] slice1_xd_nlf_presc,
  input [18-1:0] slice1_xd_presc_mul,
  input [5-1:0] slice1_xd_presc_shift,
  input [18-1:0] slice2_u_gain,
  input [1-1:0] slice2_u_mux,
  input [18-1:0] slice2_u_nlf_gain,
  input [18-1:0] slice2_u_nlf_presc,
  input [18-1:0] slice2_x_gain,
  input [1-1:0] slice2_x_mux,
  input [18-1:0] slice2_x_nlf_gain,
  input [18-1:0] slice2_x_nlf_presc,
  input [18-1:0] slice2_x_presc_mul,
  input [5-1:0] slice2_x_presc_shift,
  input [18-1:0] slice2_xd_gain,
  input [1-1:0] slice2_xd_mux,
  input [18-1:0] slice2_xd_nlf_gain,
  input [18-1:0] slice2_xd_nlf_presc,
  input [18-1:0] slice2_xd_presc_mul,
  input [5-1:0] slice2_xd_presc_shift,
  input [1-1:0] system_run,
  input [9-1:0] procclk_nlf_sw_ext_in,
  input clk_1_x0,
  input ce_1_x0,
  input clk_1_x1,
  input ce_1,
  input clk_2,
  input ce_2,
  input clk_36,
  input ce_36,
  input clk_1,
  input ce_1_x1,
  output [14-1:0] dac_ch0_out,
  output [14-1:0] dac_ch1_out,
  output [32-1:0] dma_ch1_out,
  output [16-1:0] dma_ch2h_out,
  output [16-1:0] dma_ch2l_out,
  output [1-1:0] dma_trigger_out,
  output [25-1:0] adc0_value,
  output [25-1:0] adc1_value,
  output [1-1:0] cfg_nlf_done,
  output [9-1:0] nlf_switch,
  output [8-1:0] leds_out
);
  wire [14-1:0] adc_ch0_in_net;
  wire [14-1:0] adc_ch1_in_net;
  wire [14-1:0] cast_dac0_dout_net;
  wire [14-1:0] cast_dac1_dout_net;
  wire [32-1:0] concat_y_net;
  wire [16-1:0] reint_u2_output_port_net;
  wire [16-1:0] reint_u3_output_port_net;
  wire [1-1:0] constant7_op_net;
  wire [18-1:0] adc0_calib_factor_net;
  wire [25-1:0] adc0_calib_offset_net;
  wire [1-1:0] adc0_nlf_enable_net;
  wire [18-1:0] adc0_nlf_gain_net;
  wire [18-1:0] adc0_nlf_presc_net;
  wire [25-1:0] clkxreg_slice1_cfg115_q_net;
  wire [18-1:0] adc1_calib_factor_net;
  wire [25-1:0] adc1_calib_offset_net;
  wire [1-1:0] adc1_nlf_enable_net;
  wire [18-1:0] adc1_nlf_gain_net;
  wire [18-1:0] adc1_nlf_presc_net;
  wire [25-1:0] clkxreg_slice1_cfg116_q_net;
  wire [10-1:0] cfg_nlf_addr_net;
  wire [16-1:0] cfg_nlf_data_net;
  wire [1-1:0] clkxreg_slice1_cfg93_q_net;
  wire [32-1:0] cfg_nlf_select_net;
  wire [1-1:0] cfg_nlf_start_net;
  wire [1-1:0] cfg_nlf_we_net;
  wire [18-1:0] cfg_noise_presc0_net;
  wire [18-1:0] cfg_noise_presc1_net;
  wire [18-1:0] cfg_noise_presc2_net;
  wire [1-1:0] cfg_system_reset_net;
  wire [18-1:0] dac0_calib_factor_net;
  wire [25-1:0] dac0_calib_offset_net;
  wire [18-1:0] dac1_calib_factor_net;
  wire [25-1:0] dac1_calib_offset_net;
  wire [18-1:0] inp_mat_fac_u0_adc0_net;
  wire [18-1:0] inp_mat_fac_u0_adc1_net;
  wire [18-1:0] inp_mat_fac_u0_noise_net;
  wire [18-1:0] inp_mat_fac_u1_adc0_net;
  wire [18-1:0] inp_mat_fac_u1_adc1_net;
  wire [18-1:0] inp_mat_fac_u1_noise_net;
  wire [18-1:0] inp_mat_fac_u2_adc0_net;
  wire [18-1:0] inp_mat_fac_u2_adc1_net;
  wire [18-1:0] inp_mat_fac_u2_noise_net;
  wire [8-1:0] led_value_net;
  wire [9-1:0] clkxreg_slice1_cfg137_q_net;
  wire [9-1:0] nlf_switch_io_mask_net;
  wire [9-1:0] nlf_switch_sw_switch_net;
  wire [2-1:0] out_mat_dac0_selx0_net;
  wire [2-1:0] out_mat_dac0_selx1_net;
  wire [2-1:0] out_mat_dac0_selx2_net;
  wire [2-1:0] out_mat_dac1_selx0_net;
  wire [2-1:0] out_mat_dac1_selx1_net;
  wire [2-1:0] out_mat_dac1_selx2_net;
  wire [18-1:0] out_mat_fac_dac0_xx0_net;
  wire [18-1:0] out_mat_fac_dac0_xx1_net;
  wire [18-1:0] out_mat_fac_dac0_xx2_net;
  wire [18-1:0] out_mat_fac_dac1_xx0_net;
  wire [18-1:0] out_mat_fac_dac1_xx1_net;
  wire [18-1:0] out_mat_fac_dac1_xx2_net;
  wire [1-1:0] out_mat_nlf_dac0_xx0_en_net;
  wire [18-1:0] out_mat_nlf_dac0_xx0_gain_net;
  wire [18-1:0] out_mat_nlf_dac0_xx0_presc_net;
  wire [1-1:0] out_mat_nlf_dac0_xx1_en_net;
  wire [18-1:0] out_mat_nlf_dac0_xx1_gain_net;
  wire [18-1:0] out_mat_nlf_dac0_xx1_presc_net;
  wire [1-1:0] out_mat_nlf_dac0_xx2_en_net;
  wire [18-1:0] out_mat_nlf_dac0_xx2_gain_net;
  wire [18-1:0] out_mat_nlf_dac0_xx2_presc_net;
  wire [1-1:0] out_mat_nlf_dac1_xx0_en_net;
  wire [18-1:0] out_mat_nlf_dac1_xx0_gain_net;
  wire [18-1:0] out_mat_nlf_dac1_xx0_presc_net;
  wire [1-1:0] out_mat_nlf_dac1_xx1_en_net;
  wire [18-1:0] out_mat_nlf_dac1_xx1_gain_net;
  wire [18-1:0] out_mat_nlf_dac1_xx1_presc_net;
  wire [1-1:0] out_mat_nlf_dac1_xx2_en_net;
  wire [18-1:0] out_mat_nlf_dac1_xx2_gain_net;
  wire [18-1:0] out_mat_nlf_dac1_xx2_presc_net;
  wire [18-1:0] slice0_u_gain_net;
  wire [1-1:0] slice0_u_mux_net;
  wire [18-1:0] slice0_u_nlf_gain_net;
  wire [18-1:0] slice0_u_nlf_presc_net;
  wire [18-1:0] slice0_x_gain_net;
  wire [1-1:0] slice0_x_mux_net;
  wire [18-1:0] slice0_x_nlf_gain_net;
  wire [18-1:0] slice0_x_nlf_presc_net;
  wire [18-1:0] slice0_x_presc_mul_net;
  wire [5-1:0] slice0_x_presc_shift_net;
  wire [18-1:0] slice0_xd_gain_net;
  wire [1-1:0] slice0_xd_mux_net;
  wire [18-1:0] slice0_xd_nlf_gain_net;
  wire [18-1:0] slice0_xd_nlf_presc_net;
  wire [18-1:0] slice0_xd_presc_mul_net;
  wire [5-1:0] slice0_xd_presc_shift_net;
  wire [18-1:0] slice1_u_gain_net;
  wire [1-1:0] slice1_u_mux_net;
  wire [18-1:0] slice1_u_nlf_gain_net;
  wire [18-1:0] slice1_u_nlf_presc_net;
  wire [18-1:0] slice1_x_gain_net;
  wire [1-1:0] slice1_x_mux_net;
  wire [18-1:0] slice1_x_nlf_gain_net;
  wire [18-1:0] slice1_x_nlf_presc_net;
  wire [18-1:0] slice1_x_presc_mul_net;
  wire [5-1:0] slice1_x_presc_shift_net;
  wire [18-1:0] slice1_xd_gain_net;
  wire [1-1:0] slice1_xd_mux_net;
  wire [18-1:0] slice1_xd_nlf_gain_net;
  wire [18-1:0] slice1_xd_nlf_presc_net;
  wire [18-1:0] slice1_xd_presc_mul_net;
  wire [5-1:0] slice1_xd_presc_shift_net;
  wire [18-1:0] slice2_u_gain_net;
  wire [1-1:0] slice2_u_mux_net;
  wire [18-1:0] slice2_u_nlf_gain_net;
  wire [18-1:0] slice2_u_nlf_presc_net;
  wire [18-1:0] slice2_x_gain_net;
  wire [1-1:0] slice2_x_mux_net;
  wire [18-1:0] slice2_x_nlf_gain_net;
  wire [18-1:0] slice2_x_nlf_presc_net;
  wire [18-1:0] slice2_x_presc_mul_net;
  wire [5-1:0] slice2_x_presc_shift_net;
  wire [18-1:0] slice2_xd_gain_net;
  wire [1-1:0] slice2_xd_mux_net;
  wire [18-1:0] slice2_xd_nlf_gain_net;
  wire [18-1:0] slice2_xd_nlf_presc_net;
  wire [18-1:0] slice2_xd_presc_mul_net;
  wire [5-1:0] slice2_xd_presc_shift_net;
  wire [1-1:0] system_run_net;
  wire [8-1:0] clkxreg_slice1_cfg98_q_net;
  wire [9-1:0] procclk_nlf_sw_ext_in_net;
  wire d_clk_net;
  wire q_ce_net;
  wire clk_net;
  wire ce_net_x0;
  wire src_clk_net;
  wire src_ce_net;
  wire dest_clk_net;
  wire dest_ce_net;
  wire clk_net_x0;
  wire ce_net;
  wire [25-1:0] cast_adc1_to_slice_dout_net;
  wire [25-1:0] cast_adc0_to_slice_dout_net;
  wire [25-1:0] clkxreg_slice1_cfg87_q_net;
  wire [25-1:0] clkxreg_slice1_cfg88_q_net;
  wire [25-1:0] clkxreg_slice1_cfg140_q_net;
  wire [25-1:0] clkxreg_slice1_cfg141_q_net;
  wire [25-1:0] clkxreg_slice1_cfg142_q_net;
  wire [25-1:0] clkxreg_slice1_cfg143_q_net;
  wire [8-1:0] cfg_nlf_select_7_0_y_net;
  wire [25-1:0] adc0_calib_mul_p_net;
  wire [25-1:0] adc1_calib_mul_p_net;
  wire [25-1:0] mux1_y_net;
  wire [25-1:0] mux2_y_net;
  wire [25-1:0] dac0_calib_add_s_net;
  wire [25-1:0] dac1_calib_add_s_net;
  wire [1-1:0] register1_q_net;
  wire [9-1:0] logical2_y_net;
  wire [25-1:0] clkxreg_slice1_cfg85_q_net;
  wire [25-1:0] clkxreg_slice1_cfg86_q_net;
  wire [1-1:0] clkxreg_slice1_cfg112_q_net;
  wire [1-1:0] clkxreg_slice1_cfg99_q_net;
  wire [10-1:0] clkxreg_slice1_cfg97_q_net;
  wire [16-1:0] clkxreg_slice1_cfg96_q_net;
  wire [1-1:0] clkxreg_slice1_cfg95_q_net;
  wire [1-1:0] clkxreg_slice1_cfg94_q_net;
  wire [18-1:0] clkxreg_slice1_cfg83_q_net;
  wire [18-1:0] clkxreg_slice1_cfg82_q_net;
  wire [18-1:0] clkxreg_slice1_cfg84_q_net;
  wire [8-1:0] clkxreg_slice1_cfg136_q_net;
  wire [18-1:0] clkxreg_slice1_cfg30_q_net;
  wire [2-1:0] clkxreg_slice1_cfg42_q_net;
  wire [1-1:0] clkxreg_slice1_cfg2_q_net;
  wire [1-1:0] clkxreg_slice1_cfg58_q_net;
  wire [1-1:0] clkxreg_slice1_cfg74_q_net;
  wire [18-1:0] clkxreg_slice1_cfg101_q_net;
  wire [25-1:0] clkxreg_slice1_cfg114_q_net;
  wire [25-1:0] clkxreg_slice1_cfg133_q_net;
  wire [9-1:0] clkxreg_slice1_cfg139_q_net;
  wire [9-1:0] clkxreg_slice1_cfg138_q_net;
  wire [18-1:0] clkxreg_slice1_cfg26_q_net;
  wire [18-1:0] clkxreg_slice1_cfg32_q_net;
  wire [18-1:0] clkxreg_slice1_cfg31_q_net;
  wire [18-1:0] clkxreg_slice1_cfg34_q_net;
  wire [18-1:0] clkxreg_slice1_cfg33_q_net;
  wire [18-1:0] clkxreg_slice1_cfg36_q_net;
  wire [18-1:0] clkxreg_slice1_cfg35_q_net;
  wire [18-1:0] clkxreg_slice1_cfg27_q_net;
  wire [2-1:0] clkxreg_slice1_cfg38_q_net;
  wire [2-1:0] clkxreg_slice1_cfg44_q_net;
  wire [18-1:0] clkxreg_slice1_cfg43_q_net;
  wire [18-1:0] clkxreg_slice1_cfg46_q_net;
  wire [18-1:0] clkxreg_slice1_cfg45_q_net;
  wire [2-1:0] clkxreg_slice1_cfg48_q_net;
  wire [2-1:0] clkxreg_slice1_cfg47_q_net;
  wire [2-1:0] clkxreg_slice1_cfg39_q_net;
  wire [18-1:0] clkxreg_slice1_cfg49_q_net;
  wire [18-1:0] clkxreg_slice1_cfg41_q_net;
  wire [18-1:0] clkxreg_slice1_cfg40_q_net;
  wire [1-1:0] clkxreg_slice1_cfg111_q_net;
  wire [18-1:0] clkxreg_slice1_cfg107_q_net;
  wire [18-1:0] clkxreg_slice1_cfg120_q_net;
  wire [1-1:0] clkxreg_slice1_cfg119_q_net;
  wire [18-1:0] clkxreg_slice1_cfg122_q_net;
  wire [18-1:0] clkxreg_slice1_cfg121_q_net;
  wire [1-1:0] clkxreg_slice1_cfg124_q_net;
  wire [18-1:0] clkxreg_slice1_cfg123_q_net;
  wire [18-1:0] clkxreg_slice1_cfg108_q_net;
  wire [1-1:0] clkxreg_slice1_cfg125_q_net;
  wire [18-1:0] clkxreg_slice1_cfg110_q_net;
  wire [18-1:0] clkxreg_slice1_cfg109_q_net;
  wire [1-1:0] clkxreg_slice1_cfg126_q_net;
  wire [18-1:0] clkxreg_slice1_cfg129_q_net;
  wire [18-1:0] clkxreg_slice1_cfg128_q_net;
  wire [1-1:0] clkxreg_slice1_cfg127_q_net;
  wire [18-1:0] clkxreg_slice1_cfg131_q_net;
  wire [18-1:0] clkxreg_slice1_cfg130_q_net;
  wire [18-1:0] clkxreg_slice1_cfg1_q_net;
  wire [18-1:0] clkxreg_slice1_cfg4_q_net;
  wire [18-1:0] clkxreg_slice1_cfg3_q_net;
  wire [1-1:0] clkxreg_slice1_cfg6_q_net;
  wire [18-1:0] clkxreg_slice1_cfg5_q_net;
  wire [18-1:0] clkxreg_slice1_cfg8_q_net;
  wire [18-1:0] clkxreg_slice1_cfg7_q_net;
  wire [1-1:0] clkxreg_slice1_cfg10_q_net;
  wire [18-1:0] clkxreg_slice1_cfg9_q_net;
  wire [18-1:0] clkxreg_slice1_cfg12_q_net;
  wire [18-1:0] clkxreg_slice1_cfg11_q_net;
  wire [5-1:0] clkxreg_slice1_cfg13_q_net;
  wire [18-1:0] clkxreg_slice1_cfg16_q_net;
  wire [5-1:0] clkxreg_slice1_cfg15_q_net;
  wire [18-1:0] clkxreg_slice1_cfg14_q_net;
  wire [18-1:0] clkxreg_slice1_cfg50_q_net;
  wire [18-1:0] clkxreg_slice1_cfg60_q_net;
  wire [18-1:0] clkxreg_slice1_cfg59_q_net;
  wire [1-1:0] clkxreg_slice1_cfg62_q_net;
  wire [18-1:0] clkxreg_slice1_cfg61_q_net;
  wire [18-1:0] clkxreg_slice1_cfg64_q_net;
  wire [18-1:0] clkxreg_slice1_cfg63_q_net;
  wire [1-1:0] clkxreg_slice1_cfg51_q_net;
  wire [18-1:0] clkxreg_slice1_cfg65_q_net;
  wire [18-1:0] clkxreg_slice1_cfg53_q_net;
  wire [18-1:0] clkxreg_slice1_cfg52_q_net;
  wire [5-1:0] clkxreg_slice1_cfg54_q_net;
  wire [18-1:0] clkxreg_slice1_cfg57_q_net;
  wire [5-1:0] clkxreg_slice1_cfg56_q_net;
  wire [18-1:0] clkxreg_slice1_cfg55_q_net;
  wire [18-1:0] clkxreg_slice1_cfg66_q_net;
  wire [18-1:0] clkxreg_slice1_cfg76_q_net;
  wire [18-1:0] clkxreg_slice1_cfg75_q_net;
  wire [1-1:0] clkxreg_slice1_cfg78_q_net;
  wire [18-1:0] clkxreg_slice1_cfg77_q_net;
  wire [18-1:0] clkxreg_slice1_cfg80_q_net;
  wire [18-1:0] clkxreg_slice1_cfg79_q_net;
  wire [1-1:0] clkxreg_slice1_cfg67_q_net;
  wire [18-1:0] clkxreg_slice1_cfg81_q_net;
  wire [18-1:0] clkxreg_slice1_cfg69_q_net;
  wire [18-1:0] clkxreg_slice1_cfg68_q_net;
  wire [5-1:0] clkxreg_slice1_cfg70_q_net;
  wire [18-1:0] clkxreg_slice1_cfg73_q_net;
  wire [5-1:0] clkxreg_slice1_cfg72_q_net;
  wire [18-1:0] clkxreg_slice1_cfg71_q_net;
  wire [18-1:0] clkxreg_slice1_cfg100_q_net;
  wire [1-1:0] clkxreg_slice1_cfg102_q_net;
  wire [18-1:0] clkxreg_slice1_cfg105_q_net;
  wire [18-1:0] clkxreg_slice1_cfg104_q_net;
  wire [1-1:0] clkxreg_slice1_cfg103_q_net;
  wire [25-1:0] clkxreg_slice1_cfg113_q_net;
  wire [18-1:0] clkxreg_slice1_cfg118_q_net;
  wire [18-1:0] clkxreg_slice1_cfg117_q_net;
  wire [25-1:0] clkxreg_slice1_cfg132_q_net;
  wire [18-1:0] clkxreg_slice1_cfg135_q_net;
  wire [18-1:0] clkxreg_slice1_cfg134_q_net;
  assign adc_ch0_in_net = adc_ch0_in;
  assign adc_ch1_in_net = adc_ch1_in;
  assign dac_ch0_out = cast_dac0_dout_net;
  assign dac_ch1_out = cast_dac1_dout_net;
  assign dma_ch1_out = concat_y_net;
  assign dma_ch2h_out = reint_u2_output_port_net;
  assign dma_ch2l_out = reint_u3_output_port_net;
  assign dma_trigger_out = constant7_op_net;
  assign adc0_calib_factor_net = adc0_calib_factor;
  assign adc0_calib_offset_net = adc0_calib_offset;
  assign adc0_nlf_enable_net = adc0_nlf_enable;
  assign adc0_nlf_gain_net = adc0_nlf_gain;
  assign adc0_nlf_presc_net = adc0_nlf_presc;
  assign adc0_value = clkxreg_slice1_cfg115_q_net;
  assign adc1_calib_factor_net = adc1_calib_factor;
  assign adc1_calib_offset_net = adc1_calib_offset;
  assign adc1_nlf_enable_net = adc1_nlf_enable;
  assign adc1_nlf_gain_net = adc1_nlf_gain;
  assign adc1_nlf_presc_net = adc1_nlf_presc;
  assign adc1_value = clkxreg_slice1_cfg116_q_net;
  assign cfg_nlf_addr_net = cfg_nlf_addr;
  assign cfg_nlf_data_net = cfg_nlf_data;
  assign cfg_nlf_done = clkxreg_slice1_cfg93_q_net;
  assign cfg_nlf_select_net = cfg_nlf_select;
  assign cfg_nlf_start_net = cfg_nlf_start;
  assign cfg_nlf_we_net = cfg_nlf_we;
  assign cfg_noise_presc0_net = cfg_noise_presc0;
  assign cfg_noise_presc1_net = cfg_noise_presc1;
  assign cfg_noise_presc2_net = cfg_noise_presc2;
  assign cfg_system_reset_net = cfg_system_reset;
  assign dac0_calib_factor_net = dac0_calib_factor;
  assign dac0_calib_offset_net = dac0_calib_offset;
  assign dac1_calib_factor_net = dac1_calib_factor;
  assign dac1_calib_offset_net = dac1_calib_offset;
  assign inp_mat_fac_u0_adc0_net = inp_mat_fac_u0_adc0;
  assign inp_mat_fac_u0_adc1_net = inp_mat_fac_u0_adc1;
  assign inp_mat_fac_u0_noise_net = inp_mat_fac_u0_noise;
  assign inp_mat_fac_u1_adc0_net = inp_mat_fac_u1_adc0;
  assign inp_mat_fac_u1_adc1_net = inp_mat_fac_u1_adc1;
  assign inp_mat_fac_u1_noise_net = inp_mat_fac_u1_noise;
  assign inp_mat_fac_u2_adc0_net = inp_mat_fac_u2_adc0;
  assign inp_mat_fac_u2_adc1_net = inp_mat_fac_u2_adc1;
  assign inp_mat_fac_u2_noise_net = inp_mat_fac_u2_noise;
  assign led_value_net = led_value;
  assign nlf_switch = clkxreg_slice1_cfg137_q_net;
  assign nlf_switch_io_mask_net = nlf_switch_io_mask;
  assign nlf_switch_sw_switch_net = nlf_switch_sw_switch;
  assign out_mat_dac0_selx0_net = out_mat_dac0_selx0;
  assign out_mat_dac0_selx1_net = out_mat_dac0_selx1;
  assign out_mat_dac0_selx2_net = out_mat_dac0_selx2;
  assign out_mat_dac1_selx0_net = out_mat_dac1_selx0;
  assign out_mat_dac1_selx1_net = out_mat_dac1_selx1;
  assign out_mat_dac1_selx2_net = out_mat_dac1_selx2;
  assign out_mat_fac_dac0_xx0_net = out_mat_fac_dac0_xx0;
  assign out_mat_fac_dac0_xx1_net = out_mat_fac_dac0_xx1;
  assign out_mat_fac_dac0_xx2_net = out_mat_fac_dac0_xx2;
  assign out_mat_fac_dac1_xx0_net = out_mat_fac_dac1_xx0;
  assign out_mat_fac_dac1_xx1_net = out_mat_fac_dac1_xx1;
  assign out_mat_fac_dac1_xx2_net = out_mat_fac_dac1_xx2;
  assign out_mat_nlf_dac0_xx0_en_net = out_mat_nlf_dac0_xx0_en;
  assign out_mat_nlf_dac0_xx0_gain_net = out_mat_nlf_dac0_xx0_gain;
  assign out_mat_nlf_dac0_xx0_presc_net = out_mat_nlf_dac0_xx0_presc;
  assign out_mat_nlf_dac0_xx1_en_net = out_mat_nlf_dac0_xx1_en;
  assign out_mat_nlf_dac0_xx1_gain_net = out_mat_nlf_dac0_xx1_gain;
  assign out_mat_nlf_dac0_xx1_presc_net = out_mat_nlf_dac0_xx1_presc;
  assign out_mat_nlf_dac0_xx2_en_net = out_mat_nlf_dac0_xx2_en;
  assign out_mat_nlf_dac0_xx2_gain_net = out_mat_nlf_dac0_xx2_gain;
  assign out_mat_nlf_dac0_xx2_presc_net = out_mat_nlf_dac0_xx2_presc;
  assign out_mat_nlf_dac1_xx0_en_net = out_mat_nlf_dac1_xx0_en;
  assign out_mat_nlf_dac1_xx0_gain_net = out_mat_nlf_dac1_xx0_gain;
  assign out_mat_nlf_dac1_xx0_presc_net = out_mat_nlf_dac1_xx0_presc;
  assign out_mat_nlf_dac1_xx1_en_net = out_mat_nlf_dac1_xx1_en;
  assign out_mat_nlf_dac1_xx1_gain_net = out_mat_nlf_dac1_xx1_gain;
  assign out_mat_nlf_dac1_xx1_presc_net = out_mat_nlf_dac1_xx1_presc;
  assign out_mat_nlf_dac1_xx2_en_net = out_mat_nlf_dac1_xx2_en;
  assign out_mat_nlf_dac1_xx2_gain_net = out_mat_nlf_dac1_xx2_gain;
  assign out_mat_nlf_dac1_xx2_presc_net = out_mat_nlf_dac1_xx2_presc;
  assign slice0_u_gain_net = slice0_u_gain;
  assign slice0_u_mux_net = slice0_u_mux;
  assign slice0_u_nlf_gain_net = slice0_u_nlf_gain;
  assign slice0_u_nlf_presc_net = slice0_u_nlf_presc;
  assign slice0_x_gain_net = slice0_x_gain;
  assign slice0_x_mux_net = slice0_x_mux;
  assign slice0_x_nlf_gain_net = slice0_x_nlf_gain;
  assign slice0_x_nlf_presc_net = slice0_x_nlf_presc;
  assign slice0_x_presc_mul_net = slice0_x_presc_mul;
  assign slice0_x_presc_shift_net = slice0_x_presc_shift;
  assign slice0_xd_gain_net = slice0_xd_gain;
  assign slice0_xd_mux_net = slice0_xd_mux;
  assign slice0_xd_nlf_gain_net = slice0_xd_nlf_gain;
  assign slice0_xd_nlf_presc_net = slice0_xd_nlf_presc;
  assign slice0_xd_presc_mul_net = slice0_xd_presc_mul;
  assign slice0_xd_presc_shift_net = slice0_xd_presc_shift;
  assign slice1_u_gain_net = slice1_u_gain;
  assign slice1_u_mux_net = slice1_u_mux;
  assign slice1_u_nlf_gain_net = slice1_u_nlf_gain;
  assign slice1_u_nlf_presc_net = slice1_u_nlf_presc;
  assign slice1_x_gain_net = slice1_x_gain;
  assign slice1_x_mux_net = slice1_x_mux;
  assign slice1_x_nlf_gain_net = slice1_x_nlf_gain;
  assign slice1_x_nlf_presc_net = slice1_x_nlf_presc;
  assign slice1_x_presc_mul_net = slice1_x_presc_mul;
  assign slice1_x_presc_shift_net = slice1_x_presc_shift;
  assign slice1_xd_gain_net = slice1_xd_gain;
  assign slice1_xd_mux_net = slice1_xd_mux;
  assign slice1_xd_nlf_gain_net = slice1_xd_nlf_gain;
  assign slice1_xd_nlf_presc_net = slice1_xd_nlf_presc;
  assign slice1_xd_presc_mul_net = slice1_xd_presc_mul;
  assign slice1_xd_presc_shift_net = slice1_xd_presc_shift;
  assign slice2_u_gain_net = slice2_u_gain;
  assign slice2_u_mux_net = slice2_u_mux;
  assign slice2_u_nlf_gain_net = slice2_u_nlf_gain;
  assign slice2_u_nlf_presc_net = slice2_u_nlf_presc;
  assign slice2_x_gain_net = slice2_x_gain;
  assign slice2_x_mux_net = slice2_x_mux;
  assign slice2_x_nlf_gain_net = slice2_x_nlf_gain;
  assign slice2_x_nlf_presc_net = slice2_x_nlf_presc;
  assign slice2_x_presc_mul_net = slice2_x_presc_mul;
  assign slice2_x_presc_shift_net = slice2_x_presc_shift;
  assign slice2_xd_gain_net = slice2_xd_gain;
  assign slice2_xd_mux_net = slice2_xd_mux;
  assign slice2_xd_nlf_gain_net = slice2_xd_nlf_gain;
  assign slice2_xd_nlf_presc_net = slice2_xd_nlf_presc;
  assign slice2_xd_presc_mul_net = slice2_xd_presc_mul;
  assign slice2_xd_presc_shift_net = slice2_xd_presc_shift;
  assign system_run_net = system_run;
  assign leds_out = clkxreg_slice1_cfg98_q_net;
  assign procclk_nlf_sw_ext_in_net = procclk_nlf_sw_ext_in;
  assign d_clk_net = clk_1_x0;
  assign q_ce_net = ce_1_x0;
  assign clk_net = clk_1_x1;
  assign ce_net_x0 = ce_1;
  assign src_clk_net = clk_2;
  assign src_ce_net = ce_2;
  assign dest_clk_net = clk_36;
  assign dest_ce_net = ce_36;
  assign clk_net_x0 = clk_1;
  assign ce_net = ce_1_x1;
  hilsim_ipcore_adc_dac_domain adc_dac_domain (
    .adcclk_dac1_in(clkxreg_slice1_cfg87_q_net),
    .adcclk_dac0_in(clkxreg_slice1_cfg88_q_net),
    .adcclk_dac0_dma(clkxreg_slice1_cfg140_q_net),
    .adcclk_dac1_dma(clkxreg_slice1_cfg141_q_net),
    .adcclk_adc0_dma(clkxreg_slice1_cfg142_q_net),
    .adcclk_adc1_dma(clkxreg_slice1_cfg143_q_net),
    .adc_ch0_in(adc_ch0_in_net),
    .adc_ch1_in(adc_ch1_in_net),
    .clk_1(clk_net_x0),
    .ce_1(ce_net),
    .adcclk_adc1_out(cast_adc1_to_slice_dout_net),
    .adcclk_adc0_out(cast_adc0_to_slice_dout_net),
    .dac_ch0_out(cast_dac0_dout_net),
    .dac_ch1_out(cast_dac1_dout_net),
    .dma_ch1_out(concat_y_net),
    .dma_ch2h_out(reint_u2_output_port_net),
    .dma_ch2l_out(reint_u3_output_port_net),
    .dma_trigger_out(constant7_op_net)
  );
  hilsim_ipcore_axi_domain axi_domain (
    .axiclk_cfg_nlf_done(clkxreg_slice1_cfg93_q_net),
    .axiclk_adc_calib_out_1(clkxreg_slice1_cfg115_q_net),
    .axiclk_nlf_switch(clkxreg_slice1_cfg137_q_net),
    .axiclk_adc_calib_out_2(clkxreg_slice1_cfg116_q_net),
    .adc0_calib_factor(adc0_calib_factor_net),
    .adc0_calib_offset(adc0_calib_offset_net),
    .adc0_nlf_enable(adc0_nlf_enable_net),
    .adc0_nlf_gain(adc0_nlf_gain_net),
    .adc0_nlf_presc(adc0_nlf_presc_net),
    .adc1_calib_factor(adc1_calib_factor_net),
    .adc1_calib_offset(adc1_calib_offset_net),
    .adc1_nlf_enable(adc1_nlf_enable_net),
    .adc1_nlf_gain(adc1_nlf_gain_net),
    .adc1_nlf_presc(adc1_nlf_presc_net),
    .cfg_nlf_addr(cfg_nlf_addr_net),
    .cfg_nlf_data(cfg_nlf_data_net),
    .cfg_nlf_select(cfg_nlf_select_net),
    .cfg_nlf_start(cfg_nlf_start_net),
    .cfg_nlf_we(cfg_nlf_we_net),
    .cfg_noise_presc0(cfg_noise_presc0_net),
    .cfg_noise_presc1(cfg_noise_presc1_net),
    .cfg_noise_presc2(cfg_noise_presc2_net),
    .cfg_system_reset(cfg_system_reset_net),
    .dac0_calib_factor(dac0_calib_factor_net),
    .dac0_calib_offset(dac0_calib_offset_net),
    .dac1_calib_factor(dac1_calib_factor_net),
    .dac1_calib_offset(dac1_calib_offset_net),
    .inp_mat_fac_u0_adc0(inp_mat_fac_u0_adc0_net),
    .inp_mat_fac_u0_adc1(inp_mat_fac_u0_adc1_net),
    .inp_mat_fac_u0_noise(inp_mat_fac_u0_noise_net),
    .inp_mat_fac_u1_adc0(inp_mat_fac_u1_adc0_net),
    .inp_mat_fac_u1_adc1(inp_mat_fac_u1_adc1_net),
    .inp_mat_fac_u1_noise(inp_mat_fac_u1_noise_net),
    .inp_mat_fac_u2_adc0(inp_mat_fac_u2_adc0_net),
    .inp_mat_fac_u2_adc1(inp_mat_fac_u2_adc1_net),
    .inp_mat_fac_u2_noise(inp_mat_fac_u2_noise_net),
    .led_value(led_value_net),
    .nlf_switch_io_mask(nlf_switch_io_mask_net),
    .nlf_switch_sw_switch(nlf_switch_sw_switch_net),
    .out_mat_dac0_selx0(out_mat_dac0_selx0_net),
    .out_mat_dac0_selx1(out_mat_dac0_selx1_net),
    .out_mat_dac0_selx2(out_mat_dac0_selx2_net),
    .out_mat_dac1_selx0(out_mat_dac1_selx0_net),
    .out_mat_dac1_selx1(out_mat_dac1_selx1_net),
    .out_mat_dac1_selx2(out_mat_dac1_selx2_net),
    .out_mat_fac_dac0_xx0(out_mat_fac_dac0_xx0_net),
    .out_mat_fac_dac0_xx1(out_mat_fac_dac0_xx1_net),
    .out_mat_fac_dac0_xx2(out_mat_fac_dac0_xx2_net),
    .out_mat_fac_dac1_xx0(out_mat_fac_dac1_xx0_net),
    .out_mat_fac_dac1_xx1(out_mat_fac_dac1_xx1_net),
    .out_mat_fac_dac1_xx2(out_mat_fac_dac1_xx2_net),
    .out_mat_nlf_dac0_xx0_en(out_mat_nlf_dac0_xx0_en_net),
    .out_mat_nlf_dac0_xx0_gain(out_mat_nlf_dac0_xx0_gain_net),
    .out_mat_nlf_dac0_xx0_presc(out_mat_nlf_dac0_xx0_presc_net),
    .out_mat_nlf_dac0_xx1_en(out_mat_nlf_dac0_xx1_en_net),
    .out_mat_nlf_dac0_xx1_gain(out_mat_nlf_dac0_xx1_gain_net),
    .out_mat_nlf_dac0_xx1_presc(out_mat_nlf_dac0_xx1_presc_net),
    .out_mat_nlf_dac0_xx2_en(out_mat_nlf_dac0_xx2_en_net),
    .out_mat_nlf_dac0_xx2_gain(out_mat_nlf_dac0_xx2_gain_net),
    .out_mat_nlf_dac0_xx2_presc(out_mat_nlf_dac0_xx2_presc_net),
    .out_mat_nlf_dac1_xx0_en(out_mat_nlf_dac1_xx0_en_net),
    .out_mat_nlf_dac1_xx0_gain(out_mat_nlf_dac1_xx0_gain_net),
    .out_mat_nlf_dac1_xx0_presc(out_mat_nlf_dac1_xx0_presc_net),
    .out_mat_nlf_dac1_xx1_en(out_mat_nlf_dac1_xx1_en_net),
    .out_mat_nlf_dac1_xx1_gain(out_mat_nlf_dac1_xx1_gain_net),
    .out_mat_nlf_dac1_xx1_presc(out_mat_nlf_dac1_xx1_presc_net),
    .out_mat_nlf_dac1_xx2_en(out_mat_nlf_dac1_xx2_en_net),
    .out_mat_nlf_dac1_xx2_gain(out_mat_nlf_dac1_xx2_gain_net),
    .out_mat_nlf_dac1_xx2_presc(out_mat_nlf_dac1_xx2_presc_net),
    .slice0_u_gain(slice0_u_gain_net),
    .slice0_u_mux(slice0_u_mux_net),
    .slice0_u_nlf_gain(slice0_u_nlf_gain_net),
    .slice0_u_nlf_presc(slice0_u_nlf_presc_net),
    .slice0_x_gain(slice0_x_gain_net),
    .slice0_x_mux(slice0_x_mux_net),
    .slice0_x_nlf_gain(slice0_x_nlf_gain_net),
    .slice0_x_nlf_presc(slice0_x_nlf_presc_net),
    .slice0_x_presc_mul(slice0_x_presc_mul_net),
    .slice0_x_presc_shift(slice0_x_presc_shift_net),
    .slice0_xd_gain(slice0_xd_gain_net),
    .slice0_xd_mux(slice0_xd_mux_net),
    .slice0_xd_nlf_gain(slice0_xd_nlf_gain_net),
    .slice0_xd_nlf_presc(slice0_xd_nlf_presc_net),
    .slice0_xd_presc_mul(slice0_xd_presc_mul_net),
    .slice0_xd_presc_shift(slice0_xd_presc_shift_net),
    .slice1_u_gain(slice1_u_gain_net),
    .slice1_u_mux(slice1_u_mux_net),
    .slice1_u_nlf_gain(slice1_u_nlf_gain_net),
    .slice1_u_nlf_presc(slice1_u_nlf_presc_net),
    .slice1_x_gain(slice1_x_gain_net),
    .slice1_x_mux(slice1_x_mux_net),
    .slice1_x_nlf_gain(slice1_x_nlf_gain_net),
    .slice1_x_nlf_presc(slice1_x_nlf_presc_net),
    .slice1_x_presc_mul(slice1_x_presc_mul_net),
    .slice1_x_presc_shift(slice1_x_presc_shift_net),
    .slice1_xd_gain(slice1_xd_gain_net),
    .slice1_xd_mux(slice1_xd_mux_net),
    .slice1_xd_nlf_gain(slice1_xd_nlf_gain_net),
    .slice1_xd_nlf_presc(slice1_xd_nlf_presc_net),
    .slice1_xd_presc_mul(slice1_xd_presc_mul_net),
    .slice1_xd_presc_shift(slice1_xd_presc_shift_net),
    .slice2_u_gain(slice2_u_gain_net),
    .slice2_u_mux(slice2_u_mux_net),
    .slice2_u_nlf_gain(slice2_u_nlf_gain_net),
    .slice2_u_nlf_presc(slice2_u_nlf_presc_net),
    .slice2_x_gain(slice2_x_gain_net),
    .slice2_x_mux(slice2_x_mux_net),
    .slice2_x_nlf_gain(slice2_x_nlf_gain_net),
    .slice2_x_nlf_presc(slice2_x_nlf_presc_net),
    .slice2_x_presc_mul(slice2_x_presc_mul_net),
    .slice2_x_presc_shift(slice2_x_presc_shift_net),
    .slice2_xd_gain(slice2_xd_gain_net),
    .slice2_xd_mux(slice2_xd_mux_net),
    .slice2_xd_nlf_gain(slice2_xd_nlf_gain_net),
    .slice2_xd_nlf_presc(slice2_xd_nlf_presc_net),
    .slice2_xd_presc_mul(slice2_xd_presc_mul_net),
    .slice2_xd_presc_shift(slice2_xd_presc_shift_net),
    .system_run(system_run_net),
    .axiclk_nlf_cfg_select(cfg_nlf_select_7_0_y_net)
  );
  hilsim_ipcore_proc_domain proc_domain (
    .procclk_adc0_in(clkxreg_slice1_cfg85_q_net),
    .procclk_adc1_in(clkxreg_slice1_cfg86_q_net),
    .procclk_system_reset(clkxreg_slice1_cfg112_q_net),
    .procclk_system_run(clkxreg_slice1_cfg99_q_net),
    .procclk_led(clkxreg_slice1_cfg98_q_net),
    .procclk_lutcfg_addr(clkxreg_slice1_cfg97_q_net),
    .procclk_lutcfg_data(clkxreg_slice1_cfg96_q_net),
    .procclk_lutcfg_we(clkxreg_slice1_cfg95_q_net),
    .procclk_cfg_nlf_start(clkxreg_slice1_cfg94_q_net),
    .procclk_noise0_presc(clkxreg_slice1_cfg83_q_net),
    .procclk_noise1_presc(clkxreg_slice1_cfg82_q_net),
    .procclk_noise2_presc(clkxreg_slice1_cfg84_q_net),
    .procclk_nlf_cfg_select(clkxreg_slice1_cfg136_q_net),
    .procclk_input_matrix_cfg_1(clkxreg_slice1_cfg30_q_net),
    .adcclk_output_matrix_cfg_1(clkxreg_slice1_cfg42_q_net),
    .procclk_slice0_cfg_1(clkxreg_slice1_cfg2_q_net),
    .procclk_slice1_cfg_1(clkxreg_slice1_cfg58_q_net),
    .procclk_slice2_cfg_1(clkxreg_slice1_cfg74_q_net),
    .procclk_adc_nlf_cfg_1(clkxreg_slice1_cfg101_q_net),
    .procclk_adc_calib_in_1(clkxreg_slice1_cfg114_q_net),
    .procclk_dac_calib_1(clkxreg_slice1_cfg133_q_net),
    .procclk_nlf_sw_io_mask(clkxreg_slice1_cfg139_q_net),
    .procclk_nlf_sw_software_sel(clkxreg_slice1_cfg138_q_net),
    .procclk_input_matrix_cfg_2(clkxreg_slice1_cfg26_q_net),
    .procclk_input_matrix_cfg_3(clkxreg_slice1_cfg32_q_net),
    .procclk_input_matrix_cfg_4(clkxreg_slice1_cfg31_q_net),
    .procclk_input_matrix_cfg_5(clkxreg_slice1_cfg34_q_net),
    .procclk_input_matrix_cfg_6(clkxreg_slice1_cfg33_q_net),
    .procclk_input_matrix_cfg_7(clkxreg_slice1_cfg36_q_net),
    .procclk_input_matrix_cfg_8(clkxreg_slice1_cfg35_q_net),
    .procclk_input_matrix_cfg_9(clkxreg_slice1_cfg27_q_net),
    .adcclk_output_matrix_cfg_2(clkxreg_slice1_cfg38_q_net),
    .adcclk_output_matrix_cfg_3(clkxreg_slice1_cfg44_q_net),
    .adcclk_output_matrix_cfg_4(clkxreg_slice1_cfg43_q_net),
    .adcclk_output_matrix_cfg_5(clkxreg_slice1_cfg46_q_net),
    .adcclk_output_matrix_cfg_6(clkxreg_slice1_cfg45_q_net),
    .adcclk_output_matrix_cfg_7(clkxreg_slice1_cfg48_q_net),
    .adcclk_output_matrix_cfg_8(clkxreg_slice1_cfg47_q_net),
    .adcclk_output_matrix_cfg_9(clkxreg_slice1_cfg39_q_net),
    .adcclk_output_matrix_cfg_10(clkxreg_slice1_cfg49_q_net),
    .adcclk_output_matrix_cfg_11(clkxreg_slice1_cfg41_q_net),
    .adcclk_output_matrix_cfg_12(clkxreg_slice1_cfg40_q_net),
    .adcclk_output_matrix_cfg_13(clkxreg_slice1_cfg111_q_net),
    .adcclk_output_matrix_cfg_14(clkxreg_slice1_cfg107_q_net),
    .adcclk_output_matrix_cfg_15(clkxreg_slice1_cfg120_q_net),
    .adcclk_output_matrix_cfg_16(clkxreg_slice1_cfg119_q_net),
    .adcclk_output_matrix_cfg_17(clkxreg_slice1_cfg122_q_net),
    .adcclk_output_matrix_cfg_18(clkxreg_slice1_cfg121_q_net),
    .adcclk_output_matrix_cfg_19(clkxreg_slice1_cfg124_q_net),
    .adcclk_output_matrix_cfg_20(clkxreg_slice1_cfg123_q_net),
    .adcclk_output_matrix_cfg_21(clkxreg_slice1_cfg108_q_net),
    .adcclk_output_matrix_cfg_22(clkxreg_slice1_cfg125_q_net),
    .adcclk_output_matrix_cfg_23(clkxreg_slice1_cfg110_q_net),
    .adcclk_output_matrix_cfg_24(clkxreg_slice1_cfg109_q_net),
    .adcclk_output_matrix_cfg_25(clkxreg_slice1_cfg126_q_net),
    .adcclk_output_matrix_cfg_26(clkxreg_slice1_cfg129_q_net),
    .adcclk_output_matrix_cfg_27(clkxreg_slice1_cfg128_q_net),
    .adcclk_output_matrix_cfg_28(clkxreg_slice1_cfg127_q_net),
    .adcclk_output_matrix_cfg_29(clkxreg_slice1_cfg131_q_net),
    .adcclk_output_matrix_cfg_30(clkxreg_slice1_cfg130_q_net),
    .procclk_slice0_cfg_2(clkxreg_slice1_cfg1_q_net),
    .procclk_slice0_cfg_3(clkxreg_slice1_cfg4_q_net),
    .procclk_slice0_cfg_4(clkxreg_slice1_cfg3_q_net),
    .procclk_slice0_cfg_5(clkxreg_slice1_cfg6_q_net),
    .procclk_slice0_cfg_6(clkxreg_slice1_cfg5_q_net),
    .procclk_slice0_cfg_7(clkxreg_slice1_cfg8_q_net),
    .procclk_slice0_cfg_8(clkxreg_slice1_cfg7_q_net),
    .procclk_slice0_cfg_9(clkxreg_slice1_cfg10_q_net),
    .procclk_slice0_cfg_10(clkxreg_slice1_cfg9_q_net),
    .procclk_slice0_cfg_11(clkxreg_slice1_cfg12_q_net),
    .procclk_slice0_cfg_12(clkxreg_slice1_cfg11_q_net),
    .procclk_slice0_cfg_13(clkxreg_slice1_cfg13_q_net),
    .procclk_slice0_cfg_14(clkxreg_slice1_cfg16_q_net),
    .procclk_slice0_cfg_15(clkxreg_slice1_cfg15_q_net),
    .procclk_slice0_cfg_16(clkxreg_slice1_cfg14_q_net),
    .procclk_slice1_cfg_2(clkxreg_slice1_cfg50_q_net),
    .procclk_slice1_cfg_3(clkxreg_slice1_cfg60_q_net),
    .procclk_slice1_cfg_4(clkxreg_slice1_cfg59_q_net),
    .procclk_slice1_cfg_5(clkxreg_slice1_cfg62_q_net),
    .procclk_slice1_cfg_6(clkxreg_slice1_cfg61_q_net),
    .procclk_slice1_cfg_7(clkxreg_slice1_cfg64_q_net),
    .procclk_slice1_cfg_8(clkxreg_slice1_cfg63_q_net),
    .procclk_slice1_cfg_9(clkxreg_slice1_cfg51_q_net),
    .procclk_slice1_cfg_10(clkxreg_slice1_cfg65_q_net),
    .procclk_slice1_cfg_11(clkxreg_slice1_cfg53_q_net),
    .procclk_slice1_cfg_12(clkxreg_slice1_cfg52_q_net),
    .procclk_slice1_cfg_13(clkxreg_slice1_cfg54_q_net),
    .procclk_slice1_cfg_14(clkxreg_slice1_cfg57_q_net),
    .procclk_slice1_cfg_15(clkxreg_slice1_cfg56_q_net),
    .procclk_slice1_cfg_16(clkxreg_slice1_cfg55_q_net),
    .procclk_slice2_cfg_2(clkxreg_slice1_cfg66_q_net),
    .procclk_slice2_cfg_3(clkxreg_slice1_cfg76_q_net),
    .procclk_slice2_cfg_4(clkxreg_slice1_cfg75_q_net),
    .procclk_slice2_cfg_5(clkxreg_slice1_cfg78_q_net),
    .procclk_slice2_cfg_6(clkxreg_slice1_cfg77_q_net),
    .procclk_slice2_cfg_7(clkxreg_slice1_cfg80_q_net),
    .procclk_slice2_cfg_8(clkxreg_slice1_cfg79_q_net),
    .procclk_slice2_cfg_9(clkxreg_slice1_cfg67_q_net),
    .procclk_slice2_cfg_10(clkxreg_slice1_cfg81_q_net),
    .procclk_slice2_cfg_11(clkxreg_slice1_cfg69_q_net),
    .procclk_slice2_cfg_12(clkxreg_slice1_cfg68_q_net),
    .procclk_slice2_cfg_13(clkxreg_slice1_cfg70_q_net),
    .procclk_slice2_cfg_14(clkxreg_slice1_cfg73_q_net),
    .procclk_slice2_cfg_15(clkxreg_slice1_cfg72_q_net),
    .procclk_slice2_cfg_16(clkxreg_slice1_cfg71_q_net),
    .procclk_adc_nlf_cfg_2(clkxreg_slice1_cfg100_q_net),
    .procclk_adc_nlf_cfg_3(clkxreg_slice1_cfg102_q_net),
    .procclk_adc_nlf_cfg_4(clkxreg_slice1_cfg105_q_net),
    .procclk_adc_nlf_cfg_5(clkxreg_slice1_cfg104_q_net),
    .procclk_adc_nlf_cfg_6(clkxreg_slice1_cfg103_q_net),
    .procclk_adc_calib_in_2(clkxreg_slice1_cfg113_q_net),
    .procclk_adc_calib_in_3(clkxreg_slice1_cfg118_q_net),
    .procclk_adc_calib_in_4(clkxreg_slice1_cfg117_q_net),
    .procclk_dac_calib_2(clkxreg_slice1_cfg132_q_net),
    .procclk_dac_calib_3(clkxreg_slice1_cfg135_q_net),
    .procclk_dac_calib_4(clkxreg_slice1_cfg134_q_net),
    .procclk_nlf_sw_ext_in(procclk_nlf_sw_ext_in_net),
    .clk_1(clk_net),
    .ce_1(ce_net_x0),
    .clk_2(src_clk_net),
    .ce_2(src_ce_net),
    .clk_36(dest_clk_net),
    .ce_36(dest_ce_net),
    .procclk_adc0_dma_out(adc0_calib_mul_p_net),
    .procclk_adc1_dma_out(adc1_calib_mul_p_net),
    .procclk_dac0_dma_out(mux1_y_net),
    .procclk_dac1_dma_out(mux2_y_net),
    .procclk_dac0_out(dac0_calib_add_s_net),
    .procclk_dac1_out(dac1_calib_add_s_net),
    .procclk_cfg_nlf_done(register1_q_net),
    .procclk_nlf_switch(logical2_y_net),
    .procclk_adc_calib_out_1(adc0_calib_mul_p_net),
    .procclk_adc_calib_out_2(adc1_calib_mul_p_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg1 (
    .en(1'b1),
    .rst(1'b0),
    .d(slice0_x_gain_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg1_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(1),
    .init_value(1'b0)
  )
  clkxreg_slice1_cfg10 (
    .en(1'b1),
    .rst(1'b0),
    .d(slice0_u_mux_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg10_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg100 (
    .en(1'b1),
    .rst(1'b0),
    .d(adc0_nlf_gain_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg100_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg101 (
    .en(1'b1),
    .rst(1'b0),
    .d(adc0_nlf_presc_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg101_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(1),
    .init_value(1'b0)
  )
  clkxreg_slice1_cfg102 (
    .en(1'b1),
    .rst(1'b0),
    .d(adc0_nlf_enable_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg102_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(1),
    .init_value(1'b0)
  )
  clkxreg_slice1_cfg103 (
    .en(1'b1),
    .rst(1'b0),
    .d(adc1_nlf_enable_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg103_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg104 (
    .en(1'b1),
    .rst(1'b0),
    .d(adc1_nlf_gain_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg104_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg105 (
    .en(1'b1),
    .rst(1'b0),
    .d(adc1_nlf_presc_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg105_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg107 (
    .en(1'b1),
    .rst(1'b0),
    .d(out_mat_nlf_dac0_xx0_presc_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg107_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg108 (
    .en(1'b1),
    .rst(1'b0),
    .d(out_mat_nlf_dac0_xx2_gain_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg108_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg109 (
    .en(1'b1),
    .rst(1'b0),
    .d(out_mat_nlf_dac1_xx0_gain_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg109_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg11 (
    .en(1'b1),
    .rst(1'b0),
    .d(slice0_u_nlf_gain_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg11_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg110 (
    .en(1'b1),
    .rst(1'b0),
    .d(out_mat_nlf_dac1_xx0_presc_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg110_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(1),
    .init_value(1'b0)
  )
  clkxreg_slice1_cfg111 (
    .en(1'b1),
    .rst(1'b0),
    .d(out_mat_nlf_dac0_xx0_en_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg111_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(1),
    .init_value(1'b0)
  )
  clkxreg_slice1_cfg112 (
    .en(1'b1),
    .rst(1'b0),
    .d(cfg_system_reset_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg112_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  clkxreg_slice1_cfg113 (
    .en(1'b1),
    .rst(1'b0),
    .d(adc1_calib_offset_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg113_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  clkxreg_slice1_cfg114 (
    .en(1'b1),
    .rst(1'b0),
    .d(adc0_calib_offset_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg114_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  clkxreg_slice1_cfg115 (
    .en(1'b1),
    .rst(1'b0),
    .d(adc0_calib_mul_p_net),
    .d_clk(clk_net),
    .q_ce(ce_net_x0),
    .q_clk(d_clk_net),
    .d_ce(q_ce_net),
    .q(clkxreg_slice1_cfg115_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  clkxreg_slice1_cfg116 (
    .en(1'b1),
    .rst(1'b0),
    .d(adc1_calib_mul_p_net),
    .d_clk(clk_net),
    .q_ce(ce_net_x0),
    .q_clk(d_clk_net),
    .d_ce(q_ce_net),
    .q(clkxreg_slice1_cfg116_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg117 (
    .en(1'b1),
    .rst(1'b0),
    .d(adc1_calib_factor_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg117_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg118 (
    .en(1'b1),
    .rst(1'b0),
    .d(adc0_calib_factor_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg118_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(1),
    .init_value(1'b0)
  )
  clkxreg_slice1_cfg119 (
    .en(1'b1),
    .rst(1'b0),
    .d(out_mat_nlf_dac0_xx1_en_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg119_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg12 (
    .en(1'b1),
    .rst(1'b0),
    .d(slice0_u_nlf_presc_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg12_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg120 (
    .en(1'b1),
    .rst(1'b0),
    .d(out_mat_nlf_dac0_xx0_gain_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg120_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg121 (
    .en(1'b1),
    .rst(1'b0),
    .d(out_mat_nlf_dac0_xx1_gain_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg121_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg122 (
    .en(1'b1),
    .rst(1'b0),
    .d(out_mat_nlf_dac0_xx1_presc_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg122_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg123 (
    .en(1'b1),
    .rst(1'b0),
    .d(out_mat_nlf_dac0_xx2_presc_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg123_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(1),
    .init_value(1'b0)
  )
  clkxreg_slice1_cfg124 (
    .en(1'b1),
    .rst(1'b0),
    .d(out_mat_nlf_dac0_xx2_en_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg124_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(1),
    .init_value(1'b0)
  )
  clkxreg_slice1_cfg125 (
    .en(1'b1),
    .rst(1'b0),
    .d(out_mat_nlf_dac1_xx0_en_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg125_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(1),
    .init_value(1'b0)
  )
  clkxreg_slice1_cfg126 (
    .en(1'b1),
    .rst(1'b0),
    .d(out_mat_nlf_dac1_xx1_en_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg126_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(1),
    .init_value(1'b0)
  )
  clkxreg_slice1_cfg127 (
    .en(1'b1),
    .rst(1'b0),
    .d(out_mat_nlf_dac1_xx2_en_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg127_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg128 (
    .en(1'b1),
    .rst(1'b0),
    .d(out_mat_nlf_dac1_xx1_gain_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg128_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg129 (
    .en(1'b1),
    .rst(1'b0),
    .d(out_mat_nlf_dac1_xx1_presc_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg129_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(5),
    .init_value(5'b00000)
  )
  clkxreg_slice1_cfg13 (
    .en(1'b1),
    .rst(1'b0),
    .d(slice0_xd_presc_shift_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg13_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg130 (
    .en(1'b1),
    .rst(1'b0),
    .d(out_mat_nlf_dac1_xx2_gain_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg130_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg131 (
    .en(1'b1),
    .rst(1'b0),
    .d(out_mat_nlf_dac1_xx2_presc_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg131_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  clkxreg_slice1_cfg132 (
    .en(1'b1),
    .rst(1'b0),
    .d(dac1_calib_offset_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg132_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  clkxreg_slice1_cfg133 (
    .en(1'b1),
    .rst(1'b0),
    .d(dac0_calib_offset_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg133_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg134 (
    .en(1'b1),
    .rst(1'b0),
    .d(dac1_calib_factor_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg134_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg135 (
    .en(1'b1),
    .rst(1'b0),
    .d(dac0_calib_factor_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg135_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(8),
    .init_value(8'b00000000)
  )
  clkxreg_slice1_cfg136 (
    .en(1'b1),
    .rst(1'b0),
    .d(cfg_nlf_select_7_0_y_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg136_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(9),
    .init_value(9'b000000000)
  )
  clkxreg_slice1_cfg137 (
    .en(1'b1),
    .rst(1'b0),
    .d(logical2_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net_x0),
    .q_clk(d_clk_net),
    .d_ce(q_ce_net),
    .q(clkxreg_slice1_cfg137_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(9),
    .init_value(9'b000000000)
  )
  clkxreg_slice1_cfg138 (
    .en(1'b1),
    .rst(1'b0),
    .d(nlf_switch_sw_switch_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg138_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(9),
    .init_value(9'b000000000)
  )
  clkxreg_slice1_cfg139 (
    .en(1'b1),
    .rst(1'b0),
    .d(nlf_switch_io_mask_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg139_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg14 (
    .en(1'b1),
    .rst(1'b0),
    .d(slice0_x_presc_mul_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg14_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  clkxreg_slice1_cfg140 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux1_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net_x0),
    .q_clk(clk_net_x0),
    .d_ce(ce_net),
    .q(clkxreg_slice1_cfg140_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  clkxreg_slice1_cfg141 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux2_y_net),
    .d_clk(clk_net),
    .q_ce(ce_net_x0),
    .q_clk(clk_net_x0),
    .d_ce(ce_net),
    .q(clkxreg_slice1_cfg141_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  clkxreg_slice1_cfg142 (
    .en(1'b1),
    .rst(1'b0),
    .d(adc0_calib_mul_p_net),
    .d_clk(clk_net),
    .q_ce(ce_net_x0),
    .q_clk(clk_net_x0),
    .d_ce(ce_net),
    .q(clkxreg_slice1_cfg142_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  clkxreg_slice1_cfg143 (
    .en(1'b1),
    .rst(1'b0),
    .d(adc1_calib_mul_p_net),
    .d_clk(clk_net),
    .q_ce(ce_net_x0),
    .q_clk(clk_net_x0),
    .d_ce(ce_net),
    .q(clkxreg_slice1_cfg143_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(5),
    .init_value(5'b00000)
  )
  clkxreg_slice1_cfg15 (
    .en(1'b1),
    .rst(1'b0),
    .d(slice0_x_presc_shift_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg15_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg16 (
    .en(1'b1),
    .rst(1'b0),
    .d(slice0_xd_presc_mul_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg16_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(1),
    .init_value(1'b0)
  )
  clkxreg_slice1_cfg2 (
    .en(1'b1),
    .rst(1'b0),
    .d(slice0_x_mux_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg2_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg26 (
    .en(1'b1),
    .rst(1'b0),
    .d(inp_mat_fac_u0_adc1_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg26_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg27 (
    .en(1'b1),
    .rst(1'b0),
    .d(inp_mat_fac_u2_noise_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg27_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg3 (
    .en(1'b1),
    .rst(1'b0),
    .d(slice0_x_nlf_gain_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg3_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg30 (
    .en(1'b1),
    .rst(1'b0),
    .d(inp_mat_fac_u0_adc0_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg30_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg31 (
    .en(1'b1),
    .rst(1'b0),
    .d(inp_mat_fac_u1_adc0_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg31_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg32 (
    .en(1'b1),
    .rst(1'b0),
    .d(inp_mat_fac_u0_noise_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg32_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg33 (
    .en(1'b1),
    .rst(1'b0),
    .d(inp_mat_fac_u1_noise_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg33_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg34 (
    .en(1'b1),
    .rst(1'b0),
    .d(inp_mat_fac_u1_adc1_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg34_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg35 (
    .en(1'b1),
    .rst(1'b0),
    .d(inp_mat_fac_u2_adc1_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg35_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg36 (
    .en(1'b1),
    .rst(1'b0),
    .d(inp_mat_fac_u2_adc0_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg36_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(2),
    .init_value(2'b00)
  )
  clkxreg_slice1_cfg38 (
    .en(1'b1),
    .rst(1'b0),
    .d(out_mat_dac0_selx1_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg38_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(2),
    .init_value(2'b00)
  )
  clkxreg_slice1_cfg39 (
    .en(1'b1),
    .rst(1'b0),
    .d(out_mat_dac1_selx2_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg39_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg4 (
    .en(1'b1),
    .rst(1'b0),
    .d(slice0_x_nlf_presc_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg4_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg40 (
    .en(1'b1),
    .rst(1'b0),
    .d(out_mat_fac_dac1_xx2_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg40_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg41 (
    .en(1'b1),
    .rst(1'b0),
    .d(out_mat_fac_dac1_xx1_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg41_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(2),
    .init_value(2'b00)
  )
  clkxreg_slice1_cfg42 (
    .en(1'b1),
    .rst(1'b0),
    .d(out_mat_dac0_selx0_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg42_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg43 (
    .en(1'b1),
    .rst(1'b0),
    .d(out_mat_fac_dac0_xx0_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg43_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(2),
    .init_value(2'b00)
  )
  clkxreg_slice1_cfg44 (
    .en(1'b1),
    .rst(1'b0),
    .d(out_mat_dac0_selx2_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg44_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg45 (
    .en(1'b1),
    .rst(1'b0),
    .d(out_mat_fac_dac0_xx2_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg45_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg46 (
    .en(1'b1),
    .rst(1'b0),
    .d(out_mat_fac_dac0_xx1_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg46_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(2),
    .init_value(2'b00)
  )
  clkxreg_slice1_cfg47 (
    .en(1'b1),
    .rst(1'b0),
    .d(out_mat_dac1_selx1_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg47_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(2),
    .init_value(2'b00)
  )
  clkxreg_slice1_cfg48 (
    .en(1'b1),
    .rst(1'b0),
    .d(out_mat_dac1_selx0_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg48_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg49 (
    .en(1'b1),
    .rst(1'b0),
    .d(out_mat_fac_dac1_xx0_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg49_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg5 (
    .en(1'b1),
    .rst(1'b0),
    .d(slice0_xd_gain_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg5_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg50 (
    .en(1'b1),
    .rst(1'b0),
    .d(slice1_x_gain_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg50_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(1),
    .init_value(1'b0)
  )
  clkxreg_slice1_cfg51 (
    .en(1'b1),
    .rst(1'b0),
    .d(slice1_u_mux_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg51_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg52 (
    .en(1'b1),
    .rst(1'b0),
    .d(slice1_u_nlf_gain_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg52_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg53 (
    .en(1'b1),
    .rst(1'b0),
    .d(slice1_u_nlf_presc_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg53_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(5),
    .init_value(5'b00000)
  )
  clkxreg_slice1_cfg54 (
    .en(1'b1),
    .rst(1'b0),
    .d(slice1_xd_presc_shift_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg54_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg55 (
    .en(1'b1),
    .rst(1'b0),
    .d(slice1_x_presc_mul_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg55_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(5),
    .init_value(5'b00000)
  )
  clkxreg_slice1_cfg56 (
    .en(1'b1),
    .rst(1'b0),
    .d(slice1_x_presc_shift_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg56_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg57 (
    .en(1'b1),
    .rst(1'b0),
    .d(slice1_xd_presc_mul_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg57_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(1),
    .init_value(1'b0)
  )
  clkxreg_slice1_cfg58 (
    .en(1'b1),
    .rst(1'b0),
    .d(slice1_x_mux_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg58_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg59 (
    .en(1'b1),
    .rst(1'b0),
    .d(slice1_x_nlf_gain_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg59_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(1),
    .init_value(1'b0)
  )
  clkxreg_slice1_cfg6 (
    .en(1'b1),
    .rst(1'b0),
    .d(slice0_xd_mux_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg6_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg60 (
    .en(1'b1),
    .rst(1'b0),
    .d(slice1_x_nlf_presc_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg60_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg61 (
    .en(1'b1),
    .rst(1'b0),
    .d(slice1_xd_gain_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg61_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(1),
    .init_value(1'b0)
  )
  clkxreg_slice1_cfg62 (
    .en(1'b1),
    .rst(1'b0),
    .d(slice1_xd_mux_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg62_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg63 (
    .en(1'b1),
    .rst(1'b0),
    .d(slice1_xd_nlf_gain_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg63_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg64 (
    .en(1'b1),
    .rst(1'b0),
    .d(slice1_xd_nlf_presc_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg64_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg65 (
    .en(1'b1),
    .rst(1'b0),
    .d(slice1_u_gain_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg65_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg66 (
    .en(1'b1),
    .rst(1'b0),
    .d(slice2_x_gain_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg66_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(1),
    .init_value(1'b0)
  )
  clkxreg_slice1_cfg67 (
    .en(1'b1),
    .rst(1'b0),
    .d(slice2_u_mux_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg67_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg68 (
    .en(1'b1),
    .rst(1'b0),
    .d(slice2_u_nlf_gain_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg68_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg69 (
    .en(1'b1),
    .rst(1'b0),
    .d(slice2_u_nlf_presc_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg69_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg7 (
    .en(1'b1),
    .rst(1'b0),
    .d(slice0_xd_nlf_gain_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg7_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(5),
    .init_value(5'b00000)
  )
  clkxreg_slice1_cfg70 (
    .en(1'b1),
    .rst(1'b0),
    .d(slice2_xd_presc_shift_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg70_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg71 (
    .en(1'b1),
    .rst(1'b0),
    .d(slice2_x_presc_mul_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg71_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(5),
    .init_value(5'b00000)
  )
  clkxreg_slice1_cfg72 (
    .en(1'b1),
    .rst(1'b0),
    .d(slice2_x_presc_shift_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg72_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg73 (
    .en(1'b1),
    .rst(1'b0),
    .d(slice2_xd_presc_mul_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg73_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(1),
    .init_value(1'b0)
  )
  clkxreg_slice1_cfg74 (
    .en(1'b1),
    .rst(1'b0),
    .d(slice2_x_mux_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg74_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg75 (
    .en(1'b1),
    .rst(1'b0),
    .d(slice2_x_nlf_gain_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg75_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg76 (
    .en(1'b1),
    .rst(1'b0),
    .d(slice2_x_nlf_presc_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg76_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg77 (
    .en(1'b1),
    .rst(1'b0),
    .d(slice2_xd_gain_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg77_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(1),
    .init_value(1'b0)
  )
  clkxreg_slice1_cfg78 (
    .en(1'b1),
    .rst(1'b0),
    .d(slice2_xd_mux_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg78_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg79 (
    .en(1'b1),
    .rst(1'b0),
    .d(slice2_xd_nlf_gain_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg79_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg8 (
    .en(1'b1),
    .rst(1'b0),
    .d(slice0_xd_nlf_presc_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg8_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg80 (
    .en(1'b1),
    .rst(1'b0),
    .d(slice2_xd_nlf_presc_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg80_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg81 (
    .en(1'b1),
    .rst(1'b0),
    .d(slice2_u_gain_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg81_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg82 (
    .en(1'b1),
    .rst(1'b0),
    .d(cfg_noise_presc1_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg82_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg83 (
    .en(1'b1),
    .rst(1'b0),
    .d(cfg_noise_presc0_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg83_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg84 (
    .en(1'b1),
    .rst(1'b0),
    .d(cfg_noise_presc2_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg84_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  clkxreg_slice1_cfg85 (
    .en(1'b1),
    .rst(1'b0),
    .d(cast_adc0_to_slice_dout_net),
    .d_clk(clk_net_x0),
    .q_ce(ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg85_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  clkxreg_slice1_cfg86 (
    .en(1'b1),
    .rst(1'b0),
    .d(cast_adc1_to_slice_dout_net),
    .d_clk(clk_net_x0),
    .q_ce(ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg86_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  clkxreg_slice1_cfg87 (
    .en(1'b1),
    .rst(1'b0),
    .d(dac1_calib_add_s_net),
    .d_clk(clk_net),
    .q_ce(ce_net_x0),
    .q_clk(clk_net_x0),
    .d_ce(ce_net),
    .q(clkxreg_slice1_cfg87_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(25),
    .init_value(25'b0000000000000000000000000)
  )
  clkxreg_slice1_cfg88 (
    .en(1'b1),
    .rst(1'b0),
    .d(dac0_calib_add_s_net),
    .d_clk(clk_net),
    .q_ce(ce_net_x0),
    .q_clk(clk_net_x0),
    .d_ce(ce_net),
    .q(clkxreg_slice1_cfg88_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(18),
    .init_value(18'b000000000000000000)
  )
  clkxreg_slice1_cfg9 (
    .en(1'b1),
    .rst(1'b0),
    .d(slice0_u_gain_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg9_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(1),
    .init_value(1'b0)
  )
  clkxreg_slice1_cfg93 (
    .en(1'b1),
    .rst(1'b0),
    .d(register1_q_net),
    .d_clk(clk_net),
    .q_ce(ce_net_x0),
    .q_clk(d_clk_net),
    .d_ce(q_ce_net),
    .q(clkxreg_slice1_cfg93_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(1),
    .init_value(1'b0)
  )
  clkxreg_slice1_cfg94 (
    .en(1'b1),
    .rst(1'b0),
    .d(cfg_nlf_start_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg94_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(1),
    .init_value(1'b0)
  )
  clkxreg_slice1_cfg95 (
    .en(1'b1),
    .rst(1'b0),
    .d(cfg_nlf_we_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg95_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(16),
    .init_value(16'b0000000000000000)
  )
  clkxreg_slice1_cfg96 (
    .en(1'b1),
    .rst(1'b0),
    .d(cfg_nlf_data_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg96_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(10),
    .init_value(10'b0000000000)
  )
  clkxreg_slice1_cfg97 (
    .en(1'b1),
    .rst(1'b0),
    .d(cfg_nlf_addr_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg97_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(8),
    .init_value(8'b00000000)
  )
  clkxreg_slice1_cfg98 (
    .en(1'b1),
    .rst(1'b0),
    .d(led_value_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg98_q_net)
  );
  hilsim_ipcore_xlAsynRegister #(
    .d_width(1),
    .init_value(1'b0)
  )
  clkxreg_slice1_cfg99 (
    .en(1'b1),
    .rst(1'b0),
    .d(system_run_net),
    .d_clk(d_clk_net),
    .q_ce(q_ce_net),
    .q_clk(clk_net),
    .d_ce(ce_net_x0),
    .q(clkxreg_slice1_cfg99_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block 
module hilsim_ipcore_default_clock_driver (
  input axi_domain_sysclk,
  input axi_domain_sysce,
  input axi_domain_sysclr,
  input proc_domain_sysclk,
  input proc_domain_sysce,
  input proc_domain_sysclr,
  input adc_dac_domain_sysclk,
  input adc_dac_domain_sysce,
  input adc_dac_domain_sysclr,
  output axi_domain_clk1,
  output axi_domain_ce1,
  output proc_domain_clk1,
  output proc_domain_ce1,
  output proc_domain_clk2,
  output proc_domain_ce2,
  output proc_domain_clk36,
  output proc_domain_ce36,
  output adc_dac_domain_clk1,
  output adc_dac_domain_ce1
);
  xlclockdriver #(
    .period(1),
    .log_2_period(1)
  )
  clockdriver_x3 (
    .sysclk(axi_domain_sysclk),
    .sysce(axi_domain_sysce),
    .sysclr(axi_domain_sysclr),
    .clk(axi_domain_clk1),
    .ce(axi_domain_ce1)
  );
  xlclockdriver #(
    .period(1),
    .log_2_period(1)
  )
  clockdriver_x2 (
    .sysclk(proc_domain_sysclk),
    .sysce(proc_domain_sysce),
    .sysclr(proc_domain_sysclr),
    .clk(proc_domain_clk1),
    .ce(proc_domain_ce1)
  );
  xlclockdriver #(
    .period(2),
    .log_2_period(2)
  )
  clockdriver_x1 (
    .sysclk(proc_domain_sysclk),
    .sysce(proc_domain_sysce),
    .sysclr(proc_domain_sysclr),
    .clk(proc_domain_clk2),
    .ce(proc_domain_ce2)
  );
  xlclockdriver #(
    .period(36),
    .log_2_period(6)
  )
  clockdriver_x0 (
    .sysclk(proc_domain_sysclk),
    .sysce(proc_domain_sysce),
    .sysclr(proc_domain_sysclr),
    .clk(proc_domain_clk36),
    .ce(proc_domain_ce36)
  );
  xlclockdriver #(
    .period(1),
    .log_2_period(1)
  )
  clockdriver (
    .sysclk(adc_dac_domain_sysclk),
    .sysce(adc_dac_domain_sysce),
    .sysclr(adc_dac_domain_sysclr),
    .clk(adc_dac_domain_clk1),
    .ce(adc_dac_domain_ce1)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block 
(* core_generation_info = "hilsim_ipcore,sysgen_core_2024_2,{,compilation=IP Catalog,block_icon_display=Default,family=zynq,part=xc7z020,speed=-1,package=clg400,synthesis_language=verilog,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=-10,system_simulink_period=-1,waveform_viewer=0,axilite_interface=1,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=0.0002,accum=1,addsub=89,ceprobe=3,concat=1,constant=186,convert=54,delay=32,dpram=27,dsamp=18,inv=3,lfsr=6,logical=6,mult=111,mux=165,register=386,reinterpret=38,relational=27,scale=42,slice=63,sprom=6,usamp=6,}" *)
module hilsim_ipcore (
  input [14-1:0] adc_ch0_in,
  input [14-1:0] adc_ch1_in,
  input [9-1:0] procclk_nlf_sw_ext_in,
  input axi_domain_clk,
  input proc_domain_clk,
  input adc_dac_domain_clk,
  input axi_domain_aresetn,
  input [9-1:0] axi_domain_s_axi_awaddr,
  input axi_domain_s_axi_awvalid,
  input [32-1:0] axi_domain_s_axi_wdata,
  input [4-1:0] axi_domain_s_axi_wstrb,
  input axi_domain_s_axi_wvalid,
  input axi_domain_s_axi_bready,
  input [9-1:0] axi_domain_s_axi_araddr,
  input axi_domain_s_axi_arvalid,
  input axi_domain_s_axi_rready,
  input [7-1:0] axi_domain_axi_b_s_axi_awaddr,
  input axi_domain_axi_b_s_axi_awvalid,
  input [32-1:0] axi_domain_axi_b_s_axi_wdata,
  input [4-1:0] axi_domain_axi_b_s_axi_wstrb,
  input axi_domain_axi_b_s_axi_wvalid,
  input axi_domain_axi_b_s_axi_bready,
  input [7-1:0] axi_domain_axi_b_s_axi_araddr,
  input axi_domain_axi_b_s_axi_arvalid,
  input axi_domain_axi_b_s_axi_rready,
  output [14-1:0] dac_ch0_out,
  output [14-1:0] dac_ch1_out,
  output [32-1:0] dma_ch1_out,
  output [16-1:0] dma_ch2h_out,
  output [16-1:0] dma_ch2l_out,
  output [1-1:0] dma_trigger_out,
  output [8-1:0] leds_out,
  output axi_domain_s_axi_awready,
  output axi_domain_s_axi_wready,
  output [2-1:0] axi_domain_s_axi_bresp,
  output axi_domain_s_axi_bvalid,
  output axi_domain_s_axi_arready,
  output [32-1:0] axi_domain_s_axi_rdata,
  output [2-1:0] axi_domain_s_axi_rresp,
  output axi_domain_s_axi_rvalid,
  output axi_domain_axi_b_s_axi_awready,
  output axi_domain_axi_b_s_axi_wready,
  output [2-1:0] axi_domain_axi_b_s_axi_bresp,
  output axi_domain_axi_b_s_axi_bvalid,
  output axi_domain_axi_b_s_axi_arready,
  output [32-1:0] axi_domain_axi_b_s_axi_rdata,
  output [2-1:0] axi_domain_axi_b_s_axi_rresp,
  output axi_domain_axi_b_s_axi_rvalid
);
  wire [18-1:0] adc0_calib_factor;
  wire [25-1:0] adc0_calib_offset;
  wire [1-1:0] adc0_nlf_enable;
  wire [18-1:0] adc0_nlf_gain;
  wire [18-1:0] adc0_nlf_presc;
  wire [25-1:0] adc0_value;
  wire [18-1:0] adc1_calib_factor;
  wire [25-1:0] adc1_calib_offset;
  wire [1-1:0] adc1_nlf_enable;
  wire [18-1:0] adc1_nlf_gain;
  wire [18-1:0] adc1_nlf_presc;
  wire [25-1:0] adc1_value;
  wire [10-1:0] cfg_nlf_addr;
  wire [16-1:0] cfg_nlf_data;
  wire [1-1:0] cfg_nlf_done;
  wire [32-1:0] cfg_nlf_select;
  wire [1-1:0] cfg_nlf_start;
  wire [1-1:0] cfg_nlf_we;
  wire [18-1:0] cfg_noise_presc0;
  wire [18-1:0] cfg_noise_presc1;
  wire [18-1:0] cfg_noise_presc2;
  wire [1-1:0] cfg_system_reset;
  wire [18-1:0] dac0_calib_factor;
  wire [25-1:0] dac0_calib_offset;
  wire [18-1:0] dac1_calib_factor;
  wire [25-1:0] dac1_calib_offset;
  wire [18-1:0] inp_mat_fac_u0_adc0;
  wire [18-1:0] inp_mat_fac_u0_adc1;
  wire [18-1:0] inp_mat_fac_u0_noise;
  wire [18-1:0] inp_mat_fac_u1_adc0;
  wire [18-1:0] inp_mat_fac_u1_adc1;
  wire [18-1:0] inp_mat_fac_u1_noise;
  wire [18-1:0] inp_mat_fac_u2_adc0;
  wire [18-1:0] inp_mat_fac_u2_adc1;
  wire [18-1:0] inp_mat_fac_u2_noise;
  wire [8-1:0] led_value;
  wire [9-1:0] nlf_switch;
  wire [9-1:0] nlf_switch_io_mask;
  wire [9-1:0] nlf_switch_sw_switch;
  wire [2-1:0] out_mat_dac0_selx0;
  wire [2-1:0] out_mat_dac0_selx1;
  wire [2-1:0] out_mat_dac0_selx2;
  wire [2-1:0] out_mat_dac1_selx0;
  wire [2-1:0] out_mat_dac1_selx1;
  wire [2-1:0] out_mat_dac1_selx2;
  wire [18-1:0] out_mat_fac_dac0_xx0;
  wire [18-1:0] out_mat_fac_dac0_xx1;
  wire [18-1:0] out_mat_fac_dac0_xx2;
  wire [18-1:0] out_mat_fac_dac1_xx0;
  wire [18-1:0] out_mat_fac_dac1_xx1;
  wire [18-1:0] out_mat_fac_dac1_xx2;
  wire [1-1:0] out_mat_nlf_dac0_xx0_en;
  wire [18-1:0] out_mat_nlf_dac0_xx0_gain;
  wire [18-1:0] out_mat_nlf_dac0_xx0_presc;
  wire [1-1:0] out_mat_nlf_dac0_xx1_en;
  wire [18-1:0] out_mat_nlf_dac0_xx1_gain;
  wire [18-1:0] out_mat_nlf_dac0_xx1_presc;
  wire [1-1:0] out_mat_nlf_dac0_xx2_en;
  wire [18-1:0] out_mat_nlf_dac0_xx2_gain;
  wire [18-1:0] out_mat_nlf_dac0_xx2_presc;
  wire [1-1:0] out_mat_nlf_dac1_xx0_en;
  wire [18-1:0] out_mat_nlf_dac1_xx0_gain;
  wire [18-1:0] out_mat_nlf_dac1_xx0_presc;
  wire [1-1:0] out_mat_nlf_dac1_xx1_en;
  wire [18-1:0] out_mat_nlf_dac1_xx1_gain;
  wire [18-1:0] out_mat_nlf_dac1_xx1_presc;
  wire [1-1:0] out_mat_nlf_dac1_xx2_en;
  wire [18-1:0] out_mat_nlf_dac1_xx2_gain;
  wire [18-1:0] out_mat_nlf_dac1_xx2_presc;
  wire [18-1:0] slice0_u_gain;
  wire [1-1:0] slice0_u_mux;
  wire [18-1:0] slice0_u_nlf_gain;
  wire [18-1:0] slice0_u_nlf_presc;
  wire [18-1:0] slice0_x_gain;
  wire [1-1:0] slice0_x_mux;
  wire [18-1:0] slice0_x_nlf_gain;
  wire [18-1:0] slice0_x_nlf_presc;
  wire [18-1:0] slice0_x_presc_mul;
  wire [5-1:0] slice0_x_presc_shift;
  wire [18-1:0] slice0_xd_gain;
  wire [1-1:0] slice0_xd_mux;
  wire [18-1:0] slice0_xd_nlf_gain;
  wire [18-1:0] slice0_xd_nlf_presc;
  wire [18-1:0] slice0_xd_presc_mul;
  wire [5-1:0] slice0_xd_presc_shift;
  wire [18-1:0] slice1_u_gain;
  wire [1-1:0] slice1_u_mux;
  wire [18-1:0] slice1_u_nlf_gain;
  wire [18-1:0] slice1_u_nlf_presc;
  wire [18-1:0] slice1_x_gain;
  wire [1-1:0] slice1_x_mux;
  wire [18-1:0] slice1_x_nlf_gain;
  wire [18-1:0] slice1_x_nlf_presc;
  wire [18-1:0] slice1_x_presc_mul;
  wire [5-1:0] slice1_x_presc_shift;
  wire [18-1:0] slice1_xd_gain;
  wire [1-1:0] slice1_xd_mux;
  wire [18-1:0] slice1_xd_nlf_gain;
  wire [18-1:0] slice1_xd_nlf_presc;
  wire [18-1:0] slice1_xd_presc_mul;
  wire [5-1:0] slice1_xd_presc_shift;
  wire [18-1:0] slice2_u_gain;
  wire [1-1:0] slice2_u_mux;
  wire [18-1:0] slice2_u_nlf_gain;
  wire [18-1:0] slice2_u_nlf_presc;
  wire [18-1:0] slice2_x_gain;
  wire [1-1:0] slice2_x_mux;
  wire [18-1:0] slice2_x_nlf_gain;
  wire [18-1:0] slice2_x_nlf_presc;
  wire [18-1:0] slice2_x_presc_mul;
  wire [5-1:0] slice2_x_presc_shift;
  wire [18-1:0] slice2_xd_gain;
  wire [1-1:0] slice2_xd_mux;
  wire [18-1:0] slice2_xd_nlf_gain;
  wire [18-1:0] slice2_xd_nlf_presc;
  wire [18-1:0] slice2_xd_presc_mul;
  wire [5-1:0] slice2_xd_presc_shift;
  wire [1-1:0] system_run;
  wire clk_1_net_x1;
  wire ce_1_net_x1;
  wire clk_1_net_x0;
  wire ce_1_net;
  wire clk_2_net;
  wire ce_2_net;
  wire clk_36_net;
  wire ce_36_net;
  wire clk_1_net;
  wire ce_1_net_x0;
  wire axi_domain_clk_net_x0;
  wire axi_domain_clk_net;
  axi_domain_axi_lite_interface axi_domain_axi_lite_interface (
    .cfg_nlf_done(cfg_nlf_done),
    .axi_domain_s_axi_awaddr(axi_domain_s_axi_awaddr),
    .axi_domain_s_axi_awvalid(axi_domain_s_axi_awvalid),
    .axi_domain_s_axi_wdata(axi_domain_s_axi_wdata),
    .axi_domain_s_axi_wstrb(axi_domain_s_axi_wstrb),
    .axi_domain_s_axi_wvalid(axi_domain_s_axi_wvalid),
    .axi_domain_s_axi_bready(axi_domain_s_axi_bready),
    .axi_domain_s_axi_araddr(axi_domain_s_axi_araddr),
    .axi_domain_s_axi_arvalid(axi_domain_s_axi_arvalid),
    .axi_domain_s_axi_rready(axi_domain_s_axi_rready),
    .axi_domain_aresetn(axi_domain_aresetn),
    .axi_domain_aclk(axi_domain_clk),
    .system_run(system_run),
    .slice2_xd_presc_shift(slice2_xd_presc_shift),
    .slice2_xd_presc_mul(slice2_xd_presc_mul),
    .slice2_xd_nlf_presc(slice2_xd_nlf_presc),
    .slice2_xd_nlf_gain(slice2_xd_nlf_gain),
    .slice2_xd_mux(slice2_xd_mux),
    .slice2_xd_gain(slice2_xd_gain),
    .slice2_x_presc_shift(slice2_x_presc_shift),
    .slice2_x_presc_mul(slice2_x_presc_mul),
    .slice2_x_nlf_presc(slice2_x_nlf_presc),
    .slice2_x_nlf_gain(slice2_x_nlf_gain),
    .slice2_x_mux(slice2_x_mux),
    .slice2_x_gain(slice2_x_gain),
    .slice2_u_nlf_presc(slice2_u_nlf_presc),
    .slice2_u_nlf_gain(slice2_u_nlf_gain),
    .slice2_u_mux(slice2_u_mux),
    .slice2_u_gain(slice2_u_gain),
    .slice1_xd_presc_shift(slice1_xd_presc_shift),
    .slice1_xd_presc_mul(slice1_xd_presc_mul),
    .slice1_xd_nlf_presc(slice1_xd_nlf_presc),
    .slice1_xd_nlf_gain(slice1_xd_nlf_gain),
    .slice1_xd_mux(slice1_xd_mux),
    .slice1_xd_gain(slice1_xd_gain),
    .slice1_x_presc_shift(slice1_x_presc_shift),
    .slice1_x_presc_mul(slice1_x_presc_mul),
    .slice1_x_nlf_presc(slice1_x_nlf_presc),
    .slice1_x_nlf_gain(slice1_x_nlf_gain),
    .slice1_x_mux(slice1_x_mux),
    .slice1_x_gain(slice1_x_gain),
    .slice1_u_nlf_presc(slice1_u_nlf_presc),
    .slice1_u_nlf_gain(slice1_u_nlf_gain),
    .slice1_u_mux(slice1_u_mux),
    .slice1_u_gain(slice1_u_gain),
    .slice0_xd_presc_shift(slice0_xd_presc_shift),
    .slice0_xd_presc_mul(slice0_xd_presc_mul),
    .slice0_xd_nlf_presc(slice0_xd_nlf_presc),
    .slice0_xd_nlf_gain(slice0_xd_nlf_gain),
    .slice0_xd_mux(slice0_xd_mux),
    .slice0_xd_gain(slice0_xd_gain),
    .slice0_x_presc_shift(slice0_x_presc_shift),
    .slice0_x_presc_mul(slice0_x_presc_mul),
    .slice0_x_nlf_presc(slice0_x_nlf_presc),
    .slice0_x_nlf_gain(slice0_x_nlf_gain),
    .slice0_x_mux(slice0_x_mux),
    .slice0_x_gain(slice0_x_gain),
    .slice0_u_nlf_presc(slice0_u_nlf_presc),
    .slice0_u_nlf_gain(slice0_u_nlf_gain),
    .slice0_u_mux(slice0_u_mux),
    .slice0_u_gain(slice0_u_gain),
    .out_mat_nlf_dac1_xx2_presc(out_mat_nlf_dac1_xx2_presc),
    .out_mat_nlf_dac1_xx2_gain(out_mat_nlf_dac1_xx2_gain),
    .out_mat_nlf_dac1_xx2_en(out_mat_nlf_dac1_xx2_en),
    .out_mat_nlf_dac1_xx1_presc(out_mat_nlf_dac1_xx1_presc),
    .out_mat_nlf_dac1_xx1_gain(out_mat_nlf_dac1_xx1_gain),
    .out_mat_nlf_dac1_xx1_en(out_mat_nlf_dac1_xx1_en),
    .out_mat_nlf_dac1_xx0_presc(out_mat_nlf_dac1_xx0_presc),
    .out_mat_nlf_dac1_xx0_gain(out_mat_nlf_dac1_xx0_gain),
    .out_mat_nlf_dac1_xx0_en(out_mat_nlf_dac1_xx0_en),
    .out_mat_nlf_dac0_xx2_presc(out_mat_nlf_dac0_xx2_presc),
    .out_mat_nlf_dac0_xx2_gain(out_mat_nlf_dac0_xx2_gain),
    .out_mat_nlf_dac0_xx2_en(out_mat_nlf_dac0_xx2_en),
    .out_mat_nlf_dac0_xx1_presc(out_mat_nlf_dac0_xx1_presc),
    .out_mat_nlf_dac0_xx1_gain(out_mat_nlf_dac0_xx1_gain),
    .out_mat_nlf_dac0_xx1_en(out_mat_nlf_dac0_xx1_en),
    .out_mat_nlf_dac0_xx0_presc(out_mat_nlf_dac0_xx0_presc),
    .out_mat_nlf_dac0_xx0_gain(out_mat_nlf_dac0_xx0_gain),
    .out_mat_nlf_dac0_xx0_en(out_mat_nlf_dac0_xx0_en),
    .out_mat_fac_dac1_xx2(out_mat_fac_dac1_xx2),
    .out_mat_fac_dac1_xx1(out_mat_fac_dac1_xx1),
    .out_mat_fac_dac1_xx0(out_mat_fac_dac1_xx0),
    .out_mat_fac_dac0_xx2(out_mat_fac_dac0_xx2),
    .out_mat_fac_dac0_xx1(out_mat_fac_dac0_xx1),
    .out_mat_fac_dac0_xx0(out_mat_fac_dac0_xx0),
    .out_mat_dac1_selx2(out_mat_dac1_selx2),
    .out_mat_dac1_selx1(out_mat_dac1_selx1),
    .out_mat_dac1_selx0(out_mat_dac1_selx0),
    .out_mat_dac0_selx2(out_mat_dac0_selx2),
    .out_mat_dac0_selx1(out_mat_dac0_selx1),
    .out_mat_dac0_selx0(out_mat_dac0_selx0),
    .led_value(led_value),
    .inp_mat_fac_u2_noise(inp_mat_fac_u2_noise),
    .inp_mat_fac_u2_adc1(inp_mat_fac_u2_adc1),
    .inp_mat_fac_u2_adc0(inp_mat_fac_u2_adc0),
    .inp_mat_fac_u1_noise(inp_mat_fac_u1_noise),
    .inp_mat_fac_u1_adc1(inp_mat_fac_u1_adc1),
    .inp_mat_fac_u1_adc0(inp_mat_fac_u1_adc0),
    .inp_mat_fac_u0_noise(inp_mat_fac_u0_noise),
    .inp_mat_fac_u0_adc1(inp_mat_fac_u0_adc1),
    .inp_mat_fac_u0_adc0(inp_mat_fac_u0_adc0),
    .cfg_system_reset(cfg_system_reset),
    .cfg_noise_presc2(cfg_noise_presc2),
    .cfg_noise_presc1(cfg_noise_presc1),
    .cfg_noise_presc0(cfg_noise_presc0),
    .cfg_nlf_we(cfg_nlf_we),
    .cfg_nlf_start(cfg_nlf_start),
    .cfg_nlf_select(cfg_nlf_select),
    .cfg_nlf_data(cfg_nlf_data),
    .cfg_nlf_addr(cfg_nlf_addr),
    .adc1_nlf_presc(adc1_nlf_presc),
    .adc1_nlf_gain(adc1_nlf_gain),
    .adc1_nlf_enable(adc1_nlf_enable),
    .adc0_nlf_presc(adc0_nlf_presc),
    .adc0_nlf_gain(adc0_nlf_gain),
    .adc0_nlf_enable(adc0_nlf_enable),
    .axi_domain_s_axi_awready(axi_domain_s_axi_awready),
    .axi_domain_s_axi_wready(axi_domain_s_axi_wready),
    .axi_domain_s_axi_bresp(axi_domain_s_axi_bresp),
    .axi_domain_s_axi_bvalid(axi_domain_s_axi_bvalid),
    .axi_domain_s_axi_arready(axi_domain_s_axi_arready),
    .axi_domain_s_axi_rdata(axi_domain_s_axi_rdata),
    .axi_domain_s_axi_rresp(axi_domain_s_axi_rresp),
    .axi_domain_s_axi_rvalid(axi_domain_s_axi_rvalid),
    .axi_domain_clk(axi_domain_clk_net_x0)
  );
  axi_domain_axi_b_axi_lite_interface axi_domain_axi_b_axi_lite_interface (
    .adc0_value(adc0_value),
    .adc1_value(adc1_value),
    .nlf_switch(nlf_switch),
    .axi_domain_axi_b_s_axi_awaddr(axi_domain_axi_b_s_axi_awaddr),
    .axi_domain_axi_b_s_axi_awvalid(axi_domain_axi_b_s_axi_awvalid),
    .axi_domain_axi_b_s_axi_wdata(axi_domain_axi_b_s_axi_wdata),
    .axi_domain_axi_b_s_axi_wstrb(axi_domain_axi_b_s_axi_wstrb),
    .axi_domain_axi_b_s_axi_wvalid(axi_domain_axi_b_s_axi_wvalid),
    .axi_domain_axi_b_s_axi_bready(axi_domain_axi_b_s_axi_bready),
    .axi_domain_axi_b_s_axi_araddr(axi_domain_axi_b_s_axi_araddr),
    .axi_domain_axi_b_s_axi_arvalid(axi_domain_axi_b_s_axi_arvalid),
    .axi_domain_axi_b_s_axi_rready(axi_domain_axi_b_s_axi_rready),
    .axi_domain_axi_b_aresetn(axi_domain_aresetn),
    .axi_domain_axi_b_aclk(axi_domain_clk),
    .nlf_switch_sw_switch(nlf_switch_sw_switch),
    .nlf_switch_io_mask(nlf_switch_io_mask),
    .dac1_calib_offset(dac1_calib_offset),
    .dac1_calib_factor(dac1_calib_factor),
    .dac0_calib_offset(dac0_calib_offset),
    .dac0_calib_factor(dac0_calib_factor),
    .adc1_calib_offset(adc1_calib_offset),
    .adc1_calib_factor(adc1_calib_factor),
    .adc0_calib_offset(adc0_calib_offset),
    .adc0_calib_factor(adc0_calib_factor),
    .axi_domain_axi_b_s_axi_awready(axi_domain_axi_b_s_axi_awready),
    .axi_domain_axi_b_s_axi_wready(axi_domain_axi_b_s_axi_wready),
    .axi_domain_axi_b_s_axi_bresp(axi_domain_axi_b_s_axi_bresp),
    .axi_domain_axi_b_s_axi_bvalid(axi_domain_axi_b_s_axi_bvalid),
    .axi_domain_axi_b_s_axi_arready(axi_domain_axi_b_s_axi_arready),
    .axi_domain_axi_b_s_axi_rdata(axi_domain_axi_b_s_axi_rdata),
    .axi_domain_axi_b_s_axi_rresp(axi_domain_axi_b_s_axi_rresp),
    .axi_domain_axi_b_s_axi_rvalid(axi_domain_axi_b_s_axi_rvalid),
    .axi_domain_clk(axi_domain_clk_net)
  );
  hilsim_ipcore_default_clock_driver hilsim_ipcore_default_clock_driver (
    .axi_domain_sysclk(axi_domain_clk_net),
    .axi_domain_sysce(1'b1),
    .axi_domain_sysclr(1'b0),
    .proc_domain_sysclk(proc_domain_clk),
    .proc_domain_sysce(1'b1),
    .proc_domain_sysclr(1'b0),
    .adc_dac_domain_sysclk(adc_dac_domain_clk),
    .adc_dac_domain_sysce(1'b1),
    .adc_dac_domain_sysclr(1'b0),
    .axi_domain_clk1(clk_1_net_x1),
    .axi_domain_ce1(ce_1_net_x1),
    .proc_domain_clk1(clk_1_net_x0),
    .proc_domain_ce1(ce_1_net),
    .proc_domain_clk2(clk_2_net),
    .proc_domain_ce2(ce_2_net),
    .proc_domain_clk36(clk_36_net),
    .proc_domain_ce36(ce_36_net),
    .adc_dac_domain_clk1(clk_1_net),
    .adc_dac_domain_ce1(ce_1_net_x0)
  );
  hilsim_ipcore_struct hilsim_ipcore_struct (
    .adc_ch0_in(adc_ch0_in),
    .adc_ch1_in(adc_ch1_in),
    .adc0_calib_factor(adc0_calib_factor),
    .adc0_calib_offset(adc0_calib_offset),
    .adc0_nlf_enable(adc0_nlf_enable),
    .adc0_nlf_gain(adc0_nlf_gain),
    .adc0_nlf_presc(adc0_nlf_presc),
    .adc1_calib_factor(adc1_calib_factor),
    .adc1_calib_offset(adc1_calib_offset),
    .adc1_nlf_enable(adc1_nlf_enable),
    .adc1_nlf_gain(adc1_nlf_gain),
    .adc1_nlf_presc(adc1_nlf_presc),
    .cfg_nlf_addr(cfg_nlf_addr),
    .cfg_nlf_data(cfg_nlf_data),
    .cfg_nlf_select(cfg_nlf_select),
    .cfg_nlf_start(cfg_nlf_start),
    .cfg_nlf_we(cfg_nlf_we),
    .cfg_noise_presc0(cfg_noise_presc0),
    .cfg_noise_presc1(cfg_noise_presc1),
    .cfg_noise_presc2(cfg_noise_presc2),
    .cfg_system_reset(cfg_system_reset),
    .dac0_calib_factor(dac0_calib_factor),
    .dac0_calib_offset(dac0_calib_offset),
    .dac1_calib_factor(dac1_calib_factor),
    .dac1_calib_offset(dac1_calib_offset),
    .inp_mat_fac_u0_adc0(inp_mat_fac_u0_adc0),
    .inp_mat_fac_u0_adc1(inp_mat_fac_u0_adc1),
    .inp_mat_fac_u0_noise(inp_mat_fac_u0_noise),
    .inp_mat_fac_u1_adc0(inp_mat_fac_u1_adc0),
    .inp_mat_fac_u1_adc1(inp_mat_fac_u1_adc1),
    .inp_mat_fac_u1_noise(inp_mat_fac_u1_noise),
    .inp_mat_fac_u2_adc0(inp_mat_fac_u2_adc0),
    .inp_mat_fac_u2_adc1(inp_mat_fac_u2_adc1),
    .inp_mat_fac_u2_noise(inp_mat_fac_u2_noise),
    .led_value(led_value),
    .nlf_switch_io_mask(nlf_switch_io_mask),
    .nlf_switch_sw_switch(nlf_switch_sw_switch),
    .out_mat_dac0_selx0(out_mat_dac0_selx0),
    .out_mat_dac0_selx1(out_mat_dac0_selx1),
    .out_mat_dac0_selx2(out_mat_dac0_selx2),
    .out_mat_dac1_selx0(out_mat_dac1_selx0),
    .out_mat_dac1_selx1(out_mat_dac1_selx1),
    .out_mat_dac1_selx2(out_mat_dac1_selx2),
    .out_mat_fac_dac0_xx0(out_mat_fac_dac0_xx0),
    .out_mat_fac_dac0_xx1(out_mat_fac_dac0_xx1),
    .out_mat_fac_dac0_xx2(out_mat_fac_dac0_xx2),
    .out_mat_fac_dac1_xx0(out_mat_fac_dac1_xx0),
    .out_mat_fac_dac1_xx1(out_mat_fac_dac1_xx1),
    .out_mat_fac_dac1_xx2(out_mat_fac_dac1_xx2),
    .out_mat_nlf_dac0_xx0_en(out_mat_nlf_dac0_xx0_en),
    .out_mat_nlf_dac0_xx0_gain(out_mat_nlf_dac0_xx0_gain),
    .out_mat_nlf_dac0_xx0_presc(out_mat_nlf_dac0_xx0_presc),
    .out_mat_nlf_dac0_xx1_en(out_mat_nlf_dac0_xx1_en),
    .out_mat_nlf_dac0_xx1_gain(out_mat_nlf_dac0_xx1_gain),
    .out_mat_nlf_dac0_xx1_presc(out_mat_nlf_dac0_xx1_presc),
    .out_mat_nlf_dac0_xx2_en(out_mat_nlf_dac0_xx2_en),
    .out_mat_nlf_dac0_xx2_gain(out_mat_nlf_dac0_xx2_gain),
    .out_mat_nlf_dac0_xx2_presc(out_mat_nlf_dac0_xx2_presc),
    .out_mat_nlf_dac1_xx0_en(out_mat_nlf_dac1_xx0_en),
    .out_mat_nlf_dac1_xx0_gain(out_mat_nlf_dac1_xx0_gain),
    .out_mat_nlf_dac1_xx0_presc(out_mat_nlf_dac1_xx0_presc),
    .out_mat_nlf_dac1_xx1_en(out_mat_nlf_dac1_xx1_en),
    .out_mat_nlf_dac1_xx1_gain(out_mat_nlf_dac1_xx1_gain),
    .out_mat_nlf_dac1_xx1_presc(out_mat_nlf_dac1_xx1_presc),
    .out_mat_nlf_dac1_xx2_en(out_mat_nlf_dac1_xx2_en),
    .out_mat_nlf_dac1_xx2_gain(out_mat_nlf_dac1_xx2_gain),
    .out_mat_nlf_dac1_xx2_presc(out_mat_nlf_dac1_xx2_presc),
    .slice0_u_gain(slice0_u_gain),
    .slice0_u_mux(slice0_u_mux),
    .slice0_u_nlf_gain(slice0_u_nlf_gain),
    .slice0_u_nlf_presc(slice0_u_nlf_presc),
    .slice0_x_gain(slice0_x_gain),
    .slice0_x_mux(slice0_x_mux),
    .slice0_x_nlf_gain(slice0_x_nlf_gain),
    .slice0_x_nlf_presc(slice0_x_nlf_presc),
    .slice0_x_presc_mul(slice0_x_presc_mul),
    .slice0_x_presc_shift(slice0_x_presc_shift),
    .slice0_xd_gain(slice0_xd_gain),
    .slice0_xd_mux(slice0_xd_mux),
    .slice0_xd_nlf_gain(slice0_xd_nlf_gain),
    .slice0_xd_nlf_presc(slice0_xd_nlf_presc),
    .slice0_xd_presc_mul(slice0_xd_presc_mul),
    .slice0_xd_presc_shift(slice0_xd_presc_shift),
    .slice1_u_gain(slice1_u_gain),
    .slice1_u_mux(slice1_u_mux),
    .slice1_u_nlf_gain(slice1_u_nlf_gain),
    .slice1_u_nlf_presc(slice1_u_nlf_presc),
    .slice1_x_gain(slice1_x_gain),
    .slice1_x_mux(slice1_x_mux),
    .slice1_x_nlf_gain(slice1_x_nlf_gain),
    .slice1_x_nlf_presc(slice1_x_nlf_presc),
    .slice1_x_presc_mul(slice1_x_presc_mul),
    .slice1_x_presc_shift(slice1_x_presc_shift),
    .slice1_xd_gain(slice1_xd_gain),
    .slice1_xd_mux(slice1_xd_mux),
    .slice1_xd_nlf_gain(slice1_xd_nlf_gain),
    .slice1_xd_nlf_presc(slice1_xd_nlf_presc),
    .slice1_xd_presc_mul(slice1_xd_presc_mul),
    .slice1_xd_presc_shift(slice1_xd_presc_shift),
    .slice2_u_gain(slice2_u_gain),
    .slice2_u_mux(slice2_u_mux),
    .slice2_u_nlf_gain(slice2_u_nlf_gain),
    .slice2_u_nlf_presc(slice2_u_nlf_presc),
    .slice2_x_gain(slice2_x_gain),
    .slice2_x_mux(slice2_x_mux),
    .slice2_x_nlf_gain(slice2_x_nlf_gain),
    .slice2_x_nlf_presc(slice2_x_nlf_presc),
    .slice2_x_presc_mul(slice2_x_presc_mul),
    .slice2_x_presc_shift(slice2_x_presc_shift),
    .slice2_xd_gain(slice2_xd_gain),
    .slice2_xd_mux(slice2_xd_mux),
    .slice2_xd_nlf_gain(slice2_xd_nlf_gain),
    .slice2_xd_nlf_presc(slice2_xd_nlf_presc),
    .slice2_xd_presc_mul(slice2_xd_presc_mul),
    .slice2_xd_presc_shift(slice2_xd_presc_shift),
    .system_run(system_run),
    .procclk_nlf_sw_ext_in(procclk_nlf_sw_ext_in),
    .clk_1_x0(clk_1_net_x1),
    .ce_1_x0(ce_1_net_x1),
    .clk_1_x1(clk_1_net_x0),
    .ce_1(ce_1_net),
    .clk_2(clk_2_net),
    .ce_2(ce_2_net),
    .clk_36(clk_36_net),
    .ce_36(ce_36_net),
    .clk_1(clk_1_net),
    .ce_1_x1(ce_1_net_x0),
    .dac_ch0_out(dac_ch0_out),
    .dac_ch1_out(dac_ch1_out),
    .dma_ch1_out(dma_ch1_out),
    .dma_ch2h_out(dma_ch2h_out),
    .dma_ch2l_out(dma_ch2l_out),
    .dma_trigger_out(dma_trigger_out),
    .adc0_value(adc0_value),
    .adc1_value(adc1_value),
    .cfg_nlf_done(cfg_nlf_done),
    .nlf_switch(nlf_switch),
    .leds_out(leds_out)
  );
endmodule
