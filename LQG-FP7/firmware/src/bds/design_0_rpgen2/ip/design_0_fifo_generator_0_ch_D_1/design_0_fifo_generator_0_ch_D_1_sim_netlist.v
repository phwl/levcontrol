// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Mon Apr 27 18:10:56 2026
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
E3lyT6MWLTJ4A3zalV8=
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
