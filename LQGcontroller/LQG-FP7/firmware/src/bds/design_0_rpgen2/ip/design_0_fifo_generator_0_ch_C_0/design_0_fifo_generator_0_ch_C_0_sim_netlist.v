// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Mon Apr 27 18:10:57 2026
// Host        : tp-p14s running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/user/work/acin/projects/universal_lqg/lqg-fp7-firmware/src/bds/design_0_rpgen2/ip/design_0_fifo_generator_0_ch_C_0/design_0_fifo_generator_0_ch_C_0_sim_netlist.v
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
