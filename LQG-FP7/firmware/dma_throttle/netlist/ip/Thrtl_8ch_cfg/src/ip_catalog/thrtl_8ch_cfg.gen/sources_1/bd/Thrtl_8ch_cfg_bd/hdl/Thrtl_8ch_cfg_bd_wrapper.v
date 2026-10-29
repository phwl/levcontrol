//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Wed Jan 28 15:13:10 2026
//Host        : model-composer running 64-bit Ubuntu 22.04.5 LTS
//Command     : generate_target Thrtl_8ch_cfg_bd_wrapper.bd
//Design      : Thrtl_8ch_cfg_bd_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Thrtl_8ch_cfg_bd_wrapper
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    data_in_a,
    data_in_b,
    data_in_c,
    data_in_d,
    data_in_e,
    data_in_f,
    data_in_g,
    data_in_h,
    dma_ready_out,
    m_axis_dma_tdata,
    m_axis_dma_tkeep,
    m_axis_dma_tlast,
    m_axis_dma_tready,
    m_axis_dma_tvalid,
    trigger_in_hw);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  input [31:0]data_in_a;
  input [31:0]data_in_b;
  input [31:0]data_in_c;
  input [31:0]data_in_d;
  input [31:0]data_in_e;
  input [31:0]data_in_f;
  input [31:0]data_in_g;
  input [31:0]data_in_h;
  output [0:0]dma_ready_out;
  output [31:0]m_axis_dma_tdata;
  output [3:0]m_axis_dma_tkeep;
  output [0:0]m_axis_dma_tlast;
  input [0:0]m_axis_dma_tready;
  output [0:0]m_axis_dma_tvalid;
  input [0:0]trigger_in_hw;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire [31:0]data_in_a;
  wire [31:0]data_in_b;
  wire [31:0]data_in_c;
  wire [31:0]data_in_d;
  wire [31:0]data_in_e;
  wire [31:0]data_in_f;
  wire [31:0]data_in_g;
  wire [31:0]data_in_h;
  wire [0:0]dma_ready_out;
  wire [31:0]m_axis_dma_tdata;
  wire [3:0]m_axis_dma_tkeep;
  wire [0:0]m_axis_dma_tlast;
  wire [0:0]m_axis_dma_tready;
  wire [0:0]m_axis_dma_tvalid;
  wire [0:0]trigger_in_hw;

  Thrtl_8ch_cfg_bd Thrtl_8ch_cfg_bd_i
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .data_in_a(data_in_a),
        .data_in_b(data_in_b),
        .data_in_c(data_in_c),
        .data_in_d(data_in_d),
        .data_in_e(data_in_e),
        .data_in_f(data_in_f),
        .data_in_g(data_in_g),
        .data_in_h(data_in_h),
        .dma_ready_out(dma_ready_out),
        .m_axis_dma_tdata(m_axis_dma_tdata),
        .m_axis_dma_tkeep(m_axis_dma_tkeep),
        .m_axis_dma_tlast(m_axis_dma_tlast),
        .m_axis_dma_tready(m_axis_dma_tready),
        .m_axis_dma_tvalid(m_axis_dma_tvalid),
        .trigger_in_hw(trigger_in_hw));
endmodule
