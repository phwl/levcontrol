// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Wed May 28 18:34:57 2025
// Host        : berndorfer-p14s running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top design_0_fifo_generator_0_ch_B_0 -prefix
//               design_0_fifo_generator_0_ch_B_0_ design_0_fifo_generator_0_ch_A_0_sim_netlist.v
// Design      : design_0_fifo_generator_0_ch_A_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_0_fifo_generator_0_ch_A_0,fifo_generator_v13_2_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_11,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module design_0_fifo_generator_0_ch_B_0
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
  design_0_fifo_generator_0_ch_B_0_fifo_generator_v13_2_11 U0
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
module design_0_fifo_generator_0_ch_B_0_xpm_cdc_gray
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
module design_0_fifo_generator_0_ch_B_0_xpm_cdc_gray__2
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
t1zUbYMwmBs3/N3uX1k=
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
