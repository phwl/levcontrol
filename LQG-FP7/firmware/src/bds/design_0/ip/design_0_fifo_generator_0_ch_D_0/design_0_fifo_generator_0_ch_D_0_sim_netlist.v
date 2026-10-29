// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Mon Jan 26 17:48:39 2026
// Host        : tp-p14s running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top design_0_fifo_generator_0_ch_D_0 -prefix
//               design_0_fifo_generator_0_ch_D_0_ design_0_fifo_generator_0_ch_C_0_sim_netlist.v
// Design      : design_0_fifo_generator_0_ch_C_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_0_fifo_generator_0_ch_C_0,fifo_generator_v13_2_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_11,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module design_0_fifo_generator_0_ch_D_0
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
  design_0_fifo_generator_0_ch_D_0_fifo_generator_v13_2_11 U0
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
module design_0_fifo_generator_0_ch_D_0_xpm_cdc_gray
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
module design_0_fifo_generator_0_ch_D_0_xpm_cdc_gray__2
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
jeZyOQ1R3I++7fyKWBMhYyemUMqNxlyP1lpeH3V/uHIkvy00Ac+xfdUELz8KQE7zFTaj3y1cCrUb
YMzF+R7OT5Pie+Ilm+O/oTJr6UcdiXjjdkvBcdpaHVM8AqXabOEHn62iMVMZdPCDWFNdY0NxsOEm
Gse+DlvfMKrn3ouNfvOHFl0e/YI6x0u/ff/CcthmIN+yhUzpcK3L6vIdid8vrCN1t1OqjHrL4Jgb
/av1pn54Lz+QgcR2zNAoHePIAgrgzx9dQYzXdSdS14B9Na78l2DFOW4xZNSKt+oh0c01tJd8kDjB
z9X/tecLxM2s1xD+mEe1Tqc4NUSNIynfnOS2RWcziyPzCgOEYRFC02rifSaBzo5zMgrJD6X7QGsT
lb6Lf4f/7lBQK2jnegWM++7ThpMtZ0jSIAl7cWD8a27v+VZvxUTqHz6tQsomUB83PiQt8gljTXX0
aZf6OMcosHcqKTvTPQ7mDC7CmCuy9cSiSHI+YUqQs4UcnrZ95N9oJb4sjdRHiaRowI7VK5k++xp/
dSa8++mSs1ddltx0V0HN+xvqogpwPRSD7zl+PbhiEuVaHAD5snUFF+AzedJZ6iYRI62dqCQHBd5E
TSSVHO3odWO/q1VSx2/umHfyplaQRASwT195oWhpJwl7d3XAIZ+vnL6anGKDHjMEJmv7SqAXMHaT
ZZws3hZ5hEaFKtMO1Ui+zn1gIzu0yQ63MPZUUBxJuazk7GuzBP5zz8ee+JyiZtiRPrjOxMeSjs9E
N1wx2gxHUsIvcrCEbSru4wdUh8uDx3oKdXX6jxwlS62Q7Mczf+76Zk9Pn9XkG2WKXYNf6fcGnTSN
N9w9l/Bpanj4GHk1DirrZbORZGNso3ZENKUTWHzNLzVBt8H5iVrHapmy2lNY0FjoJLzN5lMahKKm
Amylmdr1PBdeMcRaesIH481gc1bL4+vCj7HfTvCss3C1taAyOdt55XxjCd/Tbj2Avjp43QZs0ZjF
7KAZnlQAS8iDTEjIB9s8R3J0gF1Nr37smm+beyZAzG2DFDwuZj+vsFGO4ydhDDOAtNAOECx0ucJ2
0WLKcnCEPfvDD/1IsPOiOyHDI7BXhObfaBAyDzRNo8pf6PGXAxa8oEViBXDMv8pC2Aw5v7p2Rctp
eMfP3CibZfZqI6T9M+dY6abw03Y23xXJd+9rdVomJvzE3MN4nnTlCEuFEN02lmKoK9kJokgzRbvF
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
EyBB45O01Og6GJO1OXA=
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
