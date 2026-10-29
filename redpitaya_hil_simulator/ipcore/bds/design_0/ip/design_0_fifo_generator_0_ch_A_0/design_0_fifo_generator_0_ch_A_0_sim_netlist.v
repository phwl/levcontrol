// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Mon May  4 12:32:13 2026
// Host        : tp-p14s running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top design_0_fifo_generator_0_ch_A_0 -prefix
//               design_0_fifo_generator_0_ch_A_0_ design_0_fifo_generator_0_ch_B_0_sim_netlist.v
// Design      : design_0_fifo_generator_0_ch_B_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_0_fifo_generator_0_ch_B_0,fifo_generator_v13_2_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_11,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module design_0_fifo_generator_0_ch_A_0
   (wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_mode = "slave write_clk" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_0_axis_red_pitaya_adc_1_0_adc_clk, INSERT_VIP 0" *) input wr_clk;
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
  design_0_fifo_generator_0_ch_A_0_fifo_generator_v13_2_11 U0
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
module design_0_fifo_generator_0_ch_A_0_xpm_cdc_gray
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
module design_0_fifo_generator_0_ch_A_0_xpm_cdc_gray__2
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
yNzWd/KuHfH/PNTYIIg=
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
