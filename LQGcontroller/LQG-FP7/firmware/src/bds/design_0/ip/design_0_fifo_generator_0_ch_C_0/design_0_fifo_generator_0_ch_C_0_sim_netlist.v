// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Mon Jan 26 17:48:39 2026
// Host        : tp-p14s running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/user/work/acin/projects/universal_lqg/lqg-fp7-firmware/src/bds/design_0/ip/design_0_fifo_generator_0_ch_C_0/design_0_fifo_generator_0_ch_C_0_sim_netlist.v
// Design      : design_0_fifo_generator_0_ch_C_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_0_fifo_generator_0_ch_C_0,fifo_generator_v13_2_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_11,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module design_0_fifo_generator_0_ch_C_0
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
  design_0_fifo_generator_0_ch_C_0_fifo_generator_v13_2_11 U0
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

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module design_0_fifo_generator_0_ch_C_0_xpm_cdc_gray
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
module design_0_fifo_generator_0_ch_C_0_xpm_cdc_gray__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 82800)
`pragma protect data_block
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
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
