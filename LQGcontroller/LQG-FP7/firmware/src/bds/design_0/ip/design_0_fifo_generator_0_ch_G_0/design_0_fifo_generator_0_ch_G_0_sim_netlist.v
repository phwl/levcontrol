// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Mon Jan 26 17:48:39 2026
// Host        : tp-p14s running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top design_0_fifo_generator_0_ch_G_0 -prefix
//               design_0_fifo_generator_0_ch_G_0_ design_0_fifo_generator_0_ch_C_0_sim_netlist.v
// Design      : design_0_fifo_generator_0_ch_C_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_0_fifo_generator_0_ch_C_0,fifo_generator_v13_2_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_11,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module design_0_fifo_generator_0_ch_G_0
   (wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_mode = "slave write_clk" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 15625000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /ADC_subsys/clk_wiz_0_clk_out1, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_mode = "slave read_clk" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_0_processing_system7_0_FCLK_CLK0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* x_interface_mode = "slave FIFO_WRITE" *) input [31:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* x_interface_mode = "slave FIFO_READ" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [31:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire [31:0]din;
  wire [31:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire wr_clk;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [3:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [3:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [3:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "4" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "32" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "32" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "0" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "2" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "15" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "14" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "4" *) 
  (* C_RD_DEPTH = "16" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "4" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "4" *) 
  (* C_WR_DEPTH = "16" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "4" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  design_0_fifo_generator_0_ch_G_0_fifo_generator_v13_2_11 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[3:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[3:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(1'b0),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[3:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* REG_OUTPUT = "1" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module design_0_fifo_generator_0_ch_G_0_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire [2:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [3:0]dest_out_bin;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module design_0_fifo_generator_0_ch_G_0_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire [2:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [3:0]dest_out_bin;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
md0AksSCeI3fOZtF7nrw91OgSzGoACBon4GH9ENTzaI4jlg22H1uTtXayX2Kz+g4ZH2j52rtMH8H
Xc49HVcThMzO1cRXu+SkL59MRQ87klGca4XtjrTtunJoQ+jyOKRwRBeIMHUdntbk2T1kbXHf9KkB
bNYGEMqSrbiDt7IJUx8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
r6CzxR0T3O2wvZRQe25aX3/CWOx/3d/3vJvvS/XsrKr7v852GNQNqCBn+PKsunj0Ncep8DqHtVie
BE6tKIqZW+3txAUjrhSri5liuFWSnzAk+Drsb4RnvIy7BeOdAK6NhVhn8ZyplkJSHVwaGjN8gtPE
LeWEHPHf5qLnzqGKV7B6oIC7POGV6Vamos1p2z1xv2cEw4udvmtZ5EjzeyCMf+omtxEPxhPi6Z2h
ENlGOmuPMkWGMjP6HQCZ1Mi0uiST/zDo29UDIMmOGcsDMe97imU/z2ekKTPXXwjcV+9q+4zHRgJV
6JWWgjU9cztV5OMaEfpBgRBWae/ijWpPZaGuFA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
glFrHilvyO7nq7/OYhnyb9uU9d8UNGJruNnkmJWuTpgvyCDmtx7iVKPBPe1Bj9jUDT/HM9AGxvu0
g7b4TuMdVkegkVPeHhw31IW0HoTL8wPnrLEpzDVK+B7xl953hPKPe0vn+0EQh2UKeL5K8VLxmsSv
gbpEeToeR90yzlSUzDE=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
D4uBhES8Mkd0GCwY2aQOmEzTqz6hO5B9Wa2oyfVBEODkWyt+AHkIXn4tuBN05FcP2FVmgtVbvZX5
K6iog51IoPw5tv+pM5x8+bQBX/aZpf0c4to3qiX6RZuITpuSUWq/7sqQDqtMqDWOFMMnUBpTX+qI
t61NvyIZcfqRWo4yvIUV2Zh1etqYKDlhqRnMoBZKMeHFpVsp19nU4sf5Km7sSlPQ08vYD8qtJqgJ
ZDYC2KWFTHsnT+5anHvc80FgHt4zBHpPrGprgpltQmVmMZxUD6NRC9EvvXf+pBhgfwPHHePWIKUn
elLld/HEVeFw76SlVV8i4LsS4KWWOM+KmMprEg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
EW9gHDqS12MVhy+y/xQVscLd4qOim+cNTepYzlas7WzqDJogZthddOuGjpm3a3fS/cMbF/h0O1Hb
Wjow664GIga0y96lkbkcJ3W8x/IGAsvgyrYT6ScsFhyq7tSd1HjvRG81BhhGM1mmpxfzh0Uqbfso
q+uVKPUmPnbQ/Gdu9YRoxmYVJdmUTpXJ5waYOdib8WNMPLdDfIo/FGrYrx2zYQBtpU5DwwVUTMrB
ZasEyxOj++icI5k5lR3Tx+3gdCFTy4XYQfcj2COm4gnVZ8FN/X1/+0ywsVGAc/OKL+mjMYH3NNH3
zfDO/TpYft+HaVl+CfF/U6IgJJeJs4qI4gB4FA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Myfv5Skg7QCxlNBoFiSTLAeIRYS0J0ArRihYk7dGAHZWAFlxJLgqo51W9P9zTVBurMJjZLtonoDJ
19RfxQj5GqhqN1A20s8xOFfLq6+uDG/V39xQFY32O626Kh4MMlH07hNJL5u1NjJWg1yze0XdFEe9
oLwKQz5lSKGMIh+VPXDuCGhShS+KhHwGEdS0lmA/IHPFNlRG1LsK0zQmUiNkG4kQ5OEVkQgvknNC
B6++ZDIYlT9WbZPs5giRY0zAhUepLPaO+N9F3fIBKVGw4ejbZOt0kXKixF86DDfLmF2+dov+PrTX
1MXJaea3YoQdR2c2MSHAk/TTkzg9ayjvxKaXpg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ks9l+EPHXfDNnWd0exs1j0Q9iSNYaIExwQnpsi8TFJimjPtOkX050wFklsLBM83WyfuD+F2KLNnZ
Jg/aiIiGe9o424jOiEFdnAJuzrD0QL9WmhQ3W9iRJ7uPhha6NfR2WGTCCM4TpN8rTKLQDKxenVfv
6x83rnL5NQxvpp9cQh3zMma73qoEJjhTR9MD9cwA4VeKq2u/R0iTWBplX81vYFd9TW2qW5/Qyzzj
A0+pXzczcJKdggV8h8bYcO+PRC3t2XrufhnjvhjMLG2tPHSMW/soDH/v8KorXyWe5N/q12fo5auN
SXr3olNuB5kpiVS3mJAPV0z4UsFfu2A4hLH7MQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
e3AJKDEM9byJqwpkFZqMIMKMQPOR1VrLFkshor7HR0C+ol7Uv3XTGyvQrINdBEArX0eazF0cHWjC
9B4BhDnysAhT6SENcNHIYHUGQE7uiF7zgL7WhCxClwEnIAVj+PU9FmqlvbreEikHQfbeIDPyCLii
NAS97RDxWki/MfR33zvZX4eEolA/oTyRzr1MagBs7LN1UXyGPvnze8JzHxA3zHVedIIrBrZxkfoj
Loqe6tLYRlC45h1Yr3Wa2gh3LJGtOSji+m7E9Xua/pPh8A/CAD+TNBa5d/X7C3a4AWl2bYTi7HBY
Y8vaIjHiSosru5F2UOEQG9xekCbNRK1Apew1UIvntzCmDMMhlAgB78AUOE2YEWKd9GOl+aTZjMS3
GxAYzrtv/bDRkPOYbcG0SNT9xf+izRM3lX1E2vN3i3uU2Qrh73fjU1lk3PIe/A/H56UrNPDnGT9W
TvlJR47bLDtGyX2+dLvfTaZGRP8aepePOXXLIlvqwCJSMVhCB/hIbz7E

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TfuXOFQtE7YhtTL4354NvKETmBCLSVnb+pbrT8gtzjU7pERE1Hu2ZVzHgVQXwt5RvwG1R/z2je+U
PzszCBhPNqUaXEhuJ0A/q0S/vvOOa6h6tW9MhiB3gnuqEFVWz5pbHZNfgrwh2gT8XyqLI8f1CoJM
xpcB2TbREV/kAAFMxIfH1Dg0KSO2dCeVV1na6N0AiMOQPvXZOB7QpXwNDbYfarWLtF0/l0hi4Fxu
Kgho2ggrUhajP0aKlrCQ9mLsqOyqJELeJldeD+vuUUqhYq4K4RrwtQF+B67lYc4AjznwQ92tUvYJ
ZspFoHJEScNvdFoHFTA2TQ2KToepsqXRiOCL1A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
tmfbBpNtCYJ7zsgNxUzw7Dvn+hNn2PPUBeRfXSci/q2/OcQeF/eAAML8YIN1V+AEoAqZTE2/xRQz
+6zwVOLyAOLynMIBQ7EG7xReDJ9kEEiBjnMGO6NWdAsa/VcreVHrLD1PFtA1+WoVe6yOvNGK+Nbh
HjPkXyycyP6RQ4Rx/PtTxw31LOFVezddSgRlaKHTprKTP4LbjPG//onRBg3fAl8zwU1wYYNLzYCX
jwY7xfMkQyhUSpV2Tx3seqy2IYVl8jjxynFxfyxulvrJiqmc6aaKKBdkoOVbJ5eO2sCXFJB1mKEU
WR2Ee2ozisABzk9IcGILewCW7ghdLP82CRZv4A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GfDCxx9db4ripD5mvQy16BVlwPYfeC7ZobZXaX1my6WUDiKwd69J5SreUXKYD9lvZfI7djLgHkYm
5G247T4NX7zoBwc88bUD+tNvGNmzWFfSVVZqu8hjgd31lZXjy9uYdXA/gsE+T+JqEfRYdV8YoGgm
sREyiJjWRPDbx6kc8um8vlAK/Rjwz0EGVkGUoi/+UvxcnjG1PqCl7GSMOQ3gFMEOaxIflShnF2/c
//ioADxl3WjUGyTstMK54XlP8G1Hk95sSe/7Y+SbaIyoG8t6gGDimDJNuGs4JjDUi1V7Gxfzxk9+
O2J++9clyLkMZ3rRyxSvR+Xyrmn3YxjVC68GXw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 82208)
`pragma protect data_block
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
R7L0+i/g0EgffAHBnJg=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
