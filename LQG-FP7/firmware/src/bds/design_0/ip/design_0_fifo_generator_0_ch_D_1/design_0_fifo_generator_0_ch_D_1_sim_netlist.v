// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Mon Jan 26 17:48:39 2026
// Host        : tp-p14s running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top design_0_fifo_generator_0_ch_D_1 -prefix
//               design_0_fifo_generator_0_ch_D_1_ design_0_fifo_generator_0_ch_C_0_sim_netlist.v
// Design      : design_0_fifo_generator_0_ch_C_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_0_fifo_generator_0_ch_C_0,fifo_generator_v13_2_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_11,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module design_0_fifo_generator_0_ch_D_1
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
  design_0_fifo_generator_0_ch_D_1_fifo_generator_v13_2_11 U0
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
module design_0_fifo_generator_0_ch_D_1_xpm_cdc_gray
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
module design_0_fifo_generator_0_ch_D_1_xpm_cdc_gray__2
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
kz3VILnzpWmtwG/RwFc=
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
