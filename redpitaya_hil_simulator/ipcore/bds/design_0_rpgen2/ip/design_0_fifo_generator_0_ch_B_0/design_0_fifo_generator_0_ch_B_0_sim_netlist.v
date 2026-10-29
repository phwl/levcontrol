// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Mon May  4 12:18:19 2026
// Host        : tp-p14s running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/user/work/acin/projects/redpitaya-hil-simulator/ipcore/bds/design_0_rpgen2/ip/design_0_fifo_generator_0_ch_B_0/design_0_fifo_generator_0_ch_B_0_sim_netlist.v
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
