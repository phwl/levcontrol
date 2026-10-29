// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module Thrtl_8ch_cfg_bd (
  DDR_cas_n,
  DDR_cke,
  DDR_ck_n,
  DDR_ck_p,
  DDR_cs_n,
  DDR_reset_n,
  DDR_odt,
  DDR_ras_n,
  DDR_we_n,
  DDR_ba,
  DDR_addr,
  DDR_dm,
  DDR_dq,
  DDR_dqs_n,
  DDR_dqs_p,
  FIXED_IO_mio,
  FIXED_IO_ddr_vrn,
  FIXED_IO_ddr_vrp,
  FIXED_IO_ps_srstb,
  FIXED_IO_ps_clk,
  FIXED_IO_ps_porb,
  data_in_a,
  data_in_b,
  data_in_c,
  data_in_d,
  data_in_e,
  data_in_f,
  data_in_g,
  data_in_h,
  dma_ready_out,
  trigger_in_hw,
  m_axis_dma_tdata,
  m_axis_dma_tkeep,
  m_axis_dma_tlast,
  m_axis_dma_tvalid,
  m_axis_dma_tready
);

  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CAS_N" *)
  (* X_INTERFACE_MODE = "master DDR" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR, CAN_DEBUG false, TIMEPERIOD_PS 1250, MEMORY_TYPE COMPONENTS, DATA_WIDTH 8, CS_ENABLED true, DATA_MASK_ENABLED true, SLOT Single, MEM_ADDR_MAP ROW_COLUMN_BANK, BURST_LENGTH 8, AXI_ARBITRATION_SCHEME TDM, CAS_LATENCY 11, CAS_WRITE_LATENCY 11" *)
  inout DDR_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CKE" *)
  inout DDR_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_N" *)
  inout DDR_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_P" *)
  inout DDR_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CS_N" *)
  inout DDR_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RESET_N" *)
  inout DDR_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ODT" *)
  inout DDR_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RAS_N" *)
  inout DDR_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR WE_N" *)
  inout DDR_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR BA" *)
  inout [2:0]DDR_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ADDR" *)
  inout [14:0]DDR_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DM" *)
  inout [3:0]DDR_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQ" *)
  inout [31:0]DDR_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_N" *)
  inout [3:0]DDR_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_P" *)
  inout [3:0]DDR_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO" *)
  (* X_INTERFACE_MODE = "master FIXED_IO" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false" *)
  inout [53:0]FIXED_IO_mio;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN" *)
  inout FIXED_IO_ddr_vrn;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP" *)
  inout FIXED_IO_ddr_vrp;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB" *)
  inout FIXED_IO_ps_srstb;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK" *)
  inout FIXED_IO_ps_clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB" *)
  inout FIXED_IO_ps_porb;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.DATA_IN_A DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.DATA_IN_A" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.DATA_IN_A, LAYERED_METADATA undef" *)
  input [31:0]data_in_a;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.DATA_IN_B DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.DATA_IN_B" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.DATA_IN_B, LAYERED_METADATA undef" *)
  input [31:0]data_in_b;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.DATA_IN_C DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.DATA_IN_C" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.DATA_IN_C, LAYERED_METADATA undef" *)
  input [31:0]data_in_c;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.DATA_IN_D DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.DATA_IN_D" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.DATA_IN_D, LAYERED_METADATA undef" *)
  input [31:0]data_in_d;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.DATA_IN_E DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.DATA_IN_E" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.DATA_IN_E, LAYERED_METADATA undef" *)
  input [31:0]data_in_e;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.DATA_IN_F DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.DATA_IN_F" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.DATA_IN_F, LAYERED_METADATA undef" *)
  input [31:0]data_in_f;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.DATA_IN_G DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.DATA_IN_G" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.DATA_IN_G, LAYERED_METADATA undef" *)
  input [31:0]data_in_g;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.DATA_IN_H DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.DATA_IN_H" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.DATA_IN_H, LAYERED_METADATA undef" *)
  input [31:0]data_in_h;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.DMA_READY_OUT DATA" *)
  (* X_INTERFACE_MODE = "master DATA.DMA_READY_OUT" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.DMA_READY_OUT, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
  output [0:0]dma_ready_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.TRIGGER_IN_HW DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.TRIGGER_IN_HW" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.TRIGGER_IN_HW, LAYERED_METADATA undef" *)
  input [0:0]trigger_in_hw;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_dma TDATA" *)
  (* X_INTERFACE_MODE = "master m_axis_dma" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_dma, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}, INSERT_VIP 0" *)
  output [31:0]m_axis_dma_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_dma TKEEP" *)
  output [3:0]m_axis_dma_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_dma TLAST" *)
  output [0:0]m_axis_dma_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_dma TVALID" *)
  output [0:0]m_axis_dma_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_dma TREADY" *)
  input [0:0]m_axis_dma_tready;

  // stub module has no contents

endmodule
