// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Mon May  4 12:32:13 2026
// Host        : tp-p14s running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/user/work/acin/projects/redpitaya-hil-simulator/ipcore/bds/design_0/ip/design_0_fifo_generator_0_ch_B_0/design_0_fifo_generator_0_ch_B_0_sim_netlist.v
// Design      : design_0_fifo_generator_0_ch_B_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_0_fifo_generator_0_ch_B_0,fifo_generator_v13_2_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_11,Vivado 2024.2" *) 
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_mode = "slave write_clk" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_0_axis_red_pitaya_adc_1_0_adc_clk, INSERT_VIP 0" *) input wr_clk;
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

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
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
