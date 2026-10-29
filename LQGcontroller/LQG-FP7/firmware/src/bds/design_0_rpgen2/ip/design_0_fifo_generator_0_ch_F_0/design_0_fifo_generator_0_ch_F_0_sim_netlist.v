// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Mon Apr 27 18:10:56 2026
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
rvcTzqeNAmmmyowvus/LbkYuZ/fReCOMvOhMU+/kcnznHAvHPCLYuuxGW7p+BF2EtUIJPFkA4jow
zAXSYU1X0I2D1/arcagIgb5ZvXl8z5efyArxOBVRh78C2+t95bzWcunGRTghHOrX775KzU+y7Uen
UfZGtitJHZTKfzvA4bhh4nfRW/XhS/hU+y7XDSRvoPfKfWWlcNP/8rg3Ctd/eE2Su5sboNeqCY9H
ABZGiWgYNRll7wEAlqJax7bcNUB/fuvjtJoNqxvgHdEb6ePjxTykJTArySBJ1MRuxLGMDca4zyS8
viUuyh1BE3zVYRH9uyi2QlH8ovxo1PdVKwJ1SbElCTzramQcXwh8zB86CZCsH9r+kLJ08zEjgXpx
WOq7asXCod0p3cteg8H5UVcHxM5UiE46z/ReoxZDdLCsLM8TuEXB2iOmrrnEhOPH1O3iH7da2AS2
fy2XEXsjf11IUY6APkc2CE58wubNQYb6NM0XAFwYCzeAxSLUnDwWU+ASVGZ45ca7NpS7GeDMKBA2
F8KXTQXqOP++3gLLm/NfDXZg7fpAeHKHmbakslkjo+snCPEHSXONGcZPRLhYoNsqRPW4tt9oo2vG
6K0G+chObTT+7U54cGMN6SGPizeW6lzRGNw6CSa58AUnH7mvm4AsysE0u3Nt43sqxLYLgPRsYfB1
8PJuQ5zHabF+ZI7iJbKPPm+pPCBn2wAjIJCpIhKOEaMu7xJbwtaOmbpQTYgY0x/gWX32D+wMjdUm
Lu4ugG754nGmpsq1ejBQjrVoSsPIRtdvC3JtXl4Urss4c48vMT+kPBtHLbze1xKTKYMupWx40NUd
3TxIzsIimK0MKgvomlVKAG+ozOMXqYXL8fu+zxf+hPOI+0Ed2uoRqR6oGZ6pKLPsR0h7e5zGjuq2
dGu/vWwLCBlv0dfy2a+lSkQ5qhIHEJV5TVHrV/me92zx0+hUtbyig54tvfv6nD4vBWAVU1bb21Lb
PjXc+HCb5NS/IqDO5lPUDd1QZZmDiLTuFQE5z6dUU5w7VgFIaKnwJjlQfRK+XrzbsnmmQ1C6p/6g
NNCJrFsX1FdKCBcfwZLbWYxn92yVnGyilRHrKAPN6fiib6EZELnmoh/Hn6H/u0TtHaiP/Z4kHgGB
TWdJ0T/ha1PqpqLdzgzPdtH3alfpDGZXdyBuKwsdMx4CHCHhq5lWplWv974OuXhZs+owiWGQ/3wc
+lH2Ip3IdgpySQC7NBEJb1V+L1CEhDATv8gISmgdwgCW7C9FE6cMNHWEel8C6W+1OEwV2aVzeoiB
17C8a+8gY/EZnI4uGNUUw38nvEC9UMOnlFDMWt4KE9BXZUfesciWv7p+80dSsCn0nWp3FGK1Hfiu
EXpwQ1XZHomjUBMHk3XQLA+ylRTVToJe0cHLhgY2MgsnNtVaH74RqOjTDv8jK2Yz5nnqt7V1P/6Z
7dXbNqhtH1TjXrDHhO+DuMP42EsN6tXi+YoW6NC0CjXAv6PpwRWJKhq6MER5E9sfs18lkNYQfzbj
5kaPiZsZKEO1FMDAcx4CsDDwc0tfvCUGZviVvI4uRAn8W3+zAt8+cGrUl7f+4KgV/yRxndljv8lF
z1405zOJrYT0GSw3TKhgj/P5Dqx2JZbR0UbYS6A2fmftloh8Jc1/lAz9lD0WQZOFkzj1xZC/EDlb
jMTGr/DyFOIj+MAsD0qe1yVRCscf6+8uMDMsaZPCA+ygNL3st8Vsx4TFWS1V+pv3xfcu13OsQxVe
8VjNrEk4z3pgVF82zGiC7LJa4qHahcBm6SclfiqDHOj9M08bPc1482o0huGBSaAIU4Lg+TLQNTDE
rN12g5RxqULHOmBzrWqUxNF8C9kUf4seajwBV4qCDm1JBhI90yOINP5QN9bbcJQ863Ohpg2xqt4E
5k1d7z7RzI5Mi/rJfx6GR+EOPFWncWZn4IYoX4G3aAlceVFHFDbVsxuWbWdB5dGJE3SPGNbswsaw
dHq0uUcYMCHEzsfCnEYVwBT5a9mJaSYjQva+EUtlO6Nu3gkk8rY3IoHlOmwOMvGSDbn1+Kf507Nz
zLvUs2GMQtHWgZZwctllNBkoV9XVna+QL9W6G950VkjzyLIPkkdtU9uvaWAmFE9JehyCaHgHSMVV
M9+fBUMAy9nDx8MWrUymutIqSEOBjh+YiM4OLyXoQksHRZxnmw6RrdTOmGEpmoUBozZpG/XsPwlh
xxhRaTFGwW3m5qERDnPvpTDgXeIH7MW/FIC0l2MRRghr+zcIm68sYUnoHaj+p/HRRHhIJdO4KLYA
YtL6o+R5PMCkufgWjeCgKyHpL4qHPA2jwVFe6wzlzEnOEAuL4jLIAFvB6Z18SrcpI9Q81s1mkkjh
a0TcSb3QoPGkDcw03vJXo8+/IadMSwUetfdXLPrm7G28o+Ojys/QQefkfVHfiyOOUQO3w9yDESmV
xyfvdmiwfMyPVkAMmGC+d1rBB83o2bvWiebTuBj1sIDaC4aVyXvFMhmxXu01TI2w2oFYlhFD21Ua
hBrwr+05WEgBjiZAvLZAyTumEpo8FhSO7IK123upF/GnHm3DajOD7YpgoFekZNQEl9QfgkAy4Qkl
H8A8P4pv596bl1n5RgNOcjziEzdD9wpe/IhGzREbt7JGfgQ54H8Iknng8E9Y16NdFp5J88o2u9Sx
6Z813yuuvkOK1hDa1OINNZvZu0T5iVMEKAGdFKgxldYsSCzTvcSuotlS/rXej3PlfYxJ/yphqbd5
XzEallHojGehO1VpXOCV7HH8ANQ/FziV61+YolMIS9peX9N582cV+LiGcR3LtR4XuhoxE/6IuAzd
5+0jr2AcvFfxWpajJ7LLhvqosSYlNwYp72ouVIh8e0ulDhEmB1FqOCkV2SNget31HzpBIXYxL+Br
vvNdIXxZ7X7ttNW76UmgvJra/Z3hvYm8mLhTjeN6qCFtdYtJpDd4P7NfEvDPZLsIzk3zypdw2SiM
QflqilbnuB5SHGPvyuBZt8K8E0Hj3HaCXJIA7tNCy0jKEEDXpqnUvel5192JHG//bWSeUtUcodJs
GXHV3MG2CeTj+asdjf5bvtTRYSGsyyJzYL8aAd4EMP0pJnwVp4Xa0iszVmDQn4FWBoVpOPnNjJ56
ROFTwaekEr6fohOt9NH5V8oZA07scbGziW4rwfOjxDCr9j5OMctyVpqSfzxvkEGmGuOk8SxI4EP9
eCMvVL5unbeoEYtBS8U1IUiYixDbA5Y/5D8ZfZJO/UpQLnS4zSQ77UiBuaFoPmS7amQSqxTMYhjO
S763bLf7LFnFWAFBAJ4bZBALs3JeCUlrMZsQ2szo6EShZdlRQTU4hBvxTb8s1jZtDFgfU0KHIdft
bKsKupX8HVSuqD6qzK52LmfQLYeSYFITsb3bwaxNtXXMXJaFHvty1t5M99d3ubUOjUV2d0eMQ2kN
cnFHsdHiuNYHHvzajpjMTWAsJU4zTUS/7Qe9ab+mnhAj27MQV1IaNsXg/ZanDF/PZWRs+vlLIjPh
rSITqEdSG8JbD4Zn7YxfBNPEBaM6ACIi+dGW8aeSR+IgXLwcw+RItyMgZYTYKrXsitZvdgEWBw4e
lFfH0za4+dFvCcCtoWzYNQtvAKx32vVvLzAJJIdVVVtWRPLLy6R2N+9ziaz1PCejfGNmGvIxT5Cv
nM6Bq5NOVDslHFmqeHg0927FYPUgK1Gwd7rY2LGzTQpCotg673BcfNxNY2+qwnwBc4ZLPGh/vDJD
5lAbdJ/t7XXgEi4CRtUugyPGoYShgRFbVBcJvNewKZmY+3u6RPhBeX6D9EZLTKa3B4eT60fuWOfY
6uOmb/B8VupnXkwVMdOuqlxIFM4PBkx9EjQr2HEx+4/GAadPVM9pOlKPdrwIu76BwPV1cy6c6biF
b3jDkpy5HYo07TJ6vFUs11JUb/7w2HyGL3p3ULkDQlwO6Mhlnl3WA9qU6ROSMKUyA3ryM/bXQwNx
Uyu5PBmkQBMpkiZctAvd4UfUgKEkQS2NqYx6x9gI6eN1aWtcP+j38NF1HoZf7/J9IpKbjS70lffr
nvoiYe0EiNpi0rXcTJYXFUcYbKz+CI9346A0EY1YckUBk/E5nWoQ1g38UKAofdjWDpXqhEN2wpBX
RGyPlCaibrmN1Q71DvL9IxG0b3rhrhT2E0zH6kk8ZmPx0oB7MbIpdMJgBB9yyTJKX8d/koB5SFJd
MDc3KRy19XS5f3M4erZR6E9P8jhs44lTks1JLUG2pUimGcMpOMx9oqWbRVIPH9b/wEpWWlfYyRn2
R4cdankbm69XTe33Q1Ca4rrVZcwA51MNxKjA5zao3KvDVAGIinN5V/lTmLYP9derEvOU8H2a7gN/
k4WbxijPmaqakSiAPcq6eWuv+1i0yINPXljc3n64QL+mgz/R39rbojMjdJ3SsSPeYDr0Ve/1rnBO
caw9zh3ilUYySAEYqccKqEz1qBO/uc0Mlf49cfo0m6nB9AAQ7zp11eol+Es/6w/MJFGzVM+gsRtx
gPjNQ2VRmeyrlxuKCEr7LR7b3UBEK1uA0jmcRpZH6N8695JfrZOkXf8P1UUDQi0cAdhSB258GrF0
smbkKiCW5OQwbBKLIViKHFpWLf7BfLSfqz2BENaAFzExkb3GyHi65Jh9wtXB7hei8eIXmVfhj6A+
k0jtJ4lh5iqTnlQuyE+30UhhIxb+xNrM4Za6A6ryFIhlLchLiuatlpVOhkRV0Y6HgefI3++bXIkr
d/TycmaETE3hxui51eM0pqQwEFO8mEsYm3mA6E+nb2I7jRYHjpwddm6GiuIirQm8xn2aoeNBXEYV
EV+4RZ+8dlCmA4eBujVUnYrw045TRqJsOQps9Iq4kCnJLdGacTDix2XphwvEBoLMfj4mhBz7SrZY
q9WyOMFo18gJvE9ME21JsBEdQ+aspQlsjgtfg+rJEFpRODPEvAsfYri7N1VBwmB5ZLXp/nZXLJd5
ZK2y5HZQyEZa/P7knDROUUQRlteweNlmatSM7IvFpjnhL/kdiGxapUTrJRZggUIsXyV8iD0qRnre
kZOvqY79mnMRvVQApHaSRDpe6CxhFQSiGXAukCX1zl+N/nOYXZ+SbGSy+uwGKQhQXHCypKYSsmmP
T8RHLALzhhwYj6Ns7JdEin7Rtlr7oajF8t6Di0Bzq83P1cxHdhFTm4f+bC4JzHhDImN0ghU2i9Yu
JfX9Maq/yoSWSKZtCxcAeCDpVDhsOiMby9KtDx7NW5fWti5dDEPruFLgU6NV2Lfj6qXYpmy/gdom
8LXfiuGOMIixfHEHgcGX/qTLneH9uiGDGcovq3PlL8Kjt3woHsNZfpgeXuhOCGrmHmr2g2eTbXKL
fqfqP0zFgrXhPRZuqq17qSihAJwsVAhcoCzm71BUwhp2kDzXoe54Nf9uUJuzrlFzAG/yDAczO9VE
fv335Herc2DktxHZNKOb5ni+5rSKGl8CGEY7LTWd3Au9iVSORcS2a4xTTGp6lwwY5latYIPeHeLr
FubtiBPQbG8KOnpCXZ7EU/CTO9b/qJVowN0WvaeCFIM7qbbxhe7F1ajI0goPxF1o1HX/82WusxFU
C60ist5oVyEONnX9J31IX4jfIahFqPeakVupy1WxHcxfWq4Qxw42uPeAOYLHswwvuDMBji3h2mQd
acQV3+CYjU0GKwk34dd3rWKSS0ExvSS1Pc4Rtue/yEXC7MMucN1WYDBAOWEbadIpPcUrlYXh6Bev
/sq/i1uUs+0waB1W6OHiXFPPucsv2XbVUiY2Mj83OG6yTTpl7Bg1DL9xLTHZuU2yY2d+9sfHsdyh
GX5YZ17eDOtCZGsUzYfRV2IVDw10kXy67zVsuqXqshpbVZf0IQaG0NRxDCMuZwcfE8bOw0S4tIaN
VbzfGb8mLCSUU6JfZ60af5VZM3r6V1kPm2v/ajMYAclEql5aDqGtPLh0ijGx132lfCi2WAJZZBGy
9d15p9lnON63H1OAaee287WH6O4JVwuPzXWxyKRim16Dzb7fuMF5v91e4dJEICiPSrzGSMMLq8dr
KIOR57Trf2a/YvRSJKKEr6Il/GtojjC59nCDSSMdZ3sdFbl0olb1Pp7OHbrx4uBhe8c3qSdHWWSi
M46yqnAeUv+ULUXuyAhS8VgpfKO//RTuDnhU9rVNHy+qqWZKb4PD+Ep3Oqpfqm/MLsRYuENwy4q7
bERuR1ihpjaYtqx1WMoCxoqyZbHmrAXcz3xPXRiflDb0m8TWe8gH9ZPjcvUx4x/g3E/NNs+W5i9X
UCUP0D8PjwakgI6+8Bvh/HP7foC/pqfXGdZjZw+iFtZprupQbyhjxAqendujU6nN+PbuG1TVvH+F
djyDkNZBPoBRRwVAfYc5HD4Tk/jpCjV9lTkVjr8c+OXMH6FqHaD/VT1X74PYJ14I6Qk0XMlh/gSq
/nrPaT3EPTTQSyQSbWK6PdOa3miGQ8E9jEoo2VGhNZbww1fnsM3CZT0LcnLY79sHx47D0CAna2Yg
6ao2Az14n2F1f858x7qfDsUPp6lvr+RyzbClBAFrhifixslo/X9Atj+W+4/kcD1irWJ9f7iCjQtc
jxnCF4/PZjvWCszgOxyIdI6zv+qTJ1kypBKXm35XAYhLPA1yD5jOlLcp1JRHOgKtD63vUB73pNfF
TIWQmLKdxIvePlSbPlunWOyia7eBUgD3W2WETMJhprvXW1T1SiWeRXm7xjjZ4DDR6+DiypTbUw77
gOkqkaNRg6Vkv4z1WYwcf/wi1eyLPNVAnP80GJv8GPsj8CGfBTTWPyQta/aPMkPrSA+bk5fjfOiv
ljrQSkdfHITtA3OaSKVxToprzfXHC3dXjfrxJnNEHWET/vc9XsZ5vTID58Hny/gHomll6rxsieLg
PfSNtNN6OfSAGMdSzIyl36UtPXEnr5srX9VnBFYI3evOND0ujoAXPR0oIPtV96bVuT+bvsGH+dsK
GlzdDgUMi8NCtfkCiQQlP+8lxvwPHGipiSW/ohrqKGrEtaM2UaRouJOY99sVSeW+I940SXTIsVbs
qkH3Y0X2pYrjothrNtSms5w9qLCK0WTvZnkfoCoDiUwP4DiA5TOfZ6lC3TmFcqNuvEPnhlO9keFq
taqpXU+4sYQ4UD3MwM/KGvX9ODbS88aFKVchTUypxdIE0xOeKwnasX7lgzr2pA0akJjlFg3g8TNy
VooxJ0HFktV57QAJntdYq/v2mYBGOae51GI/aC5P7sEgj1E92fSjH1/POz5e97CfO29SPRF3y1hO
p192PkajHVNamNXQYTLBzAfCWa7hDTZHIq0HBXY+An3N6CfBgRoBNm109s+JILF/8RgnbTAp/PH/
Rm+vxO7DFHPQqh29dnCHz91gpVvnele1aODeyIMqYL8p3nNfaUKxixcC4LSZKIdiMEa6XpBna5cx
SPLAInIUyvPAtess5dEh5aukTgWzpqoglZXr/1t9+J8dxlMK6VKR2AUF12bcuhXcMr9auukyFsx/
rjNDAgH0Q0T7JE23/8jckK5Ddass4tAVMrHSBrJIFC/Dx9mI6bNugiROMiGtaKLEctSdUjviYc43
CPPTG56O7V0a7wg8vj3Kenj+QDLAvKAUAWW7gBScAaaZZNWJUc2+GuO5DDdgEwoLkvlgTV0njRea
wFRwLeBtIOHxLog1DFipYuMTipK0OHmMzkYPC594kfkuKno3I1AvZWbR/rKSLkhbo4y5dLe88H1T
PQJQ8Oe7GRhU4fIDYhLlAdKdoWcZSR4qvoBZcQeQL+LTFA5CEZV/ETtfzmx7Zm4JPqj2WP8aRplm
MPdy5zHLalfhwCgDVbCj+rnSfqE3r5XJGwTzKy+B9tSX3ddAGuzvFnTgCG89R/oUgxhxZ98sBWXS
5O7Z4kP1djBY4pxSfE89F7YGfBXaRIAzBT69L6o2R4DZpIjK8iif+EEFbuPeuHqe0ydho4qJSmDJ
GymAWMwd2utPxn5c9ttSlG7iIOj24Ktd+FqQzMfj6W0XRQgL4ccP0y6psfarMWt5ApJJIz0+qH4m
NOJHYQo0TcMND48nVR7drlEdmvZoA31Uc2YszvK9DmYb6+Ww22waoldQfwaeLoFOyfl3e8hIvZNx
LGv7fhVtfbogkRkIsw6USPbMYZKg70SoJwbCeWYnhSU4ICNAYKLrJcKWByBkHTmW22n582nowdo/
kyCvJNi5AVod3ZsEMarxsGXz9Hd0j0fKWtEv99e488ODDohwb9o3bBz5Ly9d2LiNqBrMWTRBqgc1
NFQxPp/WuXEL1XwD20NA5hOuawf8YDkReUV2xWPHwzqglOV2iDHzo/Y1gjpcGNwk2fmAaqYtGts+
L7X0D8ssF7bHJqunkpLmxkOd+iVbQs5IZxNl9aBBWfedrywBSCnXGOw3Mt6A+gKhKSD8lHkQhnI+
oMFxalr3EUqrV7iG6QP9/ims78ziTQ0k7SWR8OV93gNhChcDSGIBfXwXx+ZdJV32Qf8PPGbbpXqN
g1WWeXiw6ao/E/8711+51ADbE+jKY3XlLq8jxXgq894mYf45JpoWNHbU3vvJuL8l4lPa+SVpAf7d
6FZfdkmFRNOVDony4/ztTWobhQYQ3uLcm/dJs6L2bprmscGaY+FFbpawxgcw9O2l3qL/CMnlY5KD
wXqxAmbxN0Yl/0VvdZfO1yY8idghs+zYYoqBM9TzeVqNyOi7l9o6hAyotonNbXQE2RrILnH+Kqtn
ztCZpG3Q5B5K4pu8ycYju8MoUVaWlEGVKdJ+gaVc7JSNIcvU+xdKT6JkCcr/uE7in5+Q++0FHWG/
c5acCNBg0TCBFddp6Q8QPGigZq5nGNDz1BM9ysrAOIJMVqKaAyJIro6WlBlRt6GDyLsMN/cS/ylR
ySQ8ItGq3GLCU8YMDS9SQ+UgO06qv5vGRTB3w6tkmK5hr+OFS1mLHg/V0wmNbnH8AOfB155hAvAB
QGxcrjevqDQuQAXDJmzrB7WSq25/tjtlTRhJ180TQww5512Ae3OEXmF98VIvUZcEOaD7yOGd5D1q
79Q9p5Qo5LXdn2hQD8q8r1nJpJrqGozJS2zy/ucoFf3T8qRmds7uqCNML/xIu6eIHZ1ud/qezZX5
amnklBu5RNDX+kynlb/uBWb9gb9gK/EGqz1bpH309ap7/akOYGKYsOOefl39CKBXoa3p4ZudGaCR
DeOKLpjEJ/8cuAC1P2QdyORmFxy2IkH2X5uSfo1c2lhSx/N4YTDmZcsoGmooam3XGhDqTxTkixue
XWn9ufYb5Cdn2bfEfAAcE7Ql6j9f4sGbE9Tppl9LOBTNZslPdoApnKpr6AwkJDqq3TEhbbF3WiZC
z+cTSjm41qf7B7/ElEm6+OXr/YRPI0BQgGm49h+vIk9ux4NmgFjniYlERAa3LjptNaCWn/bIzPsk
wLQSxymlHjNT3EujeaCHUXYeY9epI3heIkFn39MTpZZ8ZFsiG4nOxCyVaG2JquZeBlG5217du1Ht
EexgnH6lOpzUeV8r4Fx3nOi/g7CR84V8GWV9L84vvR3ekDCK2NKc2XyjqRmlbBGRQnD8sM6xTNN4
Q54PwKakKqu9GsGnX8v5xK0ryTzfnwu2x/vxikHi3PlZdimXWSDoRB43Gz7SrOwqKG+xCIleQMEE
KuBDs95enY9OA4sC0JPBKL0+Q6nf9dFfy5KRflTuEtKMYr4FYy8uKu+o/w6RcsmOsYJI4N5lk1Zg
8QIhjyN67Og8QvglEe3gsf+356wjVSyXJY3/i/ujJnb0CVxmrXaE9N492Fmfplm0zx09MNx8FbRW
zINJSNbRbdpGwRnlPM2gmNIjtaQceba43RHoJoYqz8hG+TLYaqnfQkV/8rBkNjWt4ev67oo6vYN5
RfsleR3lUNw7XQB/dxs0085At2Ia6bo0Gz1MU31JWU1kFwJvg1RIraTY9Z98u0+6zT0A+lz7Ny8V
OlGIlnteBGrNfdd+CmH9321erR9bHummS/boEmCCmzKfAXDi7rLs8m9cqiw1vbaq5HdBmtIi9ouJ
w3jSDvXKO+2r3hCocaawuVh5SjJ2JBsSjZxfFseRqrg905PDLQE+eoMuEHxKHAt3jiZxncTSICRR
SxGGdFSBokQLEyf15CL8P/FGvMIn416zLisgrEc04e3kk0Ahz+/XNXTYjug66Zyu1wTWEqlmpX2H
ACoAunDXzv8Q+72Ayz143fU2YSUTJKg8Vg32jKchanmrdsapk17gIS0gK42zi607wKvbOvmB2r1R
tynW2nROvYecs5bmRIMlVxnSHL1B9uunLGQsCku+4rqTxG6ighdH06juStFwKEf3M4Jfj9FhIVs+
lLjkSaRNeOCZgvbcPdYZZ7t7wDAc2HcHZSpzvyPPQcp2CKH8CrqodQwEteyM/m6MOMImvSnuEyjv
fdFibOeKZDd4k+SJVAagLuPgMKaK7lrjnGeW9Ian3/QMv4ey5i+5ZX29qn4eRaMvaF5ZnroZWYPV
NzXzXnzjc6jij1LVSLYGkKMP9ivHs8wjasiWSRKiBgqAh6j7TlzRW7LuNluNkN8jpWaiMyvTEkUE
i70nMU6pOAvFmrifpQuyquJmuHilRW5udteAud8OKe0sZpJRlERrKgqz/JFiVs1z68Ss14MTKIJj
eMFh3uiFWaOo7AdnUXkmHWIt3wiSy4udITS921F4bvnaVGQ7RPY48HwGj9hC6o87EWd8Y/ib2GUR
vD+AO6OI0DYK8CGOZhr9L9iK+UTewVh0xG30AoHjc/ur2Wsr6G1ke/IzkCN90a/o8nJDHd1xv52w
1XmgjBz6EQvO6J1ZpXSOFJVib7c6EA6V9YLTR0M/hI05Pg+QBVJpqMTJOxxqbZ9JF8dIO3k+vOqq
oO6qmlIrCN9HtoaMSD9BXL/0feqm4E3juTOYCgotikHXnNwgFWac5cwWg9BnGmMMA/fZgzoiqvC1
jnvCQDuT/772EoRANAW1eZLWHZj92Ex/wJqdnScIQQtiYRIrru3EoEyhWXNmpR068ZONWDHRCt/W
nYPaI9qkjAwg6+XqOnpGwa4teIwQCXv3QLnFzzCA/GwVD9rbqJ/PsajS6P3ZWcqVTtZ5e/8TihIO
AnC5bdKWnHq2wueGP7QA+kPgbNZW3MX1/ym5mclm1AT7uNlPyKXPzze/AOba7AdQUuz8uvy7bLeA
FlmU/sYKFEKOJsx+EdLpKoF1onDLMBrVghxmlWc83v3HvCpO6832X7zOQQK+MO/F2VZgRMZIoB/P
fPhEJtv2uZmWrS8ssuqTjAVpO3Ac1K6HCJhE7F7qblTKKsVB1fQTGlAKpEuHPeHpkO15Zk3FugHy
zDqSPRUYoMiJ4l8FefpPYkl5d0iOLmEAx0MEdRcydo3GIOrtHmXNv7EIy3n0+2pKrd3kTDQNeZ2R
aClpp65OhkmpPXKe12D62PEte9P5uFrMlPRSiTvoRPW63SHmIVXbCWr5trnNFpPePgHHLUDbS0fQ
UQ6hhRme+8DbHkqev0tGe34NHL6xSTabpsoTUqQrZ6TvUusDRZBD4FdlZ26eiLIG5dutizFlCPAK
iwYUCfnzVUdFgZeiTxudgKwwq/ZXwOrjKKC9LYeI1zaEHHlfzJPtcboP2wKUXrCMFdBr5+hgvs/E
AqQWcnqShJRrbNYPfnO5SfsvtOqzKWzeojVQR+XC0FsMz1yV7XUFI5L7aSv5v6hGxD+Wwad7T08F
Av+/ecf0b3FZ4UkEYvIxn/05v+INpYYINMlQukHh/i8CmAYo8SjUaYQczdT3W62V/ZAV3oN4Nvaf
XVJoSG5/1bNs89oLMIVio01YoYeKwHH/5DmaQEBAjoi0wucNmnJ9zGPz169zN1e5HtAPQJXGiNBn
85tMPMotYbvtvHQGH2wM/K5Az8nqOiN4PjpSW33GdZc/5QQiuxGc2iOO1II3Dt3mb5yoDtmEJbLB
cLovxgW5XLFKCKT7F7qwY9dRUIQbzmePHJYjjC6xQ5FW9DT8b4q85VrOHjIOQjY8m/dr9rGLGwjP
VlN6CIem/1WvXQ00qIcT4TXBfVvBlfrznNYboGz+i4Kfp5JOe/08vwGjnCAaD3ahhSEzoWR8ExMB
2z2YI2cPYtz2mypDaWR5ci5J0cLgCnwRiYtupGEYjDclUrMvFGujSSki7UiCmmxMAhUwxlHcUp2G
1JBYAiNuN6YTeglgLJuzxlz/UUdJyNDYXjXgH0fbCGMlEj3eL2hNkf60ZZz4tZ94jvKYHD+sLoMk
1PN8BbJ8jTjv1l6K+lRrvrn7gWuBG5nI+Jvo3I7qXi9dbag4MF1w8EpsFYuKcVhVUf9ZwOBdroZ8
mrsL+ZuRtz+zMlIMWaZkqgACPwcKd4/iJYvrQeaec4MERuR3C4E289qThBnRpWkig8B61V98S5x2
3/qptmh/LU7gmbf6KiyM8H884FQVMvvKFDmX06pHpJHUw8TBUOpUTttJOhW3yjeTRFFDzPbSyA7p
yEARYeO3sCoe2kYJvhluabcjFn5UXovT3sC6vADdnvbSSrT6DshrngKJmQ5EpMzflgI6b+vMAulj
kCBh86wFv9glHdZrFV6BVGEV+2Bg1wmZCnaqGIgRdW9SNuwWkgZrrB6uB2F5OoAF8wDaTykQ0rj9
APRwN+9tes4Rf/oKhmBmLnoiSomcnonhJRV7lk8D5h5pEL1livdbdfa48m9vJUj+ISRx7pbBLgWH
za5AZ/JJq7NNGy+k6kABi/TFfwDLq2hScyzjUKC301Huigq84N0DVuOMxa2uyhtbl6e0Io9J1rYz
QB72aOtr8WqeLqoJe5P4opyv42epV5u1YE/UwBCNnkyIAaxEaPKtpFVgAxqkhMWvRaULPUiuUTlA
C2yhIOD94Zii3A+mE7+AHhrpYsz0J57DhqYWAMwE6FKjON6jqERbp+oKm8cJlgTZisaWnxOYVNhA
z1oRWEc1DDps7CkUudVfbXDBnNlChDADxgMdgWGhYq4iDZa52p9Psw1ynvd1arwqMBVWJxEU0Qwo
DlqgT9ARHMOIbHKHqN3JgSs0XFynKdJueWUmbxGeqhAA9Ane6r2n5czjaxQAb3cOmaX9WtAfqSaE
y1Ezt87q2JBPWu0CStyntd4qgQYx7MrmLfZ9hNH4+Q//EQERQste4Ht6gHYQe0wH4qwAGfR9ojSM
Ql10NR7s1B8y2ZpLYlOTO5Xx/zn8MdZv12ebtKRNHuq9Hd3sR98kg4ezJ5dZFM4gxM36phlxdYaV
Hu21/CbELZstZSY2VrjF9pPfjWZXQlRwvgE58RtRCpkJPbv2ZmalS/Da6sgPMcqLWZfBuiexf14q
2IwgrrMs1bn57ndxekyqSIdXwtaDCIEMGEPTv00ZYagLzKoXdfozU5Q5hST1vLLV17vUxFH/l90o
H4cuSlnAkMmlzTCJ3x2ZntOT9IvKRdfk84T0hJ504qQDSBIOortm6OxXdoJv3t3ZGV+2heGq8f0G
i1dhTUUGi1SRkpOA9IqoDFREMlf0ENf59kMvwE3I205bgPFLerPJJxUjnHcmyDnakN8f5EdT+Eex
Rdogp0KyJD4cdik1uHpp172tYQRhqOZfcGEjlmHXmYKp1skKEW5r1UzfLoaaZ/QHqJuzZitDqI5q
tFU1wMyWJF58jJMZv9kvkqXZNjnKfbF3UkB5doSLf1mRCJc7eEzHA2crSVXRQaNP4Pe/UaHvoBvs
ShTrSLW4ssaJM7OilIhnCtK6rtrbitynacDrF91oS8jsv73cV56t8YeEL3YC41mVrubuHL8lxRBe
Di2kseNvOApJZQhXzWTnCe8BoqslzkAZiiaoW7FTDhZSbDVLVucMDVYFGS4VaQ1xID2PjLryJJeB
qMnBrOwsVC5OStKB+n92d/ETMx+ADopjc5Bow2lMFUBtpBCIjL5W/wM/Emf/QZqSIL2dLQUrfcA5
io2wxOMSigCWTZI4x69HPPSxcZFWqsLVvgTMv7jTh5GudHdlh5Ats/lsP1qr704bn7MKZEmKrms5
4J1XoDmMooX9Z7Mia78/ihZM+WXHTIT75+wbRNClLlfJAMHkiDdB0jGdXk+gAN82Qa5Sysm5iv2R
42RVa5BeRmtSQQSCx8EqQtFUIo8lyyBRuZhpoIBKhaLGy/6gyWCobtnZ8yPKZ2lAeOEnLVWq/c4G
OFD1lL5ixInKXvcT/FX34DKZc2BCzcDZ2OK/IeY1Xmmag7bq1jhFNxdld3p3K/rP3ySX2uzzYlKQ
LujaAHpm2K7uBUG2lBOt7v036xzcOWwHK8j9WDQxAJm671jNfS049g6N0dsWTFhEOnK477dGlQ67
aFvd/QTxsAGV0IhVxjBX6RnGyUfWiYCdtJj+q5ClY4ixGed/UreX6zvECQH4VynBf8Nuf8gb3BGF
Va0dHn8fjCSDfv+T6T1uWm7Gcbdx02Z6YFEz67tF2zSxJCCZvqvuoO2hIci2lYfCWGERf2I83BgG
H+2eXhZfqdBaQ6sHr2C/VQrbo0wj0Zgaa3X9gXNoE4KKMUiZmAG/jdWZcYs7dOWGhjiSqCaseP76
D/wQ6cJwnw/BYlzpkorKnrEMMTaSp+arjr/EvdssI3jj+cLvMyVeH5h2lgR5gLnZLgpfK/Jyr/py
4Wq3OKPhnhQqL7ESTYH73FJTrTjwYG60DZJLMcGRyrzQLhLnhmgZZIqwxMzx392ZfS3wDa1r9Tu6
CwlO7FovsV2JHRRGu4Lk8aJSHoD6DFR7nZvyyzNIjdxKjjw2qxi0Y9ClpRkaoBM22mc+FTGD5Kb9
iI7zw+lWWluoCaWWQ/DUxI8WHFj+DVZwxd1C7P5XdFxRI4a0omzjTHd57GyI4TRilB2KhGUG8eXt
ebbUSOB7Lt20z6vAmaovDTYF7cfn3qEuPx1XgBtBE1qXabGSVdWpwKXOJQJm+beVxt2w8UkGxQPZ
zwYVbTZQ+BrgziMsDeToc4VHtihIih0YypToW7FpcIsOARvt7L98bgb4UCKEvUwTKRqHmiNJdH8x
ZE4WiAsXsXGU4F4qTlEPr84VYsAih3oe4K31ezTqvjZuLahwVfx4I8XXkAD5DEWJ4vQAm+XCTtKw
qNotCdYsSXVZVC9J4sPIR7wYvB3Sag2T3IPix9hQS6XoPNfHCIaSVVpNkxjlU/xJ4QoMuvx/hXtF
H3fj1QTFAh29aBzg8I81GLm1mR0ajJjWmQJktRmaC8eVT/SgKaWkvz+F6vpTr0D8F1555gJHVNQx
p6N1LbaEgjAvL0UblQmnaAHod6hnNugvvbWvrXe6BxQNZf+cztqYIJUxb7wmFd2aJJ9njtYozXST
3sCBRRs13Lmv6MD3nuskumZ5IoVCLu5K44w3+Ytl7p7RvvWm/pMZPxl1+YERhNGxGPkShYbJLd3a
NYDTTOp/vuUNM4b3paddzMm6H4wVlbo4kcgHMedaDuPlliI0F3BHNAG73lUZ92+aUmSFO1pCkjqT
fIC4T8iEr16guz2fHKmW5K7hibDblvjPAIW/qaTnZoflT2oOZ7MVBK/ARYMB99CErhagj5e92Alt
f5LbrOvt+6Au3cXdZQB104CvuMcLwAZy46HrpLI1FqgqwkOzjVpU021ReWiKHtlgNXS5b55DkNd6
nHQ9dY0H44UAJ8wVN+yBCtBtC9bRsr13fc3JSQhxl4Nn0Xx/XHvMwKoRytlWRGPdTKTlMMW9ywJ2
b4yKtTLVcWK4AFBHFqBSlY8DH94I6XLwdGH6iYb8Hd0i3RhdF2fKiCpqr52cwWmwhczpg+O7JKco
4uSGv9DNfkMfVtGO4xXG+g5nwB+NVj2QX/0Tpb4GD30V57SSHo4PZ8sfK8Yr+0BZyeNv8NPwwCH8
KULkzZcLTVGjJ/nluQb/JOMRibEnAOe/WgHOKEfvFvTusTCAdDiLeV1jB7Hyz0ZNrzuKB9B0jyZC
as77OGayPS011ZVfLLq900GfR/9aFD2w27xgHwfK7VDYSUgF1czV8dtkHBmD9o8ml5FkEUQWiBTQ
BE8lfFMyTz1YBfJJWZnIPDecmYZ8ulKfPkyHMranM6XHLR6Wefiz3g26KHlH2qcOnqzgNuk+A42n
Ie8+uKoJ2AWhvlay4wH6QPqw+DI734Nz8HszM4eAyx1A/KU6t9v4mEkHnqq6GLqTguhWBg7Rwydy
VwUiwpMLaCNmyH9KFGFRonj/VtvEGR8UrC5HBdRRgk1Vnjba1PrO5iamDX24pZ1zWzeeSsScIqxG
9bVZz7ibFESeof1x5+7enbO0IqgeYIAijk8IRS3YJITTGlSASwHX6n5VxzdHBErcb8/PEukdaFbF
ymL4/pREaD5yHbZh908Lp4Y9ZMTSu49qis/DYl21cEdcsEejYmXSZEy0r4ItpGiHlNuOgcmHEiN5
vSYymXqKmcEb2X/vF9TJnOs4ir+r7QiOcUQYYd3/LnMO78zyHqIfADa41QrqHWWO8Df+3B5e50Qu
VHwOmGebLlP9gK4HbE2U51NUoabmG2l/+ivkj0GP3U26IbGe1ZLv5zdLCeZhSEOUqxyVCh2LHFVt
X4shSA8j86N+SSeXMFHhv1V2ylenfsRmA1k2AaguOIlo7iL0oObhoJLAQfm4s9LGIBsvHJ8C3uKz
t8Ud287l9U5G83eNMN1eli52KX/n/k5g/bF9kIZRP0mGMkjGvMAi0r17R8FDzPOroJBqANGRD/gN
u+tVKdP44OHA/aIGcH5t/6bTSh7qUzIBm5BW737aWWUGqJCkeRH3gx5luvkzD1E4RmAgek1FaeA3
hEZ6jEMDOKg+7vA7GN17D7b7rZlE9xPMS9xxtKQNmK+A9Zt+WNXYfuNeSXD6DO4c+ONO7D3U4bgS
LR5jM5KYuI7UcQ2waazW1zFu+l4Ml+slhYfUHpX4z012eJzMJMinNqIIQvdACVeSyTc4IiquZFTm
Orc2Fj8LoXyHO3zc/hrktwyvX2/dnaGVfeiiNGOhBeueslv1gQ5x9kz3Q5ar54veZF+OvTIH8cXX
9qNrHlGXWbz3fo9RfIww8sAPwPmLI+roepiVR/SVBE+MIJsxF92sWF2JQXfx/IsxaTd7O84rVlsF
zy9lPqjoSByzpQkt/tUkUNiyAKEG4te4sOoSx0oypttOQPxt5LGzUs9k4fBpN5wJ+a42vMQ5hR0h
0zNZI36QOm963v2PABr/EEap1M8WM1P6jiYr7O1fTFxOX/F+kodHOO4rNy2+Zj7HgJSVNhMo+dck
783EW6UEkSmI8pdjRZmtIC78jDa+pOY+JzEPLUUsDAIAcNowag4Pcsjc/d2ASuiTBW/CGk+cn6c6
TicKZjRO/rohs0sNtq9IlZstgSsmn/YpJa5oWHg+GlTk+FGsgRcX7N3xe3dQBHoUILRvhKwYn04t
7XYJ9+aImt+/iJemyJIxoCCdbYJyKMsfR3arjGEnS1IzPyjUtPGZPjtuKJI1B7ElBCQsL6EK95ED
CHRrCxAL9akrENOV2QaJLo1VeHEshddfCQWGth1lKXXqPthJBDPvfHocDX3Y8MGKV5csIYVywjBf
sEmU3Ua3r3bA6xNZmuNYRD4L1VnqbTgsRTGAqMOgKdDu6Ic6KRiJ7ckqGkcowMOjcno1k5xwVX8Y
HTKp7f54JTUugQOLmpdynMcSGK/AjR6V/pSF/iLNjCD02xHU3Wkaf/fl2eD2HQcYkEApeR0aMP/e
pu5uyAnMGhCAxiZB9prLFP+CKcbrttJKFQm2XxxMlkaqseVwERGblLL+WyAdEUG/L/GdUUGFGDyb
YwnPE6dsNvdi1pkoDa5xRRPe6DdRKlyAX9MEnrKvXJLCQu6bMKKxaJ0+RgbCBQmYZtlRjassSvWV
J8b4L8LoAImVeeoA/qOV1PEvlLkDsQC9QbEfmJGEwfLAgjUy7d6OeZrdYxVxLhrn4zTZ3Vbum220
vfTMvAiDc1j5dP3ASX7CTmg7a33HIOtFuycl8W3uBnmZCkAq9eyJSwF6tPTkoRHiycpWiEitb/78
1gppvEUVBlkixOBV/wWjS0IUN2z5fAa8IEMJjUDZf/pccgvZcOqZ7G0BZO0vBycPTnOordIjpQW7
ntEVOK4/22/EL6N43/To23vSSm6hVAuj0vKMbZ2BsCtliHl/fHaS6MBtfuIw+SwhOsHrxv3wQ5hZ
+hiVfByCvPUFpGuC9kVi53yApG6g5nXN6wuKPbn8IrXoVbWE1a2RykzWzOoaZMY1Xx0BFb6+c9Oe
KILWJE8rvJGDv/5GMeaSquAxbaBPihnaFJFMwsl2KK2eFh1P62wiF1IPrF98+4+EQsfIInge/qDW
iezqnT2bmX7iJ01kyB/F7HmcX5CihwLCgmJnzKufYIB9E5/+5tMUBUtcb+EfMQ1DaJMe1aaDgube
egneCH4Boiv0NHbgOVD5j0oOM6jCRMzv3dhycPoN5TVd2rlww2FI4p6jqYs/eSfhbQ+GqwXC0NcZ
1WUXpgUD3okt8o/WyLLrY5pK4pmlaFYNf7ZsF7lyT43+r8b0ngtZhU68lGCe+RqjuGvUFMyP001y
/zz2zB/EZ1fzNZNwSlkcaG/65EfFiq3Ho+MAgbcjvPNC0PT1D5Xj+RPv6FsykwqIBWCBgtsyjyJX
CiTlBSGk82FB7pIdXCO0wKuRAQ4FYNolTm56bPA6CGFMcVkXuKIQ1D6r3QfCk2pOQV8FkcSyUVR4
DRWlIeDwzGuYltU8/9vx6AxOxpefP9VQuiocFaaf7gjiQFA5U2T6YC3yyHmE7y/2sxJjYdVcWij9
iTkCKi/lTDfRDVZpeypn7KKCtIrppnOQGgsbNeI7Q+Cy0NC5vi6ornXL9It+ZdiU/3mWkWB7drcn
95id5qeH22lTmKPZYft5aCcOcpYfiVY2brFF99yxaIBIARZrTjGi31zSkjpTTVrpRr6bIkSuXNRh
EhBNnjS2W66c1xwGJsvje/BdmXoQVQ/zzxCr5V9PGPwGIipQno072qU7WlNOV9WHXmiwVBdUELNC
U3lmY0WxGdMF9aO/cqvQFrWwNXk7GiymdsBEBQQBQPhnw0B+S+ISPshffhgmGQek34R8O3DnvpPX
mFmT3iHRmvE0e/TFr2XPa6fyOlkV9/xI0Ra4NKM3MUa34yBV6ZzmDjpF8wmeZISuz9qmXcjqW3Sc
EWE3SEtfLx+FERzvu1o002MqkPPRbueNS4V76WoLyrB2j0Et/GSH3g48ATXiVOi4emX0uLT8s71i
t4u0g/H3dzNG5n3ghx8tHPjhFfl3Py5hnbx+ZApFw2bKwShlVQtiNdrTHVTqQ6PkkccBjxtIsxOF
HnsXF/8CzZ3spFcx6rt2RXDdXYkuPPFdwGlDiU3jzCFfKWHxfpcr/pYhLuHQAzZf4Dn2fo5gxXu7
TfZRewXF8699ebytXOrUFhMs3UDPSqQUD8mURV0P8nwWUpfd+0aY7fU4t2eVi4fFkjcxCXmW4I3F
5yyOaT96UKNXIlhjPHmZlItHRst03ptbFpVnNrF9s4q8dX6IMhy11QkDVYFJyiSFVSmI8ZsrFUOZ
6w/avSogE8MK98AHUJm0EeLcymMs+wCi5vGjN6VaaHoe5cjN4DxoIXY9R0yViWk4sdqrwA5WzaZo
AXSh2eQSlktF1RAQ2H0pcyCCyOPNDh6ZCtaA9wIgFZ2nk2XJn2O4eZRBa+PL+XNJvaOOalS0ib2s
nqt2W/jLyjAuxAT7lgrN1BR9ktlgQFJJYlPzXFu03LKHmUSWnYjyBF9hoBc4lSrYhuHuXdKZY3rh
+yRy5OxIfofT2WXnuKfY7vKieVP8VJIJX4ezLbzW3cQZNorclnIrj8eVLr1PGgloW6jazUzSPmYu
1oQU1gaf3+RvdviYpQV51YxXC1dxcq3g4jWr/chUVItHb1OgibCHh8xGp6E7umTyJZx5Hi+UZxzv
wk4MHQMhIwx0i3QJ5Lc9mKxtxddCB+lJGRZCyV4tFwbHO7XPJyIA5/vHN6cyx/BenwXFMSqrdzMw
1+JjzjgBGLAPuAezMwF3Nm/jk0eZrsbag+YgbV8vBANQu8+vNaQPMnoHcYtHSnzZLKGKeQiSK2kp
vfX24TUQVKiMichNG0FJJtRRU0lnaDneRT0QkIKJi4ghZWQ9JQStcby8ZQPGAFgCgY0NPI1YSUjj
xv74s/TK8ohR2bNJE1tXqZTuJFCK5UFejUQ6nkw+eg5i0ltQdFKePKXsmaxtEPeUwYZFpFxjiUYe
sxbChpBPfnatFUWTOT0j7b112XVVz3x3K1LnnWY1YLYgm8jMszqVH6N8uftAyCwWQq1cQq3VRGjI
C76Ny+Qjuu7UBfPRMtPhNnira0+Vh5FyQn/WfgKFQe5971BUbcMhlLoEjjhC2FusJCGkQ9lKLnEZ
zbYiG/gU1nHi6iW+YIuOX9lBKljO803d8jmbl1Cv68GnHxactCnAE56US+XtyYwPZgExi6mF8UpV
KEGR+qBgrRG5iwd9DK40cTNaacpShGlUXK1cV1q24BujRSrZyObTXAcNX8uFyfqgyQLxiq8oN8kj
gz2ZkCk1NE1vCHHUBd2zdYR4N7a58K3kuvnf6mdIYpLRyhrx9lE8Zw0AubnRV73Rloo7Vh/btYtP
2jqoKWzNBNHOQaPtcwrSWkkZixVzILbba5MvAHOUtCnFCLzecMKb/Ane3yPBt9r/74XF4HUubPMW
hzFx2B5WGQE84DAefXRitRadMe8IWbVHnZIGD7a/EsQxJpxTUtZg4P0Tfot9Kl6oMFLSyoMvORJv
uJn3l0/RXu5/4BQCWe4NILvJGAZtQItODdGVC8gL3E5c4rQbtt9YpR81rNrv8K1yCAG3cW3efgCo
BDbRaWUo/2596f1C2Bo172PiNEUTBN9YOezvTDfSg2GxojwYAjt4pahkz6sGtut7zqhWN3bsNMJa
AOEL/VLARXAcyzJzVGeHaPtWq+dtAPhANhsMxFKfVmM9hWNCjSePXFRbnrWyM78PJRQd8yNTFaAp
k9kDncmy+RHVei60XzA3Vx9dguo9IVlISL8E7QJ+zz+XsiRuzWNEYpADUIKbSrV6tIdSkIVI+kxB
wprVi6O+hFG+dwg/gHPQWOTSzSeekI9/H0st4KI6vDw9c//ulRamaMAtVxLhPwYvJM95kFvIww34
bZjUN9uM0D5aG0/Uz2wWKHDa1H1Cogn6BuY7yO/yk1h6aJgORsIqI8F39sj9JLyG7L2iAF4I3jPn
AwMi4GxM3aJF7grVT6kgJ68R2UWLGox9YRyyJU339aR0WGd5hqO0LbDstZI/KVF8tY8HMYQtUzDS
vGGCqyrR6vytpCPKzcJxQJngMB6Bl1Ky+KjgnT6mDmgYY7Z+nV8Tir3HlYt35EAdv5Iq7L/KbbfT
bNgikE2KX7PGe7UfOCRoLHcgrDx/2WWxD2w86ks3rVooI+fHgO0EgTltbo4EET0ce9oVQfzHYY5e
MErK5DuBURGsfZ5ZdruKX8/AXtD6JQXILkBtCZ+jIFSkYplhpwVo9t9StJmINa/ZzZNJa36klxJt
+ENjwGTyP3U4TjQG5QONsucgEpSxxR/a7ho50nadaX3Pcno3yq8TbxrL0CZ8o2nDsm+mTiOR7p3W
mep+xcXvMPdA3V2OOc9HNNf7yku/KUsbHxu0E47Q50ruDPthaf9kr2CmZOCbG1NLmA1M7DDQbP1W
bmLKBnRABdX7pnNrrANj1xlbyaswHTQKbUFHeMvrwkLViIaQUPFix+C5Mrs9d/npRXUo+6H9nVUh
c40NSdVLkBBwpjqvl9ZWKlsFAh9I7JGZNwFE0U6T4V1d1GRMpf+MgAKiP9Pt1Yz+DdpFFEzXhSy7
8qwHS5u9hUvTIqtLq8aVGjRJAGSetPBDBom7u2CtXZqfU9hs1Ak5toPXx1teHfdV/4S1y7bJ44gB
P+SLy4tmgIDH0A01Xo2Z/vJEMpGFrq7A5edOAEQxy+oo6Qw5l9E8InH6aOaOi7XYifWHUbCUvSgx
kemvDYiCfka5pW7IvAYcW+hQN1y6GsdOy2CSzL9ePnJw0ESSFnPrRrr6uJzvbcezezk8tIjs8G3h
vQ1aLH+gSTK5uvc+jkjZJHqc3fhPv3Xl6A9Kw0Hf1tuyRlmIIekYh2FrpbQH6Zh8C6Hgo846mzyi
vD0ub0ueQdH6KWHN7NWOULlhpuPumSCM6hn+TD1A909Po6Q32qXSKz9b00tI7iNYyrgOl59LRoCB
c8ymnwFc9kvR3bVQrtK7nh1s6kWvZ/vX5rV+iTK+scXISmh2VInTu1hUNYZ1z1mk4PiWf1lcbLnk
MRjJXF+TXYMTDd/I7frbHvJTcbb59d8o3aPeDELYiccAtoNrIKbxk9MF3NFXSNxKz/jWMdSF1L1N
V6jiR99vBFckAOkD5nY+LiqQUG8ccePqwXes4deZYQi8If8zW6dUh2JCgT0QZlGHW4WTTDutc1q1
I5ohjRzJZN/VRpUncEoSM76nj/saNjhrMIU4yqakkW78i/pbDyRn7E5SLIRwhcREKTXn4laW31O+
wGa27XIVBRV8xzCxblWnjN4P5twQQ39HbBBQ34prVtCnSzTGcBXlO6GgeMDvR2VqoylwZgMYguuC
N57hQjg/owOLpEZZBGDcgHw9YHaFYwwUwxLk4W5/8DHHCPW8wZrFHokMY0Lh9AH/H+8Cg9TJQVQB
fgdx6tCO7LPcf4Zid1xdOYGigDYGsh7vsDsGF/iwovT8B72r1HCCPaEjRqe71uQy+A2YrF6ieQDY
NcjzKTuCghPtcmP/Ta+z0F4J2zl+b/rCsd+gv2SNwBEQ+CyU+bwsPQu9Oq2xJYO7mk3mSLuiOLML
Di50QJSN9xU+j3U1GW+k30Ci/OXcgZk6kC7V3fpf4vnsBvTq1C+bePnHbf+zx1BewJsgxqwHvBCR
NEy8BGSgieV4wbJn2a3CLx9+Z6ecbwUo7u8Qm4VEJJ55HdPfKK2xGkelK6Z79ql2D4LZ1ifEwPo2
d3QV/tc6nnUG7hZE3dyMLWoP+1f/RHNb+L7lUGhcFmpvhiCM5gIuK1xEyjioJcL0cTIIUZsXPYN0
N2+S/gLrsvF80X6JbHbhZgCVKAbd3RyEwSraY81KWVoIUhdGeiOmnBrqBVXoIMZP5ukKjiFq77gE
k/AH51sk3XjQioH3dyQ03fLwc4c5R+zlvs3FORdGFimHFlJfw3KIMb4LqsCL/JzNrTRa0aLhBNBg
ulok0S+Rb2uo25G20Xa0UU+Aq9bAour7TMucFLhTFVzMvuReiK2dd1c5pjv8DMOR5yDlkmDnBvCp
Ie61/y+CZkfoEuF9NHtBv8ePAeD8XgrpqcIA0PqFu45EmK2jxGKCLA6sR5D6wgFoHGhI0j5O7sga
99NbOT18xTj9lw/ZOpmWPpfDJKOVPlfYPw0htP0n5wmVdj8s1pChLDNltnddkvBbb1rXdshuV3uQ
eHkqKdcauuBuUWUJLFQRkKoUnnDHB1/NbeZ/smG5VckOYAQ3yN6Ketvgax2gSxKN7AwucVMbhnF4
vmB0YgS5XSr7et4AHtCTAEbBcUtsMyuvVOkc3KHei3tDqTcL9MYjUpihzB8EghSuVa2sEfyOmjwt
tV7bOQjZ3WT3SARjhZBYbrDdh+cHNm3RHET8R6IdE5gBde43TpTtudRgCzhBlRgIud3MMCD2ApM6
O+D1uB9B1NxmSGdOfN8GLi2TWRfyW3hhtfHsmneKtFh/meZtk5sS5Obpw+g6bps3j9hZHk3SEo1t
ySjp0aX3pPusQ4mP2n+6oXPskX7Fd6c2mC7bwqwxSh/NPaU6LU6pebR/WfWFHeBur/zfhDiQc8UP
VBoDTHFVNKAzfhLAxLoZs+FLd3j/xeP6k0NxPoH4/DMlcCNq8KANEwMPcVOC5o5jXUT51+kic0y4
S7Jc+DleCCBwuc/v43dAvbtVaUO4wSwUEEAkl/tTbGx+aw3YvQWUHwR/xTurJNwwUDFuv3q+Ly3G
J19RamPFjLhhDubjTh2JnfIA9zTfikebomlxhOVzo+AoQa8SFi97rnFlMSeaNdmTerf33rKrAoov
GAIMoCk/Wn9N0Di2fSwul7oW7P9BY7qT6pYPzCVwrvRbs3OcZdAmfrf8yGVYEiw6wxHaZ5FLU81C
QVoVOw6oxH6Ugx9ppSLPu7dPNmiDi9CSczODN1JZUkiwkRmn8l1wNQCs2WAJCXU6rjfXWD90Ay2S
8hG7kz7iNYkaHmlAZl1SmM85uxaPFV5cu/+Xhq2/x1YJm9FA2TGyfb3wlbPbU1X0YmbZnYNhQjpX
bkADpDMeArxY/gkdLBt2q3y4kod4QYhUmThZm4KB+UQpthfRN0dafnBgPkY8Ny3GxUZopUq7hsXC
4haGobdUP8TxJbTvFpZZ1znGUT3CqJ/a55BFcfw9tR9EXk8U0hOf/YQBTkMUkLZ+iauyq9G8/6N4
J5t88qj8F7e04CkclnRtNxTkuoC5Xehd5Q62HE6j6aOzTNBHQdT7vFkjpuZkAzzjSvqfdSk9Dwzy
n2W9qnUBU4oH9WRvNrnInsHuIwjVOsCzUQEr7vz4JBizymw2+mCBXs4W6BkR2TuPT7abLIFR0mIt
NdHEla4DoKv8DR+hfBFMZkNcapawpL8Gu9u9Hp9nrUqrsrrW/9jEDyZJVajmkEeZjz3JuhkYPoMI
jSFPctkB+4gyimTpBmhxti5P9LAZ1ii2HMofp8jGruW0YYxis77xpLDZL/52AjDedhAaYtYUpO8L
Zimbuj6bH+HtmNglmEjei7jboqnQ5R9/Mv2WOy/Yv00j/dZXK7Wj9zTG0PPtO2u2jnQmGgDIEhBV
hmsqMLNw6Y5aMnKDfC0vGkiWGoqRkZn8ucWYxTHXclTCa1LpTIdd/pnaAey4++De4uyhjZRniAgD
lCDddya52eLwaXjmw1trTKpL4YJUUTrHFwYiMM59JsmhX9LDbYweyGjo0v7la4vg3pJDJvaauaeO
9k/XDStcBNAQpAzsyaPtvPF6xjuEFErECNUuIbGTETb38RoVNcAuvcClCcl2VSR2dDJa3FrpaotA
sDMX/bINc00NJxrTngXAjmnyhWJofxOCRbnD64ZJ7ceTsB07Q5WRVTd9pb5aKwQODSQrEPmbNQNg
SPcWIXrcNfcNju1+eejkIi05XLau8K8iqDFEso3WmNOTtLSERLVHZ8EBwUWU92gisUL0ZMYSLakO
hkc0CKwJPLC3nTZTWeUnPP8AV7JzxfyMKXc+YxZ6HGm7NBSQwMiuQ9zlUAXwhyo/6+3mKu/PcDOp
Pi23VJOl9egblpYrbMtd7Z4R0BcPOIyL/9WB+4x1XbhH9NJLohfasJIjCVqvt7V7HTpFHbsKyLtl
DS10bJoCn3wdd9VIfXIGAnYKDyiyVnQd547hMnwjV7RO1AlIftxXVhZ9rxOkbHL2ubeNjV2O29gE
gHvn4+eqB3nJdYtMwqh7f6jeTkiYAg1TbYUojUrew5HeRH6l0q7dVL+Pq4rGtycMm+iFG2HSwiSX
cjD03ZdizgFHNMubjCGQHMcfYe+qBSKJi9qUU3Vz5z4QkwhZ0eEutgbRGbxuD3+182sXMhsQ3LHx
vGfsTkQJ5PrlwS2RdbeeE4maanJUZrUKht4d7HscfqylKP/Wrx9dCYvT9I0D7lIcam5dnHlg/cVE
uI9s8W70rHd5mzS0UgorNcJhghPMpVgw1xoRADMUANMJXbnkZccX73MVd+wjhIN5/zcSzL8vvp7P
50w3eLUonkaErGJXxABdwHPYsSyHhkviSaZl+8F+MSxLZVq3fNIsx8t38rhRGCivIr5CXPUzUnQB
e420q2bpztztRBs6HP41/CfOung8hivm7y046+sxsvV/osjttkTEoofWGjTzcf6YlNi0Vq86QPlC
3N0Cj4vX45MGhGejI3RVlzZnlZcbPNaMJW14cBLeTRLNOJBeGlzdRJsTqYcxV9NRG+vSTI6u1RZZ
mnv1PSQ+RPsGduYdcZ0krtqMlRse19NQhaU2QfjbaIm7iTHEkV/7yXSg4GgFRX0HRLUns54um/g9
tF2+1daXGDEmFyWwQ7xz1L1WUXNMthXBVcYPpLOEoRgQq1dI3TDWLNvhnsY2xetkeH4NXJuEDjRR
5iueupWf61sMJVOWDyRUk4ijIKg4nASMbMSPf+QrN3wK83grARAVtf6UaBLLNYFV9KimjlcJKHc0
l+9xK2F56p1IuhzSqt2WQATq+R6q351vrArdVA08OvLzHt+ssDeGhp/3E0rgQmJb22qMKYLoImL6
d0qtRg3+JlRcGhqQZgt8vghiaLD3hI8nmm2iLfEATnYwoujEF+I0jKP1SNUrO84X9gOF6S8aEDad
xD3mMsEK2u2XgIgxutbSL1lCKbJ8dTU76xSUC02ILqwFQmO3PET85J2wkIRVqFRbzQOlzhZ9/yPC
ZzwtzV4FzEOOLBQxxjoGIRpPcqN8ls2uMy9bdumb7pM4BUQg2djQKTvQmYxi5JSG0S92sZZUByYX
cgh1raGQFPgekYIzT8wc3fDC0Kl0rDDD8xofFkv/tZIaMcfHsSkYDO8Tbgxej8gHYEaJHd561ZkK
8ZK9Fli/FShRCphIY2gDF4Rxe3/g7Lw3Syypwpm9KB+E+jxMFdKlQmRVGnumZPjFOcVumrcZzuvc
QlVWFI2Sjp2cYgOMZKkAkRhKEKcMSglngPXtZHomTX134k0klpWwJI/YRWfg6CLV637owliXgIL8
+OZcT6y13Jh7jsRQHBt36KoN2Z6W2wScqITzacynGORYf5x6bZ67uhH9oV70gWA1s6iXgpMFmFMU
ogp/Ha6SxmOTXw5jdt7dQ5iclfdUS4jNaM4ig8WB65ALAR8C4/j6hAFeWdk4inq4VPsRwyrgl30S
3BOxcK/2JaRbCPeaSIOEBT5cojWD4UQjy5jqr4fmr3TcELsJfIjt2F5fw8MksdYIXTl+zcDw5ClW
4KzMRThD+ZkBBDg0KWTsgFNgyY/Uacvvnmo7WwqrBW2yYcBD52ROScKDehyjhKjpyu0XBVNHswoR
s+UCzx7AmWJglrisOZ5VB0H2n/H+gSeaDaxU/PVvVdDdUDId4eBM0JZ53fHzIsKfZnotP4MNWlqJ
7JpZQ8ZxvyyA5zELbayqRVis07YqWyzNA33AoO8Ac149MCjCc8E2hFtgOWdgAv+afGN/PqvKNDJb
NMAKWBiYmOzl7AYhaa/OOFGCuXF3/DeBZWh3XEqUqQi4aNsRXdkeJwUfABw+/FlHbzWHnZ1A1c1d
OFYsza8ObOfOTeMfeu1Mj1lfrXlgwSv0rZ/E4vfwvJDQGQzNGFi1SJPNgltkzX/8aoJ5BD1HEpTn
DDkzcQGyY2Av+3lthw/RiXf5fhAbZg+vqqnfnuvg77EL24x1GJPBcPBHiMvts1H+Gah8ZGTmnrrT
YWO/wFAf1xEEoAW8/zmGlxzvlVMETxK6om/DPeYevnd+sPo1UNJmgMe8gIDODG9Ira6eIebdEK26
X/bIuXVlqxWRbGwkBmo3ZgebxsuL9Cph4PRD9mCAzMyZZZNY+35xy/Bj3sNVH4CedHhKmO1JVsxI
WXDY18Gcr2+oi9x+Rz+4kBBM3AUV8b5RMXOkClHnOUNLU48GPuNMrBv+/1Hco5Uo6vZB/SXK7bfF
WVS+uj4uMYsvHWXeD8BB2Q6PdNJGEAhZhcnmU1FKamQA8nF/0qVKuyc4nbHFFKZjjvGPz/JA3WPL
NJwT/h0p6E1gA4U4PztZJATChceSLZdjNBTKMF+LoMzXO9HOwZUcCKBWPPuUS3BqeXRlgFVPD2of
XZyhr/oBL0kLopBhROLqgitOX23QDCx6QNjirfg2VPYcD6A/VrYyTzK2/qUcHwaf4tUdxcmXp3+d
7pcZiJoIfOAStJssJKMiLqlEBCm03CCZb8rmkFSACs3VjKZY2iwNB19VM3ML8XnTKPySp9mtbcQ8
6zuBNIuoxJlOHjETXG2bkzk3gyfYhUE+4gI+JC6vgSJJ5B5BgNVvPDuZ+xK6CNzrt0iOgt2ZYbQJ
5vt4QNXEmKXyzQfAiMDtBKeUo1Egp6Z/C//jXRurZmhmwTBu7DHXI0CZRf7ucOfZ/qfMwEInJR7t
gZqFoBvczKwCSMtr3zFGp1HdSVsWxl06K9Nvlgc5T5tZxXup6r4t5FIvGIgts3YBk0A65GaAZ75E
Lzsnu3uxCbLwsu0nNKQyRxRNOdNj+5k/HYTNiN0RdJRvfa1ohb6a3Ge8v67bjYANi4WXV9/fXGi7
Kw5LN7vorJJgtLzDFUmGNHIBX0Ch9aCcVVEBZcChf7gUqUi5+598NRjv60H5jCOLZmt2NIkEjZHK
11Rd9h+jTleDyZ/wASs22JeI94+HSulbA3AJesPq4lc++QjRerrgDIvqMPJxpBwW75JnDcJU/2Z4
FTMxH+vLYTmJel2BJEFK/+kWiXN5jEyIr8gP38TEIe7i8jTx7LUmAHxkgoH3EO2GkuTXlLOxJnIp
jI4KOuH75TDEiRfpXR+lU/kmBBTZhn5DMF34Y9X8WJ94JGuyf3NZZ68rbrCVGvdrsYLQ1ijNwY12
5L3zbJbZ0Z9uZRjrHdan7zpD++CE65TRgotoXisKEeb/bIwDOKDefCNXukKyEZbk0gQ6Z++Hh4wA
hervJp4CHSlNuXrEJDcKpWHSqHfRMsT1y3MRxRYoqPYETFadTTNOyp66CnFP00QDjHojeUe+3qgI
mt4IQ6Jr0blM5W2294L+mTYVFVP62UYYknqT1JVBVefKmUkYAfOqJuAH57HwWj7QLl0txSNpIYov
ROz8A4LWWGFo46X+TgwsV4iURZcyQmPv4Ul0C5iReWUr3Nl+sGeUPEY03A94kFK/ZhyLb2FTVf4w
UkIKQ1SXuNSitUBOXIVe2VUpkZIpx/ASR6Nx9aaVG7UynZap1hZBD4B2z4cKBygV/X8hUvUXPjU3
FKjMVSNPDoUdy+KcYGCUX074sQqzJc4bhP6dt20OyI1sL7sGVL5WG8WhSLBxa+MCd4FTVhmdg5Tv
1DIB1oM1RCK6Yypv1Ga3SUjKIwDOBKUixG+YRSgdYG2ua1HzxctR0JBkI+PvallFuEQkp+EyJgQ8
ypGEzPmJk7oFvx1tbtG6lz1ufklZq5+w1eMrxSXylb2dIKRaGzKp5UtNBUp4VXIzWKlfBvGHaJTZ
GrNQrkMkFFpV9xW5WgdzNNPe9NeayYIuqXfx3JVniZ+u3MlwBkpInIYERZHkBFj/kiPAw5CIzAI0
8ecvCLSLDDDSU32CYV6QpypSYhGsnh9hVRtgWE09qymLDdp+HUTJDoR0+sggvubKVa6S0drfNqD1
sPShFpUGc+eWaA2A9n8gOLSPh5XORIFQgXG3PnnOnOscqdFGJoe3b+ZjMycBbQAIbieImwFzsjsi
BuP3UFYI1d+ld6tXA4bAxYXRjOP5DLWinFpz1TYTYiPVrk2oZZ1T0TGlccxiE76lo/Q5DQ+uNgWj
Etr2Y6Rna1EiK058f+6n0aJkyLJQswfJ/3EmuInqnx3Gf17gBeuGCWyUCi7UJEZrqo2BP13mgIoE
NvSThMvZVfZ+e5jSkrpVuTfcJ65SJYcTUOQFU5p5Opi5PHwuCv+Csr/skoo0vNeKdPxM2tPKozYZ
IfxbjvbSk1ErC4sHKCvHF4tMqJGMeHCc++9btkidGtskWtIu+DKC1LkbZKAoDh1kSvNXZMXq/ZPa
rh2IQZ56xugrw/yrA1kkU1IrsU+zv2Dn5v2hRZdSUFqlvKQ6CqJa4R+hOqBUaNOLN2e3dQrgJ+XP
/eUMYqalcAsGkgwbbeat0Y7q7t6ZSj7Kn0bE6bwi8sW8xWs9lbbh4/i1eGAwsNcqcw6ZtlZtDlKQ
qokb1NvI2c7yFVUmC7MmaFgPhwbU5Ybqq7z1YSVQLDUubEIrg4xl8fuhXF7bwAMKWGR5T6o0n7NJ
15UUbTKqf6paBiRPyF2wDqjUyUweSFvLSRtTS2GiN/KjcP09KlHN9jgHYc3waCdhlhAAtBdzQwG8
eZ0G24KcDHE7tghPlk9KK5Nlk93dAymxJdBGOvSdCn5eWS4CBW/xC6EF0K1UAQ6Ho7aBl+epGIqy
/1H2cazL57SKrM3bJmExjwAPZaKdroXXhBycYai9ZFKuHOCrfJQ50vfx7ExkQ2ZQK7lLC4zlmgLF
HtcHTl+gtcbqgFPKg4yvRDEw4pOl8ZufJCsMR0L+SxfJ/RzdEUBft0VvJFZ9LMldr3a4dUoHlqBa
GuY6xlwTQRyVS55hxIWKOLia98aFIzgczSVjcOA3XrxS2Clp9hp6C1Kh/WJ5bL+mRrZwK0psiYny
Y403IhMQOD/cCz28tsW0rEa+Xxnci4hjjStOxMlfAR5WOU6kbgFpL1u8qvRPi5PC1jQpZVBJIXJk
ml7v6wPfiTond1JtinDeiSVcHero2GNzz+YJRAjtA4bMRylI79xU54VVkbB/ZfHXQOxUm56voDH+
JyGfQDF0vvszwXY9WXYJFi2/mYkHXM6OhuYEyBppD2gi/DSS4MLlr72aisdiU3cmcqM9ht/yyW45
KQhXGiQBbqosVzs5/HBwGiocCFRF0td0PEZzvfaEDvjdqj5dGCNlvVhAcCAD1sGPaFM9ObrpfndZ
k6nTwOX8fsVDtoGPeVnhROuG69XCq4OxuMx9y031C3664QhPSveYhABV2MEidJK/yjNzv6ypffqZ
BtezZznL+Z9vuYNK/HPOex7rchakyR+qJ4p8EghVn3eTBR7LyExhCB0b3k/lNPrk5W7rtLMsTqaT
dLwnWdeHxh9qZDULry/TeU4TkV4/YdwXml9zTod38pQTj8lVUR01ectzOjkBSOiLYlgk2TaUaN+w
eoF0A1Xj7Uu+xNBCgJdrafCoxddTngJ1D3mwmFE9290+CqstGD6XmUwozR/QA06pVM5JLMnDG1nw
UKN4s9DFQ3dgNWidYXIDly0gbbGEqkP6jUdaDQk5mBnAFE5w2WyLRjybUp4tAFD9YOkFfSQLR23S
ynussobLCH36KFdpmRdNB/yo17xBhNna+v/ERoEEg1nrZgdag/KSacCbUepbJX4WH/2Vsgj35sgq
lv7Kbl6wknP3PgYkexNsGxgfchsDa+UxWFBQrJEPNICiJIeaQkm/vAB900+zGNtdVj6jIEq/EYyQ
PLlskrDW4CPJXSRL6edOn4d89DkvnWJrIwx1z22fyh/cuZGam17PXo9a7eSWVc7QhbYtF/w47GuA
01faFa0IrVKttXZsJSWgFL/YYVg3qPy9rEVmhtG96JF7TfSV3nxx8I/UOSyXW290ogVMcHdU1Axh
W8JtfdVvHf5NfgeSMPe/wW5IDjcCk5gHpObn32rCD8WrVlSJAjltKqhD781wyK45hGeH8DmV0eJm
Oyf97EUnJPfLV9SIyHzu90jym5Bes9BAEQIvs8ATjIbVmpKQGoUUHCmjQgzodDzfG8/2XV8VjX92
iRfeubu03G4Y/ZA6Tl4ijeSB+t6jcz/dYVoPaRFM4em/RnZDFQfgyImcpCjHty/S9UCnAEFIyQEl
5tJr5nFQuXJVxuSqG7ebof5mVKotGXsK5oQwvUoeyXfd+bMUTzDONUZiLnwvTBx/xT6F220bSqDv
51UtqymWA9bctXX3Nv+Oyy2YFaJLzbXxHfsfp5Mx8SMt/hg8rEM54c1oxC3hAPsaEGUhdOcQ7bGQ
RCniX29uzn96ROJBAm3ls84udER+O5PMKJj4zvqRgiDybqHOGcDuPDp8gT6dxAoPb8z9Gj+x/a18
Z8YNVZO+R+2FWYtB6Abpg0oiUUK884TFKw27f00kbpKSJP2wHv/U7XevX315xvsPRP3Js8WQIySg
FK3AsuV38j6vlaVKjHpV/BU1GwgyG+Ny3746o+FnL1bB4MviNZCgzKGEcLejPk8hZr8CWfWyD/3I
LbhB4IVXS3yaO9NV2awO4mPH1FTUCEhCDb13JmOVEsjc9pK5ZgBcsx8Ft9vfmrQUIgkU6TyNu+Qe
RM3XyvQ3v5crmvr8mSmt1Gyz8aE0pF7C9Xqzd4inzmC2VizNzRv7pfZT+ln3o4KQsr1NacCBfKHl
xiHq1jbizJlpKihRUoVcKXfJjdg7bZJp9+8q4OyzviE322q5GXw8VQPqT9z7z7edCdunGzKzn8c/
WvcBhDnDyQOlKLM/ehi5tGksm2Bmur5j4YaooPyvz/p3UeVvCH/aX9qvtU7Rw2PjDgY0ccpAN8+3
7eXUbCNUQB4vXACPU9VCo13ngkJ2V4n0avHD4cX2OGSnO7XMDayI5PT90twYxHo2FcGVwapQZOmy
oqjVQOczBx7PW7G7Zc3t541BMgkQxjOlkmEPeMhA7ei5EB70ONuHTSPitkhEFjc0Xc4NMohHkNrh
SWimBMBocYY+8iiRjgQ2uVegPT3LKTOErSfiGESOovhPYbbgTqSE0/B9tsSf0Udw1HRKrVY0Tg4B
YGpdPS41FFmbKnJTmsrdSck/k9X5iZytltm9C7CHWQKTyXN9dehTVf1nF8d7g315xRJfkmraUCZi
GQ3tFIoaG9xE+NpCMBiA6l1gnYcg9cLrRRIxsbaJtVIEBfyxYxQLkgU/Lnq+vO4fiBPyCCWBs8ut
SFyqAVoQCBUZ5B9qt9Co2GMjPpkdsX00otllM5C4BXsOWONWXJqe16gpWwD29J+V3oXQUGzDVDhJ
9HKiijvJGX8SJJO3w91fQ8/W9ltjCczAlTeDdZ0DOOspPOix+69GTFPME1I2uGcCQ7FVUINk1EN1
SU1A+wKF21NYXQGLQvId5WwcRp2hGSwyiPJ/cvigUiXf5aTvjAFv22GUWAN79RTFTVo2eVITYPtV
SEEqT/BwpqEPJhxHZnZxcFhfawZra9veW004r65B2OwhiT6L1sl1t2PSq0YseVUMROZiY9w/sxlf
UYPSn662P3oXj5UDkdxtZ4hbcj0NBdJKJ9gBzICKwksigB1ZmLk6OlyYwl4GPN9smbYk7fDcPdHH
NxO3cPwuNgvfDZfSET4vYOXEoGFKVSq53OjJGoDRKOly/h0mtPCsvCHkTNLBDPjFTCDmYQq0/68L
npqVXyleup+R1RdFfrnaSbcWMID+EzIIQ4KoyTtuJza3bRYSygnZ1F1Y1FHx8aCfKv+yiQ2Jrr+S
LE4sCVvHBG9bMjimqSkW5vnEjMI/qKAn1gNjgYxlN0MYBVB1QgJ5BlsDYTCE4fopzxeF+Zqy3fy1
Q8EdjISck4iwU+XN1xehCNKbUkMFmRjZoAvy5GBiziWhe8KZjc7QUOk3QN1iuTqE1r3iyOMud98v
peZ/QkWZWy+Y/2PzzLdQXx3fCPyUFjf0OPYVZuKzp60GraoK5OmmiLqSggqxDino/8UePGNiZThg
N5E2s1SyOHYSqLEs6N4AXMg7c9FAOIAsE4i113o9IkimnthMlKB5CTPG4Wy6QUtA/Um2YhGJzrh1
3PYQFU/W9KNcfCNfmf/aPA3KZ4W/OdzcDpG5oUHIV0f5qXGB4haxAVCSWyeT77vlsBuVDrOPuwhb
RziyuKjvlGiktH7q8Gt4c6anaa53PtYFKM8JrMdw+9aKDZv4fL9HVCwBWOIaucj5M+VudeJbaFc7
Le6YZiETWXPbofhqyHkcsKivV/ewIE+z0ZCa8yuY9RTXlKlZZ0XFlUo1/dhzuArtpL71DR/VSZGc
Y7rPUE4n9PUQHTf5HHObVIG2WZ51kHLRjRzoXlcHoVdSyNKkZ2zXWAWGzBI/zjPc+uAGK/CApgZD
XZauRkB9FVuaY1csHxBxKAGVHaFb3YANGz7QmryfE3neSCISEcU4rY4TXUqMjmACJJA2jXV0uhuJ
Oot7qavKiIfalUUgSz7JbTSIfscUwUzUXx/dWOCRNKE1olLCPeEpml8BamVBe3bk4faVQO1kFsbq
2dqStP7F7RjJCMWQSVKytoeoj0gAbekw03624itOwTq5Oj6zroAU6bzZdB86Y8hbyGV3EefTMJkO
Xul+ziQ4wYj1ywJeDpD/csA9ZB3Q5C5xYccSTU4X+Fa88EMazEdxnNepGQfEnoZeH6LJyveiIifr
eTVs4RIuSRvVgCGctLjG5CJui+X5A2Q+ixerc7G0mPgagQPpO5UOnA0MZ2aKgaiIDeimGyC3C8ck
hYeeZDw+7Z7RIeXSDzSed4ZZ6tbkpO130lVCzhZojfJ3k9ipg2H9eD6fv5s0SlwBxwnqDkgNyOYD
zAIVrByPYFFYWA4Fj5GSa4PMlbvN+Z1GZMv5Xmspg4Ra2QN3E+4mOZJ7/doX9lebGwC+ethRcBfg
u7Ul0LG5onCpmljZ2IBNLkHSj2R8SPMqNYQXOn22F3pLEqU3yC/G3P2+nMVs5i5IlQAbTtLhIYCg
ySAc1qFlNQDSIImaioO0//5+ntJqnAzKLdJ6PSCnWZbMXiI8IcGA2LvdbkMzR1tdKcbus/jywX2L
8OI6RyzkGBJ3KhacHEe3L2esNyIRs0+ZzHVG+PzIFtY5L1peh6s8aeWW9+/V4ps03EWyN6snQrly
Tt/R8WoEeMQ+kay49b6R2FDMec57gVXP200K7eS44NrTIAni9TqsLpfFFCUcCUOp1za3q7JVz7ET
2akyQ6+5qc4owU5Mh0qmV1i5P3CcZllBd5cAUky6HZnFfzz4DpqFv6iBq0zd4zCUPq2AZP2b3WYP
TQo6rgJ5QAP5ogky7RJdT8k6/j+oksaiLuYc+FjjbSp+jILWp11K5RovXCL9QEQTWsMeYiZ3a7Qs
q3IYBNlI0VIcb2S4/y8wTBW0lAb0hPo9fYLljmAmoKkDpYYxzZJSYBi7P48wE/mqxnMhKX0+CjJh
yHiurjzY7h71Lw8uH8grwtTJY02MdbbPYDzLtBaJ7UXs6vJjp4/wkt1W+fFaYlIv/wykFTuBFNhn
usDLxZ4otW6M1mTh8Hv5eOKVIrvmWaJGGpbc+TV227aF6GBtF2csAk4XQnJUsa4me45kKMGHhcQ8
DB3yOsEoV1mlOVxQER49ejspIXugKDpL2Q7TxuDRsAHfGqX+haDOqfV9+H4zNePiup7Moq2+i0sS
/uWs9/qEPX0gTo+6yEanK91IvY9bODoTg9XIwo6aueZS976NPIDoc2dnZAxoH50bun8CX5JPh8Ou
XWygqXJ9/AVcfK/qm+q7Je8SZsZzseYU/s4rPMZh7EBkvYOIWXiuY8TCfwEiNhubcJI5Xta0hKrm
/1q30rAiwri4EEUYZzxlweaiVXJH0PtCEVrNXU5wUJzVj2AdbcEI8POWo1ray6h0qJw6OvP6VQU7
amKRWozyQsG+uwWuI/rVCrAL7IsGjJaUi3sLS/PBIHJRj776SZSCjlaY3DfDhPtSjnHuQK6z0JmQ
EGYVpoP50s6CK77suIjym51U7O4UohmJXsGFKbP63bHzPIwauNQVe3Yk4KJh3ycDECoWWEf3ST2G
wJHydIaOioFXjR9xpH5uj11VY1vwdW6cyTwDZSJtUeYk9ep3stNDRNcyVB+sIZgldTf8qxMlU8cG
Xo9TKTfm/bCgIGURPfmgEyQj8sPc6Ycnj4p+oQ7MLXGvXGW63LPzUCR8im1WgQoYPtncYLvFhUHc
AVEyEc6x+ap6ZwUMIN29fN6tezZmo2elHvCfHIAXimttO+32jneFEuWkTx5IVqauBMRt0oZFGvgx
BrZUNR/5R+soVodBiby6IKx5j296AWka9WwrN7oT2YxKRb2s5NXdofsISswXnMH0BsX4Q4PPKskp
RPjQLaE7bH+L15VziUqiutARpQ8E4Zlk/xWOGCAqdsvsZpY+SIy9g6Lb6olsPMbPhHbUIeNA30o2
aFW7lVUFJYvmGkuXbRCCAuZWXfrE0pvUwwq0l7inqhnc6IDwHWXczJhpAgMYAsuS13TxhPJlJjKD
Wc9ZgxdffZd+rD1K1S8pEs5W7MC3qf1gHMiZpcC9UgWu4HlUPIiAB4xa0V9Tg4bdQuRJjyZkBLvh
ziUVBt868GbDQn4ov7tUpSKT6k7j+AFNXMVT3OWXybDrSrz+Qr3uBSYKL2fj1pw1LSr6PsEWjdeZ
K3EVBKRHFiWcnv3vlQ9IlCpBDgd/AcGxJwNxk/fknLrxlKaZDZW/j1sIGMAu5LNrTWSn2DUIyxh4
T37Pfe/tbIuVG2hJ7EZGk8U+IaY/U8bRrKNZel1k70tBxlKm0u/bhZAnQTS7ydwfEKO7DSpmUdMK
wy1AsjE9R507LCL/htdGueW7dAk3RDGrTXRkiwXHcVRhL4MlGGWMfILRQK17NWOF09m9z1lqR1NR
kwwXR2nIMOQaKThR51AV0GCrtfVdL3Rs/E4l2sHDwId2aQY59O/0jNI0DZh21qTMhT4LZjYmHAma
HoZER8XzVC85vuGYP9D1nPXdwZC2CV3x/Yu8vSxBT3GZlxJN7ZI54Iu1PgmOmS3Wss0nbIeMB8cD
aYX4QAG6+PcdLozqhCOsbi+ZmV+2dpras5phctsRcnJ0rPzvakvGenMJ+ftLiCHKWMZUgQTz6ELD
wzFBMh4dEYSabYFe4ZgZepRgIlJ0PffnP1BDuoJZILIE8gv6Ygp05WgcR8xNr+3cVphchmV/wvXP
VHrAEttxExlGsPD6Zg3HjB38cMoDFHjA16b0Mg0R5xaqIaqc51ez597TgSIL/GnZT1wV/q1KUEQv
49fqH3xjMs36IJo2xmUD+DZNmrJ7CfAORk5Y7VOULa/KvWklxe1N7rGxmb2RGFDv87s4z+QJq8P9
GnE5YR32JlgBy2r5cercp28NYwrSdgOinTU3PhX3Ekq7/sM7iFE9t2EPVkpPhwHrGE8sDtKVchQb
1A0QSeOKpdn9v3EV6UQVvahyPqmXOy7b2XFugOx9Yw0ndchZTrMZ2dqHMOi262HISO6rPRPaKnX1
ntonaedLnBytb9Dq9awTRYjpEnKMXZUH9NhaGrI4h+KKwSNal3YL+R/c1JjyBcPoHd8B24KPL9u4
U9XOFdcrikTLlfOP20OKdaW12LJTeE59v1p7Aek0XZGClENlerN0PQXRP9zoaF3pxcEsym+kEFul
fYQQ1JpLQJZyVRBwMMNwWOkJ9czmN+mCD8tEUk44m6/6jiea9hDLHl89aK4mRcVJ9QhBAOWNqatT
4D3rbhVPmdCn6kt2qD2GAh/hW9WP06XIwIDY7BaE9t4HSrKQazaIhkxhoyoEZ/6lei+TeIHquzhL
BxfmP8QWpb8u27sKrPHVzHXZG6jNbquR91tvxoSyXt+Zqo1yWZx7xBIYF6Ot0hMSo/EVEz26yPN1
d0ZrY1rKhLmwCveuvD05F5U4qmbEKyJGnU3Em36UMGUtMyk0RhALAgISe8uZAwYah/dGoUYXnhX/
wJdy7bMpTgQf3dKPy5HL+W+M7H7P2TUD9vRSR//33bz/246ZeZvnx637/YVxu90UZtMpF4BNNG21
vIwG9bzGGeyxy/SEL8Qp+1+JWVQPIIQ7/ISEpTWPZPrR5gsc6uvLHN6ygvxH0htfcqbnlh1PhoQi
QuxBpfSCsD5DVhofQYWUqF2uPnF2RmnaO6C3pxJB8FP/Dv/VTWFKQncyqBM9FLIbE21Wr+0wLzgr
iRqKs++9Ojc5AFxksiYHmqCoGlxgBkMOQFw2QQESYhRK6HYbogRFtZhE6i1UX144eq8dPGh/uVNq
ko42m4CeeBhZliLdfGqHYIk1QqsRzfl5QneQ+wt0qWac+nOs6qTJbLbjHEo0K4wD/BMiwziS54DX
qu8+yHuW8tdp2CygGsdHbgqU2LFj4Gz+/T51NPFL/dlqte4r6h9aoiBiJ2BLBhT0ant0b9VZWDU1
+LzJmiDGe+dQ0BGyM5nXPb++DGnMWesgUtV3BswgDF5iXMZlL4DJJdcs25zLsi5v0Gw5ko29mido
ZegypeH6oRGjc0kNFJjX0ViHimOuAbIwAdkrUDr0xjGhBDUVBnbpVa20TrlS8GFYq6dC3J5nM4Vc
kLL5G23/8O+uqGae6XboabJZ9En1aff93yZxc2ry/eV/v+p40ItoG94VzBxuWRBGf2FlMNuyTiGi
aFw8EivMJADuRsW4/apicK1FpW4813qgQSOmhA4VGZOJP3G5667EK+h0D7QNhs9NrX0N2nKhBsJ8
hfHlksTdhDdMNn7wCiJm1bvTaQc4D4RkPqTP2RiNdc1Bz/ZsuWfQ23Qt15XnAZLRi8nK/tgLTIIa
TS3FMsPJ6fzUwPFs5+firtQFAfaSmFvnQAe3QHSf2UtVyuiXHs/7q2RvmZYKszYYDDpOIb/XGRDj
YkgoV0mnlXUE/Vba+u0/AIIQZWpezp7Q6cMrz9oyX1D0TA+rwl99crQopTgvGDzYRDX729a/QgBN
gUhUhUBCn3zoBAKvGpzbOzqh/MRTg5K7VDu/YPxSxG4VVKEGrE7VWxCKl5Q+GeZDhox7rRoCTbGd
v/ioQTEMq9ejux1ZSUznqI60L5MXVTWGtP8doY4sq6QY2Gcb4iOD0EccSvr48kn8jpAkZLvhHaFw
Lvna1jG+ped6rP3z9L02CkfB8yuB2SlxJA+96BUy52SMEVo5AkBGCnvBFEV+qLEznXDC4dgqSa/D
lNvWSeoXYvgyimCjbtOJvRILq3PwpcPG+4V0czm2sQjtQFICaiVIHDte8aHECXWJN7AHwzVIVKHs
M1KKDb5hSRAWeZe6OAegQxf5m2Z7vA5zFmrZ9j4AWP4jQ9226DxWXHoqttDO9uu6OYkpBeVo7SVj
HF20QcBjqLdcfQvEy5paOvsOz4asUTjyINwZu9NlnYOm8zzBGp9sJYPzJHgpImMSEqyYmNS2tWaI
shZNPZ3uI3ijtr2KRbiXqGERN6qqSUPBOGH+zh7aQ7j/+qipstcHR59nfY12WxcZzXux7xahNfrF
cNe2BHU9jqu1ys8yqVSvYFcUoU5asgNS/goTUtnfdh2emFq5VSxVaTYDz/wSEkPPW6WyO4uUXuK4
7ueZI50ig51HwdWce4TqPVRIjf53JsOAJsyzqeo58voSAThIw97lL2U1DZWaepnOrxGqHp4rRZOC
cssCAzU95S4naCydan5WqbZ100BkoJy1X1ALmSsqfF+HeXYw9jw4j60KjMYWQy8a4Zsg63mGHt67
7eZC3pjGwQkLIyONV0OibezAs1SHxf9wmsuQxcwaEnAHWCF5sCBY0novW1VF+tdXFcudCanocQQG
QtMZdzC4AnSIQZGNlPNcO2cOfh9PXXjOOYYwfdXhXxjTuSClEwT73rabE3YZqe+loKHOtS87Gk2p
d7xdJ13f87vrhM7YpKdCWSUy1Jlu9Ikg5Qnn49YHNID48AYcuVq44lOms58Mo3kYTTIgZocz3b+r
FDPFstStjC+JrGuJC4fUSFSKU3Xm8kT+/Q2iamgDIiWGrIPsdqVfs5Z/ty4JQ9KuY58uee9XeCDl
IDVorOPVE0zMWxsRRQHwJoPZkeJYTYOnIkDMOFUjUnrfWvx0Eq7PuQ8rqDeGrciIwKgbzRvjdHPk
W8Ny6IqksWsOfwYosI4WPb2iz3tHmF+W0NOW+bSarqpGGGp7/fyxnB8O9CWneOAqMxzzqRPGxgeX
bsVgorUM0Fj5qWSM0ScY2ZIuryY7rZtSfds2JheSt5eujkly6TaaRTOiAL13PAiJIE3DBeIR8zsQ
9/btArVf6cUylChTDB+m/K1pafivKp3dLUoVlqauHNwkQpBUtVI17LUQniFt2bwSGIM48D3ZQUXO
V/FHVa0VU3qAT5lEJGADy7dIWzsrYi4S8OxfiicYX/wU7pMXZUV+mT/arWhxamhQn08pfX+WaGlv
+vlt2lpV33Cp9rt83FkfjYPd2/fpzOAHhwK+WYhyJ2kcg7SsmCbovP20N+UlCGeYrkt8oNs+xN3f
uUCeCpMM0vT3fR6eP/+CUjNrwjpGHaCR4ayuUhTPWKDuTwR1SvaQaM8SleNXRFb0N5ig+V9ZCvFw
lBEFEKO0KrAmqR/SftWeCkLNcJs+8bB+GMJIn0XXTZwrTys7EU1MyP7REFMX+JN59es5+sRV6QNL
wSJLa3zwB+kuxDyE1FquGQiZSlrNLe3zL6Vhf2rRXxawa6z3usxNlbZ8WXKRftwnS3IGe0sD23+8
SiY3Fx4iRszVv8k/Xu+gkppU9fVpGdRFg8galbZFd4eOF4ABqn8QHdC9pLw2er7YFwol7hUoO1eJ
iCKRrPIE+L9d5TXdcAvsqpnTuBfdwQCpCCchp52MKkypmy7/y9jiITKfzlMKkbt7IVVP0ZvmKrL/
omv+SUYJFAatvU/UFW0P8eHjEGOcnolW+V6fK2fl4PRqOR6r8LQVd8v72SXWDVuMuV6mPNaXwnvY
g1nOOSLT6WjvCakb3XrreUjOKUIswznZwTO8+Lj1l796OMU7pPnCBaHjl4TVXiw/IrgfdlNmUv+D
brmIxtvIT8EEmqEJWAU4vlPIMr6m8GEb2U/N9A0qVL5XnuM4zi3kWWAe72WnMeDYGb7Sh8hGqsL8
wgn1WL/v9vmbhaUGtI7qpop55qK3YXXtsRpVumSOyf7B4YkNWo2m+/hkUG0HjJVvpjnrhgebl0CI
Rhg5ercwiFkHB/niBOcdq0HCEBqQfqKh7TJZMVQ30sfYnhG1wGiXcU8fj88RApP5rvpLmMlBQQTG
LrQE/Sleinhk3uaKdUFgIPllVj5JQOd1J5ZrVOE/me7YEPe1vKt5cNIQ0hSvwnuDIZq5V5k6ammY
TNvZHEJT/IpvcVYc4ZJrrcNr2BJmKV0nbJHH7k0l8GjbNjuAdRS4j0osbfVmQLRTLin4oG0fNJLo
X/MdTS45oBA3eMiNgeTaidBHehrxB7wp5qNk9pjv2dbN66dQGgExSuG62OtRftpBKxCDIgUGl5YO
BQDIQ++ZAi7na3lO0vOHYqP8LAiin/l63wkXG5EZOAtxtSBNe/Z9u4jQJDwIydUpN5FUrw+ZriO/
yIOpNoONYEkC4XNzY/ZvMLBFdFf4cAf2g6tgkWgINFMxV8o25/QHZvdRizPzw7ENH6OsizXjPl5o
MW8XHyHeRPVQj7ntzqAEwmnseDBNfP/owsDoZxKu5bkxCu1PsOyA9ItkCbRXFXkttYX19a4l+s+Z
y/ANy9zaxwVHw6P3jwg7ZyYraz0tTzo7W9TgW9rkm1nB6rlv9knOt5pkIpVgyohBRXY6QLvRZ2Ij
JiAkcj9XKg62MPxC2HggpcvFie6NbKUuhIzpWHCjPhcihDd2y5/dIqqItqNsOLE3vjWgaokkIp4q
bBi0oUenAyGO8zrFjTwqzrfT4aiyWXr/KnWys16Gz48NRPt1B4lkEsASmX5AzdfCct3Ksi4NGVOD
k305daGWRvuO0m2dv8AM5v9rV/haquRItR4mHZ7dUWuz3dFHCqvMIakYulf5lloCg/NQ0T7DiW0F
MW3oLLJkVchqqH3UBCBeLgYyT8N2rVizPDM3JOhDDF/oD3CsAO69s4TYqKnZdoXgtDVG30Q+ssAN
qZ/nu9QGDrD1e0I0qYwR4pWidaq5euGxotiHXIPDXF98t7qXBsKMw+Uw6F+2TeZ8++FIOzNt3AWd
bBh/rE4sc08fL1S9ttDXO8kO64eyEm9TMbuktSkalo46FYnNIiQVuS+uoJnFTLf13Y8SIl24KKWf
HKlWzdM6UmUaOd61UDaeuIFL9EWTMT0xabzcep+h0z+Qdxs2QEAdhl0we2sUBe91qPqUS+t+1TdS
5rTYsYgitKbY8GKrVgkZzcLF1y9rQpEJLV1nEqOBgmqxru1fQuXfi+EE1Szt5G+Z8+EavXxg7ZkB
2E8oSw3nq8XZiQdQHui2pXYN6HVPDWcm5/9AGemUERxHh+mcTPsuXza0wVJ4ECYU0q1fjy1fryOw
kzmVmecHti0M5cP4PXSRsUtMTn8BuykA9MrFXm21yIXFbCPQaPvfT5UiqCrsVskgL4EVA/hRVa22
t1qXVxOWBsYS3j5A54NdR+9oyjFifsVrt5r57B7C4fN7DM84GCmoc/f8suOXrUwEXxLacqYDk1dg
Fs1e05oUn8Frnif8PFG6o1Sk8j/JZAhdJusYB+G5ODs5JIW4pGiXJjGdbsKuFZC1kQXT1Iui7+Rm
KFD0AuiWimiTWjCE1OensGtO6d0kFozIfnmLIHRhUaScLhC5gfERjVtXOkOae0oNmM4HfIx/hipD
guv/SQTjpObsfZ8GfDwcc9vB1NY8DrBDctLQDzD4w6jqIvs92xvjJpwcwid6bAFbfL3rBtEOxXXZ
68rl10UjURisKHMPVI5yDDxrZ76GRgdmWGPbsvyPLC3AGWO+Omblgd390HEpSRAzCpT8RMK/wumn
f5z3uEiZtE8VD3wSpxIb30ec8Gzz4fbSboJHDfT9/2d1lMCCUciPSzzNVc7/64cxJuev1FzlYaFg
omnWVJUQG6Oht5hwXwBwYWsOCwJux2ux8QAy6mlxAgRP71HpE2JnP0qF9/FSMoTRduhc/mgJAUzS
v2XUK6gfAVGENUfu4fbN8MfCxgHE1wkqBB/5bCT8GR3oIbcB9MsaIan1dR1BZ+IX8U986KTyiHjU
oGygSrG3KUxWIg1C9WqIUQbRJ+0REPvqMjN7ugy5Z6h0Ci6r/W6oVlR/BahexYoXAyQJuCfteDGz
JO1ETSj1jt48BuSAOpPvygQyRJjahK/oKkieKdYlt/Q0d8QrG5R0o3Q+zIX88oWof+yAaoDkkCdf
Vohs55xeZFzkG2gZmQEWeHgmdEYJLhTtc6AauZ7X8Xs/JbNx6Uf3kWOnNOPnUCFtjnLsF26cwdJy
G313yKt8gxl2vi9Lp50PJZPQraSmkpbC5h7oJa2eslQW1m+ehTuCy69Ku5oDTVz38H5pWfeX0mm7
U8mfhHuKacdVRpZmdrA7ZJUM6RjZZUrXyDO+uHMN/Wrqye9dyA0wuHMCvoiE1OoFJxPOsDGEE13l
oV2LtrqnvoCTKLrqrWL7oqO/OoshaKzgo14ci5XPpSohRNB7B4pKSEAd1gDeCNcRjup5whvcFsTt
9Dz72uFLp2duTXQgOX3NL2AIy1N9SlHrFhuxxNKpdVeakEAOs/zO6U600Me/AuNcum9mvV8sbkqr
m34Iqm4hjWGmvjrrW4NMQF0PfuuddpVc560D8y+6nDFB8n4W63Y1cKhJ+vIAjXG95eLOzu1plTkx
8reXm1XZisROrg1gHrYw+LElIa6f+4lAWpbgAy1ysOxJLtWlRKtRYEBLH+FXMtLtGEkFL/A/CYml
ZEvN+a3xANa79vH2dIJH/bs0RIeyHwOWeoeRMjI0okTVz2c+334Sp7CvDVhKttLPaVh4OUd1pYUj
ncpM/ti8MoT2VumlcAShuH25dkChIT7en5jWChs7cPgdXUlaiK6EGROgvi2aWK5JcfscBdp/J0mp
E3hVk9B1dsy4kGroYHueBBNdDyhtucALUkzMLq6W8L0/WX11FB7ewkbabwQ9oV+Wb2IMTeaVYNIX
idXUPAv5lQCfDGmXhlbaG+AGpagnGpuUzwZEuXZklQ/wdSFVHsLrFMAKF4j5noQiJi8Tr+Oi1N5P
6jbH2pipMQDeEas8E7rXx92lEcsn2N2p29QFPokVFTmO7988N5VyLMC/CbWDDTkM4CcuaUt0u0HY
x4dQ/kNcinITWuvnjO+luYZ7LRXh3zZiQRzeDW7y3VXf3FXmg+1UCG8gsnr9n0uFUpT4PqCperzi
dZAixahbqmaSyYoLexxCD6XzS7YWlnPFAiuoUkTwp4uJJ/pkUurQ5EkCw+bXBJHm2hO5fFHBC7+Y
dyHlzY/z0TQcRrUUGbo4+O+jl3UTejNho6cmguCc4w3vU6+ZcE0+JdtumWwklhv4v1ZUXdwnTJDN
MxD4rvrIglaII1SvhwV4wXOEh644xxzCYXtnNmzBw4ASvkZyPEkadtl9YfbBlmiY5N2oIMg0G+pE
ZLqNr5oJyJTFfBGlCQkN6eTDf2JjVE/b9BEXjhfS68ODV5ql41jcu8cNZMvbyKQdqzTVU3crbYL0
lXMqdDBitlo9WaY8LgqoTPKtdflXUF4A7XhXnJIVo3eZzkxgJlS6i2woaZBNpaIGka26rmnvsRZk
izXrq3zNjPoHYsFPmPeNcAEQSSmSET7xQP2H1ZiDpJikiPxochXJhMx658W5y10k73N8qP8cF3uv
PeJMmC1xWuS8xlFaM+Q4sJWc7zhaBE7aO92i+aRviCiU+g1+d/OgwVzVV1wUHy1bYkdVawkzRiAl
Vx/oUNrXPP9pORU1azeEAGRbN6pqczPpugdtKIQvcltW5URXILoQNEoFnT5DHxyJh3pQM+j/Ubqf
RMXsO0Q96M9v0Zzgv9Z8IwEIFeS0g2Sur5mWGjNKtaREXy4W5V/87DOsB13bdoSz546MljNfLC2P
61xGD+rWrKLEkpk/2FlxoepliEPWc0ca5E/SMtMRtSB6p5zuGnQ9oBm7EIGfUmf/Xu7M/oUzKOj7
ZpfnJBaB5t0gdDLnhkxmX9d1xbstdEerxv3xPfVCM37S3o0VUZAXLwqjk3VkrahdIZA+IrJIdNex
CAIf1YKy3pCj3EyX29eCSdbBpsaAKncbkN3MzXrrUpUP1C+c6fOSRrlAE+gYjpMPIecouF/E0yDR
3ExvpK91MtJPQMiJx6ed5KCmaOlgvKMwXk4MUbWvT17/8nM3Itjqj3EwTD+dUMZJaskdabZxFaaC
HFKShWSyA3jJerIkM9DRTMvWHCl3oANrYhZ0iI5G55iuK+Li+yjCvQPEBnBCt44pF0mHh9eJirIN
wtEGglOdoLBlPJKYT5np2K5LDK7S6TilLiAoDf0wzBN+tZhpgL3O0UBur19fISYVTzgx5/PDqeXO
sFG9RwHpseLxXu/xM+hTMLBGdau7iP/WK1fUrt0GAxrXGiVNQApVtiy0MZYghuR+0HxYq5SIJv+O
KyqAA1gayslqcsZMSXeVPexBohf8VpZJwzokiEEjNTJMEzC2kVZ2mNDJN3VE/d4bHBkKOXs1HSuY
ZziihbhMzGr2mlk24VtzyGN1w5Mp10yqA6Qk+Ssb1+e8qr4ONaK2oZtscitgbgbWQr42QynrbfAv
brGPEIan7obAMCfSie3wt19nS4/7LxM+90opHt76i71dF7H65G2NQw7wOcWgwUJ93rFP5w5L8BIv
exRsKD8CIwbrK+GPu5+k25R7mnu6NHWARXwIRmzlA6NXscp4Osz1O5ZEVAbnPe/PzM/btxYaz8Pc
DiDJGO+r+9DQNgiG+YADz/u6Nhad75bxGS4kkWD8FJ3EuAcM6xS2oC55s9XxEiiao8l3iiZa6nGo
ykN8qMeBuC2DST+Ei8g0diNJOOPYJrg3CXhQMm6ca3bC7hqq9GNaV6ZCWR+xYdC6LMZS6r8fCxPh
YKF1gTB2v3Jl6SEtRX6E60j+ZSNagsXd5g7zGdfygMrTsdvEwp2I08Hpdyr+A7NmK/T9twgitX+o
7z8nQ/EumwbTtPcz9bjjnE1nxaT1dqnNvvMwFUJq8ijh6s9Mdy063q64Q806A7sHclgbDYl36YPy
e3Hv/jRcfStMJJO0zI1vd3+g1rF9Qy+2A5LISMRzONynOkP8Uy5e7s08J7PGAB1knGpZFjc4pl8P
2f3yKrg2oQ510p4zDkurrnWvaXnTAJjsEeQOGWfFO+dBDCBrI7dWhCwE7XP32ByTtR3sh02xNSaI
Km1CSM6qTRZxpuBLihZvWtz7ZyhUqozNHBg1N+indptL/vvjlsjVdFhCsGma+OwnhyAKUxyJgeBr
Y9liqQUJaztXRBQ84ijUG9nYmZPmX8DvM8dM+t1VWQRHfKoK/qCCAxK9qA6s6s+ZBMYijLACVumT
kqAP/a9LMaeDMpReDht0APHowtXbVaiI9Wzho6ykMH+EAlL/B8oMrtrBl+9fb8GCYEYldmHCgWnC
0nD5K9KLE5XEOpA7qH29xadWJvUkkKySYdTei5Z663pRhTZyDOSrzLebUMyhc/Mk1i2kU1wJLZza
kzyL1EbFhP2c1O5nZu5L5WB9Isw7UY5tRWthnff8NY3iqwGOpM/r3Tr9vuxZc2cFM2rv9bAnGT7P
Gv7i9iah+iMRh1eM8lq3i3Fv+kyKRo/qM9WHDxK3q6oKaY+yhtZRvIpg6muhn8dZRqANoUACgGAD
/XPLF047mQayVz5AGYaUUmpazMVp6kwlUgJS2qjQJ/PLkpapnHbeFUOABvVa1vzyqs1XRmPHz4ss
cB3HuUNp1P4A1lX/nH9y9jjVWjQi6/Rc2YN4EXhvyEULgsI1imLx9XBfLcXifrN/MIzzEpRBaqoo
FI1GBTIAfkSkbJ12HFVm6JtaZwP8Nn7MPSO675dP8R41Rz5YgcZWNmQ/h7dP6FAeeIRuW39ciR9i
soKAGOd+NCTrzS6+k8UBskth0rO5/j8Qn1q99lou3MRn9FxlNzPoiZshn2F71qaqy6byFiXRHNxc
LVTr4UdFftksQxfOQpgh5XIwwKhL/uj2k/hg4kXWwX694iWTWI9gExDRQRiiH2NnvEjsl23PJ34v
qOQMIxLRcNRTfy4MVNZHToW9TotH8bT/lqlp9BWt77AppdPeFUFiObcvKH0g0veMLH3YPRTxxLJf
vQmXaSbR1vz5btZHmSPZ2SGfZlAPXBiIVrgjSAHwkNvKij4At03Xnknj+Oh9v9Iho2MUiDQN5Q/K
pwaxdCLMAHgok1oDKnnSlVDaX0YkkJTdvL0s06vWWylEQQZQl74eDML5rHpFa9IMN+r6azJTvo8K
YCMK8BVdYb7kNPzc8cjZnPupnYgYq5W0hTQ1xPYx54Yw4iu3Br4bmuGTozF+nvlqNWdkW9xUKcvk
H0v1kXqvEhN5H9bkYo6j51qA0pChLsaqroCU+movklHJDzYHURW+KdQEEWE7DvTQBx5XAc3tUVHV
yy62wrkcUXJ0eBsogqCv0sfIM5+is7fGKbxV0+pmOkh1VYybpCYWW1WhhLL6tKYO03xYZek4m2mJ
81rEhlD85PC5IlzgLoeeL/x4PoJVeYBGQDmvpKZMWi4gbCKwsDgwqgSnFtDKFAC+oWODxX1bvp1n
P0nUh30cpMgQ2Do9bVWUedZcpCHoMzoNfoV1AAWox0nwSz4rJ7wT31njcgbdrpGiTOaywWUXCLKR
Rgxn/yq/YFX6+h90c+18QFkXp/8gWMei6j3Fq/b5TyvUS8224hliOc6zhFn3ggJay7FZzgcCqHg1
MMMTgRL2Cox9BRztlAVTtrMuMWMD34xDfccpKgQF6ewWOe7NSFwQnC6xsjRF1RAiQxcL3qhTrURy
GFm4QFQj0J+Z/5DXjShaET5EdAqR49xFIflk9LU1oguMa5upttOj1zazdHpRAwB5FV7AgEEyBr7j
CLvDq9NbnE4fLJtwi/rA27hjRvygyp2ZvqJFaD6LnbSaotEvb+RpiSFld0v/OOSf0iCoEf3ALNG6
0lYmIyVRq2A8r87/X4V+JYQzOh8zXYD4RdqSBy61ISCU2fT5054+smUvldk6MkxvLyAKo//XiYZ2
7+TgugrDSPZcWrhhYYOXUa3v3fE9/MNbuUz+TJ0ICsHv+1LSZNA6zCd3z3WaDiHVgEjdaJQqU6pc
hIW4/a1jCTV46tKn+vdINFwQ2YU+1tkEsC2/yZLcAAk/YhDerRNPmT7luRU/w7S7K/MuWgi8f0Xo
ukQo9ad/ytgdIM7EnEmctn2Jar2Dx3EMCXP/Wg/lerMhYPXXh7Tkb2CxeepWlo+6cMkOaX+N21vb
lPzur29Y9oRvHXE4Awv62aAv6vMs3JdgEVvv9W76wBSL7KiYZ55bTVhAUba2KV5pL478aMKaQEMG
i9tlWBhgLA3RBoN9zR9OQdYTLekQDdxhL5ko1ZaRNBXohylt5fXvzGGeoaBP3NcdNOfcN5s66H9Z
EAhfBXgwHptHEf3kfVFp90ZLSoU308D1ton/Ne/El+60Z2uWr1S5u7o8OS15bRnhy+sjhWpTMREc
dkZjs53U9btqOB0L72Bkvl1XBCMdBdbMWTobJ6yrDD7+7Gw1DG0Kvj2pdXEYPsqfTSsht0dL3p+1
jIaueyX+YteF5GeZR6oP4EGjVZGLr1wN6Qg1sYlPaYTNcXv5gn+jbTiCtsQL6AiRHzYkhGcz392L
ZuBy884lKEsCb051eGp89Zpi6nEBhf4EMFF8jbepIxHXNW9/dafyYTBBGO1PYyD2A1WIPJjsva6y
zKi81iAhcKNizP6oV3eRQnN4Wl5cbY81OuFZHgQM6UJbPt5uSw9rdxvAerHOMKvhGUOd6oBsyoWv
uAFw0q/Yy1KiVbKYv5SEMDZZRc19/mrHBX9QK+oiyzoFeNXucxFkst7yz8RTMfXA7BiUeg+dDcke
Zl65a1YbTflfv6P/LZqe/AWAJlGWzNF02l/D7Ko5HWSIknmGkv8dHsfyJt2Cd4xH1erSIRpZEGKW
2gq8Njmeeh2ZdRmdlMJR9mBHi4eAHhhOMto495W16YdJ37VRCcMQ4GlYOY8wBeLOKXeHeI2JqZtt
pa0JKCgdHsw/V4jvLj9wDZLThBuiI8UmBc05BL7QY9ohpITEhL/ATe9JXRiqKDXyHbh/r41MqRVN
uN/51v2FoI+YTdaY+QXWPFhLTiuN8vWqCLl+jXN/wOUw6oo2CfHHMqtYguCGp4UpeUljspKoY1Ek
dBEkgbhnaOVDMmbzu/WrWKxhX/6qwMk8IXLoMy/J38M4MK9A0TBGPj/EGNsCVayAJfuYbNidxgpw
pIP4sTW1MIFpKv3/7WGoTMpOFHTVHN7G76PcpTsgkcep37oUTIisIVTLKnWMVcoi3WNsDz/qBU6d
PePM7skB9ci19L/Vd3yM/fauo6t0GjppnPpGkUrLeNQsKZhgJNfsgJWQ5/AY9d+aZFSshRtOLqk2
aG9DPMT7tBaRFLRqoYHq+q+YItOQD6YdH8mea50p2RpN8dSN4sUmAbBFzk3cH/IQXzYgV+it2W6+
qiqdudKFVq+Swq47VQxXo8eWzThJsFl9m+kCH8Sqi6oE/2osXJri53YfMDD4vT6plMf7M3VlclFu
fOGn/DfYDUSszNqrvYJBW5ZKAqPiVA7fAe88bm/I/2hLfshVisrYeZy/eTfmLOkubazS+clYA9vl
yUNKbRimGsFqmNscakhQkWQp5pBKtCVT9MukaZDmClFtnGlY2olckbOpulTmXA6ALj4l9jA8qB5w
o/Xg9TpA6aUtIMbB1/vmgcAHYmrlL6aAzov4BN8JnLeaF5pWOWeZ+LlRssCf5eCk3rLjg+aDQQup
jUosmINiUgEla6gXG2LBzcWqLIFIJDos8H9a/PsLwFIDmS6CDhFcnUHMXhO2ooC9Je5xdchExjgH
FVx3RfLhOF6iLjNb71YI4nK8qhkYi2XQt4rCpC9Q4SENgF6luCk++GfYtTo0c0sigWjRyw2aMVzb
4klnKwA5X3kfyOa0HtqPWrdv7gwDBov3MyJRUMYMCZcsFcyO9oWxnrUTrhhYmLK6pQyRS+c8pmj7
PdbkQN1ysGNy9wwdzH9ztJ8FQiMF+tVt5hNFRTk26mXfgujkx6L/wprTq1O5TUrlPuIi9LnRfp3L
IMf+v5z7q2WwubJu7AHWF1aEb117ebMBE/BwLZ1+xRQxMVGxUYl7h/8zkvCWW60Invr0K4eggMNK
HafGAU1MULIWCSNxt2XqK7mHCNoI9utmk3Lc+ocrktw5lhpXr5zZa2FSdDqopwtNc/2MvPmoPIEa
NFGY8inP3RsRcebU0lvQv8BOxbKdkw3sPkUoS25V4JqPuL0fGf10CKTWgEkpR3qd1kjcIAOCgS8V
tb1gTfwL+yU5fCbS+oFB+BLOR7yKHNlTiKfsMZn4upIJpOI6U+9ERtTTLP/EUZJHpuXtv59wODme
M3PHdxFjgqHl+2+j2nDNZAGPaM4kgiyicth8Ywn6bWxl2H5Ri0MGLy/mr3g5WGA/aog23PmDjRxk
0wIn3dscWlCY+6yAS0A1mA+FRZsxKoWEA8uDoycqQRl462b8mkSGBzXXs9SR6q7t9jBEq8Ug7vdd
wz8OZlt8DY88AVMWDcxpdZdxWp4j2Jso/yO7TxNs/UzbklRg90GEAktzc0r/x5v79Yi2SEmvjsZZ
zGgGTZdXLzjNcE4e541qnijCMp0RvHAJMobX3gdeninPwfAddoZq0WiJ45VxSRPuev4sRuyKhvpU
SPTtp5vbSg4DqoHVDroDZzvFt4DHVw2CrmDUGHZdgB3g6DJEuN6NL4R4RrZSvlvgzgAlrOGccKJK
3SLOcaVubtur2Zuzhmq5HphNBFFx/ci1aS/p4r6ePVvZbySfiljsEkjVh2swjw24c+SZPC9F94Ds
84vhkumMhjeyA+ZHeCwJ3SsxbVidg8gAAIsTfsl+J88BI8auKerr50DAQh6ppDrhbr/A3KvzSqJp
az8OCApxllTjIuWEfMXCaPA+V3E9/knGG/GySMxnelM+rxbDr/7Rufgiw+k3TZvsvXYzlg94JU+l
GBk8pfeZnGmaoqzzEyrOlCpdVxbkE7wevK+Tz9pJWkA3VQmgD6sXvKqtIAWNqbm8TwBPISB1tTCU
fCEvVPNdKAKEDrrpEyXrLmOcpO8jMN9zmCRRNswdjNIO1OljaOxUqcl5EJ0nQahZ27BVWI2Rr9nB
YDrvZw5OLPCZ8UQfoAeIkbgIeNySpxDnxZFk23qZord87kqeM6cwfF4iFjBTe89wWc0B1qzhk1l8
D3Eg6UgZNP4wR9kCjCsKRoHM2pCVbRzRIT8F8Ml2gc4DiIL6XMboN/Wo6gXpaUnE+YusXeNEmRML
WGaEqdizV8R8h4df2vh+VrLyubAJG6BlTv9w+AyrifGh7lpD79h0z1aK042ZNLEmnNR19h6wBD71
mDB+CUEE1C9nECcoloN4h7w+sQkDhdUq1FDZUO0NB8a0lI7AbwtQAOGO7hhFrJKekRh6rKaT78lS
oJZaDicL6OxwbauD8crC5MEwpO8JEhGDFXrWQNb1gL3D/TB7zfFVHlVFelMVlq3jL6BEf1Z5eylE
wh7GO9q/HZeVwlhSoIpowhsyv6iVUVAHaQLKKCQwb7ssCpdZ+PtvwL6S3eWg1F77Xam5lg/WRM1R
hH0JjHhmo8RSQTjWpU4lvourDnssaOR9MLdFMxuX7oJXg452ZQGy1pxhbbq5xNjOiptncKT51fHU
q5P5vKQ1Z8inYHZN5nKF2f4sKETgs1wA3Moq6pswyQk9cSya526qeh0pEIh7KUHUMWx1jLhWn9GF
cYoSfy42sVu85Tm7IyOZ/Ue/84HmxF1XZpDfPyET78+d2K2knyYzMJyo4rLFvGz2FoewmX+jxAtA
fnzVDUEgWs34qAQvjW1d+3EYXnzcC69qbiLwr6pgJfNVRFPw2AiYtlfyLF1AgVjWxaxfB8T+D+VI
jwV+tVVJ/gtGrDMvhjNO0nx2BM4ZLR2o9RHuks6sVCXUhq7lj/L6dA4OPNYGBtKsZo4n/5BvJwHJ
V/dbknw1TY6XT3ZWJ8OSvYXfroBg1JnldZqEe8vd4zLTAwVB/PDPuFV/qmjBkMEGlnp5/n3HoRYC
QDB9hxPktRqPe5vEtqpf5b9nMaAae3lSRTGUzHi+UH+xplvahYLkkiQWLn5G1jvh4de5Ov1stR0E
Wx0znNeR3yXBc+JgEF4hZ4bIpYiWYNwczCJ//z6JmnOyy8TnRLStaifHU3dmxDXsSpBIDvBoSC3R
TZm5nt3pY484EcdKPl/bib1A+Naf5nOoQMJGawEp9vA9CVicHwwIHyjkj4sTmmnL9954K3BlJ7Hp
uc7tTkMnbyMv+3pm+bDtMWP/m/fHPAdT4mIWXPS1uI1GW7GHf8UDfRW0hCbOskm3S9HBUrT03cgP
cF7iQE1xVkbIEWuAAFOsgUoKrBoqVX7zxUp3TKEkBdc2t33V38zXxx1d13icz2WgBqXkr/kf5F33
Jt39kXzLZgzAY/AZ4D6sxPf+wd3++mqy9NVD7UISLEhEyb35Lt70p0rDn4y+ajowyhgAEQRl/+K3
0wvmcN/fAhNzQZXpm/Ww2t0oa91PxdqEqCxzgorcdRY1nS2GorANveJYQFZn0CPMwPRiGvqjkeUr
zLzz1Hxnm2PRxVTrhsohLj5teL+z9Vj7TkM54tM4DO0PI0LwaUgXjVgIKCv+aOObhufUO37zGWj8
y133BHUrrXOCz0cTXmsYCjD5ssaUd/jGtWyr7h7HwY0LKBfEgT0cTrNuFOuKHCup5iUBX2bzoMcQ
f3aq9tujtf4Y3ElAdqiKao4QXVAQxliwiKWWEGuFCFzmHi5IGxNTe9Pa8icdk5dMn5sFL3XAArnl
Cx6CLum3b/1KbiBEWKWxS6wUbiysROcVZIPY+zu8Ef8CW94gEU8j+CNPPJc7J0offFJPL9VL+UiA
cd4Tt6HXFM4VyYsRDizILXlpe6lfwtzubi3YJIEfhRno6gtyp53Jem7YKdSU7wMo7b4OWDVOFuPY
Q2eAJ3B0u6iOE2u/I2mIU0M7V3THsVEFnO4SVQpbDIrpgYsgfQFLbZivqnCeE/lef0tVGmCibTRg
lzipnzRhRHrPQrXkedJQ2+25a+0sXDx5yWFAxiKsvTttoaAibDTQc2oCTJg8Y/7Rh2ueJSWNznHF
WxsyzWftgsYQvzDM+1Fr9U8YCxa/3/Eci8z3OvUdwNcyU4YKJCJD1xdxxOhnOJiTpOuJtwnRYGo0
ZFx/xR/sK1zucxd0WRBcqJmRK4IL1a0RF/yJ+ni8SAUewz6647sMdw8EIdY+RITjUNYMuiK+6rAr
vtwFisKz+hOMF78O2abLTk5FguiPFfzwcZSvh0ClZ7xy7694dCT69eFZ30VwQPvkrjYXnqQ0bUM5
L5asaZ3voM+RuAAfOwkrHuThf8fa5ekeAOkCxDJBQsShxuzacd/yl5JL7KM3qd9iE16klt21Cfos
z/FahMPK/GmS/vmnSJPDmgLrbbpUusT+oxdt2rUU6N0uxsPnaATWbU0Hk7FtobbUWvGi6PNAaPvE
bYJIHM/+M4BUjpz72XaCx8H4XuH2zHSeXLPU09AEo9+3wgO8cZH0uOr3JqwiKtB8eJHLLfFbiXzz
L0mcC7iZ+lhNmeaTnNbialTMhwcgf0V3T/FJRHnS6V2c/2lYTm72qRRtt7o9jcIkpfJvNvRfpgWX
45KGgqLS9OAe5VYZVl6DAKMuq05JIhiVJg1R6jsSzmm6w6fwrx0Cu+8O5gpKeyEmKixtgae3Cnt8
tfRbaxDu8/FcRii7nT//7ovoeGZVCkfNtA9YqfEf5ZWdxiyUkk6IS9ZCcK2S1F8mBwPhu+fDiijy
MxayamVQ3w1DWHbn+Uk1hEGIe1j7kBbqk14yrQ29bfAV9VETPVzL/zTo5a+jppGCjoEV1arU9Dfj
frF82CGox3aXESCtKGDH6T21S4CrUf3DA+0H9HWi5bfHLSpWZXaODTlAC4NVF7/bOEzmi+b03IoG
gom84TLP81NZ6O0jYLDT5kI5sGz7zzsPtK2FW8xrLnqe/Q3HxJbM2rK63g5dXC8vFndQ9UE3+aq5
gz0wrY1uziFSAYCsB1mchFq0o9WSYZm7/x8RdPu/bPQxxQwfal9K3rfoO6/7C4qZr2P1b4+LlrXG
bO5rCto2r3CbEQ0LkGnMXkQIO6Iqun6d90VGeoUS5DmtpGRu1HaT0cs2cfGTR0872JPYwO5pH+Hu
o46bud3XF7zgP+QfbznEcvY3hnJ6Y6cRdZybghwv4SjRS66MQzsNCg0lKXAOMP9AYcESbNS32jXv
03GJzCUeLOG2bmnSTx3RmG29ASWIqwpP1GnGPV+eRj4fxemACfTFO2byd42Sfn3KlDX+oKFrataO
aLwJ1R63wv80rkhPloSxthT4f3naTC4TUJiwt1yOaHx+Xkwo4PqtsI0HQTyrslPNTIVT3qIHz756
xCkhzxxtzekVtD8FwGEPUdcwM9PC2PBM3ZNy9KYMO5AniqM/QjFR/fQi9mBOusUDq5lkSMA1gRBh
qvada09I4HeOtVYLq145pxwDDLEcu1d7Gyf5cmz7t3LD07U1JxzAT+vWE4pN3lWUu9lQFmd+ixBa
nwEMm3kdk11XqUOGbfQCS9+HsX9lwbwVgQC0V9shLQsFh6a/WV1PGY0gk2WQ9CIJHxiE6rDtGgC1
WaPFoD4LzzB9iiwxTQE/8NJcjEoXcld306vMtPfP4QSZI1sMcth2Ch3X59emhFFgaSFrNDNeDCxa
ntw1av9F1eGAA+uUIOXKtvCBTTPl6nC1I/b6X1/qrLWpT8nvHz7SmLKW+YH2+nRhc2PZiSbQJM35
K3l0DrxkL4i21k7F+XxSEzyaQgIjrFnP6M1YAn0zWTWrnicB11ucvNqHUSw734jd5wluq6OHwFam
kZTTpnBEFdTljrkc/94plSDMsoCI4+8fMOibnArhQdKR9IY+gsYhOwmByLdd0YMDZ+oPCKqrpMQ3
INitMt6Ot4348Veg4diFsLYRdIN+slmD71i286YJ3Qa9SMkshU6Gq5G0bNTX+kDZGKZFYiFOaQSs
JiKTJz+SzcSSBs/J1wRP/nOroS9IT4Z/rehhyg0zUI4MdxNbUTiMtZx1f9ecztMn1iZR/qC8VOa8
Qah9axqTz4zQEk2dlN9H5bxujBQ9w/UsNiQis1ZjtR0KhIwCld6Y3sIJcvSzPTh9XpnYl0N8Lym4
5rV94ETAtWmuHnIa3ZpibM37FjAeW9RcgYyEMWI2zDMA22bKE3qHKb/GnjFCx/S0k05X4pbkEWwK
Lcid89E/Qq9tU3snCYTsBAd0xl2EIn5gYUCltAY6NPv/q0UFz/bdVq0yr9LvU7HeuM1MF1/q2C+o
6dcXIKGxsrSjilkhYq91pZh9MNPmGzAWbIl92rYPehsa3rwOytZCR6af0SEu2sCkaWG4jL04qZwD
9o7O3jEn/CPoca5Rha9CTN1sLz6VbD+hRcRbrkm5kndwYirD2eXQfR4yaVfh0qwdLA3CijNcni9y
/FMj1+qJZkjkNeVQcrevD9leWhmwd6/uMmd3xefjlUcOrlxyy2RKmTdd96MmV8AxCKUKC+Qttooy
d6VUvQx5Qo3/VwR7wg8nkeEU4D1UeGJX1KCeSmEW/IbolIEqxITmd/3Fljxk+PBeKmgA8su61Fca
wtFnEukszjlYJF1oLQlGfpjOKhW71qz5jjpjkrKclJm9vUyTs5D1tHvEzEQYUcyT0isHZFn/b7wP
iaJ3kdQ7PNttneIFWN78oT93QyWtvnWjjSaRyf/ijS+e7eqhZNli9R7l6Yb3Cqb+NUKPB60Anrg/
+W8OX2vQI2o5ztJOWH3ZA+YpB3NM053oi0zT/n2w1audP7H/2gIiYvX/3GmjK9Uj+79Pg/PTwniM
wLB5P52KEbNeFaksfdNokPISq92jLAUxkudcZ674tY/4UbjGfkiYL/HfLGyiiyV32h+lrmuldORU
OZJCYXXO/ouBzu8BOOita/NpEVt+AKnnZSm7I6nSZZ1WyerxbJ9qH6TzrnB+nwPb/9t9U2R1KWab
bFxfcSLo04PtuUSH/jsjrAMeA6zvXGCIfeqa5NcB2qfM0ykRZItvWvQxNSJwtTPSpnHC4cnU5aB9
SnbA+CZh91O+dPhAy6o4wGA3nJwChdfzIljb1z3bdwErYa/Mh4OLatDfM0W91doEQA7P3AUT2bjT
q57JwrcCGowGbtjKlB5DVMHqQ+9GHliecqvUHiOAQ3Hk3W3VqmXZa5VeUXHds/XPIgea9EP3hcdG
UfGFtVm2fj5xjUWo+ml4Z+eGCtLud1/I2oqIl/wcMC38oylOsAwm3VGqZnE7VPb8lbr8fn2TrIDx
uELTsgxLNotDN6Zfdao7cSFvi/7hoV9nsOmuVPlePkSPAtcjhSge/IkyDh64nOLTCnHaIJszoZTw
LmoDh/FJV5ypjmhHvjyEsH3lhJu6leSv4YSKWapxYA8W8yfDo2THbX8+qOrH//9Cu07b4q7qTjH1
bIWDueTBn0HQZKNWx+QnxxffpchRXVTAWZbjT/h5myPDP0bswu41M6DvNre0oI4LGuXwE7YOLUtn
YK45Je9PzluQW0MlJLxHJoFG7zP31Vfn30NHnLGV/kaO4wT29PD2j/G3IioRaJcSSduNjqUpfslD
E6BqlcTt+dnXN9l3j+f++ugtyQwNlJRNgylzj7wQ1Xj7TzDE42RLE4VUSgX6xIGDPzgbq1DtVHEs
KTpQ03Rk2BeYO960qmRWzKDFT1X200n/7K1R3D6nmvn4+lu260DimTK6cAvxP20Yn7KTL4Uk166i
mhvpN2YN4r4gulJ72h/f47yRk68g3AY1MEYO2K/E0yRBWHoIDuXfRe8oSO1K6oHSuXOZZSlK3FbS
Dx+wPwxT/LfGIqtGMoQhizKqaC9eNzUsWJ7WDDUG9KeQPPKxAAnB6s6pr15H2KTFfApmkxAQITzi
XSRzBQNQOYjhUqgN4tApKQUDADQd15rzpqe+vy1PxW2YY2rrlBmO9flpb5MbC1pDOhblcRdO8qzV
nnkN2EmSVfbY7OBq3jkgQHJlwwzbX0RoFmk3cBoWfOM3YKkB9fKZ2zTfkJsy78EEueWIjpWXRTCZ
wTMAgEQ8u//cWWsHmG8hpFaC7Z3e0dCfOmajRSyPGO804K094PDUbGm69hzPTAML1FHRwLqMonQQ
DqhPvxN/oe9VFYX2prmLJrqBsCaQgfaOUT5f9aeVIypCNbaXrbmFLI+c9GTQqkOPKTefd3Vml4Io
FWJMKJTPfhlHGTqjbIpGjMXM908Ij0HIQFWM93pnqzrXVLzIW0xyIUtqJ+aMq5TAFBt8QjtRm6g+
d3Y2lfubdDNs+zOzWOZsfgCdA9gS1ohHQvMbNLIIyK919divYkE1bIFWNu957tu0WGZvYl6T6us0
1WKCqlveMH/n38PrnTHh1a+fagVYknF3S86UGhpPPvmBLMrUNyHKVzqMFy396ZjyIEUQ5RvgP10n
KDnVRyrnF/Y6AU0b69yx5C6k2/bFOYhhQ4E5+nLrDQVK0qe7F1mxVmXG7ydbM1IbS9vz5fKChSZm
91y4aaMPg1A2xLjnUvfL1sFS/fPfI/VLH0DKaCUobA7JNV5VTZ5yGZv7A0EMDjBGND0dDyMQgyKz
nUNXTwtBcN/ie661rGY6VoV69boG2GaMejLSafEiJuau6rW1ZG4LI+TRvkHODg+zoEk0l8DPyI8a
TOpHfhuC/+juLzPOiuYBsYwZADgy3X+gMlZ5VNYykw+kR+tT4EVpVc75em6DD4XdrYJkC93Uq1Ux
rQv0AaIz0QuZWYvbRcZU+Lku1fZPoVfvmYz5CDpYxFKZZi6+wIu4EwFrW8qb+ErPEi92bnbKF+RG
bfLCLiHx2okKAn89FTJXNwpTsmpjdFyR+Yy1mAYngjYmsr3CZ73TLKFc86GbqBqIiib0H3XBxPHt
ZfdSJfCaNXLJRbmy1/Prr/pC85zFNEtSM0DZyMcKLTFTANMfUtU/j2WGJR15jM27HECn2ZnpGj/1
WkcPGLGgsEg+4ydU8QTPmnv+69htleiVSm5RoDLa8EE4yUJmwoSTiC3XYwGj6ZHKQE7RUexe1LE+
RTK3IVsWEgmYMIsj6Q3xTFgFulvDfMvoAV+QTQRg77Nax828eLDJ2T0XNRlmTMgWaiKApc0rpGrV
NNxHl2IVC7oMXvp+kqRt4Kg2Ou2381i60fx+3bt4mztv2Kc6nqCIWQgvyB5FpbL1XdPeupp8dyai
+PLPfbYTgqbT4qymUuJNld1mWoesmqK6qG+xyhyJRjjB3A5h7m/YroAqWIQ9V62l4Q0IbKoZZgnV
gs8l3cjSLZwxsJW77nUuym49bGaAdwJ2MRldZA9EJ8CR3cWIJCTpy0xPUsDjb6J4RhG5/xXW1tXG
D6wPzEmKEcE8iMM3l+jHRrCrlBpL2bEVVnRZKELEqYONlpH91td+axbQGlSPp+YSMM59YKqjcCiX
/WJF5UtytFyaWR2ETdrZb/FDaOsbEqHaxGiOZtRdg1Dr9TbF38ihjJ06yxCGTu51tbd1maIDilOh
zDEIi6nErs6t01to2k2ISJxmuSZxfexe+/Jn0qYX1T27dMT78yM6fDiqbL43nYujTxXXJaDq+wGP
Suc5pxS92HQuuFJNhg+nBN7xFF1ZWFIpvgTBwy84PvgEkTk6aF8bIRcaqlj/OecmTeVpeX00Xxr2
HAuJkiOi8VISGcUpWVjWCJUPsRd1+P87uNL3a+Ht+jrgs/Iu3RV9f0FQeDGImXZac52SJxFNWJe5
WJeJn0ujnPghNSYrmbZ8pcRQNc/ef8TXEagcr26oc0TbXCJbMqoMcbq4BQlxHNdBk6fFwhE5gz1J
elrBOu88OS9V4cBU8a8IqCWDSZH0vxi6Ewj6EsGGdKO6blkR82JhbYkMoGSL+orLVK5XUnKNpwPT
P6XCk7rmQf/aV8f384beNiYYqVxj08ZH+grHYnMj+hL37J6E/oqHQaheu5ResIRL30w3U/svYhx0
EJHBvS6U1s9LxlAGb7KzQwPA5F2XgCEjbWnzsBu92jPxUdm8/zk7WRVplwSTqkhVDGjBT3Ve0VAK
lVlz2yjl+UlV2I6awHiKxfZmS0NpHjg0fnW2mdtXZHJRcjGxUBjBJxbwmOb+FSiKJqYJQyMuKVrK
jY8J5KnyxhG+VFZghIMRBwh7K8rjxrzwGYnJKcs6r1ojWpD0pytDA6U7N1ni1PupS0oJ6usZP49Y
cdK2hPCCyafoR8pCjQf9q4z/KCwVV15j6MuMlmTSCl/PLpf69rHhIIxdJcCnM6tOZn8VLjJ1b17v
6lWPH6nf/F9dIrRfhsHuWfV3boqt3i1Zg8m9DtiQ3yQvMqEkIwlAkoVBk16aFoemhhKvl5QlRcgX
vva2OXMP6BxHVJiPmavuNGZmtMPT+hMiS8zh93+HnP89dSLpRpzKGOTB6+h7EREKNOzkmGKdBt2/
NfILZgRZUAAmZTeVA/sQgChLo9IJpPh2wuf0xF9eFYc2dkpm/Nz8TJNJMPklK4E1lqIXQQaSmU9n
En1B25D0Fr5kboBrbfpZyvIEv95kI0VfszmjujMtxfaFJ5rQkGdsnQJUdLD7oJjwtbHOQ4ID/c1A
CaYYo9BIT+Q2v0WCAfzQc4iNLSWYWdkzk9/aJAD6SqOIfi6gK62gOiqW7ZX5vePVkUEGSHSPYva/
lxfDdZt/s5zkc7jMfokIa2LwJ4w7SJLSVLQMNpISR2/l+tBl+WBwWOucwChREuBC06ABwh+phgkT
NiarCNz9Rq6CXQs7oSvgwZ6c/c13+YIVHsteMMKw1da2G+G92n5aMBkjfFZhOnyrr1u2mztHsLmF
mvWO50jbBsv36Ato66EuVTzjmhjCXawIxXxl1Q0dXeW3XDkBhFwtiLk3b5lh+Jl5faL+a4VASvc7
wtRCYo9AOvxFylYiUz0bP/9zo8rxPtg+1a0rVmiDHF/P2a+E/FwJWcutbtJbLxCeZFt1kWdhYILX
MqoMHpG+O1x4EjKAXK+YGVDiyOuRix+kIoUg1QbtVOyuoSvl2OHnyECV7UUZtkbebELcZHQu+sEr
4Qqq6n40cquIrEZ/tf0SIDXsrCeEIAAyhFgly6hnUKISkrN2090ASeUrXbgkdy0ycHt6kOQ2v43U
DnCz83IGRZlgN+vMe3ujZESIvE6UCW/E3xoKedOwbCBcxwbja4AWs7CKAX2DZlWvQHy20/hPnvJ2
/f8ujSVVasRFQk2469YWezQx7IdLOu3BpKPPtsY4Kx2G1nYOIqWgfIdW1fNabVXzq6NSugFr/yoG
+QfYOY9MFTuwbrVp7JM6YhQ9tV439ItYbaohejPGgT/YK0QtMQENpjgF+k9kHl+MpOSmD+NK1toQ
5y3MIPGY7grVamuSAy7tyOBOUOeOCjIgk5HHwAACekJVnqQrkm9+MZhuCAp59nilyck4MPprLgrm
HkODlAh9GYGWIvpoxOHXirs0TgA1XV4fx1gw0tJMN1IquVr/cpsGFnHbyLafqZGF7ZOB4x9//9qN
TrYuiPueGnfKFFDsEbHoCEkHKN8QGpmJF2STW96S7IoM3+aSGQiEobXFwf90V6ujSwM3e13AcfS8
z9z+ZFJ4H9zoQekNDbDiHhxRWe3ho8ptwKBkCJD+VTvS6ATbbrvkA8fJkkmDOZNB4OwTjpT+WnwS
cdbOxBSXGqe9Jipa6TEqUn/EzsgwAX8xTw38fsVfOaynaGma0euf1sSRUf7rECZw9CWuyemhKAl3
/U+uXbLvgo9uZKVWlEUvsWIv+jHlA8oie82pwUyPzSNgV16pXyT0sfl4d0dvmuIR/LEtx/BFNb0w
d3rQwFZmGIEfjFZ3wEmzCeRtQAOV5EN/evjW0kXUKz4VuEJ18Ow464IkJySLjHALqiIT5TfjakBs
Scg2jKYSDxv0NPopCssguOB4Znthcnh1XKlPeVSW+etpWxCWQ+/k7dh/LjVUD+D9/RD81thKa3dp
6v4xi2xc8pHhVh7dNQ6uYFFmCSdX8h5X2vUTTQaG1j6KA26gzHMb3ZzpOYDoGLhP40fIUMjAxKR3
vU3cxnrhQC5zkMvMj4P80SvTYZCwoRbuiYcg+L1V1OlsPnmc8y2b2tPy+67mqSxxF1+dwFrkp8Jq
SDN/UASLLbviU/dMGCoZ9alFsdkRA45bcLVLnjn6EeXp3EwR50hldbm8Vu6FTOBhYSxZWjc93U91
zYSfxRayKw5kuc9M4ebWKT4TcrO9B+hpFqW6AvBYtT5NNO0tjtEpKyLfsDgoff1zD0jepIDTQe4R
VkboyiFKdbiVdLv8moVsLf6Gs5TeX+lvQ5l4j0rOH0LDjuHeMsWPi1s7OLzvxmM3Ure3fmPNHU8A
Cmbz6Oy9YITlYtpbQdseiwha3gZ+6tmrdrW0jnLdF0y2TBGTGmCO1QKrggEXZ19ZZV57UKTEESGh
vp1O795xW0PCx/cLqHYhEaHZa971S+gCGRdyvGxNdDTl/JmrHOafUgcTsu/G8Wz3EuIcmlpVGFbt
gGxgfejPGZKMStzK3DRMAIoX1Z1caNJql2QQgMwS9tAst2NvQx/bC/oZuqT1UhCj7f5QRS2bkDa2
ZS1CQ4ueUuBef1o61/qnzBJrk2s/TDI18C5Rw7zCdOpMBeH0MivhN6GEko0+f1wB8gh70BA8unOs
FKdhFU7SjNguAB/S+uIRK3K0TsnN6yi7dFnx5SuIYoqDOTkQU+z3be60vtPKDokdMLraoVpmGxwi
v7ptxNexlJZzjsW49D1x2yH2cnqGKIUa+iv11m7iJqwh4Bt8ChVL+Siz3XIxm1/F9M40XOz3FcPC
UdGYbf3JanAF7FV3iVSQcUybV8OOVjZvG69K0iUA4ey1huD/q7ln27BRoRLoGNGGcQIbXr2Tx5tc
F+chIi4M52NtPcIHhanMc6yy/SEwKgzen1pdTmAqAaAG1gDQ4FSxZ8NPNEM7nCc4sOnnBIM1EA4p
MLCwFePAF5ACKyGqWwFh65Jdy/jnGtkV2IcaQ7VWuu9Nat45BdWFSqnkN6pzcO7wjsN3j0rpZnxZ
6HZF5wvjkY3rh0PQiSdF1u7lXbCszvjyX9OTgExQb42XlveFUJYz8b6Ib7T+ijbDNxJ+KDvJ40r+
ncZ1ZLW4+Bjx9tVcCUXGrlBEJ8r0K2oE8r/Gs2zYBlQwwjO4DBacjgiWtJ3sp8XwaOry3yItXcEB
N8gvBoEgwRyWuNPF8MsPS1KKAjeAtzdBNH0J6A8S/AvjCqlYZd1N2tmqpgDI3Yyh0uMcEWbTPW0K
n2A1DZkqfCVRRc2ccyl9IwU1l/m13LhsSfXmQtqSjJF/XLQFm5UthyBKP4XV1B7Zsil+2PLOIwgk
lLyU/AWr6+TGOHI2ZpPl43FqkbWwXuJLqMVmIliN/VuWMxKUUJTfcT9UpkYAKu/6kUe+YLBfo7wg
zgPp0Q5w3FST4QWTOKh2MX/FpJ1jaqm4kC2QJklb6dW6pJaCH8bSqpOxWAMLyFYQ3klEOlt+rgcV
6nxnUggeZn3w1TibL7qYvfJq/KW3vbuF9EG450Xmdw7Xfw3uBLkWBqRWSLHoVY7la+5RHuzxEk5e
UUT7QFVS7dgncWxaoMw4tVVrps0T7TdkH34Ht67R3E/r7WONaxtvzexnKN+piN/Bl7VkUdx93BVo
BOpZ/Dc61KMlDC9VBzWOFeygYy/rboWTgjXNP9VivY8YgR3eNt/1LB4Dy5IYmRgkthaT9kHDDHX4
qV0mnHQuJGMOwhB1qgmWLnmrpb2matMzSQHLK1Lhoa360VOMuneHBHks8hYDdzrzaaLcBttKwODa
y73fw8CdoJCRNwtP4rneGux4O2MFX67EVKh7rx95/MfcH14Lr4E0oYdepFFgOcx78n0nBzGPsVSG
NJF4AwpgSWQWvV8QXPfQ9tqSIJjje7N7fuQSH6T17ejvp9VUOv8uin7oOd33GeIPbefCD8aYKsG/
op2VTc6dLp/0YqO5Lj69rO3nUmfrfJym2/n6CbKEhA4mm2SsBe+su6yYnYVT5gLeFuzpXwkYu1Vk
yJ0OIzTZ7Ee9BlVu8S5oF7biTM6arH78Id/kV8VWjuDh9L1JNPRoJJaS36coYSOS1CSgf1D1Proe
+IBjcYlARUmT5hwLKMYjop+KNHZAdPwVXeyhiVA7QHTjuJJo8MRnuOtTWV+ZLR4KNbGvVfydrbBM
fc8hSgO47YG3p80ARXXi2zu9l9TpRobe9oJI4tP5r7zGnDBRI7Vh4W3oc1AaJltnsMjGxG4d6SuU
me1TYv45vchS6i4wPYNOAaI2rRsWYUwTy6AeOAKfFh8gM/EXz8pwPvZfsBL3ajdm5ZOM87FeOmG3
yQCuvwGyvAKEnoNPlACgy2/ynIHtAkZmzao9b7ZKH6yndZYGgUPkBvdl6OSLKupaAjmYqdGQzkLk
gq9X7W99eQ7gqkHNqld671I5QrKdblMiWPtQCbF5Y/DCzfDJiSa0nQpmIR0dBpGVWjunsKZUriyz
HPdEe1KjJwFOXeKYcsENdqh6At96bJq1czlkr74mmd0w1TejVS7jodMSA+ncMU1KZ30R6zZqNKIg
VJ3m1KCqZTp6yrCs9Ik1Nix2ojEiWtWQs4q/ZhKw7E7mPTLJDLhVvQs90efzjZdVTCz6aC3NqAx5
x9B3kxAmGh/w0TBC3qGvqlwB3Qkdjj9ILfNoyqRcrf7TITdmY7mKFD4uIoDZkUTsojHnW8Y5+h6/
KT/PphVPybwC9DIZVd+kgXE9k/kaSEw5nL08q1Y6uBeWHzU52beoJXm0C4JPV2lqy1HDbRryLWp9
t55Q8joZxFKCOcSXeoUSECOyPoWAhFRDN6gybH/QyR0O9QE6J86hmuRbsBXHHQ7pKGWzg/gPdkPX
BDZeB53rcKABvhk8kzzkhTTFrQZLy9hNdJqJiPoIDNaS4i2yTQKH4IGiyiEo5hjwtTCIIPaDXIS/
F19I+uSo1RqALIGSKBt9xocAbey9D/trU8k8qbjaXs1qae1a5j702XvY1h2kGjldFHd/9yB8A9j7
ASoaoRhtdnQ1aT2KumsraEEu+h53DzYctJW7/oNFgGSYGWv5Mn2kFrfetk9nZb7/Ddz7gpBxMCrC
0/9lXnk5Lc0Ffhs80hLTU4XR0sSZWc/VRxCzmIb+wtMpT71TW5w3Nk5nbyQ3WMWJRvGr7nBEtMGE
zVdxxK4ejjPUgQhqw4zg8w39dgPVFSGZO1N4mhHGsEAjPp2yr+x/L9nFyM+WFqomUgv7b6/O4PfK
opkTU49X0UpiTCfeU6ajJSQqXoDmUM+KrvRVDUJRMMfyvtitMvDfwLYKS2LGvKysSj+tBPwJbjZm
bI4vlp0l0ne+aFXbpanvV1mqkNCSDSF31wNNU0rwZlWXcx6uiWTlquiBDRFiKA2SyL/FARqV9k+/
K6izG9INfA38+mgTBuKr9tj4ArfociCHlKzxHUP86qenXS1pZkSktasFP4VpESdKn+Lt9J5mfNCG
CLBqW2vpw/CfKWFlh7aGoPQFxiH/bOlbGXLEbuSik6Gy7NoJbdbYsZqvYozGIg4W+0l9SeQQu+e/
LcChUdeYI79KG870lpz93/Z20pCplr3fgdhgqplAeTJur8UvBFXUdkWI2F4ZjOLyTRqV5h9DfQJZ
d0ahKl+IgoZoCZEplaDvdwQ/s2ZxofJzIKm+eWitkhQwlsIsXHSaSH6INQ24/WFMYomAuJct05sJ
EnY/L39tW3dIOpi2cxvyco1KxoOFPRbTXFC7qRhUUgisjv4RGZIS4xJXSCRtSsgoR0URoGIPK5dV
eCZeuhhYFAk+V3OCcDUwJ1mhFxwE/ERlZ1AG1H6F6cLo4XuSwmo6cGWaluFDkgt7B1TBuJeMUIqp
vfjYxJF7Fv2EuznRglSCSH6pJ+1weiEMlSz8xnU3/LYzbe+jblX0VCYSp8y3zJtGAVleylMNtneu
y8cU6IC8NDgQ40JdLEWtkn7EM/tCf3dLH9zmKMZGR3ZMkelWAzCpdp5N2+RiaiLWLgwbrl7zexJF
KtMK0QRTOfwWGhA3sKk+nKA5EgaUxf/umIpFIL5eqCxiRCuiY3lp6Mg7Fnap6aQ4hDhUGHUZtjXf
wXI/5Njiu0cWo6qIYf+EGcW2nh0uVbq44p8LdVH81RzWq5AQ59ekXpkiv8ONmYr7Dwj9AwWRW5We
fmMy88PQ2WpjPkr6300/NcifRrtPVtZmeCiVgh+HqlCXlS8WHDr12/XqlnvVMoBU8tIh/q0DMKCx
ChWds+OxWY5ekeJT0GraMkprv9wVP7Xz5NEpzwaAGGhf3+/0fhPb29emPeL73SEPDJsIRU3ntkSt
b7XS6OPooLDB43q8PlQt3TSIXIalLXdr9Glf9I7AW+/o9xx3bjXqmNd1x8IkJopqsWL4VMgFNunJ
WRGyTGLrwlb2ZAPR6hEzAAUyHNPKU8TNpLQ6qd+DPG3Egiq+ZgOmTLoGz9/Lm6GqCNvJGbyll7eS
F51vJfOBBaaPJGTocQorSUWGtz/0TID5GxM6CxvNicOym3bSmMTq71aETtiOXkqRsVi77jQXFrDG
KDohxjx8RX6Brd24LQvmunqz9BJrZs5YgwJc4tMcdc2NiKY+w2DkiEqhE1cuvElf6piBKDFUzuaN
HSfjyYVi7pSflBx5EKsCih8GmH9aVISNZwJC86NM1fK8ZknoA4aRvY3fhDORmWYl4uduQsamG5Vx
SGdBfQmLYn2znK+ucSvr8M7SrPY2TdwH99+2NEV4xLjVn8LB8Ui6v9QGp8ZV/q6aqUtFLvQ05OTI
G73MOSHl2Nb6rBMBKilwD8gxo90jLZHqptkyBFUEBllAH+K3WesUjNv07tqQbc+vioGOUWXeUDRM
HbUfF2tIgMqMXZDNBuN98MfffDDdbUx4v7jCDkd6KmVcvfNGBbQPY7EjeVjQyvryEd/YPQWYN0Qc
Yezr7MbLylEK87YfrDEi2aebs7zA2LZ9NTJ/ndZPh//wZhBqqRHWIiLgTBro1JcNMj+E0B+RJF+k
6dTsCb74ZK4NXaf4WbrGjjOPZ5B6u57eMgTI/YyGbK3arLms7PyCI3sXXsYLd/7LRJdq4WqQQOxi
fKIYOX/bOi3pgSnvQXM5c6Lz0yW45TRs3UHExnVBJo70UJtPyzIat/ICBRBn0oO/nf/WO85v+73Q
hDM/1v4uV01PM6HYNX7rMOnWmbi72RNllDaSoW0tW01gupaGcacgSERdpn5MvkU6i0mCpfuvhXMw
JO2hRclzM+G6hKeaPubqWhtHIPbScM3uxvLrTUB4iKmGCzIFW0/DlqYc529X7ASNvJuHO14bXpLJ
cJ0ik9YDywW9rYHqfmZKXefCM7xwXqIMPpB6Ytrussk62s13h8w88azFlveozowUsvPT+BYxWZDf
UDTi2AWrNDN9IFUarX8AuChtjFiW+x3OzlOOW7eMMkjDbCh8fwQ0wHtSn788jiWseznSEWgG8kt5
hs3lKgZI4psmEbf8qu9V92t0Boy5jBrx9+GBEDNj2FMrDkMPhQMicdfis0W0IWo1XVn39xGd4/Tp
r68SciBA4Y68DsEe7FPgizC7BXujXo6Q16psFccFpTQBiH+8t0ztXDzadO6N9DT61XEWLBmf2rol
SiVazLqicGPIyrRuRRKUJFBAPTeSYJp4sHa574qmOmf5gUFLH9Zn9ytf49CedyrdkYzqhwOFN78y
p6e9JSc8/aril2ihwKHau3/0/HcPXvnuI7ipP4J82p+TuhaW2ixj/E10aLEW6rwnAId2iGXQDN/R
YWugMg07Lvl0yxbz2dqMqSCulm5s/4T0qw5bXxI/0B949dWRKZF7yvds6Gvv9luR4SUkEl9dOzpH
gzac+qIHLj8Udt+axquNPk+Hdn/n9Jagx9EyEpPetlwwa9ZsT2xWSP0FFbhRSjRbVJ7cZKuoVz5C
QIgCV8OCzfAAevbQyUm62jvnAlM1lsiIBg2td1zqlGa2tfQHBfSu3aNBbqLWeHYB8xSFfUSLTgdW
zMxcdeRrSBIu8UCRF48V2hoYWO2nqZkJCMANCViW1VQ/qDwYHyJ+8wMYj5SYahs6bv5u2j2F+hat
wIuOzU0jGZQAWtdTk2NtvMEywCERsrOIjEQV7MyJ65NW3eaWibthmcGBV908WYtVbwmrytqQFHh0
kBA/BfmrkylpynTL/FyzCelG8MSpthqKU1OxQmK2UQitcPDMCabHxf98zivBTfxMtbmzvz/f4BjM
RgwHq5wQUvU4AgcY5r2npGU9Glj9K3cN3y56srxKlDXek8eYyyQdDgibQP2vtwvql79tomPjFGht
D12zNm6XUBpFw7lUwoSWlE7g3moa7KjltprNkDHCXvZgq4dode/cZL9bOxxvJ+kP2/txfrVIjx7v
psoDmGLvIrxoTYerGJKqf8yi/mtcuyH85EBzabWK6e0xvZ06fl/zGAbynuiKAciXh2fPgTR2rrrN
RtVX8/1aVz5RXvraqJgPrFGsrhdZDZIfcR+bS4tajnIfuEl9dZj72MHAch6ALZ2sIxWv6V7NFYGk
Aw7pHdAxfQOwUx6TNP3ww4JUeBWUD4GXBhCDTRp0zyKBSn7YHt7bd6OSQcfVGblkVsf1zgtGXi+w
OeO+HNaHL2rGYAuCYlTQJPhPdsG69nTxcSWEKG9jeMMA9LVeyYUR4CaFc8iovzN3ORqrMKstsmsG
rilbrV9yDQeJgJXt/IZEQn1rXee+dBot+sR6alUidCUcsxMpiK6Xu5H7ZlGDAwowgfTNHnGTziXA
3Mq60Ccyy3M7LPhkDaL4zG/DQpqsChGo9p2l6G4xNK9SG3ueLNN8q9Ps8kfV0BS9GDecRnMg692e
8qsJTlvMHmcQXfsnBE2Dtg2qzA8WeYJbvL2B8JwZuTmN1NQ/9eBoMqMG+Oet89gdmt/hozrFRVPN
ltKplrb6UQQOOs+qBHuQnAmN+fl0S0R50PEtkXdAc7z5/p6dF5qfP2r06LniUpv5m4ESjHP/F01x
kadjjBlohjp4e8BhdEWw2bMt8URS+lsnOCtJM76fNPxH0UDzLF0c01QfcRL1qZphW5VIdueaYYjj
M+F+ZBQ/Fw5xCWUloORa4NPzjWnp0aZiQsh7gU4l5K3z1BTPeAHfmm3sTWUcUXdnVcZSB5JfLIOq
f/lGx9K9ilKEz1S3pcDK2wLrIIK9Iri2ramz4jZ8H2lDXGBTl74do/w0TvXbhGSwC/HQ8w59BtfB
Y3FKzdM2kdgbHC6nTeKiuMpgkEL1dzg0XUki/wPunbjPAibKQ2ORKxQ16ic/Id08+yE/BTSuZrNh
ajsnGqVfXaFcRjqK6zXCgEY1xx/+kmq1xehelLM7Wd+8iyFTjYEe/xxOa49UrVLUldZmhK3ee3pr
JjlvUL3Yf5XX9Jo+5aB1Xs4uBqjsOQUN/mgE2gera/mgV2sUzNbnpPrScV/NqxfzTPPjceF9jtKA
S670zvwwGP9Hs0KE3YGEhVTXmFFKPFLTPFmXL2Ya6SRKmBO79fhhe80HhZEB1g8ZI5dJEMiV5OzM
9FG3CsHnWVf/+IktSR4y/zJjKl9m29THgDNGC2F84sTrWNDb5Q3NrGuIrK/ynRVAjChBQ75s1Mp0
IOzTtaua0mszk2xlLchQ63auZ37Z4spAWUmNjK/MJtxidPhMdxGl5t/WP0M7NXqrIihQR1B8tyjR
gxxrvYOv+M/dAN1WzJCfKPM9IP1WCezvFrDVqJA6s9IAwAJJX/wzyBwBUIL+63SPlSU47n/eFqcv
j7ne2QC1XsC4n7sW5loueKbtoYRtu2cY8qzedbGkVFCgfwwNu/P9SdxdMLgy2rA6iHSHcyHLFr6D
XQTM72AZKIbnnpK4pRg1ag6f4HpaWejUSQtvTuOzOsxgyDdYGPdaJnxX9SYV79RrxBWDMpg8/ZBx
oOx1UzJST37mbB3RUZ0I0gCi8v4wpYcVl51PFR/bgf2weQmYS5d32dtOVipxGuR1gdNdv4YyS68U
BpNFWNKB0/gieHZ39wKt+3ilLSesknCwv5I4gDqUgTm/tziPXPGeHn/0erD8gKU9YMZNdX0gJcRi
yaNmQ8FBNdLbjofLi729/Fl9R3tx32LMqgaUUsmLMD20aM3OwlqKNhdsGxmRcx6Nb/WF4Ydsj3JZ
rhMHM2JL7yy3wBS3+X2oz3Qmb2Vzr7qy2nH6zNm4iTSOc19zjbcabjl/VhVVDcnO5EywbQ9XDXWq
rXcA78glVUGVGJBrK0dT1/h88hKDCjqQBHREF0w49eedKnePuUYaC3wxsuIQRHT5iy1AkxD2jqJy
bkJyiYUebMH0FCMAKHSUn1T8QNuJ9mTiym9C2RZXdBl7sqk4y6SgbTrH34oJE4tbWEqvJ9VXUclv
O7BuPLnvbDw321j+R/Q0zhgtnxRwmHfOayRiysCTqcrk/ipRSyZgNleNxTAZ6dufQtdKn0gD/kgS
aU8LyaAz4rL1VS8NrwZN6VE23ieLzgvnnSUjei4ZsgLhRIascMve6YeJBXPKJXgDaFKFviPDcEjU
XJeXPSXbPFG+QerJxTczROxHGNYzUaf08TBfelMFnnbNRwbyFi/9AV3fRciB1jU1ZA4PPrm88wjR
72ZV5/nzOt430O/0NTJFT1anhuvbffJ4Y5fpZslc++46CFGvwxxBqgdeg4noFsUYw10i7HrbFTCv
T96LCTluBYfPmc9qse2idMP/su4RLq286n4VcdhgtcU5TCN5m790WD5bq1AeuGmdJ03NpVqWXT5O
gTTl3A7iPvNTRwtF+lJoPu4K0duBwOjUj70Lp53LjnqUYNjDRqgcxD/jm04puXbz3/VZSPGwOkij
BhJJfhDZPbqZxjHGxtyE7k19PALiFj+fsNf0N+DlZk4WKPUohKJ+wD2fpE80s5ovTzCa4bJxMbHA
KqJGQlM+uDYof6H8EohZkTxLo5NKwtkXD4zhSIu6VmWA1KoileBlblZJeZsOyHXqyCEKDGe2jkQF
LGLtfznvgYUKWcme07+OaAJreFwd2jOsaEp4VajN+IDAV5n1kLjl0OEqUyCxWdX/WpijtW0tQEcj
WmylIjkR9k18v3/QC8BDn2nY6Rn3OagYPgrEPTGxhcGR0VCqEcjv6jUhS9uoBTmOyNEJXf1aDmZ4
3viXp0+dOjfvCu7MKoIAK4FSEGtOnYJYV9onUuUUkrjq4JJhhtdGzkAyIeeSSZQTUXRSbW+eKpPb
xu6YRQhiUmTaJ/pYcb3Ve+zJb+S4SO9MrnqoaBmKAdb2TCfmzeq4bt+YFDoJ89RHwJ3gavGT5QTj
ReOB7SZdfzPhQ1H8huTzTV1C9jfztdhTH+cYduNQ+67r6MOKRNJkiDI5zMLQQ7Cw11+i1QUnaKgu
oMWx+wHmZ+6kTNRZfB/7xOtaUDumYc9HIRwVNtQO4VqpG8g9BwwpVgmbX1U9gFKEzzMRvTBZzKyZ
L9eW5+R+6uBRSCAuLZdxYJzea7ug6LjQt3911Qx9mdouFaZ5+YrGByr3jING+sh3fmu5Zq7+lxDV
zTBm1aSMsOgQ6l0yZz9NED2Vc7d1BrdFA68WV5zD1gFvXsF512VUgynL1btMCWwQfN54s3OMrjjf
O9U+4LSbyrsbwS9YgE5pn1JFcE4Iap09Dx7SgROPEtnfTDNfzfyYoX2LD0XIdwh+QbhQRdy6e1QA
lUphj9O85p/fTjnsFyadcgptmA+2YjsK0xm1qq1WxKyxNCHXSy2dWz0lBedwp51C0iW4TRcbBGpG
nPKRVios0OPGd+RN4K5X25mZpKuy1l60DggZrNgiz1DkWsNY9iuyyWZfojll+qy9RHtfJOwqHN5k
A6vVpE+swe2S8ePm4HTgczjlYRhLno8Lpfb0fahTl4YSXVNiakKiD9HdzkusnNV6ArK0tvy7hyCr
KlTI7orvflsgxXDEDVMmU1f/y8Adu2z5t9YK7XkWH+zUw/QQGNbaW76gTS6RhPb5RlSrncfnpl6A
5ezg27VQp0giV4jAdWAYsfYC4B1CWKvFyUwLS9dNgwYK74zUFlNyrPFk74R9sEcD3xFo0l8FjLNZ
62mGJsZJaviYyWb33QyxyoG2QVjpIG0KRzENneab/fQ5Yzkrfu18LzcWmoj1Ln3XReESqrNSVCVx
EYHedqUUFW98bi9OuEYfbz9vNc/2B3KNJMSJlOi17JRuUhb0OVKZ0CXA5+BFNed0inNsTcmWbzjN
bnN6tWEaQLn5Fd+UHWmIjIfkcISzq4fnyYd+1F09YkowOrXuhWuNuEMaDKrjNuq388JPNk0lvU8V
JBAllEsx1YbrXBML3J8rXrf95LlQdDxJMeXgR3xZNePOATwpO63MnexTx+eLQmBCMvStFjKBKChz
vUmKoFdpBO9Nfc1B8QeeUjZen/enBcnnIqe4kaFmLrkIh4e6qMkfDl6Vp7FjMDnPqX02ccU7HdqM
x57K7pzjFT9XOBS0Q5VcxMteGUVxsvse4p4RdBkdw0zJQ0D0Nyw0iOJ2o9OaUqLhexQJcDc8nvdf
Uwg16VW8GAyMQwi4yT6gpfJ82hCg2KByOcZJpvpyuGXmfTkXOCm+n4zN0ODFjGnSAxVJotDFnDMt
y+ed813tPQKWPmEzINzW8pEWNzXTcdAJRZBbXHdZDv6BRZaIGaW0SZprYR8gMkhpXkOSo9SgUFsw
+2sbS5NH8NxhDRa1L2wzjhXZEb08fVertEkm7tSymgQTGR4/tbgziT0Ng2YSTyOwwAxvTykVxxAC
Shh+51DOAumKbOYz4Z+LvUjo5KXFG9b5qHbGUYeoW9EW+yQPZanRy2LZacqF4wGBzdED9wakBpMW
0YGb74sxk1nNq26v7nqxXh7CmVilEJhHBsFPRS1UxG+CAKVUPBgF+pAmoD2TA95SJad6DV+Hl0wf
nur4HansZkjT1vJtIaeVsdQaBzdJf19PQuEf9mdIaMctBVYA3Qs6wQzjrgbWhHcxOMgHrQPGbmuR
vA/yGCgful0dd0Qz/b65oWNsJa4bRoi9Ynfd6513B5bzFTh2goSloS+/NEj7Zg+WKPjBXnXQFPR5
GdZY5lrRVhYZ8fsQSt8PRlLRCzBbJ8K5vepTykd05kofN59B3qeqMj0J163l0MLFHNqpKi3l0OuY
nZy9l/uflzclJaqAJFuqknHMTXavCTmm6YSu/gMegNKEVyhfA8qXUzZNpmY5bZX5P+eid+HT8s4Y
hvcVv/2LaFj7vh/kDidYvpZ6Deqh1mOUTZJwpubrfhBOpXxc67r452sA/6yzZKKjOylAewNCd9uH
MoLmRGOPQv7IKcd+tKSdsal7KBachGCe0tOYK49anGnmFC8sJ6gdEkNNDt/1yWxA1mc7r3HtW7cQ
IBrrzgk0354dLiIzNLErEVGVKxBbXIVnasY999Fc9pKFIPkaMnN3T+hSNOPbK0tpNc7FzOEFw7bW
Sut5iMk9v9GZJA+9wFGbxC+eZZaCsvca2of6tMvoPTIDyB62Bq/89mzBVdzb4XtUaYYeCbpejHOj
yUiTW8eTN1K0BeJ/MYafwLz4dZmdvcuVCwo8Cj4WZTFCa5HUCqZE1qQz/YHXp1tAEVYzorgN61L3
Xr2FMEqbcPsPUfFthkokPwX0I6Grj0aHT0ZkVsfkaf49DDtXbbqvVoyUnDQF/d1H70W3erD9Hl9t
WESuhfiEjLb5/beXSk5nDLF6kreOD2Gx0tgYuGsryFbQMYcWN+R5r8oYtbqFEotyntoQhaXUkdhV
7YJcRDC48W+4a7SKaxygNSWQgyTWu6EU5/7uEpJqe0TkI8cOwRtC0TxGbuo3SqsC9z/gTreWF2Hw
2RB20OgbFG3HmewK4vLoNNqDO3eCPyhujYmtsbv5u8RaNdAJsa0bZarIHvDPRh2GtlWZhh62NVV1
K+srl46kW0dEXQ5WfAwx0JTrhR0rEQgQYhjd/Ba2HBCZd4rX+Dt8cYlDT6db1Y2zFL+PKZa6x7Rx
CNDvJKg/mEDDWPbpjBLFoss589TRIWUWmkH79ZzLwBnltAOpFvl0obzVXnqt2/QnN0DSwavh8bR3
jsEHqyebquTt4CXVHCtT0bHY5lQeoR16U+fL9qyOUCcuGxNaYHmyw6XtUx0Urw3c4Tzs+Tnb+l5z
ZfRHFhonzXBYlDDECSdFUb+CzUnqqNxzHx6FGCdB7koPthmFU9y6W4XMk8n/cjKN//XpfVM4OdN6
GlZf5z4R0DgusVRNgQTgn3o5F/Bo+F2yjziyrv0MkBtd/KgJifonnORTKNDWdi+LiNU/Od69SLst
q8rtgBzMhcMZ/sDvOMGFrOBnkzSyjID2SeCmB5sfeX+b0k6o2QQqvLQgfAex5FJis8wgNYB2XNOS
8OipyAdokLpR3A4VIpgLoJwPImtGco1DKixKieDUYIvL17TZyZGYOBnKzIgNL/gg2vpV39/zMQ7Y
36b1fSMk67qIrOoPa86WY3Ph8wIEMnA+k/SxqlpqWMWQ8Qo5UNOv/nU4F0tXI2El822OeQA4l7LZ
xoNVCKjIt49hhI3gitGyZg8VDTY/9wMU/5ktxxk4nNU4wlCKiA9SoshE2qTJEmVfJMQ5XxtUBizQ
vICqDhhrSggPxMHmKvmtM8gAL+joaKFziEfJekDfrBd9eGnLLZdtuwxaIPJQSnG9NXtDpWSMdMr2
Rhjhk+qM5TeTMm65XLMsS+WDXHeMGIu1fd/cD8SgTUWKc7A5gULt9d4dlU8xMQ4CeVHovElBiLl5
8BPb47s/WbOmfYGGfopdg2kA2PfOyx/d1zWK++d1/Q0QF1HWfeO6Iill/tvIwcsJpAiq/6xRW4sd
Ethj2EplO1RgqZ+tEC57UGXo64Wu3mUE2lSIYM7b6NVXQuGLQOrJWZtyTTuoIdkHfs8s/jH6kslW
95I5blkpfnt0csFWpGuusD8yCp97Dz9gaMC1910XFtlve59AZ5Ba8wYFs7mpqEJDOkSEWl/CTbG/
AoYbwU0c5WHa4GbsrjcjLVSHbMpRpKrUXnldHZ3kbsmTK/EIo9LZBZMY7hWA2DLXWNpWSM+aP5KL
ixLU8C/SxSBrFwDJXSe+lNq/2Z1EI0jt2CxRw1wVOfCrPgMPNAHmc06sWVTo7MwcZSr43I/bnHSS
liZD8AeWd+UC9rWjTPhMyYZM7OpKJGppCsNc962Y9ttjCP+6FQtNr9jhxLjFikMNjVVon9/yWDh+
pwEWLPPeqwwahy7/WcpIWgNMLBA/ZBUwkRgxTyZz1Ud23edLYxWWDhT6+BS5rOG/tzmRzHc1k8p6
SGGvXGSFaIiQN7hDrIpUm7c/0YXBcMWxloFAAUGdbxp07sIWcvtyU9y/3bbOlMh5okalpIwuBt13
zLNMSe8V5FuM4xUogulvN5KgzQ+K9CGf05AMztMPUEhGSM6F2CQcdtssRuD5ZYDwqXQaEeJCF8G2
O1BzGzBJJ7dnLXogXQN6W39c0UOuztC+LtQvA1itKg+zO40vkrr0uTJUxdQUGp+bck2mCrWYCfg7
MqeIRt7yeP3DfWZMAsQCO+n/ihtL80OyGSfbkrxGN1fsK8O4gsDiicEJkPq6Cr7g5fMuRhJ/SJfJ
Qud4O+gklOjLh5zy6jf3Ya9NBnvxMIrz8k4SMb9DMgA5uikEKEwto1LdNPRVI8EMvajLYNux0mfJ
+wK5xFmO6My8JBwzn1r2VPKx+sJg4WqLGl97yQduD2GMukS4nb06s2gpv3fgTvq8jsKRPciXPMpg
AyJsbbJYFmYwEz6rCf6jW39EHd8W1Dzd1SaAGlwb6JWcAn7MyAG6o6l6GhjKfigDwRk9naNZKTy1
kRCoWSYP4+1uGoTfenOYiI6XGDl9nE+W6x37GtAlrnahZbPLMfrkDyHEiW1kpCRnI9pHRVZcFZ2r
FcyfBFPJFi+4uX6FQApTmTHeoZS/jOsgb8A2aCNKWqHOi4bq6QvoFU2nrzNyY4oVflZVFjjhuUCy
TUHaDpeh7PRBLSHneJ541IOYflsvdA9mAfi2vwj8Tqi3swAt3URn4SedC62lFzp9EMvQdq/DrZ26
aj6cmQwg9viVBbKQqtRODOgxIz0MpzuOiuJ53AN2i0Rnrqjb4hnnA6HAsX3GlmkS/iChwdnHjEvw
zoMg1P4ULL/bnXkjy8L8kV60sSF0vvG4KY1yjHadP4Ui9O+OAo1izQ9imdN6HSphGpZU6/jkL1Re
Vdr6/zJr3krC09iW2sikYpez/iAR4pnESQHPqYOeLritWcbnXCEycseGnt9CIFSN71el4NDeDBY7
C3J+dn9MUO00o3idqFzvQNyQ9+iafsCGhidML0jwlJ1yV6M5GLR3FIi9ktg6+eeKJrK2Kk7l2tsp
UHC+wl9nHicoaiXINJB/v+0BOCdCZqEZ8YFnWRl25iuQLZtQaLWMwQNDfoWKlIk7MMDwJb6m084g
66yI7JtFOZWNhaawHHEmsJrLczgTIVlpy4iyWlBN6f15+JdTaLHyU5cIPaRbY2A1q0zSYuTNKRDt
gnMHZs17TRpLXyeq++pOmmN6b7vMIixovbsjYhCxA4UhE5o1rDkNN3SZZHNrhELiuzISewqawa4t
oidCiszS43xAVuIG7Cq3RlzdQu9RuC5UIiXBYzB4RT7v8jy+6+BmUBrcBF9rnDbyjlW4gwhB2BTo
yWP989Vt5DfAIcFal91kcJ2iCBFo77uvGZ2w0DHCt8eTDqF4GbIeCdE8v+soIYwNrItnpMY2II9d
mmi5IbyUw+zcKjPEH4df8mEThyTblevnYTfjL9MOph+ZEzDRfB5HoDTQN+VZ7k2g0EB7J0Uj9Aje
TwylWQXEqd8aHjFV+uISPpppKuqN8fHRAQSMTy09UWh/HOXEMOCbXQIDqpaSfgTsg2HGYPOOEk5V
Mot9JKolnmydD6Hz19AOKtgbropMiTUfMeMdCv+4krhOScea9Oqm7MyJjaFdTbDhP1qfI3W9RGrp
thoH40E1xPCvwYkzIeRPSFpGJ7fzjG6CSf5pbwvSW0NNAxgoXod2+w988NJJMZWRgQ5X1xH/yiss
rkLhiavDCjNNd8nkiCFPllQ620wWGQdhdXIcnwwA4bllpWYNEYHIS1ALgRnvkJVgp75Dvl6dagig
e3KjjAJG7qjJKVKWUopyzMMpb+vVbBl+NlOhAw9Kzj7YuWTvkD8YE9Y8MaSb5qVi7V6DNXLqFZJU
Zs9KxtmupdeH1sud1K786WWrHjCZojIzM/ChkQAITOa5mttGNAz91jmoiZldstq2VgYRwAMZr1Lm
FuDbAWsm4fVCK8w4i9QNldnZNgRHek6XuIK7c59z41qGYXvCSofBx7/S7Xf5DSTUwrUq2qwx4bEe
ARhjcPa5WFNXLIqNdw9pCjBf/04TbfgHcCmSduPU4cNZLuFjMrqIRMT/YcxzU0XJ8PnCVndc0Ncu
WNJumFH09zwhN5n8DPR2a0PV9Ybuxz+dPTeQzSrf1Ml0eKFcXa0aOJOA7ICbMNwlVjiCVei0R1QZ
ppCjDx2OXYsDGhPrKIzRrnTna10UYonBMg7iDJVMIfKY6Dq9NbGL2yc6UYgJOtafY2ZvjP3VhmDS
aDZqqWo0Os9rIeaXXxAbCKWL0JyoeY+zN6P9NswPVUhtciCgE4EXXMwipUmR60LlQG8NKIKufY+M
NUxLvbENCVdIcSJjktMdBSasknIJqA1xh1ooazsndsXXFrvK7qOU5HDUbFucLaMbzSuQQy3x9/uH
WtxjfP/xJtbqKBDgP+m32B/a2BF8Tdiw+gj+4ddtNYoJak3RwCGefZcAMIdUH6Ma6tjaTNZIjVlp
tCQyJ1YXABXe+cEBPiClbGHNUlWrD8kEozQSlRmAH41C9BxqDBphyXvuawG3TfblDIedUvFQUiaN
weEhmatihpMIm4lhYrWIO7z3r950UrzEH0pTwTJ0L3RQGfMlqHC4bLzoRr+e9itQJRgAI1xjEAqD
urCDYGMpyEzel1BKX2Ts+4aMc2AGB2aB5hPJTM4qIwvCw5+4nUgMBS9jycIWDq4d1BvrNYx5f2Mq
x14HQUrbDBC2pt8pouFACCjySU4G+UkdfJCcUXEmhfKwwrN44vsBw8Sm6IqowQRUFbWx7uTTeFQx
BSbFXIs7yoxXsbzn/4I0YFXnHPV+QjzsQtm5dyZgEBvfkE4boua0G32wh8umx9tmjwmFahIvzEs5
OlLzY7TUBcLSemCH+dsjdYFTqkOe8BATuugsdIaft8wpS+BpC1V4zd7VewL1zHRvFVV2Zz2iKoso
kBLZRjwXrWAyZ9sITh2anU2HtISnr1MPccrMGFSOQjB6YXEIYnCBXrxYcIFQHcdL9OCuwEeS/mEb
QISyGTT1k8/bc6/C8Cr67jWBS+lJ2t3YpHFpgTv5owP+PzUGeG7hWFTFa4WRXmjr/OjZScPsyQP9
ZlgRDlFDhRNo9WiNkiGM1ZX+grsSyAQB7GwqRXWISgcH+lwt779j1U2JUh5PnMjAjwP7PEY7vKXx
U/N0a2e9CaRXbBvC/G/nP0LYNo3anXkEa/hRY2uzYV1Ou8UYYRbR/Ya7QIrQc1zaWt3dN+rw2AnH
PDccGrlLecNrDuFLWq5+iWXEBkpjyfPWBujZGPl7ph7LnMYtPehtQPYbU3hy5WFpzNhBy5r2c1rb
sgK0XCDOf4aJ/kvp1CqcVioS4fDyDvFcWXMvj+0yd9e0dcO6kF1HHo7YUguxJa0MVbmGGPWQPQPE
T4g29VMrhfYw8LORGonzIab4fVZ+FbfgiHwf3oNMkui5Jc5LHYB/khTg/LvJdkZBeREamCnliS9Z
bMtPjob/Lu/jpUt40cliKEOjOvAOkSdlbuXzTdA+7/axuBIeVfuphhPZhFdUYAkJS/X8uOmojail
978zP+bJGMuIb3HGHhsXJWxh6Wby5orB3QsP5fckJaZC4uFv5EkD9Ep3Ev7XOTLdAvQxj3Hg1WOH
548DApWfCwjkoMiYswhyQZiJXDqQdMaO21h/kN5sUm+gHs+WganDDVLqrcs/aR++n1ANaEuLITcL
ZcjT05CtYl1Q2LidFPyU1kcFbpbBAX9TRgVOz1MYosgXMf1KCMZjDeexjho3CsCxdQSoqUJaC2El
NeWAvqfVagecUlnnnzxR240RrNWrA7wA3kJ68Q8E1ntfS/0d6PESb2lCOMrGklU9ss1NM4wsZzvl
emuvHis2Q56+94bL3CsoIhvgFR7+u35LZ/C9gjqSF8kvy3SYVCyhz0nNb+E92rj7zNVj63zHfWIa
JmXSHuV4ASRXfSpEMH/tUrOdo/TACrtPdMR1o23wwtAS82T9yiK1GZroFXkLORXStsKyD8jSFaI0
MA8LLF5u78H1cwfhMAUxduUqJYmIfewXWRe+gCIx6rIBFYLO0YYAE/strH/DThUglgpvqDCi3m/l
fU8iGOOOMISdQd0ec851J9IUeHT4Gs8xNd9e1/mgeVBN17I25ZJSR9/XbuYGHY9kejsNyc4BAXKW
BmWNA1dnZcsuWh7Wo4UYtlqLAGeCbHkWgJJgS53rJDBojA1/teqVYG+k2a18ZDP5QelxOSDE4pbt
3Q72REXZ3cA2Ifgo1oiArCgs43XxxwbIw3spiRYK3H7IusOFTCnPENyDjG61OSiWsCX4ps8Vs+jA
iBc9G5xuRNzHDTIs6XCt4Z0GNkWCJ45pKNO7C28ywK9w9rICQk/lieWljL14I9St+iBCL2oSrwNx
9FgGGIaeV+w6sux71P2mp7lvipQpDhk0RCYBGLkBlP02h25A1Q7TZ1c+bMcnK3QCtPYGoawqdwds
UVSTL/QXfdUjI67zcVPobVzQl+iKy4xkSq0hq1UZXKJWvoeVHs/c4UOel9SGrUataabAlpkMkGBQ
lhxlNZNC34oCBBZiaSY2piEAm6Y+CEYePWjksjKE3xLoE699UYB3NtVAVJKpjRHZujBZtUdCmeoF
UPmTuqKiS9lEdb8lon2ASXVrtuxVw4TTlJMbk9GtkwB5Sk7p07stfqe2EfNds54bQzaCxt9sh+EK
lFc20mTAGC1884nK6vr8lAOrdJ1d75o+LG1gxIc+lDoTRyetNUrZXDrrrDFDKxrFxQYTGg1oksLY
H+jHLpnY4lQsJefCQGzrgUHciG7qWXamxp/9jDQ/61soQ9EatKQhMQfHkpNYW3CxWABsZ1REbwwh
O+1YsBftfGcsHxXBrlt9kSzeG5J06KBfgbC4UoziUp7QVgeE1HQp1cDoAy8BTJQKPiQU7R24eKUq
KsaOuh4A95UDyMTpt6UOV6+Ukv59MZ6xDBK0bFZmp7WVUQFSFi5XHUudDFnGKbrNhmk90+vwPb3o
WNXoB1lox05fVgHZdsgRQbmkhb1T5UYAQya34vSg0tGxN/aIU0OqOzO6+DTzQU6hAH3RF8fkLyTV
ULoWli8lDo6sLP+wE0auT6r4nPArbRQlnCUezXUtFhqnw//T3ssG/qZKCRyyD5hSkyQifWaYYI9E
LdqnoK3kevftZzHHuloFWcHYx2s10mXNUFgt4ePWn0Rki0OrBIhXHc9KJXrzaWIRR1X+luO8+lar
Hg0fCHgnk537MgNVvwTtoMohCTu+K/h6nV/tdXUl762b36C9uMD84Wx7guitFsmioZCEXyQyBNpZ
jj77tLb3PYAqVlAUcernAZgqHgxKljoN6+R/LVpLATqrQba9ZWI+tDaygtgsse0mOt5ur92tbQRg
lpEBITXd4Uv6JLfeuEWq3lcpHKLr0Q6S7Ve9mzsbo8h3V2WIKLpYVrE1IXEg38Hlx9xSWmC05AT3
fgw7gmDMkyFgtzZcZhbBH6rLmUmfLvzk1L1ywFmNfD/kM9Ld3s6gRVpYQzklcdQoXCPLHWVy5+Cj
u3LtXWmJ6bJYedhNNZgHSRLv/G+XAZxTUdWjvIsq4JdFiSY1dxB1GJPl9ublZSkxAUlpmspd8u71
JCG367SmEscy4L1txCPUsBkN+Lg1eZFxu27YmjB5pbutheJreBKccIbZOAstZcsG96s61PTWf6Fm
BsaefKX2lDMihjrWExtQx+vmLHaUEKSCXzVFznvE5hAam98NtlAwKdJCLJe9XkmZZVi5+qIRomvh
5dyXF5yFCksjr5YEUPyCPiXydq8ipRKpz6q/xA1XfcamfKDBX5gN/CMRkxe1PovK8TjrM5DN5g9t
6rhr1wHvqIAaLvTQzSsh7eK1nb2yFkfF65FLjPhWsr6ANUUdMx87Zkvbx5fUdt+Mm9R/EKKM0MY/
bzcttP0JwmBISQ42iFGcoIKDjaUnr5JTpqZNY68F0pHJRc92/3YkJJu+ETvpkYTKGbEmYsKAy+2a
ZiM4x3nxmIPT+4rBebhFGUPjr25Wmk3PmciWpebbENA7Boa9zamQkDJ7oNIUOqT7kdpX+cdxYZ8d
IiBBZ1pHNh6ilwrk6y8GFc85MWetcZn0ekiek2d0TeTZWBFwEHrOlzGcGLzCIYNivRefhMIukbWd
FGy5QNIOrX9wj7DuD+iYBa8S7CK1JMtzgvtJiIjXnUDYwt6Oab6H0GqG27SVTtIAIocDLhJl03n+
olB9CbLguzHITvGx1EZh5qydtaj8sRJ/5f1O8QAC0mAGIVSCxiAWcxksyQAgyPVO1vnqdDMOka7b
pZpEpa2RcBs0hC/J4YoXEntTccM2OuEgX1aqO5Mr1jfX9wkVe4YovPYe4ntUHWukoWpIIfOrXFIK
yqYK3os34r3VR4kwlnc3EWjNqmL8fQTWfrVlLbjZi7NIwJ3GVcr7aDeiz5yy+HHpWyAzPWLKIgFD
wly8d/9Izqnh2SgnvLy5/a6/IPrZe5PTGJBQFl4Y9k/vVUCPzraF31SbuooerImHSDpfdZXcmXsv
C7w1Ctvrg03PX3w9C0AKwFyZRiaEzwdeZQYBcrqzR30lry80sQqTIZans3TVsMJsE05fQtoNE7pG
bvpQ9trV+40xduBc3iHtMPGPNivhKlXzlOnVbN8bY9i2uqXRkaS7nVaiHMgGrEl3fhg1xb5yAwSU
7A2J0kmOg2JrY9qBnHlbrUh52N1HyQkJ2w9Ec1+TiGeGU4VNmilvDZgRXZuTt5y2KvvXzCkAfrha
XxzaamG4MVMTirY/yA2K5KcYABG9w++/OmFVYV5QsuRbrNaevCQy1x0ED/QxwrJBe6gxt9AgUq5C
Bn+XzqmN/bPCtjHIpA1FNMTYNQYHTxnuRuUVsCRRATvhHkSueCMmjoi97sDqaup9ORFYhzDJjQWy
xhAClK/tpJ/L/11p9IHHA4616aDwb6Jadurom7W19illq56nbLZtnajNhKfbkE6XhZR+xqdutrQd
xsYCawX6N2PNu5KKNXZS6L2PwkjlqxsFM/Excidk6Yx8mcH40dOLRRnIVTaAeKDg7eMqqKP+vE37
Sj1TFoyk4kz9QZKUSlvZPjIFk3UlD9RDjrD+ZR2Xb5aeuRv1jhiv0p3ly+SSqQ6e+cNczEWJXeCq
+Jk+YFxK6wsYhQYLkBlz/HbS2ODKpbyeI9IIkJRNvog8Rd2HfWP8a2m6hA5jfuNtZWzlSEGJjCNF
Oa2ncxZQIHRi3BzoD6qnUmessaINMDcCLrc26L8GP0IX8FPd5gjtNbOlqTwANTt3CqNAVMsh4yoO
INfakVRO+ZpnwbV+0y9swh/sfcYKoW1acCn3kiws41048aF6JNa/V4cVl/Os7Cexopk8JttKi5w/
Ll8YTtxj0fzJ5nblBT90DPHPiPCOWVtKhWW/QE9BXnzx3qAeqzMzE9OIvH503a2HUxHiNwkqbbWF
Rck0y5j7JUmXYR/5Wvp16kP5ROuer+gf9QkIrwMt+vGsu5lDz2GMl2uikzZcKG2U9RQbQxDt6Ih9
1WYz79NRCs6tjHwQz/WEil82aHP4xGylX3BPE7b6Aywzn1UHJr+gfND0cIWb4a9RipSHyoG0tFoH
sYRoDK0byJoxy4Okx+jlI5BflRmtlHJWQNl6anFBt7w5ioT5QDk/GKzDliJuOSEKxRf2EgMmFlU7
xIStKEY9cVEZ9a71Aff9d3pml8u767prXqEiQgKGA7RPsxkDMv54PuC7qy6Be5cbCGxXABhbNskG
x5T1IpiDoNgp53JG7q394CF8UWcp8eREzcOQFUSYse534fqA0PHCk3iiSZKpVVxwRVrx4FTI+T32
fg28C4a8CKcvTy6NXhkI4Gc09J1cw3oeYPLp0ks9XCK1lX4hlWaegOeuMTLwrZXf8CPsfmPWjxqC
neOmHM9SHRBNudRqvJtt0xaEmMNu8+1Qp95Bx/9LN6Ea0ule++Ex0uVemddh1dy5mzEahYS/Ld8P
xWm2GR4okz+/slX4gZac6l2pRbmmgIvzNroZau63C0gXMnrwUzThMQg3kvQbht4HQfjZiXPsRurA
yjv07H77/AwuZPqOK8lQER+JNzcbFvdd7ueBnKryvPj4U5B0dFz2NRNJziAa7NE7v5eciGs6CttA
UFkIFnlxeDcN+P+XQ4qe1eFTtTnALmVaf0pypX07OLH/Z4CB17esLqzXP/cMftQGxzzyse02XTk9
UG4QG8PXn8Nu6wr2ucO2Ffy6GcYEXMi6H98Whc14oc2wLKaM+lMLKZplDeRMvjMzJqOoHml71vzm
BxTe7dfUdzKgu1lSJSU3bHt+QFuiZrSHYvPi6RWQRAE1AAXiPCfACcFKoL+PQrw2C89pOX1qSCMA
Lit5eZEraiX4GKmU99GCMYLdB8zgK9V0R1UHjx2rioXC2mGaiEUt+yHAUzdvEg9Wm7pSN2AyLmu2
ICS+ZJWdcPj7DET5Y7YotSgLGdEYSR6G9QmHnC0fVOhJbgP6PVkmDQC4M1LOSw/+mh+wEn0He2yj
tDgr6/ViQjksz4botl/ZqOJFav/7blwC8tcqv9PeUoWxnrxBv3Q7RjEl2joI4Y9RBnGDYMhRnfa9
KyFiNfYRfAdOK0DtDC/gHgd2iGSNJFP+BWd0ZPGWKshhSNMKfLzn8ds805YLlBQVOQn1MCL4TE7i
w+2h44QSVXjFr/8U69tTJQYlKbhaMW7a5ORMrSVOiMBpL39ely5VSRxHoRLJGooDjdCTzmpC2tLf
SNFgY8GUjn29ZzLKZ9Eza9XcqiNkzoLDZ3KqSdzaj8Qg94buvOVyN67lDVBTASP2DH9ATk7aPW1U
psoHQ2d8cmaXer0V0MQ59fAod2lBdxlUgQPXtmQ+34Y8G+aoEa0QvY5j4212se5OfY7zFOP3bryO
Yex4ryRYCMgdDrvyl4l1/EC7m+/IOLc8ZjiVHmypPejyv60WVaYvlivC1c4NWlvEZlSUfEzzxgxj
yNiAvETeO4r7t42tDb3ZD/ZcOlgheLJ6aeNhkfgTxShQblI7LGVisXgbwqT07rvP9h+Lzj5+EXk0
RFq/slGmHoaq9wzT1oltkXqlUMjcBWwZeufHvoU4g5QgUw9ioOcCzTWKVDqtrA4YTsX1fU+udNkP
elYsG62eV/5w0en/bvg+S8Df4haYUB065OwAs5KmnRfKMi4907Y+Tb4/H9a08UwzVSZcVU7N8Va0
sV5p7pE1Nr+QUTGNa9K42OH3KMiGBb72Tez4pbkYzkW2dayw6NWhasxP1w9UvD4E8e+59vPr3/Cv
cMiGtjOIpXi82vF6BSdrWeoffJfjreMjC5fzOgtWg8VSi29mmvRQYdo0LBitUgOlXxLoW6w8JN97
RtceP5Qz5JP0KSE9oSvVo7BqqaspoREfJfA9Aj/tXHXk2CNPW6TbgJHB5nPm2p5wg0jEiOfOJQU1
loU7jwsBbWwlGP9ZCt7PfRBWYHh8fuuq1SOWsNKBDn/tTmgdq5r+b+I9d7NCKJi39h5qPjL3ndoG
PoLEOsrmL8z+VhZSILAtzfDL8zUoOa3Kwt4y4CPvYxOfAHRHFntlevzUQu8gBO4gGuhkHRNIX1sN
nMhE40rYOJZhZgx3QCj7vcCPNB0XHe2bXv4m0DmuUCygONP9hb1Syi34dI4jxJ3cBAmRAueo59ZT
lr6ONndxoBeNih/GzVbdYLdqbHSUCYQkw26DpMRBXLhrkRwN2zNAnCsqtes03g+wwlrajfftRUZe
CE4sktQuKn1DUp9AP+2BAwpD5GyYlmjDNUNC4sXXuQOh2LCxsdcM1ImrFgBJC6rWHXZqWm7YNzr2
o0jGni/xN+eMiXS4gkM2Axz7nW+W0faI51gjd6tQcfk/1RRpJiGygzpM36OQMxVSY6AuiVPNYyv+
TvO29RQSk2QlM0Q22kCcfLm+VxTk2x+1qR4eB/fNahxoBqJN32mZb6z+t/zVXYvLSiz1i01MAZy1
DYNETA4J1rMq54XiAAvhytREEA9e/ZraghONR53gAl0pZC+5s/08wG2QitLJQyCvOEWK7k+Vp7Ej
gIMopdp1h5SUZaz2ZlvLcdj1VJ6OolyiTqaUNcPWt7qyj9wiF5yEwTwB7oCrH9vSnpyBK+rsjLOy
7pswfXt8nI3pS5pOFYxCvHI2Ypdv+4LxV2oiQUh8xs7GXpysqTFEkopzcxx/qOUdyJiL0H+J/ky2
vmNkmlHmmAN1VQXtbZwcCigZ6/Hi0jIfODGIzpaXTA6849qARVeYsV7NYeVSStVADM4UTy7X8ked
+SBdCNkfwAYVdQ7XxYEQ0CaIykSY8TqTDrFlLYztOlOM+uGkFxw1VyBHJe4s33NmF/LsHHxfcZ6o
FtyB3aGDPvhq0jbvpKqg3AVmR2rQ81clbfciU/hbqv2rbDW+ULJmfTfNjmjfNGyRfmBo7DlXZl5R
9Y5VVyFwd9/JO3KyKm9kjmICMIVI8lLft4P5FqBgvZNdMrti8g5yjjbF6SgCrGYgyLMHxMuLvKXy
bYk7oPdhzeywvzxl9DVH9X3cRdPQURZ8SXdoQLj53aYao8y/tRRzBNfpTm7gbwbWgbS14ZJC1s15
prd9TlBmS9UrIPHdc0d+v1Mrcbm6jQjz9O4hsc8rQImeBi9qZtJJWRXk/5fyk1Y+zIRvY0mQfGOP
v/cQG8ZIWCoB2/lDYC4f/ANcCnXPGmmNRHMpmGvSlYfvPAdHoQFLUSlTCrHKFdC6i1DTNgQpd2fs
iD37LKfB5yD9rzmwJAIhdF/hnmidEQU+OlxrFDQlOdUJOdRPPrMYilD/4mTitT8DVVjWTAuezYDi
wuVh4y68D3VbGSVjj/cU/OdwpPrSrogAZBjZs28cjCrJ/5rZBwptuFzzY1tcVrtEJ7HpwnQUsVgk
UpgTctz4glpL85PhnA6JFRNVK/avaDRIezNamn+XCVW5hGGRQ6ACo1ZSKtF7OEJvnHWuSjnuqcgq
WbRxroJ1lX+qxUdT8u/UshuUpjyLjJdH3yINsa5xECEi7d3y9aMZAVYJcDrwolkq/0E9ZhjHeQiv
9fYu8Hx7ZRj7aXjjNjk0ijPbYee99+uWal4Xr4pYNELFyxdONFf/cP/Z6u69uzsjrZN2xL2sBQiy
byVD8azO7beATfSo1wJvUwfjUQm4KWY7/S/SD31IlUPV0s+uqoDHW2fGnxZCVImKLDF4nzvcqjAb
RQMskdMyIOTjECVd8S8OIpb8OuX3Nwi+lZ4DQbCvDvuOTB1iw37NlelyRU6vCtXVDsmG/wMKw7ug
q72m7d22A6OYEK9l1JaXOraGwMi0UaoGkzVwvQ91OF+YbJDoUSKim4DLMxaFRA8Gdnh2DfmyirnA
E+zFJh84wbo6QTlwDw/nxfNhZjfyp2vVJsC3BeNwOx7lLFA4BX4LHaHnrj9FpFjqt2BYbcX/rdD5
jVgfMcVEIpMCQX/IhpLjkb/AJ1/VQLEmwPkRJMY7aHL8ZBYGaR6/x/RIc1DdyTCtZyULaS4eyzg2
CVcbSYayVN+LkDadJZBlSoCn3KBoYXi0UaMYRCNxsVIWsWSJlQ0ZVSbMsDGECl/Gy8ZlLtqhjVgo
y+asiyJSzoQEVHeYy8mrjXCxHBP9cOW5XF269y2oJAkuZfnPUPLY5sUxtn2gkmld9Ybdi1zLAvpd
fO588QLtBebBL6eRTQxgsg26FMygdOjLKTWBTAqrAMg3Xyda41oAKYFk+ya6RUu0L3DxuLG3QMmy
+tPZDnx2alkPGFdp9OBDUWyZbXIQw5V2x/IrQsaFp8zQBk74bjVUbfGXyWnHm545J+93zoN+RbCs
dpbW5mp4JCpiuCcw5+A7n9TzumvkoKYal6VIFz0LSr3Vy9GQ1bI9hcNmHm33iDHC3zKrmcRhRgTk
yDHfZ/yUKYZChYgRHZOmpYnsT++Yli/SjmgvXgEVsVfbJ4W8wBlSdT0oYrVsU3s+rr/Rlz5zW8BQ
oPCtdPsDBvqtkSPcJ2UVk04mhRRwoxMyo83vUJ305AGWmTSlyLVZid4zwaLFlDHxoDCpz/nZq5hJ
U7Cyu54dNJSQy/9PJHVoeTiY7nSmQ912rsePanilK5aU3j6ueVV2X6Ga4fb2XIq7u0DdncxxvTui
7kzIi5Wl/3kK7fYldIYEtLjcJXxJNp4QZpyIQbGpT6byx5L03p0Ek59dldbb3x6SfEAoyZvivzp8
yrGrJNnwUNeYTmmLe0uS9/6s+aMGIOoKok7hFd9qGDarfrl6DO8zZJzQnrX3bVdZDVsYt9In4g6T
k6L6JpgDPBsrkmmTwQ0cMT4zmWtMGisFaQXIRD2ZsoPQ+gqThHSLlhx48rnDSz5OT6kxkwHW+xgk
cd3HXmR+McblSgqJov/hTTZdc/eL1MFicYX4Bu6puSlYS1Yr4tH1zElsz0ScbAR51G+e0lse4p1H
psHIj9zjALjVr0k2G+3wqmQ2OqNtRyxtP0lFqcD+MeL0BF1DGGpTyhBn4uUi64JbezQ7y2Y3OsgZ
9dOsz6Add/BU7eK+SCxlRUFYEv7h6AWihUGv8SGAxiMuDkikUV0lfPz7zLk7WqRGeypz4I595H9c
6gvOGjX82QbmE5Ja4BBZynMHIddy/25O46U+DO7jtfOTvXk1w8NB0U60TpcuF1z9caGPoAP5FxQc
ROsitpADohxk6cxt1eDbscfvW9CscU87kz5/OBjVwgds4isYMnQfYsIUTK+Uay9R9J165FvJogda
5FCx8akUtZaUFtTLvBv0s4qwEDbK1Q7aYkqyc5EoJXwjJVB3gVaplNHpkJMStApETfONUBapTNIb
P22kOqC22c6BxAep+GmkZje9JwiqJqrPPHkmjnzAn+DWjoQk78kkwhjJt9BCuPfdS+aektSsC6ZP
v7r46EZ4l2FQ1XpSfA0WULRo1qO7aewVK/yFEe3gqYTM6JGW2rtQ350asockNELZ6FT9SWUlaIpX
ZOJE8GdTRUJtUW3qv0T6vyS78TlnaZDHzt/CAmm8MPA4qsz4792L+Hceh0Y3w9hnmzuzgEgENx95
NWGAihsJUZ/F2kfFVL1r0QlWQChAZ90LU9/t0OxOZqa3jdN4F+CMXzDIaiqSUo0Vz/tLVgK6PoDj
R3sJ+xweNpwUYkNISZcYIrgh99pZaXwYBCSSIJVeMhKSR7Z5mGSBg1HmlfhdmmELHkez1ICwLegA
ZZ1o6buQjd25dBi48gOWbl5x4yEupQe52xG+8uFP6NkUEvHGiJp+BtILEO9kA2hc3imROfhmPSo5
Nn4wYod7SMkDlInEbKVDzmoEVu82Chu2skyhZisb8iXvpNnehwAn+R0O5WcwBUjHNFNgw2ToDNIO
8MwwZaSl+VkHZNGm7Mnl3DwcZPGWcdySwmZaq6mMnlT0kkPeUD0GSoYaJq6Rmx2CnUSEOGZfXAL2
pOBbImZoRScoijnq/49oZW4RZ40SAKu/4v97xX837TOvKyUoZUYYcKrl6vNPeJCNBjjBmYcsBGOg
bGRMVXCy5fS4QHtcqToeo254MMWlLT1kUl4ip7prk58bR/msts1P8qAhG2TiH4SKYT8mFv70vKs7
A4NfMph/A9xFef2f7rgDd5U0b3pvDAUmrH99NEV5d5oKH6RF6xlHyaMOD7fBCxQvyEHg7Rq4EVbu
nHZyZV8JX7JBniCaY8+0N/I/d/flNZf9IRKI7USCqggf05CPYxP949AOUrTwwiy5rVJFjjI8X2tP
5YJkISTTB5noJShPd8vyVlGbie6VSIeG1xcr2e6+5t37TdPe+Ku7i0M06+kS5gxHSfv6h4N8DtIt
9lP6E46VcNs6ld6r2u0nKogr41Jv9OyOL1kIfKPq6i/215AqNva8ia0daYbPirkKfcbqhn+diLjA
89/K5d//4fubf6h9Z6TPYvUXm5DV7ZuONrVE69vbBlKtB7g73OyEOL3irGXPnrd3N4Z6H3NYIIl3
jO4pqk45tWLKAEiqq5plWPCpmgoSKu5bJ7aHVE+MqUdj9Fyn0DntoVfrZddztVk3M4L67pU/6rXG
DU9jLyYqnGQr53x89B1SHWVpiM+tSPH8GvcmeteE2IkijDyC53Eia2Uftd4C8qCkB+Z/eA0lAA1w
MRrdqSrn3O4ThaEOarW6de44UGav8+JRGmdbY+8HsGVj6aGBVNTmu6EdB4T7ocKCSuIrH7iYBvHH
7UUvnLXokuXSX7jeJVrT+CBu8du7LXVzIwU6ewLdO7YI5tvf15pcNm6Y27mGVyS4AC+mnGr5HrmZ
/GufONVlM8hf7zL5M8aNJeY1icu5nWn9DUMJv7bTUjp6w4vnJ1dxOmwAVf4OQPodU9vkfQ8zmbM5
4fFIeTM1Kigodtu4wZDKoVP7U74nOpw5coN49gQb1XZGEhszGZcKbSsgyGQ5bu6LoIZBUbtPiUaM
HGgdsoRjELHxfYIq9JRXxsSJ65SbNM4j7HJxl3Fqy2Ipu2WhgBy6AUliKfsgwQCmX+z56zWnXJbl
1bWD60GFbInUJiphJo9Z8WU6TwdQ/0AJk3uUBiX291V/Q0vCrBDs5dl0XXgLIa6MKLGeIOCL8RI5
kQ1MgTrSRHXdvmsjEaG/rsFxfx+/AQsyevlOua0WYrWo3BFsQMD1uh+JVwzD0O+/OBNQudSwjSol
jzjWJ0eUY7KsXZpUil9bQhSE9PN5hBOexh4Knzbizv9EYUD0N9aAnLvXfdxsAHclY+Ny3eB10kbE
XNfdUXF7ervg1TJ5x8vyZsMpCet7AQwrrzIMkUMuXfnqOM1wIoWV5HiT78iVY1yuh+aQIvMB/8kg
HlL9YlQ34Ka+CNpWPp+NrQZBkdBxqQq21kL9DVHvLcryXtkQZVK+nI5EOnpLMeokscA4lcpA4iR9
qj5gawAtBQDmeJUjCu/os40YIp5MYlIGiEyGFxpRZMOgnD+W34xQcEh1t4LC+RFIs1P2T1e0GsS9
zMFDp2TvhIZivUL15wuW9qllsX+91VLYq8Q15agaOzl75vWFbzbs5TcWqDOGPp/EC7jsvIM/tjhl
h0qeZ8WDr6KRtoMUNx5bU9VZ1nQAW38POZlw1y2bsZxsgRkbdL3J+sL0HPzAWZ8bJQsUWqCk16go
CIN/lXZUY3lqiWg8ysIdGz6m/q98i7oIVGRuDgzVuqr3ixfwzGAeMmE91HD61kDvhJGGAepK8qqx
CVGhaBodhXFBfeeW/NcTco1y6hvsBW2nGKv7by2Iw0VLilhRrPOzM8iig11DeRRyTN3w9c25vKnJ
v8d74bMqeNYKqWc0EJut6aQ2jDO1nngPuUcKq+0JP0+NyJkviirLtZZh15ZfW6WRcJ4zkhGLMKgV
uz4uSdwKTQz3L7kW2hDj5dGDr2hFgQ0KkKPeZHjfMh/XVl/UMqAS/HL65N8BmZx0sKex6hEDY88W
p5MfC4/6Kj82lFEYnxas/tqnTz05ejbWfCxXkp5mZs/s95cY2Fshhr+kgO9hGD2WlX8U2DxFamOG
30JvvuP5OrOrbXCVx7PGrOQ1LNEGHOLTlssAcZXRLN5OXEoZnKMFRrM4UG/QMPCzg76RgnyQj0zt
OKsSnrY0QzK6QwsLXE9aflTHjVUBjynTu7mhFwCWv3JzWu5NwgjP0SoD2JokLYp6GfFgtLEc7FFz
G01qt9KtLQXpwupbxrKVCCfwo6i3iWAjWvDcx5vYOot59+MHl+XFbfkQndKL5++YhvV0AbY75hZo
snw7X+Ugnot9jj16dSilGSdPxgKHWAfrMQdCZzMN5eymdQ1yMW46i7vcG4ub8GUAPJEq+h28P64Y
wH71/8/lWyccs69f89R++/N5KIEmGvMs2xaZXvRQ8F5mGk4NZjlzMP4a14JNqBZfI0PidCieBnHG
18cEV3GHcF/rg2xScNjt6TBkgjEpxedjkc5cdMmnsS2J8avyGWBU+FeCdYJ08F2riq4zdbXQF9YM
0c2zA+suvf8vDNeGNfNRaEvdfNd5gwi83nMRGoYbv3zj+M5ROCf94glZDnzFrUwk2WOp11c+lAVx
U3WS3xxD1IpFDYryMXjqXnSH9NUlGnvApFJVb1scI/X2iO96Jy3h0+lGRMEc2cvMtpcf6ULhNr5B
sn/DrsKTAo6pgMX0CgsX8duE1NG6/7xDUzO9bKc0au6TKR1t5oa9CEFA4D4XXJXsC2OkE8JEip5K
XpjfQG47+egzACUD4FW6MaYtbFnQTufNDEo+VDx5SC5iD7ZPH7WIUCUU5ekAJ3K3o+xTJwu78owX
hrql6tbyNwtRUeD4JK0Bfmqsw3TfTKXm6vmnT+pnjP6WM9+Xf9ixRzLi3Nmdc6F9ZhXLEikrhMed
4bO3KCcT5IEpUCw6U1ww0iVruxi9KZhrBBxTPwHO6KRw30rhmgJNFAu9mXaoJw2FKNjZllj2bs2M
o8Giir6h2Py+Ogva3IPJZS+BhRYbbVFP8e0m2hMKuNIg54LzMjuvYxyR0Og9WsiF1n2mSefW/Evj
+lZhi4ohKz5vLQVTIA4kITWthuTur7kvvMv+f6/QTcg8a1Tj0AnjjMt4eEM40L7FBnqWy8kDaZ+o
m1T6OMRjvp+g4gfD52QZJxwZht5Bvvs+3gNPIWHOYlMHeFwHLx4s0jgHkUPUKKrlpj8j4AWIIpup
Dk/eKFjF5dVupgw68aJTD9DVsL3VBiAEfIoDLtYS9wyY4iHahK3hc81pAh/Q9AJkW9LQBCw+JeMW
0CbG7TV78AFrhdsNSe8ccvpGeOqd7Q4gV1olz/vVoBOPdA0QZ5QHU6DjvnHD/0Zlq7C17Ph4rAAb
/jzugT0KNEoSZZK153q6uNUz5pLQi5gJmsnI4YgAxRpCn+8VaasbrwEuSQ1F7ffSNP8UbGdj8fTk
Ann+ZYitiaoClEwRlg9imT3uzSaI3La/cUpcSUSV2/jpoS1YpuyNWzfyIbrwXtEtRJGYHJNgitCT
va1LclJ+8bqhiOj6ef/76XVmcgFl5UBwLEHpp72txhQ5OdhImNrzFeBjIpLoSQoWr0NSjMZJgGPI
OUT/x1cgv9VqqD5S7WMpgKZibzGZPRsrFAoBSx41YE5pb0DpO3Hyg1Z49RnnfoqZkoG1f+GvsxXd
gVc62pyXj2amV8LYjMWquC2GhMuQ0wq86kOgKGYVXuSe6pwVah8aqWo5E3vDS/b8q8KoMIIclb0Q
hlo5PNG+Tqhpa6SS0Dvjd3RgVngKqWuTBZqOwP5REKV9ES2PX4LwcBWwO5z/yZ799RFEMqmvTqbj
gHQ+grxhDGYkdxs7btdMP1qZjksM5TQm/82QOj8COUd5BAPOu2deHVxRTg5fmh08hL2ahKJC7piC
KEGSrn2nZk5Z5857if9Ek0DrgfSEyE5Uq3kc2UbGbQvngxBFl2xW1eUW+FTWMxcsaVWbszsjJn8/
08W+v3SqgnzAjLyzADxtj/hPxZqQwr8MLsHVI8DJD0xZHr4ogpKLImuQfv5EvuPQLjHSThk9TP54
i7Sgq0odwiZx/a5roCHckWG89PU3hDbzlwyuDWPCeqB27MM6EpTvhtcEEJdAfi9AGGYE+iuLoF/9
1CFTX9SH3Oa4SNMxe1d9NvZMJ0FiQQiTKkeCfJuIy6BDfwOrlMvlKUC8cTIj/3SxW/UA3C3Xojst
pgF5iQfLUg0py11uO7HaaxtBZAITlnvuw5dgFC6ml5wO0BsS10ad8w5k3He1d65GvXaYZ1kQ8Zb9
KAhKy9iUqSOwhqkrZptI5xE1vDMg2YmLBXLJJT22yc0qwEYTAZWZuksM8a0AbagSsOJVpdux6gEB
Zy6jKWFlqmZcTlviq37FLW2j4r5Ss+FvZK40A9QsoKrD4V+kmoTdNOnG2RJ9yMxQeYbsqkv7NvMB
gBCwUs5mlLv9WAtqc5ipfXMUZXRWFbnGAtwW9YJfHd4/lUYagcce/fqHAofbto7AFZUyOLZtmH8z
1UZtPusEVLGz4Tl843Re5LSkrb1NWbFsIR+VLvaxbUSj5Muh2m4KRbrswTct08x9LSod8p5qoPp0
RaBxAtlFpsFURrjToTrolkAF0I29jroxJmU1rAGi2vLmbi00WpSSBdM7nE5pMjl7Gr4w8FQGSdk3
YtroHYMi6iUX4HFaJd7y7QBvzavqlvS0dWEvE1IBOB8/jXgRXGXYEJoe9onLCgNgP/QazNpH5ElB
LjlEpWQHMqz4pww/weW2GwpZsI4p2R1yFKV2vzbJnP8tYAByUidW/vlDzp528yydSnp4jG34kiRB
vsuD9rJ/Is6vnRp+Cca5m27G1OROakHqL6LPEorEmXuAYDxNnCgwt+H3GsCQDToaHD6pkGHJMJ8Y
Z0CK1s3cW6+3BeeIS/aR8vnGWraFfsGCUrV61StsY7fT2wQaOsMAp5+n9xQQgxQKM8o5HI3THDbl
M68Z7WOMIr/5lSZcPLm+f1eH2/I6EOw1JDqgEopNHE5nDxpVC12Au3+cSuQ4XOKn0iNWpdUb0YcO
DZBIUkR8Sil8v7UKRpXBXWCEBQFMsvSUTmzDtNH9WreytA+N//0tnIy9xKcNiYpzEHv5fLTAQrnJ
uq0N9FqDHycRqByzEK/9DSMVBMdveDxpHNU+NiKovmUzRwaiaJ+BV5trkFCTneZLe8kbYkr6K+2S
O5VGhauwilq27TZgV399RXxN05Zv1is8cSUHXhnCVjPHeSQSAM5f5a8lOUq2eEDSPHkUfWWJNddk
17i4vbXPRgwXWz+/KF/txQFL1+jmfCiyzQ2IFSNQnsnl2dDCgSpTnI4AjijEjyWh0ZnApi7ZTlrl
+MM37N/dKeNoLZM707+H9JNj95LKZ+9O/GS2BOGBdezmWsZ5K3IbsP6uYMIzkZDe5KuVkt+KtcVm
HaTSIg5sS12kbjBimNKY0nBTeFnAQk610j8RAXtmMP7kadh6Ij6uoJS1wGgf5sh5QlRl/k1dtW5K
MO/Wrq0mqL0xDwmD9aPKwJWnmGR3BDOONXlng8K0D633scLHCquC9nYahbBd84dhVyIOAo0jnbjp
atpcYNKhNb1Sy+LtWT5QL9+CZkdfRn5RBAxpQMgri57D93ZgXcSbbgjcoCSQCMAquZm6uAAIHWpA
dlGSEgNJTe/iMlMlvQMgz8234EyzW5VMy5QWvcSOTqrzTVU2VJmJ/VxsKfdXQBvS1WWxRSSKEg/f
wFJkBt+9Mwf2glfXN3LdVl/wLRdD/E3K+5UcbG045BRvq33Iuc57DQPCBcl4CRwY8QKx8ac+Jvu5
V9S93sPT/Kr82JmWJ0osI6R55w7mLtG4nerx7KikAhEJUKY2FOYp2MP/txP61EnGsSeWXOTchfYx
YIdfu8yKCE4c4P2oGyohsYJtS+uMOjRmiRJ6SwBGQVeqtzPkCBONf0t8Acv4bNiom/EL5DqeZ98b
4qs0s4s91KntEvPfPVGl4nRw1Y6AmeBnT80tX2XYknvZpwRbliJwbdsw0Y55XyUJjiXysKiBqMeF
sPUv+w3jz78tKL0cfsbvq8d+7qwVQUUZjYp4uuxIx9THcCy7pxq1LLcSuwPA0nHX00vKvYQ8JEiH
gTl3AIVoJ5dQsLeNSYq/kk4+V+X3XQYDx7dI4mxzoJlKuMkCcIG68R2FgvZC8RvMvAt4ayuEkiFh
VXE64GhG53QrhyRD2Tgzj8wRHAuXacFHHfRboSbqP6Zhqro1bSOa8EuXYYpErsQUACOInclwL06M
WZhPgMglc+CMVavN/OWOk0LHoT62ZqlsS99lH1VT6i0Z8YoRHJWRjkjBkMVuQod8xjL6YTbGhCX7
WRM+T9bG8OOOTnINa4qJj111nDw5E+PtR3SL7TL8cffWoOyn8mwPElNJLuf497bYETQ5IV+YU3Hf
WldiOxpkhwSDMe2PSvnPIkuq4p752WhrL5t8xGSvXSyMXUyWI6UDjfL0a6meu6h2TVkQxjZVdGT/
FRfmgbqvRTwZ/DmoGDICMhUtlwE32jvrIlqGLQYyATHfeJNPI5LKWsx7zoD44LuXVA48cNTGbDiO
7F0cJYW7WW2Y64H53K4z/2PYO6PxCe/TurLDpunL4leXZkRtXY+kADQTDpNu1A93+FDMAcesrQaz
BAPMtcnJbIUioDZWJgC/Bgg73Jxz/yJxG21fWOG/44cPVJKvSRbSZYnF1eJb4Ad+s13YF8POAIiD
Xrjp+tC+0WkWE7GvLB2aFa/JKS6AAvcRYNHZqve5XC5JXKGPR0+DSUKdnlKy8G4c+sd3qJ9fTW0g
C+rrqUTX/pNWkaK0s4zkfGcLEsjZ6ANKLldMIbb1sDOwJ8K7tyJ1IGVXW/g+cIydu7DZ3E63yKAT
RQpq/PTi1jwSe1BDkzX3dSTSAJHCguu98urQMILugHpHltziXUJssxTsMWFF9vxeDnJvBm9D8bh7
Q6QyYcmOdBg6hlP0ZRPSJQ/ZWBQ7EntUS0o0Ozmt+Cz3S8//Y9CNgJBN/PEWTgERJiJOKkL0QbMW
s+MZqn8DTjPR6Qo5IOfjz9A9rTeRz6mFbBBH0vZQhUGAWX1xeK52Ckc8lGJR4UJL1r8/PyxsxTPs
VFwBJkZWjeSi3/94FcU5NgvTnxg+8HBbjmma3znzFmTUHBQ4w3zPQDUxGWv2GTgr3H9GufkvSt6w
YUlpGTpCK3cLsBa3rk1LXKdw9/Xk2G0/nxIqAR8N95KrzC5GgCYTe52jMwENBUMN5oWwPy8b5/x2
irOWKviObYZxSMMplwHaglePuISO6aotVj55hqG2VmJ26wLNGmLY5IoSK+aSqeVvhwLif56NLP2z
fav7xAsp8k+oN09rb7chDlzZim61jlFT9rN1EVaQdM3Al98vjukl2c019iOCF9J3Gid1uzl8NPRj
N1dWG+SGRM3i0PzaObTIUM52TuoUg1VcyJXfX9/L53vgCywbAmOe9Ak/J9SU8qZVSbLciH9CDOZj
n6+0cyxOZJNOzchXA91oz0msoXXx44hVuM/QpNQLTomN4Jm7vFrEAuyWYR3XlHayPKfYjwneQDTM
WNiB/2Ybvu1sHq7+II0SiKYETzHHc/GhIqibA7w+2S1YiOYIoioDxGsu0XD6czbzsncBtVu5juy9
Bz7lgZoIQjyjXQbePnxOdzLmKoKUs4LdySLU9KENTBsfLwuyjmLe92vdHWBCzjWJPYbo+eHv8O4F
wiJNE/9U7k1imivW21CpQliwD3+igX4MYY4fLiSN4NUrRcC8+/B94f8fxcLxSacVEBBI5BCOp6pi
k1oNURon3X0M7xCkjHCRUCkosBwyQQbZTDnOrr9iYzXvRetml1aYAGkmdJ5Af/TIkMuWUCFivErw
qMUMtHNqu1oxlwh2VRMXXL3dcTCqDbHw03xyklQOfH2RJ6FxexWIgNOfhXJrtQxROhBxHINh/NGP
ExXWii8gixoYWfbbq2UhwZzZhNmeoKa+T82wMQBh1+bVZ5HbCVViKC41M4OGmbGXkceuTuqlgT7g
jIbP23409EYoEFMAZoefZ+eB/PS+LdTcmQSfab6+0GXpl2UxEonm1dJul6vxee5A/ldQGs43Opfp
pR20VHurTLyhe7Dh7P2VlJVpbNIB12oqzrcqy/+yPJ0pqad3ETXlXdjP8gpsILxNhjO2cjg1vXI8
5QkfSAEg2wfzgVhD5wC/GOI3E6vg46HtpJgDU9A/pFnMDFAkssFrzvV2YDHMHmkTDWV2gQbHtQQM
4sZFZ7jaJcPRmeiXocc/JyXjIK9ipL+dI2BuhXQuljzc9tdrX1INJFZqAyj6+yBxoR6ix1tq0m+E
1nQ/ntzVbZKSZSHkSGLG1H2DBa9SwONLKKiglRSuA/2Yip1Oq0owF40ARjB0jXEXSQkyVuYMPWga
+10qJ3cpRHA4VOVcCOKas1i6RHbe/4Vd0pXS2Na2WaxNfQ6xWPOOBkNLIUxh8audBY25UrSwrhMK
zp91ojwUlBJA9iXz3v6+IcCRyuLo26K76E3bst6L49kz6TMkA9627r339foo/vd+HmVTnLUnjnTX
aAs1/dlfNvJMSOMgdtMb5kWnW6psVLKY6wwi7xMJZmV5+pIqgCY/xknJ3n4jWgZTId2obbs4FpC+
Hv8q3iWmZq+H+pQ71go1w/P3qRVjzw4tZhgvwwJAd/vJbNFfG512bwGLrdx1manXZ53xYYPttf0s
Ru7QxX64fz6Cbn9X5Uf8g9d+R+o102ks6nwaCYO0k2uu4Tqygg6UmIv34gLpGqUojrRBDTbQQZ7r
4lyb+hcsUIDvyB/tgahbBjYaYfydqVt7SjqcKrvt9nh0BmWYnzIe7fhHHFa2Ra9TOmQYL1HUVMmc
ucy//JuokxzfoOH4imp2QNsFrMGa3dOEomzJS5+cFLF5rwE02HALI4+Ra8HvcZYHnOrlw296Dh45
zV6zMiYEofF17rGf6iPJ2Q5Jy5HEcGKDyeI4EAxOP9pKKHspaaTTKmn9Ksp8HmGDle13lZZk7d0S
r7J5KXKPuIajpkyOf5kH4sEeTV+VDYZRf8mgLcKf/M9XkqoAA325vcl3ZoxoYTX3IKUgQDsBtgdX
1nhRN3/06/ez8hBMVrBGsV13e+eqHam5zJZcom4IyNeBPB2fDn4Qw1QXAs9j9Lq1jPKE6D7qAK+s
i3wnCAd8DxpscXrrVybIg/qNH+AAP/4DIfpjHwCGlgYl4g4YmwR115aoGJamp9sGgzPWbs5ce9iy
a7i69Qfz14PAX4817CNRgPut7djfNnWuSee9fn2MZNOTXmiejNtwjYeBSMq6CxLIlbSup9q3W71i
Bcm3s5w7S9PpnUv+f1fcDFK5Q8wL3i8pQC7x+UHOL/cEgbDMx+RzDJmX/c/76s+pilOm02CkBidO
WMeOKZ0eOOgBDb3g1UPDgB3r1H0zTHgtDytZd/oEC+75BmlcXzOh2uslyMLr26NVIJoJkRtTdE89
185o+aPGbGsVY87OTPE/l+YYMNkYc0k35IZ0d7cRK6Kv3WIVzqOP3Rc3vbOjn3vBsbbOtUg0HpUv
Yro5v8dqrS0yXav08gyUk0l+J8nf0cizhkjOeOqFUnTAxFa8UjzVhXJ2WZC/V83F5FNLvR8PAIs8
mQ67ug8YcWOcATuQxsaXfXi3D8ilJhTYdMktKbU2UP5yYKKk4jPnK1gsT7+fZDYUJ30Xd1wg4ihT
EQ9YHS+giz63lufZHDz/bQt7jxF9PCBWVxBvRAryPAXZlMxDCpEkQIH4VEE3siJe38CuyPF/tck2
uAgaYejVchZ7d62E2jSNLHzYOdUbwZwMhlUCb7ntJJz24mLQTiQLaTCpATR4yieo3I/7HGMgNhZq
NTKhorqIMflur/n5lKVHx0RWaC1IP0tXzdtQpxWqA2AMqMxxovZRw+MIgSN5S93ydOR3RRmYz1Dh
g8gS4zYd0g1cRQ97kSDQ2LQlHh2EpYonWsJLFvPtTRHO4h2tyYNzMAInjt7oJvGBzipxr4+WefU8
BM3YMc2qT4MIuMnb3aQ/Y2WFtaV2puRtobUGd32eO8JWMjGLt9WTEfbRLgz0W7oj5wACzToX2ASf
5zhjEFkpcV5CCpUef3MgMOSFFgoFLnXSnPK+OIqs8MX1BsSp5Kr8UsN1pQlwNbp43ZifQzP87XiI
60e+vagHI1uHu3G5xoiHPTuIXKFlMpAhhiueeiLQIgJIS3kHYufe/s0hjGidOUMUNW+nXp1+3lmq
BJwd6WYw5vWXtDt6B0vg3jjXKLAzVGIWRvX8g9WJpzV30QqvGkOzXabVU+1dv7Ylh1viPGYCzbOo
2+PiHlS8A0w40KnmmYyibhnLJhvBMzCcxSwhwhSVvjF3n+yw/t45ZwLfvYAccahS2UALEnxiHYda
zuyGjz5AC77i68AZ4CyBhwu7pvgAdfzQEljkM2+XTidUTGt7KtlmXw5VPPdJ2A2+aX7yd++lFxHm
U8MYWaIFRVNhUVcJk5NFMkAn63jxeBGgb4xpZdlyNxDUvVrRZd2+yaQGugzso8Nu2ss9MvH3LJDA
7HBY5JZNBXBEJvDJV5m2N9eelKX8/5tjO0pQOeYUGKvGUBAEk/0tJJ011WLmOtFTRyjlApD94th6
vp4GXqa/mKw1nEgsTU4IzIHTayG3WRKCq4PmTuyy4U5Sk49F2dojFklUMPmgILDiyFht7J4Syv1x
nzY0ipAlHNCc2WLCSK7I/h/9p8LoNoVxVDR3YuH/9YPYSzHJXU2eWgmymrWHgmJ51aVIaUVS80S/
XaJiDdsgO800qTUjTqVZOtyI7Nwyws2S7fFF8wnR4p1lQPv213skvqWUxExEkY/oX1KR2h7+R7fJ
xmEqYK4P+ZTtjYoPkYdPkAIB8FskNwmN+ZSqVxlw0NouxrhYiLajrZdYRAWitF7Zc8d3lmAnpSgp
z9dSi3+0ht6XUFeipgeqyhoDf+7AZqn2O5G0AeO+/+05mqEICevlWOwFqn5Jla5vTjjnH5SS+2M6
nPHVQVWx6lhYanGBwRU+hvd0e919JeS6lHD/2PlZ3X+Uz7PdRqUVTod2KqTsJ6p7CbFTEbTRQ2mc
bGipj3ZyE62Oh17GID6oLk8DmlIk5n4D9id/vLKEXpmFP+QyUGqdloVcijAyHhkyGcjODD11Zovk
nz9eLAa517aLn63J2uecHoLhERB/pqYQjicCkSbS4qx7bbkv/oTC7yurQrhPDpzqAqRSQm6k3HNv
tv+++nIbx01s7vGGtsd+9QagkB3CogkZl22OEnQGP4NUWItRt9GrpxElFO0s7FZpqvP238yfe2Qz
zCPxJk1bEe4R9pspEB+U+mUxGI5JDNxgmt7D/J0BiZkd36AqBzl9DipWeZ/Em9vzUbGuv5bA8OKG
20MXbKduiQIbJYPi7GDuuX3fc18kpT223VZnKywPMQRMb0IauQe9UPKSIaX8PVExSfWSmK+WysZC
w8l2H7rVc9Jtn0yQjH1tid/0K0sOFsBaK7Z+MrrrzmcpDnFTP/fNBy6QyvD8o8ZMQlGkfab3OthY
RfnP+X/CuYlxPsBFDDY4pAKlh0wa3d3oriylzbBzveNu+vC0PBAp2nGC3tR2R2dHz7/jg7CziNTj
1BfnSFlq16Eqp5PoLvlVgtpdyMxBP1BKYONS4CJi5lTIVPHbt+lYyagyWtUZzG71FupxDErUiEmi
bC+yHCohsWeSNFjoB6qZh6EMuuu8Di1vE71B9I6EwaGxGJDaz/aXIezVi/QuZ7c7m7wXz9XijII2
EOMKuqqr/+LO2sLa6CIyM/cqcjTXNunfTO41UYjJMDLZbOyLMx969ISegU0fvmNv90j9mSBngydf
7g3jz5Nz2hbjLjkYUm3c33ZayQAPIx1RH+3EAI0g/MrL2d+PBbYbGcd1AXfcgEIyy4WLZ63/CbXg
cduFAxi1U1A93/bO1RQI1vx+yVvP8ir8OEAutnSHgxaqgYoCHG9O/FqOvySngsIgxJb4/7AZAA/g
hboWJjDbXqr/FAJcGG5K2vVU0UTwRr9CgAD6hXufJFNmQA2uTfgDR/nWlFmoOJ6cb7QFhMHGYS+Q
zKatm89a+nFg3f+JRO/1Uu14XU+Gwtgvmx3NB5XvFANNLvplYJKKsedAbW/HBtdnAkH7B53gqhfP
WbtjnA36EXyaA6QDwhJeEuIQOM4f+ZYyCZacbjVPkOQtvfMCllI7Flbnjcq/RI3CtIDsoiNLbQ7V
ankte31X5CYEoJlI5MEzkY8lUQmUT1u9nYyWpE3JO63C+DUprV3DsU/kBjr2O2/dh9x2rkPp5M3o
D3G6jYSRsrzxklmFWoadAvlLMdp4g+dQf8+4ViB80cm3zyUOhzXBv/fUTplLLUX8OqFNcZF84OlH
Xly5bPeUxZk8+rz9vwGzhnPdxFLcxVRQUAKrTCOa5hpfZdLKmGOmEh2hO7SoU7YJgl7S1/nm/4wz
C0UlFcaniObF8FNrUIw3RPGDaSWknvE197ZAseJY+S66IoDH6UFFVEhau43tYzJakzibkqZBybHt
Wv7X8XTqlDHwq3mSDmBfBSpqvJCIthOcBkkNZRyk72Tn/XOZm+13K+VP4vQVKSptorRxoMwIRT93
Wp22FAwDWEleGkAonizgiT7F/029V8+c4JwkQXTqQhwoKJb8ZXaoRq4+HcC/n3dXQYnlrorE4KiN
tbjB3p7QgLj7kn6B0YWRRgfyaL/FoIeqhENlbzoheKHSohqHO1YWb1CLkkrBSpvAWKxnivPfQBkd
34EzRm8VvyjuOV0HxV6GZUp8yb0fEo1NjT7W/GGcPpoNgWkAhY9EiWQ6bW3UFvMiODbDCC1HaqZg
D8kmdnMqHaEcT4W+O1yaRBVG1ih4+jGZj2UtD8Voeuy8Mk3LFJCO6S5U5ERDausGCD2PYm5KuQNr
aY5nypR+pc2xHijXvNZcyrnicNPz81vCg9tRygJDfvkeZVHxm0iKl83V9x1pZsYcI4qykDAe1gyo
YzsSoFYXmOCM5Tvax+J5ffSwCRbHY813HFgGxcy72CoTQZbx39mNiCLjVdPjfD56R3xy5cppUMpF
ocbNbINLCZNbsNEZAxOLrIrwkV+cdTuu7jrhfogCp0XPpJTmgKZk0EOySxR5qi4gTEnujcok9q7u
NdPSNM560QzUQhRhzr0Uwk328DRrOJ9/G58Cg7OpKS7/osVfe4hOPztba1+4wTzStb7g0tXe2Nqa
BDO1g+8PIctcDnq8jpMc7UU0jtRxqKE4l2KhCK8e7sidrk7jVeOPxXPbBcE5f+taIECzOVDvaU7N
VUuBpVjIKu1W0HlvZuZVSIuVYXF59DzhAO6kILlKuZzPxqQ9qOce5OeXp/6gdVhKd4xOpBBFVYqM
GGMhNFm9EQBCKQtzdML0u0dBjBIkop8ZPkIfJmM4KzVl6kWHHy7KCMLi9g4vaeHAdamt2xq7fl8D
OqVHyR8/hpLK8g5BiaF5Q3EAhKZkd8IzmpowM7fGayWdzf+eFZ2ooThVeQfQ0f0BTtK+QkVoyuoD
H8TFoA6L75oMlA66FGPI+n65S2+gwrq6y7gqQYKFDKK77cXHM5luVXcNqSe8F2oxvuF9ZLjZTIdv
dEoF4eUqk0fuPPSKwMCG+MqGl+TiU6QuKA14mwYR3l/fjsaTm5i9RcGHk15bt71byXEmxZAnFJ2+
rPaDQSA+bNOGWnD7WRPse+Zo8R4oT5HYfD2IHXjMQVA9iNDQadHEeNWwDw/h14+UtnaoA+HgErD9
D86wZHF8fmmHSpHC1JKF9xMbqxZ6HO2iV9ZQUZinA98rwFl8Bn2MCVBrSryb0a4sqexn/w6tt2QW
VZqPKIwirqrozmYYzdor54vOgoqOEClELwzy9UUJrmBwyjHum//rgJO9ejnq2Fdm+102dVeI2X7R
tT9lgFZHBiSblvMKDf2eEQnes5UkCVcY2vm79W1PozeXYDA0ZCx7dbFJTAKy8fWHT7ry93M2r4Kv
uo2myelC57i7dNdlaSY4i1Xviz7vcvStDWKjb3TCC58tNh2xbAzQOofNlYNKbQxJaijNosf1puRJ
BcUMj9bBCdJ5htvOXS/3J1p738yDdZH/i1Ec5fsiA6q6oiOBEnuHgny25/B9YldGDEfiHxXJWKtV
n8ftHhY1i2s9Hfd+1iTK8ACSk/JygvyPTH+ZrRufu4wKcmWpG8CqYiLKp9OTkMklNXvR3ETTqPLS
MJ05MxU+JVDvTC7eASsltSbQZt3PZhl7VZHKX5/Kx7LhkPXYwuDcxjUCHdRHZNbpdsvwMogTfZqm
GY9xXREQRb8KKKPvKp8wZ3Kjs0HFfOGmE/9XQQK7mAjGNloKfDG4ASw0crSJnowYJK07yD7frdl0
o4XyajziH0UPgyVpv95PYYR9nUnX4baaXPIE3M78WphzS1jZqOMkeVOQQRrgW5GDukrLyobFkhQA
iw4i9YKsAaopYybWuIPJjgYfnc5iJU89jClrE2olDpLE4zGZ6BriJkT1yQrqf6plXkuoxRfQDApB
tnuNGMkmGZaXhSB97byhRt7L91oV0GRblWFu/UIZmJBK/RtDgaIU9g6GtkqgjbZSZp22Fdo90rXP
KE0S3BwJ3fRLEwxfL0tT8Gw9k7Z88huIfR2Thbe6/n+GaxYmJkJ7lZS4G2OSqHx9SEp4qtAQJsq9
8t+M98D43UcjXVwqvENN0wSxm/RdYBEhE7CBJGACl5pJdK91I5+p6+/A801pk5WIv5TUUiw7CYiv
8xjIETPzPtjyQJRyJhOLljbaS1/RIIEs8XRvpv3NqCwyeAQKCq/6rc3ds2m9D0nj3xK3sinqrE9d
SqEvePUsBtMvL71cdpTeOlH65RIuMiIn9l5MoZNqmQTfWqcWkFWHQC5BMYeaQ13aDn+DNFWUuPn1
C0ue8ESj5/SDr1V8sPiKVQLoSVViFt2xytR+ZjG3LBsPfmTrce2peGZ7zqxoxD97LcQHKvnrvup6
DAn405UF0vPedyhoB25BI8YCDzfH2btb08C0utBFF+Uh5n0yfv4bERsENbS2voX3wr5TDEge1v2q
7kEOfSXRv5CF4mNkWEg1LEW5P01jEQ6fkjVjtwViQ5y6z889knkJDpsuI5Iy6FKxOF0xgFIBdBX+
b+LWXZ7TkEryH5U5f6ko4yb4Vx4RXzaVeqxUz4VapX15DvK+tOxilCqwc82JD8ytBztfGivt/dER
T8MrAbrfub17Rj2jMQvuUx3bhA+yEo3UB1esCsJLvwUgTWVFvy0V5fzmTsZAPzk8rUiw3sd9W12Z
gt4Y8E1Syj1r+9nzkKEaZCtK+/kqFwTIStZQAmo4uTwwccpWtqSauDenuyBm5TByOJzp3x88R3cD
uGdoCB0E9lKhH73akM8Qi6HXHxoDKgHedsFS+IsRFwwEUSNqCQAALKWJ0RauIs8WJ5i/OZz4LOf6
1+qqmQghAcsZm4wvjEiRRyaaGBy3HLC6EWJb1g+ne6sfGgEg/Njnqk5pupXynkLU3ifsuJaQiYs2
F+RQQee+tu25Wtkr9NVg6/+OM4d2+RJ+PYNFVj691faAiBmr0742vPTvJfgwOVHGR4kdTF7ADN4J
Bp3+mSN0iR6E6viKq4IAefWXS8Qa+XAt2WLvNnRY04aSfxuQsvkh/vh8kfirq0XtL4K3jHhmqGaa
qHnDweEweTfnDCkkHCnWLFvEH2Bh+BJaHReQrRjzh888+Vq1VPPg7PWP7jx35Y1UrvQoX97hMlDi
6Jy47mpjWsW+qUV5PvUuANi3Sd0RgTubBxaM8FjyJX986McEgSBsr42zUmhcd0T2xDXd7DlU/gOu
/cjG7Hn2xcrnwj1gbRrdSDo4E37pdXgD2xfsdQpfC6gPBtrBsuY2qJVAVlzlkLPGwCuEIyh0vEap
xO/Qe4k0RQZVv1UnhDD0v8j59V1wbgPEsGSykjT5Ui8TyMn0oPDb8FDd7qjKMHn8xtVx/2zFXPYo
46VF3OJNhTYpp4XDBOH/yQYqljmjGXB+uYhDzxYQF4RmE8HbAFVl5dqVH/3sJ9QLTcUxFXkkFArB
fLhTalrPT6qXjiiynG71gj8rYKa79oHfYG9DxTudBhbQARlPkIM5Ptw5hoLBiAHZDko2+Dj9uX74
xCP/MIWA3bTGswnZp8EZWaqIOBZ3Q+l7ZxFwTiN9gx461EBC9jiYYaxC3yH9oO6UO92IrgNDSfvy
hrWuuWQJZzmdp6XURCyVjGPau2++iCoX0aPcszvUGcAO0pbBTCteRGO6tGmeHsAZFai+eFGdHfo3
s5oeQb9ITf0ME/x+2cjNowXUk0sF7lu39Yu2SlbutHpRDVmLaSe/MkXtbiUMrONWISI7JL03pgCH
ItGbZ0OyVFQfGYirvGlimwtxaFyB10j6BFISoICIZYaRTFl655cHHcFMdp/njg8JZ2NkiNWN3WQ+
S3s7o1qKSJaqnZ5DuRnYvBNuw52g05vkkz6Tw5XmEiVx9SjeTGkGqBYyAsYERK5PCCRbuNL1puTB
anfHNiGCdQOXT+8IBKWnFxXW7gq7gO7/6UcsxdHTGpKTTQdGedQ+bOeJ2aD1Ea6jwxmSumU1g/RT
vY1jhAVsw9jlORgtFggM8PNF1G0B+256Kkn2pirZ7/qnsGa02w/POIvcBQjc2J5I/5PIOdR92hIL
om7/4q+4suyyQqVflVyJDLYzjGL8UdORfYtfDYsSSKwTGknYmE8GfU4f8Bw72gcK6UC3oIAyiBlm
yuouRjXTYNBx+VK33ujIbHWhMl2x4Jvh34c1WL/523oQGxj8kjOp83VzWIiSPxOrjTlQp/5j/u4u
tXsweVWO9mqEOzbrWY/k0HIloQxNk5SRbqccHWLOkX6u7wh+XY3aGoviGrs+vbdY4nmoot1txe8l
H2HkUpGy40DJK7UdBr00/Xo7A6Z7sHAnRG6qsEYHCGqZHYrgtY3QFcrpMlwjOmkINK5E1YdR5TGn
idee0zyxcuiBn0jlcMYyoDNJrkaMGmcGoG8xXeQuYPODBmffZ584Jd5zpXo0UjhqywnJntYlQvNu
NPbX/DE/Jv5UyL/mFFZnqV0bhRhdeC/x+q40aYBK0yfCicL+goE4HgXzZaDl/VR/bFjKttEqcq4O
in3Y4ShUIdP4MYP1goHFWd85Zevl9dbqupLpoa1TSH+JrUZUP6hRDpR6q7V9jQQR2j1kZsBs+ZRW
S9AE4tFndircn4OUjyq+xAdtam0EZqyXdF9gPRtXLwhPUjA6RN2x2kXAVqrUY5jlW+tBFEsyiWXG
+UZVVdO4sjOsF7K/d0tvucPtbcwa7B0NbdFumlNZGwo6rD/GgAD+AUnj+WMu1pFa7sUP8agqeNiP
sfas+sPF3wTL7qtC8ouLt3l+uvOIxJLU2aADuzm0K2LhDom47I7qNWlLSups8EsShzFUZjDtQ1Pf
cSGLzmk2wMJfO9iXW26V0tSgnNR/f0GwT1BsXBjQfe3CRswTCvgvAAekm88nYIRI2hCXsVL3zAhn
saEBcnYOYnsYdtVZnuvo+I9iMp4+seK4N/YzD54JAIoQGXc+64K1mnzdVUMl8vlotadEUAkwUV9y
9ZOUWynKNVh/LWbVbA8+D/97c5wNkSjkziNeQQOPhuMwyW+060eG9uIW28A5jx7xfcbJeoKHb0XV
O74UQaz4/KQ0HkGxcGyYgfTOeLYfjyASa+5jLOIFYkc7PyyncXyvgBHV6LQLTENPdO6wcf7PSIXD
ftHeHco4J3oIs5+awg8BF6yhPO1wWPcZL1QElHvkwy17bQmaKmGFWtdajSDNgxy1fju+byBWEHOq
5o8AB36nhZ/AsXSLxp9bd7ivgTQDlu/ZfWnmiai5ZkMtUVd9cP1JjA5zAO2OUsFYLSVBpnHl/6gY
MaLpYy4FMbECL8Vz/fS3TxJz2Hho1KFWChyWYfuIOTlcjKsHhnQsScZIK3/SRLVOzzbSJhcm/KER
W2NT7KQf/D+Nxaws864GK5hFMuNCwabgIl0iTJtdU4NAcz7OMtodqMLB4vieZDBXsawIZIBIq2ci
qidCp9p63AsO16dsWgiOjDnOq73LqSK6+iFV8Il3FI5ukgw2gosvIe3QD+V3vavkisAAufNQATZK
cI8jA679oaympn7qXZZRgezMm5HxB/ZQE3uEAiVJ+EdGkHkFT5LXGfji3Dqe/0xbZVOZlmWsi3Xs
f77s6c7zt7787vCJxZ4viEBuaLr6C6gjJhTu32fDS4ENS4v+JzkpmkHdbEpNRLOpuLu690eo7OF7
MXn5rPvJxkWINcbbODUImYTqlKZUbE4ZVtzK6N+VihjlKV4K1ob9IQ03ZY5eZ0rTF7MfP1Lpip+D
9dkTEv8udos7G+5Fpj53VLUXCBTHoYzrNwV11Bl3pWYiU1y/iG6YS4n1e9RhPVhqcmojjQfBmKwg
yrE30XmhfHapFbbShjUvG1vIZsUkiMoNbFdMkgxvwOqULic/PVlSgcZTb7cXD97L7Mvdq9nH3PXq
YFAEf+fJsmCr5bCA9PTlO7xHC9Vh37sLpQqdbaAXIKIdNq9ZVRx+fCxIk33ECLaL9VCANH2y+sYc
fqqU7ZuRr3RqVl+VTO7aGnn6K8z5QKKCBtZx/I1vAmp1TTwUm4clDeici1FwjkCwcMDqNkqABdFJ
foheBNQTs6y5+yFu9M8QpQV7mkRWFiHcrWWBkiSRLQYP4KL0cjXdXLW6lAGwSa4tn469AsLaH9EU
hlOSCopNwvYIYV5lqOZBTyEIU4UfYSzUycUdpN8wu17fCrzyzouAtoec40mYxoAkEt8975WeXk2w
QQMluuFEFD98lI4MI1+AYZ0jLSDYxwJ/3ZNesNUUYu9i14TM1nWAkLsEYMCdyoJdq48kzuWj9phf
FOhf0Sv+qr6x8fDSjeJlbWFCRjlR/vzJ5FME88QILA8lcaD5AZZig30I4v/ZWn0x6/0zCfPr5+Zi
cGoZbqL1vSbVL3IpXuTt1JkQXrC9nTWqsKIUVSPMo08v7+PP0y5MoC/nq4C+R8pRYhn5w6lCIx00
EaP3Ypo2BP/0+xzuE5suk5nL/kkeP6spLeRwmHEL0T84i4BF7AA8sOPd089SpyWJ50GgpWF9GBhk
/DSiA56A8xUNyQVXpaxmYveDIN9NHejG8OStmUo1qfBv7IcCL2xpoEhjR+WtWdWwh/TVLGsdmY8i
YhXgmsV2z9miv8Q2DWcUBdtGXuC2p6n8Dillpkxl/LeZJh/jUcWhd5dvxhwyv2bTObinyRadTxIa
uMjxdqfgKt0zpbECEmKS54wQ9cnSb9LT2Lq5eYxrsyB80OqYbg8VHfD1kL/IGRem8j/M0lokHh8/
pfwSQD+ieq/A/0yFEBPje2xOMiyjJzJp5ITBzd6cxtScqh4nImoyySPRrpD6SsYLxGtO1y1VpDYr
RYu9zX7KMEXOLtB5JqqmlWRX3sX3CgSprYDqXG7N5NlAOcX3BdN+gbfUe7IgO14SHhL76uBEcOKL
t5eWi9qnt1L6oRRpqpRUurO7GxO2KEjlnpmEpHI/bV2JjhLyRNR+AX1FX8L4ihtmoqKg1KYVwv4H
b2rTTx/rNvmimrOVCP7rHdckuBX0ukgOlrQSJvogyLX3XSFThbvddB8EwNmmUWVW1wdwdILkLODn
dNNoruqsLBFTrye5MlS/1HywwnxNNOLhwv/2jvqMR4DU2mGesiPeoz0xVqRMXAbwSoveVIoSOuRZ
Q2uQhogjrXbgfiV02/E0Yiirs4TEljOZQMS5ph8+zwHMHZ07WbzPVBw1u9437Y54Rb3OaYWLeaWc
ySr8OQnzM5lsCANbDnBaHrYPrYSTcms2eiY0exqj5bQiROlRyw3npYXXgUT0QDkSaHULd13RF+e4
JlCbib7VSZo+ss8M42cfGJLyhwmOW4Mt7WSugrBb9LQ6fcq35QAAeaP72K7YR09xDmnk2i5Zxsq2
CEKDZV3YHXI6erc4gk8XCEPdA7j5SL0jsjNnozMkerZ6pxohVOWtft9XcSgJTTKNy/wy510Hq4Xc
8c3yx55QrZVf8pfHtep140z+Tn+b5VAAJewclDycW2XhYMRe19SCFd1gNUGW8gTai7Z2SabFEH6O
wGhQfTEg93FD9sAce8LIdL9nxaHwIcYOEz9qtZdIRCO8SFXwopL9fuzFd1pkYJ3HQ9AB5KnenHS3
mCqeFcTHNGYd2iPEkgT0RjuggDf/02nvC6wYYJfcD1ckSWWK1tSO8R8XhJfWMMhYJ9v3fGig+4qs
6U8a9FsdkT8j+7fXgkMA0JwZuINPZK78b3GMmIwkOEvZcY0OHZM0WaMYxRIXqeaYl1/K5N3rDknD
u3PXH402CcNgMG6+iXIcNZCxLcPqssjIUSM/zZBrWcCibkYO73PCDG0rLAGzo/H0IAGKHjmoCLXv
I3rcHb0tBf8PGWqZ4CbJCq4eLMIFoEwHTVduH2Id6KMZx8sm0IDqHi1gplN38fUDct22CaM7vnWR
RIa31yn8hoygAjvLKJQkZdhzVmBuCjuS9mcVDB6O5qOuG+GBOMP84t9+V/ylZHq6aXYHxNzXROLm
ai5DyuSyj7nLXY0iUzVEh3g5N/UE2P4KQdNc5+FUiDN+kuK9EAsjTTLwiK+RCv0R1Lo21MeC8rWx
SMYMELkRg7tuk6XKwEo0VpdS8hZWKuxB7pOIPaQI14Decl+M7GfdTko6n21Qq2Eyi9WRrpt/kz6m
Frj8D32H8RQkWv9h/+BAqjH97QYULe63D8kRksHuUKdcUk4rD4ESS5OUjA25spcjYUlPiBbu0gvv
295TMD6ovK6h2t6JdOjTWg/iZWOv0tpXE94Pmwv+Lp5dmsu3sHUCAA63oQyQcuvW1BaEFzznk99L
4Ue4ve64MHZsi6reZTj/fziSumsArn+CBLJAp/yxMBKB+mOj8mRk+c6Nho6qGNkwdSKppmlpnsdb
3qzVFZrcMC03nedf1lwDTZV8xv0GTBa5BAHaViUcdqJRg2bEzPBJRtWK1t95CGXZQnxDEzyR52gt
qfTJd3ebx4+Wn9g0O9iOIb6G4DUpWxG7HOY/AfK3Xjd01W98Iyn8E0p5BY+uAWJkZUWm9W+iE4Hq
0w16+4/pfxVRsSJTioKLOcLhinaSGZxpJVjkg5a1vA7ASoczAdLXI3+N5Rq/Pdermu1qBWxNAiYT
1+i/3LX0Mh2+RmEKjMYusr65nAYP0YnVrM3hzoZCG8pLO4aMYC4vi/ItmSowmjQL2Ywo9trszSm0
LTps+TTW8S+Fli6gao+ejBCR0/6eiJwrcJtIpwvfvk7vbFUWbWcQoxrK0l1Xac43dBbExEr3AN6B
vZZF8jxs5DjNM4uyqMQKiIPcbWRIp/94pB+eczKEMprw822vod8h9UwCXTwc49lkJerm3uz6iECz
llPS6Q0/mQhKQFcHcVGwKo3H7h4FEe0oqiTNLJKeRbvsm0QOemFekZhZ/KWp5o29/C8DNxDeX/td
UwrHNGB7l2w1c8TOisrgEL5lFcXDAmuoWhTV6wGPdGmufBuL+IH+xB5WIcoLM698tW7VKjoyK+uu
cIDVY38sarWSxC64CwZ6/4t0EibPQw6qt4Szy5MDITCUC/IUmpy+4FG3GcbNU0X7uNI5/PBagShP
ZHSL+4J08GPxuYn4EA7cySJl0auX+ae17m5Zy4fV3xwEwT65xOpmgiFvFYVFSjbOr6TziSMylUBO
AYG3vPhy1GO6ZeFhSu6S8089GAYr9Q0p9tk0GNUhH1tIjF2NwOK9pER2flIf57UisjWfinH2EjvV
lfSeljPjv7rPmSMaqjg9WSt83/3fOrCrLpV0sLuCvtEp2PEmG0RsNojdtVXZAjcOTCNNChZitHIu
iJUVMoxagidCO4z3GEaOzJDZvYoArZZzsl/LVJqeHcG0bgZ5rOYApL5WKuAmFf2gFX3lQkb49h+I
GNc5WzzBv0jrNHotnm9kL2iMITwKzL/6kRIwrjgnZTLFmv2tuz54VrrMupe/WPr1JIg26ZCPjR5A
F1nexceNgX+mXn5Gw9vOrdttVK1DKanrxCKUWPxyK/gwmVbhRODyZeG9axY7G2/Vf5PMb+aNxbm4
0ISfyxJF85SXeeyOT2eM8Wyymm9M1Bxny/qaTDDyJAegcHsyGEdapnfoHN6B5qktW44zeguihWtl
2P3NLPvR8XhO0ZEFnu/PNpsC1p+br6YKLaBL8QM01x5yzcfS6/+tI6yUCrYwN0ZP5ZE+JpC+RYPg
KzhLq3rrzbrB7cpPf5pZFWz7ECFbVX8qwi/zaZC1mDCh48Xeia/PPMWWVhg5Rw2lUGZkpQm5hu24
Ompo79IN/IJDZVNItzlTfxDpp2k7pJUPOjujBq3AcO/XY2/eVFZNg4Kv05NzeTGcmCwYFHIvSGHU
MSq4xI3/G5gNCb/+FGWdCNcqtBvkCqeOkfniHNlQKjc/vn4r31rgc8tUtrckkWvk9TePHKhtisoh
6nKjWISNVfI6miI2ky32PvDkEDlA9tQe947ofhknqBsAOuG9cWgCTNSisNL+XzbHqPm5tm4KJ/u5
7TOb2C5Uz7ikQmQ3XY+0yPJwqO3IxkcNr+38U9cdeNriTkffW9lbOc/QEg8mqKJTw9Opxj4d6Zok
8Aicrt++sKEWiS9KxMs+G9+OoPq150aecAyUcHruQvJAjRG4evNMMnNTpFkE8O8etY+vIYOU7gMM
FjifV13wrVZWVznfUmFIZLwQbEKo/Lj9nEcaZ0hZqku9m46aMLVlGKGwUaakKipUBs7HXd5CO4AS
XLC4uDSpyiy3nV1EFVPc5LnGnjKjRp6sAMrNo22wTEidm11TWSJkIkCtPhwvPydgFy5CiWH4q71S
/Rf9cRIdTa1FapC9temWvcW9c0AaeePwqWPIQbgF+Y3+0aFViJvdDUteqCzeAlQJ9D0Pvre+XKww
b01yMJdOUPLnYEPVzLbHfxKS0C2lmsIpNbAVvZZm76lcuuxz/fL3w/s84eDxl0VB0g/Z9yCmEf8I
5hU+/yycrwy6ghwW/zA=
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
