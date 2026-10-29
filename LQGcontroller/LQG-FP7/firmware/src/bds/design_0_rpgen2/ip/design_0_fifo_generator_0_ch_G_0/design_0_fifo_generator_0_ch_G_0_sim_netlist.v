// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Mon Apr 27 18:10:56 2026
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
V9NtCGPX8qvY0V/TrT8=
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
