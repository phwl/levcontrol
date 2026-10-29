// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module design_0 (
  DDR_cas_n,
  DDR_cke,
  DDR_ck_n,
  DDR_ck_p,
  DDR_cs_n,
  DDR_reset_n,
  DDR_odt,
  DDR_ras_n,
  DDR_we_n,
  DDR_ba,
  DDR_addr,
  DDR_dm,
  DDR_dq,
  DDR_dqs_n,
  DDR_dqs_p,
  FIXED_IO_mio,
  FIXED_IO_ddr_vrn,
  FIXED_IO_ddr_vrp,
  FIXED_IO_ps_srstb,
  FIXED_IO_ps_clk,
  FIXED_IO_ps_porb,
  adc_cdcs_o,
  adc_clk_i_a,
  adc_clk_i_b,
  adc_dat_i_a,
  adc_dat_i_b,
  dac_clk_o,
  dac_dat_o,
  dac_rst_o,
  dac_sel_o,
  dac_wrt_o,
  exp_n_io,
  exp_p_io,
  led_o
);

  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CAS_N" *)
  (* X_INTERFACE_MODE = "master DDR" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR, CAN_DEBUG false, TIMEPERIOD_PS 1250, MEMORY_TYPE COMPONENTS, DATA_WIDTH 8, CS_ENABLED true, DATA_MASK_ENABLED true, SLOT Single, MEM_ADDR_MAP ROW_COLUMN_BANK, BURST_LENGTH 8, AXI_ARBITRATION_SCHEME TDM, CAS_LATENCY 11, CAS_WRITE_LATENCY 11" *)
  inout DDR_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CKE" *)
  inout DDR_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_N" *)
  inout DDR_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_P" *)
  inout DDR_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CS_N" *)
  inout DDR_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RESET_N" *)
  inout DDR_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ODT" *)
  inout DDR_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RAS_N" *)
  inout DDR_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR WE_N" *)
  inout DDR_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR BA" *)
  inout [2:0]DDR_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ADDR" *)
  inout [14:0]DDR_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DM" *)
  inout [3:0]DDR_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQ" *)
  inout [31:0]DDR_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_N" *)
  inout [3:0]DDR_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_P" *)
  inout [3:0]DDR_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO" *)
  (* X_INTERFACE_MODE = "master FIXED_IO" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false" *)
  inout [53:0]FIXED_IO_mio;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN" *)
  inout FIXED_IO_ddr_vrn;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP" *)
  inout FIXED_IO_ddr_vrp;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB" *)
  inout FIXED_IO_ps_srstb;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK" *)
  inout FIXED_IO_ps_clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB" *)
  inout FIXED_IO_ps_porb;
  (* X_INTERFACE_IGNORE = "true" *)
  output adc_cdcs_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ADC_CLK_I_A CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.ADC_CLK_I_A" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ADC_CLK_I_A, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_0_adc_clk_i_a, INSERT_VIP 0" *)
  input adc_clk_i_a;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ADC_CLK_I_B CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.ADC_CLK_I_B" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ADC_CLK_I_B, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_0_adc_clk_i_b, INSERT_VIP 0" *)
  input adc_clk_i_b;
  (* X_INTERFACE_IGNORE = "true" *)
  input [15:0]adc_dat_i_a;
  (* X_INTERFACE_IGNORE = "true" *)
  input [15:0]adc_dat_i_b;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.DAC_CLK_O CLK" *)
  (* X_INTERFACE_MODE = "master CLK.DAC_CLK_O" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.DAC_CLK_O, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_0_axis_red_pitaya_dac_0_0_dac_clk, INSERT_VIP 0" *)
  output dac_clk_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output [13:0]dac_dat_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output dac_rst_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output dac_sel_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output dac_wrt_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output [2:0]exp_n_io;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]exp_p_io;
  (* X_INTERFACE_IGNORE = "true" *)
  output [7:0]led_o;

  // stub module has no contents

endmodule
