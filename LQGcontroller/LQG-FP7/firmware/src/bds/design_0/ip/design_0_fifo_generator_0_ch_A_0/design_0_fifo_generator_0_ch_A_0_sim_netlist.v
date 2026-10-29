// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Wed May 28 18:34:57 2025
// Host        : berndorfer-p14s running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top design_0_fifo_generator_0_ch_A_0 -prefix
//               design_0_fifo_generator_0_ch_A_0_ design_0_fifo_generator_0_ch_A_0_sim_netlist.v
// Design      : design_0_fifo_generator_0_ch_A_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_0_fifo_generator_0_ch_A_0,fifo_generator_v13_2_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_11,Vivado 2024.2" *) 
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
vgZ+vgyjnwIakxnNJh8=
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
