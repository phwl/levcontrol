// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Mon Apr 27 18:10:56 2026
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
kI+nidYUHOZVUri3x8w=
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
