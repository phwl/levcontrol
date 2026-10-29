// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Mon Jan 26 17:48:39 2026
// Host        : tp-p14s running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top design_0_fifo_generator_0_ch_F_0 -prefix
//               design_0_fifo_generator_0_ch_F_0_ design_0_fifo_generator_0_ch_C_0_sim_netlist.v
// Design      : design_0_fifo_generator_0_ch_C_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_0_fifo_generator_0_ch_C_0,fifo_generator_v13_2_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_11,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module design_0_fifo_generator_0_ch_F_0
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
  design_0_fifo_generator_0_ch_F_0_fifo_generator_v13_2_11 U0
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
module design_0_fifo_generator_0_ch_F_0_xpm_cdc_gray
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
module design_0_fifo_generator_0_ch_F_0_xpm_cdc_gray__2
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
QIeKblaWWlR7SVELGLQ=
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
