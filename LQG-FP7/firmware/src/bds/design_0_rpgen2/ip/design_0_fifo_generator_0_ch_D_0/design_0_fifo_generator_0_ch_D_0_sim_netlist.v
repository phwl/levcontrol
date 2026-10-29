// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Mon Apr 27 18:10:56 2026
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
hoFeYyiThS1Kxu2ukKU=
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
