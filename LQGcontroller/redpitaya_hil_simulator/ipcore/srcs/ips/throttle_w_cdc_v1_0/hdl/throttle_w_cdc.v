`ifndef xlConvPkgIncluded
`include "conv_pkg.v"
`endif

`timescale 1 ns / 10 ps
// Generated from Simulink block DMA_throttle_sysgen/Throttle_w_CDC/ADC_clock_domain
module throttle_w_cdc_adc_clock_domain (
  input [32-1:0] data_in_a,
  input [32-1:0] data_in_b,
  input clk_1,
  input ce_1,
  output [32-1:0] data_a_out,
  output [32-1:0] data_b_out
);
  wire [32-1:0] register7_q_net;
  wire [32-1:0] register8_q_net;
  wire [32-1:0] data_in_b_net;
  wire [32-1:0] data_in_a_net;
  wire clk_net;
  wire ce_net;
  assign data_a_out = register7_q_net;
  assign data_b_out = register8_q_net;
  assign data_in_a_net = data_in_a;
  assign data_in_b_net = data_in_b;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  throttle_w_cdc_xlregister #(
    .d_width(32),
    .init_value(32'b00000000000000000000000000000000)
  )
  register7 (
    .en(1'b1),
    .rst(1'b0),
    .d(data_in_a_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register7_q_net)
  );
  throttle_w_cdc_xlregister #(
    .d_width(32),
    .init_value(32'b00000000000000000000000000000000)
  )
  register8 (
    .en(1'b1),
    .rst(1'b0),
    .d(data_in_b_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register8_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block DMA_throttle_sysgen/Throttle_w_CDC/FPGA_clock_domain
module throttle_w_cdc_fpga_clock_domain (
  input [32-1:0] data_a_syncd,
  input [32-1:0] data_b_syncd,
  input [32-1:0] decim_in,
  input [32-1:0] frames_no_in,
  input [1-1:0] m_axis_dma_tready,
  input [1-1:0] trigger_in,
  input [1-1:0] usr_rst_in,
  input clk_1,
  input ce_1,
  output [1-1:0] dma_ready_out,
  output [32-1:0] m_axis_dma_tdata,
  output [4-1:0] m_axis_dma_tkeep,
  output [1-1:0] m_axis_dma_tlast,
  output [1-1:0] m_axis_dma_tvalid
);
  wire [1-1:0] last_flag_mux_y_net;
  wire [32-1:0] cdc_reg_b_q_net;
  wire [1-1:0] trigger_in_net;
  wire clk_net;
  wire [4-1:0] constant2_op_net;
  wire [4-1:0] constant3_op_net;
  wire ce_net;
  wire [1-1:0] m_axis_dma_tready_net;
  wire [1-1:0] constant_op_net;
  wire [1-1:0] usr_rst_in_net;
  wire [1-1:0] tvalid_out_logic_y_net;
  wire [32-1:0] cdc_reg_a_q_net;
  wire [4-1:0] keep_mux_y_net;
  wire [1-1:0] register6_q_net;
  wire [32-1:0] decim_in_net;
  wire [32-1:0] frames_no_in_net;
  wire [32-1:0] channel_mux_y_net;
  wire [1-1:0] delay4_q_net;
  wire [32-1:0] register_q_net;
  wire [1-1:0] delay3_q_net;
  wire [1-1:0] register4_q_net;
  wire [1-1:0] last_flag_op_net;
  wire [1-1:0] decim_reached_op_net;
  wire [1-1:0] extend_valid_y_net;
  wire [32-1:0] register2_q_net;
  wire [32-1:0] register3_q_net;
  wire [1-1:0] triggr_latch_reg_q_net;
  wire [1-1:0] delay1_q_net;
  wire [1-1:0] inverter_op_net;
  wire [1-1:0] inverter1_op_net;
  wire [32-1:0] register1_q_net;
  wire [8-1:0] decim_counter_op_net;
  wire [1-1:0] decim_enb_logic_y_net;
  wire [1-1:0] en_mux_ctr_y_net;
  wire [1-1:0] register5_q_net;
  wire [1-1:0] decim_rst_logic_y_net;
  wire [1-1:0] mux_ctr_op_net;
  wire [1-1:0] decim_rst_enb_y_net;
  wire [1-1:0] frame_rst_enb_y_net;
  wire [1-1:0] frame_enb_logic_y_net;
  wire [1-1:0] frame_rst_logic_y_net;
  wire [32-1:0] frame_counter_op_net;
  wire [1-1:0] tvalid_delay_match_q_net;
  wire [1-1:0] triggr_rst_logic_y_net;
  wire [1-1:0] trig_posedge_det_y_net;
  wire [1-1:0] triggr_rst_enb1_y_net;
  assign cdc_reg_a_q_net = data_a_syncd;
  assign cdc_reg_b_q_net = data_b_syncd;
  assign decim_in_net = decim_in;
  assign dma_ready_out = register6_q_net;
  assign frames_no_in_net = frames_no_in;
  assign m_axis_dma_tdata = channel_mux_y_net;
  assign m_axis_dma_tkeep = keep_mux_y_net;
  assign m_axis_dma_tlast = last_flag_mux_y_net;
  assign m_axis_dma_tready_net = m_axis_dma_tready;
  assign m_axis_dma_tvalid = tvalid_out_logic_y_net;
  assign trigger_in_net = trigger_in;
  assign usr_rst_in_net = usr_rst_in;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_constant_8903ca92fb constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  sysgen_constant_8b2837d790 constant2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant2_op_net)
  );
  sysgen_constant_6e1ec4d806 constant3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant3_op_net)
  );
  throttle_w_cdc_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay1 (
    .en(1'b1),
    .rst(1'b0),
    .d(last_flag_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay1_q_net)
  );
  throttle_w_cdc_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay3 (
    .en(1'b1),
    .rst(1'b0),
    .d(decim_reached_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay3_q_net)
  );
  throttle_w_cdc_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay4 (
    .en(1'b1),
    .rst(1'b0),
    .d(extend_valid_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay4_q_net)
  );
  sysgen_inverter_5d8068edb2 inverter (
    .clr(1'b0),
    .ip(register4_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(inverter_op_net)
  );
  sysgen_inverter_44afe17189 inverter1 (
    .clr(1'b0),
    .ip(triggr_latch_reg_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(inverter1_op_net)
  );
  throttle_w_cdc_xlregister #(
    .d_width(32),
    .init_value(32'b00000000000000000000000000000000)
  )
  register (
    .rst(1'b0),
    .d(cdc_reg_a_q_net),
    .en(decim_reached_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register_q_net)
  );
  throttle_w_cdc_xlregister #(
    .d_width(32),
    .init_value(32'b00000000000000000000000000000000)
  )
  register1 (
    .rst(1'b0),
    .d(cdc_reg_b_q_net),
    .en(decim_reached_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register1_q_net)
  );
  throttle_w_cdc_xlregister #(
    .d_width(32),
    .init_value(32'b00000000000000000000000000000000)
  )
  register2 (
    .en(1'b1),
    .rst(1'b0),
    .d(frames_no_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register2_q_net)
  );
  throttle_w_cdc_xlregister #(
    .d_width(32),
    .init_value(32'b00000000000000000000000000000000)
  )
  register3 (
    .en(1'b1),
    .rst(1'b0),
    .d(decim_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register3_q_net)
  );
  throttle_w_cdc_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register4 (
    .en(1'b1),
    .rst(1'b0),
    .d(trigger_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register4_q_net)
  );
  throttle_w_cdc_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register5 (
    .en(1'b1),
    .rst(1'b0),
    .d(usr_rst_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register5_q_net)
  );
  throttle_w_cdc_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register6 (
    .en(1'b1),
    .rst(1'b0),
    .d(m_axis_dma_tready_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register6_q_net)
  );
  sysgen_mux_0d3326ac85 channel_mux (
    .clr(1'b0),
    .sel(mux_ctr_op_net),
    .d0(register_q_net),
    .d1(register1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(channel_mux_y_net)
  );
  throttle_w_cdc_xlcounter_free #(
    .core_name0("throttle_w_cdc_c_counter_binary_v12_0_i0"),
    .op_arith(`xlUnsigned),
    .op_width(8)
  )
  decim_counter (
    .clr(1'b0),
    .rst(decim_rst_logic_y_net),
    .en(decim_rst_enb_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(decim_counter_op_net)
  );
  sysgen_logical_5ee129f5d8 decim_enb_logic (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(triggr_latch_reg_q_net),
    .d1(register6_q_net),
    .y(decim_enb_logic_y_net)
  );
  sysgen_relational_c1e77ac8f5 decim_reached (
    .clr(1'b0),
    .a(decim_counter_op_net),
    .b(register3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(decim_reached_op_net)
  );
  sysgen_logical_c50314b5b0 decim_rst_enb (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(decim_enb_logic_y_net),
    .d1(register5_q_net),
    .y(decim_rst_enb_y_net)
  );
  sysgen_logical_c50314b5b0 decim_rst_logic (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(decim_reached_op_net),
    .d1(register5_q_net),
    .y(decim_rst_logic_y_net)
  );
  sysgen_logical_5ee129f5d8 en_mux_ctr (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(triggr_latch_reg_q_net),
    .d1(delay4_q_net),
    .y(en_mux_ctr_y_net)
  );
  sysgen_logical_c50314b5b0 extend_valid (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(decim_reached_op_net),
    .d1(delay3_q_net),
    .y(extend_valid_y_net)
  );
  throttle_w_cdc_xlcounter_free #(
    .core_name0("throttle_w_cdc_c_counter_binary_v12_0_i1"),
    .op_arith(`xlUnsigned),
    .op_width(32)
  )
  frame_counter (
    .clr(1'b0),
    .rst(frame_rst_logic_y_net),
    .en(frame_rst_enb_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(frame_counter_op_net)
  );
  sysgen_logical_29b2acbae4 frame_enb_logic (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(decim_reached_op_net),
    .d1(triggr_latch_reg_q_net),
    .d2(register6_q_net),
    .y(frame_enb_logic_y_net)
  );
  sysgen_logical_c50314b5b0 frame_rst_enb (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(frame_enb_logic_y_net),
    .d1(register5_q_net),
    .y(frame_rst_enb_y_net)
  );
  sysgen_logical_c50314b5b0 frame_rst_logic (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(last_flag_op_net),
    .d1(register5_q_net),
    .y(frame_rst_logic_y_net)
  );
  sysgen_relational_0d2b7e7af9 last_flag (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .a(frame_counter_op_net),
    .b(register2_q_net),
    .op(last_flag_op_net)
  );
  sysgen_mux_2d8943f45f last_flag_mux (
    .clr(1'b0),
    .sel(triggr_latch_reg_q_net),
    .d0(constant_op_net),
    .d1(delay1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(last_flag_mux_y_net)
  );
  sysgen_mux_2cd228fe16 keep_mux (
    .clr(1'b0),
    .sel(triggr_latch_reg_q_net),
    .d0(constant2_op_net),
    .d1(constant3_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(keep_mux_y_net)
  );
  sysgen_counter_d438df0af4 mux_ctr (
    .clr(1'b0),
    .en(en_mux_ctr_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(mux_ctr_op_net)
  );
  sysgen_logical_29b2acbae4 trig_posedge_det (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(register4_q_net),
    .d1(inverter_op_net),
    .d2(inverter1_op_net),
    .y(trig_posedge_det_y_net)
  );
  throttle_w_cdc_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  triggr_latch_reg (
    .d(trig_posedge_det_y_net),
    .rst(triggr_rst_logic_y_net),
    .en(triggr_rst_enb1_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(triggr_latch_reg_q_net)
  );
  sysgen_logical_c50314b5b0 triggr_rst_enb1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(trig_posedge_det_y_net),
    .d1(register5_q_net),
    .y(triggr_rst_enb1_y_net)
  );
  sysgen_logical_e96e9b77ea triggr_rst_logic (
    .clr(1'b0),
    .d0(register5_q_net),
    .d1(delay1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(triggr_rst_logic_y_net)
  );
  throttle_w_cdc_xldelay #(
    .latency(2),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  tvalid_delay_match (
    .en(1'b1),
    .rst(1'b0),
    .d(extend_valid_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(tvalid_delay_match_q_net)
  );
  sysgen_logical_5ee129f5d8 tvalid_out_logic (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(tvalid_delay_match_q_net),
    .d1(triggr_latch_reg_q_net),
    .y(tvalid_out_logic_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block DMA_throttle_sysgen/Throttle_w_CDC_struct
module throttle_w_cdc_struct (
  input [32-1:0] data_in_a,
  input [32-1:0] data_in_b,
  input [32-1:0] decim_in,
  input [32-1:0] frames_no_in,
  input [1-1:0] m_axis_dma_tready,
  input [1-1:0] trigger_in,
  input [1-1:0] usr_rst_in,
  input clk_1_x0,
  input ce_1_x0,
  input clk_1,
  input ce_1,
  output [1-1:0] dma_ready_out,
  output [32-1:0] m_axis_dma_tdata,
  output [4-1:0] m_axis_dma_tkeep,
  output [1-1:0] m_axis_dma_tlast,
  output [1-1:0] m_axis_dma_tvalid
);
  wire [32-1:0] data_in_a_net;
  wire [32-1:0] frames_no_in_net;
  wire [32-1:0] data_in_b_net;
  wire [32-1:0] channel_mux_y_net;
  wire [1-1:0] m_axis_dma_tready_net;
  wire [1-1:0] trigger_in_net;
  wire [1-1:0] last_flag_mux_y_net;
  wire [1-1:0] usr_rst_in_net;
  wire [1-1:0] register6_q_net;
  wire [32-1:0] decim_in_net;
  wire [4-1:0] keep_mux_y_net;
  wire [1-1:0] tvalid_out_logic_y_net;
  wire clk_net;
  wire [32-1:0] cdc_reg_b_q_net;
  wire clk_net_x0;
  wire [32-1:0] cdc_reg_a_q_net;
  wire [32-1:0] register8_q_net;
  wire [32-1:0] register7_q_net;
  wire ce_net;
  wire ce_net_x0;
  assign data_in_a_net = data_in_a;
  assign data_in_b_net = data_in_b;
  assign decim_in_net = decim_in;
  assign dma_ready_out = register6_q_net;
  assign frames_no_in_net = frames_no_in;
  assign m_axis_dma_tdata = channel_mux_y_net;
  assign m_axis_dma_tkeep = keep_mux_y_net;
  assign m_axis_dma_tlast = last_flag_mux_y_net;
  assign m_axis_dma_tready_net = m_axis_dma_tready;
  assign m_axis_dma_tvalid = tvalid_out_logic_y_net;
  assign trigger_in_net = trigger_in;
  assign usr_rst_in_net = usr_rst_in;
  assign clk_net = clk_1_x0;
  assign ce_net_x0 = ce_1_x0;
  assign clk_net_x0 = clk_1;
  assign ce_net = ce_1;
  throttle_w_cdc_adc_clock_domain adc_clock_domain (
    .data_in_a(data_in_a_net),
    .data_in_b(data_in_b_net),
    .clk_1(clk_net),
    .ce_1(ce_net_x0),
    .data_a_out(register7_q_net),
    .data_b_out(register8_q_net)
  );
  throttle_w_cdc_fpga_clock_domain fpga_clock_domain (
    .data_a_syncd(cdc_reg_a_q_net),
    .data_b_syncd(cdc_reg_b_q_net),
    .decim_in(decim_in_net),
    .frames_no_in(frames_no_in_net),
    .m_axis_dma_tready(m_axis_dma_tready_net),
    .trigger_in(trigger_in_net),
    .usr_rst_in(usr_rst_in_net),
    .clk_1(clk_net_x0),
    .ce_1(ce_net),
    .dma_ready_out(register6_q_net),
    .m_axis_dma_tdata(channel_mux_y_net),
    .m_axis_dma_tkeep(keep_mux_y_net),
    .m_axis_dma_tlast(last_flag_mux_y_net),
    .m_axis_dma_tvalid(tvalid_out_logic_y_net)
  );
  throttle_w_cdc_xlAsynRegister #(
    .d_width(32),
    .init_value(32'b00000000000000000000000000000000)
  )
  cdc_reg_a (
    .en(1'b1),
    .rst(1'b0),
    .d(register7_q_net),
    .d_clk(clk_net),
    .q_ce(ce_net_x0),
    .q_clk(clk_net_x0),
    .d_ce(ce_net),
    .q(cdc_reg_a_q_net)
  );
  throttle_w_cdc_xlAsynRegister #(
    .d_width(32),
    .init_value(32'b00000000000000000000000000000000)
  )
  cdc_reg_b (
    .en(1'b1),
    .rst(1'b0),
    .d(register8_q_net),
    .d_clk(clk_net),
    .q_ce(ce_net_x0),
    .q_clk(clk_net_x0),
    .d_ce(ce_net),
    .q(cdc_reg_b_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block 
module throttle_w_cdc_default_clock_driver (
  input adc_clock_domain_sysclk,
  input adc_clock_domain_sysce,
  input adc_clock_domain_sysclr,
  input fpga_clock_domain_sysclk,
  input fpga_clock_domain_sysce,
  input fpga_clock_domain_sysclr,
  output adc_clock_domain_clk1,
  output adc_clock_domain_ce1,
  output fpga_clock_domain_clk1,
  output fpga_clock_domain_ce1
);
  xlclockdriver #(
    .period(1),
    .log_2_period(1)
  )
  clockdriver_x0 (
    .sysclk(adc_clock_domain_sysclk),
    .sysce(adc_clock_domain_sysce),
    .sysclr(adc_clock_domain_sysclr),
    .clk(adc_clock_domain_clk1),
    .ce(adc_clock_domain_ce1)
  );
  xlclockdriver #(
    .period(1),
    .log_2_period(1)
  )
  clockdriver (
    .sysclk(fpga_clock_domain_sysclk),
    .sysce(fpga_clock_domain_sysce),
    .sysclr(fpga_clock_domain_sysclr),
    .clk(fpga_clock_domain_clk1),
    .ce(fpga_clock_domain_ce1)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block 
(* core_generation_info = "throttle_w_cdc,sysgen_core_2020_2,{,compilation=IP Catalog,block_icon_display=Default,family=zynq,part=xc7z020,speed=-1,package=clg400,synthesis_language=verilog,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=-10,system_simulink_period=-1,waveform_viewer=1,axilite_interface=1,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=1.6e-06,constant=5,counter=3,delay=4,inv=2,logical=12,mux=3,register=12,relational=2,}" *)
module throttle_w_cdc (
  input [32-1:0] data_in_a,
  input [32-1:0] data_in_b,
  input [1-1:0] m_axis_dma_tready,
  input adc_clock_domain_clk,
  input fpga_clock_domain_clk,
  input fpga_clock_domain_aresetn,
  input [4-1:0] fpga_clock_domain_cfg_in_s_axi_awaddr,
  input fpga_clock_domain_cfg_in_s_axi_awvalid,
  input [32-1:0] fpga_clock_domain_cfg_in_s_axi_wdata,
  input [4-1:0] fpga_clock_domain_cfg_in_s_axi_wstrb,
  input fpga_clock_domain_cfg_in_s_axi_wvalid,
  input fpga_clock_domain_cfg_in_s_axi_bready,
  input [4-1:0] fpga_clock_domain_cfg_in_s_axi_araddr,
  input fpga_clock_domain_cfg_in_s_axi_arvalid,
  input fpga_clock_domain_cfg_in_s_axi_rready,
  output [1-1:0] dma_ready_out,
  output [32-1:0] m_axis_dma_tdata,
  output [4-1:0] m_axis_dma_tkeep,
  output [1-1:0] m_axis_dma_tlast,
  output [1-1:0] m_axis_dma_tvalid,
  output fpga_clock_domain_cfg_in_s_axi_awready,
  output fpga_clock_domain_cfg_in_s_axi_wready,
  output [2-1:0] fpga_clock_domain_cfg_in_s_axi_bresp,
  output fpga_clock_domain_cfg_in_s_axi_bvalid,
  output fpga_clock_domain_cfg_in_s_axi_arready,
  output [32-1:0] fpga_clock_domain_cfg_in_s_axi_rdata,
  output [2-1:0] fpga_clock_domain_cfg_in_s_axi_rresp,
  output fpga_clock_domain_cfg_in_s_axi_rvalid
);
  wire clk_1_net;
  wire ce_1_net_x0;
  wire ce_1_net;
  wire [32-1:0] decim_in;
  wire [1-1:0] trigger_in;
  wire [32-1:0] frames_no_in;
  wire [1-1:0] usr_rst_in;
  wire clk_1_net_x0;
  wire fpga_clock_domain_clk_net;
  fpga_clock_domain_cfg_in_axi_lite_interface fpga_clock_domain_cfg_in_axi_lite_interface (
    .fpga_clock_domain_cfg_in_s_axi_awaddr(fpga_clock_domain_cfg_in_s_axi_awaddr),
    .fpga_clock_domain_cfg_in_s_axi_awvalid(fpga_clock_domain_cfg_in_s_axi_awvalid),
    .fpga_clock_domain_cfg_in_s_axi_wdata(fpga_clock_domain_cfg_in_s_axi_wdata),
    .fpga_clock_domain_cfg_in_s_axi_wstrb(fpga_clock_domain_cfg_in_s_axi_wstrb),
    .fpga_clock_domain_cfg_in_s_axi_wvalid(fpga_clock_domain_cfg_in_s_axi_wvalid),
    .fpga_clock_domain_cfg_in_s_axi_bready(fpga_clock_domain_cfg_in_s_axi_bready),
    .fpga_clock_domain_cfg_in_s_axi_araddr(fpga_clock_domain_cfg_in_s_axi_araddr),
    .fpga_clock_domain_cfg_in_s_axi_arvalid(fpga_clock_domain_cfg_in_s_axi_arvalid),
    .fpga_clock_domain_cfg_in_s_axi_rready(fpga_clock_domain_cfg_in_s_axi_rready),
    .fpga_clock_domain_cfg_in_aresetn(fpga_clock_domain_aresetn),
    .fpga_clock_domain_cfg_in_aclk(fpga_clock_domain_clk),
    .usr_rst_in(usr_rst_in),
    .trigger_in(trigger_in),
    .frames_no_in(frames_no_in),
    .decim_in(decim_in),
    .fpga_clock_domain_cfg_in_s_axi_awready(fpga_clock_domain_cfg_in_s_axi_awready),
    .fpga_clock_domain_cfg_in_s_axi_wready(fpga_clock_domain_cfg_in_s_axi_wready),
    .fpga_clock_domain_cfg_in_s_axi_bresp(fpga_clock_domain_cfg_in_s_axi_bresp),
    .fpga_clock_domain_cfg_in_s_axi_bvalid(fpga_clock_domain_cfg_in_s_axi_bvalid),
    .fpga_clock_domain_cfg_in_s_axi_arready(fpga_clock_domain_cfg_in_s_axi_arready),
    .fpga_clock_domain_cfg_in_s_axi_rdata(fpga_clock_domain_cfg_in_s_axi_rdata),
    .fpga_clock_domain_cfg_in_s_axi_rresp(fpga_clock_domain_cfg_in_s_axi_rresp),
    .fpga_clock_domain_cfg_in_s_axi_rvalid(fpga_clock_domain_cfg_in_s_axi_rvalid),
    .fpga_clock_domain_clk(fpga_clock_domain_clk_net)
  );
  throttle_w_cdc_default_clock_driver throttle_w_cdc_default_clock_driver (
    .adc_clock_domain_sysclk(adc_clock_domain_clk),
    .adc_clock_domain_sysce(1'b1),
    .adc_clock_domain_sysclr(1'b0),
    .fpga_clock_domain_sysclk(fpga_clock_domain_clk_net),
    .fpga_clock_domain_sysce(1'b1),
    .fpga_clock_domain_sysclr(1'b0),
    .adc_clock_domain_clk1(clk_1_net),
    .adc_clock_domain_ce1(ce_1_net),
    .fpga_clock_domain_clk1(clk_1_net_x0),
    .fpga_clock_domain_ce1(ce_1_net_x0)
  );
  throttle_w_cdc_struct throttle_w_cdc_struct (
    .data_in_a(data_in_a),
    .data_in_b(data_in_b),
    .decim_in(decim_in),
    .frames_no_in(frames_no_in),
    .m_axis_dma_tready(m_axis_dma_tready),
    .trigger_in(trigger_in),
    .usr_rst_in(usr_rst_in),
    .clk_1_x0(clk_1_net),
    .ce_1_x0(ce_1_net),
    .clk_1(clk_1_net_x0),
    .ce_1(ce_1_net_x0),
    .dma_ready_out(dma_ready_out),
    .m_axis_dma_tdata(m_axis_dma_tdata),
    .m_axis_dma_tkeep(m_axis_dma_tkeep),
    .m_axis_dma_tlast(m_axis_dma_tlast),
    .m_axis_dma_tvalid(m_axis_dma_tvalid)
  );
endmodule
