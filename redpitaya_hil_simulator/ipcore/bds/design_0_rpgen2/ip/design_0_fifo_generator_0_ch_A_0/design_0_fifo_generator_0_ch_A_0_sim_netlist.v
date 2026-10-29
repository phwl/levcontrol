// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Mon May  4 12:18:19 2026
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
KTktDg9bmZA2LLaAA3I=
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
