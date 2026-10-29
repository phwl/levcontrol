`ifndef xlConvPkgIncluded
`include "conv_pkg.v"
`endif

`timescale 1 ns / 10 ps
// Generated from Simulink block DMA_throttle_sysgen_configurable_24a/Thrtl_8ch_cfg_struct
module thrtl_8ch_cfg_struct (
  input [32-1:0] data_in_a,
  input [32-1:0] data_in_b,
  input [32-1:0] data_in_c,
  input [32-1:0] data_in_d,
  input [32-1:0] data_in_e,
  input [32-1:0] data_in_f,
  input [32-1:0] data_in_g,
  input [32-1:0] data_in_h,
  input [8-1:0] data_sel_in,
  input [16-1:0] decim_in,
  input [32-1:0] frames_no_in,
  input [1-1:0] m_axis_dma_tready,
  input [1-1:0] trigger_in,
  input [1-1:0] trigger_in_hw,
  input [1-1:0] trigger_src,
  input [1-1:0] usr_rst_in,
  input clk_1,
  input ce_1,
  output [1-1:0] dma_ready_out,
  output [32-1:0] m_axis_dma_tdata,
  output [4-1:0] m_axis_dma_tkeep,
  output [1-1:0] m_axis_dma_tlast,
  output [1-1:0] m_axis_dma_tvalid
);
  wire clk_net;
  wire [1-1:0] register15_q_net;
  wire [1-1:0] register12_q_net;
  wire [1-1:0] register13_q_net;
  wire [32-1:0] register10_q_net;
  wire [1-1:0] trig_posedge_det_y_net;
  wire [1-1:0] register14_q_net;
  wire [16-1:0] register11_q_net;
  wire [1-1:0] mcode_last_frame_out_net;
  wire [8-1:0] register16_q_net;
  wire [5-1:0] mcode_mux_cnt_out_net;
  wire [8-1:0] mcode_data_sel_out_net;
  wire [1-1:0] mcode_trigger_out_net;
  wire [17-1:0] mcode_dec_cnt_out_net;
  wire [33-1:0] mcode_frame_cnt_out_net;
  wire [1-1:0] inverter_op_net;
  wire [1-1:0] mux2_y_net;
  wire [1-1:0] mcode_tready_net;
  wire [4-1:0] mcode_tkeep_net;
  wire [1-1:0] mcode_tlast_net;
  wire [1-1:0] mcode_tvalid_net;
  wire [32-1:0] mcode_tdata_net;
  wire [32-1:0] register4_q_net;
  wire [32-1:0] register6_q_net;
  wire [32-1:0] register5_q_net;
  wire [32-1:0] register3_q_net;
  wire [32-1:0] register1_q_net;
  wire [32-1:0] register2_q_net;
  wire [32-1:0] register7_q_net;
  wire [32-1:0] register8_q_net;
  wire [256-1:0] bitbasher_out_x0_net;
  wire [32-1:0] data_in_a_net;
  wire ce_net;
  wire [1-1:0] usr_rst_in_net;
  wire [1-1:0] trigger_src_net;
  wire [1-1:0] trigger_in_hw_net;
  wire [1-1:0] trigger_in_net;
  wire [1-1:0] delay6_q_net;
  wire [1-1:0] m_axis_dma_tready_net;
  wire [1-1:0] delay7_q_net;
  wire [4-1:0] delay8_q_net;
  wire [32-1:0] delay5_q_net;
  wire [32-1:0] frames_no_in_net;
  wire [1-1:0] delay9_q_net;
  wire [16-1:0] decim_in_net;
  wire [8-1:0] data_sel_in_net;
  wire [32-1:0] data_in_g_net;
  wire [32-1:0] data_in_h_net;
  wire [32-1:0] data_in_f_net;
  wire [32-1:0] data_in_d_net;
  wire [32-1:0] data_in_c_net;
  wire [32-1:0] data_in_e_net;
  wire [32-1:0] data_in_b_net;
  assign data_in_a_net = data_in_a;
  assign data_in_b_net = data_in_b;
  assign data_in_c_net = data_in_c;
  assign data_in_d_net = data_in_d;
  assign data_in_e_net = data_in_e;
  assign data_in_f_net = data_in_f;
  assign data_in_g_net = data_in_g;
  assign data_in_h_net = data_in_h;
  assign data_sel_in_net = data_sel_in;
  assign decim_in_net = decim_in;
  assign dma_ready_out = delay9_q_net;
  assign frames_no_in_net = frames_no_in;
  assign m_axis_dma_tdata = delay5_q_net;
  assign m_axis_dma_tkeep = delay8_q_net;
  assign m_axis_dma_tlast = delay7_q_net;
  assign m_axis_dma_tready_net = m_axis_dma_tready;
  assign m_axis_dma_tvalid = delay6_q_net;
  assign trigger_in_net = trigger_in;
  assign trigger_in_hw_net = trigger_in_hw;
  assign trigger_src_net = trigger_src;
  assign usr_rst_in_net = usr_rst_in;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_bitbasher_9c26f3fbda bitbasher (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .a(register7_q_net),
    .b(register8_q_net),
    .c(register1_q_net),
    .d(register2_q_net),
    .e(register5_q_net),
    .f(register3_q_net),
    .g(register4_q_net),
    .h(register6_q_net),
    .out_x0(bitbasher_out_x0_net)
  );
  sysgen_delay_815930150c delay5 (
    .clr(1'b0),
    .d(mcode_tdata_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay5_q_net)
  );
  sysgen_delay_f009745253 delay6 (
    .clr(1'b0),
    .d(mcode_tvalid_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay6_q_net)
  );
  sysgen_delay_f009745253 delay7 (
    .clr(1'b0),
    .d(mcode_tlast_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay7_q_net)
  );
  sysgen_delay_077ce9d174 delay8 (
    .clr(1'b0),
    .d(mcode_tkeep_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay8_q_net)
  );
  sysgen_delay_f009745253 delay9 (
    .clr(1'b0),
    .d(mcode_tready_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay9_q_net)
  );
  sysgen_inverter_2f95a066e3 inverter (
    .clr(1'b0),
    .ip(mux2_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(inverter_op_net)
  );
  sysgen_mcode_block_0a0c79cbda mcode (
    .clr(1'b0),
    .data_vec(bitbasher_out_x0_net),
    .data_sel(register16_q_net),
    .tready_in(register14_q_net),
    .decim_val(register11_q_net),
    .frames_val(register10_q_net),
    .trigger_in(trig_posedge_det_y_net),
    .usr_rst(register13_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .tdata(mcode_tdata_net),
    .tvalid(mcode_tvalid_net),
    .tlast(mcode_tlast_net),
    .tkeep(mcode_tkeep_net),
    .tready(mcode_tready_net),
    .trigger_out(mcode_trigger_out_net),
    .dec_cnt_out(mcode_dec_cnt_out_net),
    .frame_cnt_out(mcode_frame_cnt_out_net),
    .mux_cnt_out(mcode_mux_cnt_out_net),
    .data_sel_out(mcode_data_sel_out_net),
    .last_frame_out(mcode_last_frame_out_net)
  );
  sysgen_mux_41889c05ba mux2 (
    .clr(1'b0),
    .sel(trigger_src_net),
    .d0(register12_q_net),
    .d1(register15_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux2_y_net)
  );
  thrtl_8ch_cfg_xlregister #(
    .d_width(32),
    .init_value(32'b00000000000000000000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(data_in_c_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register1_q_net)
  );
  thrtl_8ch_cfg_xlregister #(
    .d_width(32),
    .init_value(32'b00000000000000000000000000000000)
  )
  register10 (
    .en(1'b1),
    .rst(1'b0),
    .d(frames_no_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register10_q_net)
  );
  thrtl_8ch_cfg_xlregister #(
    .d_width(16),
    .init_value(16'b0000000000000000)
  )
  register11 (
    .en(1'b1),
    .rst(1'b0),
    .d(decim_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register11_q_net)
  );
  thrtl_8ch_cfg_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register12 (
    .en(1'b1),
    .rst(1'b0),
    .d(trigger_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register12_q_net)
  );
  thrtl_8ch_cfg_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register13 (
    .en(1'b1),
    .rst(1'b0),
    .d(usr_rst_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register13_q_net)
  );
  thrtl_8ch_cfg_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register14 (
    .en(1'b1),
    .rst(1'b0),
    .d(m_axis_dma_tready_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register14_q_net)
  );
  thrtl_8ch_cfg_xlregister #(
    .d_width(1),
    .init_value(1'b0)
  )
  register15 (
    .en(1'b1),
    .rst(1'b0),
    .d(trigger_in_hw_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register15_q_net)
  );
  thrtl_8ch_cfg_xlregister #(
    .d_width(8),
    .init_value(8'b00000000)
  )
  register16 (
    .en(1'b1),
    .rst(1'b0),
    .d(data_sel_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register16_q_net)
  );
  thrtl_8ch_cfg_xlregister #(
    .d_width(32),
    .init_value(32'b00000000000000000000000000000000)
  )
  register2 (
    .en(1'b1),
    .rst(1'b0),
    .d(data_in_d_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register2_q_net)
  );
  thrtl_8ch_cfg_xlregister #(
    .d_width(32),
    .init_value(32'b00000000000000000000000000000000)
  )
  register3 (
    .en(1'b1),
    .rst(1'b0),
    .d(data_in_f_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register3_q_net)
  );
  thrtl_8ch_cfg_xlregister #(
    .d_width(32),
    .init_value(32'b00000000000000000000000000000000)
  )
  register4 (
    .en(1'b1),
    .rst(1'b0),
    .d(data_in_g_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register4_q_net)
  );
  thrtl_8ch_cfg_xlregister #(
    .d_width(32),
    .init_value(32'b00000000000000000000000000000000)
  )
  register5 (
    .en(1'b1),
    .rst(1'b0),
    .d(data_in_e_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register5_q_net)
  );
  thrtl_8ch_cfg_xlregister #(
    .d_width(32),
    .init_value(32'b00000000000000000000000000000000)
  )
  register6 (
    .en(1'b1),
    .rst(1'b0),
    .d(data_in_h_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register6_q_net)
  );
  thrtl_8ch_cfg_xlregister #(
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
  thrtl_8ch_cfg_xlregister #(
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
  sysgen_logical_0a0b836e47 trig_posedge_det (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(mux2_y_net),
    .d1(inverter_op_net),
    .y(trig_posedge_det_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block 
module thrtl_8ch_cfg_default_clock_driver (
  input thrtl_8ch_cfg_sysclk,
  input thrtl_8ch_cfg_sysce,
  input thrtl_8ch_cfg_sysclr,
  output thrtl_8ch_cfg_clk1,
  output thrtl_8ch_cfg_ce1
);
  xlclockdriver #(
    .period(1),
    .log_2_period(1)
  )
  clockdriver (
    .sysclk(thrtl_8ch_cfg_sysclk),
    .sysce(thrtl_8ch_cfg_sysce),
    .sysclr(thrtl_8ch_cfg_sysclr),
    .clk(thrtl_8ch_cfg_clk1),
    .ce(thrtl_8ch_cfg_ce1)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block 
(* core_generation_info = "thrtl_8ch_cfg,sysgen_core_2024_2,{,compilation=IP Catalog,block_icon_display=Default,family=zynq,part=xc7z020,speed=-1,package=clg400,synthesis_language=verilog,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=8,system_simulink_period=8e-09,waveform_viewer=1,axilite_interface=1,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=2.4e-06,bitbasher=1,delay=5,inv=1,logical=1,mcode=1,mux=1,register=15,}" *)
module thrtl_8ch_cfg (
  input [32-1:0] data_in_a,
  input [32-1:0] data_in_b,
  input [32-1:0] data_in_c,
  input [32-1:0] data_in_d,
  input [32-1:0] data_in_e,
  input [32-1:0] data_in_f,
  input [32-1:0] data_in_g,
  input [32-1:0] data_in_h,
  input [1-1:0] m_axis_dma_tready,
  input [1-1:0] trigger_in_hw,
  input clk,
  input thrtl_8ch_cfg_aresetn,
  input [5-1:0] thrtl_8ch_cfg_cfg_in_s_axi_awaddr,
  input thrtl_8ch_cfg_cfg_in_s_axi_awvalid,
  input [32-1:0] thrtl_8ch_cfg_cfg_in_s_axi_wdata,
  input [4-1:0] thrtl_8ch_cfg_cfg_in_s_axi_wstrb,
  input thrtl_8ch_cfg_cfg_in_s_axi_wvalid,
  input thrtl_8ch_cfg_cfg_in_s_axi_bready,
  input [5-1:0] thrtl_8ch_cfg_cfg_in_s_axi_araddr,
  input thrtl_8ch_cfg_cfg_in_s_axi_arvalid,
  input thrtl_8ch_cfg_cfg_in_s_axi_rready,
  output [1-1:0] dma_ready_out,
  output [32-1:0] m_axis_dma_tdata,
  output [4-1:0] m_axis_dma_tkeep,
  output [1-1:0] m_axis_dma_tlast,
  output [1-1:0] m_axis_dma_tvalid,
  output thrtl_8ch_cfg_cfg_in_s_axi_awready,
  output thrtl_8ch_cfg_cfg_in_s_axi_wready,
  output [2-1:0] thrtl_8ch_cfg_cfg_in_s_axi_bresp,
  output thrtl_8ch_cfg_cfg_in_s_axi_bvalid,
  output thrtl_8ch_cfg_cfg_in_s_axi_arready,
  output [32-1:0] thrtl_8ch_cfg_cfg_in_s_axi_rdata,
  output [2-1:0] thrtl_8ch_cfg_cfg_in_s_axi_rresp,
  output thrtl_8ch_cfg_cfg_in_s_axi_rvalid
);
  wire ce_1_net;
  wire clk_1_net;
  wire [1-1:0] trigger_src;
  wire [1-1:0] usr_rst_in;
  wire [1-1:0] trigger_in;
  wire [32-1:0] frames_no_in;
  wire [16-1:0] decim_in;
  wire [8-1:0] data_sel_in;
  wire clk_net;
  thrtl_8ch_cfg_cfg_in_axi_lite_interface thrtl_8ch_cfg_cfg_in_axi_lite_interface (
    .thrtl_8ch_cfg_cfg_in_s_axi_awaddr(thrtl_8ch_cfg_cfg_in_s_axi_awaddr),
    .thrtl_8ch_cfg_cfg_in_s_axi_awvalid(thrtl_8ch_cfg_cfg_in_s_axi_awvalid),
    .thrtl_8ch_cfg_cfg_in_s_axi_wdata(thrtl_8ch_cfg_cfg_in_s_axi_wdata),
    .thrtl_8ch_cfg_cfg_in_s_axi_wstrb(thrtl_8ch_cfg_cfg_in_s_axi_wstrb),
    .thrtl_8ch_cfg_cfg_in_s_axi_wvalid(thrtl_8ch_cfg_cfg_in_s_axi_wvalid),
    .thrtl_8ch_cfg_cfg_in_s_axi_bready(thrtl_8ch_cfg_cfg_in_s_axi_bready),
    .thrtl_8ch_cfg_cfg_in_s_axi_araddr(thrtl_8ch_cfg_cfg_in_s_axi_araddr),
    .thrtl_8ch_cfg_cfg_in_s_axi_arvalid(thrtl_8ch_cfg_cfg_in_s_axi_arvalid),
    .thrtl_8ch_cfg_cfg_in_s_axi_rready(thrtl_8ch_cfg_cfg_in_s_axi_rready),
    .thrtl_8ch_cfg_cfg_in_aresetn(thrtl_8ch_cfg_aresetn),
    .thrtl_8ch_cfg_cfg_in_aclk(clk),
    .usr_rst_in(usr_rst_in),
    .trigger_src(trigger_src),
    .trigger_in(trigger_in),
    .frames_no_in(frames_no_in),
    .decim_in(decim_in),
    .data_sel_in(data_sel_in),
    .thrtl_8ch_cfg_cfg_in_s_axi_awready(thrtl_8ch_cfg_cfg_in_s_axi_awready),
    .thrtl_8ch_cfg_cfg_in_s_axi_wready(thrtl_8ch_cfg_cfg_in_s_axi_wready),
    .thrtl_8ch_cfg_cfg_in_s_axi_bresp(thrtl_8ch_cfg_cfg_in_s_axi_bresp),
    .thrtl_8ch_cfg_cfg_in_s_axi_bvalid(thrtl_8ch_cfg_cfg_in_s_axi_bvalid),
    .thrtl_8ch_cfg_cfg_in_s_axi_arready(thrtl_8ch_cfg_cfg_in_s_axi_arready),
    .thrtl_8ch_cfg_cfg_in_s_axi_rdata(thrtl_8ch_cfg_cfg_in_s_axi_rdata),
    .thrtl_8ch_cfg_cfg_in_s_axi_rresp(thrtl_8ch_cfg_cfg_in_s_axi_rresp),
    .thrtl_8ch_cfg_cfg_in_s_axi_rvalid(thrtl_8ch_cfg_cfg_in_s_axi_rvalid),
    .clk(clk_net)
  );
  thrtl_8ch_cfg_default_clock_driver thrtl_8ch_cfg_default_clock_driver (
    .thrtl_8ch_cfg_sysclk(clk_net),
    .thrtl_8ch_cfg_sysce(1'b1),
    .thrtl_8ch_cfg_sysclr(1'b0),
    .thrtl_8ch_cfg_clk1(clk_1_net),
    .thrtl_8ch_cfg_ce1(ce_1_net)
  );
  thrtl_8ch_cfg_struct thrtl_8ch_cfg_struct (
    .data_in_a(data_in_a),
    .data_in_b(data_in_b),
    .data_in_c(data_in_c),
    .data_in_d(data_in_d),
    .data_in_e(data_in_e),
    .data_in_f(data_in_f),
    .data_in_g(data_in_g),
    .data_in_h(data_in_h),
    .data_sel_in(data_sel_in),
    .decim_in(decim_in),
    .frames_no_in(frames_no_in),
    .m_axis_dma_tready(m_axis_dma_tready),
    .trigger_in(trigger_in),
    .trigger_in_hw(trigger_in_hw),
    .trigger_src(trigger_src),
    .usr_rst_in(usr_rst_in),
    .clk_1(clk_1_net),
    .ce_1(ce_1_net),
    .dma_ready_out(dma_ready_out),
    .m_axis_dma_tdata(m_axis_dma_tdata),
    .m_axis_dma_tkeep(m_axis_dma_tkeep),
    .m_axis_dma_tlast(m_axis_dma_tlast),
    .m_axis_dma_tvalid(m_axis_dma_tvalid)
  );
endmodule
