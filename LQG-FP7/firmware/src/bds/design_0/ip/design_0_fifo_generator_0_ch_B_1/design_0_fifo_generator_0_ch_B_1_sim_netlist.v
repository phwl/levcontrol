// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Mon Jan 26 17:48:39 2026
// Host        : tp-p14s running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top design_0_fifo_generator_0_ch_B_1 -prefix
//               design_0_fifo_generator_0_ch_B_1_ design_0_fifo_generator_0_ch_C_0_sim_netlist.v
// Design      : design_0_fifo_generator_0_ch_C_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_0_fifo_generator_0_ch_C_0,fifo_generator_v13_2_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_11,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module design_0_fifo_generator_0_ch_B_1
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
  design_0_fifo_generator_0_ch_B_1_fifo_generator_v13_2_11 U0
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
module design_0_fifo_generator_0_ch_B_1_xpm_cdc_gray
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
module design_0_fifo_generator_0_ch_B_1_xpm_cdc_gray__2
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
+vSdn36BojxSB5QGWhQ=
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
