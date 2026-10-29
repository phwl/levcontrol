`ifndef xlConvPkgIncluded
`include "conv_pkg.v"
`endif

`timescale 1 ns / 10 ps
// Generated from Simulink block DMA_throttle_sysgen_no_CDC/Throttle/ADC_clock_domain
module throttle_adc_clock_domain (
  input [32-1:0] data_in_a,
  input [32-1:0] data_in_b,
  input clk_1,
  input ce_1,
  output [32-1:0] data_a_out,
  output [32-1:0] data_b_out
);
  wire [32-1:0] register7_q_net;
  wire [32-1:0] data_in_b_net;
  wire clk_net;
  wire [32-1:0] register8_q_net;
  wire ce_net;
  wire [32-1:0] data_in_a_net;
  assign data_a_out = register7_q_net;
  assign data_b_out = register8_q_net;
  assign data_in_a_net = data_in_a;
  assign data_in_b_net = data_in_b;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  throttle_xlregister #(
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
  throttle_xlregister #(
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
// Generated from Simulink block DMA_throttle_sysgen_no_CDC/Throttle/FPGA_clock_domain
module throttle_fpga_clock_domain (
  input [32-1:0] data_a_syncd,
  input [32-1:0] data_b_syncd,
  input [32-1:0] decim_in,
  input [32-1:0] frames_no_in,
  input [1-1:0] m_axis_dma_tready,
  input [1-1:0] trigger_in,
  input [1-1:0] usr_rst_in,
  input [1-1:0] trigger_in_hw,
  input [1-1:0] trigger_src,
  input clk_1,
  input ce_1,
  output [1-1:0] dma_ready_out,
  output [32-1:0] m_axis_dma_tdata,
  output [4-1:0] m_axis_dma_tkeep,
  output [1-1:0] m_axis_dma_tlast,
  output [1-1:0] m_axis_dma_tvalid
);
  wire [1-1:0] last_flag_op_net;
  wire [1-1:0] delay1_q_net;
  wire [4-1:0] constant3_op_net;
  wire [1-1:0] m_axis_dma_tready_net;
  wire [32-1:0] channel_mux_y_net;
  wire [4-1:0] keep_mux_y_net;
  wire [1-1:0] last_flag_mux_y_net;
  wire [1-1:0] usr_rst_in_net;
  wire [1-1:0] tvalid_out_logic_y_net;
  wire [1-1:0] trigger_in_net;
  wire [32-1:0] register8_q_net;
  wire [32-1:0] register7_q_net;
  wire [32-1:0] decim_in_net;
  wire [1-1:0] register6_q_net;
  wire [32-1:0] frames_no_in_net;
  wire clk_net;
  wire ce_net;
  wire [1-1:0] constant_op_net;
  wire [4-1:0] constant2_op_net;
  wire [1-1:0] trigger_in_hw_net;
  wire [1-1:0] trigger_src_net;
  wire [32-1:0] register_q_net;
  wire [32-1:0] register1_q_net;
  wire [1-1:0] mux_y_net;
  wire [1-1:0] delay3_q_net;
  wire [1-1:0] delay4_q_net;
  wire [1-1:0] inverter1_op_net;
  wire [1-1:0] inverter_op_net;
  wire [1-1:0] decim_reached_op_net;
  wire [1-1:0] triggr_latch_reg_q_net;
  wire [1-1:0] register4_q_net;
  wire [32-1:0] register3_q_net;
  wire [32-1:0] register2_q_net;
  wire [1-1:0] extend_valid_y_net;
  wire [1-1:0] mux_ctr_op_net;
  wire [1-1:0] decim_rst_logic_y_net;
  wire [1-1:0] decim_rst_enb_y_net;
  wire [1-1:0] decim_enb_logic_y_net;
  wire [1-1:0] register5_q_net;
  wire [1-1:0] en_mux_ctr_y_net;
  wire [8-1:0] decim_counter_op_net;
  wire [1-1:0] frame_rst_logic_y_net;
  wire [1-1:0] trig_posedge_det_y_net;
  wire [1-1:0] frame_enb_logic_y_net;
  wire [1-1:0] frame_rst_enb_y_net;
  wire [32-1:0] frame_counter_op_net;
  wire [1-1:0] register7_q_net_x0;
  wire [1-1:0] triggr_rst_logic_y_net;
  wire [1-1:0] triggr_rst_enb1_y_net;
  wire [1-1:0] tvalid_delay_match_q_net;
  assign register7_q_net = data_a_syncd;
  assign register8_q_net = data_b_syncd;
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
  assign trigger_in_hw_net = trigger_in_hw;
  assign trigger_src_net = trigger_src;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_constant_02a28ef416 constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  sysgen_constant_3bbcd3e0de constant2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant2_op_net)
  );
  sysgen_constant_8505f4e29b constant3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant3_op_net)
  );
  throttle_xldelay #(
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
  throttle_xldelay #(
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
  throttle_xldelay #(
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
  sysgen_inverter_9c7c697e65 inverter (
    .clr(1'b0),
    .ip(mux_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(inverter_op_net)
  );
  sysgen_inverter_5b6c3a9472 inverter1 (
    .clr(1'b0),
    .ip(triggr_latch_reg_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(inverter1_op_net)
  );
  throttle_xlregister #(
    .d_width(32),
    .init_value(32'b00000000000000000000000000000000)
  )
  register (
    .rst(1'b0),
    .d(register7_q_net),
    .en(decim_reached_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register_q_net)
  );
  throttle_xlregister #(
    .d_width(32),
    .init_value(32'b00000000000000000000000000000000)
  )
  register1 (
    .rst(1'b0),
    .d(register8_q_net),
    .en(decim_reached_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register1_q_net)
  );
  throttle_xlregister #(
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
  throttle_xlregister #(
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
  throttle_xlregister #(
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
  throttle_xlregister #(
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
  throttle_xlregister #(
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
  sysgen_mux_b78c42abc4 channel_mux (
    .clr(1'b0),
    .sel(mux_ctr_op_net),
    .d0(register_q_net),
    .d1(register1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(channel_mux_y_net)
  );
  throttle_xlcounter_free #(
    .core_name0("throttle_c_counter_binary_v12_0_i0"),
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
  sysgen_logical_39b3d166f5 decim_enb_logic (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(triggr_latch_reg_q_net),
    .d1(register6_q_net),
    .y(decim_enb_logic_y_net)
  );
  sysgen_relational_2640af6476 decim_reached (
    .clr(1'b0),
    .a(decim_counter_op_net),
    .b(register3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(decim_reached_op_net)
  );
  sysgen_logical_42b4532cd7 decim_rst_enb (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(decim_enb_logic_y_net),
    .d1(register5_q_net),
    .y(decim_rst_enb_y_net)
  );
  sysgen_logical_42b4532cd7 decim_rst_logic (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(decim_reached_op_net),
    .d1(register5_q_net),
    .y(decim_rst_logic_y_net)
  );
  sysgen_logical_39b3d166f5 en_mux_ctr (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(triggr_latch_reg_q_net),
    .d1(delay4_q_net),
    .y(en_mux_ctr_y_net)
  );
  sysgen_logical_42b4532cd7 extend_valid (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(decim_reached_op_net),
    .d1(delay3_q_net),
    .y(extend_valid_y_net)
  );
  throttle_xlcounter_free #(
    .core_name0("throttle_c_counter_binary_v12_0_i1"),
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
  sysgen_logical_e7537bc74e frame_enb_logic (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(decim_reached_op_net),
    .d1(triggr_latch_reg_q_net),
    .d2(register6_q_net),
    .y(frame_enb_logic_y_net)
  );
  sysgen_logical_42b4532cd7 frame_rst_enb (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(frame_enb_logic_y_net),
    .d1(register5_q_net),
    .y(frame_rst_enb_y_net)
  );
  sysgen_logical_42b4532cd7 frame_rst_logic (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(last_flag_op_net),
    .d1(register5_q_net),
    .y(frame_rst_logic_y_net)
  );
  sysgen_mux_d2fd319afa keep_mux (
    .clr(1'b0),
    .sel(triggr_latch_reg_q_net),
    .d0(constant2_op_net),
    .d1(constant3_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(keep_mux_y_net)
  );
  sysgen_relational_0ded92fc1d last_flag (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .a(frame_counter_op_net),
    .b(register2_q_net),
    .op(last_flag_op_net)
  );
  sysgen_mux_bde70b292a last_flag_mux (
    .clr(1'b0),
    .sel(triggr_latch_reg_q_net),
    .d0(constant_op_net),
    .d1(delay1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(last_flag_mux_y_net)
  );
  sysgen_counter_8c93270dca mux_ctr (
    .clr(1'b0),
    .en(en_mux_ctr_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(mux_ctr_op_net)
  );
  sysgen_logical_e7537bc74e trig_posedge_det (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(mux_y_net),
    .d1(inverter_op_net),
    .d2(inverter1_op_net),
    .y(trig_posedge_det_y_net)
  );
  throttle_xlregister #(
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
  sysgen_logical_42b4532cd7 triggr_rst_enb1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(trig_posedge_det_y_net),
    .d1(register5_q_net),
    .y(triggr_rst_enb1_y_net)
  );
  sysgen_logical_f2896246cd triggr_rst_logic (
    .clr(1'b0),
    .d0(register5_q_net),
    .d1(delay1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(triggr_rst_logic_y_net)
  );
  throttle_xldelay #(
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
  sysgen_logical_39b3d166f5 tvalid_out_logic (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(tvalid_delay_match_q_net),
    .d1(triggr_latch_reg_q_net),
    .y(tvalid_out_logic_y_net)
  );
  throttle_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register7 (
    .en(1'b1),
    .rst(1'b0),
    .d(trigger_in_hw_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register7_q_net_x0)
  );
  sysgen_mux_bde70b292a mux (
    .clr(1'b0),
    .sel(trigger_src_net),
    .d0(register4_q_net),
    .d1(register7_q_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block DMA_throttle_sysgen_no_CDC/Throttle_struct
module throttle_struct (
  input [32-1:0] data_in_a,
  input [32-1:0] data_in_b,
  input [32-1:0] decim_in,
  input [32-1:0] frames_no_in,
  input [1-1:0] m_axis_dma_tready,
  input [1-1:0] trigger_in,
  input [1-1:0] usr_rst_in,
  input [1-1:0] trigger_in_hw,
  input [1-1:0] trigger_src,
  input clk_1,
  input ce_1,
  output [1-1:0] dma_ready_out,
  output [32-1:0] m_axis_dma_tdata,
  output [4-1:0] m_axis_dma_tkeep,
  output [1-1:0] m_axis_dma_tlast,
  output [1-1:0] m_axis_dma_tvalid
);
  wire [32-1:0] decim_in_net;
  wire [32-1:0] data_in_b_net;
  wire [1-1:0] register6_q_net;
  wire [32-1:0] frames_no_in_net;
  wire [32-1:0] data_in_a_net;
  wire [32-1:0] channel_mux_y_net;
  wire [4-1:0] keep_mux_y_net;
  wire [1-1:0] last_flag_mux_y_net;
  wire [32-1:0] register8_q_net;
  wire [1-1:0] trigger_src_net;
  wire [1-1:0] trigger_in_hw_net;
  wire clk_net;
  wire [32-1:0] register7_q_net;
  wire [1-1:0] m_axis_dma_tready_net;
  wire [1-1:0] usr_rst_in_net;
  wire ce_net;
  wire [1-1:0] trigger_in_net;
  wire [1-1:0] tvalid_out_logic_y_net;
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
  assign trigger_in_hw_net = trigger_in_hw;
  assign trigger_src_net = trigger_src;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  throttle_adc_clock_domain adc_clock_domain (
    .data_in_a(data_in_a_net),
    .data_in_b(data_in_b_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .data_a_out(register7_q_net),
    .data_b_out(register8_q_net)
  );
  throttle_fpga_clock_domain fpga_clock_domain (
    .data_a_syncd(register7_q_net),
    .data_b_syncd(register8_q_net),
    .decim_in(decim_in_net),
    .frames_no_in(frames_no_in_net),
    .m_axis_dma_tready(m_axis_dma_tready_net),
    .trigger_in(trigger_in_net),
    .usr_rst_in(usr_rst_in_net),
    .trigger_in_hw(trigger_in_hw_net),
    .trigger_src(trigger_src_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .dma_ready_out(register6_q_net),
    .m_axis_dma_tdata(channel_mux_y_net),
    .m_axis_dma_tkeep(keep_mux_y_net),
    .m_axis_dma_tlast(last_flag_mux_y_net),
    .m_axis_dma_tvalid(tvalid_out_logic_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block 
module throttle_default_clock_driver (
  input throttle_sysclk,
  input throttle_sysce,
  input throttle_sysclr,
  output throttle_clk1,
  output throttle_ce1
);
  xlclockdriver #(
    .period(1),
    .log_2_period(1)
  )
  clockdriver (
    .sysclk(throttle_sysclk),
    .sysce(throttle_sysce),
    .sysclr(throttle_sysclr),
    .clk(throttle_clk1),
    .ce(throttle_ce1)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block 
(* core_generation_info = "throttle,sysgen_core_2020_2,{,compilation=IP Catalog,block_icon_display=Default,family=zynq,part=xc7z020,speed=-1,package=clg400,synthesis_language=verilog,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=8,system_simulink_period=8e-09,waveform_viewer=1,axilite_interface=1,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=1.6e-06,constant=5,counter=3,delay=4,inv=2,logical=12,mux=4,register=11,relational=2,}" *)
module throttle (
  input [32-1:0] data_in_a,
  input [32-1:0] data_in_b,
  input [1-1:0] m_axis_dma_tready,
  input [1-1:0] trigger_in_hw,
  input clk,
  input throttle_aresetn,
  input [5-1:0] throttle_cfg_in_s_axi_awaddr,
  input throttle_cfg_in_s_axi_awvalid,
  input [32-1:0] throttle_cfg_in_s_axi_wdata,
  input [4-1:0] throttle_cfg_in_s_axi_wstrb,
  input throttle_cfg_in_s_axi_wvalid,
  input throttle_cfg_in_s_axi_bready,
  input [5-1:0] throttle_cfg_in_s_axi_araddr,
  input throttle_cfg_in_s_axi_arvalid,
  input throttle_cfg_in_s_axi_rready,
  output [1-1:0] dma_ready_out,
  output [32-1:0] m_axis_dma_tdata,
  output [4-1:0] m_axis_dma_tkeep,
  output [1-1:0] m_axis_dma_tlast,
  output [1-1:0] m_axis_dma_tvalid,
  output throttle_cfg_in_s_axi_awready,
  output throttle_cfg_in_s_axi_wready,
  output [2-1:0] throttle_cfg_in_s_axi_bresp,
  output throttle_cfg_in_s_axi_bvalid,
  output throttle_cfg_in_s_axi_arready,
  output [32-1:0] throttle_cfg_in_s_axi_rdata,
  output [2-1:0] throttle_cfg_in_s_axi_rresp,
  output throttle_cfg_in_s_axi_rvalid
);
  wire [1-1:0] trigger_src;
  wire [1-1:0] usr_rst_in;
  wire [1-1:0] trigger_in;
  wire ce_1_net;
  wire clk_1_net;
  wire [32-1:0] frames_no_in;
  wire [32-1:0] decim_in;
  wire clk_net;
  throttle_cfg_in_axi_lite_interface throttle_cfg_in_axi_lite_interface (
    .throttle_cfg_in_s_axi_awaddr(throttle_cfg_in_s_axi_awaddr),
    .throttle_cfg_in_s_axi_awvalid(throttle_cfg_in_s_axi_awvalid),
    .throttle_cfg_in_s_axi_wdata(throttle_cfg_in_s_axi_wdata),
    .throttle_cfg_in_s_axi_wstrb(throttle_cfg_in_s_axi_wstrb),
    .throttle_cfg_in_s_axi_wvalid(throttle_cfg_in_s_axi_wvalid),
    .throttle_cfg_in_s_axi_bready(throttle_cfg_in_s_axi_bready),
    .throttle_cfg_in_s_axi_araddr(throttle_cfg_in_s_axi_araddr),
    .throttle_cfg_in_s_axi_arvalid(throttle_cfg_in_s_axi_arvalid),
    .throttle_cfg_in_s_axi_rready(throttle_cfg_in_s_axi_rready),
    .throttle_cfg_in_aresetn(throttle_aresetn),
    .throttle_cfg_in_aclk(clk),
    .trigger_src(trigger_src),
    .usr_rst_in(usr_rst_in),
    .trigger_in(trigger_in),
    .frames_no_in(frames_no_in),
    .decim_in(decim_in),
    .throttle_cfg_in_s_axi_awready(throttle_cfg_in_s_axi_awready),
    .throttle_cfg_in_s_axi_wready(throttle_cfg_in_s_axi_wready),
    .throttle_cfg_in_s_axi_bresp(throttle_cfg_in_s_axi_bresp),
    .throttle_cfg_in_s_axi_bvalid(throttle_cfg_in_s_axi_bvalid),
    .throttle_cfg_in_s_axi_arready(throttle_cfg_in_s_axi_arready),
    .throttle_cfg_in_s_axi_rdata(throttle_cfg_in_s_axi_rdata),
    .throttle_cfg_in_s_axi_rresp(throttle_cfg_in_s_axi_rresp),
    .throttle_cfg_in_s_axi_rvalid(throttle_cfg_in_s_axi_rvalid),
    .clk(clk_net)
  );
  throttle_default_clock_driver throttle_default_clock_driver (
    .throttle_sysclk(clk_net),
    .throttle_sysce(1'b1),
    .throttle_sysclr(1'b0),
    .throttle_clk1(clk_1_net),
    .throttle_ce1(ce_1_net)
  );
  throttle_struct throttle_struct (
    .data_in_a(data_in_a),
    .data_in_b(data_in_b),
    .decim_in(decim_in),
    .frames_no_in(frames_no_in),
    .m_axis_dma_tready(m_axis_dma_tready),
    .trigger_in(trigger_in),
    .usr_rst_in(usr_rst_in),
    .trigger_in_hw(trigger_in_hw),
    .trigger_src(trigger_src),
    .clk_1(clk_1_net),
    .ce_1(ce_1_net),
    .dma_ready_out(dma_ready_out),
    .m_axis_dma_tdata(m_axis_dma_tdata),
    .m_axis_dma_tkeep(m_axis_dma_tkeep),
    .m_axis_dma_tlast(m_axis_dma_tlast),
    .m_axis_dma_tvalid(m_axis_dma_tvalid)
  );
endmodule
